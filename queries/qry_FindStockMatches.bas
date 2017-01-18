Operation =1
Option =0
Where ="((InStr([description],\"16\")>\"1\"))"
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.Weight"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.quotenum"
    Expression ="dbo_ProjectHeader.quotedate"
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
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.DocketNum"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x250bdab026d5b548b6796f99f09325f0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000b601144a ,
    0x3384e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000001089064a3384e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a800000000035b2174a3384e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x0000582ae4493384e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000e9d4a493 ,
    0xb1e3504b863faa0fba8186c00700000089466ecffa47f64d8a430ccaf9e274af ,
    0x4400650073006300720069007000740069006f006e000000000000000a0fde3a ,
    0x8f63b24ab9015124129711500700000089466ecffa47f64d8a430ccaf9e274af ,
    0x570065006900670068007400000000000000fde2928bbc55824d8e33fcf8a8e7 ,
    0xc2e107000000bb4ee421343f624db77659eef5e022a143006f006d0070004e00 ,
    0x61006d0065000000000000001c9b84855b8f264abd34a504e56b05af07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80500072006f006a006500630074004e00 ,
    0x61006d006500000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e00 ,
    0x74004e0061006d006500000000000000749d4175d9cbb541b77414bf76f2aa9c ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b0065007400 ,
    0x4e0075006d00000000000000d0b1539c9f7bfc439d9435b3dda929d507000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80710075006f00740065006e0075006d00 ,
    0x0000000000009d63ea70f7ac1e44aa26234fcf0001210700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80710075006f0074006500640061007400650000000000 ,
    0x0000fe371115569a08478b428437714db9f90700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e0074004900440000000000000029556c4fcc6de9418049e37cebcb8ed3 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be490044000000000000002042 ,
    0x568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006a0065006300740048006500610064006500720049004400 ,
    0x00000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80490044000000000000008265226ce5165f4597f9cda1 ,
    0x88898d960700000035f87d9f0b136040ad3c2851f16d2a8043006f006e007400 ,
    0x610063007400470065006e006500720061006c00490044000000000000001fc2 ,
    0x38e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e0 ,
    0x22a149004400000000000000250bdab026d5b548b6796f99f09325f000000000 ,
    0x34cbee683384e44000000000000000007100720079005f00460069006e006400 ,
    0x530074006f0063006b004d006100740063006800650073000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qry_FindStockMatches].[quotedate] DESC"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Description"
        dbInteger "ColumnWidth" ="3885"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d39bdb27d6e294387cb0e6a359579fc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbInteger "ColumnWidth" ="4530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb226662233a614eb1351f9a42dc42d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbInteger "ColumnWidth" ="4140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4b349ebcfd2894cae984e8e27f688c1
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="2700"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0197ea778655cc45b6202e940ea112ab
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Weight"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03666413b3b27246b307f1aef58f20b7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa54e4ed30cf5794c89849bd25ec25c51
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.quotenum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.quotedate"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =42
    Top =127
    Right =1517
    Bottom =850
    Left =-1
    Top =-1
    Right =1443
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =50
        Top =25
        Right =455
        Bottom =440
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =496
        Top =2
        Right =769
        Bottom =440
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =816
        Top =39
        Right =1203
        Bottom =381
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1287
        Top =80
        Right =1431
        Bottom =224
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
