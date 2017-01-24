Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployeeTask"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_TaskList"
    Name ="dbo_TaskCategory"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeTask.ID"
    Alias ="FullName"
    Expression ="[dbo_CompanyEmployee].[FN] & \" \" & [dbo_CompanyEmployee].[LN]"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_CompanyEmployeeTask.StartDate"
    Expression ="dbo_CompanyEmployeeTask.StartTime"
    Expression ="dbo_CompanyEmployeeTask.EndDate"
    Expression ="dbo_CompanyEmployeeTask.EndTime"
    Expression ="dbo_CompanyEmployeeTask.TotalTime"
    Expression ="dbo_CompanyEmployeeTask.Description"
    Expression ="dbo_TaskList.TaskCode"
    Expression ="dbo_TaskList.TaskDescription"
    Expression ="dbo_CompanyEmployeeTask.Notes"
    Expression ="dbo_CompanyEmployeeTask.StationID"
    Expression ="dbo_CompanyEmployeeTask.CATEGORY"
    Expression ="dbo_TaskCategory.TaskCategory"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
End
Begin Joins
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
    Flag =1
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_CompanyEmployeeTask.CompanyEmployeeID = dbo_CompanyEmployee.ID"
    Flag =1
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_TaskList"
    Expression ="dbo_CompanyEmployeeTask.Description = dbo_TaskList.ID"
    Flag =1
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_TaskCategory"
    Expression ="dbo_CompanyEmployeeTask.Category = dbo_TaskCategory.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xad9d3b404650604c9d59e847df2fa958
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f3bb368e5752447b9d750b069764fe1000000009d511b4c ,
    0x2de0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005400610073006b00000000000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c2de0e44000000000 ,
    0x00000000640062006f005f00500072006f006a00650063007400480065006100 ,
    0x640065007200000000000000bb4ee421343f624db77659eef5e022a100000000 ,
    0x76461f4c2de0e4400000000000000000640062006f005f0043006f006e007400 ,
    0x610063007400470065006e006500720061006c00000000000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be0000000096f8534c2de0e44000000000000000006400 ,
    0x62006f005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e00740048006500610064006500720000000000000039a4960a0ccbe542 ,
    0xab18e42cf68884fa00000000f162124c2de0e440000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x6500000000000000958ecf7485eb1046a282e0ec36d55bdc000000005394864c ,
    0x2de0e4400000000000000000640062006f005f005400610073006b004c006900 ,
    0x730074000000000000006fbf99639a05b24a9b5a7b3b49d3791f00000000b2d3 ,
    0x854c2de0e4400000000000000000640062006f005f005400610073006b004300 ,
    0x61007400650067006f0072007900000000000000cf0b2531ecab1d4bbfa4b55a ,
    0x537d47d807000000ad9d3b404650604c9d59e847df2fa958460075006c006c00 ,
    0x4e0061006d006500000000000000c60348f58698a643b526b15dad1ae3840700 ,
    0x00006f3bb368e5752447b9d750b069764fe149004400000000000000238a70cc ,
    0x04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x46004e0000000000000027afc0ba5db60e409636470e73e1fc430700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa4c004e00000000000000fde2928bbc55824d ,
    0x8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f00 ,
    0x6d0070004e0061006d0065000000000000001c9b84855b8f264abd34a504e56b ,
    0x05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a006500 ,
    0x630074004e0061006d006500000000000000a21dc4fed47c244fa08fb5209ebb ,
    0xfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f00 ,
    0x6e0065006e0074004e0061006d0065000000000000007e0339744e1b4647b8eb ,
    0xe6b7d60da102070000006f3bb368e5752447b9d750b069764fe1530074006100 ,
    0x720074004400610074006500000000000000cf3b52b65ba2514a80139d4c4072 ,
    0xb1a2070000006f3bb368e5752447b9d750b069764fe153007400610072007400 ,
    0x540069006d006500000000000000e906720f4427c1459a5df36cdf0b3ac60700 ,
    0x00006f3bb368e5752447b9d750b069764fe145006e0064004400610074006500 ,
    0x00000000000027ed0a61b8dbb8438c840661ac18cfe2070000006f3bb368e575 ,
    0x2447b9d750b069764fe145006e006400540069006d0065000000000000003f6e ,
    0x2d1a2ab3744d8f458aff5492548d070000006f3bb368e5752447b9d750b06976 ,
    0x4fe154006f00740061006c00540069006d0065000000000000000978b754d961 ,
    0x4a40ae9fe5e6c5d8d29e070000006f3bb368e5752447b9d750b069764fe14400 ,
    0x650073006300720069007000740069006f006e000000000000006e0caee31efe ,
    0xba4d9f61a70621cee53407000000958ecf7485eb1046a282e0ec36d55bdc5400 ,
    0x610073006b0043006f00640065000000000000009827e13285bb0a4e98d4106c ,
    0x65c0049a07000000958ecf7485eb1046a282e0ec36d55bdc5400610073006b00 ,
    0x4400650073006300720069007000740069006f006e00000000000000adb463ae ,
    0x94153e4b8e538a355aeff679070000006f3bb368e5752447b9d750b069764fe1 ,
    0x4e006f00740065007300000000000000c8e3c220ce2ec746b9fb1e1ee9ea4110 ,
    0x070000006f3bb368e5752447b9d750b069764fe1530074006100740069006f00 ,
    0x6e0049004400000000000000c4e059e768951544a1f3551c140594b607000000 ,
    0x6f3bb368e5752447b9d750b069764fe1430041005400450047004f0052005900 ,
    0x000000000000d2f1a09f98f39147bd88f13c6bafc211070000006fbf99639a05 ,
    0xb24a9b5a7b3b49d3791f5400610073006b00430061007400650067006f007200 ,
    0x7900000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074004e0075006d000000 ,
    0x00000000bd7c039dd0cb8e49a4e004c1cde3640c070000006f3bb368e5752447 ,
    0xb9d750b069764fe143006f006d00700061006e00790045006d0070006c006f00 ,
    0x79006500650049004400000000000000006a9a68bf819947b96bb425e85d4130 ,
    0x070000006f3bb368e5752447b9d750b069764fe1500072006f006a0065006300 ,
    0x74004800650061006400650072004900440000000000000004aeb2718000d24b ,
    0xb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a8049004400 ,
    0x0000000000008265226ce5165f4597f9cda188898d960700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8043006f006e007400610063007400470065006e006500 ,
    0x720061006c00490044000000000000001fc238e447652546a47f3ca6a0d889e4 ,
    0x07000000bb4ee421343f624db77659eef5e022a1490044000000000000007dc9 ,
    0xcca9f1ab4442af7851cbc5fe2e6b070000006f3bb368e5752447b9d750b06976 ,
    0x4fe1500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x74004800650061006400650072004900440000000000000029556c4fcc6de941 ,
    0x8049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be49004400 ,
    0x000000000000836b4761bb445b46b7a949192117f8700700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa4900440000000000000027b3528a9810654e8513689d ,
    0xa75e7caa07000000958ecf7485eb1046a282e0ec36d55bdc4900440000000000 ,
    0x000046298f9267a8544db8d6ff79106e1140070000006fbf99639a05b24a9b5a ,
    0x7b3b49d3791f4900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3b6c05d80a8e9443b0c28ad69ba324df
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d410e42c75d7841b1169971fc537adf
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcf9248733740684c9d43b7eb440cfb81
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x79524853645f094d8558af1d4e93ee6e
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ee043501674f242b3a8ba6703001169
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.TotalTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xad8e0e655dfd894cbd0f99e8f0d5cd07
        End
        dbInteger "ColumnWidth" ="2595"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80eb10fd3a6e9c4083ffd387e01e30be
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Notes"
        dbInteger "ColumnWidth" ="3885"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f5fff214ca4f246b3733d1518c681ce
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Category"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5dd2fcab1df02c4ca6fb2ce1b889ac60
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf1b7821631da1243b7e95f3bbccacdfc
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97b8a0e4f2b05448a3851c5e5a17deec
        End
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
        dbText "Name" ="FullName"
        dbInteger "ColumnWidth" ="2820"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcf0b2531ecab1d4bbfa4b55a537d47d8
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskCode"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =39
    Top =88
    Right =1553
    Bottom =859
    Left =-1
    Top =-1
    Right =1482
    Bottom =351
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =105
        Top =44
        Right =410
        Bottom =483
        Top =0
        Name ="dbo_CompanyEmployeeTask"
        Name =""
    End
    Begin
        Left =923
        Top =174
        Right =1106
        Bottom =375
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1253
        Top =205
        Right =1485
        Bottom =424
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =510
        Top =258
        Right =831
        Bottom =455
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =458
        Top =12
        Right =858
        Bottom =206
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =906
        Top =12
        Right =1050
        Bottom =156
        Top =0
        Name ="dbo_TaskList"
        Name =""
    End
    Begin
        Left =1098
        Top =12
        Right =1242
        Bottom =156
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
End
