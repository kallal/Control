Operation =2
Name ="tblCboProjectStatus"
Option =0
Begin InputTables
    Name ="dbo_ProjectStatus"
End
Begin OutputColumns
    Expression ="dbo_ProjectStatus.ID"
    Expression ="dbo_ProjectStatus.StatusDesc"
End
Begin OrderBy
    Expression ="dbo_ProjectStatus.ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x712a75a0fd4f1848afb91b0c2ae9708f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000003d76a6fcd0ab0c488e338ff5befc32110000000000e9ea80 ,
    0xed62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400530074006100740075007300000000000000a7371897b623d040b1cd05dd ,
    0x76dc65c3070000003d76a6fcd0ab0c488e338ff5befc32114900440000000000 ,
    0x0000792d2d8a98c86d469300eef3374ae95a070000003d76a6fcd0ab0c488e33 ,
    0x8ff5befc32115300740061007400750073004400650073006300000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectStatus.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectStatus.StatusDesc"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1485
    Bottom =394
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_ProjectStatus"
        Name =""
    End
End
