Operation =1
Option =0
Where ="(((dbo_ProjectStatus.ID)<21))"
Begin InputTables
    Name ="dbo_ProjectStatus"
End
Begin OutputColumns
    Expression ="dbo_ProjectStatus.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf118431a619a4646b8c39dfa8204e923
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000003d76a6fcd0ab0c488e338ff5befc32110000000004b6e6c0 ,
    0xea62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400530074006100740075007300000000000000a7371897b623d040b1cd05dd ,
    0x76dc65c3070000003d76a6fcd0ab0c488e338ff5befc32114900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectStatus.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29e8374523cd4849819d477dc150b860
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectStatus.StatusDesc"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09eeab0ff213fe47b23a34feaee3244e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectStatus.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d579c69035a3c488c9209ed116a9117
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectStatus.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a6312f6465e7d45ae1a92d9a9500076
        End
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1609
    Bottom =1089
    Left =-1
    Top =-1
    Right =1463
    Bottom =611
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
