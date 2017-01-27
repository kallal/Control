'---------------------------------------------------------------------------------------
' Module    : GITMain
' Author    : AlbertKallal
' Date      : 2016-10-31
' Purpose   :
'---------------------------------------------------------------------------------------

Option Compare Database
Option Explicit


' List of lookup tables that are part of the program rather than the
' data, to be exported with source code
' Set to "*" to export the contents of all tables
'Only used in ExportAllSource
Private Const INCLUDE_TABLES As String = ""
' This is used in ImportAllSource
Private Const DebugOutput As Boolean = False
'this is used in ExportAllSource
'Causes the VCS_ code to be exported.   ...
Private Const ArchiveMyself As Boolean = False


Private Const AggressiveSanitize As Boolean = True
Private Const StripPublishOption As Boolean = True

' Constants for Scripting.FileSystemObject API
Public Const ForReading = 1, ForWriting = 2, ForAppending = 8
Public Const TristateTrue = -1, TristateFalse = 0, TristateUseDefault = -2

' ------------ file i/o defs
#If VBA7 Then
  Private Declare PtrSafe _
      Function getTempPath Lib "kernel32" _
           Alias "GetTempPathA" (ByVal nBufferLength As Long, _
                                 ByVal lpBuffer As String) As Long
  Private Declare PtrSafe _
      Function getTempFileName Lib "kernel32" _
           Alias "GetTempFileNameA" (ByVal lpszPath As String, _
                                     ByVal lpPrefixString As String, _
                                     ByVal wUnique As Long, _
                                     ByVal lpTempFileName As String) As Long
#Else
  Private Declare _
      Function getTempPath Lib "kernel32" _
           Alias "GetTempPathA" (ByVal nBufferLength As Long, _
                                 ByVal lpBuffer As String) As Long
  Private Declare _
      Function getTempFileName Lib "kernel32" _
           Alias "GetTempFileNameA" (ByVal lpszPath As String, _
                                     ByVal lpPrefixString As String, _
                                     ByVal wUnique As Long, _
                                     ByVal lpTempFileName As String) As Long
#End If

' --------------------------------
' Structures
' --------------------------------

' Structure to track buffered reading or writing of binary files
Private Type BinFile
    file_num As Integer
    file_len As Long
    file_pos As Long
    buffer As String
    buffer_len As Integer
    buffer_pos As Integer
    at_eof As Boolean
    mode As String
End Type


' --------------------------------
' Structures - reports
' --------------------------------

Private Type str_DEVMODE
  RGB As String * 94
End Type

Private Type type_DEVMODE
  strDeviceName(31) As Byte 'vba strings are encoded in unicode (16 bit) not ascii
  intSpecVersion As Integer
  intDriverVersion As Integer
  intSize As Integer
  intDriverExtra As Integer
  lngFields As Long
  intOrientation As Integer
  intPaperSize As Integer
  intPaperLength As Integer
  intPaperWidth As Integer
  intScale As Integer
  intCopies As Integer
  intDefaultSource As Integer
  intPrintQuality As Integer
  intColor As Integer
  intDuplex As Integer
  intResolution As Integer
  intTTOption As Integer
  intCollate As Integer
  strFormName(31) As Byte
  lngPad As Long
  lngBits As Long
  lngPW As Long
  lngPH As Long
  lngDFI As Long
  lngDFr As Long
End Type


' --------------------------------
' Structures - relationships
' --------------------------------

' Structure to keep track of "on Update" and "on Delete" clauses
' Access does not in all cases execute such queries
Private Type structEnforce
    foreignTable As String
    foreignFields() As String
    table As String
    refFields() As String
    isUpdate As Boolean
End Type

' keeping "on Update" relations to be complemented after table creation
Private K() As structEnforce

' For Access 2007 (VBA6) and earlier
#If Not VBA7 Then
  Private Const acTableDataMacro As Integer = 12
#End If




' ------------

' Can we export without closing the form?

' Export a database object with optional UCS2-to-UTF-8 conversion.
Public Sub ExportObject(ByVal obj_type_num As Integer, ByVal obj_name As String, _
                    ByVal file_path As String, Optional ByVal Ucs2Convert As Boolean = False)

    MkDirIfNotExist Left$(file_path, InStrRev(file_path, "\"))
    If Ucs2Convert Then
        Dim tempFileName As String
        tempFileName = TempFile()
        Application.SaveAsText obj_type_num, obj_name, tempFileName
        ConvertUcs2Utf8 tempFileName, file_path
    Else
        Application.SaveAsText obj_type_num, obj_name, file_path
    End If
End Sub

' Import a database object with optional UTF-8-to-UCS2 conversion.
Public Sub ImportObject(ByVal obj_type_num As Integer, ByVal obj_name As String, _
                    ByVal file_path As String, Optional ByVal Ucs2Convert As Boolean = False)
    
    If Not FileExists(file_path) Then Exit Sub
    
    If Ucs2Convert Then
        Dim tempFileName As String
        tempFileName = TempFile()
        ConvertUtf8Ucs2 file_path, tempFileName
        Application.LoadFromText obj_type_num, obj_name, tempFileName
        
        Dim FSO As Object
        Set FSO = CreateObject("Scripting.FileSystemObject")
        FSO.DeleteFile tempFileName
    Else
        Application.LoadFromText obj_type_num, obj_name, file_path
    End If
End Sub

'shouldn't this be SanitizeTextFile (Singular)?

' For each *.txt in `Path`, find and remove a number of problematic but
' unnecessary lines of VB code that are inserted automatically by the
' Access GUI and change often (we don't want these lines of code in
' version control).
Public Sub SanitizeTextFiles(ByVal Path As String, ByVal Ext As String)

    Dim FSO As Object
    Set FSO = CreateObject("Scripting.FileSystemObject")
    '
    '  Setup Block matching Regex.
    Dim rxBlock As Object
    Set rxBlock = CreateObject("VBScript.RegExp")
    rxBlock.ignoreCase = False
    '
    '  Match PrtDevNames / Mode with or  without W
    Dim srchPattern As String
    srchPattern = "PrtDev(?:Names|Mode)[W]?"
    If (AggressiveSanitize = True) Then
      '  Add and group aggressive matches
      srchPattern = "(?:" & srchPattern
      srchPattern = srchPattern & "|GUID|""GUID""|NameMap|dbLongBinary ""DOL"""
      srchPattern = srchPattern & ")"
    End If
    '  Ensure that this is the begining of a block.
    srchPattern = srchPattern & " = Begin"
'Debug.Print srchPattern
    rxBlock.Pattern = srchPattern
    '
    '  Setup Line Matching Regex.
    Dim rxLine As Object
    Set rxLine = CreateObject("VBScript.RegExp")
    srchPattern = "^\s*(?:"
    srchPattern = srchPattern & "Checksum ="
    srchPattern = srchPattern & "|BaseInfo|NoSaveCTIWhenDisabled =1"
    If (StripPublishOption = True) Then
        srchPattern = srchPattern & "|dbByte ""PublishToWeb"" =""1"""
        srchPattern = srchPattern & "|PublishOption =1"
    End If
    srchPattern = srchPattern & ")"
'Debug.Print srchPattern
    rxLine.Pattern = srchPattern
    Dim FileName As String
    FileName = Dir$(Path & "*." & Ext)
    Dim isReport As Boolean
    isReport = False
    
    Do Until Len(FileName) = 0
       Debug.Print "scrub file = >" & FileName
        DoEvents
        Dim obj_name As String
        obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)

        Dim InFile As Object
        Set InFile = FSO.OpenTextFile(Path & obj_name & "." & Ext, iomode:=ForReading, create:=False, Format:=TristateFalse)
        Dim OutFile As Object
        Set OutFile = FSO.CreateTextFile(Path & obj_name & ".sanitize", overwrite:=True, Unicode:=False)
    
        Dim getLine As Boolean
        getLine = True
        
        Do Until InFile.AtEndOfStream
            DoEvents
            Dim txt As String
            '
            ' Check if we need to get a new line of text
            If getLine = True Then
                txt = InFile.ReadLine
            Else
                getLine = True
            End If
            '
            ' Skip lines starting with line pattern
            If rxLine.Test(txt) Then
                Dim rxIndent As Object
                Set rxIndent = CreateObject("VBScript.RegExp")
                rxIndent.Pattern = "^(\s+)\S"
                '
                ' Get indentation level.
                Dim matches As Object
                Set matches = rxIndent.Execute(txt)
                '
                ' Setup pattern to match current indent
                Select Case matches.Count
                    Case 0
                        rxIndent.Pattern = "^" & vbNullString
                    Case Else
                        rxIndent.Pattern = "^" & matches(0).SubMatches(0)
                End Select
                rxIndent.Pattern = rxIndent.Pattern + "\S"
                '
                ' Skip lines with deeper indentation
                Do Until InFile.AtEndOfStream
                    txt = InFile.ReadLine
                    If rxIndent.Test(txt) Then Exit Do
                Loop
                ' We've moved on at least one line so do get a new one
                ' when starting the loop again.
                getLine = False
            '
            ' skip blocks of code matching block pattern
            ElseIf rxBlock.Test(txt) Then
                Do Until InFile.AtEndOfStream
                    txt = InFile.ReadLine
                    If InStr(txt, "End") Then Exit Do
                Loop
            ElseIf InStr(1, txt, "Begin Report") = 1 Then
                isReport = True
                OutFile.WriteLine txt
            ElseIf isReport = True And (InStr(1, txt, "    Right =") Or InStr(1, txt, "    Bottom =")) Then
                'skip line
                If InStr(1, txt, "    Bottom =") Then
                    isReport = False
                End If
            Else
                OutFile.WriteLine txt
            End If
        Loop
        OutFile.Close
        InFile.Close

        FSO.DeleteFile (Path & FileName)

        Dim thisFile As Object
        Set thisFile = FSO.GetFile(Path & obj_name & ".sanitize")
        thisFile.Move (Path & FileName)
        FileName = Dir$()
    Loop

End Sub



'returns true if named module is NOT part of the VCS code
Private Function IsNotVCS(ByVal name As String) As Boolean
    If name <> "GITMain" And _
      name <> "GuiProgress" Then
        IsNotVCS = True
    Else
        IsNotVCS = False
    End If

End Function

' Main entry point for EXPORT. Export all forms, reports, queries,
' macros, modules, and lookup tables to `source` folder under the
' database's folder.

Public Sub ExportAllSource(bolMsg As Boolean, _
            bolOnlyNew As Boolean, _
            bolEQuery As Boolean, _
            bolEModule As Boolean, _
            bolEForms As Boolean, _
            bolEReports As Boolean, _
            bolEMacros As Boolean, _
            bolEVBArefs As Boolean, _
            bolETable As Boolean, _
            bolERelationShips As Boolean)
            

   ' bolMsg = true = show progress bar
   
   
    Dim pBar            As New clsPbar
    
    Dim db              As Object ' DAO.Database
    Dim source_path     As String
    Dim source_pathList As String
    
    Dim obj_path        As String
    Dim qry             As Object ' DAO.QueryDef
    Dim doc             As Object ' DAO.Document
    Dim obj_type        As Variant
    Dim obj_type_split() As String
    Dim obj_type_label  As String
    Dim obj_type_name   As String
    Dim obj_type_num    As Integer
    Dim obj_count       As Integer
    Dim obj_data_count  As Integer
    Dim ucs2            As Boolean
    
    Dim strLastType     As String
    Dim dtLastExport    As Date
    Dim bolExportFlag   As Boolean
    
    Dim strDateStamps   As String         ' list of objects we write out
'    Dim colDateStamps   As Collection     ' list of objects read in
    
    
    
    If bolOnlyNew = True Then
       dtLastExport = DLookup("LastExportTime", "tblGIT", "id = 1")
       Debug.Print "last exp = " & dtLastExport
    End If

    Set db = CurrentDb

    CloseFormsReports
    'InitUsingUcs2
    
'    Dim strFolder    As String      ' local folder = name (useally)
'    strFolder = CurrentProject.name
'    strFolder = Split(strFolder, ".")(0)     ' get rid of extension
'    ' if a "_" in name drop after
'    If InStr(strFolder, "_") <> 0 Then
'       strFolder = Split(strFolder, "_")(0)
'    End If

    source_path = SCCPath
    source_pathList = source_path & "ModList\"
    MkDirIfNotExist source_path
    

    MkDirIfNotExist source_pathList
    
    
    Debug.Print
    
    If bolEQuery = False Then GoTo skipquery

    obj_path = source_path & "queries\"
    If bolOnlyNew = False Then ClearTextFilesFromDir obj_path, "bas"
    
    Debug.Print PadRight("Exporting queries...", 24);
    obj_count = 0
    If bolMsg = True Then
       pBar.ShowProgress
       pBar.PCaption = "Export query"
       pBar.Pmax = db.QueryDefs.Count
    End If
    
    strDateStamps = ""
    obj_type_label = "queries"
    For Each qry In db.QueryDefs
       
       bolExportFlag = False
       
       If Left$(qry.name, 1) <> "~" Then
         If strDateStamps <> "" Then strDateStamps = strDateStamps & vbCrLf
         strDateStamps = strDateStamps & qry.name & "," & Format(qry.LastUpdated, "MM/DD/YYYY HH:NN:SS AM/PM")
          
          bolExportFlag = True
          If bolOnlyNew = True Then
             If dtLastExport > TimeRound(qry.LastUpdated) Then
                bolExportFlag = False
             End If
          End If
       End If
       
       If bolExportFlag = True Then
              
         If bolMsg = True Then
            pBar.TextMsg = qry.name
            pBar.IncOne
         Else
            Debug.Print "------>" & qry.name
         End If
         
            ExportObject acQuery, qry.name, obj_path & qry.name & ".bas", UsingUcs2
            obj_count = obj_count + 1
            
       
       End If
    
    Next
    'Debug.Print PadRight("Sanitizing...", 15);
    'SanitizeTextFiles obj_path, "bas"
    
    Call WriteModList(strDateStamps, source_pathList, obj_type_label)
    
    Debug.Print "[" & obj_count & "]"

skipquery:

    For Each obj_type In Split( _
        "forms|Forms|" & acForm & "," & _
        "reports|Reports|" & acReport & "," & _
        "macros|Scripts|" & acMacro & "," & _
        "modules|Modules|" & acModule _
        , "," _
    )
        obj_type_split = Split(obj_type, "|")
        obj_type_label = obj_type_split(0)
        obj_type_name = obj_type_split(1)
        obj_type_num = Val(obj_type_split(2))
        obj_path = source_path & obj_type_label & "\"
        obj_count = 0
        
        Debug.Print PadRight("Exporting " & obj_type_label & "...", 24);
        
        Dim bolExportYes As Boolean
        bolExportYes = False
        
        Select Case obj_type_name
           Case "forms": bolExportYes = bolEForms
           Case "reports": bolExportYes = bolEReports
           Case "Scripts": bolExportYes = bolEMacros
           Case "modules": bolExportYes = bolEModule
       End Select
       
       If bolExportYes = True Then
          If bolOnlyNew = False Then ClearTextFilesFromDir obj_path, "bas"
       End If
       
           
       If bolExportYes = True Then
        If bolMsg Then
            pBar.ShowProgress
            pBar.PCaption = "Export " & obj_type_name
            pBar.PValue = 0
            pBar.Pmax = db.Containers(obj_type_name).Documents.Count
        End If
        
        ' setup datestamp file
        strDateStamps = ""
       
         For Each doc In db.Containers(obj_type_name).Documents
             DoEvents
             If (Left$(doc.name, 1) <> "~") And _
                (IsNotVCS(doc.name) Or ArchiveMyself) Then
                 If obj_type_label = "modules" Then
                     ucs2 = False
                 Else
                     ucs2 = UsingUcs2
                 End If
                 If bolMsg Then
                    pBar.TextMsg = doc.name
                    pBar.IncOne
                 Else
                    Debug.Print "------>" & doc.name
                 End If
               Dim dtObjectDate     As Date
               
               Select Case obj_type_name
                  Case "forms": dtObjectDate = CurrentProject.AllForms(doc.name).DateModified
                  Case "reports": dtObjectDate = CurrentProject.AllReports(doc.name).DateModified
                  Case "Scripts: dtObjectDate = CurrentProject.AllMacros(doc.Name).DateModified"
                  Case "modules": dtObjectDate = CurrentProject.AllModules(doc.name).DateModified
               End Select

               If strDateStamps <> "" Then strDateStamps = strDateStamps & vbCrLf
               strDateStamps = strDateStamps & doc.name & "," & Format(dtObjectDate, "MM/DD/YYYY HH:NN:SS AM/PM")
                
                bolExportFlag = True
                If bolOnlyNew = True Then
                   If dtLastExport > dtObjectDate Then
                      bolExportFlag = False
                   Else
                      bolExportFlag = True
                   End If
                End If
               
                              
               If bolExportFlag = True Then

                  ExportObject obj_type_num, doc.name, obj_path & doc.name & ".bas", ucs2
                  
                  If obj_type_label = "reports" Then
                      ExportPrintVars doc.name, obj_path & doc.name & ".pv"
                  End If
               
               End If
               
               obj_count = obj_count + 1
             End If
         Next
      End If

        Debug.Print PadRight("Sanitizing...", 15);
        If obj_type_label <> "modules" Then
            'SanitizeTextFiles obj_path, "bas"
        End If
        Debug.Print "[" & obj_count & "]"
                
        If bolExportYes = True Then
         ' write out the modified file list
         'Call WriteModList(strDateStamps, obj_path)
         Call WriteModList(strDateStamps, source_pathList, obj_type_label)
        
        End If
        
    Next
    
    If bolEVBArefs = True Then ExportReferences source_path

'-------------------------table export------------------------
    If bolETable = False Then GoTo skiptables
    
    obj_path = source_path & "tables\"
    MkDirIfNotExist Left$(obj_path, InStrRev(obj_path, "\"))
    ClearTextFilesFromDir obj_path, "txt"
    
    Dim td As DAO.TableDef
    Dim tds As DAO.TableDefs
    Set tds = db.TableDefs

    obj_type_label = "tbldef"
    obj_type_name = "Table_Def"
    obj_type_num = acTable
    obj_path = source_path & obj_type_label & "\"
    obj_count = 0
    obj_data_count = 0
    MkDirIfNotExist Left$(obj_path, InStrRev(obj_path, "\"))
    
    'move these into Table and DataMacro modules?
    ' - We don't want to determin file extentions here - or obj_path either!
    ClearTextFilesFromDir obj_path, "sql"
    ClearTextFilesFromDir obj_path, "xml"
    ClearTextFilesFromDir obj_path, "LNKD"
    
    Dim IncludeTablesCol As Collection
    Set IncludeTablesCol = StrSetToCol(INCLUDE_TABLES, ",")
    
    Debug.Print PadRight("Exporting " & obj_type_label & "...", 24);
    
    If bolMsg Then
      pBar.ShowProgress
      pBar.PCaption = "Export tables"
      pBar.PValue = 0
      pBar.Pmax = tds.Count
    End If
    
    
    For Each td In tds
        ' This is not a system table
        ' this is not a temporary table
        If Left$(td.name, 4) <> "MSys" And _
        Left$(td.name, 1) <> "~" Then
      If bolMsg = True Then
         pBar.TextMsg = td.name
         pBar.IncOne
      End If
        
            If Len(td.connect) = 0 Then ' this is not an external table
                ExportTableDef db, td, td.name, obj_path
                If INCLUDE_TABLES = "*" Then
                    DoEvents
                    ExportTableData CStr(td.name), source_path & "tables\"
                    If Len(Dir$(source_path & "tables\" & td.name & ".txt")) > 0 Then
                        obj_data_count = obj_data_count + 1
                    End If
                ElseIf (Len(Replace(INCLUDE_TABLES, " ", vbNullString)) > 0) And INCLUDE_TABLES <> "*" Then
                    DoEvents
                    On Error GoTo Err_TableNotFound
                    If InCollection(IncludeTablesCol, td.name) Then
                        ExportTableData CStr(td.name), source_path & "tables\"
                        obj_data_count = obj_data_count + 1
                    End If
Err_TableNotFound:
                    
                'else don't export table data
                End If
            Else
               'Stop
                ExportLinkedTable td.name, obj_path
            End If
            
            obj_count = obj_count + 1
            
        End If
    Next
    Debug.Print "[" & obj_count & "]"
    If obj_data_count > 0 Then
      Debug.Print PadRight("Exported data...", 24) & "[" & obj_data_count & "]"
    End If
skiptables:
    
If bolERelationShips = False Then GoTo skiprelatonships:
    
    Debug.Print PadRight("Exporting Relations...", 24);
    obj_count = 0
    obj_path = source_path & "relations\"
    MkDirIfNotExist Left$(obj_path, InStrRev(obj_path, "\"))

    ClearTextFilesFromDir obj_path, "txt"

    Dim aRelation As DAO.Relation
    
    For Each aRelation In CurrentDb.Relations
        ' Exclude relations from system tables and inherited (linked) relations
        If Not (aRelation.name = "MSysNavPaneGroupsMSysNavPaneGroupToObjects" _
                Or aRelation.name = "MSysNavPaneGroupCategoriesMSysNavPaneGroups" _
                Or (aRelation.Attributes And DAO.RelationAttributeEnum.dbRelationInherited) = _
                DAO.RelationAttributeEnum.dbRelationInherited) Then
            ExportRelation aRelation, obj_path & aRelation.name & ".txt"
            obj_count = obj_count + 1
        End If
    Next
    
skiprelatonships:

    Debug.Print "[" & obj_count & "]"
past1:
    Debug.Print "Done."
End Sub

Sub WriteModList(strModList As String, strFilePath As String, strType As String)


   Dim intF       As Integer
   Dim strF       As String
   
   strF = strFilePath & strType & ".txt"
   intF = FreeFile
   Open strF For Output As #intF
   Print #intF, strModList
   Close #intF
   
   
End Sub

Function ReadModList(strFilePath As String, strType As String) As Collection

   Dim intF       As Integer
   Dim strF       As String
   
   Dim sline      As String
   Dim dtTime     As Date
   Dim sDoc       As String
   
   Set ReadModList = New Collection
   
   intF = FreeFile
   strF = strFilePath & strType & ".txt"
   
   On Error Resume Next
   Open strF For Input As #intF
   Do While EOF(intF) = False
      Line Input #intF, sline
      sDoc = Split(sline, ",")(0)
      dtTime = Format(Split(sline, ",")(1), "MM/DD/YYYY HH:NN:SS AM/PM")
      ReadModList.Add dtTime, sDoc
   Loop
   Close #intF

End Function

Function LastModFromList(colMod As Collection, strDoc As String) As Date

   LastModFromList = 0
   On Error Resume Next
   
   LastModFromList = TimeRound(colMod(strDoc))
   
End Function


' Main entry point for IMPORT. Import all forms, reports, queries,
' macros, modules, and lookup tables from `source` folder under the
' database's folder.

Public Sub ImportAllSource(bolMsg As Boolean, _
            bolOnlyNew As Boolean, bolTestRun As Boolean, strChanged As String, _
            bolEQuery As Boolean, _
            bolEModule As Boolean, _
            bolEForms As Boolean, _
            bolEReports As Boolean, _
            bolEMacros As Boolean, _
            bolEVBArefs As Boolean, _
            bolETable As Boolean, _
            bolERelationShips As Boolean)
 
    Dim FSO             As Object
    Dim source_path     As String
    Dim source_pathModList As String
    
    Dim obj_path        As String
    
    Dim obj_type        As Variant
    Dim obj_type_split() As String
    Dim obj_type_label  As String
    Dim obj_type_num    As Integer
    Dim obj_count       As Integer
    Dim FileName        As String
    Dim obj_name        As String
    Dim ucs2            As Boolean
    
    Dim dtLastImport    As Date
    Dim bolExportFlag   As Boolean
    Dim pBar            As New clsPbar
    Dim strFolder       As String
    Dim db              As DAO.Database
    Dim bolImportFlag   As Boolean
    Dim bolFileChanged  As Boolean
    
    Set db = CurrentDb
    
    Dim colTimeStamps   As Collection
    
    Dim dtObjectDate       As Date

    Set FSO = CreateObject("Scripting.FileSystemObject")

    CloseFormsReports
    
    'InitUsingUcs2
    
    strChanged = ""
    

    strFolder = CurrentProject.name
    strFolder = Split(strFolder, ".")(0)     ' get rid of extension
    ' if a "_" in name drop after
    If InStr(strFolder, "_") <> 0 Then
       strFolder = Split(strFolder, "_")(0)
    End If

    source_path = ProjectPath() & strFolder & "\"
    source_pathModList = ProjectPath() & strFolder & "ModList\"
    
    If Not FSO.FolderExists(source_path) Then
        MsgBox "No source found at:" & vbCrLf & source_path, vbExclamation, "Import failed"
        Exit Sub
    End If

    
    If bolEVBArefs = True Then
      If Not ImportReferences(source_path) Then
          Debug.Print "Info: no references file in " & source_path
          Debug.Print
      End If
    End If

    
    If bolEQuery = False Then GoTo skipquery
    
    
    pBar.ShowProgress
    pBar.PCaption = "Import queries"
    pBar.PValue = 0
    pBar.Pmax = db.QueryDefs.Count
    
    obj_path = source_path & "queries\"
    FileName = Dir$(obj_path & "*.bas")
    
    Set colTimeStamps = ReadModList(source_pathModList, "queries")
    
    
    Dim tempFilePath As String
    tempFilePath = TempFile()
    
    If Len(FileName) > 0 Then
        Debug.Print PadRight("Importing queries...", 24);
        obj_count = 0
        Do Until Len(FileName) = 0
            obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
                        
            bolImportFlag = True
                                    
            If bolOnlyNew = True Then
               ' only import files modifed later then object date
               dtObjectDate = 0
               On Error Resume Next
               dtObjectDate = db.QueryDefs(obj_name).LastUpdated
               On Error GoTo 0
               If dtObjectDate <> 0 Then
               
                  If LastModFromList(colTimeStamps, obj_name) > TimeRound(dtObjectDate) Then
                     bolImportFlag = True
                  Else
                     bolImportFlag = False
                  End If
              End If
            End If
            If obj_name = "GuiProgress" Then
               bolImportFlag = False
            End If
            
            
            pBar.TextMsg = obj_name
            pBar.IncOne
            
            If bolImportFlag = True Then
                        
               If bolTestRun = False Then
                  ImportObject acQuery, obj_name, obj_path & FileName, UsingUcs2
                  ExportObject acQuery, obj_name, tempFilePath, UsingUcs2
                  ImportObject acQuery, obj_name, tempFilePath, UsingUcs2
               End If
               
               strChanged = strChanged & obj_name * vbCrLf
            End If
            
            obj_count = obj_count + 1
            FileName = Dir$()
        Loop
        Debug.Print "[" & obj_count & "]"
    End If
    
    DelIfExist tempFilePath
    
skipquery:
    

    ' restore table definitions
    
    If bolETable = False Then GoTo skiptables
    
    obj_path = source_path & "tbldef\"
    FileName = Dir$(obj_path & "*.sql")
    If Len(FileName) > 0 Then
        Debug.Print PadRight("Importing tabledefs...", 24);
        obj_count = 0
        Do Until Len(FileName) = 0
            obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
            If DebugOutput Then
                If obj_count = 0 Then
                    Debug.Print
                End If
                Debug.Print "  [debug] table " & obj_name;
                Debug.Print
            End If
            ImportTableDef CStr(obj_name), obj_path
            obj_count = obj_count + 1
            FileName = Dir$()
        Loop
        Debug.Print "[" & obj_count & "]"
    End If
    
    
    ' restore linked tables - we must have access to the remote store to import these!
    FileName = Dir$(obj_path & "*.LNKD")
    If Len(FileName) > 0 Then
        Debug.Print PadRight("Importing Linked tabledefs...", 24);
        obj_count = 0
        Do Until Len(FileName) = 0
            obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
            If DebugOutput Then
                If obj_count = 0 Then
                    Debug.Print
                End If
                Debug.Print "  [debug] table " & obj_name;
                Debug.Print
            End If
            ImportLinkedTable CStr(obj_name), obj_path
            obj_count = obj_count + 1
            FileName = Dir$()
        Loop
        Debug.Print "[" & obj_count & "]"
    End If
    
    
    
    ' NOW we may load data
    obj_path = source_path & "tables\"
    FileName = Dir$(obj_path & "*.txt")
    If Len(FileName) > 0 Then
        Debug.Print PadRight("Importing tables...", 24);
        obj_count = 0
        Do Until Len(FileName) = 0
            DoEvents
            obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
            ImportTableData CStr(obj_name), obj_path
            obj_count = obj_count + 1
            FileName = Dir$()
        Loop
        Debug.Print "[" & obj_count & "]"
    End If
    
    'load Data Macros - not DRY!
    obj_path = source_path & "tbldef\"
    FileName = Dir$(obj_path & "*.xml")
    If Len(FileName) > 0 Then
        Debug.Print PadRight("Importing Data Macros...", 24);
        obj_count = 0
        Do Until Len(FileName) = 0
            DoEvents
            obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
            'ImportTableData CStr(obj_name), obj_path
            ImportDataMacros obj_name, obj_path
            obj_count = obj_count + 1
            FileName = Dir$()
        Loop
        Debug.Print "[" & obj_count & "]"
    End If
    

        'import Data Macros
skiptables:

    
    For Each obj_type In Split( _
        "forms|" & acForm & "," & _
        "reports|" & acReport & "," & _
        "macros|" & acMacro & "," & _
        "modules|" & acModule _
        , "," _
    )
        obj_type_split = Split(obj_type, "|")
        obj_type_label = obj_type_split(0)
        obj_type_num = Val(obj_type_split(1))
        obj_path = source_path & obj_type_label & "\"
         
        Dim bolExportYes   As Boolean
        Dim intDocs        As Integer
        bolExportYes = False
        
        Select Case obj_type_label
           Case "forms": bolExportYes = bolEForms: intDocs = CurrentProject.AllForms.Count
           Case "reports": bolExportYes = bolEReports: intDocs = CurrentProject.AllReports.Count
           Case "macros": bolExportYes = bolEMacros: intDocs = CurrentProject.AllMacros.Count
           Case "modules": bolExportYes = bolEModule: intDocs = CurrentProject.AllModules.Count
       End Select
       
       
              
       FileName = ""
       If bolExportYes = True Then
          FileName = Dir$(obj_path & "*.bas")
       End If
       
       
       If (Len(FileName) > 0) And (bolExportYes = True) Then
          
          pBar.ShowProgress
          pBar.PCaption = "Import " & obj_type_label
          pBar.PValue = 0
          pBar.Pmax = intDocs
       
          Set colTimeStamps = ReadModList(source_pathModList, obj_type_label)
          
          Debug.Print PadRight("Importing " & obj_type_label & "...", 24);
          obj_count = 0
          
          Do Until Len(FileName) = 0
              obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
                
               pBar.TextMsg = obj_name
               pBar.IncOne
               'If obj_name = "T1" Or obj_name = "Formdialog" Then Stop
               
               bolExportFlag = True
               bolFileChanged = False
                
               If bolOnlyNew = True Then
                  dtObjectDate = 0
                  On Error Resume Next
                  Select Case obj_type_label
                     Case "forms": dtObjectDate = CurrentProject.AllForms(obj_name).DateModified
                     Case "reports": dtObjectDate = CurrentProject.AllReports(obj_name).DateModified
                     Case "macros": dtObjectDate = CurrentProject.AllMacros(obj_name).DateModified
                     Case "modules"
                        dtObjectDate = CurrentProject.AllModules(obj_name).DateModified
                        If dtObjectDate <> 0 Then
                           bolFileChanged = FileChanged(obj_type_num, obj_name, obj_path, source_pathModList, False)
                        Else
                           bolFileChanged = True      ' file does not exist
                        End If
                           
                  End Select
                  On Error GoTo 0
                                   
                  
                  dtObjectDate = TimeRound(dtObjectDate)
                  If (dtObjectDate <> 0) And (bolFileChanged = False) Then
                     'If FileDateTime(obj_path & FileName) > dtObjectDate Then
                     If LastModFromList(colTimeStamps, obj_name) > dtObjectDate Then
                        bolExportFlag = True
                     Else
                        bolExportFlag = False
                     End If
                  End If
               
               End If
                                
               If bolExportFlag = True Then
                  If obj_type_label = "modules" Then
                    ucs2 = False
                  Else
                    ucs2 = UsingUcs2
                  End If
                  If IsNotVCS(obj_name) Then
                     If bolTestRun = False Then
                        ImportObject obj_type_num, obj_name, obj_path & FileName, ucs2
                     End If
                     strChanged = strChanged & obj_name & vbCrLf
                     obj_count = obj_count + 1
                  Else
                    If ArchiveMyself Then
                       MsgBox "Module " & obj_name & " could not be updated while running. Ensure latest version is included!", vbExclamation, "Warning"
                    End If
                  End If
               End If
                
               FileName = Dir$()
            Loop
            Debug.Print "[" & obj_count & "]"
        
        End If
    Next
    
    If bolEReports = False Then GoTo skipreportsettings

    pBar.ShowProgress
    pBar.PValue = 0
    pBar.Pmax = CurrentProject.AllReports.Count
    pBar.PCaption = "Import Report settings"
    
    'import Print Variables
    Debug.Print PadRight("Importing Print Vars...", 24);
    obj_count = 0
    
    obj_path = source_path & "reports\"
    Set colTimeStamps = ReadModList(source_pathModList, "reports")
    
    
    FileName = Dir$(obj_path & "*.pv")
    Do Until Len(FileName) = 0

        obj_name = Mid$(FileName, 1, InStrRev(FileName, ".") - 1)
        
        pBar.TextMsg = obj_name
        pBar.IncOne
        
        bolExportFlag = True
        dtObjectDate = CurrentProject.AllReports(obj_name).DateModified
         
        dtObjectDate = TimeRound(dtObjectDate)
         
         'If FileDateTime(obj_path & FileName) > dtObjectDate Then
         If LastModFromList(colTimeStamps, obj_name) > dtObjectDate Then
            bolExportFlag = True
         Else
            bolExportFlag = False
         End If
        
        If bolExportFlag = True Then
           Stop
           ImportPrintVars obj_name, obj_path & FileName
        End If
        
        obj_count = obj_count + 1
        FileName = Dir$()
    Loop
    
    Debug.Print "[" & obj_count & "]"
    
skipreportsettings:

    If bolERelationShips = False Then GoTo skiprelationships
    'import relations
    Debug.Print PadRight("Importing Relations...", 24);
    obj_count = 0
    obj_path = source_path & "relations\"
    FileName = Dir$(obj_path & "*.txt")
    Do Until Len(FileName) = 0
        DoEvents
        ImportRelation obj_path & FileName
        obj_count = obj_count + 1
        FileName = Dir$()
    Loop
    Debug.Print "[" & obj_count & "]"
    DoEvents
skiprelationships:

    Debug.Print "Done."
End Sub

' Main entry point for ImportProject.
' Drop all forms, reports, queries, macros, modules.
' execute ImportAllSource.
Public Sub ImportProject()
On Error GoTo errorHandler

    If MsgBox("This action will delete all existing: " & vbCrLf & _
              vbCrLf & _
              Chr$(149) & " Tables" & vbCrLf & _
              Chr$(149) & " Forms" & vbCrLf & _
              Chr$(149) & " Macros" & vbCrLf & _
              Chr$(149) & " Modules" & vbCrLf & _
              Chr$(149) & " Queries" & vbCrLf & _
              Chr$(149) & " Reports" & vbCrLf & _
              vbCrLf & _
              "Are you sure you want to proceed?", vbCritical + vbYesNo, _
              "Import Project") <> vbYes Then
        Exit Sub
    End If

    Dim db As DAO.Database
    Set db = CurrentDb
    CloseFormsReports

    Debug.Print
    Debug.Print "Deleting Existing Objects"
    Debug.Print
    
    Dim rel As DAO.Relation
    For Each rel In CurrentDb.Relations
        If Not (rel.name = "MSysNavPaneGroupsMSysNavPaneGroupToObjects" Or _
                rel.name = "MSysNavPaneGroupCategoriesMSysNavPaneGroups") Then
            CurrentDb.Relations.Delete (rel.name)
        End If
    Next

    Dim dbObject As Object
    For Each dbObject In db.QueryDefs
        DoEvents
        If Left$(dbObject.name, 1) <> "~" Then
'            Debug.Print dbObject.Name
            db.QueryDefs.Delete dbObject.name
        End If
    Next
    
    Dim td As DAO.TableDef
    For Each td In CurrentDb.TableDefs
        If Left$(td.name, 4) <> "MSys" And _
            Left$(td.name, 1) <> "~" Then
            CurrentDb.TableDefs.Delete (td.name)
        End If
    Next

    Dim objType As Variant
    Dim objTypeArray() As String
    Dim doc As Object
    '
    '  Object Type Constants
    Const OTNAME As Byte = 0
    Const OTID As Byte = 1

    For Each objType In Split( _
            "Forms|" & acForm & "," & _
            "Reports|" & acReport & "," & _
            "Scripts|" & acMacro & "," & _
            "Modules|" & acModule _
            , "," _
        )
        objTypeArray = Split(objType, "|")
        DoEvents
        For Each doc In db.Containers(objTypeArray(OTNAME)).Documents
            DoEvents
            If (Left$(doc.name, 1) <> "~") And _
               (IsNotVCS(doc.name)) Then
'                Debug.Print doc.Name
                DoCmd.DeleteObject objTypeArray(OTID), doc.name
            End If
        Next
    Next
    
    Debug.Print "================="
    Debug.Print "Importing Project"
    'ImportAllSource
    
    Exit Sub

errorHandler:
    Debug.Print "VCS_ImportExport.ImportProject: Error #" & Err.Number & vbCrLf & _
                Err.Description
End Sub

' Expose for use as function, can be called by query
Public Sub make()
    ImportProject
End Sub



'===================================================================================================================================
'-----------------------------------------------------------'
' Helper Functions - these should be put in their own files '
'-----------------------------------------------------------'

' Close all open forms.
Private Sub CloseFormsReports()
    
    On Error GoTo errorHandler
    Dim i         As Integer
    Dim fCount    As Integer     ' forms count
    
    fCount = Forms.Count
    
    If fCount > 0 Then
    
       For i = fCount - 1 To 0 Step -1
          If Forms(i).name <> "frmGIT" Then
             DoCmd.Close acForm, Forms(i).name
             DoEvents
          End If
      Next i
    End If
    
    Do While Reports.Count > 0
        DoCmd.Close acReport, Reports(0).name
        DoEvents
    Loop
    Exit Sub

errorHandler:
    Debug.Print "VCS_ImportExport.CloseFormsReports: Error #" & Err.Number & vbCrLf & _
                Err.Description
End Sub


'errno 457 - duplicate key (& item)
Public Function StrSetToCol(ByVal strSet As String, ByVal delimiter As String) As Collection 'throws errors
    Dim strSetArray() As String
    Dim col As Collection
    
    Set col = New Collection
    strSetArray = Split(strSet, delimiter)
    
    Dim item As Variant
    For Each item In strSetArray
        col.Add item, item
    Next
    
    Set StrSetToCol = col
End Function


' Check if an item or key is in a collection
Public Function InCollection(col As Collection, Optional vItem, Optional vKey) As Boolean
    On Error Resume Next

    Dim vColItem As Variant

    InCollection = False

    If Not IsMissing(vKey) Then
        col.item vKey

        '5 if not in collection, it is 91 if no collection exists
        If Err.Number <> 5 And Err.Number <> 91 Then
            InCollection = True
        End If
    ElseIf Not IsMissing(vItem) Then
        For Each vColItem In col
            If vColItem = vItem Then
                InCollection = True
                GoTo Exit_Proc
            End If
        Next vColItem
    End If

Exit_Proc:
    Exit Function
Err_Handle:
    Resume Exit_Proc
End Function



' Path/Directory of the current database file.
Public Function ProjectPath() As String
    ProjectPath = CurrentProject.Path
    If Right$(ProjectPath, 1) <> "\" Then ProjectPath = ProjectPath & "\"
End Function

' Path/Directory for source files
Public Function SourcePath() As String
    SourcePath = ProjectPath & CurrentProject.name & ".src\"
End Function

' Create folder `Path`. Silently do nothing if it already exists.
Public Sub MkDirIfNotExist(ByVal Path As String)
    On Error GoTo MkDirIfNotexist_noop
    MkDir Path
MkDirIfNotexist_noop:
    On Error GoTo 0
End Sub

' Delete a file if it exists.
Public Sub DelIfExist(ByVal Path As String)
    On Error GoTo DelIfNotExist_Noop
    Kill Path
DelIfNotExist_Noop:
    On Error GoTo 0
End Sub

' Erase all *.`ext` files in `Path`.
Public Sub ClearTextFilesFromDir(ByVal Path As String, ByVal Ext As String)
    Dim FSO As Object
    Set FSO = CreateObject("Scripting.FileSystemObject")
    If Not FSO.FolderExists(Path) Then Exit Sub

    On Error GoTo ClearTextFilesFromDir_noop
    If Dir$(Path & "*." & Ext) <> vbNullString Then
        FSO.DeleteFile Path & "*." & Ext
    End If
    
ClearTextFilesFromDir_noop:
    On Error GoTo 0
End Sub

Public Function DirExists(ByVal strPath As String) As Boolean
    On Error Resume Next
    DirExists = False
    DirExists = ((GetAttr(strPath) And vbDirectory) = vbDirectory)
End Function

Public Function FileExists(ByVal strPath As String) As Boolean
    On Error Resume Next
    FileExists = False
    FileExists = ((GetAttr(strPath) And vbDirectory) <> vbDirectory)
End Function




' Import References from a CSV, true=SUCCESS
Public Function ImportReferences(ByVal obj_path As String) As Boolean
    Dim FSO As Object
    Dim InFile As Object
    Dim line As String
    Dim item() As String
    Dim GUID As String
    Dim Major As Long
    Dim Minor As Long
    Dim FileName As String
    Dim refName As String
    
    FileName = Dir$(obj_path & "references.csv")
    If Len(FileName) = 0 Then
        ImportReferences = False
        Exit Function
    End If
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set InFile = FSO.OpenTextFile(obj_path & FileName, iomode:=ForReading, create:=False, Format:=TristateFalse)
    
On Error GoTo failed_guid
    Do Until InFile.AtEndOfStream
        line = InFile.ReadLine
        item = Split(line, ",")
        If UBound(item) = 2 Then 'a ref with a guid
          GUID = Trim$(item(0))
          Major = CLng(item(1))
          Minor = CLng(item(2))
          Application.References.AddFromGuid GUID, Major, Minor
        Else
          refName = Trim$(item(0))
          Application.References.AddFromFile refName
        End If
go_on:
    Loop
On Error GoTo 0
    InFile.Close
    Set InFile = Nothing
    Set FSO = Nothing
    ImportReferences = True
    Exit Function
    
failed_guid:
    If Err.Number = 32813 Then
        'The reference is already present in the access project - so we can ignore the error
        Resume Next
    Else
        MsgBox "Failed to register " & GUID, , "Error: " & Err.Number
        'Do we really want to carry on the import with missing references??? - Surely this is fatal
        Resume go_on
    End If
    
End Function

' Export References to a CSV
Public Sub ExportReferences(ByVal obj_path As String)
    Dim FSO As Object
    Dim OutFile As Object
    Dim line As String
    Dim ref As Reference

    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set OutFile = FSO.CreateTextFile(obj_path & "references.csv", overwrite:=True, Unicode:=False)
    For Each ref In Application.References
        If ref.GUID <> vbNullString Then ' references of types mdb,accdb,mde etc don't have a GUID
            If Not ref.BuiltIn Then
                line = ref.GUID & "," & CStr(ref.Major) & "," & CStr(ref.Minor)
                OutFile.WriteLine line
            End If
        Else
            line = ref.FullPath
            OutFile.WriteLine line
        End If
    Next
    OutFile.Close
End Sub



Public Sub ExportRelation(ByVal rel As DAO.Relation, ByVal filePath As String)
    Dim FSO As Object
    Dim OutFile As Object
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set OutFile = FSO.CreateTextFile(filePath, overwrite:=True, Unicode:=False)

    OutFile.WriteLine rel.Attributes 'RelationAttributeEnum
    OutFile.WriteLine rel.name
    OutFile.WriteLine rel.table
    OutFile.WriteLine rel.foreignTable
    
    Dim f As DAO.Field
    For Each f In rel.Fields
        OutFile.WriteLine "Field = Begin"
        OutFile.WriteLine f.name
        OutFile.WriteLine f.ForeignName
        OutFile.WriteLine "End"
    Next
    
    OutFile.Close

End Sub

Public Sub ImportRelation(ByVal filePath As String)
    Dim FSO As Object
    Dim InFile As Object
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set InFile = FSO.OpenTextFile(filePath, iomode:=ForReading, create:=False, Format:=TristateFalse)
    Dim rel As DAO.Relation
    Set rel = New DAO.Relation
    
    rel.Attributes = InFile.ReadLine
    rel.name = InFile.ReadLine
    rel.table = InFile.ReadLine
    rel.foreignTable = InFile.ReadLine
    
    Dim f As DAO.Field
    Do Until InFile.AtEndOfStream
        If "Field = Begin" = InFile.ReadLine Then
            Set f = New DAO.Field
            f.name = InFile.ReadLine
            f.ForeignName = InFile.ReadLine
            If "End" <> InFile.ReadLine Then
                Set f = Nothing
                Err.Raise 40000, "ImportRelation", "Missing 'End' for a 'Begin' in " & filePath
            End If
            rel.Fields.Append f
        End If
    Loop
    
    InFile.Close
    
    CurrentDb.Relations.Append rel

End Sub



'Exports print vars for reports
Public Sub ExportPrintVars(ByVal obj_name As String, ByVal filePath As String)
  DoEvents
  Dim FSO As Object
  Set FSO = CreateObject("Scripting.FileSystemObject")
  
  Dim DevModeString As str_DEVMODE
  Dim DevModeExtra As String
  Dim DM As type_DEVMODE
  Dim rpt As Report
  
  'report must be open to access Report object
  'report must be opened in design view to save changes to the print vars
   DoCmd.OpenReport obj_name, acViewDesign
   Set rpt = Reports(obj_name)
  
  
  'read print vars into struct
  If Not IsNull(rpt.PrtDevMode) Then
    DevModeExtra = rpt.PrtDevMode
    DevModeString.RGB = DevModeExtra
    LSet DM = DevModeString
  Else
    Set rpt = Nothing
    DoCmd.Close acReport, obj_name, acSaveNo
    Debug.Print "Warning: PrtDevMode is null"
    Exit Sub
  End If
  
  Dim OutFile As Object
  Set OutFile = FSO.CreateTextFile(filePath, overwrite:=True, Unicode:=False)
  
  'print out print var values
  OutFile.WriteLine DM.intOrientation
  OutFile.WriteLine DM.intPaperSize
  OutFile.WriteLine DM.intPaperLength
  OutFile.WriteLine DM.intPaperWidth
  OutFile.WriteLine DM.intScale
  OutFile.Close
  
  Set rpt = Nothing
  
  DoCmd.Close acReport, obj_name, acSaveYes
End Sub

Public Sub ImportPrintVars(ByVal obj_name As String, ByVal filePath As String)
  
  Dim FSO As Object
  Set FSO = CreateObject("Scripting.FileSystemObject")
  
  Dim DevModeString As str_DEVMODE
  Dim DevModeExtra As String
  
  Dim DM As type_DEVMODE
  Dim rpt As Report
  'report must be open to access Report object
  'report must be opened in design view to save changes to the print vars
  
  DoCmd.OpenReport obj_name, acViewDesign
  
  Set rpt = Reports(obj_name)
  
  'read print vars into struct
  If Not IsNull(rpt.PrtDevMode) Then
    DevModeExtra = rpt.PrtDevMode
    DevModeString.RGB = DevModeExtra
    LSet DM = DevModeString
  Else
    Set rpt = Nothing
    DoCmd.Close acReport, obj_name, acSaveNo
    Debug.Print "Warning: PrtDevMode is null"
    Exit Sub
  End If
  
  Dim InFile As Object
  Set InFile = FSO.OpenTextFile(filePath, iomode:=ForReading, create:=False, Format:=TristateFalse)
  
  'print out print var values
  DM.intOrientation = InFile.ReadLine
  DM.intPaperSize = InFile.ReadLine
  DM.intPaperLength = InFile.ReadLine
  DM.intPaperWidth = InFile.ReadLine
  DM.intScale = InFile.ReadLine
  InFile.Close
   
  'write print vars back into report
  LSet DevModeString = DM
  Mid(DevModeExtra, 1, 94) = DevModeString.RGB
  rpt.PrtDevMode = DevModeExtra
  
  Set rpt = Nothing
  
  DoCmd.Close acReport, obj_name, acSaveYes
End Sub



Public Sub ExportLinkedTable(ByVal tbl_name As String, ByVal obj_path As String)
    On Error GoTo Err_LinkedTable
    
    Dim tempFilePath As String
    
    tempFilePath = TempFile()
    
    Dim FSO As Object
    Dim OutFile As Object

    Set FSO = CreateObject("Scripting.FileSystemObject")
    ' open file for writing with Create=True, Unicode=True (USC-2 Little Endian format)
    MkDirIfNotExist obj_path
    
    Set OutFile = FSO.CreateTextFile(tempFilePath, overwrite:=True, Unicode:=True)
    
    OutFile.Write CurrentDb.TableDefs(tbl_name).name
    OutFile.Write vbCrLf
    
    If InStr(1, CurrentDb.TableDefs(tbl_name).connect, "DATABASE=" & CurrentProject.Path) Then
        'change to relatave path
        Dim connect() As String
        connect = Split(CurrentDb.TableDefs(tbl_name).connect, CurrentProject.Path)
        OutFile.Write connect(0) & "." & connect(1)
    Else
        OutFile.Write CurrentDb.TableDefs(tbl_name).connect
    End If
    
    OutFile.Write vbCrLf
    OutFile.Write CurrentDb.TableDefs(tbl_name).SourceTableName
    OutFile.Write vbCrLf
    
    Dim db As DAO.Database
    Set db = CurrentDb
    Dim td As DAO.TableDef
    Set td = db.TableDefs(tbl_name)
    Dim idx As DAO.index
    
    For Each idx In td.Indexes
        If idx.Primary Then
            OutFile.Write Right$(idx.Fields, Len(idx.Fields) - 1)
            OutFile.Write vbCrLf
        End If

    Next
    
Err_LinkedTable_Fin:
    On Error Resume Next
    OutFile.Close
    'save files as .odbc
    ConvertUcs2Utf8 tempFilePath, obj_path & tbl_name & ".LNKD"
    
    Exit Sub
    
Err_LinkedTable:
    OutFile.Close
    MsgBox Err.Description, vbCritical, "ERROR: EXPORT LINKED TABLE"
    Resume Err_LinkedTable_Fin
End Sub

' This requires Microsoft ADO Ext. 2.x for DLL and Security
' See reference: https://social.msdn.microsoft.com/Forums/office/en-US/883087ba-2c25-4571-bd3c-706061466a11/how-can-i-programmatically-access-scale-property-of-a-decimal-data-type-field?forum=accessdev
Public Function formatDecimal(ByVal tableName As String, ByVal fieldName As String) As String

    Dim db        As DAO.Database
    Dim f         As DAO.Field
    
    Set db = CurrentDb
    Set f = db.TableDefs(tableName).Fields(fieldName)
    
    formatDecimal = "(" & f.CollatingOrder & ", " & f.CollatingOrder - f.Size + 1 & ")"

    Set db = Nothing
    Set f = Nothing

End Function

' Save a Table Definition as SQL statement
Public Sub ExportTableDef(db As DAO.Database, td As DAO.TableDef, ByVal tableName As String, _
                          ByVal directory As String)
    Dim FileName As String
    FileName = directory & tableName & ".sql"
    Dim sql As String
    Dim fieldAttributeSql As String
    Dim idx As DAO.index
    Dim fi As DAO.Field
    Dim FSO As Object
    Dim OutFile As Object
    Dim ff As Object
    'Debug.Print tableName
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set OutFile = FSO.CreateTextFile(FileName, overwrite:=True, Unicode:=False)
    sql = "CREATE TABLE " & strName(tableName) & " (" & vbCrLf
    For Each fi In td.Fields
        sql = sql & "  " & strName(fi.name) & " "
        If (fi.Attributes And dbAutoIncrField) Then
            sql = sql & "AUTOINCREMENT"
        Else
            sql = sql & strType(fi.Type) & " "
        End If
        Select Case fi.Type
            Case dbText, dbVarBinary
                sql = sql & "(" & fi.Size & ")"
            Case dbDecimal
                sql = sql & formatDecimal(tableName, fi.name)
            Case Else
        End Select
        For Each idx In td.Indexes
            fieldAttributeSql = vbNullString
            If idx.Fields.Count = 1 And idx.Fields(0).name = fi.name Then
                If idx.Primary Then fieldAttributeSql = fieldAttributeSql & " PRIMARY KEY "
                If idx.Unique Then fieldAttributeSql = fieldAttributeSql & " UNIQUE "
                If idx.Required Then fieldAttributeSql = fieldAttributeSql & " NOT NULL "
                If idx.Foreign Then
                    Set ff = idx.Fields
                    fieldAttributeSql = fieldAttributeSql & formatReferences(db, ff, tableName)
                End If
                If Len(fieldAttributeSql) > 0 Then fieldAttributeSql = " CONSTRAINT " & strName(idx.name) & fieldAttributeSql
            End If
            sql = sql & fieldAttributeSql
        Next
        sql = sql & "," & vbCrLf
    Next
    sql = Left$(sql, Len(sql) - 3) ' strip off last comma and crlf
    
    Dim constraintSql As String
    For Each idx In td.Indexes
        If idx.Fields.Count > 1 Then
            If Len(constraintSql) = 0 Then constraintSql = constraintSql & " CONSTRAINT "
            If idx.Primary Then constraintSql = constraintSql & formatConstraint("PRIMARY KEY", idx)
            If Not idx.Foreign Then
                If Len(constraintSql) > 0 Then
                    sql = sql & "," & vbCrLf & "  " & constraintSql
                    sql = sql & formatReferences(db, idx.Fields, tableName)
                End If
            End If
        End If
    Next
    sql = sql & vbCrLf & ")"

    'Debug.Print sql
    OutFile.WriteLine sql
    
    OutFile.Close
    
    'exort Data Macros
    ExportDataMacros tableName, directory
    
End Sub

Private Function formatReferences(db As DAO.Database, ff As Object, _
                                  ByVal tableName As String) As String

    Dim rel As DAO.Relation
    Dim sql As String
    Dim f As DAO.Field
    
    For Each rel In db.Relations
        If (rel.foreignTable = tableName) Then
         If FieldsIdentical(ff, rel.Fields) Then
          sql = " REFERENCES "
          sql = sql & strName(rel.table) & " ("
          For Each f In rel.Fields
            sql = sql & strName(f.name) & ","
          Next
          sql = Left$(sql, Len(sql) - 1) & ")"
          If rel.Attributes And dbRelationUpdateCascade Then
            sql = sql + " ON UPDATE CASCADE "
          End If
          If rel.Attributes And dbRelationDeleteCascade Then
            sql = sql + " ON DELETE CASCADE "
          End If
          Exit For
         End If
        End If
    Next
    
    formatReferences = sql
End Function

Private Function formatConstraint(ByVal keyw As String, ByVal idx As DAO.index) As String
    Dim sql As String
    Dim fi As DAO.Field
    
    sql = strName(idx.name) & " " & keyw & " ("
    For Each fi In idx.Fields
        sql = sql & strName(fi.name) & ", "
    Next
    sql = Left$(sql, Len(sql) - 2) & ")" 'strip off last comma and close brackets
    
    'return value
    formatConstraint = sql
End Function

Private Function strName(ByVal s As String) As String
    strName = "[" & s & "]"
End Function

Private Function strType(ByVal i As Integer) As String
    Select Case i
    Case dbLongBinary
        strType = "LONGBINARY"
    Case dbBinary
        strType = "BINARY"
    Case dbBoolean
        strType = "BIT"
    Case dbAutoIncrField
        strType = "COUNTER"
    Case dbCurrency
        strType = "CURRENCY"
    Case dbDate, dbTime
        strType = "DATETIME"
    Case dbGUID
        strType = "GUID"
    Case dbMemo
        strType = "LONGTEXT"
    Case dbDouble
        strType = "DOUBLE"
    Case dbSingle
        strType = "SINGLE"
    Case dbByte
        strType = "BYTE"
    Case dbInteger
        strType = "SHORT"
    Case dbLong
        strType = "LONG"
    Case dbNumeric
        strType = "NUMERIC"
    Case dbText
        strType = "VARCHAR"
    Case dbDecimal
        strType = "DECIMAL"
    Case Else
        strType = "VARCHAR"
    End Select
End Function

Private Function FieldsIdentical(ff As Object, gg As Object) As Boolean
    Dim f As DAO.Field
    If ff.Count <> gg.Count Then
        FieldsIdentical = False
        Exit Function
    End If
    For Each f In ff
        If Not FieldInFields(f, gg) Then
        FieldsIdentical = False
        Exit Function
        End If
    Next
    
    FieldsIdentical = True
End Function

Private Function FieldInFields(fi As DAO.Field, ff As DAO.Fields) As Boolean
    Dim f As DAO.Field
    For Each f In ff
        If f.name = fi.name Then
            FieldInFields = True
            Exit Function
        End If
    Next
    
    FieldInFields = False
End Function

' Determine if a table or exists.
' based on sample code of support.microsoftcom
' ARGUMENTS:
'    TName: The name of a table or query.
'
' RETURNS: True (it exists) or False (it does not exist).
Private Function TableExists(ByVal TName As String) As Boolean
    Dim db As DAO.Database
    Dim Found As Boolean
    Dim Test As String
    
    Const NAME_NOT_IN_COLLECTION As Integer = 3265
    
     ' Assume the table or query does not exist.
    Found = False
    Set db = CurrentDb()
    
     ' Trap for any errors.
    On Error Resume Next
     
     ' See if the name is in the Tables collection.
    Test = db.TableDefs(TName).name
    If Err.Number <> NAME_NOT_IN_COLLECTION Then Found = True
    
    ' Reset the error variable.
    Err = 0
    
    TableExists = Found
End Function

' Build SQL to export `tbl_name` sorted by each field from first to last
Private Function TableExportSql(ByVal tbl_name As String) As String
    Dim rs As Object ' DAO.Recordset
    Dim fieldObj As Object ' DAO.Field
    Dim sb() As String, Count As Integer

    Set rs = CurrentDb.OpenRecordset(tbl_name)
    
    sb = Sb_Init()
    Sb_Append sb, "SELECT "
    
    Count = 0
    For Each fieldObj In rs.Fields
        If Count > 0 Then Sb_Append sb, ", "
        Sb_Append sb, "[" & fieldObj.name & "]"
        Count = Count + 1
    Next
    
    Sb_Append sb, " FROM [" & tbl_name & "] ORDER BY "
    
    Count = 0
    For Each fieldObj In rs.Fields
        DoEvents
        If Count > 0 Then Sb_Append sb, ", "
        Sb_Append sb, "[" & fieldObj.name & "]"
        Count = Count + 1
    Next

    TableExportSql = Sb_Get(sb)
End Function

' Export the lookup table `tblName` to `source\tables`.
Public Sub ExportTableData(ByVal tbl_name As String, ByVal obj_path As String)
    Dim FSO As Object
    Dim OutFile As Object
    Dim rs As DAO.Recordset ' DAO.Recordset
    Dim fieldObj As Object ' DAO.Field
    Dim c As Long, Value As Variant
    
    ' Checks first
    If Not TableExists(tbl_name) Then
        Debug.Print "Error: Table " & tbl_name & " missing"
        Exit Sub
    End If
    
    Set rs = CurrentDb.OpenRecordset(TableExportSql(tbl_name))
    If rs.RecordCount = 0 Then
        'why is this an error? Debug.Print "Error: Table " & tbl_name & "  empty"
        rs.Close
        Exit Sub
    End If

    Set FSO = CreateObject("Scripting.FileSystemObject")
    ' open file for writing with Create=True, Unicode=True (USC-2 Little Endian format)
    MkDirIfNotExist obj_path
    Dim tempFileName As String
    tempFileName = TempFile()

    Set OutFile = FSO.CreateTextFile(tempFileName, overwrite:=True, Unicode:=True)

    c = 0
    For Each fieldObj In rs.Fields
        If c <> 0 Then OutFile.Write vbTab
        c = c + 1
        OutFile.Write fieldObj.name
    Next
    OutFile.Write vbCrLf

    rs.MoveFirst
    Do Until rs.EOF
        c = 0
        For Each fieldObj In rs.Fields
            DoEvents
            If c <> 0 Then OutFile.Write vbTab
            c = c + 1
            Value = rs(fieldObj.name)
            If IsNull(Value) Then
                Value = vbNullString
            Else
                Value = Replace(Value, "\", "\\")
                Value = Replace(Value, vbCrLf, "\n")
                Value = Replace(Value, vbCr, "\n")
                Value = Replace(Value, vbLf, "\n")
                Value = Replace(Value, vbTab, "\t")
            End If
            OutFile.Write Value
        Next
        OutFile.Write vbCrLf
        rs.MoveNext
    Loop
    rs.Close
    OutFile.Close

    ConvertUcs2Utf8 tempFileName, obj_path & tbl_name & ".txt"
    FSO.DeleteFile tempFileName
End Sub

' Kill Table if Exists
Private Sub KillTable(ByVal tblName As String, db As Object)
    If TableExists(tblName) Then
        db.Execute "DROP TABLE [" & tblName & "]"
    End If
End Sub

Public Sub ImportLinkedTable(ByVal tblName As String, ByRef obj_path As String)
    Dim db As DAO.Database
    Dim FSO As Object
    Dim InFile As Object
    
    Set db = CurrentDb
    Set FSO = CreateObject("Scripting.FileSystemObject")
    
    Dim tempFilePath As String
    tempFilePath = TempFile()
    
    ConvertUtf8Ucs2 obj_path & tblName & ".LNKD", tempFilePath
    ' open file for reading with Create=False, Unicode=True (USC-2 Little Endian format)
    Set InFile = FSO.OpenTextFile(tempFilePath, iomode:=ForReading, create:=False, Format:=TristateTrue)
    
    On Error GoTo err_notable:
    DoCmd.DeleteObject acTable, tblName
    
    GoTo err_notable_fin
    
err_notable:
    Err.Clear
    Resume err_notable_fin
    
err_notable_fin:
    On Error GoTo Err_CreateLinkedTable:
    
    Dim td As DAO.TableDef
    Set td = db.CreateTableDef(InFile.ReadLine())
    
    Dim connect As String
    connect = InFile.ReadLine()
    If InStr(1, connect, "DATABASE=.\") Then 'replace relative path with literal path
        connect = Replace(connect, "DATABASE=.\", "DATABASE=" & CurrentProject.Path & "\")
    End If
    td.connect = connect
    
    td.SourceTableName = InFile.ReadLine()
    db.TableDefs.Append td
    
    GoTo Err_CreateLinkedTable_Fin
    
Err_CreateLinkedTable:
    MsgBox Err.Description, vbCritical, "ERROR: IMPORT LINKED TABLE"
    Resume Err_CreateLinkedTable_Fin
    
Err_CreateLinkedTable_Fin:
    'this will throw errors if a primary key already exists or the table is linked to an access database table
    'will also error out if no pk is present
    On Error GoTo Err_LinkPK_Fin:
    
    Dim Fields As String
    Fields = InFile.ReadLine()
    Dim Field As Variant
    Dim sql As String
    sql = "CREATE INDEX __uniqueindex ON " & td.name & " ("
    
    For Each Field In Split(Fields, ";+")
        sql = sql & "[" & Field & "]" & ","
    Next
    'remove extraneous comma
    sql = Left$(sql, Len(sql) - 1)
    
    sql = sql & ") WITH PRIMARY"
    CurrentDb.Execute sql
    
Err_LinkPK_Fin:
    On Error Resume Next
    InFile.Close
    
End Sub

' Import Table Definition
Public Sub ImportTableDef(ByVal tblName As String, ByVal directory As String)
    Dim filePath As String
    filePath = directory & tblName & ".sql"
    Dim db As Object ' DAO.Database
    Dim FSO As Object
    Dim InFile As Object
    Dim buf As String
    Dim p As Integer
    Dim p1 As Integer
    Dim strMsg As String
    Dim s As Variant
    Dim n As Integer
    Dim i As Integer
    Dim j As Integer
    Dim tempFileName As String
    tempFileName = TempFile()

    n = -1
    Set FSO = CreateObject("Scripting.FileSystemObject")
    ConvertUtf8Ucs2 filePath, tempFileName
    ' open file for reading with Create=False, Unicode=True (USC-2 Little Endian format)
    Set InFile = FSO.OpenTextFile(tempFileName, iomode:=ForReading, create:=False, Format:=TristateTrue)
    Set db = CurrentDb
    KillTable tblName, db
    buf = InFile.ReadLine()
    Do Until InFile.AtEndOfStream
        buf = buf & InFile.ReadLine()
    Loop
    
    ' The following block is needed because "on update" actions may cause problems
    For Each s In Split("UPDATE|DELETE", "|")
      p = InStr(buf, "ON " & s & " CASCADE")
      Do While p > 0
          n = n + 1
          ReDim Preserve K(n)
          K(n).table = tblName
          K(n).isUpdate = (s = "UPDATE")
          
          buf = Left$(buf, p - 1) & Mid$(buf, p + 18)
          p = InStrRev(buf, "REFERENCES", p)
          p1 = InStr(p, buf, "(")
          K(n).foreignFields = Split(SubString(p1, buf, "(", ")"), ",")
          K(n).foreignTable = Trim$(Mid$(buf, p + 10, p1 - p - 10))
          p = InStrRev(buf, "CONSTRAINT", p1)
          p1 = InStrRev(buf, "FOREIGN KEY", p1)
          If (p1 > 0) And (p > 0) And (p1 > p) Then
          ' multifield index
              K(n).refFields = Split(SubString(p1, buf, "(", ")"), ",")
          ElseIf p1 = 0 Then
          ' single field
          End If
          p = InStr(p, "ON " & s & " CASCADE", buf)
      Loop
    Next
    On Error Resume Next
    For i = 0 To n
        strMsg = K(i).table & " to " & K(i).foreignTable
        strMsg = strMsg & "(  "
        For j = 0 To UBound(K(i).refFields)
            strMsg = strMsg & K(i).refFields(j) & ", "
        Next j
        strMsg = Left$(strMsg, Len(strMsg) - 2) & ") to ("
        For j = 0 To UBound(K(i).foreignFields)
            strMsg = strMsg & K(i).foreignFields(j) & ", "
        Next j
        strMsg = Left$(strMsg, Len(strMsg) - 2) & ") Check "
        If K(i).isUpdate Then
            strMsg = strMsg & " on update cascade " & vbCrLf
        Else
            strMsg = strMsg & " on delete cascade " & vbCrLf
        End If
    Next
    On Error GoTo 0
    db.Execute buf
    InFile.Close
    If Len(strMsg) > 0 Then MsgBox strMsg, vbOKOnly, "Correct manually"
        
End Sub

' Import the lookup table `tblName` from `source\tables`.
Public Sub ImportTableData(ByVal tblName As String, ByVal obj_path As String)
    Dim db As Object ' DAO.Database
    Dim rs As Object ' DAO.Recordset
    Dim fieldObj As Object ' DAO.Field
    Dim FSO As Object
    Dim InFile As Object
    Dim c As Long, buf As String, Values() As String, Value As Variant

    Set FSO = CreateObject("Scripting.FileSystemObject")
    
    Dim tempFileName As String
    tempFileName = TempFile()
    ConvertUtf8Ucs2 obj_path & tblName & ".txt", tempFileName
    ' open file for reading with Create=False, Unicode=True (USC-2 Little Endian format)
    Set InFile = FSO.OpenTextFile(tempFileName, iomode:=ForReading, create:=False, Format:=TristateTrue)
    Set db = CurrentDb

    db.Execute "DELETE FROM [" & tblName & "]"
    Set rs = db.OpenRecordset(tblName)
    buf = InFile.ReadLine()
    Do Until InFile.AtEndOfStream
        buf = InFile.ReadLine()
        If Len(Trim$(buf)) > 0 Then
            Values = Split(buf, vbTab)
            c = 0
            rs.AddNew
            For Each fieldObj In rs.Fields
                DoEvents
                Value = Values(c)
                If Len(Value) = 0 Then
                    Value = Null
                Else
                    Value = Replace(Value, "\t", vbTab)
                    Value = Replace(Value, "\n", vbCrLf)
                    Value = Replace(Value, "\\", "\")
                End If
                rs(fieldObj.name) = Value
                c = c + 1
            Next
            rs.Update
        End If
    Loop

    rs.Close
    InFile.Close
    FSO.DeleteFile tempFileName
End Sub


'--------------------
' String Functions: String Builder,String Padding (right only), Substrings
'--------------------

' String builder: Init
Public Function Sb_Init() As String()
    Dim x(-1 To -1) As String
    Sb_Init = x
End Function

' String builder: Clear
Public Sub Sb_Clear(ByRef sb() As String)
    ReDim Sb_Init(-1 To -1)
End Sub

' String builder: Append
Public Sub Sb_Append(ByRef sb() As String, ByVal Value As String)
    If LBound(sb) = -1 Then
        ReDim sb(0 To 0)
    Else
        ReDim Preserve sb(0 To UBound(sb) + 1)
    End If
    sb(UBound(sb)) = Value
End Sub

' String builder: Get value
Public Function Sb_Get(ByRef sb() As String) As String
    Sb_Get = Join(sb, "")
End Function


' Pad a string on the right to make it `count` characters long.
Public Function PadRight(ByVal Value As String, ByVal Count As Integer) As String
    PadRight = Value
    If Len(Value) < Count Then
        PadRight = PadRight & Space$(Count - Len(Value))
    End If
End Function

' returns substring between e.g. "(" and ")", internal brackets ar skippped
Public Function SubString(ByVal p As Integer, ByVal s As String, ByVal startsWith As String, _
                          ByVal endsWith As String) As String
    Dim start As Integer
    Dim cursor As Integer
    Dim p1 As Integer
    Dim p2 As Integer
    Dim level As Integer
    
    start = InStr(p, s, startsWith)
    level = 1
    p1 = InStr(start + 1, s, startsWith)
    p2 = InStr(start + 1, s, endsWith)
    
    Do While level > 0
        If p1 > p2 And p2 > 0 Then
            cursor = p2
            level = level - 1
        ElseIf p2 > p1 And p1 > 0 Then
            cursor = p1
            level = level + 1
        ElseIf p2 > 0 And p1 = 0 Then
            cursor = p2
            level = level - 1
        ElseIf p1 > 0 And p1 = 0 Then
            cursor = p1
            level = level + 1
        ElseIf p1 = 0 And p2 = 0 Then
            SubString = vbNullString
            Exit Function
        End If
        p1 = InStr(cursor + 1, s, startsWith)
        p2 = InStr(cursor + 1, s, endsWith)
    Loop
    
    SubString = Mid$(s, start + 1, cursor - start - 1)
End Function


' --------------------------------
' Basic functions missing from VB 6: buffered file read/write, string builder, encoding check & conversion
' --------------------------------

' Open a binary file for reading (mode = 'r') or writing (mode = 'w').
Private Function BinOpen(ByVal file_path As String, ByVal mode As String) As BinFile

    Dim f As BinFile

   On Error GoTo BinOpen_Error

    f.file_num = FreeFile
    f.mode = LCase$(mode)
    If f.mode = "r" Then
        Open file_path For Binary Access Read As f.file_num
        f.file_len = LOF(f.file_num)
        f.file_pos = 0
        If f.file_len > &H4000 Then
            f.buffer = String$(&H4000, " ")
            f.buffer_len = &H4000
        Else
            f.buffer = String$(f.file_len, " ")
            f.buffer_len = f.file_len
        End If
        f.buffer_pos = 0
        Get f.file_num, f.file_pos + 1, f.buffer
    Else
        DelIfExist file_path
        Open file_path For Binary Access Write As f.file_num
        f.file_len = 0
        f.file_pos = 0
        f.buffer = String$(&H4000, " ")
        f.buffer_len = 0
        f.buffer_pos = 0
    End If

    BinOpen = f

   On Error GoTo 0
   Exit Function

BinOpen_Error:

   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BinOpen of Module GITMain"
End Function

' Buffered read one byte at a time from a binary file.
Private Function BinRead(ByRef f As BinFile) As Integer
    If f.at_eof = True Then
        BinRead = 0
        Exit Function
    End If

    BinRead = Asc(Mid$(f.buffer, f.buffer_pos + 1, 1))

    f.buffer_pos = f.buffer_pos + 1
    If f.buffer_pos >= f.buffer_len Then
        f.file_pos = f.file_pos + &H4000
        If f.file_pos >= f.file_len Then
            f.at_eof = True
            Exit Function
        End If
        If f.file_len - f.file_pos > &H4000 Then
            f.buffer_len = &H4000
        Else
            f.buffer_len = f.file_len - f.file_pos
            f.buffer = String$(f.buffer_len, " ")
        End If
        f.buffer_pos = 0
        Get f.file_num, f.file_pos + 1, f.buffer
    End If
End Function

' Buffered write one byte at a time from a binary file.
Private Sub BinWrite(ByRef f As BinFile, b As Integer)
    Mid(f.buffer, f.buffer_pos + 1, 1) = Chr$(b)
    f.buffer_pos = f.buffer_pos + 1
    If f.buffer_pos >= &H4000 Then
        Put f.file_num, , f.buffer
        f.buffer_pos = 0
    End If
End Sub

' Close binary file.
Private Sub BinClose(ByRef f As BinFile)
    If f.mode = "w" And f.buffer_pos > 0 Then
        f.buffer = Left$(f.buffer, f.buffer_pos)
        Put f.file_num, , f.buffer
    End If
    Close f.file_num
End Sub


' Binary convert a UCS2-little-endian encoded file to UTF-8.
Public Sub ConvertUcs2Utf8(ByVal Source As String, ByVal dest As String)
    Dim f_in As BinFile
    Dim f_out As BinFile
    Dim in_low As Integer
    Dim in_high As Integer

    f_in = BinOpen(Source, "r")
    f_out = BinOpen(dest, "w")

    Do While Not f_in.at_eof
        in_low = BinRead(f_in)
        in_high = BinRead(f_in)
        If in_high = 0 And in_low < &H80 Then
            ' U+0000 - U+007F   0LLLLLLL
            BinWrite f_out, in_low
        ElseIf in_high < &H8 Then
            ' U+0080 - U+07FF   110HHHLL 10LLLLLL
            BinWrite f_out, &HC0 + ((in_high And &H7) * &H4) + ((in_low And &HC0) / &H40)
            BinWrite f_out, &H80 + (in_low And &H3F)
        Else
            ' U+0800 - U+FFFF   1110HHHH 10HHHHLL 10LLLLLL
            BinWrite f_out, &HE0 + ((in_high And &HF0) / &H10)
            BinWrite f_out, &H80 + ((in_high And &HF) * &H4) + ((in_low And &HC0) / &H40)
            BinWrite f_out, &H80 + (in_low And &H3F)
        End If
    Loop

    BinClose f_in
    BinClose f_out
End Sub

' Binary convert a UTF-8 encoded file to UCS2-little-endian.
Public Sub ConvertUtf8Ucs2(ByVal Source As String, ByVal dest As String)
    Dim f_in As BinFile
    Dim f_out As BinFile
    Dim in_1 As Integer
    Dim in_2 As Integer
    Dim in_3 As Integer

    f_in = BinOpen(Source, "r")
    f_out = BinOpen(dest, "w")

    Do While Not f_in.at_eof
        in_1 = BinRead(f_in)
        If (in_1 And &H80) = 0 Then
            ' U+0000 - U+007F   0LLLLLLL
            BinWrite f_out, in_1
            BinWrite f_out, 0
        ElseIf (in_1 And &HE0) = &HC0 Then
            ' U+0080 - U+07FF   110HHHLL 10LLLLLL
            in_2 = BinRead(f_in)
            BinWrite f_out, ((in_1 And &H3) * &H40) + (in_2 And &H3F)
            BinWrite f_out, (in_1 And &H1C) / &H4
        Else
            ' U+0800 - U+FFFF   1110HHHH 10HHHHLL 10LLLLLL
            in_2 = BinRead(f_in)
            in_3 = BinRead(f_in)
            BinWrite f_out, ((in_2 And &H3) * &H40) + (in_3 And &H3F)
            BinWrite f_out, ((in_1 And &HF) * &H10) + ((in_2 And &H3C) / &H4)
        End If
    Loop

    BinClose f_in
    BinClose f_out
End Sub

' Determine if this database imports/exports code as UCS-2-LE. (Older file
' formats cause exported objects to use a Windows 8-bit character set.)
Public Function UsingUcs2() As Boolean
    Dim obj_name As String
    Dim obj_type As Variant
    Dim FN As Integer
    Dim bytes As String
    Dim obj_type_split() As String
    Dim obj_type_name As String
    Dim obj_type_num As Integer
    
    If CurrentDb.QueryDefs.Count > 0 Then
        obj_type_num = acQuery
        obj_name = CurrentDb.QueryDefs(0).name
    Else
        For Each obj_type In Split( _
            "Forms|" & acForm & "," & _
            "Reports|" & acReport & "," & _
            "Scripts|" & acMacro & "," & _
            "Modules|" & acModule _
        )
            DoEvents
            obj_type_split = Split(obj_type, "|")
            obj_type_name = obj_type_split(0)
            obj_type_num = Val(obj_type_split(1))
            If CurrentDb.Containers(obj_type_name).Documents.Count > 0 Then
                obj_name = CurrentDb.Containers(obj_type_name).Documents(0).name
                Exit For
            End If
        Next
    End If

    If obj_name = vbNullString Then
        ' No objects found that can be used to test UCS2 versus UTF-8
        UsingUcs2 = True
        Exit Function
    End If

    Dim tempFileName As String
    tempFileName = TempFile()
    
    Application.SaveAsText obj_type_num, obj_name, tempFileName
    FN = FreeFile
    Open tempFileName For Binary Access Read As FN
    bytes = "  "
    Get FN, 1, bytes
    If Asc(Mid$(bytes, 1, 1)) = &HFF And Asc(Mid$(bytes, 2, 1)) = &HFE Then
        UsingUcs2 = True
    Else
        UsingUcs2 = False
    End If
    Close FN
    
    Dim FSO As Object
    Set FSO = CreateObject("Scripting.FileSystemObject")
    FSO.DeleteFile (tempFileName)
End Function

' Generate Random / Unique tempprary file name.
Public Function TempFile(Optional ByVal sPrefix As String = "VBA") As String
    Dim sTmpPath As String * 512
    Dim sTmpName As String * 576
    Dim nRet As Long
    Dim sFileName As String
    
    nRet = getTempPath(512, sTmpPath)
    nRet = getTempFileName(sTmpPath, sPrefix, 0, sTmpName)
    If nRet <> 0 Then sFileName = Left$(sTmpName, InStr(sTmpName, vbNullChar) - 1)
    TempFile = sFileName
End Function



Public Sub ExportDataMacros(ByVal tableName As String, ByVal directory As String)
    On Error GoTo Err_export
    Dim filePath As String
    
    filePath = directory & tableName & ".xml"

    ExportObject acTableDataMacro, tableName, filePath, UsingUcs2
    FormatDataMacro filePath

    Exit Sub

Err_export:
    ' Error to export dataMacro, no contains dataMacro. Do nothing
End Sub

Public Sub ImportDataMacros(ByVal tableName As String, ByVal directory As String)
    On Error GoTo Err_import
    Dim filePath As String
    
    filePath = directory & tableName & ".xml"
    ImportObject acTableDataMacro, tableName, filePath, UsingUcs2
    
    Exit Sub
    
Err_import:
    ' Error to import dataMacro. Do nothing
End Sub

'Splits exported DataMacro XML onto multiple lines
'Allows git to find changes within lines using diff
Private Sub FormatDataMacro(ByVal filePath As String)

    Dim saveStream As Object 'ADODB.Stream

    Set saveStream = CreateObject("ADODB.Stream")
    saveStream.Charset = "utf-8"
    saveStream.Type = 2 'adTypeText
    saveStream.Open

    Dim objStream As Object 'ADODB.Stream
    Dim strData As String
    Set objStream = CreateObject("ADODB.Stream")

    objStream.Charset = "utf-8"
    objStream.Type = 2 'adTypeText
    objStream.Open
    objStream.LoadFromFile (filePath)
    
    Do While Not objStream.EOS
        strData = objStream.ReadText(-2) 'adReadLine

        Dim tag As Variant
        
        For Each tag In Split(strData, ">")
            If tag <> vbNullString Then
                saveStream.WriteText tag & ">", 1 'adWriteLine
            End If
        Next
        
    Loop
    
    objStream.Close
    saveStream.SaveToFile filePath, 2 'adSaveCreateOverWrite
    saveStream.Close

End Sub

Sub TestE()

   Dim db      As Database
   Dim r       As AccessObject
   
   Dim r2      As Document
    
   Set db = CurrentDb
   For Each r2 In db.Containers("Reports").Documents
      Debug.Print r2.name
      Dim p As Object
      For Each p In r2.Properties
         Debug.Print p.name
      Next p
      Debug.Print r2.Properties
   Next r2
   
End Sub


Public Sub Git()


   ' simply loads form GIT but first closes all files
   
   CloseFormsReports
   
   ' because frmGIT and code module can't be updated, we update them here
   Dim source_path         As String
   Dim source_ModListPath  As String
   
   source_path = SCCPath
   source_ModListPath = source_path & "ModList\"
   
   If FileChanged(acForm, "frmGit", source_path & "forms\", source_ModListPath, True) Then
      ' import the form
      'ImportObject acForm, "frmGIT", source_path & "forms\frmGIT.bas", True
   End If
   
   If FileChanged(acModule, "GITMain", source_path & "modules\", source_ModListPath, False) = True Then
      ImportObject acModule, "GITMain", source_path & "modules\GITMain.bas", False
   End If
   
      
   DoCmd.OpenForm "frmGit"
   
   
End Sub

Function TimeRound(dtDate As Date) As Date


   TimeRound = Format(dtDate, "MM/DD/YYYY HH:NN:SS AM/PM")


End Function

Function FileChanged(obj_type_num As Integer, strObjName As String, strObjPath As String, strTempPath As String, UCSCovert As Boolean) As Boolean

    Dim strArchiveF     As String
    Dim strArchiveData  As String
    
    Dim strTempF        As String
    Dim strTempData     As String
    
    strTempF = strTempPath & "compare.bas"
    strArchiveF = strObjPath & strObjName & ".bas"
    
   ' export the object to a temp file location, then compare for changes
   
    ExportObject obj_type_num, strObjName, strTempPath & "compare.bas", UCSCovert
    
    strArchiveData = MyReadFile(strArchiveF)
    strTempData = MyReadFile(strTempF)
    
   FileChanged = strArchiveData <> strTempData
   

End Function


Function MyReadFile(ByVal strFile As String) As String

   ' read in file - return as string
   
   Dim intF       As String
   
   MyReadFile = ""
   
   intF = FreeFile
   On Error Resume Next
   Open strFile For Input As #intF
   
   MyReadFile = input(LOF(intF), intF)
   
   Close intF
   
End Function


Sub GitSave()

   ' save the changes to frmGit and GitMain out to archive
   ' (they don't save due to always being running
   Dim strFolder        As String
   Dim source_path      As String   ' path to soruce folder (root)
   Dim source_pathList  As String
   
   CloseFormsReports

   source_path = SCCPath
   source_pathList = source_path & "ModList\"
   
   ExportObject acForm, "frmGIT", source_path & "forms\frmGIT.bas", True
   
   ExportObject acModule, "GITMain", source_path & "modules\GITMain.bas", False
   
   Debug.Print "git files saved"
   
End Sub

Function SCCPath() As String

   Dim strFolder     As String
   
   strFolder = CurrentProject.name
   strFolder = Split(strFolder, ".")(0)     ' get rid of extension
    ' if a "_" in name drop after
    If InStr(strFolder, "_") <> 0 Then
       strFolder = Split(strFolder, "_")(0)
    End If

    SCCPath = ""
    SCCPath = ProjectPath() & strFolder & "\"

End Function