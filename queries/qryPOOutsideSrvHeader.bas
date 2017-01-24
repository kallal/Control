Operation =1
Option =0
Having ="(((dbo_ProjectHeader.DocketNum) Is Not Null))"
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="tmpPurchasingStock"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectComponentStock.VendorID"
    Expression ="dbo_ProjectComponentStock.VendorNameID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectComponentStock.OrderByID"
    Expression ="dbo_ProjectComponentStock.OrderDate"
    Expression ="dbo_ContactName.PhFax"
    Expression ="dbo_ContactName.PhDirect"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ProjectComponentStock.ExpectedDate"
    Expression ="dbo_ProjectComponentStock.PurchaseManifest"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectComponentStock.VendorID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="tmpPurchasingStock"
    Expression ="dbo_ProjectComponentStock.ID = tmpPurchasingStock.PurchasingStockID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectComponentStock.VendorNameID = dbo_ContactName.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.DocketNum"
    Flag =0
End
Begin Groups
    Expression ="dbo_ProjectHeader.DocketNum"
    GroupLevel =0
    Expression ="dbo_ProjectComponentStock.VendorID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentStock.VendorNameID"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.CompName"
    GroupLevel =0
    Expression ="dbo_ProjectComponentStock.OrderByID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentStock.OrderDate"
    GroupLevel =0
    Expression ="dbo_ContactName.PhFax"
    GroupLevel =0
    Expression ="dbo_ContactName.PhDirect"
    GroupLevel =0
    Expression ="dbo_ContactName.Email"
    GroupLevel =0
    Expression ="dbo_ProjectComponentStock.ExpectedDate"
    GroupLevel =0
    Expression ="dbo_ProjectComponentStock.PurchaseManifest"
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
    0x95bfef2b79b50041baf17d1b79cd063a
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f67273591c9bc4a96e5e29a333a483d00000000236addc0 ,
    0xea62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6dec62e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000fe926418f32ed843874a57f371c555c7000000009b2fba6dec62e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000d7c549c33168bc4ab70151c855c0b6b90000 ,
    0x0000bad9a96dec62e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000ee18d1f0 ,
    0xdb51cf44bb600aba260292250000000078217f6dec62e4400000000000000000 ,
    0x74006d007000500075007200630068006100730069006e006700530074006f00 ,
    0x63006b00000000000000b1dfd77f67641a4a8c10df9ef7c35963000000008ffd ,
    0xa2c0ea62e4400000000000000000640062006f005f0043006f006e0074006100 ,
    0x630074004e0061006d006500000000000000d9cb95bb9ff0b84fa39eeda59762 ,
    0x82d607000000fe926418f32ed843874a57f371c555c744006f0063006b006500 ,
    0x74004e0075006d00000000000000c27c91c97cd4534cb3d50aea6815a2cf0700 ,
    0x00006f67273591c9bc4a96e5e29a333a483d560065006e0064006f0072004900 ,
    0x440000000000000041d27bcd3e4b23408a436194a079ae04070000006f672735 ,
    0x91c9bc4a96e5e29a333a483d560065006e0064006f0072004e0061006d006500 ,
    0x49004400000000000000124b02a694dd0e4c96264abff258312707000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b943006f006d0070004e0061006d0065000000 ,
    0x00000000b489b6df9e1591449710f18cddc44402070000006f67273591c9bc4a ,
    0x96e5e29a333a483d4f0072006400650072004200790049004400000000000000 ,
    0xe1361ae240a6d847abaee411383181ee070000006f67273591c9bc4a96e5e29a ,
    0x333a483d4f00720064006500720044006100740065000000000000008d151972 ,
    0x2e0ae547b58fd773269702dc07000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x5000680046006100780000000000000008a34d34695a5d4c8d9e55b7d6ce6a1d ,
    0x07000000b1dfd77f67641a4a8c10df9ef7c35963500068004400690072006500 ,
    0x6300740000000000000022d2565f36f8c84b9b24820401a2dee107000000b1df ,
    0xd77f67641a4a8c10df9ef7c3596345006d00610069006c00000000000000015b ,
    0x4fdcf24e5c49acdf0bbce7945cd9070000006f67273591c9bc4a96e5e29a333a ,
    0x483d450078007000650063007400650064004400610074006500000000000000 ,
    0xef2b9f85565ae246a03f8219fd888c1b070000006f67273591c9bc4a96e5e29a ,
    0x333a483d500075007200630068006100730065004d0061006e00690066006500 ,
    0x730074000000000000008a78109159af564499df6242c38f60dc070000006f67 ,
    0x273591c9bc4a96e5e29a333a483d500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e00740049004400000000000000118be950d6697443 ,
    0x8268ddc04c06af1a070000000e7a128852f41a47b128e4f3b41e4fb449004400 ,
    0x000000000000873fed1bdd4daf46b59105d9e5c28c31070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4500072006f006a006500630074004800650061006400 ,
    0x65007200490044000000000000006f7f02ef6df8574092eeeafb278f50ec0700 ,
    0x0000fe926418f32ed843874a57f371c555c74900440000000000000003933b4b ,
    0x9f324445a82e368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b9 ,
    0x490044000000000000006f29c84f994b8b49a65b10340cdadb94070000006f67 ,
    0x273591c9bc4a96e5e29a333a483d490044000000000000001ac0aa73d1c26248 ,
    0x880022383b640cc707000000ee18d1f0db51cf44bb600aba2602922550007500 ,
    0x7200630068006100730069006e006700530074006f0063006b00490044000000 ,
    0x00000000e0b7aa1a6ad58345865216cdf3cbec4e07000000b1dfd77f67641a4a ,
    0x8c10df9ef7c35963490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.VendorNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.OrderByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.OrderDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PurchaseManifest"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhDirect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhFax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =35
    Top =135
    Right =1378
    Bottom =790
    Left =-1
    Top =-1
    Right =1311
    Bottom =266
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =344
        Bottom =309
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =1059
        Top =27
        Right =1353
        Bottom =187
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =831
        Top =5
        Right =1103
        Bottom =281
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =617
        Top =53
        Right =818
        Bottom =307
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =449
        Top =23
        Right =593
        Bottom =167
        Top =0
        Name ="tmpPurchasingStock"
        Name =""
    End
    Begin
        Left =392
        Top =168
        Right =639
        Bottom =317
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
