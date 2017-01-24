Operation =2
Name ="tblCboTaskListForStation"
Option =0
Where ="(((dbo_TaskList.TaskCode)>=fLocSS(\"StartTaskID\") And (dbo_TaskList.TaskCode)<="
    "fLocSS(\"EndTaskID\")))"
Begin InputTables
    Name ="dbo_TaskList"
    Name ="dbo_TaskCategory"
End
Begin OutputColumns
    Expression ="dbo_TaskList.ID"
    Expression ="dbo_TaskList.TaskDescription"
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_TaskList.CategoryID"
    Expression ="dbo_TaskCategory.TaskCategory"
End
Begin Joins
    LeftTable ="dbo_TaskList"
    RightTable ="dbo_TaskCategory"
    Expression ="dbo_TaskList.CategoryID = dbo_TaskCategory.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_TaskList.TaskCode"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x96b1d8595858224a8236d4aceb03b73d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000005bb94b16ad862248a8224633f68c31fb00000000a0b3f2c0 ,
    0xea62e4400000000000000000640062006f005f005400610073006b004c006900 ,
    0x730074000000000000007e8950e603b0aa49a6a006d9974c8e2500000000edd3 ,
    0xf1c0ea62e4400000000000000000640062006f005f005400610073006b004300 ,
    0x61007400650067006f00720079000000000000008c43f53023ca8e4eae404b3b ,
    0xb2e25089070000005bb94b16ad862248a8224633f68c31fb4900440000000000 ,
    0x0000fc34d10283aa534daca60bd1f3e7eb7a070000005bb94b16ad862248a822 ,
    0x4633f68c31fb5400610073006b00440065007300630072006900700074006900 ,
    0x6f006e00000000000000f5db20518c21764f910b0873046589eb070000005bb9 ,
    0x4b16ad862248a8224633f68c31fb5400610073006b0043006f00640065000000 ,
    0x000000000973d4b4f98d1446a2a4a909e77b83bc070000005bb94b16ad862248 ,
    0xa8224633f68c31fb430061007400650067006f00720079004900440000000000 ,
    0x0000bd82890ded717048841d0edfcbd369d4070000007e8950e603b0aa49a6a0 ,
    0x06d9974c8e255400610073006b00430061007400650067006f00720079000000 ,
    0x000000000abb33cbee69cf4bb46de30578dbb413070000007e8950e603b0aa49 ,
    0xa6a006d9974c8e25490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_TaskCategory.TaskCategory"
        dbInteger "ColumnWidth" ="2595"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d9ec55cb0f65d408cd4c259425b4d05
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskDescription"
        dbInteger "ColumnWidth" ="4470"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a8b320deaefd54aba790d6d8486e36a
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9af3afcd36018a44aba2ef69fca579f0
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskList.CategoryID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1520
    Bottom =997
    Left =-1
    Top =-1
    Right =1450
    Bottom =356
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =591
        Bottom =424
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
    Begin
        Left =678
        Top =22
        Right =920
        Bottom =166
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
End
