'---------------------------------------------------------------------------------------
' Module    : Sage50
' Author    : AlbertKallal
' Date      : 6/17/2015
' Purpose   : Interface to Sage 50 accounting
'---------------------------------------------------------------------------------------


Option Compare Database
Option Explicit

'Public SageEmployee     As New Sage50com.SageEmployee
Public SageEmployee     As Object               ' late bind (production)
'Public SageCustomer     As New Sage50com.Customer
Public SageCustomer     As Object
'Public SageInvoice      As New Sage50com.Invoice
Public SageInvoice      As Object



Sub TestSage()

     'Dim sage50      As New Sage50com.SageEmployee
     Dim sage50      As Object
     
     'Set sage50 = MyCreateObject("Sage50\Sage50com.dll", "Sage50com.SageEmployee")
     'Set sage50 = MyCreateObject("C:\Users\AlbertKallal\Documents\Visual Studio 2013\Projects\Sage50com\Sage50com\bin\x86\Debug\Sage50com.dll", "Sage50com.SageEmployee")
     
     With sage50
        .m_DataFile = "C:\Users\Public\Documents\Simply Accounting\2015\Samdata\Enterprise\Universl.SAI"
        .m_UserName = "MIS"
        .m_PassWord = "MIS"
        Debug.Print .OpenDataFile
    End With

     Debug.Print "find " & sage50.FindEmployee("Kallal, Albert")
     
     Debug.Print "find " & sage50.FindEmployee("Belanger, Bruno")
     Debug.Print "find " & sage50.FindEmployee("Belanger, Bruno")
     
     Debug.Print "find " & sage50.FindEmployee("Kallal, Albert")
     
   
    'Dim sageCust     As New Sage50com.Customer
    
    'Debug.Print "find " & sageCust.FindCustomer("Rides Software")
       
   Debug.Print sage50.CloseDatabase
   


End Sub



Sub TestSage3()


    ChDir CurrentProject.Path


'     Dim s2 As New Sage50com2.test1
     
'     Debug.Print s2.RuntimeLoc
     
'     Debug.Print s2.Hello




     'Dim sage50      As New Sage50com.SageEmployee
     Dim sage50      As Object
     
     'Set sage50 = MyCreateObject("Sage50\Sage50com.dll", "Sage50com.SageEmployee")
'     Set sage50 = MyCreateObject("C:\Users\AlbertKallal\Documents\Visual Studio 2013\Projects\Sage50com2\Sage50com2\bin\x86\Debug\Sage50com2.dll", "Sage50com2.Test1")
                                 'C:\Users\AlbertKallal\Documents\Visual Studio 2013\Projects\Sage50com2\Sage50com2\bin\x86\Debug
     With sage50
        Debug.Print .RuntimeLoc
    End With


End Sub



Sub TestCustomer()



    'Dim sageCust     As New Sage50com.Customer
    Dim sagecust As Object
    Set sagecust = CreateObject("Sage50com.Customer")
    
     With sagecust
        '.m_DataFile = "Sage50DataFile=C:\Users\Public\Documents\Simply Accounting\2015\SAMDATA\Enterprise\Universl.SAI"
        .m_DataFile = cSage50DataFile
        .m_UserName = "MIS"
        .m_PassWord = "MIS"
        Debug.Print .OpenDataFile
    End With
    
    Debug.Print "find " & sagecust.FindCustomer("Rides Software")

    Debug.Print sagecust.CloseDatabase


End Sub


Sub TestCustomer2()



    'Dim sageCust     As New Sage50com.Customer
    Dim sagecust As Object
    Set sagecust = CreateObject("QuickBooksCom.Customer")
    
     With sagecust
        '.m_DataFile = "Sage50DataFile=C:\Users\Public\Documents\Simply Accounting\2015\SAMDATA\Enterprise\Universl.SAI"
        .m_DataFile = cQuickbooksDataFile
        .m_UserName = "MIS"
        .m_PassWord = "MIS"
        Debug.Print .OpenDataFile
    End With
    
    Debug.Print "find " & sagecust.FindCustomer("Albert David Kallal")

    Debug.Print sagecust.CloseDatabase
   
    
End Sub
Function HasDotNet4() As Boolean

   ' checks for correct version of CLR .net loaded.
   
      Dim v    As Variant
      Dim s    As Variant
 '     v = Split(vbDotNetLoader.InstalledCLRVersions, "|")
      
      For Each s In v
         If s = "v4.0.30319" Then
            HasDotNet4 = True
            Exit Function
         End If
      Next s
      
      ' if we get this far, then fail
      
      MsgBox "Required .net 4 (v4.0.30319) is not installed", vbCritical, "CONTROL"
                  
      HasDotNet4 = False
   

End Function



Public Function AddCustomers(rst As DAO.Recordset) As Integer

'---------------------------------------------------------------------------------------
' Procedure : AddCustomers
' Author    : Albert D. Kallal
' Date      : 7/24/2015
' Purpose   : Call this routine to check/test customers
'---------------------------------------------------------------------------------------
'

   Dim intMissingRecords      As Integer
   Dim strF                   As String         ' form to open
   
   ' call routine to check + add missing cusomters to a temp working table
   Do
   
      intMissingRecords = CheckToAddCustomers(rst)
      
      If intMissingRecords = -1 Then
        ' cancel - exit
        AddCustomers = -1
        Exit Function
      End If
      
      
      If intMissingRecords > 0 Then
      
         strF = "frmSageEditCustomers"
         ' launch form to let user display cust records and possbile add records to sage
         DoCmd.OpenForm strF, , , , , acDialog
         
         If CurrentProject.AllForms(strF).IsLoaded = False Then
           ' user closed form, or hit cancel button
           AddCustomers = -1
           Exit Function
         Else
            ' user hit ok, close the form
            DoCmd.Close acForm, strF
         End If
      End If
   
   Loop Until intMissingRecords = 0


End Function

Public Function AddSalesReps(rst As DAO.Recordset) As Integer

'---------------------------------------------------------------------------------------
' Procedure : AddSalesReps
' Author    : Albert D. Kallal
' Date      : 7/24/2015
' Purpose   : Call this routine to check/test for sales rep
'---------------------------------------------------------------------------------------
'

   Dim intMissingRecords      As Integer
   Dim strF                   As String         ' form to open
   
   ' call routine to check + add missing sales reps to a temp working table
   Do
   
      intMissingRecords = CheckToAddSalesReps(rst)
      
      If intMissingRecords = -1 Then
        ' cancel - exit
        AddSalesReps = -1
        Exit Function
      End If
      
      
      If intMissingRecords > 0 Then
      
         strF = "frmSageEditSalesRep"
         ' launch form to let user display cust records and possbile add records to sage
         DoCmd.OpenForm strF, , , , , acDialog
         
         If CurrentProject.AllForms(strF).IsLoaded = False Then
           ' user closed form, or hit cancel button
           AddSalesReps = -1
           Exit Function
         Else
            ' user hit ok, close the form
            DoCmd.Close acForm, strF
         End If
      End If
   
   Loop Until intMissingRecords = 0


End Function




Public Function CheckToAddCustomers(rst As DAO.Recordset) As Long

'---------------------------------------------------------------------------------------
' Procedure : CheckToAdd
' Author    : AlbertKallal
' Date      : 6/17/2015
' Purpose   : Checks if customers to post invoices exist in Sage50
'             All customers missing are send to a local temp table
'             of which then a form is launced to allow user to deal with missing
'             Customers.
'---------------------------------------------------------------------------------------
'


   ' check passed list of records if they exist in sage 50, if not, then add
   ' to a local working table
   
   Dim strSQL           As String
   Dim rstCust          As DAO.Recordset
   
   CurrentDb.Execute "delete * from tblSageCustomersTemp"         ' empty the temp working table
   
   Set rstCust = CurrentDb.OpenRecordset("tblSageCustomersTemp")
   
   

   CheckToAddCustomers = -1          ' consider a fail to allow exit this funtion = cancel
   
   ' clear working table of
   
   rst.MoveLast                     ' get record  count
   
   Dim pBar  As New clsPbar
   pBar.ShowProgress
   rst.MoveLast                     ' ensure good record  count
   pBar.Pmax = rst.RecordCount
   
   pBar.PCaption = "Process Customer list"
   pBar.TextMsg = "Establishing interface to Accounting - wait"
      
   'Dim SageCustomer As New Sage50com.Customer
   If SageCustomer Is Nothing Then
      ' create the object, (simply accoutning, or QuickBooks
      If cSage50Enabled = True Then
         Set SageCustomer = CreateObject("Sage50com.Customer")
      End If
      
      If cQuickbooksEnabled = True Then
         Set SageCustomer = CreateObject("QuickBooksCom.Customer")
      End If
      
   End If
      
   If cSage50Enabled = True Then
      If SageCustomer.m_Active = False Then
         SageCustomer.m_DataFile = cSage50DataFile
         SageCustomer.m_UserName = cSage50User
         SageCustomer.m_PassWord = cSage50Password
      End If
   End If
   
   If cQuickbooksEnabled = True Then
      If SageCustomer.m_Active = False Then
         SageCustomer.m_DataFile = cQuickbooksDataFile
         SageCustomer.m_UserName = cQuickBooksUser
         SageCustomer.m_PassWord = cQuickBooksPassword
      End If
   End If
   
      
   On Error Resume Next
   If SageCustomer.m_Active = False Then
      If (SageCustomer.OpenDataFile = False) Or (Err.Number <> 0) Then
         pBar.HideProgress
         MsgBox "Error, unable to connect to Accounting system", vbCritical, AppName
         If Err.Number <> 0 Then
            MsgBox Err.Description, vbCritical, AppName
         End If
         Exit Function
      End If
      On Error GoTo 0
   End If
   
   pBar.TextMsg = "Processing customer list"
   
   rst.MoveFirst
   
   Do While rst.EOF = False
   
      pBar.IncOne
      
      ' look for company name
         If SageCustomer.FindCustomer(rst!CompName.Value) = False Then
         
            With rstCust
               .AddNew
               !CompName = rst!CompName
               !Add1 = rst!BillAdd1
               !Add2 = rst!BillADD2
               !City = rst!BillCITY
               !Prov = rst!BillPROV
               !PhMain = Nz(rst!PhDirect, rst!PhMain)
               !PC = rst!BillPC
               !Country = rst!BillCountry
               .Update
            End With
            
'            With rst
'
'               SageCustomer.AddCustomer !CompName, Nz(!Add1, ""), Nz(!Add2, ""), Nz(!City, ""), _
'                                        Nz(!Prov, ""), Nz(!PhMain, ""), "", Nz(!PC, "")
'            End With
         End If
      
      rst.MoveNext
      
   Loop
   
   pBar.HideProgress
   
   ' return count of records not found
   
   CheckToAddCustomers = rstCust.RecordCount
   
   rstCust.Close
      
   ' SageCustomer.CloseDatabase

End Function


Function CheckToAddSalesReps(rst As DAO.Recordset) As Long

   ' check passed list of records if they exist in sage 50, if not, then add temp working table

   Dim strSQL           As String
   Dim rstSales         As DAO.Recordset
   
   CurrentDb.Execute "delete * from tblSageSalesRepTemp"         ' empty the temp working table
   
   Set rstSales = CurrentDb.OpenRecordset("tblSageSalesRepTemp")
   
   

   CheckToAddSalesReps = -1          ' consider a fail to allow exit this funtion = cancel

   Dim pBar  As New clsPbar
   
   Dim rstEmployee      As DAO.Recordset
   
   
   pBar.ShowProgress
   rst.MoveLast               ' obtain record could
   pBar.Pmax = rst.RecordCount
   pBar.PCaption = "Process Sales Rep list"
   pBar.TextMsg = "Establishing interface to Accounting - wait"
   
   'Dim SageEmployee As New Sage50com.SageEmployee
   
   If SageEmployee Is Nothing Then
      ' create the object, (simply accoutning, or QuickBooks
      If cSage50Enabled = True Then
         Set SageEmployee = CreateObject("Sage50com.SageEmployee")
      End If
      
      If cQuickbooksEnabled = True Then
         Set SageEmployee = CreateObject("QuickBooksCom.SageEmployee")
      End If
      
   End If
      
   If cSage50Enabled = True Then
      If SageEmployee.m_Active = False Then
         SageEmployee.m_DataFile = cSage50DataFile
         SageEmployee.m_UserName = cSage50User
         SageEmployee.m_PassWord = cSage50Password
      End If
   End If
   
   If cQuickbooksEnabled = True Then
      If SageEmployee.m_Active = False Then
         SageEmployee.m_DataFile = cQuickbooksDataFile
         SageEmployee.m_UserName = cQuickBooksUser
         SageEmployee.m_PassWord = cQuickBooksPassword
      End If
   End If
   
   On Error Resume Next
   If SageEmployee.m_Active = False Then
      If (SageEmployee.OpenDataFile = False) Or (Err.Number <> 0) Then
         pBar.HideProgress
         MsgBox "Error, unable to connect to Accounting system", vbCritical, AppName
         If Err.Number <> 0 Then
            MsgBox Err.Description, vbCritical, AppName
         End If
         Exit Function
      End If
      On Error GoTo 0
   End If
   
   
   pBar.TextMsg = "Process Sales Rep list"
   
   rst.MoveFirst
   Do While rst.EOF = False
   
      pBar.IncOne
      
      ' look for sales rep
      Dim strSalesRep       As String
      
      strSalesRep = rst!SalesRep.Value
      If cQuickbooksEnabled = True Then
         strSalesRep = rst!SalesLN & ", " & rst!SalesFN & (" " + Left(rst!SalesMN, 1))
      End If
      
      If SageEmployee.FindEmployee(strSalesRep) = False Then
         strSQL = "select * from dbo_CompanyEmployee where ID = " & rst!SalesRepID
         Set rstEmployee = CurrentDb.OpenRecordset(strSQL, dbOpenDynaset, dbSeeChanges)
         If rstEmployee.RecordCount <> 0 Then
            With rstSales
               .AddNew
               !SalesRep = rstEmployee!LN & ", " & rstEmployee!FN
               !FN = rstEmployee!FN
               !LN = rstEmployee!LN
               !MN = rstEmployee!MN
               !Add1 = rstEmployee!ResAdd1
               !Add2 = rstEmployee!ResAdd2
               !City = rstEmployee!ResCity
               !Prov = rstEmployee!ResProv
               !PhoneDirect = rstEmployee!PhDirect
               !PhoneCell = rstEmployee!PhCell
               !PC = rstEmployee!ResPC
               .Update
            End With
         End If
      End If
      rst.MoveNext
      
   Loop
   
   CheckToAddSalesReps = rstSales.RecordCount
   
   rstSales.Close
   'SageEmployee.CloseDatabase
   
   
   pBar.HideProgress


'            strSQL = "select * from dbo_CompanyEmployee where ID = " & rst!SalesRepID
'            Set rstEmployee = CurrentDb.OpenRecordset(strSQL, dbOpenDynaset, dbSeeChanges)
'            If rstEmployee.RecordCount <> 0 Then
'               With rstEmployee
'                   SageEmployee.AddEmployee !LN & ", " & !FN, _
'                                           Nz(!ResAdd1, ""), Nz(!ResAdd2, ""), Nz(!ResCity, ""), Nz(!ResProv, ""), _
'                                           Nz(!PhDirect, ""), Nz(!PhCell, ""), Nz(!ResPC, "")
'               End With
'            End If
'


      
End Function


Public Function FindInvoice(strInvoice As String) As Boolean

'---------------------------------------------------------------------------------------
' Procedure : CheckToAdd
' Author    : AlbertKallal
' Date      : 01/05/2016
' Purpose   : Find a invoice
'             Customers.
'---------------------------------------------------------------------------------------
'
   
   Dim strSQL           As String
   
   Dim pBar  As New clsPbar
   pBar.ShowProgress
   
   pBar.PCaption = "Find a invoice"
   pBar.TextMsg = "Establishing interface to Accounting - wait"
      
   'Dim SageInvoice As New Sage50com.Customer
   If SageInvoice Is Nothing Then
      ' create the object, (simply accoutning, or QuickBooks
      If cSage50Enabled = True Then
         Set SageInvoice = CreateObject("Sage50com.Invoice")
      End If
      
      If cQuickbooksEnabled = True Then
         Set SageInvoice = CreateObject("QuickBooksCom.Invoice")
      End If
      
   End If
      
   If cSage50Enabled = True Then
      If SageInvoice.m_Active = False Then
         SageInvoice.m_DataFile = cSage50DataFile
         SageInvoice.m_UserName = cSage50User
         SageInvoice.m_PassWord = cSage50Password
      End If
   End If
   
   If cQuickbooksEnabled = True Then
      If SageInvoice.m_Active = False Then
         SageInvoice.m_DataFile = cQuickbooksDataFile
         SageInvoice.m_UserName = cQuickBooksUser
         SageInvoice.m_PassWord = cQuickBooksPassword
      End If
   End If
   
      
   On Error Resume Next
   If SageInvoice.m_Active = False Then
      If (SageInvoice.OpenDataFile = False) Or (Err.Number <> 0) Then
         pBar.HideProgress
         MsgBox "Error, unable to connect to Accounting system", vbCritical, AppName
         If Err.Number <> 0 Then
            MsgBox Err.Description, vbCritical, AppName
         End If
         Exit Function
      End If
      On Error GoTo 0
   End If
   
   pBar.TextMsg = "Open = good - find invoice " & strInvoice
      
      ' look for company name
      
      Debug.Print SageInvoice.FindInvoice(strInvoice)
      
'         If SageInvoice.FindInvoice(strInvoice) = False Then
'
'            MsgBox "Invoice not found"
'
'        Else
'
'           MsgBox "invoice found"
'
'        End If
   
   pBar.HideProgress
   
   ' return count of records not found
   
   SageInvoice.CloseDatabase



End Function





Sub AddInvoices(rst As DAO.Recordset)

'---------------------------------------------------------------------------------------
' Procedure : AddInvoices
' Author    : AlbertKallal
' Date      : 7/7/2015
' Purpose   : Add invoices from MIS
' Parms:
'          rst = recordset of invoices (from form frmSage50Post)
'          query for rst is : (sql view) qryProjectSage
'---------------------------------------------------------------------------------------
'

   
   On Error GoTo AddInvoices_Error

   Dim MyDebug          As Boolean
   MyDebug = False

   rst.MoveLast
   
   Dim pBar             As New clsPbar
   Dim bolSuccess       As Boolean
   
   Dim rstComponentHead As DAO.Recordset
   Dim strSQL           As String
   
   Dim rstProjectHead   As DAO.Recordset
   
   
'   Dim SageInvoice As New Sage50com.Invoice              ' sage invoice object
   Dim InvoiceDetails   As Object                        ' array of invoice details
   Dim ShipToAddress    As Object                        ' array of address lines
   
   'Dim OneInvoiceLine   As Sage50com.InvoiceDetail   ' one invoice detail line (added to above InvoiceDetails)
   Dim OneInvoiceLine   As Object                     ' late bind one invoice detail line (added to above InvoiceDetails)
   Dim strInvoiceDate   As String
   
   ' for the additional terms and due date as required by DPI
   Dim strTerms As String
   Dim strInvoiceDueDate As String
   Dim myAccountTerms As String
   
   
   Const TestMode As Boolean = False                    ' set = true for test mode - if true, then data is never posted.
   'Const TestMode As Boolean = True                      ' set = true for test mode - if true, then data is never posted.
   
   pBar.ShowProgress
   pBar.Pmax = rst.RecordCount
   pBar.PCaption = "Posting Invoices"
   pBar.TextMsg = "Posting Invoices"
   rst.MoveFirst

   If SageInvoice Is Nothing Then
      ' create the object, (simply accoutning, or QuickBooks
      If cSage50Enabled = True Then
         Set SageInvoice = CreateObject("Sage50com.Invoice")
      End If
      
      If cQuickbooksEnabled = True Then
         Set SageInvoice = CreateObject("QuickBooksCom.Invoice")
      End If
      
   End If
      
      
   If cSage50Enabled = True Then
      If SageInvoice.m_Active = False Then
         SageInvoice.m_DataFile = cSage50DataFile
         SageInvoice.m_UserName = cSage50User
         SageInvoice.m_PassWord = cSage50Password
      End If
   End If
   
   If cQuickbooksEnabled = True Then
      If SageInvoice.m_Active = False Then
         SageInvoice.m_DataFile = cQuickbooksDataFile
         SageInvoice.m_UserName = cQuickBooksUser
         SageInvoice.m_PassWord = cQuickBooksPassword
      End If
   End If
   
   ' connect to accounting system
   'On Error Resume Next
   
   If SageInvoice.m_Active = False Then
      If (SageInvoice.OpenDataFile = False) Or (Err.Number <> 0) Then
         pBar.HideProgress
         MsgBox "Error, unable to connect to Accounting system", vbCritical, AppName
         If Err.Number <> 0 Then
            MsgBox Err.Description, vbCritical, AppName
         End If
         Exit Sub
      End If
      On Error GoTo 0
   End If
   
   If MyDebug = True Then MsgBox "acc - create invoice object = ok"
   
   Dim rstGLAccounts    As DAO.Recordset
   Set rstGLAccounts = CurrentDb.OpenRecordset("dbo_GLAccounts", dbOpenDynaset, dbSeeChanges)

' invoice detail
   If MyDebug Then MsgBox "acc - start detail"
   rst.MoveFirst
   Do While rst.EOF = False
   
      pBar.IncOne
      
      If (IsNull(rst!PostToResult) = True) Or (rst!PostToResult = "Ready for Repost") Then
 
      
         'Set OneInvoiceLine = New Sage50com.InvoiceDetail
      
         'Set OneInvoiceLine = New Sage50com.InvoiceDetail
         If cSage50Enabled = True Then
            Set OneInvoiceLine = CreateObject("Sage50com.InvoiceDetail")
         End If

         If cQuickbooksEnabled = True Then
            Set OneInvoiceLine = CreateObject("QuickBooksCom.InvoiceDetail")
         End If
         
         If MyDebug Then MsgBox "acc - detail line create ok"
         
         Set InvoiceDetails = OneInvoiceLine.DetailArray          ' create a "array" to hold each "OneInvoiceLine"
               
         If MyDebug Then MsgBox "detail array create ok"
      
         ' add this as a invoice
         strSQL = "select * from viewProjectComponentHeaderPress where ProjectHeaderID = " & rst!ID
         Set rstComponentHead = CurrentDb.OpenRecordset(strSQL, dbOpenDynaset, dbSeeChanges)

         ' build up list of invoice details
         If MyDebug Then MsgBox "acc - start detail loop - Compounentheading - first id = " & rstComponentHead!ID
         
         Do While rstComponentHead.EOF = False
         
            'Set OneInvoiceLine = New Sage50com.InvoiceDetail
            If cSage50Enabled = True Then
               Set OneInvoiceLine = CreateObject("Sage50com.InvoiceDetail")
            End If
   
            If cQuickbooksEnabled = True Then
               Set OneInvoiceLine = CreateObject("QuickBookscom.InvoiceDetail")
            End If
            
            If MyDebug Then MsgBox "start detail build - detail object just created"
            
            ' check for split taxes
            Dim fPtr             As String         ' ptr 1 to 5
            Dim bolSplit         As Boolean
            Dim myqtyfield       As String
            Dim myAmtField       As String
            Dim myqtytaxfield    As String
            Dim myqtynontaxfield As String
            'Dim mypriceeach      As Currency
            Dim myTaxAmount      As Currency
            Dim myNonTaxAmount   As Currency
            
            Dim mypriceeach      As Double
'            Dim myTaxAmount      As Double
'            Dim myNonTaxAmount   As Double
            
            
            
            fPtr = Nz(rstComponentHead!extQuoteSelect, 1)
            
            myqtyfield = "ExtQuoteQty" & fPtr
            myAmtField = "ExtQuoteSell" & fPtr
            myqtytaxfield = "ExtQuoteQtyTax" & fPtr
            myqtynontaxfield = "ExtQuoteQtyNonTax" & fPtr
            If (Nz(rstComponentHead(myqtynontaxfield), 0) > 0) And (cControlCountry = "USA") Then
               If MyDebug Then MsgBox "Extended non tax qty found for " & myqtynontaxfield & " qty = " & rstComponentHead(myqtynontaxfield)
               bolSplit = True
            Else
               bolSplit = False
            End If
            If bolSplit Then
               
               mypriceeach = Nz(rstComponentHead(myAmtField)) / Nz(rstComponentHead(myqtyfield))
               myTaxAmount = Nz(rstComponentHead(myqtytaxfield), 0) * Nz(mypriceeach, 0)
               myNonTaxAmount = Nz(rstComponentHead(myAmtField)) - myTaxAmount
               
               ' add taxable part
               With rstComponentHead
                  OneInvoiceLine.m_ItemNumber = "D" & rst!DocketNum
                  OneInvoiceLine.m_Qty = Nz(rstComponentHead(myqtytaxfield), "0")
                  OneInvoiceLine.m_Units = "Each"
                  OneInvoiceLine.m_Description = !ComponentName.Value
                  If MyDebug Then MsgBox "amount = " & myTaxAmount & " to cur = " & CCur(myTaxAmount)
                  OneInvoiceLine.m_Price = Round(myTaxAmount, 2)
                  OneInvoiceLine.m_TaxCode = "G"
                  ' determine general ledger Account
                  OneInvoiceLine.m_LineAccount = GetGLAccount(rstComponentHead, rstGLAccounts)
                  
                  If cControlCountry = "USA" Then
                     OneInvoiceLine.m_TaxCode = "TAX"
                  Else
                     OneInvoiceLine.m_TaxCode = "G"
                  End If
                  
                  
                  If cControlCountry = "USA" And rstComponentHead!MailComponentYN = True Then
                    OneInvoiceLine.m_TaxCode = "E"
                  End If
                  
                  'Debug.Print cControlCountry, rstComponentHead!MailComponentYN, OneInvoiceLine.m_taxcode
                  
                  
                  
                  If Nz(rstComponentHead(myqtytaxfield), "0") > 0 Then
                     InvoiceDetails.Add OneInvoiceLine
                  End If
                  
                  ' now add non tax line
                  
                  If cSage50Enabled = True Then
                     Set OneInvoiceLine = CreateObject("Sage50com.InvoiceDetail")
                  End If
         
                  If cQuickbooksEnabled = True Then
                     Set OneInvoiceLine = CreateObject("QuickBookscom.InvoiceDetail")
                  End If
                  
                  OneInvoiceLine.m_ItemNumber = "D" & rst!DocketNum
                  OneInvoiceLine.m_Qty = Nz(rstComponentHead(myqtynontaxfield), "0")
                  OneInvoiceLine.m_Units = "Each"
                  OneInvoiceLine.m_Description = !ComponentName.Value
                  OneInvoiceLine.m_Price = Round(myNonTaxAmount, 2)
                    If cControlCountry = "USA" Then
                     OneInvoiceLine.m_TaxCode = "Non"
                  Else
                     OneInvoiceLine.m_TaxCode = "E"
                  End If
                  ' determine general ledger Account
                  OneInvoiceLine.m_LineAccount = GetGLAccount(rstComponentHead, rstGLAccounts)
                  
                  If cControlCountry = "USA" And rstComponentHead!MailComponentYN = True Then
                    OneInvoiceLine.m_TaxCode = "Non"
                  End If
                  
                  InvoiceDetails.Add OneInvoiceLine
                  
                  
               End With
            
            Else
            
            
               With rstComponentHead
                  OneInvoiceLine.m_ItemNumber = "D" & rst!DocketNum
                  OneInvoiceLine.m_Qty = Nz(!SellQtyFinal, "0")
                  OneInvoiceLine.m_Units = "Each"
                  OneInvoiceLine.m_Description = !ComponentName.Value
                  OneInvoiceLine.m_Price = Round(Nz(!SellForFinal, 0), 2)
                  If MyDebug Then MsgBox "price = " & OneInvoiceLine.m_Price
                  
                  If rst!GSTExempt = True Then
                     If cControlCountry = "USA" Then
                        OneInvoiceLine.m_TaxCode = "NON"
                     Else
                           OneInvoiceLine.m_TaxCode = "e"
                     End If
                     Else
                     If cControlCountry = "USA" Then
                        OneInvoiceLine.m_TaxCode = "TAX"
                     Else
                           OneInvoiceLine.m_TaxCode = "G"
                     End If
                     End If
                  
                  If cControlCountry = "USA" And rstComponentHead!MailComponentYN = True Then
                    OneInvoiceLine.m_TaxCode = "Non"
                  End If
                  
                  ' determine general ledger Account
                  OneInvoiceLine.m_LineAccount = GetGLAccount(rstComponentHead, rstGLAccounts)
                  
                  InvoiceDetails.Add OneInvoiceLine
                  
               End With
            End If
            
            
            If MyDebug Then MsgBox "add one line err = " & Err.Number & vbCrLf & Err.Description
            
            With OneInvoiceLine
               Debug.Print .m_ItemNumber, .m_Qty, .m_Units, .m_Description, .m_Price, .m_LineAccount
               If TestMode = True Then DoEvents
            End With
            
            
            rstComponentHead.MoveNext
         Loop
         rstComponentHead.Close
         
         If MyDebug Then MsgBox "start shipto address build"
         ' setup shipto address
         Set ShipToAddress = SageInvoice.Address          ' create a array (strings) for address
         
         Dim sCity      As String
         Dim sState     As String
         Dim sZip       As String
         Dim sCountry   As String
         
         If (rst!ShipToSameAsBillTo = False) Or (cQuickbooksEnabled = True) Then
    
            If IsNull(rst!CompName) = False Then ShipToAddress.Add rst!CompName.Value
            If IsNull(rst!ShipAttn) = False Then ShipToAddress.Add rst!ShipAttn.Value
            If IsNull(rst!ShipAdd1) = False Then ShipToAddress.Add rst!ShipAdd1.Value
            If IsNull(rst!ShipADD2) = False Then ShipToAddress.Add rst!ShipADD2.Value
               
            If cQuickbooksEnabled Then
               sCity = Nz(rst!ShipCITY, ""): sState = Nz(rst!ShipPROV, ""): sZip = Nz(rst!ShipPC, ""): sCountry = Nz(rst!ShipCountry, "")
            Else
                ShipToAddress.Add (rst!ShipCITY & " " & rst!ShipPROV & " " & rst!ShipPC & " " & rst!ShipCountry)
            End If
            
         
         End If
                  
          ' MsgBox "invoice detail count for " & rst!InvoiceNum & " = " & InvoiceDetails.count
          
         SageInvoice.m_Silent = True
         If TestMode = False Then
            strInvoiceDate = Format(rst!InvoiceDate, "MMM, DD, YYYY")
            On Error Resume Next
            
            Dim strSalesRep         As String
            If cSage50Enabled = True Then
               strSalesRep = rst!SalesRep.Value
               strTerms = ""
               strInvoiceDueDate = ""
            End If
      
            If cQuickbooksEnabled = True Then
               myAccountTerms = ""
               strTerms = ""
               strSalesRep = Left(rst!SalesFN, 1) & Left(rst!SalesMN, 1) & Left(rst!SalesLN, 1)
               If Nz(rst!InvoiceTermsID, 0) <> 0 Then
                  myAccountTerms = DLookup("[TermsDesc]", "dbo_InvoiceTerms", "[id] = " & rst!InvoiceTermsID)
                  strInvoiceDueDate = Format(rst!InvoiceDate, "MMM, DD, YYYY")
                  If rst!InvoiceTermsID = 8 Then ' Account
                    myAccountTerms = "Net " & rst!InvoiceTermsDays
                    strInvoiceDueDate = Format(rst!InvoiceDate + rst!InvoiceTermsDays, "MMM, DD, YYYY")
                  End If
               End If
               strTerms = myAccountTerms
            
            End If
       
       
            bolSuccess = SageInvoice.AddInvoice(rst!CompName.Value, _
                                                "Pay Later", strSalesRep, rst!InvoiceNum.Value, _
                                                strInvoiceDate, "0", _
                                                 Nz(rst!PONumber, ""), _
                                                rst!ShipToSameAsBillTo.Value, ShipToAddress, _
                                                InvoiceDetails, strTerms, strInvoiceDueDate, Nz(rst!DocketNum.Value, ""), _
                                                sCity, sState, sZip, sCountry)
            'If Err.Number <> 0 Then
            '   MsgBox Err.Description, vbCritical, "Accounting Interface"
            'End If
         Else
            bolSuccess = True
         End If
         
         'MsgBox "return result = " & bolSuccess & vbCrLf & _
         '       "Last response result = " & SageInvoice.m_LastResponse
         If Err.Number <> 0 Then
            MsgBox Err.Description, vbCritical, "CONTROL"
            Err.Clear
            bolSuccess = False
         Else
                     
            Select Case SageInvoice.m_LastResponse
            
               Case 1, 6, 7         '(ok, Yes, YesAll)
               
                  SageInvoice.m_LastResponse = 0
                  
            End Select
         End If
            
         ' set results project heading (we save invoice posting results into project header

         strSQL = "select * from dbo_ProjectHeader where ID = " & rst!ID
         Set rstProjectHead = CurrentDb.OpenRecordset(strSQL, dbOpenDynaset, dbSeeChanges)
         rstProjectHead.Edit
         rstProjectHead!PostToAccDate = Now()
         If (bolSuccess = True) And (SageInvoice.m_LastResponse = 0) Then
            rstProjectHead!PostToResult = "Ok"
         Else
            rstProjectHead!PostToResult = "Fail"
         End If
         rstProjectHead.Update
         rstProjectHead.Close
      
      End If
past1:
   
      rst.MoveNext
      
   Loop
   
  pBar.HideProgress


   On Error GoTo 0
   
   SageInvoice.CloseDatabase
   
   Exit Sub

AddInvoices_Error:

   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AddInvoices of Module Sage50"

End Sub


Function GetGLAccount(rst As DAO.Recordset, rstGLAccounts As DAO.Recordset) As String

'---------------------------------------------------------------------------------------
' Procedure : GetGLAccount
' Author    : AlbertKallal
' Date      : 7/16/2015
' Purpose   : Return a GL account based on a set of rulsts
'---------------------------------------------------------------------------------------
'    Parms are:
'           rst - one row of projectheader table (dbo_ProjectComponentHeader)
   
   ' check for mailing
       
   Dim bolMatch         As Boolean      ' did we find a gl account?
       
   rstGLAccounts.MoveFirst          ' this in effect defaults to first GL number (Sales - 4020)
                                    ' if no match based on following logic finds some account
   bolMatch = False
   With rst
   
      If !MailComponentYN = True Then
      
         ' check description for word postage
         If InStr(!ComponentName, "postage") <> 0 Then
            
            rstGLAccounts.FindFirst "AccountType = 'Postage'"
            
         Else
         
            ' not postage, so assume mailing
            
            rstGLAccounts.FindFirst "AccountType = 'Mailing'"
            
         End If
         
      Else
         ' not mailing - check for large press format
         If (!Dep3Count > 0) And (cControlCompanyCode = "BG") Then
            rstGLAccounts.FindFirst "AccountType = 'Wide Format'"
         End If
         
         If (!Dep2Count > 0) And (cControlCompanyCode = "BG") Then
            ' since this follows a check for deparment 3, then BOTH dept 3 and 2 could exist
            ' the result logic thus chooses department 2 if both 2 and 3 press exist for the given component
            '
            rstGLAccounts.FindFirst "AccountType = 'Press'"
         End If
      
      End If
   End With
   
   With rstGLAccounts
      bolMatch = Not (.NoMatch)
   
      If bolMatch = False Then
         ' ok, lets keep looking - search by keyword
         ' this code matches by any keyword of GLaccounts searching in ComponentName
         .MoveFirst
         Do While .EOF = False
            If IsNull(!Department_ID) = True Then      ' we skip GL accounts set by deparment
               If InStr(rst!ComponentName, !AccountType) > 0 Then
                  ' we have a match
                  bolMatch = True
                  Exit Do
               End If
           End If
           .MoveNext
         Loop
      End If
      
      If bolMatch = False Then
        
        ' still no match by keyword
        ' try key word match by department
        ' ONLY try if we do have a deparmtent#
         If IsNull(rst!Department) = False Then
            .MoveFirst
            .FindFirst "Department = " & rst!Department        ' search rstGLAccount for component department
            If .NoMatch = False Then
               bolMatch = True
            End If
         End If
      End If
   
   End With
   
   ' if at this point no match, then we take first gl account
   If bolMatch = False Then
      rstGLAccounts.MoveFirst
   End If

   Debug.Print "account found = " & rstGLAccounts!GLAccount
   
   GetGLAccount = rstGLAccounts!GLAccount
   
End Function



Public Function quPhone(vPh As Variant) As String

   If IsNull(vPh) = True Then
      quPhone = ""
   Else
      quPhone = Format(vPh, "(000) 000-0000")
   End If

End Function