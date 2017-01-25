Option Compare Database

'Next three lines are for getting screen res.
Private Declare Function GetSystemMetrics Lib "user32.dll" (ByVal nIndex As Long) As Long
Const SM_CXSCREEN = 0
Const SM_CYSCREEN = 1

Public Declare Sub Sleep Lib "kernel32" (ByVal lngMilliSeconds As Long)
Public vPID As Variant


Public Function FormHasData(frm As Form) As Boolean
    'Purpose:   Return True if the form has any records (other than new one).
    '           Return False for unbound forms, and forms with no records.
    'Note:      Avoids the bug in Access 2007 where text boxes cannot use:
    '               [Forms].[Form1].[Recordset].[RecordCount]
    On Error Resume Next    'To handle unbound forms.
    FormHasData = (frm.Recordset.RecordCount <> 0&)
End Function

Public Function SendMailCDO(Recipient As String, Subject As String, Message As String, Optional ReplyTo As String, Optional CCRecipient As String, Optional Attachment As String) As String

Dim iCfg As Object
Dim iMsg As Object

Dim mySMTPServer As String
Dim mySMTPPort As Integer
Dim myUsername As String
Dim myPassword As String
Dim myEmail As String
Dim mySMTPAuthenticate As Integer

DoCmd.OpenForm "frmSendingEmailPleaseWait", acNormal

On Error GoTo errorHandler:

'***** change to pull email server info from database
mySMTPServer = DLookup("[EmailServerName]", "dbo_Company", "[ID] = 1")
myUsername = DLookup("[EmailServerUsername]", "dbo_Company", "[ID] = 1")
myPassword = DLookup("[EmailServerPassword]", "dbo_Company", "[ID] = 1")
mySMTPPort = DLookup("[SMTPPort]", "dbo_Company", "[ID] = 1")
myEmailServerUseSSL = DLookup("[EmailServerUseSSL]", "dbo_Company", "[ID] = 1")
mySMTPAuthenticate = DLookup("[SMTPAuthenticate]", "dbo_Company", "[ID] = 1")

myEmail = IIf(Len([ReplyTo]) > 0, [ReplyTo], "ControlMIS Management System")

'Remarked out next lines as sender needs to be the account we log into the server with.
'mySender = IIf(Len([ReplyTo]) > 0, [ReplyTo], "")
'If mySender = "" Then
'    mySender = Recipient
'End If
mySender = myUsername


myCC = IIf(Len([CCRecipient]) > 0, CCRecipient, "")

mybcc = IIf(Len([ReplyTo]) > 0, [ReplyTo], "") 'Blind CC the sender so they know the job has been sent.

Set iCfg = CreateObject("CDO.Configuration")
Set iMsg = CreateObject("CDO.Message")


With iCfg.Fields
.item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
.item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = mySMTPPort
.item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = mySMTPServer
.item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = mySMTPAuthenticate
.item("http://schemas.microsoft.com/cdo/configuration/sendusername") = myUsername
.item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = myPassword
.item("http://schemas.microsoft.com/cdo/configuration/sendemailaddress") = myEmail
'next line is important - we need to use SSL to talk to Office 365 servers and others.
.item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = myEmailServerUseSSL

.Update
End With

'Automatically add Automated disclaimer to bottom of message"
'*****change to use email address for Axis from database
Message = Message & vbCrLf & vbCrLf & "This automated message has been sent by ControlMIS (Management Information System). Please ensure you add the sender of this email to your list of Safe Senders to receive all of these emails in the future."



With iMsg
.Configuration = iCfg
.Subject = Subject
.To = Recipient  '"recipient.email@address.com"
.TextBody = Message '"MessageBody"

If Nz(Attachment, "") <> "" Then
    .AddAttachment Attachment 'String for location of attachment to send
End If

If Len(mySender) > 0 Then
    .FROM = mySender 'Populate mySender with sender.email@domain.com
End If

If Len([ReplyTo]) > 0 Then
    .ReplyTo = ReplyTo
End If

If Len(myCC) > 0 Then
    .cC = myCC
End If
If Len(mybcc) > 0 Then
    .bcc = mybcc
End If


'.AddAttachment "FullPathToAttachment"
.send
End With

Set iMsg = Nothing
Set iCfg = Nothing

DoCmd.Close acForm, "frmSendingEmailPleaseWait"
Exit Function

errorHandler:
DoCmd.Close acForm, "frmSendingEmailPleaseWait"

MsgBox "Error sending email. Error # " & Err.Number & " : " & Err.Description

SendMailCDO = "Cancel"


End Function

Public Sub AddContactHistory(Optional ContactGeneralID As Integer, Optional ContactLocationID As Variant, Optional ContactNameID As Variant, Optional ProjectHeaderID As Variant, Optional NoteType As Variant, Optional Note As String)

' MsgBox "added history" ' For Troubleshooting

Dim ComputerHostName As String
Dim ComputerUserName As String

ComputerHostName = Environ$("computername")
ComputerUserName = Environ$("username")

Dim MYDB As Database
Dim rst As Recordset
Set MYDB = CurrentDb()
Set rst = MYDB.OpenRecordset("dbo_ContactHistory", dbOpenDynaset, dbSeeChanges)

rst.AddNew
rst!DateStamp = Now()
If Not IsMissing(cLoginID) Then rst!CompanyEmployeeID = Nz(cLoginID)
If Not IsMissing(ContactGeneralID) Then rst!ContactGeneralID = Nz(ContactGeneralID)
If Not IsMissing(ContactLocationID) Then rst!ContactLocationID = Nz(ContactLocationID)
If Not IsMissing(ContactNameID) Then rst!ContactNameID = Nz(ContactNameID)
If Not IsMissing(ProjectHeaderID) Then rst!ProjectHeaderID = Nz(ProjectHeaderID)
If Not IsMissing(NoteType) Then rst!NoteType = Nz(NoteType)
If Not IsMissing(Note) Then rst!Note = Note
rst!ComputerHostName = rsLocSS!txtComputerName
rst!ComputerNetworkName = rsLocSS!txtNetworkName
rst.Update


End Sub
Public Sub GetStartDay(tmpStartDay)

'Not working - was going to use in the critical path to establish a starting day - ignoring for now.

MsgBox "here"

'Calculate Total Days Required

'open component header db
Dim MYDB As Database
Dim myRST, myRST2 As Recordset
Set MYDB = CurrentDb()
Set myRST = MYDB.OpenRecordset("qryProjectComponentHeaderByPrerequisite", dbOpenDynaset, dbSeeChanges)

'myrst.FindFirst "[ProjectHeaderID] = " & Me.ProjectHeaderID

tmpStartDay = 0 ' zero start date
    
        
tmpPrerequisite = Nz(myRST!Prerequisite)
        
        If tmpPrerequisite > 0 Then
 '           Set myrst2 = mydb.OpenRecordset("qryProjectComponentHeaderByPrerequisite", , "[ProjectHeaderID] = " & Me.ProjectHeaderID)
            myRST2.MoveFirst
            Do Until myRST2.EOF
                If myRST2!ID = tmpPrerequisite Then
                    tmpStartDay = tmpStartDay + Nz(myRST2!DaysRequired)
                    tmpPrerequisite = Nz(myRST2!Prerequisite)
                    ' MsgBox "Project Header ID = " & myrst.ProjectHeaderID
                End If
            myRST2.MoveNext
            Loop
         End If


End Sub



Public Function finddocument(Optional GoToProjectID As String)


Dim FindID As Double, FindNum As Double
Dim srchstring As String






If Nz(GoToProjectID, "") = "" Then

    srchstring = InputBox("Please enter the document to search for", ProgramName)
    'MsgBox srchstring
Else
    srchstring = GoToProjectID
End If



If srchstring = "" Then
    Exit Function
    End If

If Left(srchstring, 1) = "-" Then
    srchstring = Right(srchstring, Len(srchstring) - 1)
Else
    'No Dash in position 1 - not an Axis barcode - but could be a manual entry
    If (Left(srchstring, 1) = "I" Or Left(srchstring, 1) = "E" Or Left(srchstring, 1) = "D" Or Left(srchstring, 1) = "C" Or Left(srchstring, 1) = "1" Or Left(srchstring, 1) = "3" Or Left(srchstring, 1) = "5") Then
        'manual entry - let it continue on.
        
    Else
        SendKeys srchstring & vbCr ' invalid number - likely another type of barcode - send the info back to the program and exit)
    
        Exit Function 'Quit
    End If

End If


If 1 = 2 Then 'If Forms.frmLogin.visible = True Then 'Not logged in yet - can scan STN barcodes - '***** ignoring until i find a better way
        
        If Left(srchstring, 3) <> "stn" Then
        
            MsgBox "You can not scan documents until you log in.", vbCritical, ProgramName
            Exit Function
        Else
        
            SendKeys srchstring & vbCr ' invalid number - likely another type of barcode - send the info back to the program and exit)
    
        Exit Function 'Quit
        End If
        
End If


myType = Left(srchstring, 1)
srchstring = Right(srchstring, Len(srchstring) - 1)


Select Case myType
    
    Case "E" ' Estimates
    
        FindNum = Val(srchstring) 'get the balance of the number - use Val to ensure no more characters
        On Error Resume Next
        FindID = DLookup("[ID]", "dbo_projectHeader", "[QuoteNum] = " & FindNum) 'find the ProjectHeaderID
        If Nz(FindID) = 0 Then
            MsgBox "Project Not Found.", vbCritical, ProgramName
        End If
        Call OpenProject(FindID)

    Case "5" ' Estimates
        
        srchstring = myType & srchstring
        FindNum = Val(srchstring) 'get the balance of the number - use Val to ensure no more characters
        On Error Resume Next
        FindID = DLookup("[ID]", "dbo_projectHeader", "[QuoteNum] = " & FindNum) 'find the ProjectHeaderID
        If Nz(FindID) = 0 Then
            MsgBox "Project Not Found.", vbCritical, ProgramName
        End If
        Call OpenProject(FindID)
        
        
    Case "D" ' Dockets
    
        FindNum = Val(srchstring) 'get the balance of the number - use Val to ensure no more characters
        On Error Resume Next
        FindID = DLookup("[ID]", "dbo_projectHeader", "[DocketNum] = " & FindNum) 'find the ProjectHeaderID
        If Nz(FindID) = 0 Then
            MsgBox "Project Not Found.", vbCritical, ProgramName
        End If
        Call OpenProject(FindID)
        
    Case "3" ' Dockets
        srchstring = myType & srchstring
        FindNum = Val(srchstring) 'get the balance of the number - use Val to ensure no more characters
        On Error Resume Next
        FindID = DLookup("[ID]", "dbo_projectHeader", "[DocketNum] = " & FindNum) 'find the ProjectHeaderID
        If Nz(FindID) = 0 Then
            MsgBox "Project Not Found.", vbCritical, ProgramName
        End If
        
        Call OpenProject(FindID)
        

    Case "I" ' Invoices
    
        FindNum = Val(srchstring) 'get the balance of the number - use Val to ensure no more characters
        On Error Resume Next
        FindID = DLookup("[ID]", "dbo_projectHeader", "[InvoiceNum] = " & FindNum) 'find the ProjectHeaderID
        If Nz(FindID) = 0 Then
            MsgBox "Project Not Found.", vbCritical, ProgramName
        End If
        Call OpenProject(FindID)
        
    Case "1" ' Invoices
    
        srchstring = myType & srchstring
        FindNum = Val(srchstring) 'get the balance of the number - use Val to ensure no more characters
        On Error Resume Next
        FindID = DLookup("[ID]", "dbo_projectHeader", "[InvoiceNum] = " & FindNum) 'find the ProjectHeaderID
        If Nz(FindID) = 0 Then
            MsgBox "Project Not Found.", vbCritical, ProgramName
        End If

        Call OpenProject(FindID)
    
    
    
    Case "C" 'Components
        
        ' Parse the barcode
        Dim myProjectID As String
        Dim myComponentID As String
        
        myDot = InStr(srchstring, ".")
        
        If myDot > 0 Then
        
            myProjectID = Left(srchstring, InStr(srchstring, ".") - 1)
       
            myComponentID = Val(Right(srchstring, Len(srchstring) - InStr(srchstring, ".")))
        Else
            myComponentID = Val(srchstring)
        End If
        
            
            fileProjectID = DLookup("ProjectHeaderID", "dbo_ProjectComponentHeader", "[ID] = " & myComponentID)
            If Val(fileProjectID) = 0 Then
                MsgBox "This component is not linked to the job. Please scan the top barcode and browse to the component you are searching for.", vbCritical, ProgramName
                Exit Function
            End If
            
        
        
        
        Call OpenProject(fileProjectID) ' first ensure the docket is open and at the top of the list
                
                
        Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
        Forms!navmaster.NavProject01.SetFocus
        
        tmpWhereClause = "[ID] = " & myProjectID
   
        
        DoCmd.BrowseTo acBrowseToForm, "navProject", "navMaster.navSubform", tmpWhereClause
        
        tmpWhereClause = "[ID] = " & myComponentID
        

        
        
        'then move to the component.
        DoCmd.BrowseTo acBrowseToForm, "frmProjectComponentHeader", "navMaster.navSubform>navProject.navProject", tmpWhereClause
        
    
  
    
    
    
    
    


End Select

        

'To Parse the Barcode...

'All barcodes will be preambled with - to trigger the F12 AutoKeys function
'The Barcode will usually be formatted with:


'E = Estimate
'D = Docket
'C = Component (go directly to that part of the project)
'I = Invoice
'P = Purchase order
'N = Internal ID number (ProjectHeaderID)
'S = Staff (CompanyEmployeeID)
'M = Machine (for profiling machine data collection


' For most Barcodes, if there is a . in the data stream, what follows is the component ID





End Function

Public Function OpenProject(FindID)

'This function will open a project at the top of the available projects - will check to see if it is already open first, and then add up to the number defined in NumProjectsOpen in dbo_Company

'FindID refers to the ProjectID number to open

'Debug.Print "In Public Function OpenProject"

On Error GoTo 0

'Called from the parse barcode routine.
 
tmpProjectID = FindID

'MsgBox "FindID is " & FindID


tmpControlNum = 0
tmpcontrolnumavail = 0

tmpInvoiceNum = DLookup("[InvoiceNum]", "dbo_projectHeader", "[ID] = " & FindID)
tmpDocketNum = DLookup("[DocketNum]", "dbo_projectHeader", "[ID] = " & FindID)
tmpQuoteNum = DLookup("[QuoteNum]", "dbo_projectHeader", "[ID] = " & FindID)
tmpProjectName = DLookup("[ProjectName]", "dbo_projectHeader", "[ID] = " & FindID)
FindComp = DLookup("[ContactGeneralID]", "dbo_projectHeader", "[ID] = " & FindID)
tmpCompName = DLookup("[CompName]", "dbo_contactgeneral", "[ID] = " & FindComp)





If cNumProjectsOpen < 2 Then 'Skip by multi tabs if only one is required.
    GoTo skipMultiTab:
End If

On Error Resume Next
For i = 1 To cNumProjectsOpen
    strcontrolname = "navProject" & Format(i, "00")
    If Val(Nz(Forms!navmaster(strcontrolname).tag, 0)) = Val(tmpProjectID) Then
        Forms!navmaster(strcontrolname).tag = ""
        Forms!navmaster(strcontrolname).caption = ""
        Forms!navmaster(strcontrolname).NavigationWhereClause = ""
        Forms!navmaster(strcontrolname).visible = False
        
        
        For j = i To (cNumProjectsOpen - 1) 'if you delete one, suck them up from below
        strcontrolname1 = "navProject" & Format(j, "00")
        strcontrolname2 = "navProject" & Format(j + 1, "00")
        
        Forms!navmaster(strcontrolname1).visible = Forms!navmaster(strcontrolname2).visible
        Forms!navmaster(strcontrolname1).tag = Nz(Forms!navmaster(strcontrolname2).tag, "")
        Forms!navmaster(strcontrolname1).caption = Nz(Forms!navmaster(strcontrolname2).caption, "")
        Forms!navmaster(strcontrolname1).NavigationWhereClause = Nz(Forms!navmaster(strcontrolname2).NavigationWhereClause, "")
        
        'try zeroing out fields after moving - see if this solves the blanking issue.
        
        Forms!navmaster(strcontrolname1).visible = False
        Forms!navmaster(strcontrolname1).tag = ""
        Forms!navmaster(strcontrolname1).caption = ""
        Forms!navmaster(strcontrolname1).NavigationWhereClause = ""
        
        Next
        

    
        
    End If
Next
On Error GoTo 0



 ' bump everybody down one onscreen.

    For i = cNumProjectsOpen To 2 Step -1
        strcontrolname1 = "navProject" & Format(i, "00")
        strcontrolname2 = "navProject" & Format(i - 1, "00")
        
        Forms!navmaster(strcontrolname1).visible = Forms!navmaster(strcontrolname2).visible
        Forms!navmaster(strcontrolname1).tag = Forms!navmaster(strcontrolname2).tag
        Forms!navmaster(strcontrolname1).caption = Forms!navmaster(strcontrolname2).caption
        Forms!navmaster(strcontrolname1).NavigationWhereClause = Forms!navmaster(strcontrolname2).NavigationWhereClause

        
    Next


mytab = "" 'set up the tab information.
If Nz(tmpInvoiceNum) > 0 Then
    mytab = "INV " & tmpInvoiceNum
    Else
        If tmpDocketNum > 0 Then
            mytab = "DKT " & tmpDocketNum
        Else
            mytab = "EST " & tmpQuoteNum
    End If
End If
mytab = mytab & vbCrLf
mytab = mytab & Trim(Left(tmpCompName, 15)) & IIf(Len(tmpCompName) > 15, "...", "") & vbCrLf
mytab = mytab & Trim(Left(tmpProjectName, 15)) & IIf(Len(tmpProjectName) > 15, "...", "")




' go to the first tab and turn it on.

tmpControlNum = 1
strcontrolname = "navProject" & Format(tmpControlNum, "00")
Forms!navmaster(strcontrolname).visible = True
Forms!navmaster(strcontrolname).caption = mytab
Forms!navmaster(strcontrolname).tag = tmpProjectID


tmpWhereClause = "[id] = " & Val(tmpProjectID)

Forms!navmaster(strcontrolname).NavigationWhereClause = tmpWhereClause



skipMultiTab: ' coding resumes here.


mytab = "" 'set up the tab information.
If tmpInvoiceNum > 0 Then
    mytab = "INV " & tmpInvoiceNum
    Else
        If tmpDocketNum > 0 Then
            mytab = "DKT " & tmpDocketNum
        Else
            mytab = "EST " & tmpQuoteNum
    End If
End If
mytab = mytab & vbCrLf
mytab = mytab & Trim(Left(tmpCompName, 15)) & IIf(Len(tmpCompName) > 15, "...", "") & vbCrLf
mytab = mytab & Trim(Left(tmpProjectName, 15)) & IIf(Len(tmpProjectName) > 15, "...", "")



tmpControlNum = 1
strcontrolname = "navProject" & Format(tmpControlNum, "00")
Forms!navmaster(strcontrolname).visible = True
Forms!navmaster(strcontrolname).caption = mytab
Forms!navmaster(strcontrolname).tag = tmpProjectID


tmpWhereClause = "[id] = " & Val(tmpProjectID)

Forms!navmaster(strcontrolname).NavigationWhereClause = tmpWhereClause





Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.NavProject01.SetFocus



DoCmd.BrowseTo acBrowseToForm, "navProject", "navMaster.navSubform", tmpWhereClause








End Function

Public Sub InsertBlanktblQuote()
Dim MYDB As Database
Dim myRST As Recordset

Set MYDB = CurrentDb()
Set myRST = MYDB.OpenRecordset("tblQuotesToComponent", dbOpenDynaset, dbSeeChanges)

For i = 1 To 50000

myRST.AddNew
myRST!ProjectID = 0
myRST.Update

Next i


End Sub

Public Function fncWorkday(myStartDate As Variant, myDays)



'Dim mydb As Database
'Dim myrst As Recordset
'Set mydb = CurrentDb()
'Set myrst = mydb.OpenRecordset("dbo_CalendarHoliday", dbOpenDynaset, dbSeeChanges)

'myStartDate is the date to start from.
'myDays is the number of workdays you need to obtain - can be negative.
On Error Resume Next


If Nz(myStartDate, 0) = 0 Then 'no start date.. can't run function
    fncWorkday = Date
    Exit Function
End If

If myDays > 0 Then 'are we counting forwards or backwards?
    mystep = 1
Else
    mystep = -1
End If

If Nz(myDays, 0) = 0 Then 'no change in date - nothing to do. Return the original value and leave
    fncWorkday = myStartDate
    Exit Function
End If


myskipdays = 0 'reset counter for number of skipped days


For i = (0) To myDays Step mystep
    tmpActualDate = myStartDate + i + myskipdays
'Debug.Print tmpActualDate
'Debug.Print mytmpdays

    If Weekday(tmpActualDate) = 1 Or Weekday(tmpActualDate) = 7 Then 'Search for Sat or Sun
        'MsgBox "Sat or Sun"
        i = i - mystep ' extend the loop for another day
        myskipdays = myskipdays + mystep
    End If
    
    ' Search dbo_CalendarHoliday via ConstHolidays array (defined in frmLogin_Onload for any holiday matches and skip that date also
    a = 0
    Do Until a = 155
        a = a + 1
        If tmpActualDate = constHolidays(a) Then
           
        ' MsgBox "Found Holiday " & myrst!Date & " " & myrst![Holiday Name]  - for troubleshooting holiday database
        
        i = i - mystep 'extend the loop for another day
        myskipdays = myskipdays + mystep 'add a skipped day counter

        End If
        
    Loop
    tmpActualDate = tmpActualDate + 1

Next i

fncWorkday = myStartDate + myDays + myskipdays


End Function

Public Function fncSortByLabel(OldOrderBy, AddCriteria, mylabel)

myoldorderby = OldOrderBy
'Parse the old Order by - String Should be in format Field blank or DESC, x 3

Dim OldCriteria(1 To 10, 1 To 2) As String '(up to 10 orderby's, second position is either for blank or DESC

'load up matrix
done = False
i = 0
Do Until done = True
    i = i + 1
    If i = 10 Then done = True 'no more than 10 criteria
    j = 0
    j = InStr(myoldorderby, ",")
   
    
    If j = 0 Then
        done = True 'this will be the last run through
        mytext = myoldorderby 'Grab LAST set.
    Else
        mytext = Left(myoldorderby, j - 1) 'Grab one set.
    End If
    
    If Right(mytext, 4) = "DESC" Then
        OldCriteria(i, 2) = "DESC"
        OldCriteria(i, 1) = Trim(Left(mytext, Len(mytext) - 4))
    Else
        OldCriteria(i, 2) = ""
        OldCriteria(i, 1) = Trim(mytext)
    End If
    
    If j > 0 Then 'more to go, so trim the string and get ready for the next loop
        myoldorderby = Right(myoldorderby, Len(myoldorderby) - j)
    End If
  
Loop

'Next - check if the new criteria is in the existing list
done = False
notfound = True
i = 0

Dim mynewlabel As String


mynewlabel = mylabel & " " & ChrW(9650)

Do Until done = True
    i = i + 1
    If Nz(OldCriteria(i, 1), "") = AddCriteria Then 'found a match
        If i = 1 Then '(it's found - it is the highest criteria, so just switch the direction)
            If Nz(OldCriteria(i, 2), "") = "DESC" Then
                OldCriteria(i, 2) = ""
            Else
                OldCriteria(i, 2) = "DESC"
                mynewlabel = mylabel & " " & ChrW(9660)
            End If
        Else 'Its a match, but it needs to be added to the first position and removed from where it is.
            For j = i To 2 Step -1 'Grab the ones in lower positions and move them down
                OldCriteria(j, 1) = OldCriteria(j - 1, 1)
                OldCriteria(j, 2) = OldCriteria(j - 1, 2)
            Next j
                OldCriteria(1, 1) = AddCriteria
                OldCriteria(1, 2) = ""
        End If
        notfound = False
        done = True
    End If
    If i = 10 Then done = True
Loop
    


    
    
If notfound = True Then 'new criteria wasn't in the list, so add it in the first position.
    For i = 10 To 2 Step -1
        OldCriteria(i, 1) = OldCriteria(i - 1, 1)
        OldCriteria(i, 2) = OldCriteria(i - 1, 2)
    Next i
    OldCriteria(1, 1) = AddCriteria
    OldCriteria(1, 2) = ""
End If

'Populate the string to send back

i = 0
done = False
NewOrderby = ""

Do Until done = True
    i = i + 1
    If Nz(OldCriteria(i, 1), "") <> "" Then
        NewOrderby = Trim(NewOrderby & OldCriteria(i, 1) & " " & OldCriteria(i, 2)) & ","
    Else
        done = True
    End If
    If i = 10 Then done = True
Loop

'Knock off the last comma - you're done - save it back in the function name
fncSortByLabel = Left(NewOrderby, Len(NewOrderby) - 1) & "|" & mynewlabel
    



End Function

Public Sub ScanToFile(myFileName)
Dim commondialog1 As Object
Dim img As Variant
Set commondialog1 = CreateObject("wia.commondialog")
Set img = commondialog1.ShowAcquireImage

img.SaveFile (myFileName)
End Sub

Public Sub fncMakePhoneCall(CallNumber As String, Optional callresult As String)

Select Case rsLocSS!PhoneSystem

Case 11 'Skype

    'Late Binding Option:
    Dim skpSkype As Object
    Dim calcall As Object
    
    Set skpSkype = CreateObject("SKYPE4COM.skype")
    

    'Reference Binding
    'Dim skpSkype As SKYPE4COMLib.Skype
    'Dim calcall  As SKYPE4COMLib.Call
    
    'Set skpSkype = New SKYPE4COMLib.Skype

    Dim myCallNum As String
    Dim myCallNumStart As String
    
    myCallNumStart = CallNumber
    myCallNum = "+1"
    
    For a = 1 To Len(myCallNumStart)
        If Mid(myCallNumStart, a, 1) >= Chr(48) And Mid(myCallNumStart, a, 1) <= Chr(57) Then
            myCallNum = myCallNum & Mid(myCallNumStart, a, 1)
        End If
    Next a
    
    Set calcall = skpSkype.PlaceCall(myCallNum)
    
    'callresult = InputBox("Please note the results of this call:", ProgramName)
    
Case 12 'Microsoft LYNC

Case 21 'Cisco KSU

Case 22 'Softphone utilizing standard TEL command
    myCallNum = "TEL:" & CallNumber
    Application.FollowHyperlink (myCallNum)


End Select


End Sub
'Function:  BlobToFile - Extracts the data in a binary field to a disk file.
'Parameter: strFile - Full path and filename of the destination file.
'Parameter: Field - The field containing the blob.
'Return:    The length of the data extracted.
Public Function BlobToFile(strFile As String, ByRef Field As Variant) As Long
     On Error GoTo BlobToFileError

     Dim nFileNum As Integer
     Dim abytData() As Byte
     BlobToFile = 0
     nFileNum = FreeFile
     Open strFile For Binary Access Write As nFileNum
     abytData = Field
     Put #nFileNum, , abytData
     BlobToFile = LOF(nFileNum)

BlobToFileExit:
     If nFileNum > 0 Then Close nFileNum
     Exit Function

BlobToFileError:
     MsgBox "Error " & Err.Number & ": " & Err.Description, vbCritical, _
            "Error writing file in BlobToFile"
     BlobToFile = 0
     Resume BlobToFileExit

End Function


'Function:  FileToBlob - Loads a file into a binary field.
'Parameter: strFile - Full path and filename of the source file.
'Parameter: Field - The binary field into which the file is to be loaded.
Public Function FileToBlob(strFile As String, ByRef Field As Variant)
     On Error GoTo FileToBlobError

     If Len(Dir(strFile)) > 0 Then
         Dim nFileNum As Integer
         Dim byteData() As Byte

         nFileNum = FreeFile()
         Open strFile For Binary Access Read As nFileNum
         If LOF(nFileNum) > 0 Then
             ReDim byteData(1 To LOF(nFileNum))
             Get #nFileNum, , byteData
             Field = byteData
         End If
     Else
         MsgBox "Error: File not found", vbCritical, _
                "Error reading file in FileToBlob"
     End If

FileToBlobExit:
     If nFileNum > 0 Then Close nFileNum
     Exit Function

FileToBlobError:
     MsgBox "Error " & Err.Number & ": " & Err.Description, vbCritical, _
            "Error reading file in FileToBlob"
     Resume FileToBlobExit

End Function



Public Function fncPressListOnComponent(myComponentID As Long)
Dim myrs As Recordset
Dim myPressListArray(1 To 10) As Integer
Dim myCounter As Integer
Dim a As Integer
Dim myPressList As String


myPressList = ""
mysql = "SELECT * from dbo_ProjectComponentPress WHERE ProjectComponentID = " & myComponentID

Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)

If myrs.EOF Then 'No press runs
    fncPressListOnComponent = ""
    Exit Function
End If


myrs.MoveFirst
myCounter = 1

'Grab a complete list of all presses in use and put them in array.
Do Until myrs.EOF
    done = False
    a = 1
    Do Until done = True
        If myPressListArray(a) = 0 Then
            myPressListArray(a) = Nz(myrs!Press, 0)
            done = True 'New item - no need to continue
        Else
            If myPressListArray(a) = Nz(myrs!Press, 0) Then
            done = True 'Found a match - no need to continue
            End If
        End If
        
        a = a + 1
        If a = 10 Then done = True
    Loop
    
        
    myCounter = myCounter + 1
    myrs.MoveNext
Loop


'Create myPressList from leftover array members
myPressList = ""

myLastOne = myCounter
If myLastOne > 10 Then myLastOne = 10
For a = 1 To myLastOne
    If Nz(myPressListArray(a), 0) <> 0 Then
        myPressList = myPressList & IIf(Len(myPressList) > 0, ", ", "") & DLookup("[PDQMachineName]", "dbo_Machine", "[ID] = " & myPressListArray(a))
    End If
Next a

If Len(myPressList) > 0 Then
    If InStr(myPressList, ",") > 0 Then
        myPressList = "PRESSES: " & myPressList
    Else
        myPressList = "PRESS: " & myPressList
    End If
End If

fncPressListOnComponent = myPressList
    


End Function

Public Function fncSetLastDate(ContactGeneralID As Integer, ProjectNumber As Double, ProjectType As Integer)

'Function to set the Lastdates in the ContactGeneral database.
'ContactGeneralID is exactly that.
'ProjectNumber is either Estimate number, Docket Number or Invoice Number
'ProjectType is 1 for Estimate, 2 for Docket, 3 for Invoice
Exit Function


Dim mysql As String
Dim myrs As Recordset

mysql = "SELECT * From dbo_ContactGeneral WHERE ID = " & ContactGeneralID

Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)

myrs.Edit

Select Case ProjectType

Case 1 'Estimate
    myrs!LastEstimate = ProjectNumber
    myrs!LastEstimatedate = Now()

Case 2 'Docket
    myrs!LastDocket = ProjectNumber
    myrs!lastdocketdate = Now()
    myrs!IsProspect = False   'Turn of the prospect flag - customer ordered something.

Case 3 'Invoice
    myrs!LastInvoice = ProjectNumber
    myrs!LastInvoicedate = Now()

End Select

myrs.Update

myrs.Close






End Function


Public Function GetComponentNames(myProjectHeaderID As Long)
Dim rs As Recordset
Dim mysql As String
Dim MyFullname As String
MyFullname = ""

mysql = "SELECT * FROM dbo_ProjectComponentHeader WHERE ProjectHeaderID = " & myProjectHeaderID
Set rs = CurrentDb.OpenRecordset(mysql, dbOpenSnapshot)
Do Until rs.EOF
    mySellFor = ""
    If Nz(rs!SellForFinal, 0) > 0 Then
        mySellFor = " (" & Format(rs!SellForFinal, "currency")
        If Nz(rs!PDQAmtFinal, 0) > 0 Then
            mySellFor = mySellFor & " / " & Format(((rs!SellForFinal - rs!PDQAmtFinal) / rs!PDQAmtFinal), "percent")
        End If
        mySellFor = mySellFor & ") "
    End If
    MyFullname = MyFullname & IIf(Nz(rs!SellQtyFinal, 0) > 0, rs!SellQtyFinal & " x ", "") & rs!ComponentName & mySellFor & Chr(32) & Chr(149) & Chr(32)
    rs.MoveNext
Loop

If Len(MyFullname) > 2 Then
    MyFullname = Left(MyFullname, Len(MyFullname) - 3)
Else
    MyFullname = "None Assigned"
End If


GetComponentNames = MyFullname



End Function

Public Function TechSupportRequest()

MsgBox "Doing Tech Support Request"

End Function

Public Function AddBlankPDQComponentRecords()

Dim rs As Recordset



Set rs = CurrentDb.OpenRecordset("dbo_QuotesToComponent", dbOpenDynaset, dbSeeChanges)

For i = 1 To 50000
    rs.AddNew
    rs!ID = Val(i)
    Debug.Print ".";
    rs.Update
Next i

End Function

Public Function fAxisReportName()
    fAxisReportName = cControlReportName
  
End Function


Public Function fAxisReportAddress()
    fAxisReportAddress = cControlReportAddress
  
End Function

Public Function fAxisLegalName()
    fAxisLegalName = cControlLegalName
  
End Function

Public Function fncCharOnly(inString As String)

Dim myChrCode As Integer
Dim myString As String

myString = ""

For a = 1 To Len(inString)
    myChrCode = Asc(Mid(inString, a, 1))
    If myChrCode = 32 Or (myChrCode >= 48 And myChrCode <= 57) Or (myChrCode >= 65 And myChrCode <= 90) Or (myChrCode >= 97 And myChrCode <= 122) Then 'good letter, num or space character
        myString = myString + Chr(myChrCode)
    End If
Next a
    
fncCharOnly = myString

End Function

Public Function fAxisProgramname()
'adf
fAxisProgramname = ProgramName
    
End Function

Public Function getMyIP()
Dim myWMI As Object, myobj As Object, itm
Set myWMI = GetObject("winmgmts:\\.\root\cimv2")
Set myobj = myWMI.ExecQuery("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True")
For Each itm In myobj
  getMyIP = itm.IPAddress(0)
  Exit Function
Next
End Function



Public Function fLocSS(myFieldName As String) As Variant
 

If myFieldName = "LoginID" Then
    fLocSS = cLoginID
Else
    fLocSS = rsLocSS(myFieldName)
End If



End Function

Public Function PingServer(myTarget As String) As Boolean

'On Bypass - fails due to ping not responding properly - return true.

PingServer = True

Exit Function

' ***** CODE FAILS when the iteration before can't find the server - only one line of text. Can't find solution yet.

' Note that to put the macro to sleep
' you need to call the Sleep API.
' To do this, paste the Sleep Function
' in a module that this sub can access.

' Paste this in a module.
''Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

On Error GoTo ErrLine
Dim ServerUp As Boolean
Dim fs
Dim PingFile As String
PingServer = False 'Initialize the function in case it doesn't get approved.

PingFile = CurrentProject.Path & "\PingRes.txt"
Set fs = CreateObject("Scripting.FileSystemObject")
If fs.FileExists(PingFile) Then
    fs.DeleteFile PingFile
End If
' Open a command window and ping the server.
'Create Ping line with parameters
myPingLine = "cmd.exe /c ping /n 1 /w 1000 " & myTarget & " >> C:\AxisMIS\PingRes.txt"
Shell myPingLine
' Sleep for one second to allow time for ping to
' finish writing to the file.
Sleep 1000


If fs.FileExists(PingFile) Then
    Dim Results As String
    
    ' Get the number of the next free text file and read it.
    Dim FileNum As Integer
    FileNum = FreeFile
    Open PingFile For Input As #FileNum
    Results = input$(LOF(FileNum), FileNum)
    'MsgBox LOF(FileNum)
    
    Close #FileNum
    'MsgBox Results 'debugging
    
    If InStr(Results, "Reply") > 0 And InStr(Results, "100% loss") = 0 Then
        ServerUp = True
        PingServer = True
    End If
End If
' cleanup.
Set fs = Nothing
' display results
'MsgBox "Server connected = " & ServerUp
'PingServer = False

Exit Function

' display error.
ErrLine:
'MsgBox "In Error Code"
If Err.Number <> 0 Then
    Close #FileNum
    'MsgBox "Error: " & Err.Description
    PingServer = False
End If

End Function



Public Function CalcDays(myStart, myEnd) As Double

Dim myStartHr As Integer
Dim myStartMin As Integer
Dim myEndHr As Integer
Dim myEndMin As Integer
Dim myCalcHr As Integer
Dim myCalcMin As Integer
 



    If Len(myStart) = 5 And Len(myEnd) = 5 Then
        myStartHr = Val(Left(myStart, 2))
        myStartMin = Val(Right(myStart, Len(myStart) - 3))
    
    
        myEndHr = Val(Left(myEnd, 2))
        myEndMin = Val(Right(myEnd, Len(myEnd) - 3))
        
        myCalcHr = myEndHr - myStartHr
        If myEndHr < myStartHr Then
            myCalcHr = (24 - myStartHr) + myEndHr
        End If
        
        If myEndMin >= myStartMin Then
            myCalcMin = myEndMin - myStartMin
        Else
            myCalcHr = myCalcHr - 1
            myCalcMin = myEndMin + 60 - myStartMin
        End If
        
        CalcDays = Val(myCalcHr) + (Val(myCalcMin) / 60)
    Else
        CalcDays = 0
    End If
    



End Function
                


Public Function FunctionF2()
'Browseto WIP Incomplete
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWorkInProgressIncomplete", "navMaster.navSubform"
End Function

Public Function FunctionF3()
'Browseto ready to Invoice
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWorkInProgressReadyToInvoice", "navMaster.navSubform"
End Function

Public Function FunctionF4()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWorkInProgressWaitingForArtwork", "navMaster.navSubform"
End Function

Public Function FunctionF5()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWorkInProgressProofsWaitingApproval", "navMaster.navSubform"
End Function

Public Function FunctionF6()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmPrepressSchedule", "navMaster.navSubform"
End Function

Public Function FunctionF7()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWIPPrint", "navMaster.navSubform"
End Function

Public Function FunctionF8()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWorkInProgressOutsideServices", "navMaster.navSubform"
End Function

Public Function FunctionF9()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWIPBindery", "navMaster.navSubform"
End Function

Public Function FunctionF10()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWIPMail", "navMaster.navSubform"
End Function

Public Function FunctionF11()
'Browseto
Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.navSubform.SetFocus

DoCmd.BrowseTo acBrowseToForm, "frmWorkInProgressIncompleteByDept", "navMaster.navSubform"
End Function

Public Function ThemeColors()
Dim EnvString As String
Indx = 1
Do
    EnvString = Environ(Indx)
    'Cells(Indx, 1) = EnvString
    Indx = Indx + 1
    Debug.Print EnvString
    
Loop Until EnvString = ""





End Function

Public Function fLFFinishWorkList(myComponentID As Long)
Dim myrs As Recordset
Dim mysql As String

mysql = "SELECT * FROM dbo_ProjectComponentLFFinishWorkList WHERE ProjectComponentID = " & myComponentID
Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenSnapshot)
mytext = ""


Do Until myrs.EOF
    myStatus = Nz(myrs!Status, 1)
    Select Case myStatus
        'Case 1 'Ignore - not changing
        '    If Len(Nz(myrs!Name, 0)) > 0 Then
        '        myTagOn = "<b>"
        '        myTagOff = "</b>"
        '    End If
        Case 2 'Underline - in progress)
            myTagOn = "<b>"
            myTagOff = "</b>"
        Case 3
            myTagOn = "<u>"
            myTagOff = "</u>"
    End Select

    mytext = mytext & " : " & myTagOn & myrs!name & myTagOff
    myrs.MoveNext
Loop


fLFFinishWorkList = Trim(mytext)

End Function

Public Function CalcCommission(EmployeeID, Markup, GrossSale, PDQCost, MaterialsCost, OSCost, DeliveryCost, Optional OverrideRate)

'Function that uses the ConfigCommission table to calculate the commission payable based on the information provided.

'Check if there is an overriderate - if so, use it
If IsMissing(OverrideRate) <> True Then
    If Nz(OverrideRate, -99) <> -99 Then
        CalcCommission = GrossSale * (OverrideRate / 100)
        Exit Function
    End If
End If
    
Dim mysql As String
Static CommRS As Recordset

'Set the Commission Rate record to use to match to particular employee or the generic record (EmployeeID = 1).

If CommRS Is Nothing Then
    
    
    mysql = "SELECT * from dbo_CommissionConfig"
    
    Set CommRS = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)
End If


CommRS.FindFirst "[EmployeeID] = " & Forms!frmLogin!ID

If CommRS.NoMatch Then CommRS.FindFirst "[EmployeeID] = 1"

myTotalHardCost = Nz(MaterialsCost, 0) + Nz(OSCost, 0) + Nz(DeliveryCost, 0)

'Decide which of the three calculations to use - Has PDQ, No PDQ with costs over 50%, No PDQ with costs under 50%

If (Nz(PDQCost, 0) > 0) And ((GrossSale / 2) >= myTotalHardCost) Then 'ComponentHasPDQQuote, Outside service is incidental

    Select Case CommRS!HasPDQBasis
    
    Case 1  'Base commission on Gross Sale
        myCommCalc = GrossSale
    Case 2 'Based on Gross Profit
        myCommCalc = GrossSale - PDQCost
    Case 3  'Based on Value Add
        MsgBox "Not Working"
        
    End Select
    

    
    
    done = False
    i = 5
    Do Until done
        myThresholdfn = "HasPDQThr" & Trim(str(i))
        myratefn = "HasPDQRate" & Trim(str(i))
       
        'Find matching Threshold
        
        If Markup <= CommRS(myThresholdfn) Then
            
            CalcCommission = Format(myCommCalc * (CommRS(myratefn) / 100), "Standard")
        End If

        i = i - 1
        If i = 0 Then done = True
    Loop
    
        
    
       
Else 'No PDQ quote
    
    If (GrossSale / 2) <= myTotalHardCost Then 'No PDQ, Hard Costs are more than half
                
        Select Case CommRS!NoPDQOverHalfBasis
        
        Case 1  'Base commission on Gross Sale
            myCommCalc = GrossSale
        Case 2 'Based on Gross Profit
            myCommCalc = GrossSale - PDQCost
        Case 3  'Based on Value Add
            MsgBox "Not Working"
            
        End Select
        
        done = False
        i = 5
        Do Until done
            myThresholdfn = "NoPDQOverHalfThr" & Trim(str(i))
            myratefn = "NoPDQOverHalfRate" & Trim(str(i))
            
            If Markup <= CommRS(myThresholdfn) Then
                CalcCommission = Format(myCommCalc * (CommRS(myratefn) / 100), "Standard")
            End If
            i = i - 1
            If i = 0 Then done = True
        Loop
        
    Else 'No PDQ, Hard Costs less than half
    
        Select Case CommRS!NoPDQUnderHalfBasis
        
        Case 1  'Base commission on Gross Sale
            myCommCalc = GrossSale
        Case 2 'Based on Gross Profit
            myCommCalc = GrossSale - PDQCost
        Case 3  'Based on Value Add
            MsgBox "Not Working"
            
        End Select
        
        done = False
        i = 5
        Do Until done
           
            myThresholdfn = "NoPDQUnderHalfThr" & Trim(str(i))
            myratefn = "NoPDQUnderHalfRate" & Trim(str(i))
            
            If Markup <= CommRS(myThresholdfn) Then
                CalcCommission = Format(myCommCalc * (CommRS(myratefn) / 100), "Standard")
            End If
            i = i - 1
            If i = 0 Then done = True
        Loop
    
    
    End If
    
End If

        
End Function

'***************** Code Start ***************
'This code was originally written by Keri Hardwick.
'It is not to be altered or distributed,
'except as part of an application.
'You are free to use it in any application,
'provided the copyright notice is left unchanged.
'
'Code Courtesy of
'Keri Hardwick
'
Function nnz(testvalue As Variant) As Variant
'Not Numeric return zero
    If Not (IsNumeric(testvalue)) Then
        nnz = 0
    Else
        nnz = testvalue
    End If
End Function
'***************** Code End  ****************



Sub VerifyScreenResolution(Optional Dummy As Integer)

    Dim x  As Long
    Dim Y  As Long
    Dim MyMessage As String
    Dim ScreenRes As Integer
    
'Can return X and Y pixels for primary screen only.
'Note: Standard Resolution for Control is 1920 x 1080. Tablet resolution is

    x = GetSystemMetrics(SM_CXSCREEN)
    Y = GetSystemMetrics(SM_CYSCREEN)
    ScreenRes = 1 'Set to default to regular screen

    If x <= 1400 And Y <= 800 Then 'Tablet Resolution
        ScreenRes = 2 'Tablet Mode
    End If
    
       
    'MsgBox "Your current screen resolution is " & x & " X " & y, , ProgramName


End Sub



Public Sub OpenPDQ()
    'Launch application if not already open
    If vPID = 0 Then 'Application not already open
101:
        vPID = Shell("C:\_AxisSQLLocal\AxisMISProgram\PDQ\pdq.exe", vbNormalFocus)
    Else 'Application already open so reactivate
        On Error GoTo 101
        AppActivate (vPID)
    End If

End Sub