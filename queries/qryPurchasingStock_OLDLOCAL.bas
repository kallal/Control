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
    Expression ="dbo_ProjectComponentStock.MWeight"
    Expression ="dbo_ProjectComponentStock.SheetFinish"
    Expression ="dbo_ProjectComponentStock.PurchTag"
    Expression ="dbo_ProjectComponentStock.PurchTagID"
    Alias ="VendorContactName"
    Expression ="[dbo_vendorname].[fn] & \" \" & [dbo_vendorname].[ln]"
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
dbBinary "GUID" = Begin
    0xa2322d2de938774db2b9e79850e84c04
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af000000000204c150 ,
    0xf0c8e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be00000000f522b250f0c8e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000cb82c450f0c8e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x000018a58550f0c8e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000abd7a13a ,
    0x18cfc44f845c77c762d61a460000000095ac8950f0c8e4400000000000000000 ,
    0x640062006f005f0043006f006e0074006100630074004e0061006d0065000000 ,
    0x00000000a909e14f5494354f870fb25711b9b89207000000a2322d2de938774d ,
    0xb2b9e79850e84c04500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e00740048006500610064006500720049004400000000000000c4ac ,
    0x5f7fe9b9fe4f9962f75aff377e6007000000a2322d2de938774db2b9e79850e8 ,
    0x4c04560065006e0064004e0061006d006500000000000000eafc01070779e243 ,
    0x96b48be01667f95007000000a2322d2de938774db2b9e79850e84c0456006500 ,
    0x6e0064006f00720043006f006e0074006100630074004e0061006d0065000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8044006f0063006b00650074004e0075006d00000000000000 ,
    0xc080856b59f22641ac7227398ee1f1a00700000089466ecffa47f64d8a430cca ,
    0xf9e274af490044000000000000009c74acf32f7cb14392c64da1255e24920700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af4f0072006400650072004f007000 ,
    0x740069006f006e00000000000000dad4a6c1c16ae546abad203c0819a8710700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af5100740079004f00720064006500 ,
    0x7200650064000000000000006cb3fb35f36968408d1d5b6943b5a9a407000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af51007400790052006500630065006900 ,
    0x760065006400000000000000713513c1b5a6cd42a31ef41a4a1d8a7807000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af4d007300740072005800000000000000 ,
    0x10d2b25ce6d2db44a196021f3a4d4c010700000089466ecffa47f64d8a430cca ,
    0xf9e274af4d0073007400720059000000000000000a0fde3a8f63b24ab9015124 ,
    0x129711500700000089466ecffa47f64d8a430ccaf9e274af5700650069006700 ,
    0x68007400000000000000e9d4a493b1e3504b863faa0fba8186c0070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af440065007300630072006900700074006900 ,
    0x6f006e0000000000000049a54a1f54a3984782030d179cb052f8070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af500072006900630065005000650072004d00 ,
    0x0000000000005448cb3c6158c546a3895c70858e7d7b0700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af49007300500072006900630065005000650072004500 ,
    0x610063006800000000000000acd6a6e372a779498bc62b47128da62707000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af560065006e0064006f00720049004400 ,
    0x000000000000c3907cad07bc2c4d9a1a1bbac1ace4530700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af560065006e0064006f0072004e0061006d0065004900 ,
    0x4400000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8056006f0069006400000000000000419956cfdd55 ,
    0x3d479a56d3dd143510600700000089466ecffa47f64d8a430ccaf9e274af4f00 ,
    0x72006400650072004200790049004400000000000000e05340b2bd31aa4c8c6f ,
    0xb0be78373bc00700000089466ecffa47f64d8a430ccaf9e274af4f0072006400 ,
    0x650072004400610074006500000000000000cd90c0b17343fe4f8b37ada3ea41 ,
    0xc5e60700000089466ecffa47f64d8a430ccaf9e274af45007800700065006300 ,
    0x74006500640044006100740065000000000000008e5f2d8e505a2644aa72dce0 ,
    0xcb93bea40700000089466ecffa47f64d8a430ccaf9e274af5300750070007000 ,
    0x6c006900650072004f0072006400650072004e0075006d006200650072000000 ,
    0x000000008265226ce5165f4597f9cda188898d960700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8043006f006e007400610063007400470065006e0065007200 ,
    0x61006c0049004400000000000000ec0b724301a5a646ae4fd759d8d39c9c0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8043006f006e007400610063007400 ,
    0x4e0061006d0065004900440000000000000040de5e7aec65a745aa86e7e9e8cb ,
    0x55780700000035f87d9f0b136040ad3c2851f16d2a80530061006c0065007300 ,
    0x52006500700049004400000000000000ce73341489752f42bffad7debac543a6 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80430073007200490044000000 ,
    0x0000000068034c9480f93242aa20b3b0d9c322cc0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8050006c0061006e006e006500720049004400000000000000 ,
    0x582b539ada0e7a43988b959d2376f92c0700000089466ecffa47f64d8a430cca ,
    0xf9e274af500075007200630068006100730065004d0061006e00690066006500 ,
    0x73007400000000000000a132a73d6245f746a87ad9d86e2b656b070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af4100720072006900760061006c0044006100 ,
    0x740065000000000000007da6a641b3cf604b95c0700a612b45850700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8049006e0076006f006900630065004e007500 ,
    0x6d0000000000000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006f00660041007000700072006f00 ,
    0x760065006400440061007400650000000000000029556c4fcc6de9418049e37c ,
    0xebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be4900440000000000 ,
    0x0000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db776 ,
    0x59eef5e022a143006f006d0070004e0061006d0065000000000000001c9b8485 ,
    0x5b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x500072006f006a006500630074004e0061006d00650000000000000020425683 ,
    0x02f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x500072006f006a00650063007400480065006100640065007200490044000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x0000000000000000640062006f005f00560065006e0064006f00720047006500 ,
    0x6e006500720061006c0000000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000640062006f005f0056006500 ,
    0x6e0064006f0072004e0061006d00650000000000000028286631c5eaed4e9d4e ,
    0x2118c912f40c07000000abd7a13a18cfc44f845c77c762d61a4645006d006100 ,
    0x69006c000000000000007615aa27e2529844bcad10e47a64f7b4070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af4d0057006500690067006800740000000000 ,
    0x0000e5c9c8b622bc17458f1e77200cb4dbf10700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af53006800650065007400460069006e0069007300680000000000 ,
    0x00000acf72133b81504db9820ae9fd24295e0700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af500075007200630068005400610067000000000000005a38d765 ,
    0x8a42624d85765ae1f451c3210700000089466ecffa47f64d8a430ccaf9e274af ,
    0x500075007200630068005400610067004900440000000000000065ad3064e898 ,
    0x1147a4bdc2ff83e1e02607000000abd7a13a18cfc44f845c77c762d61a466600 ,
    0x6e0000000000000096debff91f1ff043bcf0998107c8713e07000000abd7a13a ,
    0x18cfc44f845c77c762d61a466c006e000000000000007398ac0669261c43a6ab ,
    0x19abf6ccf39d0700000035f87d9f0b136040ad3c2851f16d2a804b0065006500 ,
    0x700049006e00500072006f00640075006300740069006f006e0059004e000000 ,
    0x00000000fe371115569a08478b428437714db9f90700000089466ecffa47f64d ,
    0x8a430ccaf9e274af500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e0074004900440000000000000004aeb2718000d24bb73b562a7379 ,
    0x94cb0700000035f87d9f0b136040ad3c2851f16d2a8049004400000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a149004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
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
        dbText "Name" ="dbo_ProjectComponentStock.SheetFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PurchTag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PurchTagID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VendorContactName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeafc01070779e24396b48be01667f950
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =39
    Top =229
    Right =1441
    Bottom =884
    Left =-1
    Top =-1
    Right =1370
    Bottom =276
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
        Left =474
        Top =8
        Right =768
        Bottom =168
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
        Left =1191
        Top =138
        Right =1335
        Bottom =282
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =388
        Top =124
        Right =532
        Bottom =268
        Top =0
        Name ="dbo_VendorGeneral"
        Name =""
    End
    Begin
        Left =582
        Top =110
        Right =830
        Bottom =254
        Top =0
        Name ="dbo_VendorName"
        Name =""
    End
End
