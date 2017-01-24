Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactHistory"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactLocation"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactHistory.*"
    Alias ="Employee"
    Expression ="[dbo_CompanyEmployee].[fn] & \" \" & [dbo_companyemployee].[ln]"
    Expression ="dbo_ContactGeneral.compname"
    Expression ="dbo_ContactLocation.LocationName"
    Alias ="ContactName"
    Expression ="[dbo_ContactName].[fn] & \" \" & [dbo_contactname].[ln]"
    Expression ="dbo_ProjectHeader.ProjectName"
End
Begin Joins
    LeftTable ="dbo_ContactHistory"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactHistory.CompanyEmployeeID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ContactHistory"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactHistory.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ContactHistory"
    RightTable ="dbo_ContactLocation"
    Expression ="dbo_ContactHistory.ContactLocationID = dbo_ContactLocation.ID"
    Flag =2
    LeftTable ="dbo_ContactHistory"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ContactHistory.ContactNameID = dbo_ContactName.ID"
    Flag =2
    LeftTable ="dbo_ContactHistory"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ContactHistory.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x65091869d8e1c74ebd94b07c4c567927
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006dcb154d71de5a4c9b1176ec023ce7f3000000001a64b9df ,
    0xf262e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x740048006900730074006f0072007900000000000000431c785ce507fd4487a1 ,
    0x822c7cd25c6600000000f81bb2dff262e4400000000000000000640062006f00 ,
    0x5f0043006f006d00700061006e00790045006d0070006c006f00790065006500 ,
    0x000000000000d7c549c33168bc4ab70151c855c0b6b9000000000c97b8dff262 ,
    0xe4400000000000000000640062006f005f0043006f006e007400610063007400 ,
    0x470065006e006500720061006c000000000000003df7a9feef9a5149845d7859 ,
    0x6be4e62d00000000de62badff262e4400000000000000000640062006f005f00 ,
    0x43006f006e0074006100630074004c006f0063006100740069006f006e000000 ,
    0x00000000fe926418f32ed843874a57f371c555c7000000002025ecdff262e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004800 ,
    0x65006100640065007200000000000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x00000000a261bbdff262e4400000000000000000640062006f005f0043006f00 ,
    0x6e0074006100630074004e0061006d00650000000000000035274a8030a94d40 ,
    0x9d254f8484f6e8f70700000065091869d8e1c74ebd94b07c4c56792745006d00 ,
    0x70006c006f007900650065000000000000004ac644fc6836ac43b2a83bad5a75 ,
    0x2d710700000065091869d8e1c74ebd94b07c4c56792743006f006e0074006100 ,
    0x630074004e0061006d0065000000000000002b42c8be7cfa534a8515b53e5020 ,
    0x9ccf07000000431c785ce507fd4487a1822c7cd25c6666006e00000000000000 ,
    0x6ee7053a7af8f44c9a585dba8febe06007000000431c785ce507fd4487a1822c ,
    0x7cd25c666c006e00000000000000124b02a694dd0e4c96264abff25831270700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b963006f006d0070006e0061006d00 ,
    0x6500000000000000064d0e09833efc44b077db645332d810070000003df7a9fe ,
    0xef9a5149845d78596be4e62d4c006f0063006100740069006f006e004e006100 ,
    0x6d00650000000000000008ae9e11739f3544a2d99be00a23adf107000000b1df ,
    0xd77f67641a4a8c10df9ef7c3596366006e0000000000000008374dd34b155c49 ,
    0xbe4fe6c2125378e407000000b1dfd77f67641a4a8c10df9ef7c359636c006e00 ,
    0x000000000000ab2bd0a18191ef46b6c770f2b1812fa607000000fe926418f32e ,
    0xd843874a57f371c555c7500072006f006a006500630074004e0061006d006500 ,
    0x000000000000ed5ce883fe440f4e9bdd0126be63b699070000006dcb154d71de ,
    0x5a4c9b1176ec023ce7f343006f006d00700061006e00790045006d0070006c00 ,
    0x6f0079006500650049004400000000000000c6c54d8e9dff594db3e19de4c2b5 ,
    0x73f507000000431c785ce507fd4487a1822c7cd25c6649004400000000000000 ,
    0xdc458db0e4007b42a5ee64328e34aaea070000006dcb154d71de5a4c9b1176ec ,
    0x023ce7f343006f006e007400610063007400470065006e006500720061006c00 ,
    0x4900440000000000000003933b4b9f324445a82e368651b1052b07000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b9490044000000000000009481fd968548ae40 ,
    0xa7b4320dbe7bd81c070000006dcb154d71de5a4c9b1176ec023ce7f343006f00 ,
    0x6e0074006100630074004c006f0063006100740069006f006e00490044000000 ,
    0x000000007484d78ae736d34187337f6e21dbede4070000003df7a9feef9a5149 ,
    0x845d78596be4e62d49004400000000000000d079b0b39ecaec429d1c5c92bbf3 ,
    0x4ec9070000006dcb154d71de5a4c9b1176ec023ce7f343006f006e0074006100 ,
    0x630074004e0061006d00650049004400000000000000e0b7aa1a6ad583458652 ,
    0x16cdf3cbec4e07000000b1dfd77f67641a4a8c10df9ef7c35963490044000000 ,
    0x00000000d80450f4b7be514191a8c748d6b12308070000006dcb154d71de5a4c ,
    0x9b1176ec023ce7f3500072006f006a0065006300740048006500610064006500 ,
    0x7200490044000000000000006f7f02ef6df8574092eeeafb278f50ec07000000 ,
    0xfe926418f32ed843874a57f371c555c749004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="Employee"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x35274a8030a94d409d254f8484f6e8f7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.compname"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ContactName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4ac644fc6836ac43b2a83bad5a752d71
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.DateStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ContactLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ContactNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.NoteType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.Note"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ComputerHostName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ComputerNetworkName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =337
    Top =134
    Right =1844
    Bottom =862
    Left =-1
    Top =-1
    Right =1475
    Bottom =394
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =385
        Bottom =353
        Top =0
        Name ="dbo_ContactHistory"
        Name =""
    End
    Begin
        Left =433
        Top =12
        Right =641
        Bottom =187
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =669
        Top =8
        Right =813
        Bottom =136
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =816
        Top =10
        Right =990
        Bottom =192
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
    Begin
        Left =1081
        Top =91
        Right =1347
        Bottom =336
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =478
        Top =130
        Right =622
        Bottom =274
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
