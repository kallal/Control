Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.ImpoOverride"
    Expression ="dbo_ProjectComponentPress.SectionName"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.DocketDate"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x15d4ac98e67acd4ba3710197b018aef0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa377040000000011ee80a6 ,
    0xea79e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000006f7a79a6ea79e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a800000000015f386a6ea79e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x000053e158a6ea79e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c000000000000001669ef90 ,
    0xe6667c41b0a57470dcc88f90070000001ff48b4b7bbd39459517fa849aa37704 ,
    0x49006d0070006f004f007600650072007200690064006500000000000000ffd4 ,
    0x75da9c35f547ad76cf08e4dbfd4e070000001ff48b4b7bbd39459517fa849aa3 ,
    0x7704530065006300740069006f006e004e0061006d006500000000000000e19f ,
    0xd78d6de8f042912e16a0f4718a30070000001ff48b4b7bbd39459517fa849aa3 ,
    0x7704500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x740049004400000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e00 ,
    0x74004e0061006d006500000000000000749d4175d9cbb541b77414bf76f2aa9c ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b0065007400 ,
    0x4e0075006d000000000000001c9b84855b8f264abd34a504e56b05af07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80500072006f006a006500630074004e00 ,
    0x61006d006500000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000 ,
    0xbb4ee421343f624db77659eef5e022a143006f006d0070004e0061006d006500 ,
    0x000000000000c310a93c2fe0c4488706f21ce736cf3a0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8044006f0063006b006500740044006100740065000000 ,
    0x0000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be490044000000000000002042568302f48b4d89eb4ba2abdd ,
    0xca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a006500 ,
    0x630074004800650061006400650072004900440000000000000004aeb2718000 ,
    0xd24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x44000000000000008265226ce5165f4597f9cda188898d960700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006e007400610063007400470065006e00 ,
    0x6500720061006c00490044000000000000001fc238e447652546a47f3ca6a0d8 ,
    0x89e407000000bb4ee421343f624db77659eef5e022a149004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryRptImpoOverride].[DocketDate] DESC"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ImpoOverride"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03a6cec20f3c014db3f796a76e0cc0ee
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde514aab2a4eeb469bc9f74c3a302b84
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb3e83dbc9f828e449a94886332b929ff
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x173855f232befb48820187d522c1142b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19542fe658078044b719940f553de927
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x494efd775ad5574a8da88f237d19cf41
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SectionName"
        dbInteger "ColumnWidth" ="2730"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =35
    Top =24
    Right =1510
    Bottom =747
    Left =-1
    Top =-1
    Right =1443
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =45
        Top =13
        Right =464
        Bottom =440
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =545
        Top =17
        Right =735
        Bottom =402
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =783
        Top =30
        Right =1032
        Bottom =351
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1156
        Top =130
        Right =1300
        Bottom =274
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
