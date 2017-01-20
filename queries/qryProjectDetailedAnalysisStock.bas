Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.ID"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentStock.QtyOrdered"
    Expression ="dbo_ProjectComponentStock.QtyReceived"
    Expression ="dbo_ProjectComponentStock.MstrX"
    Expression ="dbo_ProjectComponentStock.MstrY"
    Expression ="dbo_ProjectComponentStock.Weight"
    Expression ="dbo_ProjectComponentStock.MWeight"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.SheetFinish"
    Expression ="dbo_ProjectComponentStock.PricePerM"
    Expression ="dbo_ProjectComponentStock.IsPricePerEach"
    Expression ="dbo_ProjectComponentStock.ArrivalDate"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x2d9044bb815ef540a0000d5eb48c59eb
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000fdd0694c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c2de0e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000c080856b59f22641ac7227398ee1f1a00700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af49004400000000000000fe371115569a08478b428437714db9f9 ,
    0x0700000089466ecffa47f64d8a430ccaf9e274af500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400490044000000000000002042 ,
    0x568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006a0065006300740048006500610064006500720049004400 ,
    0x000000000000dad4a6c1c16ae546abad203c0819a8710700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af5100740079004f007200640065007200650064000000 ,
    0x000000006cb3fb35f36968408d1d5b6943b5a9a40700000089466ecffa47f64d ,
    0x8a430ccaf9e274af510074007900520065006300650069007600650064000000 ,
    0x00000000713513c1b5a6cd42a31ef41a4a1d8a780700000089466ecffa47f64d ,
    0x8a430ccaf9e274af4d00730074007200580000000000000010d2b25ce6d2db44 ,
    0xa196021f3a4d4c010700000089466ecffa47f64d8a430ccaf9e274af4d007300 ,
    0x7400720059000000000000000a0fde3a8f63b24ab90151241297115007000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af57006500690067006800740000000000 ,
    0x00007615aa27e2529844bcad10e47a64f7b40700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af4d00570065006900670068007400000000000000e9d4a493b1e3 ,
    0x504b863faa0fba8186c00700000089466ecffa47f64d8a430ccaf9e274af4400 ,
    0x650073006300720069007000740069006f006e00000000000000e5c9c8b622bc ,
    0x17458f1e77200cb4dbf10700000089466ecffa47f64d8a430ccaf9e274af5300 ,
    0x6800650065007400460069006e0069007300680000000000000049a54a1f54a3 ,
    0x984782030d179cb052f80700000089466ecffa47f64d8a430ccaf9e274af5000 ,
    0x72006900630065005000650072004d000000000000005448cb3c6158c546a389 ,
    0x5c70858e7d7b0700000089466ecffa47f64d8a430ccaf9e274af490073005000 ,
    0x72006900630065005000650072004500610063006800000000000000a132a73d ,
    0x6245f746a87ad9d86e2b656b0700000089466ecffa47f64d8a430ccaf9e274af ,
    0x4100720072006900760061006c00440061007400650000000000000029556c4f ,
    0xcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x88c9bbfef848f047bd92d4eb4a047785
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyOrdered"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x796e254b98d37743a2eed230ed9e9846
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyReceived"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x02942f85b9a9414d874b016fb70833c6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PricePerM"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7d561ccaf8790249b474b254029e436e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ArrivalDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5fab644a24cfd741ac90f77840b5a7fa
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.IsPricePerEach"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9de50a7ae7a66a41877af83e14cf5907
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MWeight"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdcb96adf6b56b44e9fae3bb80fd10ed8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SheetFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a80f6276c9237468d752ff95af89f55
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2bcd2e7e8a67c47a932b3d4b157b87d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrX"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x284046d81c492e44ac51b124e1763a89
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x93f829e7146a814dbbc755debd214b2c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Weight"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x74795ba08429a74cbfe8dcee91f2f3ae
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0cc76c521ad0e14b9082c5896bef6c78
        End
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
        Right =691
        Bottom =509
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =739
        Top =12
        Right =883
        Bottom =156
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
