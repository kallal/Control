Operation =2
Name ="tblCboTaskList"
Option =0
Begin InputTables
    Name ="dbo_TaskList"
    Name ="dbo_TaskCategory"
End
Begin OutputColumns
    Expression ="dbo_TaskList.ID"
    Expression ="dbo_TaskList.TaskDescription"
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_TaskCategory.TaskCategory"
    Alias ="Start"
    Expression ="fLocSS(\"startTaskID\")"
    Alias ="End"
    Expression ="flocSS(\"EndTaskID\")"
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
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x79b170748d96be4b93b8a00db3389c8c
End
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000958ecf7485eb1046a282e0ec36d55bdc000000005394864c ,
    0x2de0e4400000000000000000640062006f005f005400610073006b004c006900 ,
    0x730074000000000000006fbf99639a05b24a9b5a7b3b49d3791f00000000b2d3 ,
    0x854c2de0e4400000000000000000640062006f005f005400610073006b004300 ,
    0x61007400650067006f00720079000000000000000014220b38c0210024c02100 ,
    0xd8a8b0030700000079b170748d96be4b93b8a00db3389c8c5300740061007200 ,
    0x74000000000000009e1187d8165fcf43a4a426aa5ee4c4e10700000079b17074 ,
    0x8d96be4b93b8a00db3389c8c45006e00640000000000000027b3528a9810654e ,
    0x8513689da75e7caa07000000958ecf7485eb1046a282e0ec36d55bdc49004400 ,
    0x0000000000009827e13285bb0a4e98d4106c65c0049a07000000958ecf7485eb ,
    0x1046a282e0ec36d55bdc5400610073006b004400650073006300720069007000 ,
    0x740069006f006e000000000000006e0caee31efeba4d9f61a70621cee5340700 ,
    0x0000958ecf7485eb1046a282e0ec36d55bdc5400610073006b0043006f006400 ,
    0x6500000000000000d2f1a09f98f39147bd88f13c6bafc211070000006fbf9963 ,
    0x9a05b24a9b5a7b3b49d3791f5400610073006b00430061007400650067006f00 ,
    0x7200790000000000000016b0fb1ca82beb4f95c89c91d588ba6407000000958e ,
    0xcf7485eb1046a282e0ec36d55bdc430061007400650067006f00720079004900 ,
    0x440000000000000046298f9267a8544db8d6ff79106e1140070000006fbf9963 ,
    0x9a05b24a9b5a7b3b49d3791f4900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
        dbText "Name" ="Start"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0014220b38c0210024c02100d8a8b003
        End
    End
    Begin
        dbText "Name" ="End"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e1187d8165fcf43a4a426aa5ee4c4e1
        End
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
    Bottom =407
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
        Left =639
        Top =12
        Right =783
        Bottom =156
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
End
