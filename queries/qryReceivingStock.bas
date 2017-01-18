Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.Void)=False"
    ") AND ((dbo_ProjectHeader.InvoiceNum) Is Null)) OR (((dbo_ProjectHeader.DocketNu"
    "m) Is Not Null) AND ((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectHeader.Inv"
    "oiceNum) Is Not Null) AND ((dbo_ProjectHeader.KeepInProductionYN)=True))"
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactGeneral"
    Alias ="dbo_VendorGeneral"
    Name ="dbo_ContactName"
    Alias ="dbo_VendorName"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectComponentStock.ID"
    Expression ="dbo_ProjectComponentStock.OrderOption"
    Expression ="dbo_ProjectComponentStock.QtyOrdered"
    Expression ="dbo_ProjectComponentStock.QtyReceived"
    Expression ="dbo_ProjectComponentStock.MstrX"
    Expression ="dbo_ProjectComponentStock.MstrY"
    Expression ="dbo_ProjectComponentStock.Weight"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.PricePerM"
    Expression ="dbo_ProjectComponentStock.IsPricePerEach"
    Expression ="dbo_ProjectComponentStock.VendorID"
    Expression ="dbo_ProjectComponentStock.VendorNameID"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentStock.OrderByID"
    Expression ="dbo_ProjectComponentStock.OrderDate"
    Expression ="dbo_ProjectComponentStock.ExpectedDate"
    Expression ="dbo_ProjectComponentStock.SupplierOrderNumber"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.ContactNameID"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.PlannerID"
    Expression ="dbo_ProjectComponentStock.PurchaseManifest"
    Expression ="dbo_ProjectComponentStock.ArrivalDate"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="ProjectComponentHeaderID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="VendName"
    Expression ="dbo_VendorGeneral.compname"
    Expression ="dbo_VendorName.Email"
    Expression ="dbo_ProjectComponentStock.ReceivedBy"
    Expression ="dbo_ProjectComponentStock.MWeight"
    Expression ="dbo_ProjectComponentStock.SheetFinish"
    Expression ="dbo_ProjectComponentStock.RecTag"
    Expression ="dbo_ProjectComponentStock.RecTagID"
    Expression ="dbo_ProjectComponentStock.RecTagQty"
    Expression ="dbo_ProjectHeader.IsFSC"
    Expression ="dbo_ProjectComponentStock.SupplierPackingListNumber"
    Expression ="dbo_ProjectHeader.KeepInProductionYN"
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
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_VendorGeneral"
    Expression ="dbo_ProjectComponentStock.VendorID = dbo_VendorGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_VendorName"
    Expression ="dbo_ProjectComponentStock.VendorNameID = dbo_VendorName.ID"
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
    0xfa37c7aaf9f3974ba98df06b72f148ba
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000f12001ac ,
    0x09cce4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be00000000f6e3f5ab09cce440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000fbaad29a4ecce4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x00004b5cdbab09cce4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000abd7a13a ,
    0x18cfc44f845c77c762d61a4600000000cd5edeab09cce4400000000000000000 ,
    0x640062006f005f0043006f006e0074006100630074004e0061006d0065000000 ,
    0x00000000a909e14f5494354f870fb25711b9b89207000000fa37c7aaf9f3974b ,
    0xa98df06b72f148ba500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e00740048006500610064006500720049004400000000000000c4ac ,
    0x5f7fe9b9fe4f9962f75aff377e6007000000fa37c7aaf9f3974ba98df06b72f1 ,
    0x48ba560065006e0064004e0061006d006500000000000000749d4175d9cbb541 ,
    0xb77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f00 ,
    0x63006b00650074004e0075006d00000000000000c080856b59f22641ac722739 ,
    0x8ee1f1a00700000089466ecffa47f64d8a430ccaf9e274af4900440000000000 ,
    0x00009c74acf32f7cb14392c64da1255e24920700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af4f0072006400650072004f007000740069006f006e0000000000 ,
    0x0000dad4a6c1c16ae546abad203c0819a8710700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af5100740079004f00720064006500720065006400000000000000 ,
    0x6cb3fb35f36968408d1d5b6943b5a9a40700000089466ecffa47f64d8a430cca ,
    0xf9e274af51007400790052006500630065006900760065006400000000000000 ,
    0x713513c1b5a6cd42a31ef41a4a1d8a780700000089466ecffa47f64d8a430cca ,
    0xf9e274af4d00730074007200580000000000000010d2b25ce6d2db44a196021f ,
    0x3a4d4c010700000089466ecffa47f64d8a430ccaf9e274af4d00730074007200 ,
    0x59000000000000000a0fde3a8f63b24ab9015124129711500700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af570065006900670068007400000000000000e9d4 ,
    0xa493b1e3504b863faa0fba8186c00700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af4400650073006300720069007000740069006f006e0000000000000049a5 ,
    0x4a1f54a3984782030d179cb052f80700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af500072006900630065005000650072004d000000000000005448cb3c6158 ,
    0xc546a3895c70858e7d7b0700000089466ecffa47f64d8a430ccaf9e274af4900 ,
    0x7300500072006900630065005000650072004500610063006800000000000000 ,
    0xacd6a6e372a779498bc62b47128da6270700000089466ecffa47f64d8a430cca ,
    0xf9e274af560065006e0064006f00720049004400000000000000c3907cad07bc ,
    0x2c4d9a1a1bbac1ace4530700000089466ecffa47f64d8a430ccaf9e274af5600 ,
    0x65006e0064006f0072004e0061006d00650049004400000000000000e0437933 ,
    0x3b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x56006f0069006400000000000000419956cfdd553d479a56d3dd143510600700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af4f00720064006500720042007900 ,
    0x49004400000000000000e05340b2bd31aa4c8c6fb0be78373bc0070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af4f0072006400650072004400610074006500 ,
    0x000000000000cd90c0b17343fe4f8b37ada3ea41c5e60700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af45007800700065006300740065006400440061007400 ,
    0x65000000000000008e5f2d8e505a2644aa72dce0cb93bea40700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af53007500700070006c006900650072004f007200 ,
    0x6400650072004e0075006d006200650072000000000000008265226ce5165f45 ,
    0x97f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a8043006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x0000ec0b724301a5a646ae4fd759d8d39c9c0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8043006f006e0074006100630074004e0061006d00650049004400 ,
    0x00000000000040de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80530061006c0065007300520065007000490044000000 ,
    0x00000000ce73341489752f42bffad7debac543a60700000035f87d9f0b136040 ,
    0xad3c2851f16d2a804300730072004900440000000000000068034c9480f93242 ,
    0xaa20b3b0d9c322cc0700000035f87d9f0b136040ad3c2851f16d2a8050006c00 ,
    0x61006e006e006500720049004400000000000000582b539ada0e7a43988b959d ,
    0x2376f92c0700000089466ecffa47f64d8a430ccaf9e274af5000750072006300 ,
    0x68006100730065004d0061006e0069006600650073007400000000000000a132 ,
    0xa73d6245f746a87ad9d86e2b656b0700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af4100720072006900760061006c0044006100740065000000000000007da6 ,
    0xa641b3cf604b95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8049006e0076006f006900630065004e0075006d0000000000000078a4ab78 ,
    0x684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x500072006f006f00660041007000700072006f00760065006400440061007400 ,
    0x650000000000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be49004400000000000000fde2928bbc55824d8e33 ,
    0xfcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d00 ,
    0x70004e0061006d0065000000000000001c9b84855b8f264abd34a504e56b05af ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a0065006300 ,
    0x74004e0061006d0065000000000000002042568302f48b4d89eb4ba2abddca73 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a0065006300 ,
    0x7400480065006100640065007200490044000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000064006200 ,
    0x6f005f00560065006e0064006f007200470065006e006500720061006c000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x0000000000000000640062006f005f00560065006e0064006f0072004e006100 ,
    0x6d00650000000000000028286631c5eaed4e9d4e2118c912f40c07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a4645006d00610069006c00000000000000ef41 ,
    0x1c503d80f7439d8c0c8b431fabb90700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af52006500630065006900760065006400420079000000000000007615aa27 ,
    0xe2529844bcad10e47a64f7b40700000089466ecffa47f64d8a430ccaf9e274af ,
    0x4d00570065006900670068007400000000000000e5c9c8b622bc17458f1e7720 ,
    0x0cb4dbf10700000089466ecffa47f64d8a430ccaf9e274af5300680065006500 ,
    0x7400460069006e006900730068000000000000007df092a1b13f4e42942803d7 ,
    0x3bf6fa940700000089466ecffa47f64d8a430ccaf9e274af5200650063005400 ,
    0x6100670000000000000023a69b221b73244cbb58de903dbc48c7070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af520065006300540061006700490044000000 ,
    0x00000000fb2c1a3ad0b2e1478508644f776497cb0700000089466ecffa47f64d ,
    0x8a430ccaf9e274af520065006300540061006700510074007900000000000000 ,
    0x748f86ce53ecfb429f888aeb3372a5450700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80490073004600530043000000000000003a6702c2545e6f4eb2980727 ,
    0x6a37ebc10700000089466ecffa47f64d8a430ccaf9e274af5300750070007000 ,
    0x6c006900650072005000610063006b0069006e0067004c006900730074004e00 ,
    0x75006d006200650072000000000000007398ac0669261c43a6ab19abf6ccf39d ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a804b0065006500700049006e00 ,
    0x500072006f00640075006300740069006f006e0059004e00000000000000fe37 ,
    0x1115569a08478b428437714db9f90700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x74004900440000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80490044000000000000001fc238e44765 ,
    0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
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
        dbText "Name" ="dbo_ProjectHeader.Void"
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
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PlannerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
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
        dbText "Name" ="dbo_ProjectComponentStock.ArrivalDate"
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
        dbText "Name" ="dbo_VendorName.Email"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VendName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4ac5f7fe9b9fe4f9962f75aff377e60
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.OrderOption"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyReceived"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SheetFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MWeight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.RecTagQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.RecTag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.RecTagID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsFSC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SupplierPackingListNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =67
    Top =11
    Right =1600
    Bottom =880
    Left =-1
    Top =-1
    Right =1501
    Bottom =400
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
        Left =482
        Top =12
        Right =776
        Bottom =172
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =864
        Top =38
        Right =1136
        Bottom =314
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1262
        Top =195
        Right =1406
        Bottom =339
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =450
        Top =187
        Right =594
        Bottom =331
        Top =0
        Name ="dbo_VendorGeneral"
        Name =""
    End
    Begin
        Left =580
        Top =322
        Right =828
        Bottom =466
        Top =0
        Name ="dbo_VendorName"
        Name =""
    End
End
