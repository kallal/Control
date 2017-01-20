Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.Void)=False"
    ") AND ((dbo_ProjectHeader.InvoiceNum) Is Null))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactGeneral"
    Alias ="dbo_VendorGeneral"
    Name ="dbo_ContactName"
    Alias ="dbo_VendorName"
    Name ="dbo_ProjectComponentOutsideService"
    Name ="dbo_CompanyEmployee"
    Name ="tmpReceivingOutsideSrv"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentOutsideService.ID"
    Expression ="dbo_ProjectComponentOutsideService.QtyReceived"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.ContactNameID"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.PlannerID"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="ProjectComponentHeaderID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="VendName"
    Expression ="dbo_VendorGeneral.compname"
    Alias ="VendorID"
    Expression ="dbo_VendorGeneral.ID"
    Expression ="dbo_VendorName.Email"
    Expression ="dbo_ProjectComponentOutsideService.ExpectedBy"
    Expression ="dbo_ProjectComponentOutsideService.OrderDate"
    Expression ="dbo_ProjectComponentOutsideService.ArrivedOn"
    Expression ="dbo_ProjectComponentOutsideService.QtyOrdered"
    Expression ="dbo_ProjectComponentOutsideService.ReceivedBy"
    Expression ="dbo_ProjectComponentOutsideService.OutToVendorExpected"
    Expression ="dbo_ProjectComponentOutsideService.OutToVendorActual"
    Expression ="dbo_ProjectComponentOutsideService.SupplierOrderNumber"
    Alias ="OrderedByName"
    Expression ="[dbo_CompanyEmployee].[fn] & \" \" & [dbo_companyEmployee].[ln]"
    Expression ="tmpReceivingOutsideSrv.IsSelected"
    Expression ="tmpReceivingOutsideSrv.QtyToReceive"
    Expression ="dbo_ProjectComponentOutsideService.Service"
    Expression ="dbo_ProjectComponentOutsideService.Description"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_VendorGeneral"
    Expression ="dbo_ProjectComponentOutsideService.VendorID = dbo_VendorGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_VendorName"
    Expression ="dbo_ProjectComponentOutsideService.VendorNameID = dbo_VendorName.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentOutsideService.ProjectComponentID = dbo_ProjectComponentHead"
        "er.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectComponentOutsideService.OrderByID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="tmpReceivingOutsideSrv"
    Expression ="dbo_ProjectComponentOutsideService.ID = tmpReceivingOutsideSrv.OutsideSrvID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.DocketNum"
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
    0x4b944136abcc3047ad02f1ddb09760d5
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c2de0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a10000000076461f4c2de0e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0xabd7a13a18cfc44f845c77c762d61a46000000002bfd224c2de0e44000000000 ,
    0x00000000640062006f005f0043006f006e0074006100630074004e0061006d00 ,
    0x6500000000000000c252235b46cf774eb1cc0f5ab71b9a6100000000e2a75d4c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e0074004f0075007400730069006400 ,
    0x6500530065007200760069006300650000000000000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa00000000f162124c2de0e4400000000000000000640062006f00 ,
    0x5f0043006f006d00700061006e00790045006d0070006c006f00790065006500 ,
    0x0000000000009b910dba7ebd5a478b6a83b5b7b9d3e900000000ce13806dec62 ,
    0xe440000000000000000074006d00700052006500630065006900760069006e00 ,
    0x67004f00750074007300690064006500530072007600000000000000a909e14f ,
    0x5494354f870fb25711b9b892070000004b944136abcc3047ad02f1ddb09760d5 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x48006500610064006500720049004400000000000000c4ac5f7fe9b9fe4f9962 ,
    0xf75aff377e60070000004b944136abcc3047ad02f1ddb09760d5560065006e00 ,
    0x64004e0061006d0065000000000000005c0b8dfa53ac9a4e91f0143e5c371ede ,
    0x070000004b944136abcc3047ad02f1ddb09760d5560065006e0064006f007200 ,
    0x49004400000000000000aca32a4990e1db47bb260ef18aa13b08070000004b94 ,
    0x4136abcc3047ad02f1ddb09760d54f0072006400650072006500640042007900 ,
    0x4e0061006d006500000000000000749d4175d9cbb541b77414bf76f2aa9c0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004e00 ,
    0x75006d00000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8056006f006900640000000000000036360845 ,
    0x580dd141a2df46398416dfa407000000c252235b46cf774eb1cc0f5ab71b9a61 ,
    0x49004400000000000000f3f70d265298dc4aa8b74665bc5006c607000000c252 ,
    0x235b46cf774eb1cc0f5ab71b9a61510074007900520065006300650069007600 ,
    0x65006400000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e007400 ,
    0x4e0061006d0065000000000000008265226ce5165f4597f9cda188898d960700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8043006f006e007400610063007400 ,
    0x470065006e006500720061006c0049004400000000000000ec0b724301a5a646 ,
    0xae4fd759d8d39c9c0700000035f87d9f0b136040ad3c2851f16d2a8043006f00 ,
    0x6e0074006100630074004e0061006d0065004900440000000000000040de5e7a ,
    0xec65a745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x530061006c006500730052006500700049004400000000000000ce7334148975 ,
    0x2f42bffad7debac543a60700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x730072004900440000000000000068034c9480f93242aa20b3b0d9c322cc0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8050006c0061006e006e0065007200 ,
    0x490044000000000000007da6a641b3cf604b95c0700a612b45850700000035f8 ,
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
    0x69006c00000000000000abd7cc991136ba42849d12229c79308a07000000c252 ,
    0x235b46cf774eb1cc0f5ab71b9a61450078007000650063007400650064004200 ,
    0x7900000000000000b79cc02b0663714f868150f758febc4807000000c252235b ,
    0x46cf774eb1cc0f5ab71b9a614f00720064006500720044006100740065000000 ,
    0x00000000ed46a18dde387e4097b37b15f0706ca707000000c252235b46cf774e ,
    0xb1cc0f5ab71b9a6141007200720069007600650064004f006e00000000000000 ,
    0xd53d221d6af82f4f910657c37c8e964c07000000c252235b46cf774eb1cc0f5a ,
    0xb71b9a615100740079004f00720064006500720065006400000000000000dca3 ,
    0xc4ceefc6464aba539d9f4166594107000000c252235b46cf774eb1cc0f5ab71b ,
    0x9a615200650063006500690076006500640042007900000000000000d48b5eee ,
    0x384a2b409f0b8c292945f83c07000000c252235b46cf774eb1cc0f5ab71b9a61 ,
    0x4f007500740054006f00560065006e0064006f00720045007800700065006300 ,
    0x740065006400000000000000201e958f4abbf64d85e4ef30e4b220bd07000000 ,
    0xc252235b46cf774eb1cc0f5ab71b9a614f007500740054006f00560065006e00 ,
    0x64006f007200410063007400750061006c000000000000003e72d4c8800d4b49 ,
    0x9e4b45cf85b6d9c207000000c252235b46cf774eb1cc0f5ab71b9a6153007500 ,
    0x700070006c006900650072004f0072006400650072004e0075006d0062006500 ,
    0x7200000000000000238a70cc04f1b542bd79b33633915bc60700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa66006e0000000000000027afc0ba5db60e409636 ,
    0x470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa6c006e000000 ,
    0x0000000062cb40d5dce03f4fbe2be8da304c6208070000009b910dba7ebd5a47 ,
    0x8b6a83b5b7b9d3e949007300530065006c006500630074006500640000000000 ,
    0x00001cbdaf53f2f9664184ab71832b0c59f2070000009b910dba7ebd5a478b6a ,
    0x83b5b7b9d3e951007400790054006f0052006500630065006900760065000000 ,
    0x00000000bcee6d9381d05749af79b5a638dbd78f07000000c252235b46cf774e ,
    0xb1cc0f5ab71b9a615300650072007600690063006500000000000000cea04e73 ,
    0x540b3142af2c9c022ba9fb0e07000000c252235b46cf774eb1cc0f5ab71b9a61 ,
    0x4400650073006300720069007000740069006f006e0000000000000004aeb271 ,
    0x8000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x490044000000000000001fc238e447652546a47f3ca6a0d889e407000000bb4e ,
    0xe421343f624db77659eef5e022a149004400000000000000032b0eece77b9840 ,
    0xa00917e58fbda33907000000c252235b46cf774eb1cc0f5ab71b9a6156006500 ,
    0x6e0064006f00720049004400000000000000a83b9285b12d37468e696b0d164b ,
    0x2bd707000000c252235b46cf774eb1cc0f5ab71b9a61560065006e0064006f00 ,
    0x72004e0061006d0065004900440000000000000035ae08324c3f9b439499da5f ,
    0x2592a53307000000c252235b46cf774eb1cc0f5ab71b9a61500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004900440000000000 ,
    0x000081e50aba88f23c45b24064912356c8b007000000c252235b46cf774eb1cc ,
    0x0f5ab71b9a614f0072006400650072004200790049004400000000000000836b ,
    0x4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa4900440000000000000007e336be3d1b5f48a91468b29fdc60a007000000 ,
    0x9b910dba7ebd5a478b6a83b5b7b9d3e94f007500740073006900640065005300 ,
    0x7200760049004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
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
        dbText "Name" ="dbo_ProjectComponentOutsideService.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.OutToVendorActual"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.OrderDate"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ExpectedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ArrivedOn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.OutToVendorExpected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.SupplierOrderNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="OrderedByName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaca32a4990e1db47bb260ef18aa13b08
        End
    End
    Begin
        dbText "Name" ="VendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c0b8dfa53ac9a4e91f0143e5c371ede
        End
    End
    Begin
        dbText "Name" ="tmpReceivingOutsideSrv.QtyToReceive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmpReceivingOutsideSrv.IsSelected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QtyReceived"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ID"
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
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =174
    Top =136
    Right =1827
    Bottom =791
    Left =-1
    Top =-1
    Right =1621
    Bottom =223
    Left =0
    Top =0
    ColumnsShown =539
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
        Left =301
        Top =149
        Right =445
        Bottom =293
        Top =0
        Name ="dbo_VendorGeneral"
        Name =""
    End
    Begin
        Left =502
        Top =170
        Right =750
        Bottom =314
        Top =0
        Name ="dbo_VendorName"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =239
        Bottom =303
        Top =0
        Name ="dbo_ProjectComponentOutsideService"
        Name =""
    End
    Begin
        Left =1383
        Top =12
        Right =1527
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =329
        Top =4
        Right =473
        Bottom =148
        Top =0
        Name ="tmpReceivingOutsideSrv"
        Name =""
    End
End
