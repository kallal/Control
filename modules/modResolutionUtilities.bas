Option Compare Database

'CREDITS:
'This modResizeForm module was created by Jamie Czernik 31st March 2000 (jsczernik@hotmail.com)
'The module was updated by Dr. Martin Dumskyj 30th January 2001 (mdumskyj@sghms.ac.uk)

'Module Declarations
Global Const DesignResolutionX = 1360


'CHANGE THE VALUE ABOVE TO THE RESOLUTION YOU DESIGNED YOUR FORM IN!
Global Const WM_HORZRES = 8
Global Const WM_VERTRES = 10

Dim Width As Integer
Dim Factor As Single 'Used as multiplier for current size properties'

Declare Function WM_apiGetDeviceCaps Lib "gdi32" Alias "GetDeviceCaps" (ByVal hdc As Long, ByVal nIndex As Long) As Long
Declare Function WM_apiGetDesktopWindow Lib "user32" Alias "GetDesktopWindow" () As Long
Declare Function WM_apiGetDC Lib "user32" Alias "GetDC" (ByVal hwnd As Long) As Long
Declare Function WM_apiReleaseDC Lib "user32" Alias "ReleaseDC" (ByVal hwnd As Long, ByVal hdc As Long) As Long
Declare Function WM_apiGetSystemMetrics Lib "user32" Alias "GetSystemMetrics" (ByVal nIndex As Long) As Long

Function GetScreenResolution() As String

'returns the height and width
Dim DisplayHeight As Integer
Dim DisplayWidth As Integer
Dim hDesktopWnd As Long
Dim hDCcaps As Long
Dim iRtn As Integer

'API call get current resolution
hDesktopWnd = WM_apiGetDesktopWindow() 'get handle to desktop
hDCcaps = WM_apiGetDC(hDesktopWnd) 'get display context for desktop
DisplayHeight = WM_apiGetDeviceCaps(hDCcaps, WM_VERTRES)
DisplayWidth = WM_apiGetDeviceCaps(hDCcaps, WM_HORZRES)
iRtn = WM_apiReleaseDC(hDesktopWnd, hDCcaps) 'release display context
GetScreenResolution = DisplayWidth & "x" & DisplayHeight
Width = DisplayWidth

End Function

Public Sub ReSizeForm(frm As Form)

Dim ctl As control
'Dim i As Integer

On Error Resume Next
SetFactor 'Call to procedure SetFactor
With frm
.Width = frm.Width * Factor
End With
For Each ctl In frm.Controls
With ctl
.Height = ctl.Height * Factor
.Left = ctl.Left * Factor
.Top = ctl.Top * Factor
.Width = ctl.Width * Factor
.FontSize = .FontSize * Factor
End With
Next ctl

End Sub

Sub SetFactor()

GetScreenResolution 'Call to function GetScreenResolution
Factor = Width / DesignResolutionX

End Sub