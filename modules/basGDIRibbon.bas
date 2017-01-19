
Option Explicit

'-------------------------------------------------
'    Picture functions with GDIPlus-API (GDIP)
'-------------------------------------------------
'    mossSOFT / Sascha Trowitzsch 01/2006         |
'-------------------------------------------------

' (c) 2006 Access im Unternehmen/Sascha Trowitzsch
' http://www.access-im-unternehmen.de

' Remark:
' This module works with
' GDI+ versions 1.0 and 1.1. / standard ist V1.0.
' V1.1 is presently not supported officially
' but is downloadable as a part of
' MS Powerpoint Viewer 2003 ;-)


Public Const GUID_IPicture = "{7BF80980-BF32-101A-8BBB-00AA00300CAB}"    'IPicture

'User-defined types: ----------------------------------------------------------------------

Public Enum PicFileType
    pictypeBMP = 1
    pictypeGIF = 2
    pictypePNG = 3
    pictypeJPG = 4
End Enum

Public Type GUID
    Data1 As Long
    Data2 As Integer
    Data3 As Integer
    Data4(7) As Byte
End Type

Public Type TSize
    x As Double
    Y As Double
End Type

Public Type RECT
    Bottom As Long
    Left As Long
    Right As Long
    Top As Long
End Type

Private Type PICTDESC
    cbSizeOfStruct As Long
    PicType As Long
    hImage As Long
    xExt As Long
    yExt As Long
End Type

Private Type GDIPStartupInput
    GdiplusVersion As Long
    DebugEventCallback As Long
    SuppressBackgroundThread As Long
    SuppressExternalCodecs As Long
End Type

Private Type EncoderParameter
    UUID As GUID
    NumberOfValues As Long
    Type As Long
    Value As Long
End Type

Private Type EncoderParameters
    Count As Long
    Parameter As EncoderParameter
End Type

'Only GDI+1.1:
Private Type SharpenParameters
    Radius As Single
    Amount As Single
End Type

'Only GDI+1.1:
Private Type BlurParameters
    Radius As Single
    ExpandEdges As Long
End Type

'API-Declarations: ----------------------------------------------------------------------------

'Load DLL
Private Declare Function LoadLibrary Lib "kernel32.dll" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
'Release DLL
Private Declare Function FreeLibrary Lib "kernel32.dll" (ByVal hLibModule As Long) As Long
'Retrieve Address of a named function of a DLL :
Private Declare Function GetProcAddress Lib "kernel32.dll" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function GetModuleHandle Lib "kernel32.dll" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function GetModuleFileName Lib "kernel32.dll" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
'Convert a windows bitmap to OLE-Picture :
Private Declare Function OleCreatePictureIndirect Lib "olepro32.dll" (lpPictDesc As PICTDESC, _
               riid As GUID, _
               ByVal fPictureOwnsHandle As Long, _
               IPic As IPicture) As Long
               
'Retrieve GUID-Type from string :
Private Declare Function CLSIDFromString Lib "ole32" (ByVal lpsz As Any, pCLSID As GUID) As Long

'Memory functions:
Private Declare Function GlobalAlloc Lib "kernel32" (ByVal uFlags As Long, ByVal dwBytes As Long) As Long
Private Declare Function GlobalSize Lib "kernel32.dll" (ByVal hMem As Long) As Long
Private Declare Function GlobalLock Lib "kernel32.dll" (ByVal hMem As Long) As Long
Private Declare Function GlobalUnlock Lib "kernel32.dll" (ByVal hMem As Long) As Long
Private Declare Function GlobalFree Lib "kernel32" (ByVal hMem As Long) As Long
Private Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (ByRef Destination As Any, ByRef Source As Any, ByVal Length As Long)
Private Declare Sub MoveMemory Lib "kernel32" Alias "RtlMoveMemory" (ByVal Destination As Long, ByRef Source As Byte, ByVal Length As Long)

'OLE-Stream functions :
Private Declare Function CreateStreamOnHGlobal Lib "ole32" (ByVal hGlobal As Long, ByVal fDeleteOnRelease As Long, ByRef ppstm As Any) As Long
Private Declare Function GetHGlobalFromStream Lib "ole32.dll" (ByVal pstm As Any, ByRef phglobal As Long) As Long

'Standard-GDI functions:

Private Declare Function GetDesktopWindow Lib "user32.dll" () As Long
Private Declare Function GetClientRect Lib "user32.dll" (ByVal hwnd As Long, ByRef lpRect As RECT) As Long
'Create to screen compatible DeviceContext :
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hdc As Long) As Long
'Create an empty windows bitmap :
Private Declare Function CreateBitmap Lib "gdi32" (ByVal nWidth As Long, ByVal nHeight As Long, ByVal nPlanes As Long, ByVal nBitCount As Long, lpBits As Any) As Long
'Copy GDI object to DeviceContext:
Private Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long
'Create Background color/Handle :
Private Declare Function CreateSolidBrush Lib "gdi32" (ByVal crColor As Long) As Long
'Delete GDI object:
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
'Delete DeviceContext:
Private Declare Function DeleteDC Lib "gdi32" (ByVal hdc As Long) As Long
'Retrieve a property of a DeviceContext :
Private Declare Function GetDeviceCaps Lib "gdi32" (ByVal hdc As Long, ByVal nIndex As Long) As Long
'Copy a bitmap pattern in DeviceContext :
Private Declare Function PatBlt Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal dwRop As Long) As Long
'Retrieve Shell-Icon for a file type:
Private Declare Function ExtractAssociatedIcon Lib "shell32.dll" Alias "ExtractAssociatedIconA" (ByVal hInst As Long, ByVal lpIconPath As String, lpiIcon As Long) As Long
'Avoid repaint of a window:
Public Declare Function LockWindowUpdate Lib "user32.dll" (ByVal hwndLock As Long) As Long

'GDIPlus-API Declarations:

'Initialization GDIP:
Private Declare Function GdiplusStartup Lib "gdiplus.dll" (token As Long, inputbuf As GDIPStartupInput, Optional ByVal outputbuf As Long = 0) As Long
'Tear down GDIP:
Private Declare Function GdiplusShutdown Lib "gdiplus.dll" (ByVal token As Long) As Long
'Load GDIP-Image from file :
Private Declare Function GdipCreateBitmapFromFile Lib "gdiplus.dll" (ByVal FileName As Long, bitmap As Long) As Long
'Create GDIP- graphical area from Windows-DeviceContext:
Private Declare Function GdipCreateFromHDC Lib "gdiplus.dll" (ByVal hdc As Long, GpGraphics As Long) As Long
'Delete GDIP graphical area :
Private Declare Function GdipDeleteGraphics Lib "gdiplus.dll" (ByVal Graphics As Long) As Long
'Copy GDIP-Image to graphical area:
Private Declare Function GdipDrawImageRect Lib "gdiplus.dll" (ByVal Graphics As Long, ByVal image As Long, ByVal x As Single, ByVal Y As Single, ByVal Width As Single, ByVal Height As Single) As Long
'Clear allocated bitmap memory from GDIP :
Private Declare Function GdipDisposeImage Lib "gdiplus.dll" (ByVal image As Long) As Long
'Retrieve windows bitmap handle from GDIP-Image:
Private Declare Function GdipCreateHBITMAPFromBitmap Lib "gdiplus.dll" (ByVal bitmap As Long, hbmReturn As Long, ByVal background As Long) As Long
'Retrieve Windows-Icon-Handle from GDIP-Image:
Public Declare Function GdipCreateHICONFromBitmap Lib "gdiplus" (ByVal bitmap As Long, hbmReturn As Long) As Long
'Scaling GDIP-Image size:
Private Declare Function GdipGetImageThumbnail Lib "gdiplus.dll" (ByVal image As Long, ByVal thumbWidth As Long, ByVal thumbHeight As Long, thumbImage As Long, Optional ByVal callback As Long = 0, Optional ByVal callbackData As Long = 0) As Long
'Retrieve GDIP-Image from Windows-Bitmap-Handle:
Private Declare Function GdipCreateBitmapFromHBITMAP Lib "gdiplus.dll" (ByVal hbm As Long, ByVal hpal As Long, bitmap As Long) As Long
'Retrieve GDIP-Image from Windows-Icon-Handle:
Private Declare Function GdipCreateBitmapFromHICON Lib "gdiplus" (ByVal hicon As Long, bitmap As Long) As Long
'Retrieve width of a GDIP-Image (Pixel):
Private Declare Function GdipGetImageWidth Lib "gdiplus.dll" (ByVal image As Long, Width As Long) As Long
'Retrieve height of a GDIP-Image (Pixel):
Private Declare Function GdipGetImageHeight Lib "gdiplus.dll" (ByVal image As Long, Height As Long) As Long
'Save GDIP-Image to file in seletable format:
Private Declare Function GdipSaveImageToFile Lib "gdiplus.dll" (ByVal image As Long, ByVal FileName As Long, clsidEncoder As GUID, encoderParams As Any) As Long
'Save GDIP-Image in OLE-Stream with seletable format:
Private Declare Function GdipSaveImageToStream Lib "gdiplus.dll" (ByVal image As Long, ByVal stream As IUnknown, clsidEncoder As GUID, encoderParams As Any) As Long
'Retrieve GDIP-Image from OLE-Stream-Object:
Private Declare Function GdipLoadImageFromStream Lib "gdiplus.dll" (ByVal stream As IUnknown, image As Long) As Long

'Only GDI+1.1 !!!:
'Create an Effect object (used here for Sharpen-Object ):
Private Declare Function GdipCreateEffect Lib "gdiplus.dll" (ByVal cid1 As Long, ByVal cid2 As Long, ByVal cid3 As Long, ByVal cid4 As Long, Effect As Long) As Long
'Set parameter for Effect object :
Private Declare Function GdipSetEffectParameters Lib "gdiplus.dll" (ByVal Effect As Long, params As Any, ByVal Size As Long) As Long
'Apply Effect on a GDIP-Image :
Private Declare Function GdipBitmapApplyEffect Lib "gdiplus.dll" (ByVal image As Long, ByVal Effect As Long, ByVal roi As Long, ByVal useAuxData As Long, ByVal auxData As Long, ByVal auxDataSize As Long) As Long
'Clear Effect object:
Private Declare Function GdipDeleteEffect Lib "gdiplus.dll" (ByVal Effect As Long) As Long


'-----------------------------------------------------------------------------------------
'Global module variables:
Private lGDIP As Long
Private hMod As Long
Private iEffect As Long
Public bIsGdip11 As Boolean
Public sfrmPreview As String
'-----------------------------------------------------------------------------------------

'Check, whether gdiplus.dll is installed on the system :
Function IsGDIPInstalled(Optional bShowMessage As Boolean = True, Optional bhMod As Boolean) As Boolean
    Dim lAddr As Long

    If hMod <> 0 Then Exit Function
    'Check the database path:
    hMod = LoadLibrary(CurrentProject.Path & "\gdiplus.dll")
    '...the office-folder :
    If hMod = 0 Then hMod = LoadLibrary(SysCmd(acSysCmdAccessDir) & "\gdiplus.dll")
    '...the system path:
    If hMod = 0 Then hMod = LoadLibrary("gdiplus.dll")
    If hMod = 0 Then
        If bShowMessage Then MsgBox "GDIPlus.dll konnte nicht gefunden werden", vbCritical
    Else
        IsGDIPInstalled = True
        lAddr = GetProcAddress(hMod, "GdipCreateEffect")
        If lAddr = 0 Then
            If bShowMessage Then MsgBox "GDIPlus.dll liegt in der Version 1.0 vor." & vbCrLf & _
               "Für einige Funktionen wird GDI+1.1 benötigt" & vbCrLf & _
               "(Z.B. für Schärfen der Pictures)." & vbCrLf & _
               "Diese Funktionen sind nun deaktiviert.", vbExclamation, "Hinweis"
        Else
            bIsGdip11 = True
        End If
    End If
    If (hMod <> 0) And (bhMod = False) Then
        FreeLibrary hMod
        hMod = 0
    End If

End Function

'Initialize GDI+
Sub InitGDIP()
    Dim TGDP As GDIPStartupInput

    If lGDIP <> 0 Then ShutDownGDIP
    IsGDIPInstalled False, True

    TGDP.GdiplusVersion = 1
    GdiplusStartup lGDIP, TGDP
End Sub

'Clear GDI+
Sub ShutDownGDIP()
    If lGDIP <> 0 Then
        GdiplusShutdown lGDIP
        lGDIP = 0
    End If
    If hMod <> 0 Then
        FreeLibrary hMod
        hMod = 0
    End If
End Sub

'Load image file with GDIP
'It's equivalent to the method LoadPicture() in OLE-Automation library (stdole2.tlb)
'Allowed format: bmp, gif, jp(e)g, tif, png, wmf, emf, ico
Function LoadPictureGDIP(sFileName As String) As StdPicture
    Dim hBmp As Long
    Dim hPic As Long

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function
    If GdipCreateBitmapFromFile(StrPtr(sFileName), hPic) = 0 Then
        GdipCreateHBITMAPFromBitmap hPic, hBmp, 0&
        If hBmp <> 0 Then
            Set LoadPictureGDIP = BitmapToPicture(hBmp)
            GdipDisposeImage hPic
        End If
    End If

End Function

'Scale picture with GDIP
'A StdPicture is commited, also the return value
'Width and Height of generatrix pictures in Width, Height
'bSharpen: TRUE=Thumb is additional sharpend (only if GDI+ 1.1 is installed!)
Function ResampleGDIP(ByVal image As Picture, ByVal Width As Long, ByVal Height As Long, _
                      Optional bSharpen As Boolean = True) As StdPicture
    Dim lRes As Long
    Dim lBitmap As Long

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function
    
    If image.Type = 1 Then
        lRes = GdipCreateBitmapFromHBITMAP(image.handle, 0, lBitmap)
    Else
        lRes = GdipCreateBitmapFromHICON(image.handle, lBitmap)
    End If
    If lRes = 0 Then
        Dim lThumb As Long
        Dim hBitmap As Long

        lRes = GdipGetImageThumbnail(lBitmap, Width, Height, lThumb, 0, 0)
        If lRes = 0 Then
            If bSharpen And bIsGdip11 Then
                iEffect = 0
                On Error Resume Next
                lRes = CreateSharpenEffect
                If iEffect <> 0 Then
                    lRes = SetSharpenParameters(1, 90)
                    If lRes = 0 Then GdipBitmapApplyEffect lThumb, iEffect, 0, 0, 0, 0
                    lRes = GdipDeleteEffect(iEffect)
                    Forms(sfrmPreview)!chkSharpen.enabled = True
                    bIsGdip11 = True
                Else
                    Forms(sfrmPreview)!chkSharpen.enabled = False
                    bIsGdip11 = False
                End If
            End If
            If image.Type = 3 Then  'Image-Type 3 is named : Icon!
                'Convert with these GDI+ method :
                lRes = GdipCreateHICONFromBitmap(lThumb, hBitmap)
                Set ResampleGDIP = BitmapToPicture(hBitmap, True)
            Else
                lRes = GdipCreateHBITMAPFromBitmap(lThumb, hBitmap, 0)
                Set ResampleGDIP = BitmapToPicture(hBitmap)
            End If
            
            GdipDisposeImage lThumb
        End If
        GdipDisposeImage lBitmap
    End If

End Function

'Create thumbnail from image with GDIP
'Width and Height are Width and Height of the thumbnails
'Backcolor is the Backcolor for the border, which arise,
'cause size of thumbnail and size of image do not match
Function MakeThumbGDIP(ByVal image As Picture, Width As Long, Height As Long, Optional BackColor As Long = 8421504) As StdPicture
    Dim lRes As Long
    Dim lBitmap As Long
    Dim lGraph As Long
    Dim hdc As Long
    Dim hBmp As Long
    Dim hBrush As Long
    Dim x As Long, Y As Long

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function
    'Create GDIP-Image from Windows-Bitmap-Handle:
    lRes = GdipCreateBitmapFromHBITMAP(image.handle, 0, lBitmap)
    If lRes = 0 Then
        'Retrieve image dimensions:
        GdipGetImageWidth lBitmap, x
        GdipGetImageHeight lBitmap, Y

        'Create new and empty DeviceContext:
        hdc = CreateCompatibleDC(0)
        'Create empty bitmap within there with requested size for thumbnail:
        hBmp = CreateBitmap(Width, Width, GetDeviceCaps(hdc, 14), GetDeviceCaps(hdc, 12), ByVal 0&)
        hBmp = SelectObject(hdc, hBmp)
        'Create Backcolor :
        hBrush = CreateSolidBrush(BackColor)
        'Copy backcolor to DeviceContext:
        hBrush = SelectObject(hdc, hBrush)
        'Dummy function, to apply backcolor and size for thumbnail:
        PatBlt hdc, 0, 0, Width, Height, &HF00021   'Modus PATCOPY
        DeleteObject SelectObject(hdc, hBrush)
        'Create GDIP graphical area from DeviceContext:
        lRes = GdipCreateFromHDC(hdc, lGraph)
        'Copy Thumbnail-Bitmap to the area :
        lRes = GdipDrawImageRect(lGraph, lBitmap, (Width - x) / 2, (Height - Y) / 2, x, Y)
        'Return (modified) Windows-Bitmap :
        hBmp = SelectObject(hdc, hBmp)
        '...and convert to StdPicture :
        Set MakeThumbGDIP = BitmapToPicture(hBmp)

        'Clean :
        DeleteDC hdc
        GdipDisposeImage lBitmap
        GdipDeleteGraphics lGraph
    End If

End Function

'Retrieve Width and Height of a pictures in Pixel with GDIP
'Return value as user/defined type TSize (X/Y als Long)
Function GetDimensionsGDIP(ByVal image As Picture) As TSize
    Dim lRes As Long
    Dim lBitmap As Long
    Dim x As Long, Y As Long

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function
    If image Is Nothing Then Exit Function
    lRes = GdipCreateBitmapFromHBITMAP(image.handle, 0, lBitmap)
    If lRes = 0 Then
        GdipGetImageHeight lBitmap, Y
        GdipGetImageWidth lBitmap, x
        GetDimensionsGDIP.x = CDbl(x)
        GetDimensionsGDIP.Y = CDbl(Y)
        GdipDisposeImage lBitmap
    End If

End Function

'Save a bitmap as file (with format converting umwandlung!)
'hBMP = Windows-Handle (hBitmap)
'sFile = complete file path
'PicType = pictypeBMP, pictypeGIF, pictypePNG oder pictypeJPG
'Quality: 0...100; (works only with pictypeJPG!)
'Returns TRUE if successful
Function SavePicGDIPlus(ByVal image As StdPicture, sFile As String, _
                        PicType As PicFileType, Optional Quality As Byte = 80) As Boolean
    Dim lBitmap As Long
    Dim TEncoder As GUID
    Dim ret As Long
    Dim TParams As EncoderParameters
    Dim sType As String

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function

    If GdipCreateBitmapFromHBITMAP(image.handle, 0, lBitmap) = 0 Then
        Select Case PicType
        Case pictypeBMP: sType = "{557CF400-1A04-11D3-9A73-0000F81EF32E}"
        Case pictypeGIF: sType = "{557CF402-1A04-11D3-9A73-0000F81EF32E}"
        Case pictypePNG: sType = "{557CF406-1A04-11D3-9A73-0000F81EF32E}"
        Case pictypeJPG: sType = "{557CF401-1A04-11D3-9A73-0000F81EF32E}"
        End Select
        CLSIDFromString StrPtr(sType), TEncoder
        If PicType = pictypeJPG Then
            TParams.Count = 1
            With TParams.Parameter    ' Quality
                CLSIDFromString StrPtr("{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"), .UUID
                .NumberOfValues = 1
                .Type = 4
                .Value = VarPtr(Quality)
            End With
        Else
            'Different numbers of parameter between GDI+ 1.0 and GDI+ 1.1 on GIFs!!
            If bIsGdip11 And (PicType = pictypeGIF) Then TParams.Count = 1 Else TParams.Count = 0
        End If
        'Save GDIP-Image to file :
        ret = GdipSaveImageToFile(lBitmap, StrPtr(sFile), TEncoder, TParams)
        GdipDisposeImage lBitmap
        DoEvents
        'Function returns True, if generated file actually exists:
        SavePicGDIPlus = (Dir(sFile) <> "")
    End If

End Function

'This procedure is similar to the above (see Parameter), the different is,
'that nothing is stored as a file, but a conversion is executed
'using a OLE-Stream-Object to an Byte-Array .
'! This code is novelty, cause no type library is used,
'  the stream is created by the hidden stdole.IUnknown
'  and only OLE-API-Functions are used !
Function ArrayFromPicture(ByVal image As Picture, PicType As PicFileType, Optional Quality As Byte = 80) As Byte()
    Dim lBitmap As Long
    Dim TEncoder As GUID
    Dim ret As Long
    Dim TParams As EncoderParameters
    Dim sType As String
    Dim IStm As stdole.IUnknown

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function

    If GdipCreateBitmapFromHBITMAP(image.handle, 0, lBitmap) = 0 Then
        Select Case PicType    'Choose GDIP-Format-Encoders CLSID:
        Case pictypeBMP: sType = "{557CF400-1A04-11D3-9A73-0000F81EF32E}"
        Case pictypeGIF: sType = "{557CF402-1A04-11D3-9A73-0000F81EF32E}"
        Case pictypePNG: sType = "{557CF406-1A04-11D3-9A73-0000F81EF32E}"
        Case pictypeJPG: sType = "{557CF401-1A04-11D3-9A73-0000F81EF32E}"
        End Select
        CLSIDFromString StrPtr(sType), TEncoder

        If PicType = pictypeJPG Then    'If JPG, set additional parameter
            'to apply the quality level
            TParams.Count = 1
            With TParams.Parameter    ' Quality
                CLSIDFromString StrPtr("{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"), .UUID
                .NumberOfValues = 1
                .Type = 4
                .Value = VarPtr(Quality)
            End With
        Else
            'Different numbers of parameter between GDI+ 1.0 and GDI+ 1.1 on GIFs!!
            If bIsGdip11 And (PicType = pictypeGIF) Then TParams.Count = 1 Else TParams.Count = 0
        End If

        ret = CreateStreamOnHGlobal(0&, 1, IStm)    'Create stream
        'Save GDIP-Image to stream :
        ret = GdipSaveImageToStream(lBitmap, IStm, TEncoder, TParams)
        If ret = 0 Then
            Dim hMem As Long, LSize As Long, lpMem As Long
            Dim abData() As Byte

            ret = GetHGlobalFromStream(IStm, hMem)    'Get Memory-Handle from stream
            If ret = 0 Then
                LSize = GlobalSize(hMem)
                lpMem = GlobalLock(hMem)   'Get access to memory
                ReDim abData(LSize - 1)    'Arrays dimension
                'Commit memory stack from streams :
                CopyMemory abData(0), ByVal lpMem, LSize
                GlobalUnlock hMem   'Lock memory
                ArrayFromPicture = abData   'Result
            End If

            Set IStm = Nothing  'Clean
        End If

        GdipDisposeImage lBitmap    'Clear GDIP-Image-Memory
    End If

End Function

'Create an OLE-StdPicture from Byte-Array PicBin()
Public Function ArrayToPicture(ByRef PicBin() As Byte) As Picture
    Dim IStm As stdole.IUnknown
    Dim Size As Long
    Dim hMem As Long
    Dim lpMem As Long
    Dim lBitmap As Long
    Dim hBmp As Long
    Dim ret As Long

    If lGDIP = 0 Then InitGDIP: If lGDIP = 0 Then Exit Function

    Size = UBound(PicBin) + 1
    hMem = GlobalAlloc(2, Size)    'Allocate memory to RAM (size as array)
    If hMem = 0 Then Exit Function
    lpMem = GlobalLock(hMem)    'Unlock memory
    If lpMem <> 0 Then
        MoveMemory ByVal lpMem, PicBin(0), Size    'Commit array to memory stack
        GlobalUnlock hMem       'Relock memory
        ret = CreateStreamOnHGlobal(hMem, 1, IStm)  'Create stream from memory stack
        If ret = 0 Then    'OK, start GDIP :
            'Convert stream to GDIP-Image :
            ret = GdipLoadImageFromStream(IStm, lBitmap)
            If ret = 0 Then
                'Get Windows-Bitmap from GDIP-Image:
                GdipCreateHBITMAPFromBitmap lBitmap, hBmp, 0&
                If hBmp <> 0 Then
                    'Convert bitmap to StdPicture :
                    Set ArrayToPicture = BitmapToPicture(hBmp)
                End If
            End If
            'Clear memory ...
            GdipDisposeImage lBitmap
        End If
        GlobalFree hMem
    End If

End Function

'Only GDI+1.1!
Private Function CreateSharpenEffect() As Long
    CreateSharpenEffect = GdipCreateEffect(&H63CBF3EE, &H402CC526, &HC562718F, &H4251BF40, iEffect)
End Function

'Only GDI+1.1!
Private Function CreateBlurEffect() As Long
    CreateBlurEffect = GdipCreateEffect(&H633C80A4, &H482B1843, &H28BEF29E, &HD4FDC534, iEffect)
End Function

'Only GDI+1.1!
Private Function SetSharpenParameters(ByVal Radius As Single, ByVal Amount As Single) As Long
    Dim sp As SharpenParameters

    sp.Radius = Radius    ' 0 to 255
    sp.Amount = Amount    ' 0 to 100
    SetSharpenParameters = GdipSetEffectParameters(iEffect, sp, Len(sp))
End Function

'Only GDI+1.1!
Private Function SetBlurParameters(ByVal Radius As Single) As Long
    Dim bp As BlurParameters

    bp.Radius = Radius    ' 0 to 255
    bp.ExpandEdges = 1
    SetBlurParameters = GdipSetEffectParameters(iEffect, bp, Len(bp))
End Function


'Retrieve Shell-Icon (as shown in explorer) based on file name
Public Function GetIconPic(sFileName As String) As StdPicture
    Dim lIcon As Long

    lIcon = ExtractAssociatedIcon(0, sFileName, 1)
    If lIcon <> 0 Then Set GetIconPic = BitmapToPicture(lIcon, True)

End Function

'Retrieve screen resolution :
Public Function GetScreenRes() As TSize
    Dim r As RECT
    Call GetClientRect(GetDesktopWindow, r)
    GetScreenRes.x = r.Right
    GetScreenRes.Y = r.Top
End Function


'Help function to get a OLE-Picture from Windows-Bitmap-Handle
'If bIsIcon = TRUE, an Icon-Handle is commited
Function BitmapToPicture(ByVal hBmp As Long, Optional bIsIcon As Boolean = False) As Picture
    Dim TPicConv As PICTDESC, UID As GUID

    With TPicConv
        If bIsIcon Then
            .cbSizeOfStruct = 16
            .PicType = 3    'PicType Icon
        Else
            .cbSizeOfStruct = Len(TPicConv)
            .PicType = 1    'PicType Bitmap
        End If
        .hImage = hBmp
    End With

    CLSIDFromString StrPtr(GUID_IPicture), UID
    OleCreatePictureIndirect TPicConv, UID, True, BitmapToPicture

End Function

'Test function to see, which gdiplus.dll is used
'(Under WinXP is is possible, that another version is PARALLEL loaded
' > "side-by-side-components" over SxS)
'(See remarks to "msaccess.exe.local")
Sub ShowhModFile()
    Dim hmod2 As Long
    Dim sDLL As String
    Dim n As Long

    hmod2 = GetModuleHandle("gdiplus.dll")
    If hmod2 <> 0 Then
        sDLL = String(255, 0)
        n = GetModuleFileName(hmod2, sDLL, 255)
        If n <> 0 Then
            Debug.Print Left(sDLL, n)
        End If
    End If
End Sub