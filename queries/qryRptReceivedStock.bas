Operation =1
Option =0
Where ="(((dbo_ProjectComponentStock.OrderDate)>=#1/1/2015#))"
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Alias ="ClientGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.VendorID"
    Alias ="VendorName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectComponentStock.ID"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    Expression ="dbo_ProjectComponentStock.QtyOrdered"
    Expression ="dbo_ProjectComponentStock.MstrX"
    Expression ="dbo_ProjectComponentStock.MstrY"
    Expression ="dbo_ProjectComponentStock.Weight"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.PricePerM"
    Expression ="dbo_ProjectComponentStock.OrderByID"
    Expression ="dbo_ProjectComponentStock.OrderDate"
    Expression ="dbo_ProjectComponentStock.ArrivalDate"
    Expression ="dbo_ProjectComponentStock.ReceivedBy"
    Alias ="OrderBy"
    Expression ="[dbo_companyEmployee].[fn] & \" \" & [dbo_companyemployee].[ln]"
    Expression ="ClientGeneral.CompName"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectComponentStock.VendorID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectComponentStock.OrderByID = dbo_CompanyEmployee.ID"
    Flag =1
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="ClientGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = ClientGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd35058df1504ce4288c38c560e4d8f65
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000bf7d440e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x0000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40ccfe0e440 ,
    0x0000000000000000640062006f005f0043006f006d00700061006e0079004500 ,
    0x6d0070006c006f00790065006500000000000000bb4ee421343f624db77659ee ,
    0xf5e022a1000000006f48190dcfe0e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050ecfe0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e007400480065006100640065007200000000000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0e44000000000 ,
    0x00000000640062006f005f00500072006f006a00650063007400480065006100 ,
    0x640065007200000000000000f501c65ce77b5a418f58199e7b5b658e07000000 ,
    0xd35058df1504ce4288c38c560e4d8f65560065006e0064006f0072004e006100 ,
    0x6d006500000000000000e8476d84a5770e46839de3535586c95507000000d350 ,
    0x58df1504ce4288c38c560e4d8f654f0072006400650072004200790000000000 ,
    0x0000acd6a6e372a779498bc62b47128da6270700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af560065006e0064006f00720049004400000000000000fde2928b ,
    0xbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a1 ,
    0x43006f006d0070004e0061006d006500000000000000c080856b59f22641ac72 ,
    0x27398ee1f1a00700000089466ecffa47f64d8a430ccaf9e274af490044000000 ,
    0x00000000fe371115569a08478b428437714db9f90700000089466ecffa47f64d ,
    0x8a430ccaf9e274af500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e00740049004400000000000000dad4a6c1c16ae546abad203c0819 ,
    0xa8710700000089466ecffa47f64d8a430ccaf9e274af5100740079004f007200 ,
    0x64006500720065006400000000000000713513c1b5a6cd42a31ef41a4a1d8a78 ,
    0x0700000089466ecffa47f64d8a430ccaf9e274af4d0073007400720058000000 ,
    0x0000000010d2b25ce6d2db44a196021f3a4d4c010700000089466ecffa47f64d ,
    0x8a430ccaf9e274af4d0073007400720059000000000000000a0fde3a8f63b24a ,
    0xb9015124129711500700000089466ecffa47f64d8a430ccaf9e274af57006500 ,
    0x6900670068007400000000000000e9d4a493b1e3504b863faa0fba8186c00700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af4400650073006300720069007000 ,
    0x740069006f006e0000000000000049a54a1f54a3984782030d179cb052f80700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af5000720069006300650050006500 ,
    0x72004d00000000000000419956cfdd553d479a56d3dd14351060070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af4f0072006400650072004200790049004400 ,
    0x000000000000e05340b2bd31aa4c8c6fb0be78373bc00700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af4f007200640065007200440061007400650000000000 ,
    0x0000a132a73d6245f746a87ad9d86e2b656b0700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af4100720072006900760061006c00440061007400650000000000 ,
    0x0000ef411c503d80f7439d8c0c8b431fabb90700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af5200650063006500690076006500640042007900000000000000 ,
    0x238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa66006e0000000000000027afc0ba5db60e409636470e73e1fc430700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa6c006e0000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x43006c00690065006e007400470065006e006500720061006c00000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a149004400000000000000836b4761bb445b46b7a949192117f8700700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa4900440000000000000029556c4f ,
    0xcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x490044000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500072006f006a0065006300740048006500 ,
    0x61006400650072004900440000000000000004aeb2718000d24bb73b562a7379 ,
    0x94cb0700000035f87d9f0b136040ad3c2851f16d2a8049004400000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MasterSheetSize"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Weight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PricePerM"
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
        dbText "Name" ="dbo_ProjectComponentStock.ArrivalDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ReceivedBy"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="OrderBy"
        dbInteger "ColumnWidth" ="3120"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe8476d84a5770e46839de3535586c955
        End
    End
    Begin
        dbText "Name" ="ClientGeneral.CompName"
        dbInteger "ColumnWidth" ="3030"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VendorName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf501c65ce77b5a418f58199e7b5b658e
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1560
    Bottom =859
    Left =-1
    Top =-1
    Right =1450
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =149
        Top =49
        Right =537
        Bottom =411
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =807
        Top =198
        Right =951
        Bottom =342
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =1063
        Top =241
        Right =1207
        Bottom =385
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =585
        Top =12
        Right =729
        Bottom =156
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =777
        Top =12
        Right =1061
        Bottom =175
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1109
        Top =12
        Right =1253
        Bottom =156
        Top =0
        Name ="ClientGeneral"
        Name =""
    End
End
