Operation =1
Option =0
Having ="(((Month([QuoteDate]) & Year([quotedate]))=\"12014\"))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectStatus"
    Name ="qryRptSalesHeader_SellforSum"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ContactGeneral.CompName"
    Alias ="NumProjects"
    Expression ="DCount(\"[id]\",\"dbo_ProjectHeader\",\"[ContactGeneralID] = \" & [dbo_projectHe"
        "ader].[contactGeneralID] & \" AND month(quotedate) & year(Quotedate) = '12014'\""
        ")"
    Alias ="NumComponents"
    Expression ="Count(dbo_ProjectComponentHeader.ID)"
    Alias ="TotalAmt"
    Expression ="Sum(qryRptSalesHeader_SellforSum.sellfor)"
    Alias ="QuoteMY"
    Expression ="Month([QuoteDate]) & Year([quotedate])"
    Alias ="TotalDkt"
    Expression ="Sum(IIf(Nz([DocketNum],0)>0,[sellfor],0))"
    Alias ="Total_11"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=11,[sellfor],0))"
    Alias ="Total_12"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=12,[sellfor],0))"
    Alias ="Total_14"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=14,[sellfor],0))"
    Alias ="Total_15"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=15,[sellfor],0))"
    Alias ="Total_16"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=16,[sellfor],0))"
    Alias ="Total_17"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=17,[sellfor],0))"
    Alias ="Total_18"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=18,[sellfor],0))"
    Alias ="Total_19"
    Expression ="Sum(IIf(Nz([ProjectStatusID],0)=19,[sellfor],0))"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectStatus"
    Expression ="dbo_ProjectHeader.ProjectStatusID = dbo_ProjectStatus.ID"
    Flag =3
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptSalesHeader_SellforSum"
    Expression ="dbo_ProjectHeader.ID = qryRptSalesHeader_SellforSum.ProjectHeaderID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
Begin Groups
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.CompName"
    GroupLevel =0
    Expression ="DCount(\"[id]\",\"dbo_ProjectHeader\",\"[ContactGeneralID] = \" & [dbo_projectHe"
        "ader].[contactGeneralID] & \" AND month(quotedate) & year(Quotedate) = '12014'\""
        ")"
    GroupLevel =0
    Expression ="Month([QuoteDate]) & Year([quotedate])"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4424f2eba8426c4f857d752f461dae31
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x74004800650061006400650072000000000000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4000000001c04ba6dec62e4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x4800650061006400650072000000000000003d76a6fcd0ab0c488e338ff5befc ,
    0x32110000000004b6e6c0ea62e4400000000000000000640062006f005f005000 ,
    0x72006f006a006500630074005300740061007400750073000000000000005b08 ,
    0x3f7056ff724f87556f9a4773200e0000000068821dde3161e440000000000000 ,
    0x0000710072007900520070007400530061006c00650073004800650061006400 ,
    0x650072005f00530065006c006c0066006f007200530075006d00000000000000 ,
    0xd7c549c33168bc4ab70151c855c0b6b900000000bad9a96dec62e44000000000 ,
    0x00000000640062006f005f0043006f006e007400610063007400470065006e00 ,
    0x6500720061006c000000000000008ae1eec0493646489f0bbad0af80a2210700 ,
    0x0000000000000000000000000000000000004e0075006d00500072006f006a00 ,
    0x6500630074007300000000000000546867721974c740938deea20835d5560700 ,
    0x0000000000000000000000000000000000004e0075006d0043006f006d007000 ,
    0x6f006e0065006e0074007300000000000000742f1363c470b547b26a95d1e168 ,
    0x198f070000000000000000000000000000000000000054006f00740061006c00 ,
    0x41006d00740000000000000080fb1f144cbe2e0038be2e004810c50407000000 ,
    0x00000000000000000000000000000000510075006f00740065004d0059000000 ,
    0x0000000015297274e2ab23479a8258e87974e736070000000000000000000000 ,
    0x000000000000000054006f00740061006c0044006b0074000000000000006a07 ,
    0xdafe23d57f40a37666f4bac28279070000000000000000000000000000000000 ,
    0x000054006f00740061006c005f0031003100000000000000367c2c90ae5c394b ,
    0xb833383740827fbe070000000000000000000000000000000000000054006f00 ,
    0x740061006c005f003100320000000000000086d6ddde541cf54299efeba4fcad ,
    0x1164070000000000000000000000000000000000000054006f00740061006c00 ,
    0x5f003100340000000000000076f051d90f26774ca3ccc2c06119516807000000 ,
    0x0000000000000000000000000000000054006f00740061006c005f0031003500 ,
    0x000000000000e0bb8b6498c84d45815f607eec5404db07000000000000000000 ,
    0x0000000000000000000054006f00740061006c005f0031003600000000000000 ,
    0x7dc3fcf0ab8b4f4d9c9ab122ab64358007000000000000000000000000000000 ,
    0x0000000054006f00740061006c005f0031003700000000000000ca5f5abddcff ,
    0xb3488e553953a1b5d53e07000000000000000000000000000000000000005400 ,
    0x6f00740061006c005f0031003800000000000000001f5f50be08264b9d30a1ba ,
    0x43373ec8070000000000000000000000000000000000000054006f0074006100 ,
    0x6c005f003100390000000000000089ff919c8c2cb04795bac03adb5478450700 ,
    0x0000fe926418f32ed843874a57f371c555c743006f006e007400610063007400 ,
    0x470065006e006500720061006c0049004400000000000000124b02a694dd0e4c ,
    0x96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b943006f00 ,
    0x6d0070004e0061006d006500000000000000118be950d66974438268ddc04c06 ,
    0xaf1a070000000e7a128852f41a47b128e4f3b41e4fb449004400000000000000 ,
    0xb0bd0eeaaff55740a5eb393481fda4f4070000005b083f7056ff724f87556f9a ,
    0x4773200e730065006c006c0066006f007200000000000000cde5f4b6e9709a48 ,
    0xa8d65c21a2340cb607000000fe926418f32ed843874a57f371c555c751007500 ,
    0x6f00740065004400610074006500000000000000d9cb95bb9ff0b84fa39eeda5 ,
    0x976282d607000000fe926418f32ed843874a57f371c555c744006f0063006b00 ,
    0x650074004e0075006d00000000000000673d52f2b5bccc4d948b1dfe92c904e0 ,
    0x07000000fe926418f32ed843874a57f371c555c7500072006f006a0065006300 ,
    0x740053007400610074007500730049004400000000000000873fed1bdd4daf46 ,
    0xb59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb450007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x6f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843874a57f3 ,
    0x71c555c749004400000000000000a7371897b623d040b1cd05dd76dc65c30700 ,
    0x00003d76a6fcd0ab0c488e338ff5befc3211490044000000000000004a5eec03 ,
    0xf45e6e4997b2fc833d2a0514070000005b083f7056ff724f87556f9a4773200e ,
    0x500072006f006a00650063007400480065006100640065007200490044000000 ,
    0x0000000003933b4b9f324445a82e368651b1052b07000000d7c549c33168bc4a ,
    0xb70151c855c0b6b9490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa802da7b854e1a4b8296a66eda53f99d
        End
    End
    Begin
        dbText "Name" ="NumComponents"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x546867721974c740938deea20835d556
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="3330"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x55fd3f8813765f408afcc475e7a45e13
        End
    End
    Begin
        dbText "Name" ="QuoteMY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80fb1f144cbe2e0038be2e004810c504
        End
    End
    Begin
        dbText "Name" ="Total_11"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a07dafe23d57f40a37666f4bac28279
        End
    End
    Begin
        dbText "Name" ="TotalAmt"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x742f1363c470b547b26a95d1e168198f
        End
    End
    Begin
        dbText "Name" ="TotalDkt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15297274e2ab23479a8258e87974e736
        End
    End
    Begin
        dbText "Name" ="NumProjects"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x8ae1eec0493646489f0bbad0af80a221
        End
    End
    Begin
        dbText "Name" ="Total_12"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x367c2c90ae5c394bb833383740827fbe
        End
    End
    Begin
        dbText "Name" ="Total_14"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x86d6ddde541cf54299efeba4fcad1164
        End
    End
    Begin
        dbText "Name" ="Total_15"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x76f051d90f26774ca3ccc2c061195168
        End
    End
    Begin
        dbText "Name" ="Total_16"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe0bb8b6498c84d45815f607eec5404db
        End
    End
    Begin
        dbText "Name" ="Total_17"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7dc3fcf0ab8b4f4d9c9ab122ab643580
        End
    End
    Begin
        dbText "Name" ="Total_18"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca5f5abddcffb3488e553953a1b5d53e
        End
    End
    Begin
        dbText "Name" ="Total_19"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x001f5f50be08264b9d30a1ba43373ec8
        End
    End
End
Begin
    State =0
    Left =13
    Top =69
    Right =1503
    Bottom =744
    Left =-1
    Top =-1
    Right =1458
    Bottom =340
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =275
        Bottom =320
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =345
        Top =2
        Right =582
        Bottom =304
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =613
        Top =139
        Right =757
        Bottom =283
        Top =0
        Name ="dbo_ProjectStatus"
        Name =""
    End
    Begin
        Left =946
        Top =92
        Right =1090
        Bottom =236
        Top =0
        Name ="qryRptSalesHeader_SellforSum"
        Name =""
    End
    Begin
        Left =698
        Top =23
        Right =842
        Bottom =167
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
