Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployeeTask"
    Name ="dbo_TaskCategory"
    Name ="dbo_TaskList"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_Station"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeTask.ID"
    Alias ="EmployeeID"
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    Expression ="dbo_CompanyEmployeeTask.StartTime"
    Expression ="dbo_CompanyEmployeeTask.EndTime"
    Expression ="dbo_CompanyEmployeeTask.TotalTime"
    Expression ="dbo_CompanyEmployeeTask.Description"
    Expression ="dbo_TaskList.TaskDescription"
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
    Expression ="dbo_Station.StationName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
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
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_Station"
    Expression ="dbo_CompanyEmployeeTask.StationID = dbo_Station.id"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
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
    0x9f1e386ed380774c994734d054ab986e
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f3bb368e5752447b9d750b069764fe1000000001beb090d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005400610073006b00000000000000 ,
    0x6fbf99639a05b24a9b5a7b3b49d3791f00000000fb0aab0ecfe0e44000000000 ,
    0x00000000640062006f005f005400610073006b00430061007400650067006f00 ,
    0x72007900000000000000958ecf7485eb1046a282e0ec36d55bdc000000008888 ,
    0xaf0ecfe0e4400000000000000000640062006f005f005400610073006b004c00 ,
    0x69007300740000000000000039a4960a0ccbe542ab18e42cf68884fa00000000 ,
    0x4f96e40ccfe0e4400000000000000000640062006f005f0043006f006d007000 ,
    0x61006e00790045006d0070006c006f007900650065000000000000005f5d8649 ,
    0xd2e04846ac2d27b6a706a09000000000aa8f860ecfe0e4400000000000000000 ,
    0x640062006f005f00530074006100740069006f006e0000000000000035f87d9f ,
    0x0b136040ad3c2851f16d2a8000000000d8784d0ecfe0e4400000000000000000 ,
    0x640062006f005f00500072006f006a0065006300740048006500610064006500 ,
    0x7200000000000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000bb4ee421343f624db77659eef5e022a1000000006f48190dcfe0 ,
    0xe4400000000000000000640062006f005f0043006f006e007400610063007400 ,
    0x470065006e006500720061006c00000000000000a24dfbcffa91364cb712fb84 ,
    0xc7d6d117070000009f1e386ed380774c994734d054ab986e45006d0070006c00 ,
    0x6f0079006500650049004400000000000000d95262d4b5d3d141b489e992c31c ,
    0x0c21070000009f1e386ed380774c994734d054ab986e52006100740065000000 ,
    0x00000000ce205427018da54cbbe2ff94ac25bac0070000009f1e386ed380774c ,
    0x994734d054ab986e4e006500740043006f0073007400000000000000c60348f5 ,
    0x8698a643b526b15dad1ae384070000006f3bb368e5752447b9d750b069764fe1 ,
    0x49004400000000000000836b4761bb445b46b7a949192117f8700700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa49004400000000000000238a70cc04f1b542 ,
    0xbd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa46004e00 ,
    0x00000000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa4c004e000000000000006e0caee31efeba4d9f61a706 ,
    0x21cee53407000000958ecf7485eb1046a282e0ec36d55bdc5400610073006b00 ,
    0x43006f0064006500000000000000bd7c039dd0cb8e49a4e004c1cde3640c0700 ,
    0x00006f3bb368e5752447b9d750b069764fe143006f006d00700061006e007900 ,
    0x45006d0070006c006f0079006500650049004400000000000000006a9a68bf81 ,
    0x9947b96bb425e85d4130070000006f3bb368e5752447b9d750b069764fe15000 ,
    0x72006f006a006500630074004800650061006400650072004900440000000000 ,
    0x00007dc9cca9f1ab4442af7851cbc5fe2e6b070000006f3bb368e5752447b9d7 ,
    0x50b069764fe1500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e00740048006500610064006500720049004400000000000000cf3b52b6 ,
    0x5ba2514a80139d4c4072b1a2070000006f3bb368e5752447b9d750b069764fe1 ,
    0x53007400610072007400540069006d00650000000000000027ed0a61b8dbb843 ,
    0x8c840661ac18cfe2070000006f3bb368e5752447b9d750b069764fe145006e00 ,
    0x6400540069006d0065000000000000003f6e2d1a2ab3744d8f458aff5492548d ,
    0x070000006f3bb368e5752447b9d750b069764fe154006f00740061006c005400 ,
    0x69006d0065000000000000000978b754d9614a40ae9fe5e6c5d8d29e07000000 ,
    0x6f3bb368e5752447b9d750b069764fe144006500730063007200690070007400 ,
    0x69006f006e000000000000009827e13285bb0a4e98d4106c65c0049a07000000 ,
    0x958ecf7485eb1046a282e0ec36d55bdc5400610073006b004400650073006300 ,
    0x720069007000740069006f006e00000000000000adb463ae94153e4b8e538a35 ,
    0x5aeff679070000006f3bb368e5752447b9d750b069764fe14e006f0074006500 ,
    0x7300000000000000c4e059e768951544a1f3551c140594b6070000006f3bb368 ,
    0xe5752447b9d750b069764fe1430061007400650067006f007200790000000000 ,
    0x00007e0339744e1b4647b8ebe6b7d60da102070000006f3bb368e5752447b9d7 ,
    0x50b069764fe1530074006100720074004400610074006500000000000000e906 ,
    0x720f4427c1459a5df36cdf0b3ac6070000006f3bb368e5752447b9d750b06976 ,
    0x4fe145006e0064004400610074006500000000000000c8e3c220ce2ec746b9fb ,
    0x1e1ee9ea4110070000006f3bb368e5752447b9d750b069764fe1530074006100 ,
    0x740069006f006e0049004400000000000000ff30bb80a00dcd45b799ab9a6767 ,
    0x89e3070000006fbf99639a05b24a9b5a7b3b49d3791f44006500660061007500 ,
    0x6c00740043006f007300740050006500720048006f0075007200000000000000 ,
    0x0843064c6dc842498c58d1809625bae107000000958ecf7485eb1046a282e0ec ,
    0x36d55bdc43006f007300740050006500720048006f0075007200000000000000 ,
    0x2222effada5980429e1ee9ed0305beec070000005f5d8649d2e04846ac2d27b6 ,
    0xa706a090530074006100740069006f006e004e0061006d006500000000000000 ,
    0xfde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659ee ,
    0xf5e022a143006f006d0070004e0061006d0065000000000000001c9b84855b8f ,
    0x264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a805000 ,
    0x72006f006a006500630074004e0061006d006500000000000000a21dc4fed47c ,
    0x244fa08fb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be4300 ,
    0x6f006d0070006f006e0065006e0074004e0061006d00650000000000000016b0 ,
    0xfb1ca82beb4f95c89c91d588ba6407000000958ecf7485eb1046a282e0ec36d5 ,
    0x5bdc430061007400650067006f00720079004900440000000000000046298f92 ,
    0x67a8544db8d6ff79106e1140070000006fbf99639a05b24a9b5a7b3b49d3791f ,
    0x4900440000000000000027b3528a9810654e8513689da75e7caa07000000958e ,
    0xcf7485eb1046a282e0ec36d55bdc490044000000000000004d5252b332b7a74e ,
    0x8882d03c9dd04209070000005f5d8649d2e04846ac2d27b6a706a09069006400 ,
    0x00000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80490044000000000000008265226ce5165f4597f9cda1 ,
    0x88898d960700000035f87d9f0b136040ad3c2851f16d2a8043006f006e007400 ,
    0x610063007400470065006e006500720061006c00490044000000000000001fc2 ,
    0x38e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e0 ,
    0x22a14900440000000000000029556c4fcc6de9418049e37cebcb8ed307000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be49004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
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
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa24dfbcffa91364cb712fb84c7d6d117
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Station.StationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskDescription"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =252
    Top =8
    Right =1850
    Bottom =817
    Left =-1
    Top =-1
    Right =1566
    Bottom =419
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
        Left =691
        Top =47
        Right =835
        Bottom =191
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
    Begin
        Left =482
        Top =60
        Right =626
        Bottom =204
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
    Begin
        Left =593
        Top =228
        Right =737
        Bottom =372
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =428
        Top =221
        Right =572
        Bottom =365
        Top =0
        Name ="dbo_Station"
        Name =""
    End
    Begin
        Left =883
        Top =12
        Right =1056
        Bottom =156
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =827
        Top =180
        Right =1207
        Bottom =441
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1104
        Top =12
        Right =1248
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
