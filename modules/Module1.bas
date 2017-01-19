Option Compare Database
Option Explicit


Public Function quDate(dt As Date) As String

   ' return formatted date
   
   quDate = "#" & Format(dt, "mm\/dd\/yyyy HH:NN:SS") & "#"
  
   
End Function


Function qu(vText As Variant) As String
   ' takes a string and surrounds it with double quotes
   ' All " (double quotes) are converted to ' (single quotes) before
   ' this is done
   
   If IsNull(vText) = False Then
      If InStr(vText, Chr(34)) > 0 Then
         vText = Replace(CStr(vText), Chr(34), "'")
      End If
   End If

   qu = Chr$(34) & vText & Chr$(34)
   
End Function



Sub setReports()

   ' simply sets all reports as ribbon
   
      Dim r            As Variant
      Dim t            As Report
      For Each r In CurrentProject.AllReports
         
         Debug.Print r.name
         
         If (r.name <> "rptBoxLabel_1Up") And (r.name <> "rptReceivingLabels3") Then
         DoCmd.OpenReport r.name, acViewDesign
         
         Reports(r.name).RibbonName = "MyReport"
         Reports(r.name).Modal = True
         DoCmd.Close acReport, r.name, acSaveYes
         DoEvents
         End If
      Next

     DoEvents
     
    MsgBox "DONE update to all reports = Model"
    

End Sub

Sub zoo1()
Dim rst As DAO.Recordset
Debug.Print rst Is Nothing




End Sub