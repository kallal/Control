Option Compare Database
Option Explicit

'********************* SQL DRIVER ********************

Public Const AppName = "MIS"

Public Const SQLDRIVER = "SQL Server"

'Public Const SQLserver = "PC-EDM-0012\KOMORI_SQLSERVER"

'Public Const SQLdatabase = "KOMORI"


Public Type TableDetail
    tableName           As String
    SourceTableName     As String
    Attributes          As Long
    IndexSQL            As String
    Description         As Variant
    strSchema           As String
End Type


Public Type VersionInfo
   FrontVersion         As String
   ServerVersion        As String
   SetupExe             As String
   ServerFolder         As String
End Type



Public gblVersionInfo       As VersionInfo          ' global version info - set at startup


Public Declare PtrSafe Sub sapiSleep Lib "kernel32" _
        Alias "Sleep" _
        (ByVal dwMilliseconds As LongPtr)

Public Function GetSQLDataBase(strConn As String) As String

   Dim s        As String

   s = Split(strConn, ";DATABASE=")(1)
   s = Split(s, ";")(0)
   
   GetSQLDataBase = s


End Function


Public Function GetSQLAPP(strConn As String) As String

   Dim s        As String

   s = Split(strConn, ";APP=")(1)
   s = Split(s, ";")(0)
   
   GetSQLAPP = s


End Function



Public Function strParseDir(strFileName As String) As String

   strParseDir = Left(strFileName, InStrRev(strFileName, "\"))
   
End Function


Public Function strParseFile(strFileName As String) As String

   ' takes a full path name and returns ONLY the file name
   ' without drive or server path name

   strParseFile = Mid(strFileName, InStrRev(strFileName, "\") + 1)
   
End Function



Function strGetDbTable(strConnectString) As String
   
   Dim intLastPos       As Integer
   Dim intPosPtr        As Integer
   
   If Len(strConnectString) = 0 Then
      strGetDbTable = ""
      Exit Function
   End If
   
   
   intPosPtr = 1
   Do
      intPosPtr = InStr(intPosPtr, strConnectString, "\")
      
      If intPosPtr = 0 Then
         Exit Do
      Else
         intPosPtr = intPosPtr + 1
         intLastPos = intPosPtr
      End If
   Loop
      
   strGetDbTable = Mid(strConnectString, intLastPos)
   

End Function


Function strBackEndPath() As String

    ' returns the path name to the back end

    Dim mytables As TableDef
    
    Dim strTempBack As String
    Dim strFullPath As String
    strFullPath = ""
    
    For Each mytables In CurrentDb.TableDefs
       If Left(mytables.connect, 10) = ";DATABASE=" Then
          strFullPath = Mid(mytables.connect, 11)
          Exit For
       End If
     Next mytables
     
     strBackEndPath = Left(strFullPath, InStrRev(strFullPath, "\"))
   
End Function


Function strBackEnd() As String

    Dim mytables As TableDef
    
    Dim strTempBack As String
    Dim strFullPath As String
    strFullPath = ""
    
    For Each mytables In CurrentDb.TableDefs
       If Left(mytables.connect, 10) = ";DATABASE=" Then
          strFullPath = Mid(mytables.connect, 11)
          Exit For
       End If
    Next mytables
    
    strBackEnd = strFullPath
     
End Function

Function strBackEndSql() As String

    Dim mytables        As TableDef
    Dim db              As DAO.Database
    
    Dim strTempBack     As String
    Dim strFullPath     As String
    strFullPath = ""
    
    Set db = CurrentDb
    
    For Each mytables In db.TableDefs
       If Left(mytables.connect, 5) = "ODBC;" Then
          strFullPath = Split(mytables.connect, "DATABASE=")(1)
          strFullPath = Split(strFullPath, ";")(0)
          Exit For
       End If
    Next mytables
    
    strBackEndSql = strFullPath
     
End Function


Public Function LinkOneTable(strTable) As Boolean

   ' link one table to a STANDARD accDB back end
   
   Dim mytable          As DAO.TableDef
   Dim strBackPart      As String
   Dim strTo            As String
   Dim db               As DAO.Database
   
   Set db = CurrentDb
   
   Set mytable = db.TableDefs(strTable)
   
   strBackPart = strGetDbTable(mytable.connect)
   
   strTo = strBackEndPath & strBackPart

   If Len(mytable.connect) > 0 Then
      If Left(mytable.connect, 10) = ";DATABASE=" Then
         mytable.connect = ";DATABASE=" & strTo
         mytable.RefreshLink
      End If
   End If

End Function

Public Function LinkOneTableSQL(strTable As String, strCon) As Boolean

   ' link ONE table to SQL back end

   Dim mytable          As DAO.TableDef
   Dim strBackPart      As String
   Dim strTo            As String
   Dim db               As DAO.Database
   
   Set db = CurrentDb
   
   Set mytable = db.TableDefs(strTable)
   mytable.connect = strCon
   mytable.RefreshLink

End Function

Public Sub AddTables()

   ' check back end after upsize and pull in links...
   '
   ' if you up-size a back end, then ALL table links
   ' are now avaiable in that back end. Use this to
   ' copy in the links (so much same as importing table links
   '
   Dim dbBackEnd              As Database
   Dim dbFrontEnd             As Database
   
   Dim tFrontTables           As DAO.TableDef
   Dim tBackTables            As DAO.TableDef
   Dim i                      As Integer
   Dim strTableName           As String
   Dim strBack                As String
   
   
   Stop         ' code only for migration - one time.
   
   strBack = "c:\datamigrate\ridesdata.mdb"
   
   Set dbFrontEnd = CurrentDb
   Set dbBackEnd = OpenDatabase(strBack)
   
   For i = 0 To dbBackEnd.TableDefs.Count - 1
      strTableName = dbBackEnd.TableDefs(i).name
      If (Left(strTableName, 4) <> "MSys") And (dbBackEnd.TableDefs(i).connect <> "") Then
         'Debug.Print strTableName
         If TableFind(dbFrontEnd, strTableName) = True Then
            CurrentDb.Execute "drop table [" & strTableName & "]"
         End If
         DoCmd.TransferDatabase acImport, "Microsoft Access", strBack, acTable, strTableName, strTableName
      End If
   Next i
      

End Sub


Public Function TableFind(db As DAO.Database, strTable As String) As Boolean

   Dim i          As Integer
   For i = 0 To db.TableDefs.Count - 1
      If strTable = db.TableDefs(i).name Then
         TableFind = True
         Exit For
      End If
   Next i
   
End Function

Public Sub RemTables()

   ' check back end for non existtant tables that are linked in front end...
   ' ...and remove
   
   Dim dbBackEnd              As Database
   Dim dbFrontEnd             As Database
   
   Dim tFrontTables           As DAO.TableDef
   Dim tBackTables            As DAO.TableDef
   Dim i                      As Integer
   Dim strTableName           As String
   
Stop

   Set dbFrontEnd = CurrentDb
   Set dbBackEnd = OpenDatabase(strBackEnd)
   
   For i = 0 To dbFrontEnd.TableDefs.Count - 1
      strTableName = dbFrontEnd(i).name
      If Left(strTableName, 4) <> "MSys" Then
         Debug.Print strTableName
         If dbFrontEnd(strTableName).connect <> "" Then
            If TableFind(dbBackEnd, strTableName) = False Then
               If MsgBox("table " & strTableName & " not found in back end, remove?", _
                  vbQuestion + vbYesNoCancel, "Add table?") = vbYes Then
                  '   add the table
                  'DoCmd.TransferDatabase acLink, "Microsoft Access", strBackEnd, acTable, strTableName, strTableName
               End If
            End If
         End If
      End If
   Next i
      

End Sub


' Sql DSN link stuff...........

Public Function SqlReLink(ServerName As String, _
                   DataBaseName As String, _
                   ToDataBaseName As String, _
                   UserID As String, _
                   USERpw As String, _
                   Optional APP As String = "AxisMIS", _
                   Optional WSID As String = "Axis", _
                   Optional LinkByDataBaseName As Boolean = False) As Boolean

   ' Inputs:   ServerName:     Name of the SQL Server server (string)
   '           DatabaseName:   Name of the database on that server (string)
   '           ToDataBaseName: Most often SAME as DatabaseName, but can be differnt (test vs production)
   '           USERID          User id
   '           USERpw          User logon id
   '           APP             Application name
   '           WSID            Work station ID
   '
   ' Based originally on some code by Doug Steele
   ' Feb 2009 - AlbertD. Kallal
   
   ' Sept 2014 - This code NOW re-links by APP name (not database name)
   
   Dim dbCurrent           As DAO.Database
   Dim tdfcurrent          As DAO.TableDef
   Dim intLoop             As Integer
   Dim strCon              As String
   Dim pBar                As New clsPbar
   Dim intTableCount       As Integer
   Dim bolCheck            As Boolean
   Dim bolLinkTest         As Boolean
   Dim qryPass             As DAO.QueryDef
   
   On Error GoTo SqlReLink_Error

   Set dbCurrent = CurrentDb

   pBar.ShowProgress
   pBar.PCaption = "Connect tables to data..please wait"
   
   pBar.Pmax = dbCurrent.TableDefs.Count
   
'             strCon = "ODBC;DRIVER={SQL Server Native Client 11.0}
   For Each tdfcurrent In dbCurrent.TableDefs
      intTableCount = intTableCount + 1
      If Len(tdfcurrent.connect) > 0 Then
         If Left$(tdfcurrent.connect, 5) = "ODBC;" Then
            ' only link if passed DataBaseName
            If LinkByDataBaseName = True Then
               bolLinkTest = GetSQLDataBase(tdfcurrent.connect) = DataBaseName
            Else
               bolLinkTest = GetSQLAPP(tdfcurrent.connect) = APP
            End If
            If bolLinkTest = True Then
                
                '*** ROGER K. - Set up WSID and APP for easier tracing
                
                
                'WSID = Environ$("computername") & " - " & getMyIP
                'WSID = "AxisMIS"
                'APP = Left(CurrentProject.Name, Len(CurrentProject.Name) - 6)
                
                
                strCon = dbCon(ServerName, ToDataBaseName, UserID, USERpw, APP, WSID)
                
                If bolCheck = False Then
                   If TestLogin(strCon) = True Then
                      bolCheck = True
                   Else
                      MsgBox "Unable to connect to data server", vbCritical, AppName
                      SqlReLink = False
                      Exit Function
                   End If
                End If
               'Debug.Print strCon
                tdfcurrent.connect = strCon
                
                pBar.TextMsg = "Connect table " & intTableCount & " of " & dbCurrent.TableDefs.Count
                pBar.IncOne
                
                tdfcurrent.RefreshLink
            End If
         End If
      End If
      pBar.IncOne
   Next tdfcurrent
   
'   ' setup pass though query (returns no records)
'   Set qryPass = CurrentDb.QueryDefs("qryPassNR")
'   qryPass.Connect = strCon
'   '
'   ' setup pass though query (returns no records)
'   Set qryPass = CurrentDb.QueryDefs("qryPassR")
'   qryPass.Connect = strCon
   '
   CurrentDb.TableDefs.Refresh
   Set qryPass = Nothing
   
   pBar.HideProgress
   
   'Debug.Print intTableCount
   
   On Error GoTo 0
   SqlReLink = True
   Exit Function

SqlReLink_Error:

   SqlReLink = False
   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in Re-link " & vbCrLf & _
          "Table link fail on = " & tdfcurrent.name & " (" & tdfcurrent.SourceTableName & ")", _
           vbCritical, "Source"
   Resume Next
   Exit Function
   
End Function

Public Function SqlReLinkScrub(ServerName As String, _
                   DataBaseName As String, _
                   ToDataBaseName As String, _
                   UserID As String, _
                   USERpw As String, _
                   Optional APP As String = "Office 2010", _
                   Optional WSID As String = "Axis") As Boolean

   ' Inputs:   ServerName:     Name of the SQL Server server (string)
   '           DatabaseName:   Name of the database on that server (string)
   '           ToDataBaseName: Most often SAME as DatabaseName, but can be differnt (test vs production)
   '           USERID          User id
   '           USERpw          User logon id
   '           APP             Application name
   '           WSID            Work station ID
   '
   ' Based originally on some code by Doug Steele
   ' Feb 2009 - AlbertD. Kallal
   
   ' Routine is SAME as relink but this one DELETES the table links
   ' (possbile left over junk + settings from orignal table linking is thus removed)
    
   
   Dim dbCurrent           As DAO.Database
   Dim tdfcurrent          As DAO.TableDef
   Dim intLoop             As Integer
   Dim strCon              As String
   Dim pBar                As New clsPbar
   Dim intTableCount       As Integer
   Dim bolCheck            As Boolean
   
   Dim qryPass             As DAO.QueryDef
   
   Dim mytable             As clsTable
   Dim colTables           As New Collection

   On Error GoTo SqlReLink_Error

   Set dbCurrent = CurrentDb

   pBar.ShowProgress
   pBar.PCaption = "Connect tables to data..please wait"
   
   pBar.Pmax = dbCurrent.TableDefs.Count
   
   strCon = dbCon(ServerName, DataBaseName, UserID, USERpw, APP)
   For Each tdfcurrent In dbCurrent.TableDefs
      intTableCount = intTableCount + 1
      If Len(tdfcurrent.connect) > 0 Then
         If Left$(tdfcurrent.connect, 5) = "ODBC;" Then
            
            If bolCheck = False Then
               If TestLogin(strCon) = True Then
                  bolCheck = True
               Else
                  MsgBox "Unable to connect to data server", vbCritical, AppName
                  SqlReLinkScrub = False
                  Exit Function
               End If
            End If
            
            ' only link if passed DataBaseName
            If GetSQLDataBase(tdfcurrent.connect) = DataBaseName Then
               ' save this to list of db to re-create
               Set mytable = New clsTable
               mytable.tableName = tdfcurrent.name
               mytable.SourceTableName = tdfcurrent.SourceTableName
               colTables.Add mytable, tdfcurrent.name
                
            End If
            pBar.TextMsg = "Get table " & intTableCount & " of " & dbCurrent.TableDefs.Count
            pBar.IncOne
         End If
      End If
      pBar.IncOne
   Next tdfcurrent
   
   pBar.frmGuiP.ClearBar
   pBar.Pmax = colTables.Count

   strCon = dbCon(ServerName, ToDataBaseName, UserID, USERpw)
   For Each mytable In colTables
      pBar.TextMsg = "Add link " & mytable.tableName
      pBar.IncOne
      
      CurrentDb.TableDefs.Delete mytable.tableName
      Set tdfcurrent = CurrentDb.CreateTableDef(mytable.tableName)
      tdfcurrent.connect = strCon
      tdfcurrent.SourceTableName = mytable.SourceTableName
      CurrentDb.TableDefs.Append tdfcurrent
    
    Next
    
   '
   CurrentDb.TableDefs.Refresh
   
   pBar.HideProgress
   
   'Debug.Print intTableCount
   
   On Error GoTo 0
   SqlReLinkScrub = True
   Exit Function

SqlReLink_Error:

   SqlReLinkScrub = False
   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in Re-link " & vbCrLf & _
          "Table link fail on = " & tdfcurrent.name & " (" & tdfcurrent.SourceTableName & ")", _
           vbCritical, "Source"
   Resume Next
   Exit Function
   
End Function


Function GenerateIndexSQL(tableName As String) As String
   
   ' This code was originally written by
   ' Doug Steele, MVP  djsteele@canada.com
   ' You are free to use it in any application,
   ' provided the copyright notice is left unchanged.
   '
   ' Description: Linked Tables should have an index __uniqueindex.
   '              This function looks for that index in a given
   '              table and creates an SQL statement which can
   '              recreate that index.
   '              (There appears to be no other way to do this!)
   '              If no such index exists, the function returns an
   '              empty string ("").
   '
   ' Inputs:   TableDefObject: Reference to a Table (TableDef object)
   '
   ' Returns:  An SQL string (or an empty string)
   '

   On Error GoTo Err_GenerateIndexSQL
   
   Dim dbCurr           As DAO.Database
   Dim idxCurr          As DAO.index
   Dim fldCurr          As DAO.Field
   Dim strSQL           As String
   Dim tdfCurr          As DAO.TableDef

   Set dbCurr = CurrentDb()
   Set tdfCurr = dbCurr.TableDefs(tableName)
   
   If tdfCurr.Indexes.Count > 0 Then

      ' Ensure that there's actually an index named
      ' "__UnigueIndex" in the table
   
       On Error Resume Next
       Set idxCurr = tdfCurr.Indexes("__uniqueindex")
       If Err.Number = 0 Then
         On Error GoTo Err_GenerateIndexSQL

         ' Loop through all of the fields in the index,
         ' adding them to the SQL statement
         
         If idxCurr.Fields.Count > 0 Then
           strSQL = "CREATE INDEX __UniqueIndex ON [" & tableName & "] ("
           For Each fldCurr In idxCurr.Fields
             strSQL = strSQL & "[" & fldCurr.name & "], "
           Next
         
            ' Remove the trailing comma and space
         
            strSQL = Left$(strSQL, Len(strSQL) - 2) & ")"
         End If
      End If
   End If

End_GenerateIndexSQL:
   Set fldCurr = Nothing
   Set tdfCurr = Nothing
   Set dbCurr = Nothing
   GenerateIndexSQL = strSQL
  
   Exit Function

Err_GenerateIndexSQL:
   ' Error number 3265 is "Not found in this collection
   ' (in other words, either the tablename is invalid, or
   ' it doesn't have an index named __uniqueindex)
     If Err.Number <> 3265 Then
       MsgBox Err.Description & " (" & Err.Number & ") encountered", _
           vbOKOnly + vbCritical, "Generate Index SQL"
     End If
     Resume End_GenerateIndexSQL

End Function



Function TestLogin(strCon As String) As Boolean

   On Error GoTo TestError

   Dim dbs          As DAO.Database
   Dim qdf          As DAO.QueryDef

   Set dbs = CurrentDb()
   Set qdf = dbs.CreateQueryDef("")

    qdf.connect = strCon
    
    qdf.ReturnsRecords = False

    'Any VALID SQL statement that runs on server will work below.
    ' this does assume user has enough rights to query built in
    ' system tables
    
    qdf.sql = "SELECT TOP 1 * FROM sys.all_columns"
    qdf.Execute

    TestLogin = True
    
    Exit Function

TestError:
    TestLogin = False
    Exit Function

End Function
               

Sub testrelink1()

   LinkOneTableSQL "View_qrySeatsByHistory", dbCon("server", "database name", "logon", "pass")
   
End Sub

Sub testRecreateOneLink()
   
   ' ***** ROGER - Use this code to connect to another table or view so that you don't have to supply passwords to reconnect.
   
   Dim tdfcurrent As DAO.TableDef
   Dim mytable    As New clsTable
   
   mytable.tableName = "tblReportType"
   mytable.SourceTableName = "tblReportType"
   

   'CurrentDb.TableDefs.Delete mytable.TableName
   Set tdfcurrent = CurrentDb.CreateTableDef(mytable.tableName)
   'tdfcurrent.Connect = dbCon(cControlServer, cControlDatabase, cControlUser, cControlPassword, "AXIS") ' For AXIS tables / views
   tdfcurrent.connect = dbCon(cControlServer, cControlDatabase, , , "AXIS") ' For AXIS tables / views
   'tdfcurrent.Connect = dbCon(cSmartStreamServer, cSmartStreamDatabase, cSmartStreamUser, cSmartStreamPassword, "SMARTSTREAM") 'for Smartstream Tables / views
   tdfcurrent.SourceTableName = mytable.SourceTableName
   CurrentDb.TableDefs.Append tdfcurrent

End Sub



Sub BuildLinks(ServerName As String, _
               DataBaseName As String, _
               UserID As String, _
               USERpw As String, _
               Optional APP As String = "Office 2010", _
               Optional WSID As String = "Axis")



   ' take existing back end links file
   ' link to sql server

    Dim mytables        As DAO.TableDef
    Dim colB            As New Collection
    Dim MyTableDef      As DAO.TableDef
    Dim tdfcurrent      As DAO.TableDef

    Dim strTempBack     As String
    Dim strFullPath     As String
    Dim f               As Variant
    Dim c               As Integer
    strFullPath = ""

    Dim strTable        As String
    Dim strTableSQL     As String
    Dim strBE           As String

    Dim mytable         As clsTable

    Dim strCon          As String

    For Each mytables In CurrentDb.TableDefs
       If Left(mytables.connect, 10) = ";DATABASE=" Then

          Set mytable = New clsTable

          mytable.tableName = mytables.name
          strBE = strParseFile(mytables.connect)

          Select Case strBE

             Case "AxisMIS_Data.accdb"
                mytable.strSchema = "dbo"

             Case Else
                mytable.strSchema = ""
         
         End Select

'         If myTable.TableName = "CERT PART# table" Then
'            myTable.SourceTableName = myTable.strSchema & "." & myTable.TableName
'         Else
'         this code block can be used to link to a different table name

          If mytable.strSchema <> "" Then
             ' only add tables with schema - skip others
             
             mytable.SourceTableName = mytable.strSchema & "." & mytables.SourceTableName
    
             Debug.Print "table = " & mytable.tableName & "  schema--->" & mytable.strSchema & " new BE = " & mytable.SourceTableName
    
             colB.Add mytable, mytable.tableName
    
          End If
        End If

    Next

   ' links to sql server

   For Each mytable In colB
      Debug.Print mytable.tableName
      CurrentDb.TableDefs.Delete mytable.tableName

      Set tdfcurrent = CurrentDb.CreateTableDef(mytable.tableName)
      strCon = dbCon(ServerName, DataBaseName, UserID, USERpw)
      tdfcurrent.connect = strCon
      tdfcurrent.SourceTableName = mytable.SourceTableName
      CurrentDb.TableDefs.Append tdfcurrent

   Next


End Sub

Function AddOneLink(strCon As String, strLocalLink As String, strSQLSourceTable As String) As Boolean

   ' take existing back end links file
   ' link to sql server

    Dim tdfcurrent      As DAO.TableDef

   ' links to sql server

   Debug.Print "create link for " & strLocalLink & " (" & strSQLSourceTable & ")"

   Set tdfcurrent = CurrentDb.CreateTableDef(strLocalLink)

   tdfcurrent.connect = strCon
   tdfcurrent.SourceTableName = strSQLSourceTable
   CurrentDb.TableDefs.Append tdfcurrent

   AddOneLink = True
End Function


Sub makenewlink()

   ' this routine takes EXISTING Access (accDB) back end
   ' and re-links to sql server (links to BE are deleted

   Call BuildLinks(cControlServer, cControlDatabase, cControlUser, cControlPassword)
   
End Sub


Public Sub AxisLogOn()
   
   ' this simply tests + logs in the user to the default database.
   ' once this occurs, then a odbc logon prompt for each linked table
   ' should not occur - this works WHEN the connection string used here
   ' matches the odbc connection string exaclty.
   
     Dim strCon     As String
    
    
    ' con string settings are:
    
    ' server , DataBaseName, User, Password, [Optional Application name], [Optional work station]
    ' last two optional are for sql performance tracing etc. - not required
    
    
    ' komori
    '
   On Error GoTo AxisLogOn_Error

    If cKStationEnabled = True Then
         strCon = dbCon(cKStationServer, cKStationDatabase, cKStationUser, cKStationPassword, "KSTATION")
         If TestLogin(strCon) = True Then
            ' MsgBox "Komori OK"
            ' connection string = ok, logon = ok, check if we need to re-link
            Debug.Print "KSTATION logon = true"
            Call CheckForReLink(cKStationServer, cKStationDatabase, cKStationUser, cKStationPassword, "KSTATION")
         Else
            Debug.Print "KSTATION logon = false"
         End If

    End If
    
    ' Axis (application back end)
    strCon = dbCon(cControlServer, cControlDatabase, cControlUser, cControlPassword, "AXIS")
    If TestLogin(strCon) = True Then
      ' MsgBox "Axis OK"
      ' connection string = ok, logon = ok, check if we need to re-link
      Debug.Print "AXIS logon = ok"
      Call CheckForReLink(cControlServer, cControlDatabase, cControlUser, cControlPassword, "AXIS")
    Else
       Debug.Print "AXIS logon = false"
    End If
    
    
    If cSmartStreamEnabled = True Then

        ' SmartStream
        strCon = dbCon(cSmartStreamServer, cSmartStreamDatabase, cSmartStreamUser, cSmartStreamPassword, "SMARTSTREAM")
        If TestLogin(strCon) = True Then
           ' MsgBox "SMARTSTREAM OK"
           ' connection string = ok, logon = ok, check if we need to re-link
           Debug.Print "SMARTSTREAM logon = true"
           Call CheckForReLink(cSmartStreamServer, cSmartStreamDatabase, cSmartStreamUser, cSmartStreamPassword, "SMARTSTREAM")
        Else
           Debug.Print "SMARTSTREAM logon = false"
        End If
    End If

     If cPDQEnabled Then
 
    Dim MYDB As Database
    Dim myTdf As TableDef
    Dim myTdfs As TableDefs

    Set MYDB = CurrentDb()
    Set myTdfs = MYDB.TableDefs


    For Each myTdf In myTdfs

         If myTdf.SourceTableName <> "" Then 'If the table source is other than a base table
             
             If Left(myTdf.SourceTableName, 3) = "tbl" Then
                If myTdf.SourceTableName = "tblConversionTypes" Or myTdf.SourceTableName = "tblDynamicCostModelling" Or myTdf.SourceTableName = "tblPrintingMethods" Then
                    myTdf.connect = ";DATABASE=" & cPDQSetupDatabase 'Update PDQ Setup ONLY Database locations only for databases starting with tbl
                Else
                    myTdf.connect = ";DATABASE=" & cPDQDatabase 'Update all other PDQ Database locations  for databases starting with tbl
                End If
                Debug.Print "PDQ : " & myTdf.SourceTableName
                myTdf.RefreshLink 'Refresh the link
            End If
         
         End If
    Next

End If


   On Error GoTo 0
   Exit Sub

AxisLogOn_Error:

   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AxisLogOn of Module RelinkSQL"

End Sub


Public Function MyWait()

   ' let the data engine idle out
   
   DoEvents
   
   DBEngine.Idle (dbFreeLocks)
   
   Call sapiSleep(250)    ' 500 millisecs = 1/2 sec delay
   
   DoEvents
   
   DBEngine.Idle (dbRefreshCache)
   DoEvents
   
   Call sapiSleep(250)    ' 500 millisecs = 1/2 sec delay
   
End Function


Public Function dbCon(ServerName As String, _
                      DataBaseName As String, _
                      Optional UserID As String, _
                      Optional USERpw As String, _
                      Optional APP As String = "Office 2010", _
                      Optional WSID As String = "Axis") As String

    ' returns a SQL server conneciton string
    
   dbCon = "ODBC;DRIVER=" & SQLDRIVER & ";" & _
           "SERVER=" & ServerName & ";" & _
           "DATABASE=" & DataBaseName & ";"
           If UserID <> "" Then
              dbCon = dbCon & "UID=" & UserID & ";" & "PWD=" & USERpw & ";"
           End If
           dbCon = dbCon & _
           "APP=" & APP & ";" & _
           "WSID=" & WSID & ";" & _
           "Network=DBMSSOCN"

End Function


Sub LinkDB()
 
    'MUST Relink the standard Axis Databases
    Call SqlReLink(cControlServer, cControlDatabase, cControlDatabase, cControlUser, cControlPassword, "AXIS", , False)
    
    If cKStationEnabled Then
        Call SqlReLink(cKStationServer, cKStationDatabase, cKStationDatabase, cKStationUser, cKStationPassword, "KSTATION", , False)
    End If
    
 If cPDQEnabled Then
 
    Dim MYDB As Database
    Dim myTdf As TableDef
    Dim myTdfs As TableDefs

    Set MYDB = CurrentDb()
    Set myTdfs = MYDB.TableDefs


    For Each myTdf In myTdfs

         If myTdf.SourceTableName <> "" Then 'If the table source is other than a base table
             
            If Left(myTdf.SourceTableName, 3) = "tbl" Then
                If myTdf.SourceTableName = "tblConversionTypes" Or myTdf.SourceTableName = "tblDynamicCostModelling" Or myTdf.SourceTableName = "tblPrintingMethods" Then
                    myTdf.connect = ";DATABASE=" & cPDQSetupDatabase 'Update PDQ Setup ONLY Database locations only for databases starting with tbl
                Else
                    myTdf.connect = ";DATABASE=" & cPDQDatabase 'Update all other PDQ Database locations  for databases starting with tbl
                End If
                Debug.Print "PDQ : " & myTdf.SourceTableName
                myTdf.RefreshLink 'Refresh the link
            End If
             
             
             'This code is in two places. We should make it one.
             
             'If Left(myTdf.SourceTableName, 3) = "tbl" Then
             '   myTdf.Connect = ";DATABASE=" & cPDQDatabase 'Update PDQ Database locations only for databases starting with tbl
             '   Debug.Print "PDQ : " & myTdf.SourceTableName
             '   myTdf.RefreshLink 'Refresh the link
            'End If
         
         End If
    Next

End If




'Add Relink code here for HP Smartstream
If cSmartStreamEnabled = True Then
    Call SqlReLink(cSmartStreamServer, cSmartStreamDatabase, cSmartStreamDatabase, cSmartStreamUser, cSmartStreamPassword, "SMARTSTREAM", , True)
End If


'MsgBox "Done with relinking - proceed to AxisMIS", vbInformation, ProgramName


End Sub

Sub testMakeOneLink()

   Dim strCon       As String
   
   'strCon = dbCon(cKStationServer, cKStationDatabase, cKStationUser, cKStationPassword)
   
   strCon = dbCon(cControlServer, cControlDatabase, cControlUser, cControlPassword)
   
'   Debug.Print AddOneLink(strCon, "dbo_T_JobPartWorking", "dbo.T_JobPartWorking")
   Debug.Print AddOneLink(strCon, "viewContactGeneral", "qryViewContactGeneral")


End Sub


Sub testprop()
     
    Dim tdf          As DAO.TableDef
    Dim p            As Variant
    Dim db           As DAO.Database
    
    Set db = CurrentDb
    
    Set tdf = db.TableDefs("dbo_company")
    Debug.Print tdf.Updatable
    For Each p In tdf.Properties
       Debug.Print p.name, p.Value
    Next
    

End Sub


Sub LinkScrub()

   ' this simply deletes + recreates the table links
   ' If you "manully" create table links and click on save
   ' password then passwords are embedded forever.
   ' This code thus re-creates table links for a given database
   ' without embedded passwords.
   
   ' you don't need to call this
   
     
   Call SqlReLinkScrub("PC-EDM-0012\KOMORI_SQLSERVER", "KOMORI", "KOMORI", "KOMORI", "komori", "KSTATION")

    ' SmartStream
   Call SqlReLinkScrub(cSmartStreamServer, cSmartStreamDatabase, cSmartStreamDatabase, cSmartStreamUser, cSmartStreamPassword, "SMARTSTREAM")
     
   ' Call SqlReLinkScrub(cControlServer, cControlDatabase, cControlDatabase, cControlUser, cControlPassword, "AXIS")
   
End Sub


Public Function SQLStartUp()

   
   ' ** CALLED from AutoExec
   
   ' because existing logon form is bound, then we logon here first
   ' to ensure SQL logons - then launch Access logon form
   ' Note to self - should redesign login so form is not bound - was a bad way to do it.

   Call CheckForUpdate


   DoCmd.OpenForm "frmSplashScreen", acNormal, , , , acDialog

   AxisLogOn          ' setup connections to komori, smartstream, AxisMIS (sql server)
       
   'MsgBox "Wait"

'DoCmd.OpenForm "frmLogin", acNormal, , , , acHidden 'Do not do this... this now gets opened up hidden by the password form directly to the correct record.
DoCmd.OpenForm "frmGetPassword", acNormal


   
   
End Function
   


Public Sub start()
DoCmd.RunMacro "Autoexec"

End Sub

Public Sub CheckForUpdate()

   Dim FrontVersion         As String
   Dim ServerVersion        As String
   Dim InstallLocation      As String
   

   Dim strVerFile           As String
   Dim serverVerFile        As String
   Dim SetupExe             As String
   
   Dim bolTryUpgrade        As Boolean      ' force/try a upgrade when ini files missing
   
   strVerFile = CurrentProject.Path & "\version.ini"
   
   ' check for version file - if missing, then we assume upgrade
   ' from "older" non installer version (Burke site only)
   '
   gblVersionInfo = GetVersionInfo
   
   If gblVersionInfo.FrontVersion = "" Then
      bolTryUpgrade = True
   End If
   
   ' when ini file missing, then emptry "" strings are returned for version info
   
   If (gblVersionInfo.FrontVersion < gblVersionInfo.ServerVersion) Or (bolTryUpgrade) Then
      
      If MsgBox("There is a new version of this application available" & vbCrLf & _
                "Upgrade to a new version ?", vbInformation + vbYesNo, "Update") = vbYes Then
                         
         If bolTryUpgrade Then
            ' version file missing, first try hard code path to Burke server setup
            gblVersionInfo.SetupExe = "\\srv-edm-0006\AxisMIS\AxisInstall\setup.exe"
            ' if above path don't exist, then pop file dialog and allow browse to setup.exe
            
            If Dir(gblVersionInfo.SetupExe) = "" Then
               Dim f        As FileDialog
               Set f = FileDialog(msoFileDialogFilePicker)
               f.Title = "Select setup.exe to run"
               f.Show
               If f.SelectedItems.Count > 0 Then
                  gblVersionInfo.SetupExe = f.SelectedItems(1)
               End If
            End If
         End If
         
         fWinShell gblVersionInfo.SetupExe, 1
         Application.Quit
      End If
   End If
   

End Sub


Public Function GetVersionInfo() As VersionInfo

   Dim strVerFile       As String
   Dim serverVerFile    As String
   
   strVerFile = CurrentProject.Path & "\version.ini"
   
   
   With GetVersionInfo
   
     ' read local (front end) version
     .FrontVersion = ReadIniFileString("Control", "ControlVersion", strVerFile)
     .SetupExe = ReadIniFileString("Control", "ServerInstallPath", strVerFile)            ' full path of setup.exe used by installer
    
     ' now read server version file from server install location
     .ServerFolder = Mid(.SetupExe, 1, InStrRev(.SetupExe, "\"))
     serverVerFile = .ServerFolder & "version.ini"
     .ServerVersion = ReadIniFileString("Control", "ControlVersion", serverVerFile)
     
   End With


End Function

Public Sub GetVersionForRibbon(MyControl As IRibbonControl, helperText)


   helperText = "Version # " & GetVersionInfo.FrontVersion


End Sub


Sub CheckForReLink(ServerName As String, _
                   DataBaseName As String, _
                   UserID As String, _
                   USERpw As String, _
                   APP As String, _
                   Optional WSID As String = "Axis")


'---------------------------------------------------------------------------------------
' Procedure : CheckForReLink
' Author    : roger.kuntz
' Date      : 15/09/2014
' Purpose   : Take existing connection for a given database and check
'             if changed. If changed, then re-link for given database
'---------------------------------------------------------------------------------------
'
   ' MUST pass app name (use setup.ini headings, EG: AXIS, PDQ, KSTATION, SAGE50, QUICKBOOKS, SMARTSTREAM, PITSTOPSERVER
   
   ' saved connection strings (in tabledefs) do NOT contain passwords.
   ' we match by APP name now.
   Dim strCon           As String
   
   
   strCon = dbCon(ServerName, DataBaseName, "", "", APP) ' get con string without user/pass
   If strCon <> dbGetCon(APP) Then
      ' based on application, connection strings don't matach, so re-link
      ' NOTE: A LOGON to the given server/app MUST have occured BEFORE calling this routine
      Call SqlReLink(ServerName, DataBaseName, DataBaseName, UserID, USERpw, APP)
      
   End If


End Sub


Public Function dbGetCon(APP As String)

   ' return "existing" connection string for given app
   Dim dbCurrent           As DAO.Database
   Dim tdfcurrent          As DAO.TableDef
   
   Set dbCurrent = CurrentDb
   
   For Each tdfcurrent In dbCurrent.TableDefs
      If Len(tdfcurrent.connect) > 0 Then
         If Left$(tdfcurrent.connect, 5) = "ODBC;" Then
            ' only link if passed DataBaseName
            If GetSQLAPP(tdfcurrent.connect) = APP Then
               dbGetCon = tdfcurrent.connect
               Exit Function
            End If
         End If
      End If
   Next tdfcurrent
               

End Function