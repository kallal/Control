Option Compare Database
Option Explicit


Type tagOPENFILENAME
    lStructSize As Long
    hwndOwner As Long
    hInstance As Long
    strFilter As String
    strCustomFilter As String
    nMaxCustFilter As Long
    nFilterIndex As Long
    strFile As String
    nMaxFile As Long
    strFileTitle As String
    nMaxFileTitle As Long
    strInitialDir As String
    strTitle As String
    Flags As Long
    nFileOffset As Integer
    nFileExtension As Integer
    strDefExt As String
    lCustData As Long
    lpfnHook As Long
    lpTemplateName As String
End Type


Private Type BROWSEINFO
  hOwner As Long
  pidlRoot As Long
  pszDisplayName As String
  lpszTitle As String
  ulFlags As Long
  lpfn As Long
  lParam As Long
  iImage As Long
End Type

Private Declare Function SHGetPathFromIDList Lib "shell32.dll" Alias _
            "SHGetPathFromIDListA" (ByVal pidl As Long, _
            ByVal pszPath As String) As Long
            
Private Declare Function SHBrowseForFolder Lib "shell32.dll" Alias _
            "SHBrowseForFolderA" (lpBrowseInfo As BROWSEINFO) _
            As Long
            
Private Const BIF_RETURNONLYFSDIRS = &H1



Declare Function aht_apiGetOpenFileName Lib "comdlg32.dll" _
    Alias "GetOpenFileNameA" (OFN As tagOPENFILENAME) As Boolean

Declare Function aht_apiGetSaveFileName Lib "comdlg32.dll" _
    Alias "GetSaveFileNameA" (OFN As tagOPENFILENAME) As Boolean

Declare Function CommDlgExtendedError Lib "comdlg32.dll" () As Long

Private Declare Function apiGetUserName Lib "advapi32.dll" Alias _
    "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long



'Global Const ahtOFN_READONLY = &H1
'Global Const ahtOFN_OVERWRITEPROMPT = &H2
'Global Const ahtOFN_HIDEREADONLY = &H4
'Global Const ahtOFN_NOCHANGEDIR = &H8
'Global Const ahtOFN_SHOWHELP = &H10
'' You won't use these.
''Global Const ahtOFN_ENABLEHOOK = &H20
''Global Const ahtOFN_ENABLETEMPLATE = &H40
''Global Const ahtOFN_ENABLETEMPLATEHANDLE = &H80
'Global Const ahtOFN_NOVALIDATE = &H100
'Global Const ahtOFN_ALLOWMULTISELECT = &H200
'Global Const ahtOFN_EXTENSIONDIFFERENT = &H400
'Global Const ahtOFN_PATHMUSTEXIST = &H800
'Global Const ahtOFN_FILEMUSTEXIST = &H1000
'Global Const ahtOFN_CREATEPROMPT = &H2000
'Global Const ahtOFN_SHAREAWARE = &H4000
'Global Const ahtOFN_NOREADONLYRETURN = &H8000
'Global Const ahtOFN_NOTESTFILECREATE = &H10000
'Global Const ahtOFN_NONETWORKBUTTON = &H20000
'Global Const ahtOFN_NOLONGNAMES = &H40000
'' New for Windows 95
'Global Const ahtOFN_EXPLORER = &H80000
'Global Const ahtOFN_NODEREFERENCELINKS = &H100000
'Global Const ahtOFN_LONGNAMES = &H200000




Public Function BrowseFolder(szDialogTitle As String) As String
  Dim x As Long, bi As BROWSEINFO, dwIList As Long
  Dim szPath As String, wPos As Integer
  
    With bi
        .hOwner = hWndAccessApp
        .lpszTitle = szDialogTitle
        .ulFlags = BIF_RETURNONLYFSDIRS
    End With
    
    dwIList = SHBrowseForFolder(bi)
    szPath = Space$(512)
    x = SHGetPathFromIDList(ByVal dwIList, ByVal szPath)
    
    If x Then
        wPos = InStr(szPath, Chr(0))
        BrowseFolder = Left$(szPath, wPos - 1)
    Else
        BrowseFolder = ""
    End If
End Function

Public Function GetRidesBackend() As String
    Dim strFilter       As String
    Dim lngFlags        As Long
    
    'strFilter = ahtAddFilterItem(strFilter, "Rides Files (*.mdb)", "*.mdb")
    strFilter = ahtAddFilterItem(strFilter, "Rides Files (*.mdb)", "RidesData.mdb")
    
    ' strFilter = ahtAddFilterItem(strFilter, "dBASE Files (*.dbf)", "*.DBF")

    GetRidesBackend = ahtCommonFileOpenSave(InitialDir:="c:\", _
                     Filter:=strFilter, FilterIndex:=3, Flags:=lngFlags, _
                     DialogTitle:="Select Location of Rides data file")
    ' Since you passed in a variable for lngFlags,
    ' the function places the output flags value in the variable.
   If GetRidesBackend <> "" Then
      GetRidesBackend = Left(GetRidesBackend, Len(GetRidesBackend) - Len(Dir(GetRidesBackend)))
      ' remove above line if you want to allow differnt back end name
      'MsgBox (GetRidesBackend)
   End If
End Function

Public Function GetPicturePath() As String
    Dim strFilter As String
    Dim lngFlags As Long
    strFilter = ahtAddFilterItem(strFilter, "All Files (*.*)", "*.*")
    ' strFilter = ahtAddFilterItem(strFilter, "dBASE Files (*.dbf)", "*.DBF")

    GetPicturePath = ahtCommonFileOpenSave(InitialDir:="G:\Pictures\2. Digital Pictures", _
                     Filter:=strFilter, FilterIndex:=3, Flags:=lngFlags, _
                     DialogTitle:="Select picture")
    ' Since you passed in a variable for lngFlags,
    ' the function places the output flags value in the variable.
End Function

Public Function GetCsvPath() As String
    Dim strFilter As String
    Dim lngFlags As Long
    
    lngFlags = ahtOFN_CREATEPROMPT
    
    strFilter = ahtAddFilterItem(strFilter, "Csv Files (*.csv)", "*.csv")
    ' strFilter = ahtAddFilterItem(strFilter, "dBASE Files (*.dbf)", "*.DBF")

    GetCsvPath = ahtCommonFileOpenSave(InitialDir:="c:\", _
                     Filter:=strFilter, FilterIndex:=3, Flags:=lngFlags, _
                     DialogTitle:="What CSV export File to create")
    ' Since you passed in a variable for lngFlags,
    ' the function places the output flags value in the variable.
End Function

Public Function GetBrowseFile(strDialog As String, _
                              strFilPrompt As String, _
                              strFilType As String) As String

       Dim strFilter As String
    Dim lngFlags As Long
    strFilter = ahtAddFilterItem(strFilter, strFilPrompt, strFilType)
    ' strFilter = ahtAddFilterItem(strFilter, "dBASE Files (*.dbf)", "*.DBF")

    GetBrowseFile = ahtCommonFileOpenSave(InitialDir:="c:\", _
                     Filter:=strFilter, FilterIndex:=3, Flags:=lngFlags, _
                     DialogTitle:=strDialog)
    
    ' Since you passed in a variable for lngFlags,
    ' the function places the output flags value in the variable.


End Function


Function GetOpenFile(Optional varDirectory As Variant, _
    Optional varTitleForDialog As Variant) As Variant
' Here's an example that gets an Access database name.
Dim strFilter As String
Dim lngFlags As Long
Dim varFileName As Variant
' Specify that the chosen file must already exist,
' don't change directories when you're done
' Also, don't bother displaying
' the read-only box. It'll only confuse people.
    lngFlags = ahtOFN_FILEMUSTEXIST Or _
                ahtOFN_HIDEREADONLY Or ahtOFN_NOCHANGEDIR
    If IsMissing(varDirectory) Then
        varDirectory = ""
    End If
    If IsMissing(varTitleForDialog) Then
        varTitleForDialog = ""
    End If

    ' Define the filter string and allocate space in the "c"
    ' string Duplicate this line with changes as necessary for
    ' more file templates.
    strFilter = ahtAddFilterItem(strFilter, _
                "Access (*.mdb)", "*.MDB;*.MDA")
    ' Now actually call to get the file name.
    varFileName = ahtCommonFileOpenSave( _
                    OpenFile:=True, _
                    InitialDir:=varDirectory, _
                    Filter:=strFilter, _
                    Flags:=lngFlags, _
                    DialogTitle:=varTitleForDialog)
    If Not IsNull(varFileName) Then
        varFileName = TrimNull(varFileName)
    End If
    GetOpenFile = varFileName
End Function
Function ahtCommonFileOpenSave( _
            Optional ByRef Flags As Variant, _
            Optional ByVal InitialDir As Variant, _
            Optional ByVal Filter As Variant, _
            Optional ByVal FilterIndex As Variant, _
            Optional ByVal DefaultExt As Variant, _
            Optional ByVal FileName As Variant, _
            Optional ByVal DialogTitle As Variant, _
            Optional ByVal hwnd As Variant, _
            Optional ByVal OpenFile As Variant) As Variant
' This is the entry point you'll use to call the common
' file open/save dialog. The parameters are listed
' below, and all are optional.
'
' In:
' Flags: one or more of the ahtOFN_* constants, OR'd together.
' InitialDir: the directory in which to first look
' Filter: a set of file filters, set up by calling
' AddFilterItem. See examples.
' FilterIndex: 1-based integer indicating which filter
' set to use, by default (1 if unspecified)
' DefaultExt: Extension to use if the user doesn't enter one.
' Only useful on file saves.
' FileName: Default value for the file name text box.
' DialogTitle: Title for the dialog.
' hWnd: parent window handle
' OpenFile: Boolean(True=Open File/False=Save As)
' Out:
' Return Value: Either Null or the selected filename
Dim OFN As tagOPENFILENAME
Dim strFileName As String
Dim strFileTitle As String
Dim fResult As Boolean
    ' Give the dialog a caption title.
    If IsMissing(InitialDir) Then InitialDir = CurDir
    If IsMissing(Filter) Then Filter = ""
    If IsMissing(FilterIndex) Then FilterIndex = 1
    If IsMissing(Flags) Then Flags = 0&
    If IsMissing(DefaultExt) Then DefaultExt = ""
    If IsMissing(FileName) Then FileName = ""
    If IsMissing(DialogTitle) Then DialogTitle = ""
    If IsMissing(hwnd) Then hwnd = Application.hWndAccessApp
    If IsMissing(OpenFile) Then OpenFile = True
    ' Allocate string space for the returned strings.
    strFileName = Left(FileName & String(256, 0), 256)
    strFileTitle = String(256, 0)
    ' Set up the data structure before you call the function
    With OFN
        .lStructSize = Len(OFN)
        .hwndOwner = hwnd
        .strFilter = Filter
        .nFilterIndex = FilterIndex
        .strFile = strFileName
        .nMaxFile = Len(strFileName)
        .strFileTitle = strFileTitle
        .nMaxFileTitle = Len(strFileTitle)
        .strTitle = DialogTitle
        .Flags = Flags
        .strDefExt = DefaultExt
        .strInitialDir = InitialDir
        ' Didn't think most people would want to deal with
        ' these options.
        .hInstance = 0
        .strCustomFilter = ""
        .nMaxCustFilter = 0
        .lpfnHook = 0
        'New for NT 4.0
        .strCustomFilter = String(255, 0)
        .nMaxCustFilter = 255
    End With
    ' This will pass the desired data structure to the
    ' Windows API, which will in turn it uses to display
    ' the Open/Save As Dialog.
    If OpenFile Then
        fResult = aht_apiGetOpenFileName(OFN)
    Else
        fResult = aht_apiGetSaveFileName(OFN)
    End If

    ' The function call filled in the strFileTitle member
    ' of the structure. You'll have to write special code
    ' to retrieve that if you're interested.
    If fResult Then
        ' You might care to check the Flags member of the
        ' structure to get information about the chosen file.
        ' In this example, if you bothered to pass in a
        ' value for Flags, we'll fill it in with the outgoing
        ' Flags value.
        If Not IsMissing(Flags) Then Flags = OFN.Flags
        ahtCommonFileOpenSave = TrimNull(OFN.strFile)
    Else
        ahtCommonFileOpenSave = vbNullString
    End If
End Function
Function ahtAddFilterItem(strFilter As String, _
    strDescription As String, Optional varItem As Variant) As String
' Tack a new chunk onto the file filter.
' That is, take the old value, stick onto it the description,
' (like "Databases"), a null character, the skeleton
' (like "*.mdb;*.mda") and a final null character.

    If IsMissing(varItem) Then varItem = "*.*"
    ahtAddFilterItem = strFilter & _
                strDescription & vbNullChar & _
                varItem & vbNullChar
End Function
Private Function TrimNull(ByVal strItem As String) As String
Dim intPos As Integer
    intPos = InStr(strItem, vbNullChar)
    If intPos > 0 Then
        TrimNull = Left(strItem, intPos - 1)
    Else
        TrimNull = strItem
    End If
End Function
'************** Code End *****************

Public Function AskSaveAs(strPrompt As String, strFilePrompt As String, strFilType As String) As String
    
    Dim strFilter          As String
    Dim lngFlags           As Long
    Dim strStartDir        As String
    
    strStartDir = fGetSpecialFolderLocation(CSIDL_DESKTOPDIRECTORY)
    
    strFilter = ahtAddFilterItem(strFilter, strFilePrompt, strFilType)
    ' strFilter = ahtAddFilterItem(strFilter, "dBASE Files (*.dbf)", "*.DBF")
    lngFlags = ahtOFN_NOTESTFILECREATE And ahtOFN_HIDEREADONLY
    AskSaveAs = ""
    
    AskSaveAs = ahtCommonFileOpenSave(InitialDir:=strStartDir, _
                     Filter:=strFilter, FilterIndex:=3, Flags:=lngFlags, _
                     DialogTitle:=strPrompt, OpenFile:=False, DefaultExt:=strFilType)
    
    ' Since you passed in a variable for lngFlags,


End Function