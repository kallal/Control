Option Compare Database
Option Explicit

Public Function GetDefaultPrinter() As String

   ' get current printer
   
   GetDefaultPrinter = Printer.DeviceName
   
   
End Function


Public Function GetPrinters() As String

   ' get list of printers seperated by ";"
   ' sutiable for combo box source
   
   Dim s    As String
   Dim p    As Printer
   
   For Each p In Printers
      If s <> "" Then s = s & ";"
      s = s & p.DeviceName
   Next p
   
   GetPrinters = s
   
End Function

Private Sub Test1()

   Debug.Print Printers(0).DefaultSize
   Debug.Print Printers(0).Orientation
   
   
   Dim p    As Printer
   
   For Each p In Printers
   
      Debug.Print p.DeviceName
      
   Next p
   
   Debug.Print "default = " & Printer.DeviceName
   Debug.Print "Driver  = " & Printer.DriverName
   
   
     

End Sub


Public Function RPSET(str As String)

   Dim r       As Report
   Dim strSQL  As String
   Dim rst     As DAO.Recordset
   
   ' if the report is launched as report and NOT as subform/navform
   ' then it is added to the reports() collection. We ONLY apply pre-set printer
   ' settings WHEN the report is launched as preview or to print
   
   
   On Error Resume Next
   Set r = Reports(str)          ' if not in reports collection then ignore
   
   If Err.Number <> 0 Then
      Exit Function
   End If
   
   ' if we get here, then report is for print/preview
   
   ' Check if report name has a printer type (tblReportPrinter)
   
   strSQL = "select * from tblReportPrinter where [Report] = '" & r.name & "'"
   Set rst = CurrentDb.OpenRecordset(strSQL, dbOpenDynaset, dbSeeChanges)
   If rst.RecordCount = 0 Then
      ' there is no type setting for this report - exit
      GoTo exit1
   End If
   
   ' we have a printer type
   
   ' start report layout and changes to report
   ' ANY setting that is blank we ignore and leave "as is"
   With rst
      If IsNull(rst!Orientation) = False Then r.Printer.Orientation = rst!Orientation
      
      If IsNull(rst!PaperBin) = False Then r.Printer.Orientation = rst!PaperBin
      
      If IsNull(rst!LeftMargin) = False Then r.Printer.LeftMargin = rst!LeftMargin
      
      If IsNull(rst!RightMargin) = False Then r.Printer.RightMargin = rst!RightMargin
      
      If IsNull(rst!TopMargin) = False Then r.Printer.TopMargin = rst!TopMargin
      
      If IsNull(rst!BottomMargin) = False Then r.Printer.BottomMargin = rst!BottomMargin
      
      If IsNull(rst!ItemLayout) = False Then r.Printer.ItemLayout = rst!ItemLayout
      
      If IsNull(rst!ItemsAccross) = False Then r.Printer.ItemsAcross = rst!ItemsAcross
      
      If IsNull(rst!ItemSizeHeight) = False Then r.Printer.ItemSizeHeight = rst!ItemSizeHeight
      
      If IsNull(rst!ItemSizeWidth) = False Then r.Printer.ItemSizeWidth = rst!ItemSizeWidth
      
      If IsNull(rst!ColumnSpacing) = False Then r.Printer.ColumnSpacing = rst!ColumnSpacing
      
      If IsNull(rst!Copies) = False Then r.Printer.Copies = rst!Copies
      
      If IsNull(rst!DefaultSize) = False Then r.Printer.DefaultSize = rst!DefaultSize
      
      If IsNull(rst!Duplex) = False Then r.Printer.Duplex = rst!Duplex
      
      If IsNull(rst!PaperSize) = False Then r.Printer.PaperSize = rst!PaperSize
      
   End With
   
   ' at this point, we check user settings for printer
   
   ' if no settings, then check current report printer type settings for
   ' printer.
   
   
exit1:
   ' single exit point (for close and clean up code
   rst.Close
   
   
   
End Function



Public Function RSETClose(str As String)

   ' even close code for all reports - for printer control
   

   Dim r       As Report
   Dim strSQL  As String
   Dim rst     As DAO.Recordset
   
   ' if the report is launched as report and NOT as subform/navform
   ' then it is added to the reports() collection. We ONLY apply pre-set printer
   ' settings WHEN the report is launched as preview or to print
   
   
   On Error Resume Next
   Set r = Reports(str)          ' if not in reports collection then ignore
   
   If Err.Number <> 0 Then
      Exit Function
   End If
   
   ' if we get here, then report is for print/preview
      
   

End Function