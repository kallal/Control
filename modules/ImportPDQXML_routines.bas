Option Compare Database
Option Explicit

Public Function ImportPDQXML(myFileName As String) As String

Dim i As Integer
Dim j As Integer


Dim objFSO              As Variant
Dim objFile             As Variant
Dim MySuccess           As Boolean

Dim strText             As String
Dim strNewtext          As String

Dim myXMLData           As MSXML2.DOMDocument
Dim mygpbookmark        As Variant
Dim TempCurrentQuoteid  As Long

Dim myNode              As MSXML2.IXMLDOMNode
Dim myNodeList          As MSXML2.IXMLDOMNodeList
Dim OneRow              As MSXML2.IXMLDOMNode
Dim xField              As MSXML2.IXMLDOMNode
Dim x2Field             As MSXML2.IXMLDOMNode

Dim sField              As String
Dim vAtt                As MSXML2.IXMLDOMAttribute

Dim strSectionName      As String



Set myXMLData = CreateObject("MSXML2.DOMDocument")
'myFilename = "c:\jan18\PDQ002633RK_5000.xml" 'for testing:

'Convert first line to show UTF-8 rather than UTF-16

Set objFSO = CreateObject("Scripting.FileSystemObject")
On Error Resume Next
Set objFile = objFSO.OpenTextFile(myFileName, 1)


strText = objFile.ReadAll
objFile.Close
strNewtext = Replace(strText, "UTF-16", "UTF-8")

Set objFile = objFSO.OpenTextFile(myFileName, 2)
objFile.WriteLine strNewtext
objFile.Close

MySuccess = myXMLData.Load(myFileName)
cPDQImportResult = "Success"
If MySuccess = False Then
    MsgBox "Your XML File named " & myFileName & " failed to load. Please resave the quote so that it is in the proper XML format."
    cPDQImportResult = "Failed"
    'MsgBox "File not found??"
    Exit Function
End If

'open data files and reset
Dim MYDB As DAO.Database
Dim myProcess As Recordset
Dim myQuote As Recordset
Dim mySection As Recordset
Dim myPrintingMethod As Recordset
Dim mySortInfo As Recordset
Dim myAdditionalPlateChanges As Recordset
Dim myPaperDetails As Recordset
Dim myImposition As Recordset
Dim myPricingSummary As Recordset
Dim myTotalGrossSheets As Long


Dim myColours               As DAO.Recordset
Dim myLayout                As DAO.Recordset
Dim xPath                   As String
Dim tmpCurrentQuoteID       As String
Set MYDB = CurrentDb()

Set myProcess = MYDB.OpenRecordset("pdqProcess")
Set myQuote = MYDB.OpenRecordset("pdqQuote")
Set mySection = MYDB.OpenRecordset("pdqSection")
Set myPrintingMethod = MYDB.OpenRecordset("pdqPrintingMethod")
Set mySortInfo = MYDB.OpenRecordset("pdqSortInfo")
Set myAdditionalPlateChanges = MYDB.OpenRecordset("pdqAdditionalPlateChanges")
Set myPaperDetails = MYDB.OpenRecordset("pdqPaperDetails")
Set myImposition = MYDB.OpenRecordset("pdqImposition")
Set myColours = MYDB.OpenRecordset("pdqColours")
Set myLayout = MYDB.OpenRecordset("pdqLayout")
Set myPricingSummary = MYDB.OpenRecordset("pdqPricingSummary")


DoCmd.SetWarnings False ' turn off so that we can purge databases

DoCmd.RunSQL ("Delete * from pdqQuote;")
DoCmd.RunSQL ("Delete * from pdqProcess;")
DoCmd.RunSQL ("Delete * from pdqSection;")
DoCmd.RunSQL ("Delete * from pdqPrintingMethod;")
DoCmd.RunSQL ("Delete * from pdqSortInfo;")
DoCmd.RunSQL ("Delete * from pdqAdditionalPlateChanges;")
DoCmd.RunSQL ("Delete * from pdqPaperDetails;")
DoCmd.RunSQL ("Delete * from pdqImposition;")
DoCmd.RunSQL ("Delete * from pdqColours;")
DoCmd.RunSQL ("Delete * from pdqLayout;")
DoCmd.RunSQL ("Delete * from pdqPricingSummary;")

DoCmd.SetWarnings True ' turn warnings back on after cleaning tables.


 '  On Error Resume Next       ' Albert k - this skips some fields not saved
                              ' when debugging - comment out.

' load Pricing table              ********
    xPath = "PDQxml/Quote/PricingSummary"
    Set myNodeList = myXMLData.SelectNodes(xPath)

    For i = 0 To myNodeList.Length - 1
        Set OneRow = myNodeList.item(i)
        myPricingSummary.AddNew
        'myAdditionalPlateChanges!QuoteID = tmpCurrentQuoteID
        
        
        For Each xField In OneRow.ChildNodes
           If xField.hasChildNodes Then
               
              myPricingSummary(xField.nodeName) = xField.FirstChild.NodeValue
           End If
        Next
        myPricingSummary.Update
        
        'strSectionName = OneRow.ParentNode.Attributes.getNamedItem("Name").NodeValue
        'myAdditionalPlateChanges("SectionName") = strSectionName
        'myAdditionalPlateChanges.Update
    Next i

' load quote table              ********
   xPath = "PDQxml/Quote"
   Set OneRow = myXMLData.SelectSingleNode(xPath)
   myQuote.AddNew
   
   ' grab base table (attributes)
   For Each vAtt In OneRow.Attributes
      myQuote(vAtt.name) = vAtt.NodeValue
   Next vAtt
   ' save grab quote reference ID
   tmpCurrentQuoteID = OneRow.Attributes.getNamedItem("Reference").NodeValue
   
   For Each xField In OneRow.ChildNodes
       If xField.hasChildNodes Then
          myQuote(xField.nodeName) = xField.FirstChild.NodeValue
       End If
    Next
    myQuote.Update

 ' load section table         *********
   xPath = "PDQxml/Quote/Section"
   
   Set myNodeList = myXMLData.SelectNodes(xPath)
   
   For i = 0 To myNodeList.Length - 1
   
       Set OneRow = myNodeList.item(i)
    
         mySection.AddNew
         
        ' grab base table (attributes)
         For Each vAtt In OneRow.Attributes
            mySection(vAtt.name) = vAtt.NodeValue
         Next vAtt
         ' now section data part
         
         For Each xField In OneRow.ChildNodes
             If xField.hasChildNodes Then
                sField = xField.nodeName
                If sField = "SizeX" Then sField = "SizeXInch"
                If sField = "SizeY" Then sField = "SizeYInch"
                If sField = "FlapX" Then sField = "FlapXInch"
                If sField = "FlapY" Then sField = "FlapYInch"
                mySection(sField) = xField.FirstChild.NodeValue
             End If
         Next
         mySection!QuoteID = tmpCurrentQuoteID
         mySection.Update
   Next i
                                    
                                    
' load Imposition           *********

xPath = "PDQxml/Quote/Section/Imposition"
Set myNodeList = myXMLData.SelectNodes(xPath)

For i = 0 To myNodeList.Length - 1

    Set OneRow = myNodeList.item(i)
    myImposition.AddNew
    myImposition!QuoteID = tmpCurrentQuoteID
    If OneRow.Attributes.Length > 0 Then
        For Each vAtt In OneRow.Attributes
           sField = vAtt.nodeName
           myImposition(sField) = vAtt.NodeValue
           If sField = "PaperX" Then sField = "PaperXInch"
           If sField = "PaperY" Then sField = "PaperYInch"
           If sField = "MasterX" Then sField = "MasterXInch"
           If sField = "MasterY" Then sField = "MasterYInch"
           myImposition(sField) = vAtt.NodeValue
        Next
    End If
    
    strSectionName = OneRow.ParentNode.Attributes.getNamedItem("Name").NodeValue
    myImposition("SectionName") = strSectionName
    
    ' now child table info:
    For Each xField In OneRow.ChildNodes
        If xField.hasChildNodes Then
           myImposition(xField.nodeName) = xField.FirstChild.NodeValue
        End If
    Next
    
    ' pull comments
    Dim myDetails As Variant
    myDetails = OneRow.ChildNodes(0).NodeValue
    
    For j = 1 To Len(myDetails)
        If Mid(myDetails, j, 1) = vbLf Then Mid(myDetails, j, 1) = vbCrLf
    Next j
    
    'Debug.Print myDetails
    'MsgBox myDetails
    
    myImposition("Details") = myDetails
    'MsgBox myImposition("Details")
    
    myImposition.Update
Next i
                                        
                                   
' load up printing method    *********
xPath = "PDQxml/Quote/Section/PrintingMethod"
Set myNodeList = myXMLData.SelectNodes(xPath)

For i = 0 To myNodeList.Length - 1
    Set OneRow = myNodeList.item(i)
    myPrintingMethod.AddNew
    If OneRow.Attributes.Length > 0 Then
       myPrintingMethod("PrintingMethodID") = OneRow.Attributes.getNamedItem("ID").NodeValue
    End If
    strSectionName = OneRow.ParentNode.Attributes.getNamedItem("Name").NodeValue
    myPrintingMethod("SectionName") = strSectionName
    
    For Each xField In OneRow.ChildNodes
       If xField.hasChildNodes Then
          myPrintingMethod(xField.nodeName) = xField.FirstChild.NodeValue
       End If
    Next
    myPrintingMethod!QuoteID = tmpCurrentQuoteID
    myPrintingMethod!PrintingMethod = myPrintingMethod!name
    myPrintingMethod.Update
Next i
                                    
' load up additional Plate changes    **********
xPath = "PDQxml/Quote/Section/AdditionalPlateChanges"
Set myNodeList = myXMLData.SelectNodes(xPath)
For i = 0 To myNodeList.Length - 1
    Set OneRow = myNodeList.item(i)
    myAdditionalPlateChanges.AddNew
    myAdditionalPlateChanges!QuoteID = tmpCurrentQuoteID
    For Each xField In OneRow.ChildNodes
       If xField.hasChildNodes Then
          myAdditionalPlateChanges(xField.nodeName) = xField.FirstChild.NodeValue
       End If
    Next
    strSectionName = OneRow.ParentNode.Attributes.getNamedItem("Name").NodeValue
    myAdditionalPlateChanges("SectionName") = strSectionName
    myAdditionalPlateChanges.Update
Next i

' load up PaperDetails    **********
xPath = "PDQxml/Quote/Section/PaperDetails"
Set myNodeList = myXMLData.SelectNodes(xPath)

For i = 0 To myNodeList.Length - 1
    Set OneRow = myNodeList.item(i)
    myPaperDetails.AddNew
    myPaperDetails!QuoteID = tmpCurrentQuoteID
    For Each vAtt In OneRow.Attributes
       myPaperDetails(vAtt.name) = vAtt.NodeValue
    Next vAtt
    
    strSectionName = OneRow.ParentNode.Attributes.getNamedItem("Name").NodeValue
    myPaperDetails!SectionName = strSectionName
    For Each xField In OneRow.ChildNodes
       If xField.hasChildNodes Then
          myPaperDetails(xField.nodeName) = xField.FirstChild.NodeValue
       End If
    Next
    myPaperDetails.Update
Next i

' load up layout **********
xPath = "PDQxml/Quote/Section/Imposition/Layout"
Set myNodeList = myXMLData.SelectNodes(xPath)

For i = 0 To myNodeList.Length - 1
Set OneRow = myNodeList.item(i)
    myLayout.AddNew
    myLayout!QuoteID = tmpCurrentQuoteID
    
    For Each vAtt In OneRow.Attributes 'Roger Added these three lines - bring in ImpositionID Attribute?
       myLayout(vAtt.name) = vAtt.NodeValue
    Next vAtt
    
    For Each xField In OneRow.ChildNodes
       If xField.hasChildNodes Then
          myLayout(xField.nodeName) = xField.FirstChild.NodeValue
       End If
    Next
    strSectionName = OneRow.ParentNode.ParentNode.Attributes.getNamedItem("Name").NodeValue
    myLayout!SectionName = strSectionName
    
    myLayout.Update
Next i

' load up Processs - this is a mutli row table
'(note use of selectnodes in place of select node)

xPath = "PDQxml/Quote/Section/Imposition/Layout/ProcessBreakdownSection/Process"
Set myNodeList = myXMLData.SelectNodes(xPath)

For i = 0 To myNodeList.Length - 1

   Set OneRow = myNodeList.item(i)
      
   myProcess.AddNew
   myProcess!QuoteID = tmpCurrentQuoteID
   myProcess!FunctionID = OneRow.Attributes(0).NodeValue
   
   For Each xField In OneRow.ChildNodes
      If xField.hasChildNodes Then
         myProcess(xField.nodeName) = xField.FirstChild.NodeValue
         If xField.nodeName = "Time" Then
            GoSub SetMins
         End If
      End If
   Next
   strSectionName = OneRow.ParentNode.ParentNode.ParentNode.ParentNode.Attributes.getNamedItem("Name").NodeValue
   myProcess!SectionName = strSectionName
   
   myProcess.Update
   
Next i

' added to this table requires rows "over all section"

xPath = "PDQxml/Quote/ProcessBreakdownOverall/Process"
Set myNodeList = myXMLData.SelectNodes(xPath)

For i = 0 To myNodeList.Length - 1

   Set OneRow = myNodeList.item(i)
   myProcess.AddNew
   myProcess!QuoteID = tmpCurrentQuoteID
   myProcess!SectionName = "Global"
   myProcess!FunctionID = OneRow.Attributes(0).NodeValue
   For Each xField In OneRow.ChildNodes
      If xField.hasChildNodes Then
         myProcess(xField.nodeName) = xField.FirstChild.NodeValue
         If xField.nodeName = "Time" Then
            GoSub SetMins
         End If
      End If
   Next
   myProcess.Update
Next i


' load up table colors

If cControlCountry = "US" Or cControlCountry = "USA" Then

    xPath = "PDQxml/Quote/Section/Colors"
Else
    xPath = "PDQxml/Quote/Section/Colours"
End If

Set myNodeList = myXMLData.SelectNodes(xPath)


For i = 0 To myNodeList.Length - 1

    Set OneRow = myNodeList.item(i)
    
    
    myColours.AddNew
    myColours!QuoteID = tmpCurrentQuoteID
    strSectionName = OneRow.ParentNode.Attributes.getNamedItem("Name").NodeValue
    myColours!SectionName = strSectionName
    
    For Each xField In OneRow.ChildNodes
       If xField.hasChildNodes Then
          For Each x2Field In xField.ChildNodes
             sField = xField.nodeName & x2Field.nodeName
             myColours(sField) = x2Field.FirstChild.NodeValue
          Next
       End If
    Next
    
    ' grab sort qty
    xPath = "PDQxml/Quote/Section/SortInformation/SortInfo"
    Set OneRow = myXMLData.SelectSingleNode(xPath)
    If OneRow.hasChildNodes Then
       Set xField = OneRow.ChildNodes(0)
       myColours(xField.nodeName) = xField.FirstChild.NodeValue
    End If
    
    myColours.Update
Next i


' *** Insert new code to fix Total Count in Imposition - need to add together all counts from runs to get a new total count

myImposition.MoveFirst

Do Until myImposition.EOF
    'MsgBox "Hit in my calc"
    myImposition.Edit
    
    myTotalGrossSheets = DSum("[GrossSheets]", "pdqLayout", "[SectionName] = '" & Trim(myImposition!SectionName) & "'")

    If Nz(myTotalGrossSheets, 0) = 0 Then
        MsgBox "There is a problem with the Gross Number of Sheets. Contact AxisMIS.", vbCritical, ProgramName
        Application.Echo True
        Exit Function
    End If

    myImposition!TotalGrossSheets = myTotalGrossSheets
    
    myImposition!TotalNetSheets = DSum("[NetSheets]", "pdqLayout", "[SectionName] = '" & myImposition!SectionName & "'")
    myImposition.Update
    myImposition.MoveNext
Loop

    

' ** end update


myQuote.Close
mySection.Close
myProcess.Close
myPrintingMethod.Close
mySortInfo.Close
myAdditionalPlateChanges.Close
myPaperDetails.Close
myImposition.Close
myColours.Close

Exit Function

' ********
SetMins:
             
    Dim myhr            As Integer
    Dim mymin           As Integer
    Dim mytimestring    As String
    Dim myhrloc         As Integer
    Dim mymnloc         As Integer
         
    myhr = 0
    mymin = 0
    mytimestring = xField.FirstChild.nodeTypedValue
    myhrloc = InStr(mytimestring, "hour")
    mymnloc = InStr(mytimestring, "minute")

    If myhrloc > 0 Then
        myhr = Val(Left(mytimestring, myhrloc - 1))
        myhrloc = myhrloc + 4 'pad it so that it picks up the backside of the word
    End If

    If mymnloc > 0 Then
        mymin = Val(Mid(mytimestring, myhrloc + 1, mymnloc - 1))
    End If

    myProcess!TimeInMins = (myhr * 60) + (mymin)
    myProcess!TimeInHrs = ((myhr * 60) + (mymin)) / 60
Return

End Function


Public Function ConvertMMtoInch(inputMM As Integer, fraction As Integer) As Long

    Dim myfactor        As Double
    Dim myrawinch       As Double
    Dim myinch          As Long
    
    myfactor = 0.0393701
    myrawinch = inputMM * myfactor
    myinch = (Round(myrawinch * fraction)) / fraction

    ConvertMMtoInch = myinch 'result, rounded to 1/fraction

End Function


Sub testImport()

   Dim strF         As String
   
   ' just a test routine to call the import with some files
   
   ' strF = "C:\_AxisDev\PDQ000001CS_1000.xml"
   
   strF = "C:\_AxisDev\PDQ009244RM_5000.xml"
    
   

End Sub