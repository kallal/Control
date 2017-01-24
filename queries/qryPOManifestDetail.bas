Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null))"
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
    Expression ="dbo_ProjectComponentStock.ID"
    Expression ="dbo_ProjectComponentStock.QtyOrdered"
    Expression ="dbo_ProjectComponentStock.MstrX"
    Expression ="dbo_ProjectComponentStock.MstrY"
    Expression ="dbo_ProjectComponentStock.Weight"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.PricePerM"
    Expression ="dbo_ProjectComponentStock.IsPricePerEach"
    Expression ="dbo_ProjectComponentStock.VendorID"
    Expression ="dbo_ProjectComponentStock.VendorNameID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectComponentStock.OrderByID"
    Expression ="dbo_ProjectComponentStock.OrderDate"
    Expression ="dbo_ProjectComponentStock.ExpectedDate"
    Expression ="dbo_ProjectComponentStock.SupplierOrderNumber"
    Expression ="dbo_ProjectHeader.PlannerID"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="ProjectComponentHeaderID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ContactGeneral.SendPOViaEmail"
    Expression ="dbo_ContactGeneral.SendPOViaFax"
    Expression ="dbo_ProjectComponentStock.PurchaseManifest"
    Expression ="dbo_ContactName.PreferredName"
    Expression ="dbo_ContactName.Title"
    Expression ="dbo_ContactName.PhDirect"
    Expression ="dbo_ContactName.PhFax"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ProjectComponentStock.MWeight"
    Expression ="dbo_ProjectComponentStock.SheetFinish"
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
    Expression ="dbo_ProjectComponentStock.ID"
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
    0x97be5d460093ad4b91eaab4abb65ea25
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000bf7d440e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050ecfe0e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x00006f48190dcfe0e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000ee18d1f0 ,
    0xdb51cf44bb600aba260292250000000078217f6dec62e4400000000000000000 ,
    0x74006d007000500075007200630068006100730069006e006700530074006f00 ,
    0x63006b00000000000000abd7a13a18cfc44f845c77c762d61a46000000000acb ,
    0x280dcfe0e4400000000000000000640062006f005f0043006f006e0074006100 ,
    0x630074004e0061006d006500000000000000a909e14f5494354f870fb25711b9 ,
    0xb8920700000097be5d460093ad4b91eaab4abb65ea25500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720049004400000000000000749d4175d9cbb541b77414bf76f2aa9c07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004e007500 ,
    0x6d00000000000000c080856b59f22641ac7227398ee1f1a00700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af49004400000000000000dad4a6c1c16ae546abad ,
    0x203c0819a8710700000089466ecffa47f64d8a430ccaf9e274af510074007900 ,
    0x4f00720064006500720065006400000000000000713513c1b5a6cd42a31ef41a ,
    0x4a1d8a780700000089466ecffa47f64d8a430ccaf9e274af4d00730074007200 ,
    0x580000000000000010d2b25ce6d2db44a196021f3a4d4c010700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af4d0073007400720059000000000000000a0fde3a ,
    0x8f63b24ab9015124129711500700000089466ecffa47f64d8a430ccaf9e274af ,
    0x570065006900670068007400000000000000e9d4a493b1e3504b863faa0fba81 ,
    0x86c00700000089466ecffa47f64d8a430ccaf9e274af44006500730063007200 ,
    0x69007000740069006f006e0000000000000049a54a1f54a3984782030d179cb0 ,
    0x52f80700000089466ecffa47f64d8a430ccaf9e274af50007200690063006500 ,
    0x5000650072004d000000000000005448cb3c6158c546a3895c70858e7d7b0700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af4900730050007200690063006500 ,
    0x5000650072004500610063006800000000000000acd6a6e372a779498bc62b47 ,
    0x128da6270700000089466ecffa47f64d8a430ccaf9e274af560065006e006400 ,
    0x6f00720049004400000000000000c3907cad07bc2c4d9a1a1bbac1ace4530700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af560065006e0064006f0072004e00 ,
    0x61006d00650049004400000000000000fde2928bbc55824d8e33fcf8a8e7c2e1 ,
    0x07000000bb4ee421343f624db77659eef5e022a143006f006d0070004e006100 ,
    0x6d006500000000000000419956cfdd553d479a56d3dd14351060070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af4f0072006400650072004200790049004400 ,
    0x000000000000e05340b2bd31aa4c8c6fb0be78373bc00700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af4f007200640065007200440061007400650000000000 ,
    0x0000cd90c0b17343fe4f8b37ada3ea41c5e60700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af4500780070006500630074006500640044006100740065000000 ,
    0x000000008e5f2d8e505a2644aa72dce0cb93bea40700000089466ecffa47f64d ,
    0x8a430ccaf9e274af53007500700070006c006900650072004f00720064006500 ,
    0x72004e0075006d0062006500720000000000000068034c9480f93242aa20b3b0 ,
    0xd9c322cc0700000035f87d9f0b136040ad3c2851f16d2a8050006c0061006e00 ,
    0x6e0065007200490044000000000000007da6a641b3cf604b95c0700a612b4585 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f0069006300 ,
    0x65004e0075006d0000000000000078a4ab78684be74a86eca6bbeda30d680700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be500072006f006f00660041007000 ,
    0x700072006f00760065006400440061007400650000000000000029556c4fcc6d ,
    0xe9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be4900 ,
    0x44000000000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80500072006f006a006500630074004e0061006d00 ,
    0x65000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006a00650063007400480065006100 ,
    0x640065007200490044000000000000000f6a8f6f52f753429f03bbe99b50b089 ,
    0x07000000bb4ee421343f624db77659eef5e022a1530065006e00640050004f00 ,
    0x56006900610045006d00610069006c00000000000000f56df9e47d146a47ad63 ,
    0x4174dcec0ed507000000bb4ee421343f624db77659eef5e022a1530065006e00 ,
    0x640050004f00560069006100460061007800000000000000582b539ada0e7a43 ,
    0x988b959d2376f92c0700000089466ecffa47f64d8a430ccaf9e274af50007500 ,
    0x7200630068006100730065004d0061006e006900660065007300740000000000 ,
    0x000038897a7ab1a0d34689bcaaeabf09393607000000abd7a13a18cfc44f845c ,
    0x77c762d61a465000720065006600650072007200650064004e0061006d006500 ,
    0x0000000000000b1ca37d39b2344e93d0775485e7b9bb07000000abd7a13a18cf ,
    0xc44f845c77c762d61a465400690074006c006500000000000000314dcea91aea ,
    0xac4ab1665229bd5d11d107000000abd7a13a18cfc44f845c77c762d61a465000 ,
    0x6800440069007200650063007400000000000000b910a49a8afe0447bf74a7d6 ,
    0x6b3dfd6c07000000abd7a13a18cfc44f845c77c762d61a465000680046006100 ,
    0x780000000000000028286631c5eaed4e9d4e2118c912f40c07000000abd7a13a ,
    0x18cfc44f845c77c762d61a4645006d00610069006c000000000000007615aa27 ,
    0xe2529844bcad10e47a64f7b40700000089466ecffa47f64d8a430ccaf9e274af ,
    0x4d00570065006900670068007400000000000000e5c9c8b622bc17458f1e7720 ,
    0x0cb4dbf10700000089466ecffa47f64d8a430ccaf9e274af5300680065006500 ,
    0x7400460069006e00690073006800000000000000fe371115569a08478b428437 ,
    0x714db9f90700000089466ecffa47f64d8a430ccaf9e274af500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004900440000000000 ,
    0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a80490044000000000000001fc238e447652546a47f3ca6a0d889e4 ,
    0x07000000bb4ee421343f624db77659eef5e022a1490044000000000000001ac0 ,
    0xaa73d1c26248880022383b640cc707000000ee18d1f0db51cf44bb600aba2602 ,
    0x9225500075007200630068006100730069006e006700530074006f0063006b00 ,
    0x4900440000000000000055214613b67cb94eaac4189bee61392c07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a46490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PricePerM"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.VendorNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Weight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Description"
        dbInteger "ColumnWidth" ="3180"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="dbo_ProjectComponentStock.SupplierOrderNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.IsPricePerEach"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PlannerID"
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
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProjectComponentHeaderID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3375"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0xa909e14f5494354f870fb25711b9b892
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
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendPOViaEmail"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PreferredName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Title"
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
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendPOViaFax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PurchaseManifest"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MWeight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SheetFinish"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =132
    Top =199
    Right =1534
    Bottom =854
    Left =-1
    Top =-1
    Right =1370
    Bottom =266
    Left =0
    Top =0
    ColumnsShown =539
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
