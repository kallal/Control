Operation =1
Option =0
Where ="(((dbo_CompanyEmployeeTask.CompanyEmployeeID)=flocSS(\"LoginID\")) AND ((dbo_Com"
    "panyEmployeeTask.StartTime) Is Not Null) AND ((dbo_CompanyEmployeeTask.EndTime) "
    "Is Null))"
Begin InputTables
    Name ="dbo_CompanyEmployeeTask"
    Name ="dbo_TaskList"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectComponentCategory"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeTask.ID"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    Expression ="dbo_CompanyEmployeeTask.StartTime"
    Expression ="dbo_CompanyEmployeeTask.EndTime"
    Expression ="dbo_CompanyEmployeeTask.TotalTime"
    Expression ="dbo_CompanyEmployeeTask.Description"
    Expression ="dbo_CompanyEmployeeTask.Notes"
    Expression ="dbo_CompanyEmployeeTask.Category"
    Expression ="dbo_CompanyEmployeeTask.StationID"
    Expression ="dbo_CompanyEmployeeTask.StartDate"
    Expression ="dbo_CompanyEmployeeTask.EndDate"
    Expression ="dbo_TaskList.TaskDescription"
    Alias ="EmployeeName"
    Expression ="[fn] & \" \" & [ln]"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentCategory.CategoryName"
    Alias ="InfoLine"
    Expression ="\"D\" & [dbo_projectheader].[docketnum] & \" : \" & [dbo_projectheader].[project"
        "name] & \" : \" & [dbo_projectComponentHeader].[componentName]"
    Expression ="dbo_TaskList.TaskDescription"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_TaskList"
    Expression ="dbo_CompanyEmployeeTask.Description = dbo_TaskList.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectComponentCategory"
    Expression ="dbo_CompanyEmployeeTask.Category = dbo_ProjectComponentCategory.ID"
    Flag =2
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
    0x5e3568ded4f1d1419d5c0d4bc8c90f27
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f3bb368e5752447b9d750b069764fe1000000005739026d ,
    0xcedae4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005400610073006b00000000000000 ,
    0x958ecf7485eb1046a282e0ec36d55bdc0000000094fe726dcedae44000000000 ,
    0x00000000640062006f005f005400610073006b004c0069007300740000000000 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa00000000a054fb6ccedae4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790045006d00 ,
    0x70006c006f0079006500650000000000000035f87d9f0b136040ad3c2851f16d ,
    0x2a8000000000ba0a506dcedae4400000000000000000640062006f005f005000 ,
    0x72006f006a00650063007400480065006100640065007200000000000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be0000000025f4346dcedae440000000000000 ,
    0x0000640062006f005f00500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e00740048006500610064006500720000000000000020a175c6 ,
    0xf3b3fb47987f9e0b2cad8609000000000cf92b6dcedae4400000000000000000 ,
    0x640062006f005f00500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e007400430061007400650067006f0072007900000000000000fb96 ,
    0x9fc741d777419135d1a18f0428b9070000005e3568ded4f1d1419d5c0d4bc8c9 ,
    0x0f2745006d0070006c006f007900650065004e0061006d006500000000000000 ,
    0x3c74cb3a256ce647bf15db8b0aca928b070000005e3568ded4f1d1419d5c0d4b ,
    0xc8c90f2749006e0066006f004c0069006e006500000000000000c60348f58698 ,
    0xa643b526b15dad1ae384070000006f3bb368e5752447b9d750b069764fe14900 ,
    0x4400000000000000bd7c039dd0cb8e49a4e004c1cde3640c070000006f3bb368 ,
    0xe5752447b9d750b069764fe143006f006d00700061006e00790045006d007000 ,
    0x6c006f0079006500650049004400000000000000006a9a68bf819947b96bb425 ,
    0xe85d4130070000006f3bb368e5752447b9d750b069764fe1500072006f006a00 ,
    0x650063007400480065006100640065007200490044000000000000007dc9cca9 ,
    0xf1ab4442af7851cbc5fe2e6b070000006f3bb368e5752447b9d750b069764fe1 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x48006500610064006500720049004400000000000000cf3b52b65ba2514a8013 ,
    0x9d4c4072b1a2070000006f3bb368e5752447b9d750b069764fe1530074006100 ,
    0x72007400540069006d00650000000000000027ed0a61b8dbb8438c840661ac18 ,
    0xcfe2070000006f3bb368e5752447b9d750b069764fe145006e00640054006900 ,
    0x6d0065000000000000003f6e2d1a2ab3744d8f458aff5492548d070000006f3b ,
    0xb368e5752447b9d750b069764fe154006f00740061006c00540069006d006500 ,
    0x0000000000000978b754d9614a40ae9fe5e6c5d8d29e070000006f3bb368e575 ,
    0x2447b9d750b069764fe14400650073006300720069007000740069006f006e00 ,
    0x000000000000adb463ae94153e4b8e538a355aeff679070000006f3bb368e575 ,
    0x2447b9d750b069764fe14e006f00740065007300000000000000c4e059e76895 ,
    0x1544a1f3551c140594b6070000006f3bb368e5752447b9d750b069764fe14300 ,
    0x61007400650067006f0072007900000000000000c8e3c220ce2ec746b9fb1e1e ,
    0xe9ea4110070000006f3bb368e5752447b9d750b069764fe15300740061007400 ,
    0x69006f006e00490044000000000000007e0339744e1b4647b8ebe6b7d60da102 ,
    0x070000006f3bb368e5752447b9d750b069764fe1530074006100720074004400 ,
    0x610074006500000000000000e906720f4427c1459a5df36cdf0b3ac607000000 ,
    0x6f3bb368e5752447b9d750b069764fe145006e00640044006100740065000000 ,
    0x000000009827e13285bb0a4e98d4106c65c0049a07000000958ecf7485eb1046 ,
    0xa282e0ec36d55bdc5400610073006b0044006500730063007200690070007400 ,
    0x69006f006e00000000000000238a70cc04f1b542bd79b33633915bc607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa66006e0000000000000027afc0ba5db6 ,
    0x0e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa6c00 ,
    0x6e00000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074004e0075006d000000 ,
    0x000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80500072006f006a006500630074004e0061006d0065000000 ,
    0x00000000a21dc4fed47c244fa08fb5209ebbfbc707000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be43006f006d0070006f006e0065006e0074004e0061006d00 ,
    0x650000000000000001f2df8beb89fb498a4c98e4d238dc310700000020a175c6 ,
    0xf3b3fb47987f9e0b2cad8609430061007400650067006f00720079004e006100 ,
    0x6d00650000000000000027b3528a9810654e8513689da75e7caa07000000958e ,
    0xcf7485eb1046a282e0ec36d55bdc49004400000000000000836b4761bb445b46 ,
    0xb7a949192117f8700700000039a4960a0ccbe542ab18e42cf68884fa49004400 ,
    0x00000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a804900440000000000000029556c4fcc6de9418049e37c ,
    0xebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be4900440000000000 ,
    0x0000cbc3b7fb3a6f6342b38755842860539c0700000020a175c6f3b3fb47987f ,
    0x9e0b2cad86094900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
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
        dbText "Name" ="dbo_CompanyEmployeeTask.EndTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.TotalTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartTime"
        dbLong "AggregateType" ="-1"
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
        dbText "Name" ="dbo_CompanyEmployeeTask.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EmployeeName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb969fc741d777419135d1a18f0428b9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCategory.CategoryName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="InfoLine"
        dbInteger "ColumnWidth" ="10155"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3c74cb3a256ce647bf15db8b0aca928b
        End
    End
    Begin
        dbText "Name" ="Expr1013"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =51
    Top =58
    Right =1649
    Bottom =721
    Left =-1
    Top =-1
    Right =1566
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =419
        Bottom =456
        Top =0
        Name ="dbo_CompanyEmployeeTask"
        Name =""
    End
    Begin
        Left =467
        Top =12
        Right =611
        Bottom =156
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
    Begin
        Left =659
        Top =12
        Right =803
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =480
        Top =213
        Right =938
        Bottom =477
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1043
        Top =12
        Right =1357
        Bottom =300
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =740
        Top =111
        Right =1004
        Bottom =258
        Top =0
        Name ="dbo_ProjectComponentCategory"
        Name =""
    End
End
