Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployeeTask"
    Name ="dbo_TaskCategory"
    Name ="dbo_TaskList"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    Alias ="SumOfTotalTime"
    Expression ="Sum(dbo_CompanyEmployeeTask.TotalTime)"
    Expression ="dbo_CompanyEmployeeTask.Description"
    Expression ="dbo_CompanyEmployeeTask.Category"
    Expression ="dbo_TaskCategory.DefaultCostPerHour"
    Expression ="dbo_TaskList.CostPerHour"
    Alias ="Rate"
    Expression ="IIf(Nz([costperhour],0)>0,[costperhour],[defaultCostPerHour])*IIf([companyEmploy"
        "eeID]=38 Or [companyemployeeid]=46 Or [companyemployeeid]=58,0.01,1)"
    Alias ="NetCost"
    Expression ="Sum([totaltime]*[rate])"
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
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID = dbo_ProjectComponentHeader.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_TaskList.TaskCode"
    Flag =0
End
Begin Groups
    Expression ="dbo_TaskList.TaskCode"
    GroupLevel =0
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeTask.Description"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeTask.Category"
    GroupLevel =0
    Expression ="dbo_TaskCategory.DefaultCostPerHour"
    GroupLevel =0
    Expression ="dbo_TaskList.CostPerHour"
    GroupLevel =0
    Expression ="IIf(Nz([costperhour],0)>0,[costperhour],[defaultCostPerHour])*IIf([companyEmploy"
        "eeID]=38 Or [companyemployeeid]=46 Or [companyemployeeid]=58,0.01,1)"
    GroupLevel =0
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
    0x75798f6d5420ec4d9b4257135afeb60e
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f3bb368e5752447b9d750b069764fe100000000b0bf3a2b ,
    0xacd7e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005400610073006b00000000000000 ,
    0x6fbf99639a05b24a9b5a7b3b49d3791f00000000e0626c2bacd7e44000000000 ,
    0x00000000640062006f005f005400610073006b00430061007400650067006f00 ,
    0x72007900000000000000958ecf7485eb1046a282e0ec36d55bdc0000000015c0 ,
    0x6c2bacd7e4400000000000000000640062006f005f005400610073006b004c00 ,
    0x690073007400000000000000d2d381ba93398a4283a6a9ed80a7b4be00000000 ,
    0xd477562bacd7e4400000000000000000640062006f005f00500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004800650061006400 ,
    0x6500720000000000000047d75b3dbd9bc248b9e4708446469758070000007579 ,
    0x8f6d5420ec4d9b4257135afeb60e530075006d004f00660054006f0074006100 ,
    0x6c00540069006d006500000000000000d95262d4b5d3d141b489e992c31c0c21 ,
    0x0700000075798f6d5420ec4d9b4257135afeb60e520061007400650000000000 ,
    0x0000ce205427018da54cbbe2ff94ac25bac00700000075798f6d5420ec4d9b42 ,
    0x57135afeb60e4e006500740043006f00730074000000000000006e0caee31efe ,
    0xba4d9f61a70621cee53407000000958ecf7485eb1046a282e0ec36d55bdc5400 ,
    0x610073006b0043006f0064006500000000000000a21dc4fed47c244fa08fb520 ,
    0x9ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d007000 ,
    0x6f006e0065006e0074004e0061006d006500000000000000bd7c039dd0cb8e49 ,
    0xa4e004c1cde3640c070000006f3bb368e5752447b9d750b069764fe143006f00 ,
    0x6d00700061006e00790045006d0070006c006f00790065006500490044000000 ,
    0x00000000006a9a68bf819947b96bb425e85d4130070000006f3bb368e5752447 ,
    0xb9d750b069764fe1500072006f006a0065006300740048006500610064006500 ,
    0x7200490044000000000000007dc9cca9f1ab4442af7851cbc5fe2e6b07000000 ,
    0x6f3bb368e5752447b9d750b069764fe1500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720049004400 ,
    0x0000000000003f6e2d1a2ab3744d8f458aff5492548d070000006f3bb368e575 ,
    0x2447b9d750b069764fe154006f00740061006c00540069006d00650000000000 ,
    0x00000978b754d9614a40ae9fe5e6c5d8d29e070000006f3bb368e5752447b9d7 ,
    0x50b069764fe14400650073006300720069007000740069006f006e0000000000 ,
    0x0000c4e059e768951544a1f3551c140594b6070000006f3bb368e5752447b9d7 ,
    0x50b069764fe1430061007400650067006f0072007900000000000000ff30bb80 ,
    0xa00dcd45b799ab9a676789e3070000006fbf99639a05b24a9b5a7b3b49d3791f ,
    0x440065006600610075006c00740043006f007300740050006500720048006f00 ,
    0x750072000000000000000843064c6dc842498c58d1809625bae107000000958e ,
    0xcf7485eb1046a282e0ec36d55bdc43006f007300740050006500720048006f00 ,
    0x7500720000000000000016b0fb1ca82beb4f95c89c91d588ba6407000000958e ,
    0xcf7485eb1046a282e0ec36d55bdc430061007400650067006f00720079004900 ,
    0x440000000000000046298f9267a8544db8d6ff79106e1140070000006fbf9963 ,
    0x9a05b24a9b5a7b3b49d3791f4900440000000000000027b3528a9810654e8513 ,
    0x689da75e7caa07000000958ecf7485eb1046a282e0ec36d55bdc490044000000 ,
    0x0000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Category"
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
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Description"
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
    Begin
        dbText "Name" ="SumOfTotalTime"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x47d75b3dbd9bc248b9e4708446469758
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =33
    Top =41
    Right =1748
    Bottom =850
    Left =-1
    Top =-1
    Right =1683
    Bottom =419
    Left =0
    Top =0
    ColumnsShown =543
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
        Right =1169
        Bottom =370
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
    Begin
        Left =556
        Top =291
        Right =700
        Bottom =435
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
    Begin
        Left =423
        Top =12
        Right =697
        Bottom =252
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
