Operation =1
Option =0
Begin InputTables
    Name ="dbo_TaskList"
    Name ="dbo_TaskCategory"
End
Begin OutputColumns
    Expression ="dbo_TaskList.ID"
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_TaskList.TaskDescription"
    Expression ="dbo_TaskList.CategoryID"
    Expression ="dbo_TaskCategory.TaskCategory"
    Expression ="dbo_TaskList.CostPerHour"
    Expression ="dbo_TaskCategory.DefaultCostPerHour"
End
Begin Joins
    LeftTable ="dbo_TaskList"
    RightTable ="dbo_TaskCategory"
    Expression ="dbo_TaskList.CategoryID = dbo_TaskCategory.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xfe960502dcc77148b010d85e63299bbc
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryTaskList].[TaskCode]"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000958ecf7485eb1046a282e0ec36d55bdc00000000dc69bac8 ,
    0x4fd0e4400000000000000000640062006f005f005400610073006b004c006900 ,
    0x730074000000000000006fbf99639a05b24a9b5a7b3b49d3791f000000007006 ,
    0xbac84fd0e4400000000000000000640062006f005f005400610073006b004300 ,
    0x61007400650067006f007200790000000000000027b3528a9810654e8513689d ,
    0xa75e7caa07000000958ecf7485eb1046a282e0ec36d55bdc4900440000000000 ,
    0x00006e0caee31efeba4d9f61a70621cee53407000000958ecf7485eb1046a282 ,
    0xe0ec36d55bdc5400610073006b0043006f00640065000000000000009827e132 ,
    0x85bb0a4e98d4106c65c0049a07000000958ecf7485eb1046a282e0ec36d55bdc ,
    0x5400610073006b004400650073006300720069007000740069006f006e000000 ,
    0x0000000016b0fb1ca82beb4f95c89c91d588ba6407000000958ecf7485eb1046 ,
    0xa282e0ec36d55bdc430061007400650067006f00720079004900440000000000 ,
    0x0000d2f1a09f98f39147bd88f13c6bafc211070000006fbf99639a05b24a9b5a ,
    0x7b3b49d3791f5400610073006b00430061007400650067006f00720079000000 ,
    0x000000000843064c6dc842498c58d1809625bae107000000958ecf7485eb1046 ,
    0xa282e0ec36d55bdc43006f007300740050006500720048006f00750072000000 ,
    0x00000000ff30bb80a00dcd45b799ab9a676789e3070000006fbf99639a05b24a ,
    0x9b5a7b3b49d3791f440065006600610075006c00740043006f00730074005000 ,
    0x6500720048006f007500720000000000000046298f9267a8544db8d6ff79106e ,
    0x1140070000006fbf99639a05b24a9b5a7b3b49d3791f49004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_TaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf078dfb3e0cd7b45b70ea6d5b7b25ff8
        End
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskDescription"
        dbInteger "ColumnWidth" ="3000"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee757ba74dc99c48968a5587420c311c
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68200577f9c05244a92cca48433dc08f
        End
        dbInteger "ColumnWidth" ="345"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_TaskList.CategoryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5e593ce5cf67e4469f9b1f8fd6010b93
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x40a892424f2544499eafe082d291f160
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.CostPerHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.DefaultCostPerHour"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =41
    Top =108
    Right =1177
    Bottom =892
    Left =-1
    Top =-1
    Right =1104
    Bottom =308
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
End
