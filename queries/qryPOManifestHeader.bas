Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="tmpPurchasingStock"
    Name ="dbo_ContactName"
End
Begin OutputColumns
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
Begin Groups
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
    0x9540c77655b85d41a4d4d8719dd79340
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af0000000050e1cdc8 ,
    0x2ad3e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be00000000ad3fc3c82ad3e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000754dd1c82ad3e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x00008e07aac82ad3e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000ee18d1f0 ,
    0xdb51cf44bb600aba260292250000000078217f6dec62e4400000000000000000 ,
    0x74006d007000500075007200630068006100730069006e006700530074006f00 ,
    0x63006b00000000000000abd7a13a18cfc44f845c77c762d61a460000000091de ,
    0xacc82ad3e4400000000000000000640062006f005f0043006f006e0074006100 ,
    0x630074004e0061006d006500000000000000acd6a6e372a779498bc62b47128d ,
    0xa6270700000089466ecffa47f64d8a430ccaf9e274af560065006e0064006f00 ,
    0x720049004400000000000000c3907cad07bc2c4d9a1a1bbac1ace45307000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af560065006e0064006f0072004e006100 ,
    0x6d00650049004400000000000000fde2928bbc55824d8e33fcf8a8e7c2e10700 ,
    0x0000bb4ee421343f624db77659eef5e022a143006f006d0070004e0061006d00 ,
    0x6500000000000000419956cfdd553d479a56d3dd143510600700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af4f00720064006500720042007900490044000000 ,
    0x00000000e05340b2bd31aa4c8c6fb0be78373bc00700000089466ecffa47f64d ,
    0x8a430ccaf9e274af4f0072006400650072004400610074006500000000000000 ,
    0xb910a49a8afe0447bf74a7d66b3dfd6c07000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a4650006800460061007800000000000000314dcea91aeaac4ab1665229 ,
    0xbd5d11d107000000abd7a13a18cfc44f845c77c762d61a465000680044006900 ,
    0x720065006300740000000000000028286631c5eaed4e9d4e2118c912f40c0700 ,
    0x0000abd7a13a18cfc44f845c77c762d61a4645006d00610069006c0000000000 ,
    0x0000cd90c0b17343fe4f8b37ada3ea41c5e60700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af4500780070006500630074006500640044006100740065000000 ,
    0x00000000582b539ada0e7a43988b959d2376f92c0700000089466ecffa47f64d ,
    0x8a430ccaf9e274af500075007200630068006100730065004d0061006e006900 ,
    0x6600650073007400000000000000fe371115569a08478b428437714db9f90700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af500072006f006a00650063007400 ,
    0x43006f006d0070006f006e0065006e0074004900440000000000000029556c4f ,
    0xcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x490044000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500072006f006a0065006300740048006500 ,
    0x61006400650072004900440000000000000004aeb2718000d24bb73b562a7379 ,
    0x94cb0700000035f87d9f0b136040ad3c2851f16d2a8049004400000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a149004400000000000000c080856b59f22641ac7227398ee1f1a00700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af490044000000000000001ac0aa73 ,
    0xd1c26248880022383b640cc707000000ee18d1f0db51cf44bb600aba26029225 ,
    0x500075007200630068006100730069006e006700530074006f0063006b004900 ,
    0x440000000000000055214613b67cb94eaac4189bee61392c07000000abd7a13a ,
    0x18cfc44f845c77c762d61a464900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
    Bottom =249
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
