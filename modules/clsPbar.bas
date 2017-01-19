Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Public frmGuiP       As Form_GuiProgress


' My Native Access Progress Bar class
' ADK - Sept 2001
'

Public Function ShowProgress()

   '
   ' we have a list....start a progress bar.
   Set frmGuiP = New Form_GuiProgress
   
   frmGuiP.visible = True
   DoEvents

End Function

Public Function HideProgress()

   frmGuiP.visible = False
   frmGuiP.ClearBar
   
   Set frmGuiP = Nothing
   
   
End Function
Public Property Let TextMsg(strMsg As String)


   frmGuiP!txtProgress = strMsg
   DoEvents
   
End Property

Public Property Let TextMsgInc(strMsg As String)

   frmGuiP!txtProgress = strMsg
   frmGuiP.strIncMsg = strMsg

End Property

Property Let Pmax(lngMax As Long)

      frmGuiP.Pmax = lngMax
      
End Property

Public Function IncOne()

   frmGuiP.Pinc
         
End Function

Public Property Let TimerOn(intSeconds As Integer)

   ' sets the amount of time for one progress loop
   
   Me.Pmax = intSeconds
   
   frmGuiP.TimerInterval = 1000   ' one second


End Property

Public Property Let PCaption(str As String)

   frmGuiP.caption = str
   
End Property

Public Property Get PCaption() As String

   PCaption = frmGuiP.caption
   
End Property


Public Property Let PValue(lngV As Long)

   frmGuiP.PValue = lngV
   
End Property