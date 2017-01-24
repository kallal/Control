Operation =1
Option =0
Begin InputTables
    Name ="dbo_TaskCategory"
End
Begin OutputColumns
    Expression ="dbo_TaskCategory.ID"
    Expression ="dbo_TaskCategory.TaskCategory"
    Expression ="dbo_TaskCategory.DefaultCostPerHour"
End
Begin OrderBy
    Expression ="dbo_TaskCategory.ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xc48983360b8a474a9b40f8c4b3054ac5
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006fbf99639a05b24a9b5a7b3b49d3791f00000000e12d69da ,
    0x0dd8e4400000000000000000640062006f005f005400610073006b0043006100 ,
    0x7400650067006f007200790000000000000046298f9267a8544db8d6ff79106e ,
    0x1140070000006fbf99639a05b24a9b5a7b3b49d3791f49004400000000000000 ,
    0xd2f1a09f98f39147bd88f13c6bafc211070000006fbf99639a05b24a9b5a7b3b ,
    0x49d3791f5400610073006b00430061007400650067006f007200790000000000 ,
    0x0000ff30bb80a00dcd45b799ab9a676789e3070000006fbf99639a05b24a9b5a ,
    0x7b3b49d3791f440065006600610075006c00740043006f007300740050006500 ,
    0x720048006f007500720000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_TaskCategory.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.DefaultCostPerHour"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =85
    Top =87
    Right =1560
    Bottom =742
    Left =-1
    Top =-1
    Right =1443
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =49
        Top =43
        Right =320
        Bottom =312
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
End
