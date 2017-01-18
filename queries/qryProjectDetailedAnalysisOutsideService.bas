Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentOutsideService"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentOutsideService.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectComponentOutsideService.Service"
    Expression ="dbo_ProjectComponentOutsideService.Description"
    Expression ="dbo_ProjectComponentOutsideService.QuoteAmt"
    Expression ="dbo_ProjectComponentOutsideService.QtyOrdered"
    Expression ="dbo_ProjectComponentOutsideService.PricePerM"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectComponentOutsideService.VendorID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentOutsideService.ProjectComponentID = dbo_ProjectComponentHead"
        "er.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xabff9b6f85876d419fd7d7dbd970b440
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c252235b46cf774eb1cc0f5ab71b9a6100000000629e5a2b ,
    0xacd7e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e0074004f0075007400730069006400 ,
    0x65005300650072007600690063006500000000000000bb4ee421343f624db776 ,
    0x59eef5e022a1000000006c1a3d2bacd7e4400000000000000000640062006f00 ,
    0x5f0043006f006e007400610063007400470065006e006500720061006c000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be00000000d477562bacd7e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000036360845580dd141a2df46398416dfa407000000c252235b46cf774eb1cc ,
    0x0f5ab71b9a6149004400000000000000fde2928bbc55824d8e33fcf8a8e7c2e1 ,
    0x07000000bb4ee421343f624db77659eef5e022a143006f006d0070004e006100 ,
    0x6d006500000000000000bcee6d9381d05749af79b5a638dbd78f07000000c252 ,
    0x235b46cf774eb1cc0f5ab71b9a61530065007200760069006300650000000000 ,
    0x0000cea04e73540b3142af2c9c022ba9fb0e07000000c252235b46cf774eb1cc ,
    0x0f5ab71b9a614400650073006300720069007000740069006f006e0000000000 ,
    0x0000c9a9ddcea37f69468920579db02c121607000000c252235b46cf774eb1cc ,
    0x0f5ab71b9a61510075006f007400650041006d007400000000000000d53d221d ,
    0x6af82f4f910657c37c8e964c07000000c252235b46cf774eb1cc0f5ab71b9a61 ,
    0x5100740079004f007200640065007200650064000000000000004da7ba50348c ,
    0x254084575e386714615907000000c252235b46cf774eb1cc0f5ab71b9a615000 ,
    0x72006900630065005000650072004d000000000000002042568302f48b4d89eb ,
    0x4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f00 ,
    0x6a0065006300740048006500610064006500720049004400000000000000032b ,
    0x0eece77b9840a00917e58fbda33907000000c252235b46cf774eb1cc0f5ab71b ,
    0x9a61560065006e0064006f007200490044000000000000001fc238e447652546 ,
    0xa47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a149004400 ,
    0x00000000000035ae08324c3f9b439499da5f2592a53307000000c252235b46cf ,
    0x774eb1cc0f5ab71b9a61500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e0074004900440000000000000029556c4fcc6de9418049e37c ,
    0xebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be4900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.Service"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QuoteAmt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.PricePerM"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1520
    Bottom =980
    Left =-1
    Top =-1
    Right =1412
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =348
        Bottom =566
        Top =0
        Name ="dbo_ProjectComponentOutsideService"
        Name =""
    End
    Begin
        Left =396
        Top =12
        Right =728
        Bottom =273
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =706
        Top =335
        Right =850
        Bottom =479
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
