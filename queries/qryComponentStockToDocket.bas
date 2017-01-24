Operation =1
Option =2
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.PurchaseManifest"
    Expression ="dbo_ProjectHeader.DocketNum"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =1
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbMemo "OrderBy" ="[qryComponentStockToDocket].[PurchaseManifest] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4403a2d4eb20594faba742eae7f17a83
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "PublishToWeb" ="1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006f67273591c9bc4a96e5e29a333a483d00000000a2a1584c ,
    0xfd62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x000000000e7a128852f41a47b128e4f3b41e4fb40000000087784c4cfd62e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000fe926418f32ed843874a57f371c555c70000000090075c4cfd62e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000ef2b9f85565ae246a03f8219fd888c1b0700 ,
    0x00006f67273591c9bc4a96e5e29a333a483d5000750072006300680061007300 ,
    0x65004d0061006e0069006600650073007400000000000000d9cb95bb9ff0b84f ,
    0xa39eeda5976282d607000000fe926418f32ed843874a57f371c555c744006f00 ,
    0x63006b00650074004e0075006d000000000000008a78109159af564499df6242 ,
    0xc38f60dc070000006f67273591c9bc4a96e5e29a333a483d500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004900440000000000 ,
    0x0000118be950d66974438268ddc04c06af1a070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb449004400000000000000873fed1bdd4daf46b59105d9e5c28c31 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006a0065006300 ,
    0x7400480065006100640065007200490044000000000000006f7f02ef6df85740 ,
    0x92eeeafb278f50ec07000000fe926418f32ed843874a57f371c555c749004400 ,
    0x0000000000004403a2d4eb20594faba742eae7f17a83000000003c41756eec62 ,
    0xe440000000000000000071007200790043006f006d0070006f006e0065006e00 ,
    0x7400530074006f0063006b0054006f0044006f0063006b006500740000000000 ,
    0x00007a763a4cf3823b40abf80da4f7ce6d32070000004403a2d4eb20594faba7 ,
    0x42eae7f17a83500075007200630068006100730065004d0061006e0069006600 ,
    0x650073007400000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x81c0c9a51f63964e8e9bb0c527e570b7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PurchaseManifest"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7a763a4cf3823b40abf80da4f7ce6d32
        End
    End
End
Begin
    State =0
    Left =34
    Top =44
    Right =1563
    Bottom =767
    Left =-1
    Top =-1
    Right =1497
    Bottom =371
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =367
        Bottom =427
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =387
        Top =24
        Right =531
        Bottom =168
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =636
        Top =20
        Right =898
        Bottom =270
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
