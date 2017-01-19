Option Compare Database
Option Explicit

Public Function ServerPicPath(strPath As String) As String

   ' take smart stream path, change / to backslash and
   ' add server name in front of path
   
   strPath = Replace(strPath, "/", "\")
   
   ServerPicPath = "\\10.50.100.108\NewEdition" & strPath

End Function




Sub FindCol()

   Dim td           As DAO.TableDef
   Dim tf           As DAO.Field
   For Each td In CurrentDb.TableDefs
   
      If Left(td.name, 4) = "ssd_" Then
      
         For Each tf In td.Fields
         
            If InStr(tf.name, "userid") <> 0 Then
               Debug.Print "table = " & td.name, tf.name
            End If
         Next
      
      
      End If
      
   Next



End Sub

 Sub SearchString()
    'bad CODE - DOESN'T WORK.
    
     Dim db As Database
     Dim tbl As TableDef
     Dim fld As Field

     Set db = CurrentDb
     
     For Each tbl In db.TableDefs
         If Left(tbl.name, 3) = "dbo" Then
         Debug.Print tbl.name;
         For Each fld In tbl.Fields
             Debug.Print "-";
             On Error Resume Next
             
             If InStr(str(Nz(fld.Value, "")), "vertical middle fold") > 0 Then
                MsgBox "Found it: " & fld.name & " : " & tbl.name & " = " & fld.Value
                
             End If
                  
         Next
         End If
         Debug.Print "."
     Next
     Set tbl = Nothing
     Set fld = Nothing
     Set db = Nothing
End Sub

Public Sub RenameAllQueries(strToFind As String, strToReplace)
    On Error GoTo ErrHandler

Dim dbs As Database
Dim qdf As QueryDef

Set dbs = CurrentDb
For Each qdf In dbs.QueryDefs
Dim qdfNewName As String

qdfNewName = Replace(qdf.name, strToFind, strToReplace)

If qdfNewName <> qdf.name Then
DoCmd.Rename qdfNewName, acQuery, qdf.name
End If

NextQdf:
Next

Cleanexit:
Exit Sub

ErrHandler:
MsgBox Err.Number & " - " & Err.Description, vbOKOnly
Resume NextQdf
GoTo Cleanexit
End Sub

Public Sub RenameAllTables(strToFind As String, strToReplace)
    On Error GoTo ErrHandler

Dim dbs As Database
Dim tdf As TableDef

Set dbs = CurrentDb
For Each tdf In dbs.TableDefs
Dim tdfNewName As String

tdfNewName = Replace(tdf.name, strToFind, strToReplace)

If tdfNewName <> tdf.name Then
DoCmd.Rename tdfNewName, acTable, tdf.name
End If

NextTdf:
Next

Cleanexit:
Exit Sub

ErrHandler:
MsgBox Err.Number & " - " & Err.Description, vbOKOnly
Resume NextTdf
GoTo Cleanexit
End Sub