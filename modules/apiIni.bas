Option Compare Database
Option Explicit

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

Private Declare Function apiShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" _
    (ByVal hwnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) _
    As Long

'***App Window Constants***
Public Const WIN_NORMAL = 1         'Open Normal
Public Const WIN_MAX = 3            'Open Maximized
Public Const WIN_MIN = 2            'Open Minimized

'***Error Codes***
Private Const ERROR_SUCCESS = 32&
Private Const ERROR_NO_ASSOC = 31&
Private Const ERROR_OUT_OF_MEM = 0&
Private Const ERROR_FILE_NOT_FOUND = 2&
Private Const ERROR_PATH_NOT_FOUND = 3&
Private Const ERROR_BAD_FORMAT = 11&




Public Function IniFileName() As String
  
  IniFileName = CurrentProject.Path & "\setup.ini"          ' defaults to SAME dir as this program

End Function


Public Function ReadIniFileString(ByVal Sect As String, ByVal Keyname As String, Optional strIni As String = "") As String
    
    Dim Worked                  As Long
    Dim RetStr                  As String * 128
    Dim StrSize                 As Long
    Dim iNoOfCharInIni          As Long
    Dim sIniString              As String
    Dim sProfileString          As String
    
    If strIni = "" Then
       strIni = IniFileName
    End If
    
    iNoOfCharInIni = 0
    sIniString = ""
    If Sect = "" Or Keyname = "" Then
      MsgBox "Section Or Key To Read Not Specified !!!", vbExclamation, "INI"
    Else
      sProfileString = ""
      RetStr = Space(128)
      StrSize = Len(RetStr)
      Worked = GetPrivateProfileString(Sect, Keyname, "", RetStr, StrSize, strIni)
      If Worked Then
        iNoOfCharInIni = Worked
        sIniString = Left$(RetStr, Worked)
      End If
    End If
    ReadIniFileString = sIniString
End Function


Public Function WriteIniFileString(ByVal Sect As String, ByVal Keyname As String, ByVal Wstr As String, Optional strIni As String = "") As String
    
    
    Dim Worked As Long
    Dim iNoOfCharInIni          As Long
    Dim sIniString              As String
    Dim sProfileString          As String

   If strIni = "" Then
      strIni = IniFileName
   End If


  iNoOfCharInIni = 0
  sIniString = ""
  If Sect = "" Or Keyname = "" Then
    MsgBox "Section Or Key To Write Not Specified !!!", vbExclamation, "INI"
  Else
    Worked = WritePrivateProfileString(Sect, Keyname, Wstr, strIni)
    If Worked Then
      iNoOfCharInIni = Worked
      sIniString = Wstr
    End If
    WriteIniFileString = sIniString
  End If

End Function



Function scramblePass(strRaw As String) As String

   Dim i            As Integer
   Dim str          As String
   Dim c            As Integer
   For i = 1 To Len(strRaw)
      c = Asc(Mid(strRaw, i, 1))
      c = c + 13
      scramblePass = scramblePass & Hex(c)
   Next i
   
End Function


Function unscramblePass(strRaw As String) As String

   
   Dim i            As Integer
   Dim str          As String
   Dim c            As Integer
   For i = 1 To Len(strRaw) Step 2
      c = CLng("&h" & Mid(strRaw, i, 2))
      c = c - 13
      unscramblePass = unscramblePass & Chr(c)
   Next i
   

End Function

Function fncFilePicker(myPath As String, myFolder As Boolean)

Dim FD As Variant
Dim vrtSelectedItem As Variant

If myFolder = False Then
    Set FD = Application.FileDialog(msoFileDialogFilePicker)
Else

    Set FD = Application.FileDialog(msoFileDialogFolderPicker)
End If


With FD

.InitialFileName = myPath


If .Show = -1 Then
    For Each vrtSelectedItem In .SelectedItems
        fncFilePicker = vrtSelectedItem
    Next vrtSelectedItem
Else
    fncFilePicker = myPath
End If

End With

Set FD = Nothing

    

End Function


'***************Usage Examples***********************
'Open a folder:     ?fHandleFile("C:\TEMP\",WIN_NORMAL)
'Call Email app:    ?fHandleFile("mailto:dash10@hotmail.com",WIN_NORMAL)
'Open URL:          ?fHandleFile("http://home.att.net/~dashish", WIN_NORMAL)
'Handle Unknown extensions (call Open With Dialog):
'                   ?fHandleFile("C:\TEMP\TestThis",Win_Normal)
'Start Access instance:
'                   ?fHandleFile("I:\mdbs\CodeNStuff.mdb", Win_NORMAL)
'****************************************************

Function fWinShell(stFile As String, lShowHow As Long)
Dim lRet As Long, varTaskID As Variant
Dim stRet As String
    'First try ShellExecute
    lRet = apiShellExecute(hWndAccessApp, vbNullString, _
            stFile, vbNullString, vbNullString, lShowHow)
            
    If lRet > ERROR_SUCCESS Then
        stRet = vbNullString
        lRet = -1
    Else
        Select Case lRet
            Case ERROR_NO_ASSOC:
                'Try the OpenWith dialog
                varTaskID = Shell("rundll32.exe shell32.dll,OpenAs_RunDLL " _
                        & stFile, WIN_NORMAL)
                lRet = (varTaskID <> 0)
            Case ERROR_OUT_OF_MEM:
                stRet = "Error: Out of Memory/Resources. Couldn't Execute!"
            Case ERROR_FILE_NOT_FOUND:
                stRet = "Error: File not found.  Couldn't Execute!"
            Case ERROR_PATH_NOT_FOUND:
                stRet = "Error: Path not found. Couldn't Execute!"
            Case ERROR_BAD_FORMAT:
                stRet = "Error:  Bad File Format. Couldn't Execute!"
            Case Else:
        End Select
    End If
    fWinShell = lRet & _
                IIf(stRet = "", vbNullString, ", " & stRet)
End Function
'************ Code End **********