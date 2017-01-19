Option Compare Database
Option Explicit

Public bolenabled             As Boolean

Public colRibbons             As New Collection
Private f                     As Form
Private gblstrRibbonName      As String

Private bolJustLoad           As Boolean


Public Sub LoadRibbon(strRibbonName As String)

   Dim i       As Integer
   Dim tRib    As clsRibbon

   gblstrRibbonName = strRibbonName
   ' Start: look for our Ribbon. Is it already loaded, then assign this to the forms public
   ' ribbon class MyRibbon.

   For i = 1 To colRibbons.Count
      If colRibbons(i).name = strRibbonName Then
         Set tRib = colRibbons(i)

         ' ribbon **IS** already loaded! Callbacks for this will NOT run unless
         ' we force ribbon to re-load. So, we force an invalidate to refresh. Remember
         ' we loading a form, but ribbons ONLY load once! when forms load, the ribbon
         ' does NOT invalidate (calbacks do not fire) except for the first load time. So,
         ' we must force an invaidate to fire the call backs to display our ribbon values
         ' held in memory...
         ' here else our ribbon values in code will

         tRib.m_ribbon.Invalidate
         Exit For
      End If
   Next i

   ' ribbon is not loaded - this code loads ribbon without any form specified

   bolJustLoad = True      ' this ignores forms specificaiton in callback

   'On Error Resume Next

   LoadCustomUI strRibbonName, DLookup("RibbonXML", "USYSRibbonsR", "RibbonName = '" & strRibbonName & "'")


   ' above line loads ribbon.
   ' the above line causes the callbacks to run (invalidates for us). The above line of code
   ' also fires the "on-load" setting of the ribbon which is how it gets added to my colRibbons collection
   ' this occurs in the code below (MyRibbonLoad) So, that one line fires the on-load code for the ribbon.

End Sub




'---------------------------------------------------------------------------------------
' Procedure : SetMyRib
' DateTime  : 4/14/2009 14:25
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : You call this code from a forms "on-load" to load the ribbon
' usage     : Call SetMyRib(Me) <--- pass the form object "me"
'
'             if ribbon name is NOT the same as the form, then use:
'
'             Call SetMyRib(me,"my Ribbon name")
'---------------------------------------------------------------------------------------
'
Public Sub SetMyRib(frm As Form, Optional strRibbonName As String = "")

   Dim i       As Integer
   Dim tRib    As clsRibbon
    
   Set f = frm          ' needed global from ref for MyRibbonLoad Call back
   
   If strRibbonName = "" Then
     strRibbonName = frm.name
     ' the above simply assumes a "common" naming convention of
     ' using the same name for the ribbon as the form name
   End If
   
   gblstrRibbonName = strRibbonName
   
   ' Start: look for our Ribbon. Is it already loaded, then assign this to the forms public
   ' ribbon class MyRibbon.
   
   For i = 1 To colRibbons.Count
      If colRibbons(i).name = strRibbonName Then
         Set tRib = colRibbons(i)

         ' ribbon **IS** already loaded! Callbacks for this will NOT run unless
         ' we force ribbon to re-load. So, we force an invalidate to refresh. Remember
         ' we loading a form, but ribbons ONLY load once! when forms load, the ribbon
         ' does NOT invalidate (calbacks do not fire) except for the first load time. So,
         ' we must force an invaidate to fire the call backs to display our ribbon values
         ' held in memory...
         ' here else our ribbon values in code will
         
         tRib.m_ribbon.Invalidate
         Exit For
      End If
   Next i
   
   frm.RibbonName = strRibbonName
   
   ' above line of code actually sets the forms ribbon property. If the ribbon NEVER been loaded
   ' the above line causes the callbacks to run (invalidates for us). The above line of code
   ' also fires the "on-load" setting of the ribbon which is how it gets added to my colRibbons collection
   ' this occurs in the code below (MyRibbonLoad) So, that one line fires the on-load code for the ribbon.

End Sub



'---------------------------------------------------------------------------------------
' Procedure : MyRibbonLoad
' DateTime  : 4/14/2009 14:30
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : This is the name of the onLoad specifed in the Ribbon
'
' in your ribbon(s) you have to place:
' <customUI xmlns="http://schemas.microsoft.com/office/2006/01/customui" onLoad="MyRibbonLoad">
'---------------------------------------------------------------------------------------
'
Public Sub MyRibbonLoad(ByRef nribbonUI As Office.IRibbonUI)

   ' this onload callback from ribbon. This occurs WHEN we
   ' assign form!ForName.RibbonName = "some ribbon name"
   
   Dim colNewRib        As New clsRibbon
   Dim frm              As Form
   
   Dim strRibbonName    As String
   On Error GoTo MyRibbonLoad_Error

   Set frm = Screen.ActiveForm
   strRibbonName = frm.RibbonName

   colNewRib.name = frm.RibbonName
   Set colNewRib.m_ribbon = nribbonUI
   colRibbons.Add colNewRib, frm.RibbonName

'Debug.Print "ribbon to add = " & strRibbonName
'Debug.Print "ribbon to add F = " & frm.RibbonName

   On Error GoTo 0
   Exit Sub

MyRibbonLoad_Error:

   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MyRibbonLoad of Module basRibbon"

End Sub


'---------------------------------------------------------------------------------------
' Procedure : MyRibbonLoadA
' DateTime  : 7/26/2011 14:30
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : This is the name of the onLoad specifed in the Ribbon
'
' in your ribbon(s) you have to place:
' <customUI xmlns="http://schemas.microsoft.com/office/2006/01/customui" onLoad="MyRibbonLoad">
'---------------------------------------------------------------------------------------
'
Public Sub MyRibbonLoadA(ByRef nribbonUI As Office.IRibbonUI)

   ' this onload callback from ribbon. This occurs WHEN we
   ' assign form!ForName.RibbonName = "some ribbon name"
   ' This does NOT use screen.ActiveForm and is used
   ' when we want code customzing to occur in a forms on-load event
   
   Dim colNewRib        As New clsRibbon

   On Error GoTo MyRibbonLoad_Error


   colNewRib.name = gblstrRibbonName
   Set colNewRib.m_ribbon = nribbonUI
   colRibbons.Add colNewRib, gblstrRibbonName
nribbonUI.Invalidate
   On Error GoTo 0
   Exit Sub

MyRibbonLoad_Error:

   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MyRibbonLoad of Module basRibbon"

End Sub



Public Sub MyVisible(control As IRibbonControl, _
                          ByRef visible As Variant)
   
   Dim f            As Form
   
   On Error GoTo MyVisible_Error

   If Forms.Count > 0 Then
      Set f = Screen.ActiveForm
      visible = colRibbons(f.RibbonName).Controls(control.ID).visible
   End If

   On Error GoTo 0
   Exit Sub

MyVisible_Error:

   'MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MyVisible of Module basRibbon"

End Sub


Public Sub MyEnable(control As IRibbonControl, _
                          ByRef visible As Variant)
   Dim f            As Form
   

   On Error GoTo MyEnable_Error
   Set f = Screen.ActiveForm
      
   visible = colRibbons(f.RibbonName).Controls(control.ID).enabled

   On Error GoTo 0
   Exit Sub

MyEnable_Error:

   'MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MyEnable of Module basRibbon"

End Sub


Public Sub MyLabelText(control As IRibbonControl, ByRef strLabel As Variant)

   Dim f            As Form

   On Error GoTo MyLabel_Error

   Set f = Screen.ActiveForm
   strLabel = colRibbons(f.RibbonName).Controls(control.ID).label

   On Error GoTo 0
   Exit Sub

MyLabel_Error:

   'MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MyLabel of Module basRibbon"

End Sub



'---------------------------------------------------------------------------------------
' Procedure : meRib
' DateTime  : 4/20/2009 00:36
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : Allows one to reference the current ribbon for the current form
'             This just makes the syntax of referencing controls a lot easer
' examples:
'      meRib("button1").Enabled = true/false
'      meRib("button1").Visible = true/false
'      meRib("button1").Label = "Test label text:
'
'---------------------------------------------------------------------------------------
'
Public Function meRib(strControl As String) As clsRibContorl
      
    Dim frm    As Form
   'get the forms ribbon name....
   
   Set frm = Screen.ActiveForm
   
   If frm.RibbonName <> "" Then
      ' form has a ribbon, use that
      Set meRib = colRibbons(frm.RibbonName).Controls(strControl)
   Else
      ' form does not have a ribbon, we then use application level ribbon
      ' of which we assume is the first ribbon loaded.
      Set meRib = colRibbons(1).Controls(strControl)
   End If

   
End Function

'---------------------------------------------------------------------------------------
' Procedure : meRibA
' DateTime  : 4/20/2009 00:36
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : Allows one to reference any ribbon. Use this when you want to
'             change a ribbon that is not part of a form.
'
'  meRibA("name of ribbon").controls("name of button").enabled = true/false

' examples:
'      meRibA("Contacts").("button1").Enabled = true/false
'
'---------------------------------------------------------------------------------------
'
Public Function meRibA(strRibbonName As String, strControl As String) As clsRibContorl
      
   If strRibbonName <> "" Then
      Set meRibA = colRibbons(strRibbonName).Controls(strControl)
   Else
      ' no ribbon name passed...se application level ribbon
      ' of which we assume is the first ribbon loaded.
      Set meRibA = colRibbons(1).Controls(strControl)
   End If

   
End Function



'---------------------------------------------------------------------------------------
' Procedure : MyImage
' DateTime  : 4/23/2009 18:30
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : Call back for "runtime" setting of user image
'---------------------------------------------------------------------------------------
'
'          <button id="button4" label = "buttion 4"
'                 Size = "large"
'                 getImage="MyImage" tag="mug.bmp"
'                 OnAction = "=Bt3()"
'           />
' Note in above we use the "tag" command as that is the ONLY way to set the starting image
'
' in code you can then go:
'   meMyRib("button4").Image = "hat.bmp"
'
'
'
Public Sub MyImage(control As IRibbonControl, ByRef image)

   Dim f             As Form
   Dim strImagePath  As String
   Dim strImage      As String
   
   On Error GoTo MyImage_Error

   Set f = Screen.ActiveForm
   
   ' for the 1st call when ribbon loads there no image that been set. So we
   ' use the tag as kluge workaround to set the starting image
   
   If colRibbons(f.RibbonName).Controls(control.ID).image = "" Then
      strImage = control.tag
   Else
      strImage = colRibbons(f.RibbonName).Controls(control.ID).image
   End If
 
   If strImage <> "" Then
      If Left(strImage, 4) = "mso." Then
         image = Mid(strImage, 5)
      Else
         strImagePath = CurrentProject.Path & "\ribbon\" & strImage
         Set image = LoadPictureGDIP(strImagePath)
      End If
   End If

   On Error GoTo 0
   Exit Sub

   On Error GoTo 0
   Exit Sub

MyImage_Error:

   'MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MyImage of Module basRibbon"
    
End Sub




'---------------------------------------------------------------------------------------
' Procedure : CallbackLoadImage
' DateTime  : 4/22/2009 20:19
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : there are two image settings for a ribbon. This one is the user defined
'             image that the ribbon displays at load time. For additional times when you
'             want to change the image, then the above routine MyLoadImage is used
'             for call backs. Note that you cannot use both methods for a ribbon
'             if you NEVER need to change the ribbon image, then use this routine
'             So this approach allows you to set the image in code, but DOES NOT
'             allow you to change the image after the ribbon loaded

'    eg: in the "main" part of the ribbon, specify the global image loader:
'
'    <customUI xmlns="http://schemas.microsoft.com/office/2006/01/customui"
'     loadImage = "CallBackLoadImage"    <----- here glboal image
'     onLoad="MyRibbonLoad">
'
'     Then, in your button code go:
'
'          <button id="button4" label = "buttion 4"
'                 Size = "large"
'                 image="mug.gif"    <--- one time image setting
'                 OnAction = "=Bt3()"
'           />


'---------------------------------------------------------------------------------------
'
Sub CallbackLoadImage(strImage As String, _
                     ByRef image)

   Dim strImagePath  As String
    ' Callback loadImage

   If Left(strImage, 4) = "mso." Then
      strImage = Mid(strImage, 5)
      image = strImage
   Else
      strImagePath = CurrentProject.Path & "\ribbon\" & strImage
      
      Set image = LoadPictureGDIP(strImagePath)
'      Debug.Print strImagePath
      
      'Set image = LoadPicture(strImagePath)
   End If

End Sub


Public Sub MyToggle(control As IRibbonControl, _
                    ByRef bolPressed As Variant)

   Dim f             As Form
   
   On Error GoTo MyToggle_Error

   Set f = Screen.ActiveForm
   bolPressed = colRibbons(f.RibbonName).Controls(control.ID).TogPressed
   

   On Error GoTo 0
   Exit Sub

MyToggle_Error:

      
End Sub


Public Function MyInvalidate(strRibName)

   Dim rib        As clsRibbon
   
   On Error Resume Next
   Set rib = colRibbons(strRibName)
   rib.m_ribbon.Invalidate
    
End Function

Public Function MyClose()

      DoCmd.Close
   
End Function

Public Function MyCloseR()

   ' called from report ribon - close the report
   On Error Resume Next
   DoCmd.Close acReport, Screen.ActiveReport.name
   
End Function

Public Function MyHome()

   ' jump to home page/tab
   
    If CurrentProject.AllForms("NavMaster").IsLoaded Then
    
        Forms!navmaster.SetFocus
        DoCmd.BrowseTo acBrowseToForm, "frmHomeToday", "navMaster.navsubform"
    End If
    ' do nothing if no nav form - likey we at logon screen
   
End Function


Public Function MyDummy()

   ' this is requried by a few ribbon buttons that do nothing
   

End Function


Public Function GetAForm() As Form
   
   ' return instance of form that has focus
   '
   
   Dim aform            As Form
   
   Set aform = Screen.ActiveForm
   
   Do While aform.ActiveControl.ControlType = acSubform
   
      Set aform = aform.ActiveControl.Form
   
   Loop
   

   Set GetAForm = aform


End Function


Public Function WhatForm() As String

   MsgBox "current active form = " & GetAForm.name
   

End Function

Public Function RibRun(s As String)

   Dim aform            As Form
   
   Set aform = GetAForm
   
   aform.RibRun s
   
End Function



Public Function MySend()

   On Error Resume Next
   DoCmd.SendObject acSendReport, Screen.ActiveReport.name, acFormatPDF
   

End Function


Public Function MyExport(strFormat As String)

   Dim strFileType         As String
   Dim strFileFilter       As String
   Dim strFileName         As String
   
   Select Case strFormat
      
      Case "RTF"       ' word
         strFileType = acFormatRTF
         strFileFilter = "*.rtf"
         
      Case "XLS"       ' excel
         strFileType = acFormatXLS
         strFileFilter = "*.XLS"
         
      Case "TXT"     ' text
         strFileType = acFormatTXT
         strFileFilter = "*.txt"
         
      Case "HTML"
         strFileType = acFormatHTML
         strFileFilter = "*.html"
         
      Case "PDF"
         strFileType = acFormatPDF
         strFileFilter = "*.pdf"
         
      Case Else
         Exit Function
         
   End Select
   
   strFileName = SaveFileName(strFileType, strFileType, strFileFilter)
   
   If strFileName <> "" Then
      DoCmd.OutputTo acOutputReport, Screen.ActiveReport.name, strFileType, strFileName
   End If
   
End Function


Public Function SaveFileName(strTitle As String, _
                             strFilterText As String, _
                             strFilter As String) As String
   
   strFilter = ahtAddFilterItem(strFilter, strFilterText, strFilter)
   SaveFileName = ahtCommonFileOpenSave( _
                                    OpenFile:=False, _
                                    Filter:=strFilter, _
                                    DialogTitle:=strTitle, _
                    Flags:=ahtOFN_OVERWRITEPROMPT Or ahtOFN_READONLY)

End Function