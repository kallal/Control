Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Public tableName           As String
Public SourceTableName     As String
Public Attributes          As Long
Public IndexSQL            As String
Public Description         As Variant
Public strSchema           As String
Public linkName            As String

' table defs as object