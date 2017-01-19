Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Public colControls      As New Collection
Public m_ribbon         As IRibbonUI
Private m_name          As String


'---------------------------------------------------------------------------------------
' Procedure : Controls
' DateTime  : 4/14/2009 14:13
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : Returns a custom class control with properties for text, visible, enabled
'           : If the requested control is NOT found, then we add it to the collection
'           Note that "getting" a control allows us to set values, hence no "let"
'           is needed here. This function simply returns a control object via
'           Usage:
'           Controls("controlName","ribbonName").Enabled = true/false
'           Controls("controlName","ribbonName").visible = true/false
'           Controls("controlName","ribbonName").Label = "some text string"
'---------------------------------------------------------------------------------------
'
Public Property Get Controls(strC As String, Optional strRib As String = "") As clsRibContorl

   Dim i           As Integer
   Dim intGotOne   As Integer
   Dim NewControl  As New clsRibContorl
   
   ' look for contorl in colleciton, if not in, then add...
   For i = 1 To colControls.Count
      If strC = colControls(i).name Then
         intGotOne = i
         Exit For
      End If
   Next i
   
   If intGotOne = 0 Then
      ' control not in our collection, add contorl object to collection, set defaults
      NewControl.enabled = True
      NewControl.visible = True
      NewControl.LabelText = strC
      NewControl.name = strC
      NewControl.image = ""
      NewControl.TogPressed = False
      colControls.Add NewControl, strC
      
      Set Controls = NewControl
    Else
      Set Controls = colControls(intGotOne)
   End If
   
   Me.m_ribbon.InvalidateControl (strC)
    
   
End Property


'---------------------------------------------------------------------------------------
' Procedure : name (GET)
' DateTime  : 4/14/2009 14:20
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : Returns the name of the ribbon. This is useally the same name
'             as the given form
'---------------------------------------------------------------------------------------
'
Public Property Get name() As String

   name = m_name

End Property

'---------------------------------------------------------------------------------------
' Procedure : name (LET)
' DateTime  : 4/14/2009 14:21
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : Sets the name of the ribbon. This is usually the same name
'             as the given form
'---------------------------------------------------------------------------------------
'
Public Property Let name(str As String)

   m_name = str
   
End Property