Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'---------------------------------------------------------------------------------------
' Module    : clsRibContorl
' DateTime  : 4/14/2009 14:23
' Author    : Albert D. Kallal - kallal@msn.com   (c)  Albert D. Kallal
' Purpose   : This a custom ojbject that represents our contorl values (atributles)
'             that we can set.
'            enabled, Visible, label
'             We can't add a user defined type to a collecion, so I used this class
'             in place of what could have been a UDT.
'---------------------------------------------------------------------------------------


Option Compare Database
Option Explicit

Dim m_enabled        As Boolean
Dim m_visible        As Boolean
Dim m_Label          As String
Dim m_name           As String
Dim m_image          As String
Dim m_bolToggle      As Boolean


Public Property Let enabled(bol As Boolean)

   m_enabled = bol
   
End Property

Public Property Get enabled() As Boolean

   enabled = m_enabled

End Property

'-----------

Public Property Let visible(bol As Boolean)

   m_visible = bol
   
End Property

Public Property Get visible() As Boolean

   visible = m_visible
   
End Property

Public Property Let LabelText(str As String)

   m_Label = str
   
End Property

Public Property Get LabelText() As String

   LabelText = m_Label
   
End Property

Public Property Get name() As String

   name = m_name
   
End Property

Public Property Let name(str As String)

   m_name = str
   
End Property


Public Property Let image(str As String)

   m_image = str
   
End Property

Public Property Get image() As String

   image = m_image

End Property

Public Property Get TogPressed() As Boolean

   TogPressed = m_bolToggle
   
End Property

Public Property Let TogPressed(bol As Boolean)

   m_bolToggle = bol
   
End Property