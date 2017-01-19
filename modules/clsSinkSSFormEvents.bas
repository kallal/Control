Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
'  clsSinkSSFormEvents (part of ShrinkerStretcher v2000.9.1) from Peter's Software
'
'    This class module attaches to forms when forms are opened with the SS_OpenForm procedure
'    (included in the basShrinkerStretcher module) and automatically calls the ShrinkerStretcher
'    rescaling subroutines
'
'  This module was created by, and included with the permission of:
'
'    Stuart Kinnear
'    SK Pro-Active!
'    http://www.skproactive.com
'
'  and it was modified by:
'
'    Peter's Software
'    info@peterssoftware.com
'    http://www.peterssoftware.com
'
'  Usage 1 (requires basShrinkerStretcher):
'    SS_OpenForm "MyFormName"   - Ex.: From the OnClick event of a command button
'
Private Const mcModuleName = "clsSinkSSFormEvents"

Private WithEvents mobjForm As Access.Form
Attribute mobjForm.VB_VarHelpID = -1

Private mobjMe              As Object
Private mstrResizeState     As String
Private mblnTerminateCalled As Boolean
Private mblnUnloading       As Boolean

Private Const mcEvent = "[Event Procedure]"
Private Declare Function SSSFE_apiLockWindowUpdate Lib "user32" Alias "LockWindowUpdate" (ByVal hwndLock As Long) As Long
Private Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" _
    (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long                    '*7.0


Private Function GetTopHwnd(frm As Form) As Long
'* Determine the handle for the window that we want to lock
Dim l As Long

On Error GoTo Err_Section

If frm.PopUp Then
    l = frm.hwnd
Else
    l = Application.hWndAccessApp
End If

Exit_Section:
    On Error Resume Next
    GetTopHwnd = l
    On Error GoTo 0
    Exit Function

Err_Section:
    MsgBox "Error in GetTopHwnd " & Err & " " & Err.Description
    Resume Exit_Section
End Function


Private Sub Class_Initialize()
'   Purpose:    Set the self module level object reference
'               to ensure class persistence
'   Author:     Stuart Kinnear 09-06-2000 (included with permission)
'   Passed:     None
'   Returns:    None
    
    
    Set mobjMe = Me
    
    On Error GoTo 0
End Sub

Public Function Init(ByRef rForm As Form, Optional varOpenArgs As Variant) As Boolean
'   Purpose:    Initialise the input form
'   Revised:    Peter De Baets 2/11/01
'   Author:     Stuart Kinnear (included with permission)
'   Passed:     rForm = Form that this class is attached to.
'   Returns:    None

    On Error GoTo Init_err

    Dim intPos          As Integer
    Dim intPosLen       As Integer
    Dim strResizeState  As String
    Dim intRtn          As Integer
    Dim strTagText      As String
    Dim bSaveVisible    As Boolean
    Dim strBindTest     As String
    Dim strTest         As String
    Dim intOrigWd       As Integer
    Dim intOrigHt       As Integer

    Set mobjForm = rForm
    mblnUnloading = False
    
    '* Find the passed arguments, if any.
    '* It can be "Dynamic" (default), or "OneTimeOnly", or
    '* original design environment width and height.
    If Not IsMissing(varOpenArgs) Then
        On Error Resume Next
        '* Get Resize argument
        strTagText = "Resize="
        intPosLen = 0
        intPos = InStr(varOpenArgs & "", strTagText)
        If intPos = 0 Then
            strResizeState = "Dynamic"
        Else
            intPos = intPos + Len(strTagText)
            intPosLen = InStr(intPos, varOpenArgs & "", ";")
            If intPosLen = 0 Then
                intPosLen = Len(varOpenArgs) + 1
            End If
        End If
        If intPosLen = 0 Then
            strResizeState = "Dynamic"
        Else
            strResizeState = Mid$(varOpenArgs & "", intPos, intPosLen - intPos)
            If Err <> 0 Then
                Err.Clear
                strResizeState = "Dynamic"
            End If
        End If
        
        '* Get original width argument
        strTagText = "OrigWd="
        intPosLen = 0
        intPos = InStr(varOpenArgs & "", strTagText)
        If intPos = 0 Then
            intOrigWd = conOrigWd
        Else
            intPos = intPos + Len(strTagText)
            intPosLen = InStr(intPos, varOpenArgs & "", ";")
            If intPosLen = 0 Then
                intPosLen = Len(varOpenArgs) + 1
            End If
        End If
        If intPosLen = 0 Then
            intOrigWd = conOrigWd
        Else
            intOrigWd = CInt(Mid$(varOpenArgs & "", intPos, intPosLen - intPos))
            If Err <> 0 Then
                Err.Clear
                intOrigWd = conOrigWd
            End If
        End If
        
        '* Get original height argument
        strTagText = "OrigHt="
        intPosLen = 0
        intPos = InStr(varOpenArgs & "", strTagText)
        If intPos = 0 Then
            intOrigHt = conOrigHt
        Else
            intPos = intPos + Len(strTagText)
            intPosLen = InStr(intPos, varOpenArgs & "", ";")
            If intPosLen = 0 Then
                intPosLen = Len(varOpenArgs) + 1
            End If
        End If
        If intPosLen = 0 Then
            intOrigHt = conOrigHt
        Else
            intOrigHt = CInt(Mid$(varOpenArgs & "", intPos, intPosLen - intPos))
            If Err <> 0 Then
                Err.Clear
                intOrigHt = conOrigHt
            End If
        End If
        
        On Error GoTo Init_err
        
    Else
        strResizeState = "Dynamic"
        intOrigWd = conOrigWd
        intOrigHt = conOrigHt
    End If
    
    strBindTest = mobjForm.OnResize
    
    If strResizeState <> "None" Then
        '* Instead of putting these calls in the form OnOpen, and OnResize events,
        '* they can be put here and run after the form is opened.
        SSInitWhenFormAlreadyOpen = True
        DoCmd.Hourglass True
        Call SSSFE_apiLockWindowUpdate(GetTopHwnd(mobjForm))
        SS_OnOpen mobjForm
        '* v10 - Make sure echo gets turned off for pop up forms
        'SS_OnResize mobjForm, intOrigWd, intOrigHt, False
        If mobjForm.PopUp Then
            SS_OnResize mobjForm, intOrigWd, intOrigHt, True
        Else
            SS_OnResize mobjForm, intOrigWd, intOrigHt, False
        End If
        Call SSSFE_apiLockWindowUpdate(0)
        DoCmd.Hourglass False
        SSInitWhenFormAlreadyOpen = False
        ResizeState = strResizeState    '* binds resize event as needed
    End If
    
    '* Bind other form events
    BindEvents

    If strResizeState <> "None" Then
        '* Maximize form if it has the SSMaximize text in the tag field
        If InStr(1, mobjForm.tag, "SSMaximize") _
        Or InStr(1, mobjForm.tag, "SSEnableMaximize") Then
            '* v10 - Only need to maximize form if it is not already maximized or a tabbed form
            If SS_apiIsZoomed(mobjForm.hwnd) Or xg_IsTabbed(mobjForm) Then
            Else
                '* Maximize the form
                '* Application echo is faster than api call
                'Call SSSFE_apiLockWindowUpdate(GetTopHwnd(mobjForm))
                Application.Echo False
                intRtn = SS_apiShowWindow(mobjForm.hwnd, SS_SW_MAXIMIZE)
                'Call SSSFE_apiLockWindowUpdate(0)
                'pddxxx v10 - Echo will be turned on external to this routine
                'Application.Echo True
                DoCmd.Hourglass False
            End If
        Else
            '* When form is opened from a maximized form, the automatic maximize can happen before we have
            '* a chance to bind the resize event. So this code will execute the resize code for this exception.
            If SS_apiIsZoomed(mobjForm.hwnd) Then
                If strBindTest = mobjForm.OnResize Then
                    '* Binding for the OnResize event did not change
                Else
                    '* OnResize event was bound after form was zoomed so the rescaling code has been skipped
                    '* for the maximize
                    DoCmd.Hourglass True
                    '* Application echo is faster than the api call
                    'Call SSSFE_apiLockWindowUpdate(GetTopHwnd(mobjForm))
                    Application.Echo False
                    SS_OnResize mobjForm, intOrigWd, intOrigHt, False
                    'Call SSSFE_apiLockWindowUpdate(0)
                    'pddxxx v10 - Echo will be turned on external to this routine
                    'Application.Echo True
                    DoCmd.Hourglass False
                End If
            Else
            End If
        End If
    End If

    Init = True
    
Init_done:
    On Error Resume Next
    DoCmd.Hourglass False
    On Error GoTo 0
    Exit Function
    
Init_err:
    MsgBox mcModuleName & ":Init " & Err & " " & Err.Description
    Resume Init_done
    Resume
End Function
Private Function xg_IsTabbed(frm As Form) As Boolean
'* Returns True if the passed form is opened as an Access 2007 tabbed Form
'* A tabbed form will be the same size as the Access window client area
'* Requires the GetWindowRect and FindWindowEx APIs
Dim Marker As Integer
Dim Rtn As Boolean
Dim l As Long
Dim ClientRect As SS_Rect
Dim frmRect As SS_Rect
Dim AccessMDIClientHwnd As Long


On Error GoTo Err_Section
Marker = 1

l = SS_apiGetWindowRect(frm.hwnd, frmRect)
AccessMDIClientHwnd = FindWindowEx(Access.hWndAccessApp, 0&, "MDIClient", vbNullString)
l = SS_apiGetWindowRect(AccessMDIClientHwnd, ClientRect)

If frmRect.Left = ClientRect.Left _
And frmRect.Right = ClientRect.Right _
And frmRect.Top = ClientRect.Top _
And frmRect.Bottom = ClientRect.Bottom Then
'* The form size is the same size as the client area - it must be an Access 2007 tabbed form
    Rtn = True
Else
    Rtn = False
End If

Exit_Section:
    On Error Resume Next
    xg_IsTabbed = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in xg_IsTabbed (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function
Private Sub BindEvents()
'   Purpose:    bind the form events in this class to the form
'   Revised:    Peter De Baets 2/11/01
'   Author:     Stuart Kinnear (included with permission)
'   Passed:     frm = Form that this class is attached to.
'   Returns:    None

    On Error GoTo BindEvents_err
    
    With mobjForm
        .OnClose = mcEvent
        .OnUnload = mcEvent
    End With

BindEvents_done:
    On Error GoTo 0
    Exit Sub
    
BindEvents_err:
    MsgBox mcModuleName & ":BindEvents " & Err & " " & Err.Description
    Resume BindEvents_done
    Resume
End Sub


Private Sub Terminate()
'   Purpose:    To destroy module level object instances
'               and this item from the global form collection gcolForms
'   Revised:    Peter De Baets 2/11/00
'   Author:     Stuart Kinnear (included with permission)
'   Passed:     None
'   Returns:    None

 On Error GoTo Terminate_err

    Dim obj As Object
    
    If mblnTerminateCalled = False Then
       gcolForms.Remove mobjForm.name
       mblnTerminateCalled = True
    End If
    
Terminate_done:
    On Error GoTo 0
    Exit Sub

Terminate_err:
    Select Case Err.Number
    Case Else
        MsgBox mcModuleName & ":Terminate " & Err & " " & Err.Description
    End Select
    Resume Terminate_done
    Resume

End Sub



Private Sub mobjForm_Close()
On Error Resume Next
Terminate
On Error GoTo 0
End Sub

Private Sub mobjForm_Resize()
'   Purpose:    Handle resize activity
'   Revised:    Peter De Baets 2/11/01
'   Author:     Stuart Kinnear (included with permission)
'   Passed:     none
'   Returns:    None
    
    On Error GoTo mobjForm_Resize_err
    
    If mblnUnloading Then
        '* If form is unloading, do nothing
    Else
        DoCmd.Hourglass True
        '* Application echo is a lot faster than the api call, but we still
        '* need the api call to prevent flickering on pop-up forms.
        If mobjForm.PopUp Then
            '* v10 - This doesn't seem to be working for pop-up forms
            '* Simplify by making form invisible for resizing, make it visible after
            'Call SSSFE_apiLockWindowUpdate(GetTopHwnd(mobjForm))
            mobjForm.visible = False
        Else
            Application.Echo False
        End If
        
        'msgbox "resize"
        SS_OnResize mobjForm, , , False
        
        If mobjForm.PopUp Then
            '* v10 - Make form visible again
            'Call SSSFE_apiLockWindowUpdate(0)
            mobjForm.visible = True
        Else
            Application.Echo True
        End If
        DoCmd.Hourglass False
    End If
    
mobjForm_Resize_done:
    On Error Resume Next
    Application.Echo True
    DoCmd.Hourglass False
    On Error GoTo 0
    Exit Sub

mobjForm_Resize_err:
    MsgBox mcModuleName & ":mobjForm_Resize " & Err & " " & Err.Description
    Resume mobjForm_Resize_done
End Sub



Public Property Get ResizeState() As String
    ResizeState = mstrResizeState
End Property

Public Property Let ResizeState(ByVal strResizeState As String)
'   Purpose:    To set the resize events
'   Revised:    Peter De Baets 2/11/01
'   Author:     Stuart Kinnear (used with permission)
'   Passed:     None
'   Returns:    None

On Error GoTo ResizeState_err

    mstrResizeState = strResizeState
    
    Select Case mstrResizeState
    Case "OneTimeOnly"
    Case "None"
    '-- Should never happen
        With mobjForm
            .OnResize = ""
        End With
    Case Else
        With mobjForm
            .OnResize = mcEvent
        End With
    End Select
    
ResizeState_done:
    On Error GoTo 0
    Exit Property

ResizeState_err:
    Select Case Err
    Case Else
        MsgBox mcModuleName & ":ResizeState " & Err & " " & Err.Description
    End Select
    Resume ResizeState_done
    Resume

End Property


Private Sub mobjForm_Unload(Cancel As Integer)
'* This code will eliminate the rescalings due to the (undocumented) resize event
'* that occurs when a maximized form closes.
On Error Resume Next
mblnUnloading = True
On Error GoTo 0
End Sub