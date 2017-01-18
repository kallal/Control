Operation =1
Option =0
Where ="(((dbo_CompanyEmployeeShift.ShiftBegin) Is Not Null) AND ((dbo_CompanyEmployeeTa"
    "sk.EndTime) Is Null) AND ((dbo_CompanyEmployeeShift.ShiftEnd) Is Null))"
Begin InputTables
    Name ="dbo_CompanyEmployeeShift"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyEmployeeTask"
    Name ="dbo_Station"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Alias ="Fullname"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Expression ="dbo_CompanyEmployeeShift.ShiftBegin"
    Expression ="dbo_CompanyEmployeeShift.StationID"
    Expression ="dbo_CompanyEmployeeTask.Description"
    Expression ="dbo_CompanyEmployeeTask.StartDate"
    Expression ="dbo_CompanyEmployeeTask.StartTime"
    Expression ="dbo_CompanyEmployeeTask.EndDate"
    Expression ="dbo_CompanyEmployeeTask.EndTime"
    Alias ="ElapsedTime"
    Expression ="(Time()*24)-([starttime]*24)"
    Expression ="dbo_Station.StationName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Alias ="ShiftElapsedTime"
    Expression ="(Now()*24)-([shiftBegin]*24)"
    Expression ="dbo_ProjectHeader.DocketNum"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyEmployeeShift"
    Expression ="dbo_CompanyEmployee.ID = dbo_CompanyEmployeeShift.CompanyEmployeeID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeShift"
    RightTable ="dbo_CompanyEmployeeTask"
    Expression ="dbo_CompanyEmployeeShift.StationID = dbo_CompanyEmployeeTask.StationID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeShift"
    RightTable ="dbo_CompanyEmployeeTask"
    Expression ="dbo_CompanyEmployeeShift.CompanyEmployeeID = dbo_CompanyEmployeeTask.CompanyEmpl"
        "oyeeID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_Station"
    Expression ="dbo_CompanyEmployeeTask.StationID = dbo_Station.id"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_CompanyEmployeeTask.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeTask"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.CompanyID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x1e5d8c421804404b97e0526aa170f05e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000002e9a16c95eed734ab40ee4411d97821800000000627e46da ,
    0x8da5e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005300680069006600740000000000 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa000000003d1243da8da5e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790045006d00 ,
    0x70006c006f007900650065000000000000006f3bb368e5752447b9d750b06976 ,
    0x4fe1000000006ea247da8da5e4400000000000000000640062006f005f004300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650054006100 ,
    0x73006b000000000000005f5d8649d2e04846ac2d27b6a706a090000000004dd2 ,
    0x99da8da5e4400000000000000000640062006f005f0053007400610074006900 ,
    0x6f006e0000000000000035f87d9f0b136040ad3c2851f16d2a80000000001b8f ,
    0x8eda8da5e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x63007400480065006100640065007200000000000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be00000000c3fe27de8da5e4400000000000000000640062006f00 ,
    0x5f00500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a100000000c86b4bda8da5e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x00001321f37a5724f6499d8118ed4c58f541070000001e5d8c421804404b97e0 ,
    0x526aa170f05e460075006c006c006e0061006d006500000000000000aa588d26 ,
    0x946af843be110496c2267765070000001e5d8c421804404b97e0526aa170f05e ,
    0x45006c0061007000730065006400540069006d006500000000000000695975d8 ,
    0xfc36a74a8b333ee9ce63c9a8070000001e5d8c421804404b97e0526aa170f05e ,
    0x5300680069006600740045006c0061007000730065006400540069006d006500 ,
    0x000000000000238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa66006e0000000000000027afc0ba5db60e409636470e ,
    0x73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa6c006e0000000000 ,
    0x0000f5c7b2c66302704bbc3dfab8d5ea0b53070000002e9a16c95eed734ab40e ,
    0xe4411d9782185300680069006600740042006500670069006e00000000000000 ,
    0x0dc8963d4130514bbf2a4c64cb680632070000002e9a16c95eed734ab40ee441 ,
    0x1d978218530074006100740069006f006e00490044000000000000000978b754 ,
    0xd9614a40ae9fe5e6c5d8d29e070000006f3bb368e5752447b9d750b069764fe1 ,
    0x4400650073006300720069007000740069006f006e000000000000007e033974 ,
    0x4e1b4647b8ebe6b7d60da102070000006f3bb368e5752447b9d750b069764fe1 ,
    0x530074006100720074004400610074006500000000000000cf3b52b65ba2514a ,
    0x80139d4c4072b1a2070000006f3bb368e5752447b9d750b069764fe153007400 ,
    0x610072007400540069006d006500000000000000e906720f4427c1459a5df36c ,
    0xdf0b3ac6070000006f3bb368e5752447b9d750b069764fe145006e0064004400 ,
    0x61007400650000000000000027ed0a61b8dbb8438c840661ac18cfe207000000 ,
    0x6f3bb368e5752447b9d750b069764fe145006e006400540069006d0065000000 ,
    0x000000002222effada5980429e1ee9ed0305beec070000005f5d8649d2e04846 ,
    0xac2d27b6a706a090530074006100740069006f006e004e0061006d0065000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d006500000000000000a21d ,
    0xc4fed47c244fa08fb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be43006f006d0070006f006e0065006e0074004e0061006d00650000000000 ,
    0x0000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8044006f0063006b00650074004e0075006d00000000000000836b ,
    0x4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa490044000000000000002a97099fbd408749830c46c1537f2fb407000000 ,
    0x2e9a16c95eed734ab40ee4411d97821843006f006d00700061006e0079004500 ,
    0x6d0070006c006f0079006500650049004400000000000000c8e3c220ce2ec746 ,
    0xb9fb1e1ee9ea4110070000006f3bb368e5752447b9d750b069764fe153007400 ,
    0x6100740069006f006e0049004400000000000000bd7c039dd0cb8e49a4e004c1 ,
    0xcde3640c070000006f3bb368e5752447b9d750b069764fe143006f006d007000 ,
    0x61006e00790045006d0070006c006f0079006500650049004400000000000000 ,
    0x4d5252b332b7a74e8882d03c9dd04209070000005f5d8649d2e04846ac2d27b6 ,
    0xa706a09069006400000000000000006a9a68bf819947b96bb425e85d41300700 ,
    0x00006f3bb368e5752447b9d750b069764fe1500072006f006a00650063007400 ,
    0x4800650061006400650072004900440000000000000004aeb2718000d24bb73b ,
    0x562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80490044000000 ,
    0x000000007dc9cca9f1ab4442af7851cbc5fe2e6b070000006f3bb368e5752447 ,
    0xb9d750b069764fe1500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e007400480065006100640065007200490044000000000000002955 ,
    0x6c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be490044000000000000002ec1cc8ae91cb541b85d1edb0463fc7f07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8043006f006d00700061006e0079004900 ,
    0x44000000000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421 ,
    0x343f624db77659eef5e022a149004400000000000000ac84d60abf4c314c8c0f ,
    0xf1eba4bac623070000002e9a16c95eed734ab40ee4411d978218530068006900 ,
    0x6600740045006e00640000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="Fullname"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1321f37a5724f6499d8118ed4c58f541
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftBegin"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57bcc382a00706438b15f887cb2f152d
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbbceb8f9e0032740ac6dc0f70b71b932
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5cf848e1f38a974ca0690cc2ea150f11
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7fa4119839e5a243b321c452a2c33fd1
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.StartTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcd0076b02b92bb47bbee7afe0354c402
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3524d451bde1754cbe9f48adb1c8225d
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.EndTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00fcb2a789368944b9216667cac68d18
        End
    End
    Begin
        dbText "Name" ="ElapsedTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa588d26946af843be110496c2267765
        End
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Station.StationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ShiftElapsedTime"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x695975d8fc36a74a8b333ee9ce63c9a8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-278
    Top =109
    Right =1316
    Bottom =928
    Left =-1
    Top =-1
    Right =1562
    Bottom =395
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =355
        Top =79
        Right =681
        Bottom =223
        Top =0
        Name ="dbo_CompanyEmployeeShift"
        Name =""
    End
    Begin
        Left =62
        Top =65
        Right =296
        Bottom =415
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =729
        Top =12
        Right =1112
        Bottom =438
        Top =0
        Name ="dbo_CompanyEmployeeTask"
        Name =""
    End
    Begin
        Left =1154
        Top =262
        Right =1298
        Bottom =406
        Top =0
        Name ="dbo_Station"
        Name =""
    End
    Begin
        Left =1160
        Top =12
        Right =1383
        Bottom =156
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1375
        Top =204
        Right =1519
        Bottom =348
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1446
        Top =17
        Right =1590
        Bottom =161
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
