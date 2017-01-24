Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployeeTask"
    Name ="dbo_TaskCategory"
    Name ="dbo_TaskList"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeTask.ID"
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    Expression ="dbo_CompanyEmployeeTask.StartTime"
    Expression ="dbo_CompanyEmployeeTask.EndTime"
    Expression ="dbo_CompanyEmployeeTask.TotalTime"
    Expression ="dbo_CompanyEmployeeTask.Description"
    Expression ="dbo_CompanyEmployeeTask.Notes"
    Expression ="dbo_CompanyEmployeeTask.Category"
    Expression ="dbo_CompanyEmployeeTask.StartDate"
    Expression ="dbo_CompanyEmployeeTask.EndDate"
    Expression ="dbo_CompanyEmployeeTask.StationID"
    Expression ="dbo_TaskCategory.DefaultCostPerHour"
    Expression ="dbo_TaskList.CostPerHour"
    Alias ="Rate"
    Expression ="IIf(Nz([costperhour],0)>0,[costperhour],[defaultCostPerHour])"
    Alias ="NetCost"
    Expression ="IIf(Nz([costperhour],0)>0,[totaltime]*[costperhour],[totaltime]*[defaultCostPerH"
        "our])"
End
Begin Joins
    LeftTable ="dbo_TaskList"
    RightTable ="dbo_TaskCategory"
    Expression ="dbo_TaskList.CategoryID = dbo_TaskCategory.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_TaskList"
    Expression ="dbo_CompanyEmployeeTask.Description = dbo_TaskList.ID"
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
    0xc89b188b20805042ba0f38c94bda348f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f3bb368e5752447b9d750b069764fe100000000b0bf3a2b ,
    0xacd7e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005400610073006b00000000000000 ,
    0x6fbf99639a05b24a9b5a7b3b49d3791f00000000e0626c2bacd7e44000000000 ,
    0x00000000640062006f005f005400610073006b00430061007400650067006f00 ,
    0x72007900000000000000958ecf7485eb1046a282e0ec36d55bdc0000000015c0 ,
    0x6c2bacd7e4400000000000000000640062006f005f005400610073006b004c00 ,
    0x690073007400000000000000d95262d4b5d3d141b489e992c31c0c2107000000 ,
    0xc89b188b20805042ba0f38c94bda348f5200610074006500000000000000ce20 ,
    0x5427018da54cbbe2ff94ac25bac007000000c89b188b20805042ba0f38c94bda ,
    0x348f4e006500740043006f0073007400000000000000c60348f58698a643b526 ,
    0xb15dad1ae384070000006f3bb368e5752447b9d750b069764fe1490044000000 ,
    0x000000006e0caee31efeba4d9f61a70621cee53407000000958ecf7485eb1046 ,
    0xa282e0ec36d55bdc5400610073006b0043006f0064006500000000000000bd7c ,
    0x039dd0cb8e49a4e004c1cde3640c070000006f3bb368e5752447b9d750b06976 ,
    0x4fe143006f006d00700061006e00790045006d0070006c006f00790065006500 ,
    0x49004400000000000000006a9a68bf819947b96bb425e85d4130070000006f3b ,
    0xb368e5752447b9d750b069764fe1500072006f006a0065006300740048006500 ,
    0x6100640065007200490044000000000000007dc9cca9f1ab4442af7851cbc5fe ,
    0x2e6b070000006f3bb368e5752447b9d750b069764fe1500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720049004400000000000000cf3b52b65ba2514a80139d4c4072b1a207000000 ,
    0x6f3bb368e5752447b9d750b069764fe153007400610072007400540069006d00 ,
    0x650000000000000027ed0a61b8dbb8438c840661ac18cfe2070000006f3bb368 ,
    0xe5752447b9d750b069764fe145006e006400540069006d006500000000000000 ,
    0x3f6e2d1a2ab3744d8f458aff5492548d070000006f3bb368e5752447b9d750b0 ,
    0x69764fe154006f00740061006c00540069006d0065000000000000000978b754 ,
    0xd9614a40ae9fe5e6c5d8d29e070000006f3bb368e5752447b9d750b069764fe1 ,
    0x4400650073006300720069007000740069006f006e00000000000000adb463ae ,
    0x94153e4b8e538a355aeff679070000006f3bb368e5752447b9d750b069764fe1 ,
    0x4e006f00740065007300000000000000c4e059e768951544a1f3551c140594b6 ,
    0x070000006f3bb368e5752447b9d750b069764fe1430061007400650067006f00 ,
    0x720079000000000000007e0339744e1b4647b8ebe6b7d60da102070000006f3b ,
    0xb368e5752447b9d750b069764fe1530074006100720074004400610074006500 ,
    0x000000000000e906720f4427c1459a5df36cdf0b3ac6070000006f3bb368e575 ,
    0x2447b9d750b069764fe145006e0064004400610074006500000000000000c8e3 ,
    0xc220ce2ec746b9fb1e1ee9ea4110070000006f3bb368e5752447b9d750b06976 ,
    0x4fe1530074006100740069006f006e0049004400000000000000ff30bb80a00d ,
    0xcd45b799ab9a676789e3070000006fbf99639a05b24a9b5a7b3b49d3791f4400 ,
    0x65006600610075006c00740043006f007300740050006500720048006f007500 ,
    0x72000000000000000843064c6dc842498c58d1809625bae107000000958ecf74 ,
    0x85eb1046a282e0ec36d55bdc43006f007300740050006500720048006f007500 ,
    0x720000000000000016b0fb1ca82beb4f95c89c91d588ba6407000000958ecf74 ,
    0x85eb1046a282e0ec36d55bdc430061007400650067006f007200790049004400 ,
    0x00000000000046298f9267a8544db8d6ff79106e1140070000006fbf99639a05 ,
    0xb24a9b5a7b3b49d3791f4900440000000000000027b3528a9810654e8513689d ,
    0xa75e7caa07000000958ecf7485eb1046a282e0ec36d55bdc4900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.DefaultCostPerHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskList.CostPerHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NetCost"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0xce205427018da54cbbe2ff94ac25bac0
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.TotalTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="rATE"
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd95262d4b5d3d141b489e992c31c0c21
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskCode"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =33
    Top =41
    Right =1631
    Bottom =850
    Left =-1
    Top =-1
    Right =1566
    Bottom =521
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =375
        Bottom =477
        Top =0
        Name ="dbo_CompanyEmployeeTask"
        Name =""
    End
    Begin
        Left =771
        Top =52
        Right =915
        Bottom =196
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
    Begin
        Left =555
        Top =157
        Right =699
        Bottom =301
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
End
