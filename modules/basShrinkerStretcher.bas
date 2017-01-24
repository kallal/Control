Option Compare Database
Option Explicit
'  ShrinkerStretcher v10.2 for Access 2007, 2003, 2002, 2000 from Peter's Software
'
'    Scales controls, fonts, and forms in proportion to the size of the form window.
'
'        v10.2 - Removed an extraneous line of code that was causing an error 450 in SS_ResizeControls
'                The line of code was "frm.ActiveControl.SelLength"
'        v10.1 - Resolves "Error (281) in SS_ResizeControls 2145" which occured for some users with Non-US regional settings
'                Contains some additional debugging code
'
'
Const APPVER = "100"         '* Major version number
Const MDBVER = "10.2"        '* Version number, sub-version number.
Const VERSHORT = "10"        '* Short version number
Const BUILD_NO = "27"        '* Build number
#Const Access2007 = True
                             '* "False" for earlier Access versions.
'  This module was created by:
'
'    Peter's Software
'    info@peterssoftware.com
'    http://www.peterssoftware.com
'
'  Special thanks to
'
'    Stuart Kinnear
'    http://www.skproactive.com
'
'  If you find that this product is useful to you, and you haven't already
'  registered it, please do so by sending a check (made out to "Peter's
'  Software") for the equivalent of US$44.95 to the address above.
'
'  With your registration, you are allowed to use ShrinkerStretcher on up
'  to 5 computers (to Purchase additional licenses see the accompanying
'  "ReadMe.txt" file). Also, you will receive the latest full version of
'  ShrinkerStretcher, one free upgrade as it becomes available, and
'  subsequent upgrade notifications.
'
'  I do not require that this header be included in any apps you distribute,
'  but would appreciate credit being given in your documentation.
'
'  Usage 1:
'    SS_OpenForm "MyFormName"   - from the OnClick event of a command button
'
'  Usage 2:
'    SS_OnOpen Me      - from your form's OnOpen event.
'    SS_OnResize Me    - from your form's OnResize event.
'
'  Usage 3 (one time only rescaling - causes form to be scaled when it first opens, and not after that):
'    SS_OpenForm "MyFormName", , , , , , "Resize=OneTimeOnly"
'
'  Usage 4 (one time only rescaling):
'    SS_OnOpen Me          - from your form's OnOpen event.
'
'    Me.TimerInterval = 0  - from your form's
'    SS_OnResize Me        -   OnTimer event.
'
'    Also, set form TimerInterval property to 1.
'
'  Usage 5 (static rescaling):
'    "SSStaticRescale" anywhere in form tag property to mark form for static rescaling.
'    "SSMaximize" anywhere in form tag property if form is meant to be maximized when opened.
'    Use Macro "Rescale Marked Forms" to rescale and save all marked forms (can be run at
'      application startup as part of autoexec macro).
'
'  Usage 6 (individual form scaling):
'    Open the "SSControl" form, select a form, and click the "backup, rescale and save" button.
'
'**************************************************************************************
'* You can compile for DAO or ADO by setting the conditional compiler constant below
'* and then re-compiling.
'*
#Const DAO_OR_ADO = "DAO"    '* Uncomment this line to compile for DAO
'#Const DAO_OR_ADO = "ADO"    '* Uncomment this line to compile for ADO
'*
'* If you set the constant above to "DAO", then you will need to
'* make sure that the following library is referenced:
'*
'*  Microsoft DAO 3.x Object Library
'*
'* If you set the constant above to "ADO", then you will need to
'* make sure that the following libraries are referenced:
'*
'*  Microsoft ActiveX Data Objects 2.1 Library
'*  Microsoft ADO Ext. 2.x for DDL and Security
'*
'**************************************************************************************
'*
Const conShrinkStretch = True       '* "False" will disable ShrinkerStretcher.
Const conChangeFonts = True         '* "True" means that non-shrinkable fonts will be changed to shrinkable ones.
Const conLongFormAdj = True         '* "True" means that multi-page (long) forms won't be excessively shrunk when they are first opened.
Const conAdjustToRes = True         '* Adjust form size up or down to match screen resolution (for other than maximized forms)
'*
'* If conAdjustToRes = True, then you must set the screen resolution,
'* Log Pixels (font size), and Taskbar height  that your application was developed with.
'*
'Public Const conOrigWd = 640      '* un-comment these lines if development
'Public Const conOrigHt = 480      '* environment is 640x480 resolution (4/3 ratio).
'*
'Public Const conOrigWd = 800       '* un-comment these lines if development
'Public Const conOrigHt = 600       '* environment is 800x600 resolution (4/3 ratio).
'*
Public Const conOrigWd = 1024     '* un-comment these lines if development
Public Const conOrigHt = 768      '* environment is 1024x768 resolution (4/3 ratio).
'*
'Public Const conOrigWd = 1152     '* un-comment these lines if development
'Public Const conOrigHt = 864      '* environment is 1152x864 resolution (4/3 ratio).
'*
'Public Const conOrigWd = 1280     '* un-comment these lines if development
'Public Const conOrigHt = 1024     '* environment is 1280x1024 resolution (5/4 ratio - narrow screen).
'*
'Public Const conOrigWd = 1400     '* un-comment these lines if development
'Public Const conOrigHt = 1050     '* environment is 1400x1050 resolution (4/3 ratio).
'*
'Public Const conOrigWd = 1600     '* un-comment these lines if development
'Public Const conOrigHt = 1200     '* environment is 1600x1200 resolution (4/3 ratio).
'*
'Public Const conOrigWd = 1280     '* un-comment these lines if development
'Public Const conOrigHt = 720      '* environment is 1280x720 resolution (16/9 ratio - wide screen).
'*
'Public Const conOrigWd = 1680     '* un-comment these lines if development
'Public Const conOrigHt = 1050     '* environment is 1680x1050 resolution (8/5 ratio - wide screen).
'*
'Public Const conOrigWd = 1920     '* un-comment these lines if development
'Public Const conOrigHt = 1080     '* environment is 1920x1080 resolution (16/9 ratio - wide screen).
'*
'Public Const conOrigWd = 1920     '* un-comment these lines if development
'Public Const conOrigHt = 1200     '* environment is 1920x1200 resolution (8/5 ratio - wide screen).
'*
Const conOrigLogPixelsY = 96    '* un-comment this line if development environment is small fonts
'Const conOrigLogPixelsY = 120  '* un-comment this line if development environment is large fonts (125%)
'Const conOrigLogPixelsy = 144  '* un-comment this line if development environment is larger fonts (150%)
'Const conOrigLogPixelsy = 168  '* un-comment this line if development environment is even larger fonts (175%)
'*
'* Adjust to Resolution based on Access window size.
Const conOrigHorzTaskbarHeight = 20     '* un-comment this line if development environment has horizontal taskbar
'Const conOrigHorzTaskbarHeight = -2    '* un-comment this line if development environment has hidden taskbar
'Const conOrigHorzTaskbarHeight = -8    '* un-comment this line if development environment has vertical taskbar
'*
'Const conOrigVertTaskbarWidth = 27     '* un-comment this line if development environment has vertical taskbar
'Const conOrigVertTaskbarWidth = -2    '* un-comment this line if development environment has hidden taskbar
Const conOrigVertTaskbarWidth = -8    '* un-comment this line if development environment has horizontal taskbar


Const conCheckClientArea = False    '* When static rescaling, "True" will cause rescaling to occur only if client area rectangle has changed
Const conSSVerbose = True           '* "True" displays messages during static rescaling
Const conRetainProportion = True    '* Retain original form proportions.
Const conMinimumFontSize = 6        '* Set this to smallest readable font point size
Const conTabCtlLoopAdj = False     '* "True" can result in more accurately resized tab controls, slower performance
Const conOptGroupLoopAdj = False     '* "True" can result in more accurately resized option groups, slower performance
Const conSameResNoInitialScaling = False    '* "True" will inhibit initial scaling when current screen res is same as form original resolution
Const conScaleSubformWidthToFit = False      '* "True" will scale subform width to fit subform control
                                            '* "False" will open the subform control at its saved size
Const conRetainSubformProportion = True     '* "True" will retain subform aspect ratio.
                                            '* "False", along with conScaleSubformWidthToFit = "True",
                                            '* will scale subform dis-proportionately.
Const conDatasheetDefault8ptRowHeight = 225   '* Used to determine default datasheet row height just prior to scaling
Const conDatasheetDefault10ptRowHeight = 255  '* Used to determine default datasheet row height just prior to scaling
Const conAutoDetermineLongForm = False  '* "True" - SS will automatically determine which forms are long (multi-page) forms.
                                        '* "False - Forms must have "SSLong" in tag property to be treated as long forms.
Const conAdjustToSizeOfAccessWindow = True  '* "True", if conAdjustToRes is also true, then initial rescaling
                                            '* will size to fit within Access window
                                            '* "False", if conAdjustToRes is true, then initial rescaling will
                                            '* adjust forms based on screen resolution
Const conAdjustResUpperLimit = 9.9      '* On initial resolution adjustment, these constants set an upper and
Const conAdjustResLowerLimit = 0.1      '*   lower limit to rescaling. 1.2 = 120%, 0.8 = 80% (non-maximized forms only)
Const conScaleFonts = True              '* "True" will scale fonts, "False" will inhibit font scaling.
Const conAutoAdjustSizeMode = True
Const conOnOpenStretchWidthForWidescreen = False '* "True" will stretch form width disproportionally for widescreens when opened
Const conOnOpenShrinkWidthForNarrowScreen = True '* "True" will stretch form height disproportionally for narrow screens (5/4 ratio) when opened
Const conSizeToFit = True                       '* "True" will size form window to fit form regardless of form AutoResize setting.
Const conScreenCenterPopup = False              '* "True" will center pop up forms in relation to the screen instead of to the Access window
Const conAutoPosition = True                    '* "False" will skip resolution-adjusted centering of form on screen for non-autocentered forms

'*
'**************************************************************************************
Const APP_TITLE = "ShrinkerStretcher"
Const APPSHORT = "ss"
Const PROJECT_VER = "v" & VERSHORT
Const PROJECT_VERU = "v" & VERSHORT & "u"
Const VER_2000_WORKS_WITH = "2000/2002/2003/2007"
Const HELP_FILE_NAME = APPSHORT & "help.chm"
Const REG_KEY_PREFIX = "Software\PetersSoftware\" & APP_TITLE

Const conDesignView = 0
Const conFormView = 1
Const conDatasheetView = 2
Const conContinuousForms = 1
Const conLFmax = 6
Const conCFmax = 40
'* v10
Const conFRFormsMax = 60        '* this must be at least 2
Const conExitOnError = True
Const mcModuleName = "basShrinkerStretcher"
Const mcOpenFormHidden = True
Const conTabControlFixedBorderWidth = 136
'* This value seems to vary between 135 and 142. So choose mid value
Const conTabControlFixedBorderHeight = 139
Const conTabControlFixedBorderWidthStyleNone = 82
'* This value seems to vary between 75 and 81. So choose mid value
Const conTabControlFixedBorderHeightStyleNone = 78
Const conTabFixedHeightDefault = 270
Const conStaticScaleBackupSuffix = " (SSOriginal)"
'* v10
Private Const conAccessSizeLimit = 22 * 1440
'* This is the number of Layout groupings allowed per form.
Private Const conLayoutsAllowedPerForm = 50
'* This is the number of subforms allowed per form.
Private Const conSubformsAllowedPerForm = 50
Private Const conWidescreenWidthToHeightRatio = 1.5
Private Const conWidescreenToStandardRatio = 1.15
Private Const conStandardToNarrowScreenRatioLowerLimit = 0.85
Const conDebug = 0
Const conDebugRC = False
Const conDebugCPct = False
Const conDebugExit = False
Const conDebugFont = False
'v10.1
Const conDebugColumnWidths = False

Public Const conSSdemo = False
Private Const conSSAutoexec = True
Public Const SS_LOGPIXELSX = 88
Public Const SS_LOGPIXELSY = 90
Public Const SS_SM_CXVSCROLL = 2
Public Const SS_SM_CXFRAME = 32
Public Const SS_SW_MAXIMIZE = 3
Public Const SS_HORZRES = 8
Public Const SS_VERTRES = 10
Public Const SS_SW_HIDE = 0
Public Const SS_SW_SHOW = 5
Public Const SS_SW_RESTORE = 9
Public Const SS_GWL_STYLE = (-16)
Public Const SS_SWP_NOZORDER = &H4
Public Const SS_SWP_SHOWWINDOW = &H40
Public Const SS_SWP_HIDEWINDOW = &H80
Public Const SS_SWP_NOMOVE = &H2
Public Const SS_SWP_NOSIZE = &H1

' Windows Message -> ScrollBar
Private Const WM_HSCROLL = &H114
Private Const WM_VSCROLL = &H115
' ScrollBar Commands
Private Const SB_LINEUP = 0
Private Const SB_LINELEFT = 0
Private Const SB_LINEDOWN = 1
Private Const SB_LINERIGHT = 1
Private Const SB_PAGEUP = 2
Private Const SB_PAGELEFT = 2
Private Const SB_PAGEDOWN = 3
Private Const SB_PAGERIGHT = 3
Private Const SB_THUMBPOSITION = 4
Private Const SB_THUMBTRACK = 5
Private Const SB_TOP = 6
Private Const SB_LEFT = 6
Private Const SB_BOTTOM = 7
Private Const SB_RIGHT = 7
Private Const SB_ENDSCROLL = 8

'* v10
Const adhcHKEY_CURRENT_USER = &H80000001
Const adhcHKEY_LOCAL_MACHINE = &H80000002

Const READ_CONTROL = &H20000
Const KEY_QUERY_VALUE = &H1
Const KEY_SET_VALUE = &H2
Const KEY_CREATE_SUB_KEY = &H4
Const KEY_ENUMERATE_SUB_KEYS = &H8
Const KEY_NOTIFY = &H10
Const KEY_CREATE_LINK = &H20
Const KEY_ALL_ACCESS = KEY_QUERY_VALUE + KEY_SET_VALUE + _
                       KEY_CREATE_SUB_KEY + KEY_ENUMERATE_SUB_KEYS + _
                       KEY_NOTIFY + KEY_CREATE_LINK + READ_CONTROL
                       
Const STANDARD_RIGHTS_READ = &H20000
Const SYNCHRONIZE = &H100000
Const KEY_READ = ((STANDARD_RIGHTS_READ Or KEY_QUERY_VALUE Or KEY_ENUMERATE_SUB_KEYS Or KEY_NOTIFY) And (Not SYNCHRONIZE))

Public Type SS_Rect
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type
Type SS_RECT_WDHT
    Left As Integer
    Top As Integer
    Width As Integer
    Height As Integer
End Type

'* New type created for improved tab control sizing
Type SS_RECT_WDHT_TC
    name As String
    Left As Integer
    Top As Integer
    Width As Integer
    Height As Integer
    PageHorzAdj As Single
    PageVertAdj As Single
    OrigPageLeft As Integer
    OrigPageTop As Integer
End Type

Type FREntry    '* Font ratio array entry
    FormName As String
    ControlName As String
    FontRatio As Single
    FontName As String
End Type
Type FormOldDimensionsType    '* Continuous form/split form array entry
    FormName As String
    OldHeight As Integer
    OldWidth As Integer
End Type

Type LGType     '* Layout group information
    LayoutID As Long
    Tabular As Boolean
End Type
Type LGTableType    '* Layout Group table information
    LayoutID As Long
    ControlName As String
    IsRowIndicator As Boolean
    IsColIndicator As Boolean
    Left As Integer
    Top As Integer
    Section As Integer
End Type
Type SFPrevHtWdType
    ControlName As String
    PrevHt As Integer
    PrevWd As Integer
End Type

Public SkipSS As Integer

Public SSKeepEchoOff As Integer

'* This variable is true when SS routines are first called after the form is opened
'* from perhaps an event sink class module.
Public SSInitWhenFormAlreadyOpen As Integer
Dim SShDesktopWnd As Long
Dim SShDCcaps As Long
Dim DisplayBits As Integer
Dim DisplayPlanes As Integer
Dim DisplayWidth As Long
Dim DisplayHeight As Long
Dim DisplayLogPixelsY As Long
Dim DisplayLogPixelsX As Long
Dim WindowScrollBar As Integer
Dim WindowFrame As Integer
Dim SSTwipsPerPixel As Integer
Dim JustOpened As Integer
Dim sf_flag As Integer      '* subform flag
Dim sf_PrevHt As Integer
Dim sf_PrevWd As Integer
Dim SSCurrentFormHeight As Integer
Dim SSCurrentFormWidth As Integer
Dim SSStaticResize As Integer
'* Make sure that JustOpened variable does not get turned off too soon.
Dim SSMainFormName As String
'* v10 ResFactor
'Dim SSResFactor As Single
Dim SSResFactorH As Single
Dim SSResFactorV As Single
Dim mstrNavigationPaneName As String
Dim mblnTabbedForms As Boolean

Dim FRFormName As String
Dim FRLastRow As Integer
Dim LFSub As Integer

Dim FR() As FREntry
Dim LF(conLFmax) As String     '* Holds names of all of the Long Forms ecountered.
Dim CF(conCFmax) As FormOldDimensionsType   '* Holds old height and width values for each continuous form encountered

Global gcolForms        As New Collection

Declare Function SS_apiGetWindowRect Lib "user32" Alias "GetWindowRect" (ByVal hwnd As Long, lpRect As SS_Rect) As Long     '*7.0
Declare Function SS_apiGetDesktopWindow Lib "user32" Alias "GetDesktopWindow" () As Long    '*7.0
Declare Function SS_apiGetDC Lib "user32" Alias "GetDC" (ByVal hwnd As Long) As Long    '*7.0
Declare Function SS_apiGetDeviceCaps Lib "gdi32" Alias "GetDeviceCaps" (ByVal hdc As Long, ByVal nIndex As Long) As Long   '*7.0
Declare Function SS_apiGetSystemMetrics Lib "user32" Alias "GetSystemMetrics" (ByVal nIndex As Long) As Long    '*7.0
Declare Function SS_apiReleaseDC Lib "user32" Alias "ReleaseDC" (ByVal hwnd As Long, ByVal hdc As Long) As Long        '*7.0
Declare Function SS_apiIsZoomed Lib "user32" Alias "IsZoomed" (ByVal hwnd As Long) As Long      '*7.0
Declare Function SS_apiGetClientRect Lib "user32" Alias "GetClientRect" (ByVal hwnd As Long, lpRect As SS_Rect) As Long     '*7.0
Declare Function SS_apiShowWindow Lib "user32" Alias "ShowWindow" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
Declare Function SS_apiAdjustWindowRect Lib "user32" Alias "AdjustWindowRect" (lpRect As SS_Rect, ByVal dwStyle As Long, ByVal bMenu As Long) As Long
Declare Function SS_apiGetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Declare Function SS_apiSetWindowPos Lib "user32" Alias "SetWindowPos" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Declare Function SS_apiIsIconic Lib "user32" Alias "IsIconic" (ByVal hwnd As Long) As Long
'* v10
Private Declare Function LockWindowUpdate Lib "user32" (ByVal hwndLock As Long) As Long
Declare Function SS_apiSendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
'* v10
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hkey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, ByRef phkResult As Long) As Long
Private Declare Function RegQueryValueEx& Lib "advapi32.dll" Alias "RegQueryValueExA" _
    (ByVal hkey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, _
    ByRef lpType As Long, ByVal lpData As Any, ByRef lpcbData As Long)
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hkey As Long) As Long
Private Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" _
    (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long
Sub ng_CompileErrorCheck()

Dim strDummy As String

'**********************************************************************
'* If you get a compile error "Can't find project or library" on the
'* line below, you need to:
'* 1. Click the "Reset" button (the little blue square) above to stop
'*    code execution.
'* 2. From any module in design mode, click Tools > References and
'*    look for any checked references that are "MISSING:".
'* 3. Fix the missing reference(s)
'*    a. Uncheck these references if they are not needed to compile
'*       your application, or
'*    b. Click the "Browse" button to find the new location of the
'*       missing library.
'*
'* A missing reference can cause an error in a seemingly unrelated module.
'*
'* See this link for more information:
'* http://www.accessmvp.com/djsteele/AccessReferenceErrors.html
'*
strDummy = Left(" ", 1)
'*
'**********************************************************************

'**********************************************************************
'* If you get a compile error "User-defined type not defined" on the
'* line below, you need to:
'* 1. Add a reference to either DAO ("Microsoft DAO 3.x Object Library")
'*    or ADO ("Microsoft ActiveX Data Objects 2.x Library").
'* 2. If you are going to use DAO, then set the compiler directive constant
'*    DAO_OR_ADO to 'DAO' in the declarations section of this module.
'* 3. If you are going to use ADO, then set the compiler directive constant
'*    DAO_OR_ADO to 'ADO' in the declarations section of this module.
'*
Dim rst As Recordset
'*
'**********************************************************************

#If DAO_OR_ADO = "DAO" Then
    '**********************************************************************
    '* If you get a compile error "User-defined type not defined" on the
    '* line below, you need to:
    '* 1. Decide whether you are going to use DAO or ADO.
    '* 2. If you are going to use DAO, then click Tools > References and
    '*    add a reference to "Microsoft DAO 3.x Object Library".
    '* 3. If you are going to use ADO, then set the compiler directive constant
    '*    DAO_OR_ADO to 'ADO' in the declarations section of this module.
    '*
    Dim dbs As DAO.Database
    '*
    '**********************************************************************
#Else
    '**********************************************************************
    '* If you get a compile error "User-defined type not defined" on the
    '* line below, you need to:
    '* 1. Decide whether you are going to use DAO or ADO.
    '* 2. If you are going to use ADO, then click Tools > References and
    '*    add a reference to "Microsoft ActiveX Data Objects 2.x Library".
    '* 3. If you are going to use DAO, then set the compiler directive constant
    '*    DAO_OR_ADO to 'DAO' in the declarations section of this module.
    '*
    Dim cnnCurr As ADODB.Connection
    '*
    '**********************************************************************
    
    '**********************************************************************
    '* If you get a compile error "User-defined type not defined" on the
    '* line below, you need to:
    '* 1. Click Tools > References and add a reference to ADOX
    '*    ("Microsoft ADO Ext. 2.x for DDL and Security")
    '*
    Dim cat As New ADOX.Catalog
    '*
    '**********************************************************************
#End If
End Sub
Function SS_Autoexec() As Integer
'* Runs at demo startup
Dim Marker As Integer
Dim Rtn As Integer

On Error GoTo Err_Section
Marker = 1

Select Case xg_WhichVersionOfAccess()
Case "2007" To "4000"
    '*2007 Minimize navigation window
    DoCmd.SelectObject acForm, , True
    RunCommand acCmdWindowHide
    
    mstrNavigationPaneName = "Navigation Pane"
Case Else
    mstrNavigationPaneName = "Database Window"
End Select
    
If conSSAutoexec Then
    DoCmd.OpenForm "SSMain"
    SS_OpenForm "SSDemo"
End If

Exit_Section:
    On Error Resume Next
    SS_Autoexec = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in SS_Autoexec (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    'xg_ErrorMessage "SS_Autoexec", marker
    End Select
    Err.Clear
    Resume Exit_Section
End Function
Function SS_DemoFormOnOpen(frm As Form) As Integer
'* OnOpen processing for ShrinkerStretcher demo form
Dim Marker As Integer
Dim Rtn As Integer
Dim s As String

On Error GoTo Err_Section
Marker = 1

Marker = 2
'* Set the demo form caption
s = ""
s = APP_TITLE & " v" & MDBVER & "." & BUILD_NO
If conSSdemo Then
    s = s & " Shareware/Demo"
End If
frm.caption = s


'* Set the help file
Marker = 3
frm.HelpFile = ""
'frm.HelpFile = ng_GetAppInstallFolder & HELP_FILE_NAME
s = ng_GetAppInstallFolder & HELP_FILE_NAME
If Dir(s) = "" Then
    '* Use default expected installation folder
    s = Environ("ProgramFiles") & "\Peters Software\" & APP_TITLE & " " & PROJECT_VERU & "\" & HELP_FILE_NAME
    If Dir(s) = "" Then
        '* Use other expected install folder
        s = Environ("ProgramFiles") & "\Peters Software\" & APP_TITLE & " " & PROJECT_VER & " Shareware" & "\" & HELP_FILE_NAME
    Else
    End If
Else
End If
frm.HelpFile = s

Marker = 4
Select Case xg_WhichVersionOfAccess()
Case "2007" To "4000"
    frm!lblShowNavigationPane.caption = "Show the Navigation Pane"
Case Else
    frm!lblShowNavigationPane.caption = "Show the Database Window"
End Select

Marker = 5

Exit_Section:
    On Error Resume Next
    Set frm = Nothing
    SS_DemoFormOnOpen = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in SS_DemoFormOnOpen (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function

Function SS_IsMDE(strProjectName As String) As Boolean
'* Returns True if the passed database is an MDE file
Dim varRet As Variant
On Error Resume Next
Err.Clear
'v10 - Allow for Access 2007 accde files
'If InStr(1, strProjectName & ";", ".mde;") Then
If InStr(1, strProjectName & ";", "de;") Then
    '* This is an .mde file
    SS_IsMDE = IIf(Err.Number = 0, True, False)
Else
    SS_IsMDE = False
End If
Err.Clear
On Error GoTo 0
End Function
Function SS_ActiveFormIsMaxed() As Integer
'* Returns true if there is an active form, and it is maximized.
Dim iActiveFormMaxed As Integer
Dim strTest As String
On Error Resume Next
iActiveFormMaxed = False

strTest = Screen.ActiveForm.name
If Err <> 0 Then
    Err.Clear
Else
    '* There is an active form
    'v10 - Handle tabbed forms
    'If SS_apiIsZoomed(Screen.ActiveForm.hWnd) Then
    If SS_apiIsZoomed(Screen.ActiveForm.hwnd) Or xg_IsTabbed(Screen.ActiveForm) Then
        '* ... and it is maximized
        iActiveFormMaxed = True
    Else
    End If
End If
SS_ActiveFormIsMaxed = iActiveFormMaxed
On Error GoTo 0
End Function
Function a_OpenDemoForm()

    SS_OpenForm "SSDemo"

End Function




Function SS_IsRelated(frm As Form, sParentFormName As String) As Integer
'* Returns true if passed form (frm) name is equal to,
'* or is a child of, sParentFormName
Dim iRtn As Integer
Dim s As String
Dim rFrm As Form

On Error GoTo Err_Section

iRtn = False
Set rFrm = frm
On Error Resume Next
Err.Clear

Do
    If rFrm.name = sParentFormName Then
        iRtn = True
        Exit Do
    End If
    '* Find parent form name
    Set rFrm = rFrm.Parent.Form
Loop Until Err <> 0

Select Case Err
Case 0
    '* All OK.
Case 2450, 2452
    '2450 can't find rfrm
    '2452 bad reference to parent property
Case Else
    MsgBox "Unexpected error in SS_IsRelated " & Err & " " & Err.Description
End Select
Err.Clear


Exit_Section:
    On Error Resume Next
    Set rFrm = Nothing
    SS_IsRelated = iRtn
    On Error GoTo 0
    Exit Function

Err_Section:
    MsgBox "Error in SS_IsRelated " & Err & " " & Err.Description
    Resume Exit_Section
End Function


Function SS_ProcUncommentedTextExists(mdl As Module, sProcName As String, sTextToFind As String) As Integer
'* Returns True if text is found in the specified procedure of the specified module
'Dim i As Integer
Dim lng As Long
Dim ipos As Integer
Dim sLines As String
Dim sline As String
Dim iRtn As Integer
On Error Resume Next
iRtn = False

'If SS_IsMDE(mdl.Application.CurrentProject.Name) Then
If SS_IsMDE(mdl.Application.CurrentProject.name) Or SysCmd(acSysCmdRuntime) Then
    GoTo Exit_Section
Else
End If
If Err <> 0 Then
    MsgBox "Error near top of SS_ProcUncommentedTextExists - " & Err & " " & Err.Description
    Err.Clear
End If

'* Loop through each proc line to see if the uncommented text exists
'* "0" substituted for vbext_pk_Proc which requires an additional reference
'For lng = mdl.ProcStartLine(sProcName, vbext_pk_Proc) To (mdl.ProcStartLine(sProcName, vbext_pk_Proc) + mdl.ProcCountLines(sProcName, vbext_pk_Proc))
For lng = mdl.ProcStartLine(sProcName, 0) To (mdl.ProcStartLine(sProcName, 0) + mdl.ProcCountLines(sProcName, 0))
    If Err <> 0 Then
        If Err = 35 Then
            '* Sub or function doesn't exist
            Err.Clear
        Else
            MsgBox "Error in function SS_ProcUncommentedTextExists " & Err & " " & Err.Description
            Err.Clear
        End If
        GoTo Exit_Section
    End If
    sline = mdl.Lines(lng, 1)
    
    ipos = InStr(1, sline, sTextToFind)
    If ipos > 0 Then
        'Check to see if this line is a comment
        If InStr(1, Mid(sline, 1, ipos), "'") Then
            '* It's a comment
        Else
            iRtn = True
            Exit For
        End If
    End If
Next lng

If Err <> 0 Then
    MsgBox "Error in SS_ProcUncommentedTextExists " & Err & " " & Err.Description
    Err.Clear
    GoTo Exit_Section
End If

Exit_Section:
    On Error Resume Next
    SS_ProcUncommentedTextExists = iRtn
    On Error GoTo 0
End Function
Function SS_FreezeAndResize(frm As Form)
'* v10
'* This routine can be used instead of SS_OnResize in the form OnTimer event procedure
'* when using ShrinkerStretcher in OneTimeOnly mode. It may reduce flickering.
On Error GoTo Unfreeze
   LockWindowUpdate Application.hWndAccessApp
    frm.TimerInterval = 0
    SS_OnResize frm
    DoEvents
Unfreeze:
    On Error Resume Next
    LockWindowUpdate 0
    On Error GoTo 0
End Function
Function SS_ResetDatasheet(frm As Form) As Integer
'* This is a routine to reset the datasheet after it has been scaled
Dim Marker As Integer
Dim Rtn As Integer
Dim iStartingRowHeight As Integer
Dim iBasisRowHeight As Integer
Dim dDSScaleFact As Double
Dim newfontsize As Single
Dim ctl As control

On Error GoTo Err_Section
Marker = 1

iBasisRowHeight = SS_SetDatasheetBasisRowHeight(frm)

'* Reset datasheet properties to pre-scaling values based on application default font
'* size, and expected basis row height
If SS_IsOn(frm, "ScaleFonts") Then
    newfontsize = Val(Application.GetOption("default font size"))
    If newfontsize < conMinimumFontSize Then
        frm.DatasheetFontHeight = conMinimumFontSize
    Else
        frm.DatasheetFontHeight = newfontsize
    End If
End If
iStartingRowHeight = iBasisRowHeight * (1 + ((frm.DatasheetFontHeight - 8) / 8))

'* v10
'* a RowHeight value of -1 means use default row height for this font
'If frm.RowHeight <> 0 Then
If frm.RowHeight > 0 Then
    dDSScaleFact = iStartingRowHeight / frm.RowHeight
Else
    dDSScaleFact = 1
End If

On Error Resume Next
'* v10 Loop through fewer controls
'* Reset column widths
'For Each ctl In frm.Controls
'    If ctl.Section = acDetail Then
'        ctl.ColumnWidth = ctl.ColumnWidth * dDSScaleFact
'    End If
'Next ctl
If dDSScaleFact <> 1 Then
    For Each ctl In frm.Section(acDetail).Controls
        ctl.ColumnWidth = ctl.ColumnWidth * dDSScaleFact
        
        '* Columnwidths of combo and list boxes are not reset here because these
        '* values don't stick like datasheet column widths and heights do
    
    Next ctl
End If

Err.Clear
Set ctl = Nothing
On Error GoTo Err_Section

'pddxxx v10
frm.RowHeight = iStartingRowHeight
''pddxxx v10 - reset datasheet
'If iBasisRowHeight = conDatasheetDefault8ptRowHeight Then
''If iBasisRowHeight = conDatasheetDefault10ptRowHeight Then
'    frm.RowHeight = -1
'Else
'    frm.RowHeight = iStartingRowHeight
'End If


Exit_Section:
    On Error Resume Next
    Set ctl = Nothing
    SS_ResetDatasheet = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in ss_ResetDatasheet (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function
Private Function xg_ThisIsTemp() As Boolean
On Error Resume Next
If Date > DateAdd("d", 3, #9/2/2007#) Then
    xg_ThisIsTemp = False
Else
    xg_ThisIsTemp = True
End If
On Error GoTo 0
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
Private Function xg_WhichVersionOfAccess(Optional intReturnShort As Integer = False) As String
'* If intReturnShort is true, a shortened Access versionis returned (2, 95, 97, 20, 22),
'* else the Access version (2, 95, 97, 2000, 2002)
'updated 11/7/07
Dim Marker As Integer

On Error GoTo Err_Section
Marker = 1

Dim sVer As String
Dim sVerShort As String

Select Case SysCmd(7)
    Case "2.0"
        sVer = "2"
        sVerShort = "2"
    Case "7.0"
        sVer = "95"
        sVerShort = "95"
    Case "8.0"
        sVer = "97"
        sVerShort = "97"
    Case "9.0"
        sVer = "2000"
        sVerShort = "20"
    Case "10.0"
        sVer = "2002"
        sVerShort = "22"
    Case "11.0"
        sVer = "2003"
        sVerShort = "23"
    Case "12.0"
        sVer = "2007"
        sVerShort = "27"
    '* This is just a guess about the next version:
    Case "13.0"
        sVer = "2010"
        sVerShort = "210"
    Case Else
        sVer = ""
End Select

Exit_Section:
    On Error Resume Next
    If intReturnShort Then
        xg_WhichVersionOfAccess = sVerShort
    Else
        xg_WhichVersionOfAccess = sVer
    End If
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in xg_WhichVersionOfAccess (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function
Private Function xg_GetActualCtlTop( _
    frm As Form, _
    pintSectionID As Integer, _
    pintRelativeCtlTop As Integer _
    ) As Long
'* Find the actual control top property, relative to the form window
Dim Marker As Integer
Dim Rtn As Long
Dim lTop As Long

On Error GoTo Err_Section
Marker = 1

lTop = 0
On Error Resume Next
Select Case pintSectionID
Case 0
    '* Detail
    '* Add form header to ctl height
    If frm.Section(1).visible Then
        lTop = lTop + frm.Section(1).Height
    End If
Case 1
    '* Form header
Case 2
    '* Form footer
    '* Add detail section, form header to ctl height
    If frm.Section(0).visible Then
        lTop = lTop + frm.Section(0).Height
    End If
    If frm.Section(1).visible Then
        lTop = lTop + frm.Section(1).Height
    End If
Case 3
    '* Page header
    '* Add form header to ctl height
    If frm.Section(1).visible Then
        lTop = lTop + frm.Section(1).Height
    End If
Case 4
    '* Page footer
    '* Add detail section, form header, page header to ctl height
    If frm.Section(1).visible Then
        lTop = lTop + frm.Section(1).Height
    End If
    If frm.Section(0).visible Then
        lTop = lTop + frm.Section(0).Height
    End If
    If frm.Section(3).visible Then
        lTop = lTop + frm.Section(1).Height
    End If
Case Else
End Select
Err.Clear
On Error GoTo Err_Section

lTop = lTop + pintRelativeCtlTop

Rtn = lTop

Exit_Section:
    On Error Resume Next
    xg_GetActualCtlTop = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in xg_GetActualCtlTop (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function
Private Function ng_GetAppInstallFolder() As String
'* This function finds the folder name where the specified (hardcoded below) application
'* was installed by retrieving the appropriate registry string value.
Dim s As String
Dim sRegKey As String
Dim strProcName As String
Dim strU As String

On Error Resume Next
strProcName = "ng_GetAppInstallFolder"

s = ""
strU = ""
Select Case APPSHORT
Case "LAS", "abs", "lm"
    sRegKey = REG_KEY_PREFIX
    'v10 All references to CurrentDb removed because they are not supported in .adp files
    'If CodeDb.Name <> CurrentDb.Name Then
    If Application.CodeProject.FULLNAME <> Application.CurrentProject.FULLNAME Then
        '* We're currently executing in a referenced library
        If Right(CodeDb.name, 2) = "de" Then
            '* We're an .mde or .accde file in a referenced library
            sRegKey = REG_KEY_PREFIX & " Shareware"
        Else
            '* We're an .mdb in a referenced library
            sRegKey = REG_KEY_PREFIX
        End If
    Else
        sRegKey = REG_KEY_PREFIX
    End If
Case "moe", "bp"
    '* These applications have the same install folder for all versions of Access
    sRegKey = REG_KEY_PREFIX
Case "ss"
    If Right(CodeDb.name, 2) = "de" Then
        sRegKey = REG_KEY_PREFIX & " Shareware"
    Else
        sRegKey = REG_KEY_PREFIX
        strU = "u"
    End If
Case Else
    sRegKey = REG_KEY_PREFIX & xg_WhichVersionOfAccess()
End Select

s = xg_GetRegKeyValueStr(sRegKey, "InstallFolder" & APPVER & strU)

'* Get rid of any trailing "Chr(0)'s"
Dim i As Integer
For i = VBA.Len(s) To 1 Step -1
    If VBA.Right(s, 1) = VBA.Chr(0) Then
        s = VBA.Left(s, VBA.Len(s) - 1)
    Else
        Exit For
    End If
Next i

If Err <> 0 Then
    MsgBox "Error " & Err & " in " & strProcName & " (1) " & Err.Description
    Err.Clear
    GoTo Exit_Section
End If

If Right(s, 1) = "\" Then
Else
    s = s & "\"
End If

Exit_Section:
    On Error Resume Next
    ng_GetAppInstallFolder = s
    On Error GoTo 0
End Function
Private Function xg_GetRegKeyValueStr( _
    strSubKey As String, _
    strValueName As String _
    ) As String
'* Get registry key value from CURRENT_USER, if found, otherwise look for value in
'* LOCAL_MACHINE key.
'updated 11/6/07

Dim l As Long
Dim hkeyResult As Long
Dim KeyValType As Long
Dim strTmpVal As String
Dim KeyValSize As Long
Dim Marker As Integer

On Error GoTo Err_Section
Marker = 1

strTmpVal = ""

'* Open specified reg key
l = RegOpenKeyEx(adhcHKEY_CURRENT_USER, strSubKey, 0, KEY_READ, hkeyResult)
Marker = 2
If l <> 0 Then
    l = RegOpenKeyEx(adhcHKEY_LOCAL_MACHINE, strSubKey, 0, KEY_READ, hkeyResult)
    Marker = 3
End If
Marker = 4
If l = 0 Then
Else
    GoTo Exit_Section
End If
Marker = 5

strTmpVal = String$(1024, 0)
KeyValSize = 1024

'* Get Reg Key value
l = RegQueryValueEx&(hkeyResult, strValueName, 0&, KeyValType, strTmpVal, KeyValSize)
Marker = 6
If l = 0 Then
Else
    strTmpVal = ""
    GoTo Exit_Section
End If
Marker = 7

'Win95 adds a null terminated string / NT does not
'So, we strip it off below, if we need to

If (Asc(Mid(strTmpVal, KeyValSize, 1)) = 0) Then
    strTmpVal = Left(strTmpVal, KeyValSize - 1)
Else
    strTmpVal = Left(strTmpVal, KeyValSize)
End If
Marker = 8

'* Close key
l = RegCloseKey(hkeyResult)
Marker = 9
If l = 0 Then
Else
    MsgBox "Error in xg_GetRegKeyValueStr (99): " & l
    GoTo Exit_Section
End If

Marker = 10

Exit_Section:
    On Error Resume Next
    xg_GetRegKeyValueStr = strTmpVal
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in xg_GetRegKeyValueStr (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section

End Function
Private Function xg_GetSubString(mainstr As String, n As Integer, delimiter As String) As String
'* Get the "n"-th substring from "mainstr" where strings are delimited by "delimiter"
    Dim i As Integer
    Dim substringcount As Integer
    Dim pos As Integer
    Dim strx As String
    Dim val1 As Integer
    Dim w As String

On Error GoTo Err_xg_GetSubString

w = ""
substringcount = 0
i = 1
pos = InStr(i, mainstr, delimiter)
Do While pos <> 0
    strx = Mid(mainstr, i, pos - i)
    substringcount = substringcount + 1
    If substringcount = n Then
        Exit Do
    End If
    i = pos + Len(delimiter)
    pos = InStr(i, mainstr, delimiter)
Loop

If substringcount = n Then
    xg_GetSubString = strx
Else
    strx = Mid(mainstr, i, Len(mainstr) + 1 - i)
    substringcount = substringcount + 1
    If substringcount = n Then
        xg_GetSubString = strx
    Else
        xg_GetSubString = ""
    End If
End If

On Error GoTo 0
Exit Function

Err_xg_GetSubString:
    MsgBox "xg_GetSubString " & Err & " " & Err.Description
    Resume Next

End Function

Public Function SS_BindFormEvents(ByRef rForm As Form, Optional varOpenArgs As Variant) As Boolean
'*  Purpose:    To bind the form events to the input form.
'*  Revised:    Peter De Baets 2/11/01
'*  Author:     Stuart Kinnear (included with permission)
'*  Passed:     rForm = form that events will be bound to.
'*  Returns:    True/False

On Error GoTo SS_BindFormEvents_err

    Dim objForm As clsSinkSSFormEvents
    Dim strForm As String
    Dim blnSuccess As Boolean
    
If conDebug = 1 Then MsgBox "SS_BindFormEvents for " & rForm.name
    
    SS_BindFormEvents = False
    
    If rForm Is Nothing Then
        GoTo SS_BindFormEvents_done
    End If
    
    strForm = rForm.name

    On Error Resume Next
    Set objForm = gcolForms.item(strForm)
    If Err = 0 Then
        blnSuccess = objForm.Init(rForm)
        If blnSuccess Then
            SS_BindFormEvents = True
        End If
    Else
        On Error GoTo SS_BindFormEvents_err
        Set objForm = New clsSinkSSFormEvents
        blnSuccess = objForm.Init(rForm, varOpenArgs)
        If blnSuccess Then
            SS_BindFormEvents = True
            gcolForms.Add objForm, strForm
        End If
    End If

SS_BindFormEvents_done:
    On Error Resume Next
    Set objForm = Nothing
    If conDebug = 1 Then MsgBox "Done with SS_BindFormEvents for " & rForm.name
    On Error GoTo 0
    Exit Function

SS_BindFormEvents_err:
    Select Case Err.Number
    Case Else
        MsgBox "Error in SS_BindFormEvents " & Err & " " & Err.Description
    End Select
    Resume SS_BindFormEvents_done
    Resume
End Function
Function SS_OpenForm(ByVal vstrForm As String, _
    Optional rstrView As String = acNormal, _
    Optional rstrFilterName As String, _
    Optional rstrWhereCondition As String, _
    Optional rvarDataMode As Variant = acFormPropertySettings, _
    Optional rvarWindowMode As Variant = acWindowNormal, _
    Optional rvarOpenArgs As Variant)
'*  Purpose:    To open a form using opening arguments, and automatically bind events to rescaling procedures.
'*  Revised:    Peter De Baets 2/11/01
'*  Author:     Stuart Kinnear (included with permission)
'*  Passed:     vstrForm = name of form
'*              Other arguments are similar to the DoCmd.OpenForm method.

    Dim objForm         As clsSinkSSFormEvents
    Dim varOpenArgs     As Variant
    Dim strFilterName   As String
    Dim strWhereCondition As String
    Dim varDataMode     As Variant
    Dim varWindowMode   As Variant
    Dim intOrigHadOnResizeEventProc As Integer
    'Dim strBindTest     As String
    Dim sTest           As String
    
    On Error GoTo Err_Section
    
    If conDebug = 1 Then MsgBox "SS_OpenForm for " & vstrForm
    
    If IsMissing(rstrFilterName) Then
        strFilterName = ""
    Else
        strFilterName = rstrFilterName
    End If
    
    If IsMissing(rstrWhereCondition) Then
        strWhereCondition = ""
    Else
        strWhereCondition = rstrWhereCondition
    End If
    
    varDataMode = rvarDataMode
    
    varWindowMode = rvarWindowMode
    
    If IsMissing(rvarOpenArgs) Then
        varOpenArgs = ""
    Else
        varOpenArgs = rvarOpenArgs
    End If
    
    Select Case varWindowMode
    Case acWindowNormal, acHidden
    Case Else
        MsgBox "The specified WindowMode parameter is not allowed when opening a form using SS_OpenForm." & vbCrLf & vbCrLf & _
            "Please check to see that you have the correct number of commas in your SS_OpenForm parameter list." & vbCrLf & vbCrLf & _
            "You may want to try another ShrinkerStretcher implementation method. " & _
            "More information is available in the help file, 'Implementation' section."
        varWindowMode = acWindowNormal
    End Select
    
    '* Turn Echo off prior to opening form.
    Application.Echo False, "Opening form..."
    
'-- Check to see if form is loaded
    If (0 <> SysCmd(acSysCmdGetObjectState, acForm, vstrForm)) Then
    '-- Form already open, hide it then show it if visible to
    '   trigger the activate event. The form's activate event
    '   will take care of any arguments forwarded to it.

        '* v10 Moved to below
        'Forms(vstrForm).Visible = False
        
    '-- If the resize conditions are different close & re-open form
        On Error Resume Next

        Set objForm = gcolForms.item(vstrForm)
        If Err = 0 Then
            If Not IsMissing(varOpenArgs) Then
                If Len(varOpenArgs & "") > 0 Then
                    If InStr(varOpenArgs & ";", "=" & objForm.ResizeState & ";") > 0 Then
                        '* v10
                        Forms(vstrForm).visible = False
                        Forms(vstrForm).visible = True
                        GoTo Exit_Section
                    Else
                        Forms(vstrForm).visible = False
                        DoCmd.Close acForm, vstrForm
                        DoCmd.OpenForm vstrForm, rstrView, strFilterName, strWhereCondition, varDataMode, , varOpenArgs
                    End If
                Else
                    '* v10
                    Forms(vstrForm).visible = False
                    Forms(vstrForm).visible = True
                    GoTo Exit_Section
                End If
            End If
        End If
    Else
        If SysCmd(acSysCmdAccessVer) = "8.0" Then   'Access 97
            DoCmd.OpenForm vstrForm, rstrView, strFilterName, strWhereCondition, varDataMode, , varOpenArgs
        Else
            If SS_ActiveFormIsMaxed Then
                '* Open the form hidden because the echo off above will not keep this form hidden.
                DoCmd.OpenForm vstrForm, rstrView, strFilterName, strWhereCondition, varDataMode, acHidden, varOpenArgs
            Else
                DoCmd.OpenForm vstrForm, rstrView, strFilterName, strWhereCondition, varDataMode, , varOpenArgs
            End If
        End If
    End If

'-- Check to see if form is loaded
    If (0 = SysCmd(acSysCmdGetObjectState, acForm, vstrForm)) Then
        Err.Raise 31000, , "Form cannot be opened."
    End If
    
    '* Fix problem with screen not being redrawn correctly in some circumstances.
    intOrigHadOnResizeEventProc = False
    If Forms(vstrForm).OnResize = "[Event Procedure]" Then
        intOrigHadOnResizeEventProc = True
    Else
    End If
    
    'strBindTest = Forms(vstrForm).OnResize
    
    '* If no module exists, then display error message
    If Forms(vstrForm).HasModule Then
        If SysCmd(acSysCmdAccessVer) = "8.0" Then   'Access 97
            '* Check for existing rescaling code
            If SS_ProcUncommentedTextExists(Forms(vstrForm).Module, "Form_Resize", "SS_OnResize ") _
                Or SS_ProcUncommentedTextExists(Forms(vstrForm).Module, "Form_Timer", "SS_OnResize ") Then
                '* Rescaling code already exists, so don't bind any new events
            Else
                '* Bind the form events
                SS_BindFormEvents Forms(vstrForm), varOpenArgs
            End If
        Else
            On Error Resume Next
            Err.Clear
            sTest = Forms(vstrForm).Module.name
            If Err <> 0 Then
                Err.Clear
                On Error GoTo Err_Section
                '* Must be an mde file, so bind the form events
                '* Distortions can occure when rescaling subroutine calls already exist
                '* in form OnResize, or OnTimer event proc.
                SS_BindFormEvents Forms(vstrForm), varOpenArgs
            Else
                On Error GoTo Err_Section
                '* Check for existing rescaling code
                If SS_ProcUncommentedTextExists(Forms(vstrForm).Module, "Form_Resize", "SS_OnResize ") _
                    Or SS_ProcUncommentedTextExists(Forms(vstrForm).Module, "Form_Timer", "SS_OnResize ") Then
                    '* Rescaling code already exists, so don't bind any new events
                    MsgBox "WARNING:  ShrinkerStretcher has detected that calls to rescaling " & _
                        "routines exist in this form's OnResize, or OnTimer event procedure. " & _
                        "Using the function 'SS_OpenForm' in conjunction with these calls " & _
                        "can cause scaling distortions in .MDE or .ACCDE files.", , "ShrinkerStretcher"
                    'MsgBox "WARNING:  ShrinkerStretcher has detected that calls to rescaling " & _
                    '    "routines exist in this form's OnResize, or OnTimer event procedure. " & _
                    '    "Using the function 'SS_OpenForm' in conjunction with these calls " & _
                    '    "can cause scaling distortions in .MDE files."
                Else
                    '* Bind the form events
                    SS_BindFormEvents Forms(vstrForm), varOpenArgs
                End If
            End If
        End If
    Else
        '* No form module, so can't bind events
        If InStr(1, varOpenArgs, "Resize=OneTimeOnly") Then
            '* No problem here because 'no module' forms behave the same as onetimeonly forms
        Else
            MsgBox "ShrinkerStretcher cannot rescale this form using the 'SS_OpenForm' function because the form has no module (HasModule Property = 'No'). " _
                & vbCrLf & vbCrLf & "Try setting the HasModule property to 'Yes'." _
                & vbCrLf & vbCrLf & "Form name = " & vstrForm
        End If
        '* Run the bind form event code to get the SS_OnOpen, and SS_OnResize code to execute from the
        '* init method.
        SS_BindFormEvents Forms(vstrForm), varOpenArgs
    End If

    '* Fix problem with screen not being redrawn correctly in some circumstances.
    If SysCmd(acSysCmdAccessVer) = "8.0" Then   'Access 97
        If intOrigHadOnResizeEventProc Then
            Application.Echo False
        Else
        End If
    Else
        Application.Echo False
    End If
    
    If varWindowMode = acHidden Then
        Forms(vstrForm).visible = False
    Else
        Forms(vstrForm).visible = True
    End If
    
    Application.Echo True
    
    If InStr(varOpenArgs & "", "Mode=DataSheet") > 0 Then
        RunCommand acCmdDatasheetView
    End If

Exit_Section:
    On Error Resume Next
    '* v10
    Set objForm = Nothing
    
    Application.Echo True
    If conDebug = 1 Then MsgBox "Done with SS_OpenForm for " & vstrForm
    On Error GoTo 0
    Exit Function

Err_Section:
    Application.Echo True
    
    Select Case Err
    Case 2501
        '* Open form was cancelled
    Case Else
        MsgBox "SS_OpenForm Error. Form " & vstrForm & " could not be opened." & _
                vbCrLf & vbCrLf & "Error: " & Err & " - " & Err.Description
    End Select
    
    Resume Exit_Section
    Resume
End Function
Function SS_GetFormHeight(frm As Form) As Integer
'* Compute the height of a form
Dim iHt As Integer
Dim i As Integer
On Error Resume Next
iHt = 0
For i = 0 To 4
    If frm.Section(i).visible Then
        iHt = iHt + frm.Section(i).Height
    End If
Next i
SS_GetFormHeight = iHt
On Error GoTo 0
End Function


Function SS_RestoreFormsFromBackups(Optional pstrFormName As String = "") As Integer
'* Loop through all form names and restore all forms that were statically
'* rescaled. These forms will have backups named "<formname> (SSOriginal)"
'* This routine will delete "<formname>", then rename "<formname> (SSOriginal)"
'* to "<formname>"
'* Returns true if all forms were restored, false if there was a problem.
Dim obj As AccessObject, prj As Object
Dim intLen As Integer
Dim strProcName As String
Dim strNewName As String
Dim intRtn As Integer
Dim blnFinished As Boolean
Dim blnSkip As Boolean

On Error Resume Next
strProcName = "SS_RestoreFormsFromBackups"
intRtn = True
blnFinished = False

Set prj = Application.CurrentProject
If Err <> 0 Then
    SS_ErrorMessage strProcName & " (1)"
    GoTo Exit_Section
End If
' Search for open AccessObject objects in AllForms collection.
intLen = Len(conStaticScaleBackupSuffix)
Do While Not blnFinished
    blnFinished = True
    For Each obj In prj.AllForms
        If Right(obj.name, intLen) = conStaticScaleBackupSuffix Then
            '* Found a static scaled backup form, so delete current version and rename backup
            '* Delete current version
            strNewName = Left(obj.name, Len(obj.name) - intLen)
            blnSkip = False
            If pstrFormName = "" Then
            Else
                If strNewName = pstrFormName Then
                Else
                    blnSkip = True
                End If
            End If
            If blnSkip Then
            Else
                DoCmd.DeleteObject acForm, strNewName
                If Err <> 0 Then
                    SS_ErrorMessage strProcName & " (2)"
                    MsgBox "There was a problem restoring " & obj.name
                    intRtn = False
                Else
                    '* Deleted OK. Now rename backup
                    DoCmd.Rename strNewName, acForm, obj.name
                    If Err <> 0 Then
                        SS_ErrorMessage strProcName & " (3)"
                        MsgBox "There was a problem while restoring " & obj.name & ".  " & _
                            "You will need to rename this form manually to '" & strNewName & "'."
                        intRtn = False
                    Else
                        '* Restored OK
                        blnFinished = False
                        Exit For
                    End If
                End If
            End If
        Else
        End If
    Next obj
Loop

Exit_Section:
    On Error Resume Next
    Set obj = Nothing
    Set prj = Nothing
    SS_RestoreFormsFromBackups = intRtn
    On Error GoTo 0

End Function

Function SS_SetDatasheetBasisRowHeight(frm As Form) As Integer
'* This function sets the Datasheet Basis Row Height for the form being scaled.
'*
'* SPECIAL INSTRUCTIONS: If you have a datasheet subform to be scaled whose row height is such that
'* more than one horizontal line of text is displayed, you need to put that subform name in the
'* Select case statement below and specify the basis row height by taking the number of lines
'* displayed in the datasheet row and multiply by 225. Some examples are shown below.
'*
On Error GoTo Err_Section
Dim iRtn As Integer
Select Case frm.name
'Case "MyDatasheetSubformWith2LinesPerRow"
'    iRtn = 450   'Double line (225 * 2 = 450)
'Case "MyDatasheetSubformWith3LinesPerRow"
'    iRtn = 675   'Triple line (225 * 3 = 675)
'* Provide for a way to make slight adjustments in datasheet row height and width
'* Reducing the basis row height will reduce the height of the datasheet rows in relation to
'* the datasheet font. It will also squeeze the datasheet column widths, so they will have to
'* be adjusted after making a change such as the one below.
'Case "SSDatasheet"
'    iRtn = 225 * 0.9   '* Reduce basis row height by 10%
Case "SSDatasheet2"
    iRtn = 450   'Double line (225 * 2 = 450)
Case Else
    '* Use the default basis row height
    'pddxxx v10 - Reset datasheet
    iRtn = conDatasheetDefault8ptRowHeight
    'iRtn = conDatasheetDefault10ptRowHeight
End Select

Exit_Section:
    On Error Resume Next
    SS_SetDatasheetBasisRowHeight = iRtn
    On Error GoTo 0
    Exit Function

Err_Section:
    MsgBox "Error in SS_SetDatasheetBasisRowHeight " & Err & " " & Err.Description
    Resume Exit_Section
    Resume
End Function

Sub SS_SizeWindow(sWindow As String, x As Integer, Y As Integer, cx As Integer, cy As Integer)
'* Size the active form window, or the main Access window.
'* Parameter sWindow:  "Active" - Size the active form window.
'*                     "Access" - Size the main Access window.
'*                 x:  left boundry for window (pixels)
'*                 y:  top boundry for window
'*                cx:  width of window
'*                cy:  height of window
Dim iRtn As Integer
Dim lrtn As Long
Dim hWndSize As Long
Dim SShDCcaps As Long
Dim SShDesktopWnd As Long
Dim DisplayWidth As Long
Dim DisplayHeight As Long

On Error GoTo Err_Section

If sWindow = "Active" Then
    hWndSize = Screen.ActiveForm.hwnd
ElseIf sWindow = "Access" Then
    hWndSize = Application.hWndAccessApp
    '* make API calls to get desktop settings
    SShDesktopWnd = SS_apiGetDesktopWindow() 'get handle to desktop
    SShDCcaps = SS_apiGetDC(SShDesktopWnd) 'get display context for desktop
    DisplayHeight = SS_apiGetDeviceCaps(SShDCcaps, SS_VERTRES) 'vertical resolution
    DisplayWidth = SS_apiGetDeviceCaps(SShDCcaps, SS_HORZRES) 'horizontal resolution
    lrtn = SS_apiReleaseDC(SShDesktopWnd, SShDCcaps) 'release display contex
    If (cx = DisplayWidth) And (cy = DisplayHeight) Then
        'maximize Access window
        iRtn = SS_apiShowWindow(hWndSize, SS_SW_MAXIMIZE)
        GoTo Exit_Section
    Else
        If (cx > DisplayWidth) Or (cy > DisplayHeight) Then
            Beep
            MsgBox "Cannot size Access window beyond desktop area."
            GoTo Exit_Section
        Else
        End If
    End If
Else
    MsgBox "Invalid parameter passed to SS_SizeWindow = " & sWindow
    GoTo Exit_Section
End If

iRtn = SS_apiShowWindow(hWndSize, SS_SW_RESTORE)

Call SS_apiSetWindowPos(hWndSize, 0, x, Y, cx, cy, SS_SWP_NOZORDER Or SS_SWP_SHOWWINDOW)

Exit_Section:
    On Error GoTo 0
    Exit Sub

Err_Section:
    MsgBox "Error in SS_SizeWindow - " & Err & " " & Err.Description
    Resume Exit_Section
End Sub
Sub SS_SaveFormInsideSettings(frm As Form)
'* Get these starting values for non-autoresize scaling. Save them in form tag property
Dim i As Integer
On Error GoTo Err_Section
'* Check for old SSInfo string in tag property
i = InStr(1, frm.tag, "SSInfo:")
If i > 0 Then
    '* Remove old "SSInfo" from tag property
    '* Assumes that "SSInfo:" is at far right of any tag string
    frm.tag = Left(frm.tag, i - 1)
End If
frm.tag = frm.tag & "SSInfo:fiw=" & frm.InsideWidth & _
    ",fih=" & frm.InsideHeight & ";"

Exit_Section:
    On Error GoTo 0
    Exit Sub

Err_Section:
    MsgBox "Error in SS_SaveFormInsideSettings " & Err & " " & Err.Description
    Resume Exit_Section

End Sub

Function SS_GetWordsBetween(sMain As String, s1 As String, s2 As String) As String
'* Returns a trimmed substring of the string 'sMain' that lies between substrings s1 and s2
'* Ex.: xg_GetWordsBetween("The Lazy Fox", "The", "Fox") returns "Lazy".
On Error Resume Next
Dim iStart As Integer, iEnd As Integer

iStart = InStr(1, sMain, s1) + Len(s1)
iEnd = InStr(iStart, sMain, s2)
SS_GetWordsBetween = Trim(Mid(sMain, iStart, iEnd - iStart))
    
Err.Clear
On Error GoTo 0
End Function
Sub SS_MsgBox(strPrompt As String)
'* Open the custom msgbox form, and display the passed message.
Dim sPrompt As String
On Error GoTo Err_SS_MsgBox

If IsNull(strPrompt) Then
    sPrompt = ""
Else
    sPrompt = Trim(strPrompt)
End If

DoCmd.OpenForm "SSMsgbox", acNormal, , , , acDialog, sPrompt

Exit_SS_MsgBox:
    On Error GoTo 0
    Exit Sub
Err_SS_MsgBox:
    MsgBox "Error " & Err & " in SS_MsgBox - " & Err.Description
    Resume Exit_SS_MsgBox
End Sub




Sub SS_OnResize(frm As Form, _
    Optional iOriginalDisplayResolutionWidth As Integer = conOrigWd, _
    Optional iOriginalDisplayResolutionHeight As Integer = conOrigHt, _
    Optional iHandleEchoInternally As Integer = True)
'* Call the SS_Rescale subform, and handle screen echo before and after the call

On Error GoTo Err_SS_OnResize

'* Turning echo off here will eliminate visual "flickering".
If iHandleEchoInternally Then Application.Echo False, "ShrinkerStretcher..."

On Error Resume Next
'**********************************************************************
'* If you get a runtime error on the line below, it is likely that you
'* have the "Break On All Errors" option turned on. To disable this option
'* you need to:
'*
'* 1. Click Tools > Options, General Tab, Error Trapping box, then
'*    check "Break on unhandled errors".
'*
SS_ScrollToHome Screen.ActiveControl
'*
'**********************************************************************
Err.Clear
On Error GoTo Err_SS_OnResize

SS_Rescale frm, iOriginalDisplayResolutionWidth, iOriginalDisplayResolutionHeight, iHandleEchoInternally

Exit_SS_OnResize:
    On Error Resume Next
    If SysCmd(acSysCmdAccessVer) = "8.0" Then   'Access 97
        If iHandleEchoInternally Then Application.Echo True
    Else
        If SSKeepEchoOff Then
        Else
            If iHandleEchoInternally Then Application.Echo True
        End If
    End If
    On Error GoTo 0
    Exit Sub

Err_SS_OnResize:
    MsgBox "Error " & Err & " in SS_OnResize - " & Err.Description
    Resume Exit_SS_OnResize
End Sub
Sub SS_SetFontSize(frm As Form, ctl As control, Optional pblnChangeFonts As Boolean = True)
'* Scale font for the passed control by using entries in the the Font Ratio (FR) array.
Dim FRsub As Integer
Dim T1 As String
Dim T2 As String
Dim newfontsize As Single

On Error GoTo Err_SS_SetFontSize

'* if conScaleFonts constant is false, then skip font scaling.
'* v10 - Removed to improve performance. This logic moved to outside of any loops.
'If SS_IsOn(frm, "ScaleFonts") Then
'Else
'    '* Skip font scaling
'    GoTo Exit_SS_SetFontSize
'End If

'* Find entry corresponding to the current control in the FR array.
T1 = frm.name
T2 = ctl.name
FRsub = SS_FindFRRow(T1, T2, FRsub)
'* Get fonts to jump down to smaller size a bit earlier
'* This should minimize the problem of text getting "cut off" by control borders.
'newfontsize = ctl.height * FR(FRsub).fontratio     <== old way
newfontsize = (ctl.Height * FR(FRsub).FontRatio) - 0.4

'* Fonts can't be shrunk smaller than a minimum font size.
If newfontsize < conMinimumFontSize Then newfontsize = conMinimumFontSize

If pblnChangeFonts Then
    If TypeOf ctl Is ObjectFrame Then
        '* No font associated with object frames
    Else
        '* Change font if current font does not have small sizes.
        If newfontsize < 7.5 And FR(FRsub).FontName = "MS Sans Serif" Then
            ctl.FontName = "Arial"
        ElseIf newfontsize < 9.5 And FR(FRsub).FontName = "System" Then
            ctl.FontName = "Arial"
        Else
            ctl.FontName = FR(FRsub).FontName
        End If
    End If
End If
If newfontsize > 0.5 And newfontsize < 127.5 Then
    '* Control may have ".fontsize" property, or may have ".font.size" property, or something
    '* else, so handle as many as possible. 3 different variations are handled below.
    On Error Resume Next
    ctl.FontSize = newfontsize
    If Err = 0 Then
    Else
        If Err = 438 Or Err = 2455 Then
            '* Control does not have this property associated to it.
            '* Look for the control object font size property...
            Err.Clear
            ctl.Object.Font.Size = newfontsize  '* This may work for some ActiveX controls (like TreeView)
            If Err = 0 Then
            Else
                Select Case Err
                Case 438, 2455
                    '* Control does not have property associated to it.
                Case 2684
                    '* The OLE object is empty
                Case 2774
                    '* The component doesn't support Automation.
                Case Else
                    '* Ignore error, and continue
                End Select
                Err.Clear
                ctl.Object.FontSize = newfontsize
                If Err = 0 Then
                Else
                    '* Ignore any error
                End If
            End If
        Else
            MsgBox "Error in SS_SetFontSize (2) - " & Err & " " & Err.Description
        End If
        Err.Clear
    End If
End If

'If conDebugFont Then Debug.Print ctl.Name & ": old=" & oldfontsize & " new=" & newfontsize
If conDebugFont Then Debug.Print "  t1=" & T1 & "  t2=" & T2 & "  " & FR(FRsub).ControlName & "  " & ctl.Height & "  " & FR(FRsub).FontRatio

Exit_SS_SetFontSize:
    On Error GoTo 0
    Exit Sub
    
Err_SS_SetFontSize:
    If Err = 438 Then
        '* control does not this property associated to it
        Resume Next
    ElseIf Err = 2455 Then
        '* control does not have a font associated to it
        Resume Next
    Else
        MsgBox "Error in SS_SetFontSize - " & Err & " " & Err.Description
    End If
    GoTo Exit_SS_SetFontSize
End Sub


Sub SS_StaticResize(passedfrm As Form)
'* Makes a backup of form if one does not already exist, then rescales
'* and saves form.
Dim i As Integer
Dim FoundIt As Integer
Dim sNameToFind As String
Dim sCurrFormName As String
Dim frm As Form
Dim iZoomed As Integer
Dim Marker As Integer

On Error GoTo Err_Section
Marker = 1

Set frm = passedfrm

'* Make a backup copy of the current form if one does not exist!
FoundIt = False
Marker = 2
sNameToFind = frm.name & conStaticScaleBackupSuffix

Marker = 3
For i = 0 To (Application.CurrentProject.AllForms.Count - 1)
    If Application.CurrentProject.AllForms(i).name = sNameToFind Then
        FoundIt = True
        Exit For
    End If
Next i

Marker = 4
If FoundIt = True Then
    '* Backup copy already exists
Else
    '* No backup exists, copy the current form to "<formname> (SSOriginal)"
    sCurrFormName = frm.name
    Marker = 5
    DoCmd.CopyObject , sCurrFormName & conStaticScaleBackupSuffix, acForm, sCurrFormName
End If

'* save current zoom status
iZoomed = False
'* v10 - Handle tabbed forms
'If SS_apiIsZoomed(frm.hWnd) Then iZoomed = True
Marker = 6
If SS_apiIsZoomed(frm.hwnd) Or xg_IsTabbed(frm) Then iZoomed = True

'* rescale form
SSStaticResize = True
Marker = 7
SS_OnOpen frm
Marker = 8
If (InStr(1, frm.tag, "SSMaximize", 1) <> 0) _
Or (InStr(1, frm.tag, "SSEnableMaximize", 1) <> 0) Then
    'pddxxx The code below could be used to scale non maximized forms to screen dimensions
    '    a third possibility?
    DoCmd.Maximize
    'DoCmd.MoveSize 0, 0, DisplayWidth * SSTwipsPerPixel, _
    '    DisplayHeight * SSTwipsPerPixel
Else
    DoCmd.Restore
End If
Marker = 9
SS_Rescale frm, conOrigWd, conOrigHt
SSStaticResize = False

'* save the form
Marker = 10
DoCmd.DoMenuItem A_FORMBAR, A_FILE, A_SAVEFORM

'* restore zoom status
Marker = 11
If iZoomed Then
    DoCmd.Maximize
Else
    DoCmd.Restore
End If

Marker = 12

Exit_Section:
    On Error Resume Next
    Set frm = Nothing
    
    On Error GoTo 0
    Exit Sub

Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in SS_StaticResize (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    If conExitOnError Then
        Resume Exit_Section
    Else
        Resume Next
    End If
End Sub


Function SS_RescaleForms(WhichOnes As String) As Integer
'* Statically rescales and saves all forms, marked forms, or an individual form.
'*
'* Saves a copy (gives it the name: "<formname> SSOriginal") of each form that
'* is processed.
'*
'* The "WhichOnes" parameter can be set to:
'*      "ALL"       - to process all forms (except those suffixed with "SSOriginal"),
'*      "Marked"    - to process all forms marked with "SSStaticRescale" in form tag
'*                      property (except those suffixed with "SSOriginal"),
'*      "<frmname>" - to process "<frmname>".
'*
'* NOTES:  This function can be executed via a macro ("=SS_RescaleForms('all')" or
'* "=SS_RescaleForms('marked')") at application startup to statically rescale forms
'* to fit the resolution of the user's screen.
'*
'* If your form contains subform controls, then you will also want to include the
'* ShrinkerStretcher subroutine calls in your (parent) form's OnOpen and OnResize event
'* procedures. Otherwise, when static resizing using this function, it is not
'* necessary to include these subroutine calls in your form.
'*
'* Include the text "SSMaximize" in your form tag property if you are statically
'* rescaling your forms and you intend for your form to be maximized when opened.
'*
'* If the constant "conCheckClientArea" is true, this function will maintain a table
'* that holds the right and bottom values for the Access window client area rectangle,
'* and will only execute if this area has changed since last time.
'*
'* If the constant "conSSVerbose" is true, then informational messages will be
'* generated, so, for automatic execution, set "conSSVerbose" to false.
'*
'pddxxx adox info is here - http://www.microsoft.com/data/ado/adotechinfo/dao2ado_4.htm


#If DAO_OR_ADO = "ADO" Then
'* ADO code goes here


Const SSTableName = "tSSClientRectSize"

Dim i As Integer
Dim icount As Integer
Dim frm As Form
Dim cnn As Connection
Dim iresp As Integer
Dim vrtn As Variant
Dim frmname As String
Dim frmToRescale As String
Dim FoundIt As Integer
Dim stabname As String
Dim AccessClientRect As SS_Rect
Dim cat As New ADOX.Catalog
Dim tbl As ADOX.table
Dim tblnew As New ADOX.table
Dim MySet As New ADODB.Recordset
Dim iEchoOff As Integer
Dim lrtn As Long
Dim strProcName As String

On Error Resume Next

strProcName = "SS_RescaleForms"
iEchoOff = False

If conCheckClientArea Then

    FoundIt = False
    Set cnn = CurrentProject.Connection
    If Err <> 0 Then
        '* There may not be a connection to SQL server database (adp files
        '* only), or could be some other error. Anyway, we can't tell if
        '* the tSSClientRectSize table exists
        Err.Clear
    Else
        '* Connection exists
        '* Get catalog
        cat.ActiveConnection = cnn
        If Err <> 0 Then
            SS_ErrorMessage strProcName & " (1)"
            GoTo Exit_Section
        End If

        '* Check to see if tSSClientRectSize table exists
        '* (pddxxx - maybe this could be replaced with code from Dev's site)
        '* (cat is used to create a new table, below. Could use registry
        '* settings instead to eliminate need for ADOX).
        For Each tbl In cat.Tables
            If tbl.Type <> "VIEW" Then
                If tbl.name = SSTableName Then
                    FoundIt = True
                    Exit For
                End If
            End If
        Next
        If Err <> 0 Then
            SS_ErrorMessage strProcName & " (2)"
            GoTo Exit_Section
        End If

        '* Check to see if client area rectangle size has changed. Rescale only if size is different.
        '* Find the size of the current Access window client area rectangle
        Call SS_apiGetClientRect(Application.hWndAccessApp, AccessClientRect)
        If Err <> 0 Then
            SS_ErrorMessage strProcName & " (3)"
            GoTo Exit_Section
        End If
    
        If FoundIt Then
            '* The client rectangle size table exists, read old client rect values from table
            MySet.Open SSTableName, cnn, adOpenKeyset, adLockOptimistic
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (4)"
                GoTo Exit_Section
            End If
            MySet.MoveFirst
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (5)"
                GoTo Exit_Section
            End If
            '* if new = old, there is no need to rescale, so exit function
            If MySet!Right = AccessClientRect.Right Then
                If MySet!Bottom = AccessClientRect.Bottom Then
                    '* Client area rectangle has not changed since last rescaling
                    If conSSVerbose Then
                        iresp = MsgBox("Client area rectangle has not changed since last rescaling. Would you like to rescale anyway?.", 4, "ShrinkerStretcher")
                        If iresp = 6 Then   '* yes
                            '* Rescale anyway
                        Else
                            '* Skip rescaling
                            MySet.Close
                            GoTo Exit_Section
                        End If
                    Else
                        '* Skip rescaling
                        MySet.Close
                        GoTo Exit_Section
                    End If
                End If
            End If
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (6)"
                GoTo Exit_Section
            End If
        Else
            '* The client rectangle size table does not exist, so create it, and update fields
            With tblnew
                .name = SSTableName
                .Columns.Append "Right", adInteger
                .Columns.Append "Bottom", adInteger
            End With
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (7)"
                GoTo Exit_Section
            End If
            '* Save Table definition by appending it to Tables catalog.
            cat.Tables.Append tblnew
            If Err <> 0 Then
                '* This error may occur when there is no connection to a
                '* SQL server database (adp files).
                SS_ErrorMessage strProcName & " (8)"
                GoTo Exit_Section
            End If
            
            '* Open table and prepare new record for update
            MySet.Open SSTableName, cnn, adOpenKeyset, adLockOptimistic
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (9)"
                GoTo Exit_Section
            End If
            MySet.AddNew
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (10)"
                GoTo Exit_Section
            End If
        End If
        
        '* Update table with current values
        MySet!Right = AccessClientRect.Right
        MySet!Bottom = AccessClientRect.Bottom
        MySet.Update
        MySet.Close
        If Err <> 0 Then
            SS_ErrorMessage strProcName & " (11)"
            GoTo Exit_Section
        End If
    End If
Else
    If FoundIt Then
        '* delete table if CheckClientArea constant is not set.
        cat.Tables.Delete SSTableName
        If Err <> 0 Then
            SS_ErrorMessage strProcName & " (12)"
            GoTo Exit_Section
        End If
    End If
End If

FoundIt = True
icount = 0
If WhichOnes = "All" Then
    '* All forms (except those suffixed with "SSOriginal") will be processed.
Else
    If WhichOnes = "Marked" Then
        '* All forms Marked with "SSStaticRescale" in form tag property (except
        '* those suffixed with "SSOriginal") will be processed.
    Else
        If conSSdemo Then
            If Left(WhichOnes, 2) = "SS" Then
                '* Only let SS forms in on the fun.
            Else
                Beep
                MsgBox "ShrinkerStretcher - This function only works on the demo forms in the unregistered version."
                GoTo Exit_Section
            End If
        End If
        '* Passed parameter holds form to be processed.
        frmToRescale = WhichOnes
        FoundIt = False     '* individual form to be rescaled has not yet been found
    End If
End If
If Err <> 0 Then
    SS_ErrorMessage strProcName & " (13)"
    GoTo Exit_Section
End If

Application.Echo False, "ShrinkerStretcher Static Resize..."
iEchoOff = True

'* Loop through all forms in current database
'* All references to currentdb removed. They are not supported
'* in adp files. Use Application.CurrentProject.AllForms method instead.
'For i = 0 To (CurrentDb().Containers!Forms.Documents.Count - 1)
'    frmname = CurrentDb().Containers!Forms.Documents(i).Name
For i = 0 To (Application.CurrentProject.AllForms.Count - 1)
    frmname = Application.CurrentProject.AllForms(i).name

    'MsgBox "Processing " & frmname
    vrtn = SysCmd(SYSCMD_SETSTATUS, "Checking " & frmname)

    If (InStr(1, frmname, conStaticScaleBackupSuffix, 1) <> 0) Then
        '* Skip static rescaling of original versions of forms
    Else
        If WhichOnes = "All" Then
            '* Process All forms (except original versions)
            DoCmd.OpenForm frmname, acDesign, , , , acNormal
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (14)"
                GoTo Exit_Section
            End If
            Set frm = Forms(frmname)
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (15)"
                GoTo Exit_Section
            End If
            lrtn = SS_apiShowWindow(frm.hwnd, SS_SW_HIDE)
            SS_StaticResize frm
            DoCmd.Close acForm, frmname
            If Err <> 0 Then
                SS_ErrorMessage strProcName & " (16)"
                GoTo Exit_Section
            End If
            icount = icount + 1
        Else
            If WhichOnes = "Marked" Then
                '* Process Marked forms (except original versions)
                DoCmd.OpenForm frmname, acDesign, , , , acNormal
                If Err <> 0 Then
                    SS_ErrorMessage strProcName & " (17)"
                    GoTo Exit_Section
                End If
                Set frm = Forms(frmname)
                If Err <> 0 Then
                    SS_ErrorMessage strProcName & " (18)"
                    GoTo Exit_Section
                End If
                lrtn = SS_apiShowWindow(frm.hwnd, SS_SW_HIDE)
                If (InStr(1, frm.tag, "SSStaticRescale", 1) <> 0) _
                Or (InStr(1, frm.tag, "SSEnableStaticRescale", 1) <> 0) Then
                    SS_StaticResize frm
                    icount = icount + 1
                End If
                DoCmd.Close acForm, frmname
                If Err <> 0 Then
                    SS_ErrorMessage strProcName & " (19)"
                    GoTo Exit_Section
                End If
            Else
                '* Process the passed form
                If frmname = frmToRescale Then
                    FoundIt = True
                    DoCmd.OpenForm frmname, acDesign, , , , acNormal
                    If Err <> 0 Then
                        SS_ErrorMessage strProcName & " (20)"
                        GoTo Exit_Section
                    End If
                    Set frm = Forms(frmname)
                    If Err <> 0 Then
                        SS_ErrorMessage strProcName & " (21)"
                        GoTo Exit_Section
                    End If
                    lrtn = SS_apiShowWindow(frm.hwnd, SS_SW_HIDE)
                    SS_StaticResize frm
                    DoCmd.Close acForm, frmname
                    If Err <> 0 Then
                        SS_ErrorMessage strProcName & " (22)"
                        GoTo Exit_Section
                    End If
                    icount = icount + 1
                End If
            End If
        End If
    End If
Next i

If Not FoundIt Then
    Beep
    MsgBox "SS_RescaleForms function could not find the form you specified - '" & frmToRescale & "'."
End If

vrtn = SysCmd(SYSCMD_CLEARSTATUS)
Application.Echo True
iEchoOff = False

If conSSVerbose Then
    MsgBox "ShrinkerStretcher rescaled " & str(icount) & " form(s)."
End If

If Err <> 0 Then
    SS_ErrorMessage strProcName & " (23)"
    GoTo Exit_Section
End If

Exit_Section:
    '* Clean up some object variables
    On Error Resume Next
    Set cnn = Nothing
    Set MySet = Nothing
    Set frm = Nothing
    Set cat = Nothing
    Set tbl = Nothing
    
    If iEchoOff Then
        Application.Echo True
        iEchoOff = False
    End If
    On Error GoTo 0
    Exit Function

Err_Section:
    If Err = 2475 Then
        '* No form is currently open
        GoTo Exit_Section
    ElseIf Err = 3021 Then
        '* no current record.
        Resume Next
    Else
        MsgBox "SS_RescaleForms " & Err & " " & Err.Description
        If conExitOnError Then
            GoTo Exit_Section
        Else
            Resume Next
        End If
    End If


#Else
'* DAO code goes here


Const SSTableName = "tSSClientRectSize"
Dim i As Integer
Dim icount As Integer
Dim l As Long
Dim frm As Form
Dim dbs As DAO.Database
Dim iresp As Integer
Dim vrtn As Variant
Dim frmname As String
Dim frmToRescale As String
Dim FoundIt As Integer
Dim stabname As String
Dim AccessClientRect As SS_Rect
Dim MyTableDef As TableDef, MyField As Field
Dim MySet As DAO.Recordset
Dim iEchoOff As Integer
Dim lrtn As Long

On Error GoTo Err_SS_RescaleForms
iEchoOff = False

Set dbs = CurrentDb()

'* Check to see if tSSClientRectSize table exists
FoundIt = False
For i = 0 To (dbs.TableDefs.Count - 1)
    If dbs.TableDefs(i).name = SSTableName Then
        FoundIt = True
        Exit For
    End If
Next i

If conCheckClientArea Then
    '* Check to see if client area rectangle size has changed. Rescale only if size is different.
    '* Find the size of the current Access window client area rectangle
    Call SS_apiGetClientRect(Application.hWndAccessApp, AccessClientRect)

    If FoundIt Then
        '* The client rectangle size table exists, read old client rect values from table
        Set MySet = dbs.OpenRecordset(SSTableName, DB_OPEN_DYNASET)
        MySet.MoveFirst
        '* if new = old, there is no need to rescale, so exit function
        If MySet!Right = AccessClientRect.Right Then
            If MySet!Bottom = AccessClientRect.Bottom Then
                '* Client area rectangle has not changed since last rescaling
                If conSSVerbose Then
                    iresp = MsgBox("Client area rectangle has not changed since last rescaling. Would you like to rescale anyway?.", 4, "ShrinkerStretcher")
                    If iresp = 6 Then   '* yes
                        '* Rescale anyway
                    Else
                        '* Skip rescaling
                        MySet.Close
                        GoTo Exit_SS_RescaleForms
                    End If
                Else
                    '* Skip rescaling
                    MySet.Close
                    GoTo Exit_SS_RescaleForms
                End If
            End If
        End If

        '* Prepare record for update
        MySet.Edit
    Else
        '* the client rectangle size table does not exist, so create it, and update fields
        '* Create new TableDef.
        Set MyTableDef = dbs.CreateTableDef(SSTableName)
        '* Add fields to MyTableDef.
        Set MyField = MyTableDef.CreateField("Right", DB_INTEGER)
        MyTableDef.Fields.Append MyField
        Set MyField = MyTableDef.CreateField("Bottom", DB_INTEGER)
        MyTableDef.Fields.Append MyField
        '* Save TableDef definition by appending it to TableDefs collection.
        dbs.TableDefs.Append MyTableDef

        '* Open table and prepare new record for update
        Set MySet = dbs.OpenRecordset(SSTableName, DB_OPEN_DYNASET)
        MySet.AddNew
    End If
    
    '* Update table with current values
    MySet!Right = AccessClientRect.Right
    MySet!Bottom = AccessClientRect.Bottom
    MySet.Update
    MySet.Close
Else
    If FoundIt Then
        '* delete table if CheckClientArea constant is not set.
        dbs.TableDefs.Delete SSTableName
    End If
End If

FoundIt = True
icount = 0
If WhichOnes = "All" Then
    '* All forms (except those suffixed with "SSOriginal") will be processed.
Else
    If WhichOnes = "Marked" Then
        '* All forms Marked with "SSStaticRescale" in form tag property (except
        '* those suffixed with "SSOriginal") will be processed.
    Else
        If conSSdemo Then
            If Left(WhichOnes, 2) = "SS" Then
                '* Only let SS forms in on the fun.
            Else
                Beep
                MsgBox "ShrinkerStretcher - This function only works on the demo forms in the unregistered version."
                GoTo Exit_SS_RescaleForms
            End If
        End If
        '* Passed parameter holds form to be processed.
        frmToRescale = WhichOnes
        FoundIt = False     '* individual form to be rescaled has not yet been found
    End If
End If

Application.Echo False, "ShrinkerStretcher Static Resize..."
iEchoOff = True

'* Loop through all forms in current database
For i = 0 To (dbs.Containers!Forms.Documents.Count - 1)
    frmname = dbs.Containers!Forms.Documents(i).name
    'MsgBox "Processing " & frmname
    vrtn = SysCmd(SYSCMD_SETSTATUS, "Checking " & frmname)

    If (InStr(1, frmname, "(SSOriginal)", 1) <> 0) Then
        '* Skip static rescaling of original versions of forms
    Else
        If WhichOnes = "All" Then
            '* Process All forms (except original versions)
            DoCmd.OpenForm frmname, acDesign, , , , acNormal
            Set frm = Forms(frmname)
            lrtn = SS_apiShowWindow(frm.hwnd, SS_SW_HIDE)
            SS_StaticResize frm
            DoCmd.Close acForm, frmname
            icount = icount + 1
        Else
            If WhichOnes = "Marked" Then
                '* Process Marked forms (except original versions)
                DoCmd.OpenForm frmname, acDesign, , , , acNormal
                Set frm = Forms(frmname)
                lrtn = SS_apiShowWindow(frm.hwnd, SS_SW_HIDE)
                If (InStr(1, frm.tag, "SSStaticRescale", 1) <> 0) _
                Or (InStr(1, frm.tag, "SSEnableStaticRescale", 1) <> 0) Then
                    SS_StaticResize frm
                    icount = icount + 1
                End If
                DoCmd.Close acForm, frmname
            Else
                '* Process the passed form
                If frmname = frmToRescale Then
                    FoundIt = True
                    DoCmd.OpenForm frmname, acDesign, , , , acNormal
                    Set frm = Forms(frmname)
                    lrtn = SS_apiShowWindow(frm.hwnd, SS_SW_HIDE)
                    SS_StaticResize frm
                    DoCmd.Close acForm, frmname
                    icount = icount + 1
                End If
            End If
        End If
    End If
Next i

If Not FoundIt Then
    Beep
    MsgBox "SS_RescaleForms function could not find the form you specified - '" & frmToRescale & "'."
End If

vrtn = SysCmd(SYSCMD_CLEARSTATUS)
Application.Echo True
iEchoOff = False

If conSSVerbose Then
    MsgBox "ShrinkerStretcher rescaled " & str(icount) & " form(s)."
End If

Exit_SS_RescaleForms:
    '* Clean up some object variables
    On Error Resume Next
    Set dbs = Nothing
    Set MySet = Nothing
    Set frm = Nothing
    Set MyTableDef = Nothing
    Set MyField = Nothing
    
    If iEchoOff Then
        Application.Echo True
        iEchoOff = False
    End If
    On Error GoTo 0
    Exit Function

Err_SS_RescaleForms:
    If Err = 2475 Then
        '* No form is currently open
        GoTo Exit_SS_RescaleForms
    ElseIf Err = 3021 Then
        '* No current record.
        Resume Next
    Else
        MsgBox "Error in SS_RescaleForms " & Err & " " & Err.Description
        If conExitOnError Then
            GoTo Exit_SS_RescaleForms
        Else
            Resume Next
        End If
    End If


#End If


End Function
Sub SS_ErrorMessage(sRoutineName As String)
'* This routine displays an error message and then clears the error.
MsgBox "Error in ShrinkerStretcher subroutine or function '" & sRoutineName & "':  " & Err & " - " & Err.Description
Err.Clear
End Sub
Sub SS_FillFRArray(frm As Form)
'* Fill font ratio array for the passed form
Dim i As Integer
Dim j As Integer
Dim ctl As control

On Error GoTo Err_SS_FillFRArray
If conDebug = 1 Then MsgBox "SS_FillFRArray for " & frm.name

'* Find starting position in array
For i = 0 To FRLastRow
    If FR(i).FormName = "" Then
        Exit For
    End If
Next i

'* Loop thru controls, fill FR array, compute fontratio.
For j = 0 To (frm.Count - 1)
    Set ctl = frm(j)
    '* Set control properties.
    FR(i).FormName = frm.name
    FR(i).ControlName = ctl.name
    If TypeOf ctl Is ObjectFrame Then
        FR(i).FontRatio = 1
    Else
        FR(i).FontName = ctl.FontName
        If ctl.Height <> 0 Then
            '* Use FontSize property, but if it doesn't exist then check for
            '* the Object.Font.Size property. This code is repeated elsewhere.
            'FR(i).fontratio = ctl.FontSize / ctl.height
            On Error Resume Next
            FR(i).FontRatio = ctl.FontSize / ctl.Height
            If Err = 0 Then
            Else
                If Err = 438 Or Err = 2455 Then
                    '* Control does not have this property associated to it.
                    '* Look for the control object font size property...
                    Err.Clear
                    FR(i).FontRatio = ctl.Object.Font.Size / ctl.Height  '* This may work for some ActiveX controls (like TreeView)
                    If Err = 0 Then
                    Else
                        Select Case Err
                        Case 438, 2455
                            '* Control does not have property associated to it.
                        Case 2684
                            '* The OLE object is empty
                        Case 2774
                            '* The component doesn't support Automation.
                        Case Else
                            '* Ignore errors, and continue
                        End Select
                        Err.Clear
                        FR(i).FontRatio = ctl.Object.FontSize / ctl.Height
                        If Err = 0 Then
                        Else
                            '* Ignore any errors
                        End If
                    End If
                Else
                    MsgBox "Error in SS_FillFRArray (2) - " & Err & " " & Err.Description
                End If
                Err.Clear
            End If
            On Error GoTo Err_SS_FillFRArray
        Else
            FR(i).FontRatio = 1
        End If
    End If
    i = i + 1
Next j

Set ctl = Nothing

Exit_SS_FillFRArray:
    On Error Resume Next
    If conDebug = 1 Then MsgBox "done with SS_FillFRArray for " & frm.name
    On Error GoTo 0
    Exit Sub

Err_SS_FillFRArray:
    If Err = 2455 Then
        '* control does not have a font associated to it
        Resume Next
    ElseIf Err = 438 Then
        '* control does not have this property associated to it
        Resume Next
    ElseIf Err = 2462 Then
        '* section does not exist
        Resume Next
    Else
        MsgBox "Error in SS_FillFRArray " & Err & " " & Err.Description
        If conExitOnError Then
            Resume Exit_SS_FillFRArray
        Else
            Resume Next
        End If
    End If

End Sub

Function SS_FindFRRow(frmname As String, ctlname As String, startrow As Integer) As Integer
'* Find matching row in the FR array.
    Dim i As Integer, j As Integer
    Dim FoundIt As Integer
    
On Error GoTo Err_SS_FindRow

j = 0
FoundIt = False
For i = startrow To FRLastRow       '* start from current row
    j = j + 1
    If (FR(i).FormName = frmname) And (FR(i).ControlName = ctlname) Then
        FoundIt = True
        Exit For
    End If
Next i

If FoundIt = False Then             '* start from first row
    For i = 0 To startrow - 1
        j = j + 1
        If (FR(i).FormName = frmname) And (FR(i).ControlName = ctlname) Then
            FoundIt = True
            Exit For
        End If
    Next i
End If

If FoundIt = False Then             '* can not find the control in the FR array??
    MsgBox "Could not find an entry in the FR array for control = " & frmname & " " & ctlname & _
        Chr(13) & Chr(13) & "You may need to close the form, or database, and re-open it in order to re-initialize this array."
    i = -1
End If

SS_FindFRRow = i

On Error GoTo 0
Exit Function

Err_SS_FindRow:
    MsgBox "Error in SS_FindFRRow " & Err & " " & Err.Description
    Resume Next
End Function

Function SS_Init(frm As Form, processing_a_subform As Integer) As Integer
'* Set some initial values and insure that the FR array is filled correctly
    Dim i As Integer
    Dim j As Integer
    Dim K As Integer
    Dim FoundIt As Integer
    Dim Test1 As String
    Dim knt As Integer
    Dim tempname As String
    Dim lLongFormHeightTolerance As Long
    Dim iLongFormFound As Integer

    
On Error GoTo Err_SS_Init

If conDebug = 1 Then MsgBox "Init for " & frm.name

If frm.name = FRFormName Then GoTo Continue_SS_Init   '* same form as last time - no need to initialize again.

If FRLastRow = 0 Then
    '* redim
    FRLastRow = frm.Count
    ReDim FR(FRLastRow)
    '* add entries at end of array
    SS_FillFRArray frm
Else
    '* Check to see if entries already exist for this form
    FoundIt = False
    i = 0
    Do While FR(i).FormName <> ""
        If frm.name = FR(i).FormName Then
            FoundIt = True
            Exit Do
        End If
        i = i + 1
    Loop
    If FoundIt Then
        '* Refresh array entries if this is a new form
        If JustOpened Then
            '* remove array entries for current form
            SS_RemoveFRRows (frm.name)
            '* redim preserve
            FRLastRow = FRLastRow + frm.Count
            ReDim Preserve FR(FRLastRow)
            '* add entries at end of array
            SS_FillFRArray frm
        Else
            '* Entries are already in the FR array
        End If
    Else
        '* count forms in array
        knt = 1
        i = 0
        tempname = FR(i).FormName
        Do While FR(i).FormName <> ""
            If (tempname <> FR(i).FormName) And (FR(i).FormName <> "") Then
                knt = knt + 1
                tempname = FR(i).FormName
            End If
            i = i + 1
        Loop
        If knt <= conFRFormsMax Then
            FRLastRow = FRLastRow + frm.Count
            ReDim Preserve FR(FRLastRow)
            '* add entries at end of array
            SS_FillFRArray frm
        Else
            If processing_a_subform And Not JustOpened Then
                If frm.Parent.name = FR(0).FormName Then
                    '* don't remove the parent form entries.
                Else
                    '* remove first form from array
                    SS_RemoveFRRows (FR(0).FormName)
                End If
            Else
                '* remove first form from array
                SS_RemoveFRRows (FR(0).FormName)
            End If
            FRLastRow = FRLastRow + frm.Count
            ReDim Preserve FR(FRLastRow)
            '* add entries at end of array
            SS_FillFRArray frm
        End If
    End If
End If


Continue_SS_Init:
'* set SSCurrentFormHeight and SSCurrentFormWidth to starting values

SSCurrentFormWidth = frm.Width

If frm.DefaultView = conContinuousForms Then
    '* not checking to see if just opened, always using subform height for scaling basis
    If processing_a_subform Then
        SSCurrentFormHeight = sf_PrevHt
        If SS_IsOn(frm, "ScaleSubformWidthToFit") Then
            '* Rescale subform width to fit subform control.
        Else
            '* Set SSCurrentFormWidth to be width of subform control, not width of form.
            '* So, subform width won't be changed when the subform is opened.
            SSCurrentFormWidth = sf_PrevWd
        End If
    Else
        If JustOpened Then
            '* Use form height rather than window inside height.
            '* Allows for resolution adjustment scaling later.
            'SSCurrentFormHeight = frm.InsideHeight
            SSCurrentFormHeight = SS_GetFormHeight(frm)
            
            '* put continuous form info into CF array
            '* replace an entry if it is already there
            '* if array is full, delete first entry and add to the end.
            i = 0
            FoundIt = False
            Do While i <= conCFmax
                If (CF(i).FormName = frm.name) Or (CF(i).FormName = "") Then
                    FoundIt = True
                    Exit Do
                End If
                i = i + 1
            Loop
            If Not FoundIt Then
                '* delete first entry
                For i = 0 To conCFmax - 1
                    CF(i).FormName = CF(i + 1).FormName
                    CF(i).OldHeight = CF(i + 1).OldHeight
                Next i
                i = conCFmax
            End If
            CF(i).FormName = frm.name
            CF(i).OldHeight = SSCurrentFormHeight
        Else
            '* find old height
            For i = 0 To conCFmax
                If CF(i).FormName = frm.name Then
                    SSCurrentFormHeight = CF(i).OldHeight
                    Exit For
                End If
            Next i
        End If
    End If
Else
    '* Use a function to compute form height
    SSCurrentFormHeight = SS_GetFormHeight(frm)

    '* check to see if the form is a Long (multi-page) form.
    iLongFormFound = False
    If JustOpened And SS_IsOn(frm, "LongFormAdj") Then
        If SS_IsOn(frm, "AutoDetermineLongForm") Then
            '* Use the form inside height and a factor to determine if form is a long form.
            '* The idea here is: If the form height is greater than 1.75 times the inside width of the form window,
            '* then this must be a long (multi-page) form. This is not always accurate, however, because of varying
            '* form window sizes.
            '* v10 ResFactor changes
            'If SSResFactor = 0 Then
            '    SSResFactor = 1
            'End If
            'lLongFormHeightTolerance = (frm.InsideHeight * (1.75 / SSResFactor))
            If SSResFactorV = 0 Then
                SSResFactorV = 1
            End If
            lLongFormHeightTolerance = (frm.InsideHeight * (1.75 / SSResFactorV))

            If (SSCurrentFormHeight > lLongFormHeightTolerance) Then
                iLongFormFound = True
            End If
        Else
            '* See if form has been explicitly designated to be a long form by looking at form tag property.
            If InStr(1, frm.tag, "SSLong") _
            Or InStr(1, frm.tag, "SSEnableLong") Then
                iLongFormFound = True
            Else
            End If
        End If
    Else
    End If

    If iLongFormFound Then
        '* check to see if this form name is already in LF array.
        FoundIt = 0
        For i = 0 To conLFmax
            If LF(i) = frm.name Then
                '* already in LF array
                FoundIt = 1
                Exit For
            End If
        Next i
        '* add entry to LF (long form) array
        If FoundIt = 0 Then
            LF(LFSub) = frm.name
            If LFSub >= conLFmax Then
                LFSub = 0
            Else
                LFSub = LFSub + 1
            End If
        End If
    End If
End If

FRFormName = frm.name

Exit_SS_Init:
    On Error Resume Next
    If conDebug = 1 Then MsgBox "done with SS_Init for " & frm.name
    On Error GoTo 0
    Exit Function

Err_SS_Init:
    If Err = 2455 Then
        '* control does not have a font associated to it
        Resume Next
    ElseIf Err = 2462 Then
        '* section does not exist
        Resume Next
    Else
        MsgBox "Error in SS_Init " & Err & " " & Err.Description
        If conExitOnError Then
            GoTo Exit_SS_Init
        Else
            Resume Next
        End If
    End If
End Function
Private Sub SS_ScrollToHome(ctl As control)
'v10
' Scroll the Form back to X:0,Y:0
' The Form is heavily Subclassed by Access.
' It does not seem to respond to SB_TOP or SB_LEFT
' so we have to resort to the following kludge.
'
'* This procedure was originally written by Stephen Lebans
'* as part of this database: http://www.lebans.com/loadjpeggif.htm
'*
'* modified by Peter De Baets for use here

' Temp var
Dim lngRet As Long

' Temp counter
Dim lngTemp As Long

' Be careful because of Echo Off
On Error Resume Next

' Stop Screen Redraws
'Application.Echo False

For lngTemp = 1 To 1
lngRet = SS_apiSendMessage(ctl.Parent.hwnd, WM_VSCROLL, SB_PAGEUP, 0&)
lngRet = SS_apiSendMessage(ctl.Parent.hwnd, WM_HSCROLL, SB_PAGELEFT, 0&)
lngRet = SS_apiSendMessage(ctl.Parent.Parent.hwnd, WM_VSCROLL, SB_PAGEUP, 0&)
lngRet = SS_apiSendMessage(ctl.Parent.Parent.hwnd, WM_HSCROLL, SB_PAGELEFT, 0&)
Next lngTemp

' Start Screen Redraws
'Application.Echo True

On Error GoTo 0

End Sub
Private Function SS_IsOn(frm As Form, pstrOption As String) As Integer
'* Returns True if the passed option is turned on.
'* Each option has a default setting in the Declarations section. This setting can be changed
'* for an individual form by placing the text "SSEnable<option>" or "SSDisable<option>" anywhere
'* in the form tag property.
Dim Marker As Integer
Dim Rtn As Boolean
Dim blnConst As Boolean
Dim strTagValueEnabled As String
Dim strTagValueDisabled As String

On Error GoTo Err_Section
Marker = 1

'* (It is important that none of these options begin with the letter "d" because we have a
'* "SSDisabled" flag that could be triggered inadvertently)

Rtn = False
Select Case pstrOption
Case "ShrinkStretch"
    blnConst = conShrinkStretch
Case "ChangeFonts"
    blnConst = conChangeFonts
Case "LongFormAdj"
    blnConst = conLongFormAdj
Case "AdjustToRes"
    blnConst = conAdjustToRes
Case "RetainProportion"
    blnConst = conRetainProportion
Case "TabCtlLoopAdj"
    blnConst = conTabCtlLoopAdj
Case "OptGroupLoopAdj"
    blnConst = conOptGroupLoopAdj
Case "SameResNoInitialScaling"
    blnConst = conSameResNoInitialScaling
Case "ScaleSubformWidthToFit"
    blnConst = conScaleSubformWidthToFit
Case "RetainSubformProportion"
    blnConst = conRetainSubformProportion
Case "AdjustToSizeOfAccessWindow"
    blnConst = conAdjustToSizeOfAccessWindow
Case "ScaleFonts"
    blnConst = conScaleFonts
Case "AutoAdjustSizeMode"
    blnConst = conAutoAdjustSizeMode
Case "OnOpenStretchWidthForWidescreen"
    blnConst = conOnOpenStretchWidthForWidescreen
Case "OnOpenShrinkWidthForNarrowScreen"
    blnConst = conOnOpenShrinkWidthForNarrowScreen
Case "SizeToFit"
    '* SSSkipSizeToFit still implemented in v10
    blnConst = conSizeToFit
Case "ScreenCenterPopup"
    blnConst = conScreenCenterPopup
Case "AutoPosition"
    blnConst = conAutoPosition
Case "AutoDetermineLongForm"
    blnConst = conAutoDetermineLongForm
Case Else
    Beep
    MsgBox "ShrinkerStretcher error: Invalid option was passed to SS_IsOn() routine: '" & pstrOption & "'."
    GoTo Exit_Section
End Select

strTagValueEnabled = "SSEnable" & pstrOption
strTagValueDisabled = "SSDisable" & pstrOption

If blnConst Then
    If InStr(1, frm.tag, strTagValueDisabled) > 0 Then
    Else
        Rtn = True
    End If
Else
    If InStr(1, frm.tag, strTagValueEnabled) > 0 Then
        Rtn = True
    Else
    End If
End If

Exit_Section:
    On Error Resume Next
    SS_IsOn = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in SS_IsOn (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function
Sub SS_OnOpen(frm As Form)
'* Reset the FRFormName variable so that the FR (font ratio) array will
'* be filled (during the OnResize event) each time the form is opened.
'* Set other starting values.
Dim i As Integer
Dim FoundIt As Boolean
Dim Marker As Integer
Dim NonDSWidth As Integer

If conDebug = 1 Then MsgBox "SS_OnOpen for " & frm.name

On Error GoTo Err_Section
Marker = 1

'* Keep track of the name of the form that has just been opened
'**************************************************************************************
'* If you get a compile error on the next line that says                              *
'*                                                                                    *
'* Compile Error: Can't Find Project or Library                                       *
'*                                                                                    *
'* ... and "Trim" is highlighted, then it is likely that you have a missing reference.*
'*                                                                                    *
'* Click the "Reset" button above (the blue square), then open any module in design   *
'* mode, click Tools > References and look for any checked references that are        *
'* "MISSING:". Uncheck these references if they are not needed to compile your        *
'* application, or click the "Browse" button to find the new location of the missing  *
'* library. A missing reference can cause an error in a seemingly unrelated module.   *
'**************************************************************************************
If Trim("" & SSMainFormName) = "" Then
    '* The parent form is being opened. This is the first form in any hierarchy of forms/subforms.
    If conDebugExit Then Debug.Print "SS_OnOpen for " & frm.name & " - First form in form/subform hierarcy"
    
    '* Set Break On All Errors to false so that this module can handle its own error processing.
    Application.SetOption "Break On All Errors", False
    
    SSMainFormName = frm.name
    FRFormName = ""
    JustOpened = True
    mblnTabbedForms = False
    
    '* Check to see if forms are tabbed (Access 2007
    Select Case xg_WhichVersionOfAccess()
    Case "2007" To "4000"
        If xg_IsTabbed(frm) Then
            mblnTabbedForms = True
        End If
    Case Else
    End Select
    
    If frm.DefaultView = conContinuousForms Then
        '* This form is a stand-alone continuous form. It will be treated like a long form
        '* so save form inside settings
        SS_SaveFormInsideSettings frm
    End If
    
    '* If this is a split form (Access 2007) then load it into SP array
    '* (It looks like split forms are not allowed as subforms)
    'pddxxx split forms are not supported in v10
    'If (frm.DefaultView = 5) Then
    '    '* It is a split form
    '    foundit = False
    '    For i = 0 To conSPmax
    '        Select Case Trim("" & SP(i).FormName)
    '        Case ""
    '            SP(i).FormName = frm.Name
    '            SP(i).OldHeight = frm.WindowHeight
    '            SP(i).OldWidth = frm.InsideWidth
    '            Exit For
    '        Case frm.Name
    '            SP(i).OldHeight = frm.WindowHeight
    '            SP(i).OldWidth = frm.InsideWidth
    '            foundit = True
    '            Exit For
    '        Case Else
    '        End Select
    '    Next i
    '    If Not foundit Then
    '        If i > conSPmax Then
    '            '* not entered into array
    '            Debug.Print "ShrinkerStretcher: The value of the 'conSPMax' constant should be increased."
    '        End If
    '    End If
    'Else
    'End If
Else
    If conDebugExit Then Debug.Print "SS_OnOpen for " & frm.name
End If

'* Get the inside height and width starting values for non-autoresize scaling. Save them in form tag property
If SS_IsOn(frm, "AutoDetermineLongForm") Then
    '* This form may be a long form, so save inside settings just in case.
    SS_SaveFormInsideSettings frm
Else
    If (InStr(frm.tag, "SSLong") > 0) _
    Or (InStr(frm.tag, "SSEnableLong") > 0) Then
        '* It's a long form, must save form inside settings
        SS_SaveFormInsideSettings frm
    Else
        '* It's not a long form, so no need to save inside settings in tag property
    End If
End If

SkipSS = False
If SysCmd(acSysCmdAccessVer) = "8.0" Then   'Access 97
Else
    SSKeepEchoOff = False
End If


Exit_Section:
    On Error Resume Next
    If conDebug = 1 Then MsgBox "Done with SS_OnOpen for " & frm.name
    On Error GoTo 0
    Exit Sub

Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in SS_OnOpen (" & Marker & ") object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Sub



Sub SS_Rescale(frm As Form, _
    iOriginalDisplayResolutionWidth As Integer, _
    iOriginalDisplayResolutionHeight As Integer, _
    Optional iHandleEchoInternally As Integer = True)
'* find new window height and width, compute the horizontal and vertical
'* percentage of change, find resolution adjustment, handle special processing,
'* then call the function to resize controls, and handle any special processing afterward.

    Dim i As Integer
    Dim j As Integer
    Dim FoundIt As Integer
    Dim cpctH As Long
    Dim cpctV As Long
    Dim RetValue As Long
    '* v10 Fix overflow error
    'Dim iDesiredFormWidth As Integer
    'Dim iDesiredFormHeight As Integer
    Dim DesiredFormWidth As Long
    Dim DesiredFormHeight As Long
    Dim NewFormWidth As Integer
    Dim NewFormHeight As Integer
    
    Dim Test1 As String
    '* v10 ResFactor changes
    'Dim ResFactor As Single
    Dim ResFactorH As Single
    Dim ResFactorV As Single
    
    Dim ctl As control
    Dim AdjustRes As Integer
    Dim AccessWinRect As SS_Rect
    Dim AccessClientRect As SS_Rect
    
    '* v10 This change prevents an overflow error message when the
    '* Access window is minimized.
    'Dim NewRight As Integer
    'Dim NewDown As Integer
    Dim NewRight As Long
    Dim NewDown As Long
    
    Dim rectFormClientArea As SS_Rect
    Dim iFormWindowWd As Integer
    Dim iFormWindowHt As Integer
    Dim iOrigWd As Integer
    Dim iOrigHt As Integer
    Dim ctlCurrSubform As control
    Dim T1 As String
    Dim newfontsize As Single
    Dim lNewWidth As Long
    Dim lNewHeight As Long
    Dim dWindowStyle As Double
    Dim lOldWidth As Long
    Dim lOldHeight As Long
    Dim processing_a_subform As Integer
    Dim SSwinrect As SS_Rect
    Dim iSaveJustOpenedVar As Integer
    Dim sSaveJustOpenedFormName As String
    '* v10 Fix bug with long forms that have subforms
    Dim LongForm As Integer
    Dim Marker As Integer
    
    Dim iStartingRowHeight As Integer
    Dim iBasisRowHeight As Integer
    '* v10 - Allow disproportionate scaling of datasheets
    Dim dDSScaleFact As Double
    Dim dDSScaleFactH As Double
    Dim dDSScaleFactV As Double
    Dim ContainerPrevHt As Integer
    Dim ContainerPrevWd As Integer
    Dim ContainerCurrHt As Integer
    Dim ContainerCurrWd As Integer
    Dim DSDefaultColumnWidth As Integer
    Dim blnZoomed As Boolean
    Dim blnRetainProportion As Boolean
    Dim dblTempWdToHtRatio As Double
    

On Error GoTo Err_Section
Marker = 1

'* If you do not want a subform to rescale, you can put its name here:
Select Case frm.name
Case "MyFormIWantToSkip"
    If conDebugExit Then Debug.Print "Form was explicitly skipped. Exiting."
    GoTo Exit_Section
Case Else
End Select

'* v10
If (frm.DefaultView = 5) Then
    '* Skip Access 2007 split forms altogether. There are just too many quirks that
    '* lead to distortions when moving controls around and sizing sections.
    If conDebugExit Then Debug.Print "Form is a split form. Exiting."
    GoTo Exit_Section
End If

'* v10 Check to see if the form is minimized.
If SS_apiIsIconic(frm.hwnd) Then
    '* The form is minimized, so don't rescale it.
    If conDebugExit Then Debug.Print "Form is minimized. Exiting."
    GoTo Exit_Section
End If

'* v10 Check to see if form rescaling has been disabled.
'* Can also set form tag to "SSDisableShrinkStretch" (or "SSEnableShrinkStretch")
If InStr(1, frm.tag, "SSDisabled") Then
    '* The form has the disable ShrinkerStretcher text in tag property, so don't rescale it.
    If conDebugExit Then Debug.Print "Scaling disabled for this form. Exiting."
    GoTo Exit_Section
End If

'* v10
'* When AllowAdditions = False, no records selected, and there's a list box on the form, then
'* Access will shut down when the form is closed. The code below will prevent that problem but
'* it will leave the form un-scaled.
'pddxxx Test this in different Access versions.
Marker = 2
If frm.AllowAdditions = False Then
    On Error Resume Next
    If Trim("" & frm.RecordSource) = "" Then
        '* There's no recordsource, so skip this error check
    Else
        If frm.RecordsetClone.RecordCount = 0 Then
            '* If there is a listbox on the form, then Access will shut down when the form closes
            '* Skipping rescaling here may eliminate that problem.
            Err.Clear
            On Error GoTo Err_Section
            If conDebugExit Then Debug.Print "Allow additions with no records issue encountered. Exiting."
            GoTo Exit_Section
        End If
    End If
    Err.Clear
    On Error GoTo Err_Section
End If


'MsgBox "SS_Rescale for " & frm.Name
If conDebug = 1 Then MsgBox "SS_Rescale for " & frm.name
If conDebug = 2 Then MsgBox "SS_Rescale for " & frm.name
'************************
'* testing area
'Exit Function
'************************

'* Skip ShrinkerStretcher if SkipSS flag is set or if ShrinkStretch flag is
'* turned off.
If SS_IsOn(frm, "ShrinkStretch") Then
Else
    If conDebugExit Then Debug.Print "ShrinkerStretcher disabled. Exiting."
    GoTo Exit_Section
End If
If SkipSS = True Then
    If conDebugExit Then Debug.Print "ShrinkerStretcher execution explicitly skipped. Exiting."
    GoTo Exit_Section
Else
    SkipSS = False
End If

#If Access2007 Then
    '* Can't allow rescaling of a form that allows layout view because any saved layout
    '* change will save rescaled changes as well.
    If frm.AllowLayoutView Then
        '* Layout View is enabled for the form
        If Application.GetOption("DesignWithData") Then
            '* Layout View is enabled for the database
            Beep
            MsgBox "ShrinkerStretcher could not rescale the form '" & frm.name & "' because it allows users to enter Layout View. " & _
                "Any saved changes to the Layout View could cause rescaled form objects to be saved. " & vbCrLf & vbCrLf & _
                "Try setting the 'Allow Layout View' " & _
                "form property to False, or go to Access Options > Current Database and uncheck 'Enable Layout View for this Database'.", , "ShrinkerStretcher", ng_GetAppInstallFolder & HELP_FILE_NAME, 251
            GoTo Exit_Section
        End If
    End If
#End If

If SysCmd(acSysCmdAccessVer) = "8.0" Then   'Access 97
Else
    '* When opening a form, don't rescale any maximized forms behind it.
    If JustOpened Then
        If SS_IsRelated(frm, SSMainFormName) Then
            '* Do nothing
        Else
            If conDebugExit Then Debug.Print "Form is maximized behind another form. Exiting."
            GoTo Exit_Section
        End If
    Else
        '* Do nothing
    End If
End If

'* v10 - Make sure that forms are not accidentally scaled in design mode
If frm.CurrentView = conDesignView Then
    '* The form must have StaticRescale option in tag in order for processing to continue
    If (InStr(1, frm.tag, "SSStaticRescale", 1) <> 0) _
    Or (InStr(1, frm.tag, "SSEnableStaticRescale", 1) <> 0) Then
        '* OK to continue with static rescaling
    Else
        '* Form is not explicitly marked for static rescaling
        If conDebugExit Then Debug.Print "Form is open in design mode and no StaticRescale option enabled for form. Exiting."
        If conSSVerbose Then MsgBox "The form '" & frm.name & "' is not explicitly marked for static rescaling. Try putting the text 'SSEnableStaticRescale' in the form tag property if you want to statically rescale it."
        GoTo Exit_Section
    End If
End If
    

Marker = 3
'* During dynamic rescaling, skip forms marked with "SSStaticRescale" in tag property.
'* However, if these forms have subform controls, then recursively perform rescaling
'* for the subform controls.
If SSStaticResize Then
Else
    '* if form has "SSStaticRescale" in tag, don't rescale it
    If (InStr(1, frm.tag, "SSStaticRescale", 1) <> 0) _
    Or (InStr(1, frm.tag, "SSEnableStaticRescale", 1) <> 0) Then
        If frm.CurrentView = conDesignView Then
            '* Skip recursive calls to subform when in design (static rescaling) mode.
        Else
            '* before exiting, check to see if this form has any subforms that need to be rescaled
            For j = 0 To (frm.Count - 1)
                Set ctl = frm(j)
                If TypeOf ctl Is SubForm Then
                    '* Force a recursive call to SS for the subform of parent form.
                    '* This is for statically rescaled parent forms only
                    SS_Rescale frm(ctl.name).Form, conOrigWd, conOrigHt
                End If
            Next j
            Set ctl = Nothing
        End If
        If conDebugExit Then Debug.Print "Form is statically rescaled. Exiting."
        GoTo Exit_Section
    End If
End If

'* Crippling code for demo versions
If conSSdemo Then
    If (CInt(Format(Now, "nn")) Mod 2) = 0 Then   '* Even numbered minutes
        If Right(Format(Now, "ss"), 1) = "0" Then       '* display info every tenth resize (roughly).
            If (Format(Now, "dd") Mod 2) = 0 Then
                Beep
                MsgBox "You are using an un-registered copy of ShrinkerStretcher." & Chr(13) & Chr(13) & "To register ShrinkerStretcher and get rid of these annoying messages, please visit http://www.PetersSoftware.com/ss.htm"
            Else
                Beep
                MsgBox "Visit the Peter's Software website for other great products and freeware:" & Chr(13) & Chr(13) & "http://www.peterssoftware.com"
            End If
            Beep
            MsgBox "ShrinkerStretcher Demo." & Chr(13) & Chr(13) & "from Peter's Software" & Chr(13) & "e-mail:  info@peterssoftware.com"
            '* The MsgBox's above will cause problems with screen redrawing when the lockwindow update API
            '* call is used. So we must re-draw the screen with the ShowWindow API to straighten things out.
            If JustOpened Or frm.PopUp Then
                RetValue = SS_apiShowWindow(Application.hWndAccessApp, SS_SW_HIDE)
                RetValue = SS_apiShowWindow(Application.hWndAccessApp, SS_SW_SHOW)
            End If
        End If
    End If
End If


'* Original form design environment width and height passed to local variables
iOrigWd = iOriginalDisplayResolutionWidth
iOrigHt = iOriginalDisplayResolutionHeight

'* Find out if current form is maximized
Marker = 4
blnZoomed = SS_apiIsZoomed(frm.hwnd)

'* make API calls to get desktop settings
Marker = 5
SS_GetDisplayInfo

'* Get Access window rectangle
'* used for maximized longform res adjustment, and justopened autocenter forms
Marker = 6
Call SS_apiGetWindowRect(Application.hWndAccessApp, AccessWinRect)

'* Find resolution adjustment factor and assign it to a global variable.
Marker = 7
If SS_IsOn(frm, "AdjustToSizeOfAccessWindow") And (Not frm.PopUp) Then
    '* Adjust forms based on size of Access window
    '* Note: The taskbar adjustment assumes development environment Access window is maximized.
    '* v10 ResFactor changes
    'If ((AccessWinRect.Bottom - AccessWinRect.Top) / (iOrigHt - conOrigHorzTaskbarHeight)) _
    '    > ((AccessWinRect.Right - AccessWinRect.Left) / (iOrigWd - conOrigVertTaskbarWidth)) Then
    '    SSResFactor = ((AccessWinRect.Right - AccessWinRect.Left) / (iOrigWd - conOrigVertTaskbarWidth))
    'Else
    '    SSResFactor = ((AccessWinRect.Bottom - AccessWinRect.Top) / (iOrigHt - conOrigHorzTaskbarHeight))
    'End If
    'SSResFactor = SSResFactor * (conOrigLogPixelsY / DisplayLogPixelsY)
    SSResFactorH = ((AccessWinRect.Right - AccessWinRect.Left) / (iOrigWd - conOrigVertTaskbarWidth))
    SSResFactorV = ((AccessWinRect.Bottom - AccessWinRect.Top) / (iOrigHt - conOrigHorzTaskbarHeight))
    SSResFactorH = SSResFactorH * (conOrigLogPixelsY / DisplayLogPixelsY)
    SSResFactorV = SSResFactorV * (conOrigLogPixelsY / DisplayLogPixelsY)
Else
    '* Adjust forms based on screen resolution
    '* v10 ResFactor changes
    'SSResFactor = (DisplayHeight / iOrigHt) * (conOrigLogPixelsY / DisplayLogPixelsY)
    SSResFactorH = (DisplayWidth / iOrigWd) * (conOrigLogPixelsY / DisplayLogPixelsY)
    SSResFactorV = (DisplayHeight / iOrigHt) * (conOrigLogPixelsY / DisplayLogPixelsY)

End If
'* v10 ResFactor changes
'If SSResFactor > conAdjustResUpperLimit Then
'    SSResFactor = conAdjustResUpperLimit
'ElseIf SSResFactor < conAdjustResLowerLimit Then
'    SSResFactor = conAdjustResLowerLimit
'End If
'pddxxx (nextver) This section needs to be fixed. If RetainProportion is true, then need to just check
'Horz or Vert, and if limited, then scale back other axis by same percentage.
If SSResFactorH > conAdjustResUpperLimit Then
    SSResFactorH = conAdjustResUpperLimit
ElseIf SSResFactorH < conAdjustResLowerLimit Then
    SSResFactorH = conAdjustResLowerLimit
End If
If SSResFactorV > conAdjustResUpperLimit Then
    SSResFactorV = conAdjustResUpperLimit
ElseIf SSResFactorV < conAdjustResLowerLimit Then
    SSResFactorV = conAdjustResLowerLimit
End If


Marker = 8
'* When opened at same resolution as design resolution, no need to scale.
If SS_IsOn(frm, "SameResNoInitialScaling") Then
    If SS_IsOn(frm, "AdjustToRes") And JustOpened Then
        If (DisplayHeight = iOrigHt) And (DisplayWidth = iOrigWd) And (DisplayLogPixelsY = conOrigLogPixelsY) Then
            '* v10 - Make sure that Access window is maximized
            'If conDebugExit Then Debug.Print "Same resolution as design environment. Exiting."
            'GoTo Exit_Section
            If SS_IsOn(frm, "AdjustToSizeOfAccessWindow") Then
                If SS_apiIsZoomed(hWndAccessApp) Then
                    If conDebugExit Then Debug.Print "Same resolution as design environment and Access window is zoomed. Exiting."
                    GoTo Exit_Section
                End If
            Else
                If conDebugExit Then Debug.Print "Same resolution as design environment. Exiting."
                GoTo Exit_Section
            End If
        End If
    End If
End If

'* set Processing_a_Subform flag if this form is a subform
Err.Clear
On Error Resume Next
If frm.Parent.name <> "" Then processing_a_subform = True
If Err <> 0 Then
    processing_a_subform = False
    Err.Clear
Else
End If
After_Subform_Check:
On Error GoTo Err_Section

Marker = 9
'* Find subform control on parent form
If processing_a_subform Then
    FoundIt = False
    For i = 0 To (frm.Parent.Count - 1)
        Set ctl = frm.Parent(i)
        If TypeOf ctl Is SubForm Then
            If ctl.SourceObject = frm.name Then
                FoundIt = True
                Set ctlCurrSubform = ctl
                Exit For
            End If
        End If
    Next i
    '* Clean up object variable
    Set ctl = Nothing
    If Not FoundIt Then
        MsgBox "Can't find parent subform control whose SourceObject matches current form name=" & frm.name
    End If
End If

'* Get form settings
If processing_a_subform Then
    '* These variables are not used with subforms, so don't really need to set them.
    lOldWidth = ctlCurrSubform.Width
    lOldHeight = ctlCurrSubform.Height
Else
    Call SS_apiGetClientRect(frm.hwnd, rectFormClientArea)
    i = InStr(1, frm.tag, "SSInfo:")
    If i > 0 Then
        '* It is assumed that SSInfo: is on far right of tag string
        T1 = Right(frm.tag, Len(frm.tag) - i + 1)
        lOldWidth = CLng(SS_GetWordsBetween(T1, "fiw=", ","))
        lOldHeight = CLng(SS_GetWordsBetween(T1, "fih=", ";"))
    Else
        '* This may occur when there is no "SS_OnOpen Me" call in the form OnOpen event proc
        lOldWidth = frm.InsideWidth
        lOldHeight = frm.InsideHeight
    End If
End If

'* Set resolution adjustment flag
AdjustRes = False
If SS_IsOn(frm, "AdjustToRes") And JustOpened Then
    If (DisplayLogPixelsY = 0) Or (iOrigHt = 0) Then
        '* v10 ResFactor changes
        'ResFactor = 1
        ResFactorH = 1
        ResFactorV = 1
    Else
        AdjustRes = True
        '* v10 ResFactor changes
        'ResFactor = SSResFactor
        ResFactorH = SSResFactorH
        ResFactorV = SSResFactorV
    End If
Else
    '* v10 ResFactor changes
    'ResFactor = 1
    ResFactorH = 1
    ResFactorV = 1
End If

Marker = 10
'* Rescale datasheets
'If frm.CurrentView = conDatasheetView Then
If (frm.DefaultView = 5) Then
    '* Skip datasheets for split forms
Else
    If (frm.CurrentView = conDatasheetView) Then  '* Datasheet
        If SS_IsOn(frm, "RetainProportion") Then
            If processing_a_subform Then
                Marker = 11
                iBasisRowHeight = SS_SetDatasheetBasisRowHeight(frm)
                
                If JustOpened Then
                    SS_ResetDatasheet frm
                End If

                ContainerCurrHt = ctlCurrSubform.Height
                ContainerCurrWd = ctlCurrSubform.Width
                ContainerPrevHt = sf_PrevHt
                ContainerPrevWd = sf_PrevWd
                
                If ContainerPrevHt <> 0 Then
                    dDSScaleFactV = (1 + ((ContainerCurrHt - ContainerPrevHt) / ContainerPrevHt))
                Else
                    dDSScaleFactV = 1
                End If
                
                If ContainerPrevWd <> 0 Then
                    dDSScaleFactH = (1 + ((ContainerCurrWd - ContainerPrevWd) / ContainerPrevWd))
                Else
                    dDSScaleFactH = 1
                End If
                
                '* The following factor takes into account the record selector (wd = 285), which does not scale
                If processing_a_subform Then
                    If ContainerCurrWd <> 0 Then
                        dDSScaleFactH = dDSScaleFactH * (1 + (((285 * dDSScaleFactH) - 285) / ContainerCurrWd))
                    End If
                End If
                
                '* v10 - Make sure datasheets aspect ratio is always maintained
                dDSScaleFact = dDSScaleFactV
                If (ContainerCurrWd / ContainerCurrHt) > (ContainerPrevWd / ContainerPrevHt) Then
                    dDSScaleFact = dDSScaleFactV
                ElseIf (ContainerCurrWd / ContainerCurrHt) < (ContainerPrevWd / ContainerPrevHt) Then
                    dDSScaleFact = dDSScaleFactH
                End If
                '* v10 - Adjust scale factor so we always get an integer height result
                dDSScaleFact = Round(frm.RowHeight * dDSScaleFact, 0) / frm.RowHeight
                
                
                frm.RowHeight = frm.RowHeight * dDSScaleFact
                
                Marker = 12
                '* 8pt font requires cell height of 225 for a single line. A common setting for iBasisRowHeight is 225
                If SS_IsOn(frm, "ScaleFonts") Then
                    If iBasisRowHeight <> 0 Then
                        '* "- 0.4" - Allows fonts to jump down to smaller fonts sooner
                        newfontsize = ((8 * frm.RowHeight) / iBasisRowHeight) - 0.4
                        If newfontsize < conMinimumFontSize Then
                            frm.DatasheetFontHeight = conMinimumFontSize
                        Else
                            frm.DatasheetFontHeight = newfontsize
                        End If
                    End If
                End If
                
                '* If control does not have a columnwidth property, skip it.
                On Error Resume Next
                '* Loop through the controls, adjusting datasheet columnwidth
                DSDefaultColumnWidth = Val(Application.GetOption("default column width"))
                '* v10 Loop through fewer controls
                'For Each ctl In frm.Controls
                For Each ctl In frm.Section(acDetail).Controls
                    'If ctl.Section = acDetail Then
                        If ctl.ColumnWidth < 0 Then
                            ctl.ColumnWidth = 1440 * DSDefaultColumnWidth
                        End If
                        If ContainerPrevWd <> 0 Then
                            ctl.ColumnWidth = ctl.ColumnWidth * dDSScaleFact
                            
                            '* column width adjustment
                            If TypeOf ctl Is ListBox Then
                                If IsNull(ctl.ColumnWidths) Then
                                Else
                                    T1 = ctl.ColumnWidths
                                    ctl.ColumnWidths = SS_ResizeColWd(T1, (dDSScaleFact - 1) * 100 * 100)
                                End If
                            End If
                            If TypeOf ctl Is ComboBox Then
                                If IsNull(ctl.ColumnWidths) Then
                                Else
                                    T1 = ctl.ColumnWidths
                                    ctl.ColumnWidths = SS_ResizeColWd(T1, (dDSScaleFact - 1) * 100 * 100)
                                    ctl.ListWidth = ctl.ListWidth * dDSScaleFact    '* Can't do this in Access 2.0
                                End If
                            End If
                            
                        End If
                        If Err <> 0 Then
                            Err.Clear
                        End If
                    'End If
                Next ctl
                Err.Clear
                Set ctl = Nothing
                On Error GoTo Err_Section
            End If
        End If
        If frm.CurrentView = conDatasheetView Then
            If conDebugExit Then Debug.Print "Form is in datasheet view. Exiting after rescaling."
            GoTo Exit_Section
        Else
            '* Leave open the possibility that further rescaling may be needed for a non-datasheet form.
        End If
    End If
End If
Marker = 13



i = SS_Init(frm, processing_a_subform)        '* call function to fill FR (font/ratio) array.

'* Misc code to display values in the FR array
'test1 = ""
'MsgBox "FRLastRow=" & FRLastRow
'For i = 0 To FRLastRow
'    test1 = test1 & Str(i) & ".  " & Left(FR(i).formname, 3) & " " & Left(FR(i).controlname, 3) & "," & Chr(13)
'Next i
'If conDebug = 1 Then MsgBox "FR array:" & Chr(13) & Chr(13) & test1

If SS_IsOn(frm, "AdjustToRes") And JustOpened Then
    '* Special processing for autocenter forms
    If frm.AutoCenter = True Then
        '* v10 - Handle tabbed forms, and pop-ups.
        'If SS_apiIsZoomed(frm.hWnd) Or processing_a_subform Then
        If blnZoomed Or processing_a_subform Or mblnTabbedForms Or frm.PopUp Then
            '* Form is maximized, or we are processing a subform, so we don't need to reposition
            '* the form prior to scaling.
        Else
            '* Move form to 0,0 so centered form scaling (hopefully) won't exceed client area width or height
            '* make form visible just before movesize, so movesize will take effect
            '* This is only necessary when form is already opened in hidden mode.
            FoundIt = False
            If SSInitWhenFormAlreadyOpen Then
                If Not frm.visible Then
                    frm.visible = True
                    FoundIt = True
                End If
            End If
            DoCmd.MoveSize 0, 0
            If FoundIt Then
                frm.visible = False
            End If
        End If
    End If
End If

Marker = 14

'* Determine if current form is a "long" form
'* Continuous forms will be treated like long forms where the width and height in
'* relation to the form inside width and height will be retained.
If frm.DefaultView = conContinuousForms And (Not processing_a_subform) Then
    LongForm = True
Else
    '* Determine if current form is a "long" form by finding an entry in the long form array
    LongForm = False
    If SS_IsOn(frm, "LongFormAdj") Then
        For i = 0 To conLFmax
            If LF(i) = frm.name Then
                '* long form found
                LongForm = True
                Exit For
            End If
        Next i
    End If
End If

'* Adjust Res for just opened maximized long forms.
'* v10 - Handle Tabbed forms
'If SS_apiIsZoomed(frm.hWnd) Then
If blnZoomed Or mblnTabbedForms Then
    If (LongForm And JustOpened) Then
        '* Allow resolution adjustment
    Else
        '* v10 ResFactor changes
        'ResFactor = 1
        ResFactorH = 1
        ResFactorV = 1
    End If
Else
    '* Not maximized
End If

Marker = 15
If processing_a_subform Then
    '* Adjustments made for nav buttons, scrollbars.
    If LongForm Then
        DesiredFormHeight = SSCurrentFormHeight
    Else
        DesiredFormHeight = ctlCurrSubform.Height
        If frm.DefaultView = conContinuousForms Then
        Else
            If (Not frm.NavigationButtons) And (frm.ScrollBars = 0 Or frm.ScrollBars = 2) Then
            Else
                '* (twips perpixel for ht(vertical) adjustment? seems to be working OK)
                DesiredFormHeight = ctlCurrSubform.Height - (30 + (WindowScrollBar * SSTwipsPerPixel))
            End If
        End If
    End If
    
    If Not SS_IsOn(frm, "ScaleSubformWidthToFit") Then
        '* Use current subform width/prev subform width as basis for scaling
        DesiredFormWidth = ctlCurrSubform.Width
    Else
        '* Record selectors and scrollbars adjustments
        If frm.ScrollBars = 0 Or frm.ScrollBars = 1 Then
            If frm.RecordSelectors = True Then
                '30 is horz adjustment
                'RecordSelectors (285), and extra adjustment (30)
                DesiredFormWidth = ctlCurrSubform.Width - (30 + 285)
            Else
                'extra adjustment (30) only
                DesiredFormWidth = ctlCurrSubform.Width - (30)
            End If
        Else
            If frm.RecordSelectors = True Then
                '30 is horz adjustment
                'RecordSelectors (285), scroll bar, and extra adjustment (30)
                DesiredFormWidth = ctlCurrSubform.Width - (30 + 285 + (WindowScrollBar * SSTwipsPerPixel))
            Else
                'scroll bar and extra adjustment (30) only
                DesiredFormWidth = ctlCurrSubform.Width - (30 + (WindowScrollBar * SSTwipsPerPixel))
            End If
        End If
    End If
    

    '* v10 Check for overflow problems.
    '* This may leave subform scaled a bit smaller than expected, but it should be
    '* better than an overflow error message.
    'NewFormWidth = DesiredFormWidth
    'NewFormHeight = DesiredFormHeight
    If DesiredFormWidth > conAccessSizeLimit Then
        NewFormWidth = conAccessSizeLimit
    Else
        NewFormWidth = DesiredFormWidth
    End If
    If DesiredFormHeight > conAccessSizeLimit Then
        NewFormHeight = conAccessSizeLimit
    Else
        NewFormHeight = DesiredFormHeight
    End If
    
Else
    Marker = 16
    '* If form window does not automatically size to fit, size to fit anyway prior to scaling
    '* (maybe comment out this section, and resize form window, then form instead?)
    If frm.AutoResize = False Then  '* only for forms that don't automatically size window to fit form
        If JustOpened And AdjustRes And Not LongForm Then
            On Error Resume Next
            SkipSS = True
            '* v10 Skip size to fit when tag present.
            '* Might want to do this when a form is opened with an invisible section
            '* and it is later made visible.
            'DoCmd.RunCommand acCmdSizeToFitForm
            If InStr(1, frm.tag, "SSSkipSizeToFit") > 0 Then
            Else
                If SS_IsOn(frm, "SizeToFit") Then
                    DoCmd.RunCommand acCmdSizeToFitForm
                End If
            End If
            
            SkipSS = False
            Err.Clear
            On Error GoTo Err_Section
        End If
    End If
    
    '* Compute percentage change for current form
    If LongForm Then
        '* v10 - Handle tabbed forms
        'If SS_apiIsZoomed(frm.hWnd) And AdjustRes Then
        If (blnZoomed Or mblnTabbedForms) And AdjustRes Then
            '* Maximized long form, just make resolution adjustment
            DesiredFormHeight = SSCurrentFormHeight
            '* The formula below attempts to calculate a desired form height based on the ratio of the old
            '* form insideheight to the new form insideheight. Since the old form insideheight in
            '* this instance is unknown, it is estimated based on current form settings, and the resolution
            '* adjustment factor.
            '* This approach assumes similar window caption and border heights at each resolution.
            '* So it is still a bit off at each resolution. (ex.: "tSSLongMax2")
            '* v10 ResFactor changes
            'iDesiredFormHeight = iDesiredFormHeight * (frm.InsideHeight / _
                (((AccessWinRect.Bottom - AccessWinRect.Top) * SSTwipsPerPixel / ResFactor) - _
                (((AccessWinRect.Bottom - AccessWinRect.Top) * SSTwipsPerPixel) - frm.InsideHeight)))
            DesiredFormHeight = DesiredFormHeight * (frm.InsideHeight / _
                (((AccessWinRect.Bottom - AccessWinRect.Top) * SSTwipsPerPixel / ResFactorV) - _
                (((AccessWinRect.Bottom - AccessWinRect.Top) * SSTwipsPerPixel) - frm.InsideHeight)))
        Else
            If lOldHeight <> 0 Then
                DesiredFormHeight = frm.InsideHeight * (SSCurrentFormHeight / lOldHeight)
            Else
                MsgBox "There was an error - lOldHeight variable not set. Default used."
                DesiredFormHeight = SSCurrentFormHeight
            End If
            '* v10 ResFactor changes
            'iDesiredFormHeight = iDesiredFormHeight * ResFactor
            DesiredFormHeight = DesiredFormHeight * ResFactorV
        End If
    Else
        '* When first opened, and adjustres, we may have form window scrollbars, so
        '* res adjustment should be based on height of form, not inside height.
        'iDesiredFormHeight = frm.InsideHeight
        '* v10 - Handle tabbed forms
        'If SS_apiIsZoomed(frm.hWnd) Then
        If blnZoomed Or mblnTabbedForms Then
            DesiredFormHeight = frm.InsideHeight
        Else
            If AdjustRes Then
                DesiredFormHeight = SSCurrentFormHeight
            Else
                DesiredFormHeight = frm.InsideHeight
            End If
        End If
        
        If frm.CurrentView = conDesignView Then
            If frm.PopUp Then
                If (InStr(1, frm.tag, "SSMaximize", 1) <> 0) _
                Or (InStr(1, frm.tag, "SSEnableMaximize", 1) <> 0) Then
                    '* Desired form height should be the height of the screen
                    DesiredFormHeight = DisplayHeight * SSTwipsPerPixel
                Else
                    If frm.ScrollBars = 0 Or frm.ScrollBars = 2 Then    '* if no horz scrollbar
                        DesiredFormHeight = DesiredFormHeight + (WindowScrollBar * SSTwipsPerPixel)   '*     adjust height
                    End If
                End If
            Else
                If frm.ScrollBars = 0 Or frm.ScrollBars = 2 Then    '* if no horz scrollbar
                    DesiredFormHeight = DesiredFormHeight + (WindowScrollBar * SSTwipsPerPixel)   '*     adjust height
                End If
            End If
        End If
        
        '* v10 ResFactor changes
        'iDesiredFormHeight = iDesiredFormHeight * ResFactor
        DesiredFormHeight = DesiredFormHeight * ResFactorV
    End If

    Marker = 17
    '* Minimum form height is 1/4 inch (360) to accomodate menu-bar type forms
    If DesiredFormHeight < 360 Then
        '* v10
        'DesiredFormHeight = 360
        NewFormHeight = 360
    Else
        'pddxxx (nextver) Maybe height can be greater than Access size limit because of multiple sections
        If DesiredFormHeight > conAccessSizeLimit Then
            NewFormHeight = conAccessSizeLimit
        Else
            NewFormHeight = DesiredFormHeight
        End If
    End If
    
    
    
    

    '* When first opened, and adjustres, we may have form window scrollbars, so
    '* res adjustment should be based on width of form, not insidewidth of window
    '* Restored forms only
    '* v10 - Handle tabbed forms
    'If SS_apiIsZoomed(frm.hWnd) Then
    If blnZoomed Or mblnTabbedForms Then
        If frm.RecordSelectors = True Then
            DesiredFormWidth = frm.InsideWidth - 285     '* 285 is border, 195 is scroll bar
        Else
            DesiredFormWidth = frm.InsideWidth
        End If
    Else
        If AdjustRes Then
            '* When first opened, and adjustres, we may have form window scrollbars, so
            '* res adjustment should be based on width of form, not insidewidth of window
            DesiredFormWidth = SSCurrentFormWidth
        Else
            If frm.RecordSelectors = True Then
                DesiredFormWidth = frm.InsideWidth - 285     '* 285 is border, 195 is scroll bar
            Else
                DesiredFormWidth = frm.InsideWidth
            End If
        End If
    End If
    
    If frm.CurrentView = conDesignView Then
        If frm.ScrollBars = 0 Or frm.ScrollBars = 1 Then    '* if no vert scrollbar
            DesiredFormWidth = DesiredFormWidth + (WindowScrollBar * SSTwipsPerPixel)   '*     adjust width
        End If
    End If
    '* Vertical scroll bar adjustment for long forms
    If LongForm Then
        If frm.ScrollBars = 2 Or frm.ScrollBars = 3 Then    '* if vert scrollbar exists
            If frm.RecordSelectors = True Then
                '* 30 is horz adjustment
                '* RecordSelectors (285), scroll bar, and extra adjustment (30)
                DesiredFormWidth = DesiredFormWidth - (30 + 285 + (WindowScrollBar * SSTwipsPerPixel))
            Else
                '* Scroll bar and extra adjustment (30) only
                DesiredFormWidth = DesiredFormWidth - (30 + (WindowScrollBar * SSTwipsPerPixel))
            End If
        End If
    End If

    Marker = 18
    '* v10 ResFactor changes
    'iDesiredFormWidth = iDesiredFormWidth * ResFactor
    DesiredFormWidth = DesiredFormWidth * ResFactorH
    
    Marker = 19
    '* Minimum form width is 1 inch (1440)
    If DesiredFormWidth < 1440 Then
        '* v10
        'DesiredFormWidth = 1440
        NewFormWidth = 1440
    Else
        '* v10 Fix overflow error
        If DesiredFormWidth > conAccessSizeLimit Then
            NewFormWidth = conAccessSizeLimit
        Else
            NewFormWidth = DesiredFormWidth
        End If
    End If
    
End If
Set ctlCurrSubform = Nothing
    
Marker = 20
'* Set Vertical and Horizontal percent change. Multiply by 100 for accuracy.
If SSCurrentFormHeight <> 0 Then
    '* v10
    'cpctV = ((DesiredFormHeight - SSCurrentFormHeight) / SSCurrentFormHeight) * 100 * 100
    cpctV = ((NewFormHeight - SSCurrentFormHeight) / SSCurrentFormHeight) * 100 * 100
Else
    cpctV = 0
End If

If SSCurrentFormWidth <> 0 Then
    '* v10
    'cpctH = ((DesiredFormWidth - SSCurrentFormWidth) / SSCurrentFormWidth) * 100 * 100
    If conDebugCPct Then Debug.Print ""
    If conDebugCPct Then Debug.Print frm.name & ":  SSCurrentFormWidth=" & SSCurrentFormWidth & " NewFormWidth=" & NewFormWidth
    cpctH = ((NewFormWidth - SSCurrentFormWidth) / SSCurrentFormWidth) * 100 * 100
Else
    cpctH = 0
End If

If conDebugCPct Then Debug.Print frm.name & " 1.:  cpctH=" & cpctH & " cpctV=" & cpctV
    
'* If "conRetainProportion" is true, this code will make sure the horizontal and vertical resizing
'* percentages are equal. This code will maintain form aspect ratio.
'* v10 ResFactor. if options "OnOpenStretchWidthForWidescreen" or
'* "OnOpenShrinkWidthForNarrowScreen" are on, then form will NOT maintain aspect ratio
'* when opened if rescaling exceeds a certain tolerance ("conWidescreenToStandardRatio"
'* or "conStandardToNarrowScreenRatioLowerLimit"). These tolerances insure that we're actually
'* going from a normal screen to widescreen, or normal to narrow, instead of just some minor
'* adjustment due to a slight change in titlebar, taskbar, etc...

Marker = 21
If processing_a_subform Then
    '* Skip this section
    blnRetainProportion = SS_IsOn(frm, "RetainSubformProportion")
Else
    blnRetainProportion = SS_IsOn(frm, "RetainProportion")
    iFormWindowWd = (rectFormClientArea.Right * SSTwipsPerPixel)
    iFormWindowHt = (rectFormClientArea.Bottom * SSTwipsPerPixel)
    If JustOpened Then
        If blnRetainProportion Then
            '* Check what will be new form width to height ratio
            dblTempWdToHtRatio = ((1 + (cpctH / 100 / 100)) / (1 + (cpctV / 100 / 100)))
            If SS_IsOn(frm, "OnOpenStretchWidthForWidescreen") Then
                '* Stretch option is turned on
                '* Do we have a widescreen?
                
                '* Check original design environment to see if widescreen. if so, then keep aspect ratio
                ' * otherwise, is new form window width (or new screen width, ht) wide? Then stretch
                If iOrigHt <> 0 Then
                    If (iOrigWd / iOrigHt) > conWidescreenWidthToHeightRatio Then
                        '* Design environment is widescreen, so don't change RetainProportion setting
                    Else
                        '* Design environment not widescreen.
    
                        If dblTempWdToHtRatio > conWidescreenToStandardRatio Then
                            '* Width will stretch more than height by more than a certain tolerance
                            '* so it must be opening at widescreen dimensions. Let it be stretched.
                            blnRetainProportion = False
                        Else
                            '* Form is not being scaled to a widescreen, so don't change RetainProportion setting
                        End If
                    End If
                End If
            End If
            Marker = 22
            If SS_IsOn(frm, "OnOpenShrinkWidthForNarrowScreen") Then
                '* Shrink option is turned on
                '* Do we have a narrow screen?
                
                '* Check original design environment to see if narrow screen. if so, then keep aspect ratio
                ' * otherwise, is new form window height (or new screen width, ht) narrow? Then shrink
                If iOrigHt <> 0 Then
                    If (iOrigWd / iOrigHt) = 1.25 Then  '* 5/4 ratio
                        '* Design environment is narrow screen, so don't change RetainProportion setting
                    Else
                        '* Design environment not narrow screen.
                        '* Check to see if proposed scaling fits tolerance
                        If (conStandardToNarrowScreenRatioLowerLimit < dblTempWdToHtRatio) _
                        And (dblTempWdToHtRatio < 0.995) Then
                            '* Height will stretch more than width within a certain tolerance
                            '* so we must have a narrow screen. Shrink width.
                            blnRetainProportion = False
                        Else
                            '* Form is not being scaled to a narrow screen within tolerance,
                            '* don't change RetainProportion setting
                        End If
                    End If
                End If
            End If
        End If
    End If
    
    Marker = 23
    If blnRetainProportion Then
        If Not (frm.DefaultView = conContinuousForms) Then
            If SSCurrentFormHeight = 0 Then SSCurrentFormHeight = 1440
            If iFormWindowHt = 0 Then
                cpctH = cpctV
            Else
                If LongForm Then
                    '* Scale longform height
                    cpctH = cpctV
                Else
                    If (iFormWindowWd / iFormWindowHt) > (SSCurrentFormWidth / SSCurrentFormHeight) Then
                        cpctH = cpctV
                    ElseIf (iFormWindowWd / iFormWindowHt) < (SSCurrentFormWidth / SSCurrentFormHeight) Then
                        cpctV = cpctH
                    End If
                End If
            End If
        Else
            '* Retain stand alone continuous form aspect ratio
            cpctH = cpctV
        End If
    End If
End If
 
Marker = 24
'If "conRetainSubformProportion" is true, then make sure subform
'* horz and vert rescaling percentages are equal.
If SS_IsOn(frm, "RetainSubformProportion") Then
    If processing_a_subform Then
        cpctV = cpctH
    End If
End If




Marker = 25
If conDebug = 1 Then MsgBox frm.name & ":  cpctH=" & cpctH & " cpctV=" & cpctV
If conDebugCPct Then Debug.Print frm.name & ":  cpctH=" & cpctH & " cpctV=" & cpctV

'***************************************************************
'* Call function to resize form and all controls on it.

i = SS_ResizeControls(frm, cpctH, cpctV, iHandleEchoInternally)

'*
'***************************************************************
            
            
            
            
Marker = 26
'* Handle special processing after resizing all controls
If AdjustRes Then
    On Error Resume Next
    '* Non-AutoResize long form processing
    If (Not frm.AutoResize) And LongForm Then
        '* Adjust form window to current resolution based on adjusted size of client area.
        dWindowStyle = SS_apiGetWindowLong(frm.hwnd, SS_GWL_STYLE)
        If dWindowStyle = 0 Then
            '* Couldn't find window style, so can't compute new window size based on client area.
            '* Just do a size to fit form instead
            SkipSS = True
            '* Skip size to fit when tag present.
            '* Might want to do this when a form is opened with an invisible section
            '* and it is later made visible.
            If InStr(1, frm.tag, "SSSkipSizeToFit") > 0 Then
            Else
                If SS_IsOn(frm, "SizeToFit") Then
                    DoCmd.RunCommand acCmdSizeToFitForm
                End If
            End If
            
            SkipSS = False
        Else
            '* Use res adjustment factor to find new client area size
            '* v10 - Handle tabbed forms
            'If SS_apiIsZoomed(frm.hWnd) Then
            If blnZoomed Or mblnTabbedForms Then
            Else
                SkipSS = True
                '* v10 ResFactor
                'frm.InsideWidth = frm.InsideWidth * ResFactor
                frm.InsideWidth = frm.InsideWidth * ResFactorH
                SkipSS = True
                '* v10 ResFactor
                'frm.InsideHeight = frm.InsideHeight * ResFactor
                frm.InsideHeight = frm.InsideHeight * ResFactorV
            End If
        End If
    Else
        '* Don't size to fit if processing a subform
        If processing_a_subform Then
        Else
            '* Size window to fit form
            '* Make sure that form is visible so that the size to fit form command sticks.
            
            '* v10 - Try a new way to size to fit form - Just set InsideHeight and InsideWidth values
            'foundit = False
            'If SSInitWhenFormAlreadyOpen Then
            '    If Not frm.Visible Then
            '        frm.Visible = True
            '        foundit = True
            '    End If
            'End If
            'SkipSS = True
            ''* Skip size to fit when tag present.
            ''* Might want to do this when a form is opened with an invisible section
            ''* and it is later made visible.
            'If InStr(1, frm.Tag, "SSSkipSizeToFit") > 0 Then
            'Else
            '    If SS_IsOn(frm, "SizeToFit") Then
            '        SkipSS = True
            '        DoCmd.RunCommand acCmdSizeToFitForm
            '    End If
            'End If
            '
            'SkipSS = False
            'If foundit Then
            '    frm.Visible = False
            'End If
            SkipSS = True
            If frm.RecordSelectors Then
                frm.InsideWidth = frm.Width + 285
            Else
                frm.InsideWidth = frm.Width
            End If
            SkipSS = True
            frm.InsideHeight = SS_GetFormHeight(frm)
            SkipSS = False
            
            
            
            
        End If
    End If
    
    On Error GoTo Err_Section

    Marker = 27
    'pddxxx ??? Is this for long forms only?
    If frm.name = "MyFormNameHere" Then
        '* v10 ResFactor
        frm.InsideWidth = 1440 * 6 * ResFactorH
        SkipSS = True
        '* v10 ResFactor
        frm.InsideHeight = 1440 * 2 * ResFactorV
    End If
    
    SkipSS = False
    
    '* v10 - Handle tabbed forms
    'If (SS_apiIsZoomed(frm.hWnd) Or processing_a_subform) Then
    If (blnZoomed Or processing_a_subform Or mblnTabbedForms) Then
        '* skip autocenter/window movement if form is maximized, or is a subform
    Else
        Call SS_apiGetWindowRect(frm.hwnd, SSwinrect)
        Call SS_apiGetClientRect(Application.hWndAccessApp, AccessClientRect)
            
        '* If autocenter is yes, then center the form on the screen.
        If frm.AutoCenter = True Then
            '* Added feature lets popup forms center in relation to screen, not Access window.
            If frm.PopUp Then
                '* v10
                'If InStr(1, frm.Tag, "SSScreenCenterPopup") Then
                If InStr(1, frm.tag, "SSScreenCenterPopup") _
                Or SS_IsOn(frm, "ScreenCenterPopup") Then
                    NewRight = 1 * _
                        (((DisplayWidth) - _
                        (SSwinrect.Right - SSwinrect.Left)) / 2)
                    NewDown = 1 * _
                        (((DisplayHeight) - _
                        (SSwinrect.Bottom - SSwinrect.Top)) / 3)
                Else
                    '* v10 Check to see if Access window is minimized
                    If AccessClientRect.Right = 0 And AccessClientRect.Left = 0 Then
                        '* The Access window must be minimized, so center the form on the screen.
                        NewRight = 1 * _
                            (((DisplayWidth) - _
                            (SSwinrect.Right - SSwinrect.Left)) / 2)
                        NewDown = 1 * _
                            (((DisplayHeight) - _
                            (SSwinrect.Bottom - SSwinrect.Top)) / 3)
                    Else
                        '* Center the form in the Access window.
                        NewRight = 1 * _
                            (((AccessClientRect.Right - AccessClientRect.Left) - _
                            (SSwinrect.Right - SSwinrect.Left)) / 2)
                        NewDown = 1 * _
                            (((AccessClientRect.Bottom - AccessClientRect.Top) - _
                            (SSwinrect.Bottom - SSwinrect.Top)) / 3)
                        NewRight = NewRight + (1 * AccessWinRect.Left)
                        NewDown = NewDown + (1 * AccessWinRect.Top)
                    End If
                End If
            Else
                NewRight = 1 * _
                    (((AccessClientRect.Right - AccessClientRect.Left) - _
                    (SSwinrect.Right - SSwinrect.Left)) / 2)
                '* 23 is (roughtly) a common height setting for the title bar, border
                '* Could calculate this by retrieving caption height, border values
                NewDown = 1 * _
                    ((((AccessClientRect.Bottom - AccessClientRect.Top) - _
                    (SSwinrect.Bottom - SSwinrect.Top)) / 3) - 23)
            End If
        Else
            '* Move window to resolution-adjusted position
            '* v10 ResFactor changes
            'NewRight = (SSwinrect.Right * ResFactor) _
                / SSTwipsPerPixel
            NewRight = (SSwinrect.Right * ResFactorH) _
                / SSTwipsPerPixel
            'pddxxx
            '* Includes fudge factor ((ResFactor - 1) * 400) to account for changes in size of caption,
            '* menu, and borders at each resolution
            '* v10 ResFactor changes
            'NewDown = (SSwinrect.Bottom * ResFactor + ((ResFactor - 1) * 400)) _
                / SSTwipsPerPixel
            NewDown = (SSwinrect.Bottom * ResFactorV + ((ResFactorV - 1) * 400)) _
                / SSTwipsPerPixel
        End If
        
        '* Adjustment to get correct units for the MoveSize command.
        NewRight = NewRight * SSTwipsPerPixel
        NewDown = NewDown * SSTwipsPerPixel
        
        If NewRight < 0 Then NewRight = 0
        If NewDown < 0 Then NewDown = 0
        
        '* Allow skipping resolution adjustment window positioning.
        '* v10
        'If frm.AutoCenter = True Or _
        '    (InStr(1, frm.Tag, "SSSkipAutoPosition") = 0) Then
        If frm.AutoCenter = True _
        Or ( _
            (InStr(1, frm.tag, "SSSkipAutoPosition") = 0) _
            And (SS_IsOn(frm, "AutoPosition")) _
        ) Then
            '* v10 - Try a different movesize method for pop-up forms
            ''* If form is invisible or not active, make it visible/active so that
            ''* we can use the MoveSize method to position it.
            'foundit = False
            'If SSInitWhenFormAlreadyOpen Then
            '    If Not frm.Visible Then
            '        frm.Visible = True
            '        foundit = True
            '    End If
            'End If
            'DoCmd.MoveSize NewRight, NewDown   '(uses different units than the setwindowpos API, below)
            'If foundit Then
            '    '* v10 - This next statement does not work when echo is off
            '    '* Maybe need to turn echo on, make form invisible, turn echo off ...?
            '    frm.Visible = False
            'End If
            If frm.PopUp Then
                '* This is an alternate method for setting window position for pop-up forms
                '* it doesn't require that the form be made visible
                SkipSS = True
                Call SS_apiSetWindowPos(frm.hwnd, 0, NewRight / SSTwipsPerPixel, NewDown / SSTwipsPerPixel, 0, 0, _
                        SS_SWP_NOSIZE Or SS_SWP_NOZORDER)
                SkipSS = False
            Else
                '* If form is invisible or not active, make it visible/active so that
                '* we can use the MoveSize method to position it.
                FoundIt = False
                If SSInitWhenFormAlreadyOpen Then
                    If Not frm.visible Then
                        frm.visible = True
                        FoundIt = True
                    End If
                End If
                DoCmd.MoveSize NewRight, NewDown   '(uses different units than the setwindowpos API, below)
                If FoundIt Then
                    'pddxxx v10 - This next statement does not work when echo is off
                    '* Maybe need to turn echo on, make form invisible, turn echo off ...?
                    frm.visible = False
                End If
            End If
            
        End If
        
        '* This is an alternate method for setting window position
        'SkipSS = True
        'Call SS_apiSetWindowPos(frm.hWnd, 0, NewRight, NewDown, 0, 0, _
        '        SS_SWP_NOSIZE Or SS_SWP_NOZORDER)
        'SkipSS = False
        
    End If
End If

Marker = 28
'* save the current window height and width for use as "old" values next time.
'* v10 fix overflow
'SSCurrentFormHeight = DesiredFormHeight
'SSCurrentFormWidth = DesiredFormWidth
'* These "old" values may not be used anymore
SSCurrentFormHeight = NewFormHeight
SSCurrentFormWidth = NewFormWidth

'* Get the inside height and width values for non-autoresize scaling. Save them in form tag property
'* v10 Only save these for non-autoresize scaling
'SS_SaveFormInsideSettings frm
i = InStr(1, frm.tag, "SSInfo:")
If i > 0 Then
    SS_SaveFormInsideSettings frm
End If

If frm.DefaultView = conContinuousForms Then
    '* Put continuous form info into CF array
    '* Replace an entry if it is already there
    '* If array is full, delete first entry and add to the end.
    i = 0
    FoundIt = False
    Do While i <= conCFmax
        If (CF(i).FormName = frm.name) Or (CF(i).FormName = "") Then
            FoundIt = True
            Exit Do
        End If
        i = i + 1
    Loop
    If Not FoundIt Then
        '* delete first entry
        For i = 0 To conCFmax - 1
            CF(i).FormName = CF(i + 1).FormName
            CF(i).OldHeight = CF(i + 1).OldHeight
        Next i
        i = conCFmax
    End If
    CF(i).FormName = frm.name
    '* v10 fix overflow
    'CF(i).oldheight = DesiredFormHeight
    CF(i).OldHeight = NewFormHeight
End If

Marker = 29
    
Exit_Section:
    On Error Resume Next
    '* Turn off some module flags when appropriate
    If SkipSS Then
    Else
        If frm.name = SSMainFormName Then
            JustOpened = False
            SSMainFormName = ""
        End If
    End If
    '* This moved here from above to prevent switching off 'JustOpened' flag too soon.
    SkipSS = False
    
    If conDebug = 1 Then MsgBox "done with SS_Rescale for " & frm.name
    On Error GoTo 0
    Exit Sub

Err_Section:
    Select Case Err
    Case 2475
        '* No form is currently open
        GoTo Exit_Section
    Case 2452
        '* invalid reference to parent property
        Resume After_Subform_Check
    Case 2459
        Resume After_Subform_Check
    Case 2462
        '* section does not exist
        Resume Next
    Case 6
        '* overflow
        MsgBox "Error (" & Marker & ") in SS_Rescale " & Err & " " & Err.Description & " - You may be trying to rescale your form beyond the MS Access 22 inch limit"
        Resume Next
    Case 2046
        '* size to fit form command not available
        Resume Next
    Case Else
        MsgBox "Error (" & Marker & ") in SS_Rescale " & Err & " " & Err.Description
        If conExitOnError Then
            GoTo Exit_Section
        Else
            Resume Next
        End If
    End Select
End Sub

Sub SS_RemoveFRRows(frmname As String)
'* Remove rows from the font/ratio array that correspond to the passed form name
Dim i As Integer
Dim j As Integer
Dim startpoint As Integer
Dim startofnextform As Integer
Dim entriestoremove As Integer
Dim newlastrow As Integer

On Error GoTo Err_SS_RemoveFRRows

'* find first occurance of frmname in the FR array
startpoint = -1
For i = 0 To FRLastRow
    If FR(i).FormName = frmname Then
        startpoint = i
        Exit For
    End If
Next i
If startpoint = -1 Then GoTo Exit_SS_RemoveFRRows

'* find position where next form starts
startofnextform = -1
For i = startpoint To FRLastRow
    If FR(i).FormName <> frmname Then
        startofnextform = i
        Exit For
    End If
Next i

entriestoremove = startofnextform - startpoint
newlastrow = FRLastRow - entriestoremove
If newlastrow < 0 Then newlastrow = 0

'* remove rows
j = startofnextform
For i = startpoint To (FRLastRow - 1)
    FR(i).FormName = FR(j).FormName
    FR(i).ControlName = FR(j).ControlName
    FR(i).FontRatio = FR(j).FontRatio
    FR(i).FontName = FR(j).FontName
    If j < FRLastRow Then j = j + 1
Next i

'* set new last row value
FRLastRow = newlastrow

Exit_SS_RemoveFRRows:
    On Error GoTo 0
    Exit Sub

Err_SS_RemoveFRRows:
    If Err = 2475 Then
        '* No form is currently open
        GoTo Exit_SS_RemoveFRRows
    Else
        MsgBox "Error in SS_RemoveFRRows " & Err & " " & Err.Description
        If conExitOnError Then
            GoTo Exit_SS_RemoveFRRows
        Else
            Resume Next
        End If
    End If
        
End Sub
Function SS_ResizeColWd(widths As String, cpctH As Long) As String
'* Resize column widths for combo and list boxes.
'* v10
Dim i As Integer
Dim pos As Integer
Dim val1 As Single
Dim w As String

On Error GoTo Err_SS_ResizeColWd
w = ""
If (widths = "") Or IsNull(widths) Then
Else
    i = 1
    pos = InStr(i, widths, ";")
    Do While pos <> 0
        If i = pos Then
            '* No col width value entered
            w = w & ";"
        Else
            val1 = Val(Mid(widths, i, pos - 1))
            val1 = val1 * (1 + (cpctH / (100 * 100)))
            val1 = Int(val1 * 100 + 0.5) / 100  'Round it to 2 places
            'pddxxx v10.1 - Str() function was removing non-US decimal points and replacing them with US ones.
            'w = w & Trim(Str(val1)) & ";"
            w = w & Trim(val1) & ";"
            
        End If
        i = pos + 1
        pos = InStr(i, widths, ";")
    Loop
    
    If i > Len(widths) Then
        '* The last col width value is empty
    Else
        val1 = Val(Mid(widths, i, Len(widths)))
        val1 = val1 * (1 + (cpctH / (100 * 100)))
        val1 = Int(val1 * 100 + 0.5) / 100  'Round it to 2 places
        'pddxxx v10.1 - Str() function was removing non-US decimal points and replacing them with US ones.
        'w = w & Trim(Str(val1))
        w = w & Trim(val1)
        
    End If
End If

SS_ResizeColWd = w

On Error GoTo 0
Exit Function

Err_SS_ResizeColWd:
    If Err = 2475 Then
        '* No form is currently open
        Exit Function
    Else
        MsgBox "Error in SS_ResizeColWd " & Err & " " & Err.Description
        Resume Next
    End If

End Function
Private Function SS_GetDisplayInfo() As Integer
'* Get system and desktop info for scaling
Dim Marker As Integer
Dim Rtn As Integer
Dim RetValue As Long

On Error GoTo Err_Section
Marker = 1

SShDesktopWnd = SS_apiGetDesktopWindow() 'get handle to desktop
SShDCcaps = SS_apiGetDC(SShDesktopWnd) 'get display context for desktop
DisplayHeight = SS_apiGetDeviceCaps(SShDCcaps, SS_VERTRES) 'vertical resolution
DisplayWidth = SS_apiGetDeviceCaps(SShDCcaps, SS_HORZRES) 'horizontal resolution
DisplayLogPixelsY = SS_apiGetDeviceCaps(SShDCcaps, SS_LOGPIXELSY)
WindowScrollBar = SS_apiGetSystemMetrics(SS_SM_CXVSCROLL)
WindowFrame = SS_apiGetSystemMetrics(SS_SM_CXFRAME)
RetValue = SS_apiReleaseDC(SShDesktopWnd, SShDCcaps) 'release display contex
SSTwipsPerPixel = 1440 / DisplayLogPixelsY

Exit_Section:
    On Error Resume Next
    SS_GetDisplayInfo = Rtn
    On Error GoTo 0
    Exit Function
Err_Section:
    Select Case Err
    Case Else
        Beep
        MsgBox "Error in SS_GetDisplayInfo (" & Marker & "), object " & Err.Source & ": " & Err.Number & " - " & Err.Description
    End Select
    Err.Clear
    Resume Exit_Section
End Function

Function SS_ResizeControls(frm As Form, _
    cpctH As Long, _
    cpctV As Long, _
    iHandleEchoInternally As Integer _
    ) As Integer
'* Resize each control on passed form according to the horizontal and vertical change percentage.
'* cpctH - horizontal window size change percent * 100
'* cpctH - vertical window size change percent * 100
    Dim i As Integer
    Dim j As Integer
    Dim K As Integer
    Dim iOG As Integer
    Dim iTC As Integer
    Dim iSF As Integer
    Dim iLT As Integer
    Dim l As Long
    Dim Rtn As Integer
    Dim T1 As String
    Dim sFocusControl As String
    Dim SelStart As Long
    Dim SelLength As Long
    Dim ctl As control
    Dim ctlloop As control
    Dim iFoundIt As Integer
    Dim LeftAdj As Single
    Dim TopAdj As Single
    Dim WidthAdj As Single
    Dim HeightAdj As Single
    Dim TempAdj As Single
    Dim TabFixedHeight As Integer
    Dim iSaveFormWidth As Integer
    Dim iSaveSectionHeight As Integer
    Dim iFixedBorderWidth As Integer
    Dim iFixedBorderHeight As Integer
    
    Dim VertAdj As Single
    Dim HorzAdj As Single
    Dim iNoOptionGroups As Integer
    Dim OGLastRow As Integer
    Dim OG() As SS_RECT_WDHT_TC
    Dim iSkipControl As Integer
    Dim dtopdiff As Double
    Dim dhtdiff As Double
    Dim dleftdiff As Double
    Dim dwddiff As Double
    Dim iLoopVal As Integer
    Dim iNoTabControls As Integer
    Dim TCLastRow As Integer
    Dim TC() As SS_RECT_WDHT_TC
    Dim LG(conLayoutsAllowedPerForm) As LGType
    Dim LT() As LGTableType
    Dim SF(conSubformsAllowedPerForm) As SFPrevHtWdType
    Dim LGLastRow As Integer
    Dim LTLastRow As Integer
    Dim SFLastRow As Integer
    Dim lLayoutID As Long
    Dim iNoLayouts As Integer
    Dim IsColIndicator As Boolean
    Dim IsRowIndicator As Boolean
    
    Dim minLeft As Long
    Dim minTop As Long
    Dim maxRight As Long
    Dim maxBottom As Long
    Dim lTop As Long
    Dim NewPos As Integer
    Dim IncrAdj As Integer
    
    Dim iNoSubformControls As Integer
    Dim Marker As Integer
    Dim FormHasAnchors As Boolean
    Dim SaveVertAnchor As Integer
    Dim SaveHorzAnchor As Integer
    
    Dim blnAutoAdjustSizeMode As Boolean
    Dim blnRetainProportion As Boolean
    Dim blnOptGroupLoopAdj As Boolean
    Dim blnTabCtlLoopAdj As Boolean
    Dim blnScaleFonts As Boolean
    Dim blnChangeFonts As Boolean
            

On Error GoTo Err_Section
Marker = 1

If conDebug = 1 Then MsgBox "ResizeControls for " & frm.name

'* Turning echo off here reduces flickering for complex forms
If iHandleEchoInternally Then Application.Echo False, "ShrinkerStretcher..."

Rtn = 0
FormHasAnchors = False

VertAdj = (1 + (cpctV / (100 * 100)))
HorzAdj = (1 + (cpctH / (100 * 100)))

'* Initialize each adjustment variable
LeftAdj = HorzAdj
WidthAdj = HorzAdj
TopAdj = VertAdj
HeightAdj = VertAdj

'* Initialize some other variables
blnAutoAdjustSizeMode = SS_IsOn(frm, "AutoAdjustSizeMode")
blnRetainProportion = SS_IsOn(frm, "RetainProportion")
blnOptGroupLoopAdj = SS_IsOn(frm, "OptGroupLoopAdj")
blnTabCtlLoopAdj = SS_IsOn(frm, "TabCtlLoopAdj")
blnScaleFonts = SS_IsOn(frm, "ScaleFonts")
blnChangeFonts = SS_IsOn(frm, "ChangeFonts")


#If Access2007 Then
'*******************************************************************************
'* Save name of control that has the focus when form is maximized so we can return the focus
'* to it when the tabfixedheight, width adjustments cause the focus to be lost.
'* This won't work when a maximized report is closed, and a docmd.maximize happens for the form
Marker = 10
If SSStaticResize Then
    sFocusControl = ""
Else
    If SS_apiIsZoomed(frm.hwnd) Then
        sFocusControl = ""
        SelStart = 0
        SelLength = 0
        On Error Resume Next
        With frm.ActiveControl
            sFocusControl = .name
            SelStart = .SelStart
            SelLength = .SelLength
        End With
        Err.Clear
        On Error GoTo Err_Section
    Else
        sFocusControl = ""
    End If
End If

'* Check for and count option groups. Check for tab controls.
'* Find any layout groupings
Marker = 20
OGLastRow = -1
TCLastRow = -1
LGLastRow = -1
LTLastRow = -1
SFLastRow = -1
iNoOptionGroups = True
iNoTabControls = True
iNoSubformControls = True
iNoLayouts = True
For j = 0 To (frm.Count - 1)
    Set ctl = frm(j)
    
    '* v10
    '* Check for horizontal and vertical anchors. Only proceed if form was just opened
    Marker = 30
    If JustOpened Then
        '* Scale the form, anchors and all when just opened. We'll have to disable the anchors first.
    Else
        If frm.CurrentView = conDesignView Then
            '* Go ahead and rescale the form in design view. Anchors should have no effect.
        Else
            '* Default values for Anchors is 0
            If (ctl.HorizontalAnchor + ctl.VerticalAnchor) = 0 Then
                '* Default anchors. OK to proceed.
            Else
                '* Double check to see if anchors are set to default. Anchor values are sometimes
                '* random numbers.
                If frm(ctl.name).HorizontalAnchor + frm(ctl.name).VerticalAnchor = 0 Then
                    '* Default anchors. OK to proceed
                Else
                    '* Exit this routine immediately
                    '* Form was scaled when JustOpened, further rescalings must be disabled so anchors will behave normally
                    FormHasAnchors = True
                    If conDebugExit Then Debug.Print "Form has anchors. Exiting."
                    GoTo Exit_Section
                End If
            End If
        End If
    End If
    
    Marker = 40
    If TypeOf ctl Is SubForm Then
        iNoSubformControls = False
        '* Fill subform prev ht wd array
        SFLastRow = SFLastRow + 1
        If SFLastRow > conSubformsAllowedPerForm Then
            '* There are too many subforms on this form.
            If SFLastRow = (conSubformsAllowedPerForm + 1) Then
                MsgBox "Error (" & Marker & ") in SS_ResizeControls - " & "Need to increase value of constant 'conSubformsAllowedPerForm' in module basShrinkerStretcher."
            End If
        Else
            SF(SFLastRow).ControlName = ctl.name
            SF(SFLastRow).PrevHt = ctl.Height
            SF(SFLastRow).PrevWd = ctl.Width
        End If
    Else
        If TypeOf ctl Is OptionGroup Then
            iNoOptionGroups = False
            OGLastRow = OGLastRow + 1
        Else
            If TypeOf ctl Is TabControl Then
                iNoTabControls = False
                TCLastRow = TCLastRow + 1
                '* Use actual default value for tab fixed height, so that it can be more easily scaled.
                If ctl.Style = 2 Then   'Style = None
                    ctl.TabFixedHeight = 0
                Else
                    If ctl.TabFixedHeight = 0 Then
                        ctl.TabFixedHeight = 270
                    End If
                End If
            Else
                '* v10 Make sure that chart fonts are scaled with the chart
                If (TypeOf ctl Is BoundObjectFrame) Or (TypeOf ctl Is ObjectFrame) Then
                    On Error Resume Next
                    '* v10 If OLEClass name contains "Chart" then object may have fonts that have
                    '* an autoscale setting that can be turned on.
                    'Select Case Trim(ctl.OLEClass)
                    'Case "Microsoft Graph Chart", "Microsoft Graph 2000 Chart"
                    '    ctl.Object.ChartArea.AutoScaleFont = True
                    'Case Else
                    'End Select
                    If InStr(1, ctl.OLEClass, "Chart") > 0 Then
                        '* Could be "Microsoft Graph Chart", "Microsoft Graph 2000 Chart", etc...
                        '* Turn on AutoScaling for chart fonts
                        ctl.Object.ChartArea.AutoScaleFont = True
                    End If
                    Err.Clear
                    On Error GoTo Err_Section
                End If
            End If
        End If
    End If

    Marker = 50
    On Error Resume Next
    
    '* Check for image size mode property, adjust it if necessary
    'If ctl.SizeMode = acOLESizeClip Then
        If blnAutoAdjustSizeMode Then
            '* Adjust SizeMode according to whether form retains aspect ratio or not
            If cpctH = cpctV Then
                If blnRetainProportion Then
                    ctl.SizeMode = acOLESizeZoom
                Else
                    ctl.SizeMode = acOLESizeStretch
                End If
            Else
                ctl.SizeMode = acOLESizeStretch
            End If
        End If
    'End If

    '* Layout group processing
    lLayoutID = 0
    lLayoutID = ctl.LayoutID
    Err.Clear
    On Error GoTo Err_Section
    If lLayoutID = 0 Then
        '* Control is not a part of a layout grouping
    Else
        iNoLayouts = False
        LTLastRow = LTLastRow + 1
        '* Check to see if it already exists in the array
        iFoundIt = False
        For K = 0 To LGLastRow
            If lLayoutID = LG(K).LayoutID Then
                iFoundIt = True
                Exit For
            End If
        Next K
        If iFoundIt Then
            '* The LayoutID already exists in our array
        Else
            '* Add it
            LGLastRow = LGLastRow + 1
            If LGLastRow > conLayoutsAllowedPerForm Then
                '* There are too many Layout Groupings on this form.
                If LGLastRow = (conLayoutsAllowedPerForm + 1) Then
                    MsgBox "Error (" & Marker & ") in SS_ResizeControls - " & "Need to increase value of constant 'conLayoutsAllowedPerForm' in module basShrinkerStretcher."
                End If
            Else
                LG(LGLastRow).LayoutID = lLayoutID
            End If
        End If
    End If
Next j

If conDebugRC Then
    Debug.Print "LG Layout Group array"
    For K = 0 To LGLastRow
        Debug.Print K & ": " & LG(K).LayoutID
    Next K
End If

Marker = 60
'* Skip rescaling when change percentages are 0.
If cpctV = 0 And cpctH = 0 Then
    '* Control sizes will not be changed...
    If iNoSubformControls Then
        '* Skip rescaling
        If conDebugExit Then Debug.Print "Change percentages are 0, and no subform controls. Exiting."
        GoTo Exit_Section
    Else
        '* This form has subform controls
        '* We must continue scaling because one of these subforms may be a datasheet subform and
        '* these can't be skipped.
    End If
Else
End If

'pddxxx - for debugging
'If frm.Name = "ssmain" Then
'    If conDebug = 1 Then MsgBox "rescaling SSMain"
'End If

'* Check for option groups and tab controls and layouts
If iNoOptionGroups And iNoTabControls And iNoLayouts Then
Else
    If iNoOptionGroups Then
    Else
        ReDim OG(OGLastRow)
    End If
    If iNoTabControls Then
    Else
        ReDim TC(TCLastRow)
    End If
    If iNoLayouts Then
    Else
        '* ReDim size will be enough to fit all layout controls on form,
        '* but we're only interested in column and row headings
        ReDim LT(LTLastRow)
        
        'pddxxx v10 - the control with the focus in a layout group looses the focus - and disappears - when the
        ' group INCREASES in size. This was an attempt to re-set the focus. 'ActiveControl' seems to not recognize the issue.
        '* Set focus control
        'sFocusControl = ""
        'SelStart = 0
        'SelLength = 0
        'On Error Resume Next
        'With frm.ActiveControl
        '    sFocusControl = .Name
        '    Debug.Print "sFocusControl = " & sFocusControl
        '    SelStart = .SelStart
        '    SelLength = .SelLength
        'End With
        'Err.Clear
        'On Error GoTo Err_Section
    End If
    iOG = 0
    iTC = 0
    iLT = 0
    For j = 0 To (frm.Count - 1)
        Set ctl = frm(j)
        
        '* v10 Check to see if control is part of a layout group
        lLayoutID = 0
        On Error Resume Next
        lLayoutID = ctl.LayoutID
        Err.Clear
        On Error GoTo Err_Section
        If lLayoutID = 0 Then
        Else
            IsRowIndicator = False
            IsColIndicator = False
            '* Put it in LT array
            LT(iLT).ControlName = ctl.name
            LT(iLT).IsColIndicator = IsColIndicator
            LT(iLT).IsRowIndicator = IsRowIndicator
            LT(iLT).LayoutID = lLayoutID
            LT(iLT).Left = ctl.Left
            LT(iLT).Top = ctl.Top
            LT(iLT).Section = ctl.Section
            iLT = iLT + 1
        End If
        
        
        If TypeOf ctl Is OptionGroup Then
            '* Fill the option group array. It is used later to resize option groups.
            '* Make adjustments for option groups on tab controls
            OG(iOG).name = ctl.name
            If ctl.Parent.name = frm.name Then
                OG(iOG).Top = ctl.Top * TopAdj
                OG(iOG).Height = ctl.Height * HeightAdj
                OG(iOG).Left = ctl.Left * LeftAdj
                OG(iOG).Width = ctl.Width * WidthAdj
            Else
                '* Option group does not sit directly on form
                If TypeOf ctl.Parent Is Page Then
                    '* Option group is on a tab control
                    If ctl.Parent.Parent.MultiRow Then  'If tab control is multi-row
                        OG(iOG).Top = ctl.Top * TopAdj
                        OG(iOG).Height = ctl.Height * HeightAdj
                        OG(iOG).Left = ctl.Left * LeftAdj
                        OG(iOG).Width = ctl.Width * WidthAdj
                    Else
                        '* Option group is on a single row tab control page, so make adjustments
                        '* Since the tab control has fixed borders that do not resize, slight adjustments
                        '* need to be made to effectively scale the option group.
                        If ctl.Parent.Parent.Style = 2 Then    'Style = None
                            iFixedBorderWidth = conTabControlFixedBorderWidthStyleNone
                            iFixedBorderHeight = conTabControlFixedBorderHeightStyleNone
                        Else
                            iFixedBorderWidth = conTabControlFixedBorderWidth
                            iFixedBorderHeight = conTabControlFixedBorderHeight
                        End If
                        '* TempAdj is the adjustment for the page on the tab control
                        TempAdj = ((((ctl.Parent.Parent.Height - ctl.Parent.Parent.TabFixedHeight) * VertAdj) _
                            - (iFixedBorderHeight * 2)) _
                            / ctl.Parent.Height)
                        OG(iOG).Top = ((ctl.Parent.Parent.Top + ctl.Parent.Parent.TabFixedHeight) * TopAdj) _
                            + iFixedBorderHeight _
                            + ((ctl.Top - ctl.Parent.Top) * TempAdj)
                        OG(iOG).Height = ctl.Height * TempAdj
                        TempAdj = (((ctl.Parent.Parent.Width * HorzAdj) _
                            - (iFixedBorderWidth * 2)) _
                            / ctl.Parent.Width)
                        OG(iOG).Width = ctl.Width * TempAdj
                        OG(iOG).Left = (ctl.Parent.Parent.Left * LeftAdj) _
                            + iFixedBorderWidth _
                            + ((ctl.Left - ctl.Parent.Left) * TempAdj)
                    End If
                Else
                    OG(iOG).Top = ctl.Top * TopAdj
                    OG(iOG).Height = ctl.Height * HeightAdj
                    OG(iOG).Left = ctl.Left * LeftAdj
                    OG(iOG).Width = ctl.Width * WidthAdj
                End If
            End If
            iOG = iOG + 1
        End If
        If TypeOf ctl Is TabControl Then
            '* Fill the Tab Control array. It is used later to resize Tab Controls.
            If VertAdj < 1 Then
                '* If tab control is shrinking, adjust the TabFixedHeight, and Width
                '* before scaling controls within it. This gives controls within more rescaling room.
                ctl.TabFixedHeight = ctl.TabFixedHeight * HeightAdj
                ctl.TabFixedWidth = ctl.TabFixedWidth * WidthAdj
            End If
            '* Set tab control border width and height variables depending on tab control style
            If ctl.Style = 2 Then   'Style = None
                iFixedBorderWidth = conTabControlFixedBorderWidthStyleNone
                iFixedBorderHeight = conTabControlFixedBorderHeightStyleNone
            Else
                iFixedBorderWidth = conTabControlFixedBorderWidth
                iFixedBorderHeight = conTabControlFixedBorderHeight
            End If
            
            '* New variables were added to the TC array type to facilitate better
            '* tab control scaling.
            TC(iTC).name = ctl.name
            TC(iTC).Top = ctl.Top * TopAdj
            TC(iTC).Height = ctl.Height * HeightAdj
            TC(iTC).Left = ctl.Left * LeftAdj
            TC(iTC).Width = ctl.Width * WidthAdj
            TC(iTC).OrigPageLeft = ctl.Pages(0).Left
            TC(iTC).OrigPageTop = ctl.Pages(0).Top
            If ctl.MultiRow Then
                TC(iTC).PageHorzAdj = WidthAdj
                TC(iTC).PageVertAdj = HeightAdj
            Else
                TC(iTC).PageHorzAdj = ((ctl.Width * WidthAdj) _
                    - (iFixedBorderWidth * 2)) _
                    / ctl.Pages(0).Width
                If TC(iTC).PageHorzAdj < 0 Then
                    TC(iTC).PageHorzAdj = WidthAdj
                End If
                TabFixedHeight = ctl.TabFixedHeight
                TC(iTC).PageVertAdj = (((ctl.Height - TabFixedHeight) * HeightAdj) _
                    - (iFixedBorderHeight * 2)) _
                    / ctl.Pages(0).Height
                If TC(iTC).PageVertAdj < 0 Then
                    TC(iTC).PageVertAdj = HeightAdj
                End If
            End If
            iTC = iTC + 1
        End If
    Next j
End If

Marker = 70
'* v10
If iNoLayouts Then
Else
    '* Find Row and Column headers/indicators and cull the rest of the entries
    '* For each layout group
    For i = 0 To LGLastRow
        minLeft = conAccessSizeLimit
        minTop = conAccessSizeLimit
        '* For each control in a layout
        For j = 0 To LTLastRow
            '* For each control in the layout group
            If LG(i).LayoutID = LT(j).LayoutID Then
                If LT(j).Left < minLeft Then
                    minLeft = LT(j).Left
                End If
                lTop = xg_GetActualCtlTop(frm, LT(j).Section, LT(j).Top)
                If lTop < minTop Then
                    minTop = lTop
                End If
            End If
        Next j
        For j = 0 To LTLastRow
            If LG(i).LayoutID = LT(j).LayoutID Then
                If LT(j).Left = minLeft Then
                    LT(j).IsRowIndicator = True
                End If
                lTop = xg_GetActualCtlTop(frm, LT(j).Section, LT(j).Top)
                If lTop = minTop Then
                    LT(j).IsColIndicator = True
                End If
            End If
        Next j
    Next i
End If

If conDebugRC Then
    Debug.Print "LT Layout Table array"
    For K = 0 To LTLastRow
        Debug.Print K & ": " & LT(K).ControlName & " " & LT(K).LayoutID & " " & LT(K).IsRowIndicator & " " & LT(K).IsColIndicator & " " & LT(K).Left & " " & LT(K).Top & " " & LT(K).Section '& " " & LT(k).IsLeftTop & LT(k).IsRightTop & LT(k).IsLeftBottom & LT(k).IsRightBottom
    Next K
End If

Marker = 80
If cpctV > 0 Then
    '* When form is stretching, enlarge sections before controls
    '* A 2100 error can occur when trying to set height beyond Access limit
    '* A 2134 error can occur when trying to set width beyond Access limit
    On Error Resume Next
    For i = 0 To 4
        '* all sections:
        If frm.Section(i).Height <> 0 Then
            l = frm.Section(i).Height * HeightAdj
            frm.Section(i).Height = l
        End If
    Next i
    Err.Clear
    On Error GoTo Err_Section
End If

If cpctH > 0 Then
    '* When form is stretching, enlarge sections before controls
    '* all sections:
    If frm.Width <> 0 Then
        l = frm.Width * WidthAdj
        frm.Width = l
    End If
End If

Marker = 90
'* Shrink/stretch controls
For j = 0 To (frm.Count - 1)
    Set ctl = frm(j)
    '* Set control properties.
    iSkipControl = False
    If TypeOf ctl Is Page Or TypeOf ctl Is TabControl Then
        '* skip tab controls for now.
        iSkipControl = True
    End If
    If TypeOf ctl Is OptionGroup Then
        '* skip option groups for now
        iSkipControl = True
    End If
    If iSkipControl Then
        '* Skip this control
    Else
        '* v10
        lLayoutID = 0
        On Error Resume Next
        
        '* Also check for anchors
        SaveHorzAnchor = 0
        SaveVertAnchor = 0
        '* Save anchors for restoring later
        SaveHorzAnchor = ctl.HorizontalAnchor
        SaveVertAnchor = ctl.VerticalAnchor
        '* Set anchors to default (safe) values
        '*************************************************************
        '* If you get a compile error on the line below, you need to
        '* set the compiler directive constant "Access2007" to False.
        '*************************************************************
        ctl.HorizontalAnchor = acHorizontalAnchorLeft
        ctl.VerticalAnchor = acVerticalAnchorTop
        
        lLayoutID = ctl.LayoutID
        Err.Clear
        On Error GoTo Err_Section
        If lLayoutID = 0 Then
        Else
            '* Find array record for layout table
            For iLT = 0 To LTLastRow
                If ctl.name = LT(iLT).ControlName Then
                    Exit For
                End If
            Next iLT
        End If
        
        Marker = 100
        '* v10
        'If TypeOf ctl Is SubForm Then
        '    '* Remember width and height for later proportional scaling
        '    '* v10 can be a problem here if subform is a part of a
        '    'layout grouping. It may have been scaled already as a member of a row
        '    'or column of a Layout Table, so sf_ values will reflect new size.
        '    'Need array to hold these previous sizes, set them just prior to recursive
        '    'call.
        '    sf_PrevHt = ctl.Height
        '    sf_PrevWd = ctl.Width
        'End If
        '* Adjustments for controls on tab control pages
        If iNoTabControls Then
        Else
            '* Make adjustment for control on a tab control page.
            '* Initialize adjustment vars
            LeftAdj = HorzAdj
            WidthAdj = HorzAdj
            TopAdj = VertAdj
            HeightAdj = VertAdj
            If ctl.Parent.name <> frm.name Then
                '* Control has a parent. Could be a label, a control on an option group,
                '* on a tab control, or a control on an option group on a tab control.
                '* Traverse from child to parent via loop until a tab control page is found.
                Set ctlloop = ctl
                Do While ctlloop.Parent.name <> frm.name
                    Set ctlloop = ctlloop.Parent
                    If TypeOf ctlloop Is Page Then
                        Exit Do
                    End If
                Loop
                If TypeOf ctlloop Is Page Then
                    '* Ctl is part of a tab control page
                    If ctlloop.Parent.MultiRow Then
                        '* Objects on multi-row tab controls will be scaled using default
                        '* adjustment variable values.
                    Else
                        '* Find the entry in the TC array for the tab control this page is a part of
                        iFoundIt = False
                        For i = 0 To TCLastRow
                            If ctlloop.Parent.name = TC(i).name Then
                                iFoundIt = True
                                Exit For
                            End If
                        Next i
                        If iFoundIt Then
                            '* OK, now we know the ctl is on a tab control page, and we have
                            '* the rescaled position of the tab control from the TC array.
                            If ctlloop.Parent.Style = 2 Then   'Style = None
                                iFixedBorderWidth = conTabControlFixedBorderWidthStyleNone
                                iFixedBorderHeight = conTabControlFixedBorderHeightStyleNone
                            Else
                                iFixedBorderWidth = conTabControlFixedBorderWidth
                                iFixedBorderHeight = conTabControlFixedBorderHeight
                            End If
                            If ctl.Left <> 0 Then
                                WidthAdj = TC(i).PageHorzAdj
                                '* New left position is
                                '* New tab control left plus fixed border width,
                                '* plus new distance from page border to control left
                                '* So, LeftAdj is all that over the original ctl.Left
                                LeftAdj = ( _
                                    (TC(i).Left) _
                                    + iFixedBorderWidth _
                                    + ((ctl.Left - TC(i).OrigPageLeft) * TC(i).PageHorzAdj) _
                                    ) / ctl.Left
                            Else
                            End If
                            If ctl.Top <> 0 Then
                                TabFixedHeight = ctlloop.Parent.TabFixedHeight
                                '* New top position is
                                '* New tab control top plus adjusted tab header height
                                '* plus fixed border width,
                                '* plus new distance from page top to control top
                                '* So, TopAdj is all that over the original ctl.Top
                                TopAdj = ( _
                                    (TC(i).Top + (TabFixedHeight * HeightAdj)) _
                                    + iFixedBorderHeight _
                                    + ((ctl.Top - TC(i).OrigPageTop) * TC(i).PageVertAdj) _
                                    ) / ctl.Top
                                HeightAdj = TC(i).PageVertAdj
                            Else
                            End If
                        Else
                        End If
                    End If
                Else
                    '* Control is not part of a tab control page, so leave adjustment variables
                    '* at their original initialized values.
                End If
            Else
            End If
        End If
        
        '* Resize the control
        
        If conDebugRC Then Application.Echo True
        
        If lLayoutID = 0 Then
            '* Handle rescaling for controls that are not part of a layout group
            SkipSS = True
            Marker = 110
            ctl.Top = ctl.Top * TopAdj
            SkipSS = True
            Marker = 111
            ctl.Height = ctl.Height * HeightAdj
            SkipSS = True
            Marker = 112
            ctl.Left = ctl.Left * LeftAdj
            SkipSS = True
            Marker = 113
            ctl.Width = ctl.Width * WidthAdj
            SkipSS = False
            Marker = 114
        Else
            Marker = 120
            '* Handle rescaling for controls in a layout group
            If LT(iLT).IsRowIndicator And LT(iLT).IsColIndicator Then
                If TopAdj < 0 Then
                    SkipSS = True
                    Marker = 121
                    ctl.Top = ctl.Top * TopAdj
                Else
                    Marker = 122
                    '* Incrementally loop to new top positon
                    NewPos = ctl.Top * TopAdj
                    IncrAdj = (ctl.Height - 1)
                    '* Set loopval
                    iLoopVal = (NewPos - ctl.Top) \ IncrAdj
                    For i = 1 To iLoopVal
                        SkipSS = True
                        ctl.Top = ctl.Top + IncrAdj
                        If conDebugRC Then MsgBox "LoopVal: " & iLoopVal & " IncrAdj:" & IncrAdj & " i: " & i
                    Next i
                    SkipSS = True
                    ctl.Top = NewPos
                    If conDebugRC Then MsgBox "LoopVal: " & iLoopVal & " IncrAdj:" & IncrAdj & " i: " & i
                End If
            End If
            Marker = 123
            If LT(iLT).IsRowIndicator Then
                SkipSS = True
                Marker = 124
                ctl.Height = ctl.Height * HeightAdj
                SkipSS = True
                ctl.TopPadding = ctl.TopPadding * HeightAdj
                SkipSS = True
                ctl.BottomPadding = ctl.BottomPadding * HeightAdj
            End If
            If LT(iLT).IsRowIndicator And LT(iLT).IsColIndicator Then
                If LeftAdj < 0 Then
                    SkipSS = True
                    Marker = 125
                    ctl.Left = ctl.Left * LeftAdj
                Else
                    Marker = 126
                    '* Incrementally loop to new left positon
                    NewPos = ctl.Left * LeftAdj
                    IncrAdj = (ctl.Width - 1)
                    '* Set loopval
                    iLoopVal = (NewPos - ctl.Left) \ IncrAdj
                    For i = 1 To iLoopVal
                        SkipSS = True
                        ctl.Left = ctl.Left + IncrAdj
                        If conDebugRC Then MsgBox "LoopVal: " & iLoopVal & " IncrAdj:" & IncrAdj & " i: " & i
                    Next i
                    SkipSS = True
                    ctl.Left = NewPos
                    If conDebugRC Then MsgBox "LoopVal: " & iLoopVal & " IncrAdj:" & IncrAdj & " i: " & i
                End If
            End If
            Marker = 127
            If LT(iLT).IsColIndicator Then
                SkipSS = True
                ctl.Width = ctl.Width * WidthAdj
                SkipSS = True
                ctl.LeftPadding = ctl.LeftPadding * WidthAdj
                SkipSS = True
                ctl.RightPadding = ctl.RightPadding * WidthAdj
            End If
            SkipSS = False
        End If
        
        Marker = 130
        '* v10 Restore anchors
        On Error Resume Next
        ctl.HorizontalAnchor = SaveHorzAnchor
        ctl.VerticalAnchor = SaveVertAnchor
        Err.Clear
        On Error GoTo Err_Section
        
        If frm.CurrentView = conDesignView Then
            '* Skip recursive calls to subform when in design (static rescaling) mode.
        Else
            If TypeOf ctl Is SubForm Then
            
                '* v10
                If Left(ctl.SourceObject, 6) = "Query." _
                    Or Left(ctl.SourceObject, 6) = "Table." Then
                    '* Skip recursive subform rescaling when source object is table or query
                Else
                    '* Set sf_prevht and sf_prevwd global variables here
                    '* Since this control may have already been scaled as a part of a layout group,
                    '* we need to set global vars to what the size of the subform control was before scaling.
                    '* Those values have been saved in the SF array.
                    For iSF = 0 To SFLastRow
                        If SF(iSF).ControlName = ctl.name Then
                            sf_PrevHt = SF(iSF).PrevHt
                            sf_PrevWd = SF(iSF).PrevWd
                            Exit For
                        End If
                    Next iSF
                
                    '* Force a recursive call to SS for the subform of a parent form.
                    '* The orig width and height don't matter here because we will be processing a subform.
                    '* Error checking added
                    Err.Clear
                    On Error Resume Next
                    
                    SS_Rescale frm(ctl.name).Form, conOrigWd, conOrigHt, iHandleEchoInternally
                    If Err = 0 Then
                    Else
                        If Err = 2455 Then
                            '* Subform not available!!
                        Else
                            If Err = 2467 Then
                                '* Object no longer exists - unbound subform error
                            Else
                                MsgBox "SS_ResizeControls subform section " & Err & " " & Err.Description
                            End If
                        End If
                        Err.Clear
                    End If
                    On Error GoTo Err_Section
                End If
            End If
        End If
        
        '* Reset subform variables
        If TypeOf ctl Is SubForm Then
            sf_PrevHt = 0
            sf_PrevWd = 0
        End If
        
        Marker = 140
        '* Column width adjustment
        If TypeOf ctl Is ListBox Then
            If IsNull(ctl.ColumnWidths) Then
            Else
                T1 = ctl.ColumnWidths
                ctl.ColumnWidths = SS_ResizeColWd(T1, (WidthAdj - 1) * 100 * 100)
            End If
        End If
        If TypeOf ctl Is ComboBox Then
            If IsNull(ctl.ColumnWidths) Then
            Else
                T1 = ctl.ColumnWidths
                ctl.ColumnWidths = SS_ResizeColWd(T1, (WidthAdj - 1) * 100 * 100)
                ctl.ListWidth = ctl.ListWidth * WidthAdj
            End If
        End If
        
        If conDebugRC Then MsgBox "Just Rescaled: " & ctl.name
        
    End If
Next j

Marker = 150
'* Now handle fonts
If blnScaleFonts Then
    For j = 0 To (frm.Count - 1)
        Set ctl = frm(j)
        '* Set control properties.
        iSkipControl = False
        If TypeOf ctl Is Page Or TypeOf ctl Is TabControl Then
            '* skip tab controls for now.
            iSkipControl = True
        End If
        If TypeOf ctl Is OptionGroup Then
            '* skip option groups for now
            iSkipControl = True
        End If
        If iSkipControl Then
            '* Skip this control
        Else
            '* Resize fonts
            SS_SetFontSize frm, ctl, blnChangeFonts
        End If
    Next j
End If

Marker = 160
'* Reset adjustment factors
If iNoTabControls Then
Else
    LeftAdj = HorzAdj
    WidthAdj = HorzAdj
    TopAdj = VertAdj
    HeightAdj = VertAdj
End If

'* Save form width so that it can be changed, and restored later.
iSaveFormWidth = frm.Width

'* Now handle option groups
If iNoOptionGroups Then
Else
    '* Loop through option group array and resize each option group
    For iOG = 0 To OGLastRow
        Set ctl = frm(OG(iOG).name)
        ctl.Top = OG(iOG).Top
        ctl.Height = OG(iOG).Height
        ctl.Left = OG(iOG).Left
        ctl.Width = OG(iOG).Width
        If ctl.Top <> OG(iOG).Top _
            Or ctl.Height <> OG(iOG).Height _
            Or ctl.Left <> OG(iOG).Left _
            Or ctl.Width <> OG(iOG).Width Then
            '* For whatever reason, the direct method of resizing the control did not work,
            '* so use more sophisticated method.
            '* Increase section height to max, so that lower border won't get in the way.
            iSaveSectionHeight = frm.Section(ctl.Section).Height
            If ctl.Top <> OG(iOG).Top Then
                frm.Section(ctl.Section).Height = conAccessSizeLimit
            End If
            
            '* Incrementally change the size of option groups
            If blnOptGroupLoopAdj Then
                iLoopVal = Int((Abs(VertAdj - 1) * 20))
                If iLoopVal < 3 Then iLoopVal = 3
                If iLoopVal > 15 Then iLoopVal = 15
            Else
                iLoopVal = 5
            End If
            
            dtopdiff = (OG(iOG).Top - ctl.Top)
            dhtdiff = (OG(iOG).Height - ctl.Height)
            dleftdiff = (OG(iOG).Left - ctl.Left)
            dwddiff = (OG(iOG).Width - ctl.Width)
            For K = 1 To iLoopVal
                ctl.Top = ctl.Top + (dtopdiff / iLoopVal)
                ctl.Height = ctl.Height + (dhtdiff / iLoopVal)
                ctl.Left = ctl.Left + (dleftdiff / iLoopVal)
                ctl.Width = ctl.Width + (dwddiff / iLoopVal)
            Next K
            '* Final adjustment
            ctl.Top = OG(iOG).Top
            ctl.Height = OG(iOG).Height
            ctl.Left = OG(iOG).Left
            ctl.Width = OG(iOG).Width
            '* Reset section height
            frm.Section(ctl.Section).Height = iSaveSectionHeight
        End If
    Next iOG
    
    '* Option group rescaling can bump against form right border and widen form.
    '* This adjustment should reset it to the correct width.
    If frm.Width <> iSaveFormWidth Then
        frm.Width = iSaveFormWidth
    End If
    
End If

Marker = 170
'* Now handle tab controls
If iNoTabControls Then
Else
    For iTC = 0 To TCLastRow
        Set ctl = frm(TC(iTC).name)
        '* Handle multiple tab controls
        '* These next two lines will cause focus to be lost when form is maximized
        If VertAdj >= 1 Then
            ctl.TabFixedHeight = ctl.TabFixedHeight * HeightAdj
            ctl.TabFixedWidth = ctl.TabFixedWidth * WidthAdj
        End If
        '* Move tab control directly to its new position.
        '* Only make step adjustments if this fails
        ctl.Top = TC(iTC).Top
        ctl.Height = TC(iTC).Height
        ctl.Left = TC(iTC).Left
        ctl.Width = TC(iTC).Width
        '* Check to see if tab control adjustment is close enough. If not,
        '* use incremental adjustment method.
        If Abs(ctl.Top - TC(iTC).Top) > 4 _
            Or Abs(ctl.Height - TC(iTC).Height) > 7 _
            Or Abs(ctl.Left - TC(iTC).Left) > 4 _
            Or Abs(ctl.Width - TC(iTC).Width) > 5 Then
            '* For whatever reason, the direct method of resizing the control did not work,
            '* so use more sophisticated method.
            '* Increase section height to max, so that lower border won't get in the way.
            iSaveSectionHeight = frm.Section(ctl.Section).Height
            If ctl.Top <> TC(iTC).Top Then
                frm.Section(ctl.Section).Height = conAccessSizeLimit
            End If
            
            If blnTabCtlLoopAdj Then
                iLoopVal = Int((Abs(VertAdj - 1) * 20))
                If iLoopVal < 3 Then iLoopVal = 3
                If iLoopVal > 15 Then iLoopVal = 15
            Else
                iLoopVal = 3
            End If
            
            dtopdiff = (TC(iTC).Top - ctl.Top)
            dhtdiff = (TC(iTC).Height - ctl.Height)
            dleftdiff = (TC(iTC).Left - ctl.Left)
            dwddiff = (TC(iTC).Width - ctl.Width)
            For i = 1 To iLoopVal
                ctl.Top = ctl.Top + (dtopdiff / iLoopVal)
                ctl.Height = ctl.Height + (dhtdiff / iLoopVal)
                ctl.Left = ctl.Left + (dleftdiff / iLoopVal)
                ctl.Width = ctl.Width + (dwddiff / iLoopVal)
            Next i
            '* Final adjustments to tab control...
            If ctl.Top <> TC(iTC).Top Then ctl.Top = TC(iTC).Top
            If ctl.Height <> TC(iTC).Height Then ctl.Height = TC(iTC).Height
            If ctl.Left <> TC(iTC).Left Then ctl.Left = TC(iTC).Left
            If ctl.Width <> TC(iTC).Width Then ctl.Width = TC(iTC).Width
            
            frm.Section(ctl.Section).Height = iSaveSectionHeight
        End If
        
        '* Set page tab font size
        If blnScaleFonts Then
            SS_SetFontSize frm, ctl, blnChangeFonts
        End If
    Next iTC
    
    '* Tab control rescaling can bump against form right border and widen form.
    '* This adjustment should reset it to the correct width.
    If frm.Width <> iSaveFormWidth Then
        frm.Width = iSaveFormWidth
    End If
End If

Marker = 180
'* Restore focus if needed
If sFocusControl = "" Then
Else
    On Error Resume Next
    '* If focus was on a subform control, this statement will generate an error.
    '* That's OK because subforms do not appear to have a focus problem like other controls
    '* contained in tab controls.
    With frm(sFocusControl)
        'Application.Echo True
        'MsgBox "resetting"
        'Debug.Print "  focus was on = " & frm.ActiveControl.Name
        'Debug.Print "  resetting focus to = " & sFocusControl
        .SetFocus    '* restore focus
        .SelStart = SelStart
        .SelLength = SelLength
    End With
    Err.Clear
    On Error GoTo Err_Section
End If

If cpctV < 0 Then
    '* When form is shrinking, shrink sections after controls
    On Error Resume Next
    For i = 0 To 4
        '* All sections:
        If frm.Section(i).Height <> 0 Then
            l = frm.Section(i).Height * HeightAdj
            frm.Section(i).Height = l
        End If
    Next i
    Err.Clear
    On Error GoTo Err_Section
End If

If cpctH < 0 Then
    '* When form is shrinking, shrink sections after controls
    '* all sections:
    If frm.Width <> 0 Then
        frm.Width = frm.Width * WidthAdj
    End If
End If

Marker = 190
If frm.CurrentView = conDesignView Then
Else
    On Error Resume Next
    If iHandleEchoInternally Then
        frm.Repaint
    End If
    Err.Clear
    On Error GoTo Err_Section
End If
Marker = 200

'*
'*******************************************************************************
#Else

Marker = 210
'*******************************************************************************
'*
'* Save name of control that has the focus when form is maximized so we can return the focus
'* to it when the tabfixedheight, width adjustments cause the focus to be lost.
'* This won't work when a maximized report is closed, and a docmd.maximize happens for the form
If SSStaticResize Then
    sFocusControl = ""
Else
    If SS_apiIsZoomed(frm.hwnd) Then
        sFocusControl = frm.ActiveControl.name
        'pddxxx v10.2 - This extraneous line of code removed
        'frm.ActiveControl.SelLength
    Else
        sFocusControl = ""
    End If
End If

Marker = 220
'* Check for and count option groups. Check for tab controls.
OGLastRow = -1
TCLastRow = -1
iNoOptionGroups = True
iNoTabControls = True
iNoSubformControls = True
For j = 0 To (frm.Count - 1)
    Set ctl = frm(j)
    If TypeOf ctl Is OptionGroup Then
        iNoOptionGroups = False
        OGLastRow = OGLastRow + 1
    End If
    If TypeOf ctl Is TabControl Then
        iNoTabControls = False
        TCLastRow = TCLastRow + 1
        '* Use actual default value for tab fixed height, so that it can be more easily scaled.
        If ctl.Style = 2 Then   'Style = None
            ctl.TabFixedHeight = 0
        Else
            If ctl.TabFixedHeight = 0 Then
                ctl.TabFixedHeight = 270
            End If
        End If
    End If
    If TypeOf ctl Is SubForm Then
        iNoSubformControls = False
    End If
    
    '* v10 Make sure that chart fonts are scaled with the chart
    If (TypeOf ctl Is BoundObjectFrame) Or (TypeOf ctl Is ObjectFrame) Then
        On Error Resume Next
        '* v10
        'Select Case Trim(ctl.OLEClass)
        'Case "Microsoft Graph Chart", "Microsoft Graph 2000 Chart"
        '    ctl.Object.ChartArea.AutoScaleFont = True
        'Case Else
        'End Select
        If InStr(1, ctl.OLEClass, "Chart") > 0 Then
            '* Could be "Microsoft Graph Chart", "Microsoft Graph 2000 Chart", etc...
            '* Turn on AutoScaling for chart fonts
            ctl.Object.ChartArea.AutoScaleFont = True
        End If
        Err.Clear
        On Error GoTo Err_Section
    End If
    
    '* Check for image size mode property, adjust it if necessary
    On Error Resume Next
    'If ctl.SizeMode = acOLESizeClip Then
        If blnAutoAdjustSizeMode Then
            '* Adjust SizeMode according to whether form retains aspect ratio or not
            If cpctH = cpctV Then
                If blnRetainProportion Then
                    ctl.SizeMode = acOLESizeZoom
                Else
                    ctl.SizeMode = acOLESizeStretch
                End If
            Else
                ctl.SizeMode = acOLESizeStretch
            End If
        End If
    'End If
    Err.Clear
    On Error GoTo Err_Section
    
Next j

Marker = 230
'* Skip rescaling when change percentages are 0.
If cpctV = 0 And cpctH = 0 Then
    '* Control sizes will not be changed...
    If iNoSubformControls Then
        '* Skip rescaling
        If conDebugExit Then Debug.Print "Change pct's are 0, and no subform controls. Exiting."
        GoTo Exit_Section
    Else
        '* This form has subform controls
        '* We must continue scaling because one of these subforms may be a datasheet subform and
        '* these can't be skipped.
    End If
Else
End If

'pddxxx - for debugging
'If frm.Name = "ssmain" Then
'    If conDebug = 1 Then MsgBox "rescaling SSMain"
'End If

'* Check for option groups and tab controls
If iNoOptionGroups And iNoTabControls Then
Else
    If iNoOptionGroups Then
    Else
        ReDim OG(OGLastRow)
    End If
    If iNoTabControls Then
    Else
        ReDim TC(TCLastRow)
    End If
    iOG = 0
    iTC = 0
    For j = 0 To (frm.Count - 1)
        Set ctl = frm(j)
        If TypeOf ctl Is OptionGroup Then
            '* Fill the option group array. It is used later to resize option groups.
            '* Make adjustments for option groups on tab controls
            OG(iOG).name = ctl.name
            If ctl.Parent.name = frm.name Then
                OG(iOG).Top = ctl.Top * TopAdj
                OG(iOG).Height = ctl.Height * HeightAdj
                OG(iOG).Left = ctl.Left * LeftAdj
                OG(iOG).Width = ctl.Width * WidthAdj
            Else
                '* Option group does not sit directly on form
                If TypeOf ctl.Parent Is Page Then
                    '* Option group is on a tab control
                    If ctl.Parent.Parent.MultiRow Then  'If tab control is multi-row
                        OG(iOG).Top = ctl.Top * TopAdj
                        OG(iOG).Height = ctl.Height * HeightAdj
                        OG(iOG).Left = ctl.Left * LeftAdj
                        OG(iOG).Width = ctl.Width * WidthAdj
                    Else
                        '* Option group is on a single row tab control page, so make adjustments
                        '* Since the tab control has fixed borders that do not resize, slight adjustments
                        '* need to be made to effectively scale the option group.
                        If ctl.Parent.Parent.Style = 2 Then    'Style = None
                            iFixedBorderWidth = conTabControlFixedBorderWidthStyleNone
                            iFixedBorderHeight = conTabControlFixedBorderHeightStyleNone
                        Else
                            iFixedBorderWidth = conTabControlFixedBorderWidth
                            iFixedBorderHeight = conTabControlFixedBorderHeight
                        End If
                        '* TempAdj is the adjustment for the page on the tab control
                        TempAdj = ((((ctl.Parent.Parent.Height - ctl.Parent.Parent.TabFixedHeight) * VertAdj) _
                            - (iFixedBorderHeight * 2)) _
                            / ctl.Parent.Height)
                        OG(iOG).Top = ((ctl.Parent.Parent.Top + ctl.Parent.Parent.TabFixedHeight) * TopAdj) _
                            + iFixedBorderHeight _
                            + ((ctl.Top - ctl.Parent.Top) * TempAdj)
                        OG(iOG).Height = ctl.Height * TempAdj
                        TempAdj = (((ctl.Parent.Parent.Width * HorzAdj) _
                            - (iFixedBorderWidth * 2)) _
                            / ctl.Parent.Width)
                        OG(iOG).Width = ctl.Width * TempAdj
                        OG(iOG).Left = (ctl.Parent.Parent.Left * LeftAdj) _
                            + iFixedBorderWidth _
                            + ((ctl.Left - ctl.Parent.Left) * TempAdj)
                    End If
                Else
                    OG(iOG).Top = ctl.Top * TopAdj
                    OG(iOG).Height = ctl.Height * HeightAdj
                    OG(iOG).Left = ctl.Left * LeftAdj
                    OG(iOG).Width = ctl.Width * WidthAdj
                End If
            End If
            iOG = iOG + 1
        End If
        If TypeOf ctl Is TabControl Then
            '* Fill the Tab Control array. It is used later to resize Tab Controls.
            If VertAdj < 1 Then
                '* If tab control is shrinking, adjust the TabFixedHeight, and Width
                '* before scaling controls within it. This gives controls within more rescaling room.
                ctl.TabFixedHeight = ctl.TabFixedHeight * HeightAdj
                ctl.TabFixedWidth = ctl.TabFixedWidth * WidthAdj
            End If
            '* Set tab control border width and height variables depending on tab control style
            If ctl.Style = 2 Then   'Style = None
                iFixedBorderWidth = conTabControlFixedBorderWidthStyleNone
                iFixedBorderHeight = conTabControlFixedBorderHeightStyleNone
            Else
                iFixedBorderWidth = conTabControlFixedBorderWidth
                iFixedBorderHeight = conTabControlFixedBorderHeight
            End If
            
            '* New variables were added to the TC array type to facilitate better
            '* tab control scaling.
            TC(iTC).name = ctl.name
            TC(iTC).Top = ctl.Top * TopAdj
            TC(iTC).Height = ctl.Height * HeightAdj
            TC(iTC).Left = ctl.Left * LeftAdj
            TC(iTC).Width = ctl.Width * WidthAdj
            TC(iTC).OrigPageLeft = ctl.Pages(0).Left
            TC(iTC).OrigPageTop = ctl.Pages(0).Top
            If ctl.MultiRow Then
                TC(iTC).PageHorzAdj = WidthAdj
                TC(iTC).PageVertAdj = HeightAdj
            Else
                TC(iTC).PageHorzAdj = ((ctl.Width * WidthAdj) _
                    - (iFixedBorderWidth * 2)) _
                    / ctl.Pages(0).Width
                If TC(iTC).PageHorzAdj < 0 Then
                    TC(iTC).PageHorzAdj = WidthAdj
                End If
                TabFixedHeight = ctl.TabFixedHeight
                TC(iTC).PageVertAdj = (((ctl.Height - TabFixedHeight) * HeightAdj) _
                    - (iFixedBorderHeight * 2)) _
                    / ctl.Pages(0).Height
                If TC(iTC).PageVertAdj < 0 Then
                    TC(iTC).PageVertAdj = HeightAdj
                End If
            End If
            iTC = iTC + 1
        End If
    Next j
End If

Marker = 240
If cpctV > 0 Then
    '* When form is stretching, enlarge sections before controls
    For i = 0 To 4
        '* all sections:
        If frm.Section(i).Height <> 0 Then
            l = frm.Section(i).Height * HeightAdj
            frm.Section(i).Height = l
        End If
    Next i
End If

If cpctH > 0 Then
    '* When form is stretching, enlarge sections before controls
    '* all sections:
    If frm.Width <> 0 Then
        l = frm.Width * WidthAdj
        frm.Width = l
    End If
End If

Marker = 250
'* Shrink/stretch controls
For j = 0 To (frm.Count - 1)
    Set ctl = frm(j)
    '* Set control properties.
    iSkipControl = False
    If TypeOf ctl Is Page Or TypeOf ctl Is TabControl Then
        '* skip tab controls for now.
        iSkipControl = True
    End If
    If TypeOf ctl Is OptionGroup Then
        '* skip option groups for now
        iSkipControl = True
    End If
    If iSkipControl Then
        '* Skip this control
    Else
        If TypeOf ctl Is SubForm Then
            '* Remember width and height for later proportional scaling
            sf_PrevHt = ctl.Height
            sf_PrevWd = ctl.Width
        End If
        '* Adjustments for controls on tab control pages
        If iNoTabControls Then
        Else
            '* Make adjustment for control on a tab control page.
            '* Initialize adjustment vars
            LeftAdj = HorzAdj
            WidthAdj = HorzAdj
            TopAdj = VertAdj
            HeightAdj = VertAdj
            If ctl.Parent.name <> frm.name Then
                '* Control has a parent. Could be a label, a control on an option group,
                '* on a tab control, or a control on an option group on a tab control.
                '* Traverse from child to parent via loop until a tab control page is found.
                Set ctlloop = ctl
                Do While ctlloop.Parent.name <> frm.name
                    Set ctlloop = ctlloop.Parent
                    If TypeOf ctlloop Is Page Then
                        Exit Do
                    End If
                Loop
                If TypeOf ctlloop Is Page Then
                    '* Ctl is part of a tab control page
                    If ctlloop.Parent.MultiRow Then
                        '* Objects on multi-row tab controls will be scaled using default
                        '* adjustment variable values.
                    Else
                        '* Find the entry in the TC array for the tab control this page is a part of
                        iFoundIt = False
                        For i = 0 To TCLastRow
                            If ctlloop.Parent.name = TC(i).name Then
                                iFoundIt = True
                                Exit For
                            End If
                        Next i
                        If iFoundIt Then
                            '* OK, now we know the ctl is on a tab control page, and we have
                            '* the rescaled position of the tab control from the TC array.
                            If ctlloop.Parent.Style = 2 Then   'Style = None
                                iFixedBorderWidth = conTabControlFixedBorderWidthStyleNone
                                iFixedBorderHeight = conTabControlFixedBorderHeightStyleNone
                            Else
                                iFixedBorderWidth = conTabControlFixedBorderWidth
                                iFixedBorderHeight = conTabControlFixedBorderHeight
                            End If
                            If ctl.Left <> 0 Then
                                WidthAdj = TC(i).PageHorzAdj
                                '* New left position is
                                '* New tab control left plus fixed border width,
                                '* plus new distance from page border to control left
                                '* So, LeftAdj is all that over the original ctl.Left
                                LeftAdj = ( _
                                    (TC(i).Left) _
                                    + iFixedBorderWidth _
                                    + ((ctl.Left - TC(i).OrigPageLeft) * TC(i).PageHorzAdj) _
                                    ) / ctl.Left
                            Else
                            End If
                            If ctl.Top <> 0 Then
                                TabFixedHeight = ctlloop.Parent.TabFixedHeight
                                '* New top position is
                                '* New tab control top plus adjusted tab header height
                                '* plus fixed border width,
                                '* plus new distance from page top to control top
                                '* So, TopAdj is all that over the original ctl.Top
                                TopAdj = ( _
                                    (TC(i).Top + (TabFixedHeight * HeightAdj)) _
                                    + iFixedBorderHeight _
                                    + ((ctl.Top - TC(i).OrigPageTop) * TC(i).PageVertAdj) _
                                    ) / ctl.Top
                                HeightAdj = TC(i).PageVertAdj
                            Else
                            End If
                        Else
                        End If
                    End If
                Else
                    '* Control is not part of a tab control page, so leave adjustment variables
                    '* at their original initialized values.
                End If
            Else
            End If
        End If
        
        Marker = 260
        '* Resize the control
        SkipSS = True
        Marker = 261
        ctl.Top = ctl.Top * TopAdj
        SkipSS = True
        Marker = 262
        ctl.Height = ctl.Height * HeightAdj
        SkipSS = True
        Marker = 263
        ctl.Left = ctl.Left * LeftAdj
        SkipSS = True
        Marker = 264
        ctl.Width = ctl.Width * WidthAdj
        SkipSS = False
        
        Marker = 270
        If frm.CurrentView = conDesignView Then
            '* Skip recursive calls to subform when in design (static rescaling) mode.
        Else
            If TypeOf ctl Is SubForm Then
            
                '* v10
                If Left(ctl.SourceObject, 6) = "Query." _
                    Or Left(ctl.SourceObject, 6) = "Table." Then
                    '* Skip recursive subform rescaling when source object is table or query
                Else
                
                    '* Force a recursive call to SS for the subform of a parent form.
                    '* The orig width and height don't matter here because we will be processing a subform.
                    '* Error checking added
                    Err.Clear
                    On Error Resume Next
                    SS_Rescale frm(ctl.name).Form, conOrigWd, conOrigHt, iHandleEchoInternally
                    If Err = 0 Then
                    Else
                        If Err = 2455 Then
                            '* Subform not available!!
                        Else
                            If Err = 2467 Then
                                '* Object no longer exists - unbound subform error
                            Else
                                MsgBox "SS_ResizeControls subform section " & Err & " " & Err.Description
                            End If
                        End If
                        Err.Clear
                    End If
                    On Error GoTo Err_Section
                End If
            End If
        End If
        
        '* Reset subform variables
        If TypeOf ctl Is SubForm Then
            sf_PrevHt = 0
            sf_PrevWd = 0
        End If

        Marker = 280
        If blnScaleFonts Then
            SS_SetFontSize frm, ctl, blnChangeFonts
        End If
        '* Column width adjustment
        If TypeOf ctl Is ListBox Then
            If IsNull(ctl.ColumnWidths) Then
            Else
                T1 = ctl.ColumnWidths
                Marker = 281
                If conDebugColumnWidths Then Debug.Print "frm=" & frm.name _
                    & " ctl=" & ctl.name _
                    & " colwd before=" & ctl.ColumnWidths _
                    & " colwd after=" & SS_ResizeColWd(T1, (WidthAdj - 1) * 100 * 100)
                ctl.ColumnWidths = SS_ResizeColWd(T1, (WidthAdj - 1) * 100 * 100)
            End If
        End If
        Marker = 282
        If TypeOf ctl Is ComboBox Then
            If IsNull(ctl.ColumnWidths) Then
            Else
                T1 = ctl.ColumnWidths
                Marker = 283
                ctl.ColumnWidths = SS_ResizeColWd(T1, (WidthAdj - 1) * 100 * 100)
                Marker = 284
                ctl.ListWidth = ctl.ListWidth * WidthAdj
                Marker = 285
            End If
        End If
    End If
Next j

Marker = 290
'* Reset adjustment factors
If iNoTabControls Then
Else
    LeftAdj = HorzAdj
    WidthAdj = HorzAdj
    TopAdj = VertAdj
    HeightAdj = VertAdj
End If

'* Save form width so that it can be changed, and restored later.
iSaveFormWidth = frm.Width

Marker = 300
'* Now handle option groups
If iNoOptionGroups Then
Else
    '* Loop through option group array and resize each option group
    For iOG = 0 To OGLastRow
        Set ctl = frm(OG(iOG).name)
        ctl.Top = OG(iOG).Top
        ctl.Height = OG(iOG).Height
        ctl.Left = OG(iOG).Left
        ctl.Width = OG(iOG).Width
        If ctl.Top <> OG(iOG).Top _
            Or ctl.Height <> OG(iOG).Height _
            Or ctl.Left <> OG(iOG).Left _
            Or ctl.Width <> OG(iOG).Width Then
            '* For whatever reason, the direct method of resizing the control did not work,
            '* so use more sophisticated method.
            '* Increase section height to max, so that lower border won't get in the way.
            iSaveSectionHeight = frm.Section(ctl.Section).Height
            If ctl.Top <> OG(iOG).Top Then
                frm.Section(ctl.Section).Height = conAccessSizeLimit
            End If
            
            '* Incrementally change the size of option groups
            If blnOptGroupLoopAdj Then
                iLoopVal = Int((Abs(VertAdj - 1) * 20))
                If iLoopVal < 3 Then iLoopVal = 3
                If iLoopVal > 15 Then iLoopVal = 15
            Else
                iLoopVal = 5
            End If
            
            dtopdiff = (OG(iOG).Top - ctl.Top)
            dhtdiff = (OG(iOG).Height - ctl.Height)
            dleftdiff = (OG(iOG).Left - ctl.Left)
            dwddiff = (OG(iOG).Width - ctl.Width)
            For K = 1 To iLoopVal
                ctl.Top = ctl.Top + (dtopdiff / iLoopVal)
                ctl.Height = ctl.Height + (dhtdiff / iLoopVal)
                ctl.Left = ctl.Left + (dleftdiff / iLoopVal)
                ctl.Width = ctl.Width + (dwddiff / iLoopVal)
            Next K
            '* Final adjustment
            ctl.Top = OG(iOG).Top
            ctl.Height = OG(iOG).Height
            ctl.Left = OG(iOG).Left
            ctl.Width = OG(iOG).Width
            '* Reset section height
            frm.Section(ctl.Section).Height = iSaveSectionHeight
        End If
    Next iOG
    
    '* Option group rescaling can bump against form right border and widen form.
    '* This adjustment should reset it to the correct width.
    If frm.Width <> iSaveFormWidth Then
        frm.Width = iSaveFormWidth
    End If
    
End If

Marker = 310
'* Now handle tab controls
If iNoTabControls Then
Else
    For iTC = 0 To TCLastRow
        Set ctl = frm(TC(iTC).name)
        '* Handle multiple tab controls
        '* These next two lines will cause focus to be lost when form is maximized
        If VertAdj >= 1 Then
            ctl.TabFixedHeight = ctl.TabFixedHeight * HeightAdj
            ctl.TabFixedWidth = ctl.TabFixedWidth * WidthAdj
        End If
        '* Move tab control directly to its new position.
        '* Only make step adjustments if this fails
        ctl.Top = TC(iTC).Top
        ctl.Height = TC(iTC).Height
        ctl.Left = TC(iTC).Left
        ctl.Width = TC(iTC).Width
        '* Check to see if tab control adjustment is close enough. If not,
        '* use incremental adjustment method.
        If Abs(ctl.Top - TC(iTC).Top) > 4 _
            Or Abs(ctl.Height - TC(iTC).Height) > 7 _
            Or Abs(ctl.Left - TC(iTC).Left) > 4 _
            Or Abs(ctl.Width - TC(iTC).Width) > 5 Then
            '* For whatever reason, the direct method of resizing the control did not work,
            '* so use more sophisticated method.
            '* Increase section height to max, so that lower border won't get in the way.
            iSaveSectionHeight = frm.Section(ctl.Section).Height
            If ctl.Top <> TC(iTC).Top Then
                frm.Section(ctl.Section).Height = conAccessSizeLimit
            End If
            
            If blnTabCtlLoopAdj Then
                iLoopVal = Int((Abs(VertAdj - 1) * 20))
                If iLoopVal < 3 Then iLoopVal = 3
                If iLoopVal > 15 Then iLoopVal = 15
            Else
                iLoopVal = 3
            End If
            
            dtopdiff = (TC(iTC).Top - ctl.Top)
            dhtdiff = (TC(iTC).Height - ctl.Height)
            dleftdiff = (TC(iTC).Left - ctl.Left)
            dwddiff = (TC(iTC).Width - ctl.Width)
            For i = 1 To iLoopVal
                ctl.Top = ctl.Top + (dtopdiff / iLoopVal)
                ctl.Height = ctl.Height + (dhtdiff / iLoopVal)
                ctl.Left = ctl.Left + (dleftdiff / iLoopVal)
                ctl.Width = ctl.Width + (dwddiff / iLoopVal)
            Next i
            '* Final adjustments to tab control...
            If ctl.Top <> TC(iTC).Top Then ctl.Top = TC(iTC).Top
            If ctl.Height <> TC(iTC).Height Then ctl.Height = TC(iTC).Height
            If ctl.Left <> TC(iTC).Left Then ctl.Left = TC(iTC).Left
            If ctl.Width <> TC(iTC).Width Then ctl.Width = TC(iTC).Width
            
            frm.Section(ctl.Section).Height = iSaveSectionHeight
        End If
        
        '* Set page tab font size
        If blnScaleFonts Then
            SS_SetFontSize frm, ctl, blnChangeFonts
        End If
    Next iTC
    
    '* Tab control rescaling can bump against form right border and widen form.
    '* This adjustment should reset it to the correct width.
    If frm.Width <> iSaveFormWidth Then
        frm.Width = iSaveFormWidth
    End If
    
    '* Restore focus if needed
    If sFocusControl = "" Then
    Else
        On Error Resume Next
        '* If focus was on a subform control, this statement will generate an error.
        '* That's OK because subforms do not appear to have a focus problem like other controls
        '* contained in tab controls.
        frm(sFocusControl).SetFocus    '* restore focus
        Err.Clear
        On Error GoTo Err_Section
    End If
End If

Marker = 320
If cpctV < 0 Then
    '* When form is shrinking, shrink sections after controls
    For i = 0 To 4
        '* All sections:
        If frm.Section(i).Height <> 0 Then
            frm.Section(i).Height = frm.Section(i).Height * HeightAdj
        End If
    Next i
End If

If cpctH < 0 Then
    '* When form is shrinking, shrink sections after controls
    '* all sections:
    If frm.Width <> 0 Then
        frm.Width = frm.Width * WidthAdj
    End If
End If

If frm.CurrentView = conDesignView Then
Else
    On Error Resume Next
    If iHandleEchoInternally Then frm.Repaint
    Err.Clear
    On Error GoTo Err_Section
End If

Marker = 330

#End If
'*
'*******************************************************************************

Exit_Section:
    '* Clean up some object variables
    On Error Resume Next
    Set ctl = Nothing
    Set ctlloop = Nothing
    SS_ResizeControls = Rtn
    If conDebug = 1 Then MsgBox "done with ResizeControls for " & frm.name
    On Error GoTo 0
    Exit Function

Err_Section:
    Select Case Err
    Case 2462
        '* frm.section(x) not found
        Resume Next
    Case 2467
        '* Object no longer exists - unbound subform error
        Resume Next
    Case 2474
        '* Object needs to have the focus
        Resume Next
    Case 438
        '* control does not this property associated to it
        Resume Next
    Case 2455
        '* control does not have a font associated to it
        Resume Next
    Case 2100
        '* tried to resize control beyond bounds of form
        Resume Next
    '* v10
    Case 57097
        '* This problem can occur when returning from a 3-rd party program
        Resume Next
    '* v10
    Case 3709
        '* The search key was not found - ?
        Resume Next
    Case Else
        MsgBox "Error (" & Marker & ") in SS_ResizeControls " & Err & " " & Err.Description
        If conExitOnError Then
            GoTo Exit_Section
        Else
            Resume Next
        End If
    End Select
    
End Function