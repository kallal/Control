Option Compare Database



Public Function ImportPDQCustomers()

'Attach to PDQ Companies
Dim InRS As Recordset
Dim OutRS As Recordset
Dim OutRS2 As Recordset

Set InRS = CurrentDb.OpenRecordset("PDQ_Customers", dbOpenDynaset)

Set OutRS = CurrentDb.OpenRecordset("dbo_ContactGeneral", dbOpenDynaset, dbSeeChanges)
Set OutRS2 = CurrentDb.OpenRecordset("dbo_ContactLocation", dbOpenDynaset, dbSeeChanges)

Do Until InRS.EOF

    OutRS.AddNew
    OutRS2.AddNew
    
    OutRS!tempID = InRS!ID
    OutRS2!tempID = InRS!ID
    
    
    OutRS!CompName = InRS!customerName
    OutRS!OperatingAs = InRS!customerName
    OutRS!AcctStatus = 1
    
    OutRS2!Add1 = InRS!address1
    OutRS2!Add2 = InRS!address2
    OutRS2!City = InRS!town
    OutRS2!Prov = InRS!county
    OutRS2!PC = InRS!postcode
    OutRS2!IsActive = True
    OutRS!CsrID = 74 'Kathi Moroz
    
    Select Case InRS!defaultsalesexecutive
    
        Case "Ron Maksymec"
            OutRS!SalesRepID = 72
        Case "Randy Smith"
            OutRS!SalesRepID = 73
        Case "Kathi Moroz"
            OutRS!SalesRepID = 74
        Case "Jen Hannah"
            OutRS!SalesRepID = 75
        Case "Greg Himer"
            OutRS!SalesRepID = 76
        Case "Brian Todd"
            OutRS!SalesRepID = 77
        Case "Bob Thompson"
            OutRS!SalesRepID = 78
        Case "Sorin Petrisor"
            OutRS!SalesRepID = 79
        Case other
            OutRS!SalesRepID = 80
    End Select
    
    
    'Close output records and loop
    OutRS2.Update
    OutRS.Update
    InRS.MoveNext
    Debug.Print "."
Loop

        
End Function





Public Function ImportDPIList()

'Attach to PDQ Companies
Dim InRS As Recordset
Dim OutRS As Recordset
Dim OutRS2 As Recordset
Dim outRS3 As Recordset

mysql = "Select * from DPI_ClientList WHERE ID > 65"
Set InRS = CurrentDb.OpenRecordset(mysql, dbOpenDynaset)

Set OutRS = CurrentDb.OpenRecordset("dbo_ContactGeneral", dbOpenDynaset, dbSeeChanges)
Set OutRS2 = CurrentDb.OpenRecordset("dbo_ContactLocation", dbOpenDynaset, dbSeeChanges)
Set outRS3 = CurrentDb.OpenRecordset("dbo_ContactName", dbOpenDynaset, dbSeeChanges)


Do Until InRS.EOF




    OutRS.AddNew
    OutRS!CompName = "temp"
    OutRS.Update
    OutRS.Bookmark = OutRS.LastModified
    OutRS.Edit
    
    OutRS2.AddNew 'loc
    OutRS2!LocationName = "none"
    OutRS2.Update
    OutRS2.Bookmark = OutRS2.LastModified
    OutRS2.Edit
    
    outRS3.AddNew 'Name
    outRS3!FN = "none"
    outRS3.Update
    outRS3.Bookmark = outRS3.LastModified
    outRS3.Edit
    
    'Grab the current ID's
    myContactGeneralID = OutRS!ID
    myContactLocationID = OutRS2!ID
    mycontactnameid = outRS3!ID
    

    OutRS!CompName = InRS!customer
    OutRS!OperatingAs = InRS!customer
    OutRS!AcctStatus = 1
    OutRS!SalesRepID = 92 'House Account
    OutRS!CsrID = 88 'Paula Cross
    
    OutRS2!Add1 = InRS!Street1
    OutRS2!Add2 = InRS!Street2
    OutRS2!City = InRS!City
    OutRS2!Prov = InRS!State
    OutRS2!PC = InRS!zip
    OutRS2!IsActive = True
    OutRS2!LocationName = "Head Office"
    OutRS2!ContactGeneralID = myContactGeneralID

    outRS3!Prefix = InRS!xP_Prefix
    outRS3!FN = InRS!xP_FN
    outRS3!MN = InRS!xP_MI
    outRS3!LN = InRS!xP_LN
    outRS3!Title = InRS!Title
    outRS3!PhDirect = Left(InRS![Main Phone], 20)
    outRS3!PhExt = Left(InRS![Work Phone], 20)
    outRS3!PhMobile = Left(InRS![Mobile], 20)
    outRS3!PhFax = InRS![fax]
    outRS3!Email = InRS![Main Email]
    outRS3!ContactGeneralID = myContactGeneralID
    outRS3!ContactLocationID = myContactLocationID
    outRS3!IsActive = True
    
    
    
    'Select Case InRS!defaultsalesexecutive
    
     '   Case "Ron Maksymec"
     '       OutRS!SalesRepID = 72
     '   Case "Randy Smith"
     '       OutRS!SalesRepID = 73
     '   Case "Kathi Moroz"
      '      OutRS!SalesRepID = 74
      '  Case "Jen Hannah"
      '      OutRS!SalesRepID = 75
      '  Case "Greg Himer"
      '      OutRS!SalesRepID = 76
      '  Case "Brian Todd"
      '      OutRS!SalesRepID = 77
      '  Case "Bob Thompson"
      '      OutRS!SalesRepID = 78
      '  Case "Sorin Petrisor"
      '      OutRS!SalesRepID = 79
      '  Case other
       '     OutRS!SalesRepID = 80
    'End Select
    
    
    'Close output records and loop
    outRS3.Update
    OutRS2.Update
    OutRS.Update
    InRS.MoveNext
    Debug.Print "."
'Stop

Loop


        
End Function


Public Sub UpdateCANAfterUSA()
Dim myrs As Recordset
Dim mysql As String

'mySQL = "SELECT * from dbo_ProjectComponentHeader"

'Set myrs = CurrentDb.OpenRecordset(mySQL, dbOpenDynaset, dbSeeChanges)

'myrs.MoveFirst

'Do Until myrs.EOF
'    myrs.Edit
'    If IsNull(myrs!ExtQuoteQty1) Then myrs!ExtQuoteQty1 = 1
    
    
'    myrs!ExtQuoteQtyTax1 = myrs!ExtQuoteQty1
'    myrs!ExtQuoteQtyTax2 = myrs!ExtQuoteQty2
'    myrs!ExtQuoteQtyTax3 = myrs!ExtQuoteQty3
'    myrs!ExtQuoteQtyTax4 = myrs!ExtQuoteQty4
'    myrs!ExtQuoteQtyTax5 = myrs!ExtQuoteQty5
'
'    myrs!ExtQuoteQtyNonTax1 = 0
'    myrs!ExtQuoteQtyNonTax2 = 0
'    myrs!ExtQuoteQtyNonTax3 = 0
'    myrs!ExtQuoteQtyNonTax4 = 0
'    myrs!ExtQuoteQtyNonTax5 = 0
    
'    myrs.Update
'    Debug.Print ".";
'    myrs.MoveNext
    
'Loop

Debug.Print "Done with Components"
i = 1

Set myrs = Nothing


mysql = "SELECT * from dbo_ProjectHeader"

Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)

myrs.MoveFirst
Do Until myrs.EOF
    myrs.Edit
    myrs!PurchaserID = myrs!ContactNameID
    myrs.Update
        i = i + 1
        If i / 100 = Int(i / 100) Then
            Debug.Print i
        End If
        
    myrs.MoveNext
Loop

Debug.Print "Done header"

Set myrs = Nothing

    
End Sub