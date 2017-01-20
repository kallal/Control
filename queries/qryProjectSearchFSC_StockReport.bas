Operation =1
Option =0
Where ="(((Vendor.CompName) Is Not Null) AND ((dbo_ProjectHeader.void)=False) AND ((dbo_"
    "ProjectHeader.IsFSC)=True))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
    Name ="dbo_CompanyEmployee"
    Name ="viewTotalProjectValue"
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ContactGeneral"
    Alias ="Vendor"
    Name ="dbo_ProjectComponentPrepress"
    Name ="qryProjectSearchFSC_CountOfNetSheets"
End
Begin OutputColumns
    Alias ="ComponentID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Alias ="OrderedBy"
    Expression ="[dbo_contactName].[fn] & \" \" & [dbo_contactname].[ln]"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.PONumber"
    Alias ="SalesRep"
    Expression ="[dbo_companyEmployee].[fn] & \" \" & [dbo_companyEmployee].[ln]"
    Expression ="viewTotalProjectValue.TotalDocketValue"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentStock.QtyOrdered"
    Expression ="dbo_ProjectComponentStock.MstrX"
    Expression ="dbo_ProjectComponentStock.MstrY"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.Weight"
    Alias ="VendorName"
    Expression ="Vendor.CompName"
    Expression ="Vendor.VendorFSCNo"
    Expression ="dbo_ProjectComponentStock.SupplierPackingListNumber"
    Alias ="FSC_100"
    Expression ="IIf([dbo_projectComponentPrepress].[fsclevel]=1,\"X\",\"\")"
    Alias ="FSC_MIX"
    Expression ="IIf([dbo_projectComponentPrepress].[fsclevel]=2,\"X\",\"\")"
    Alias ="FSC_RE"
    Expression ="IIf([dbo_projectComponentPrepress].[fsclevel]=3,\"X\",\"\")"
    Expression ="qryProjectSearchFSC_CountOfNetSheets.NetSheets"
    Expression ="qryProjectSearchFSC_CountOfNetSheets.GrossSheets"
    Expression ="qryProjectSearchFSC_CountOfNetSheets.PaperXInch"
    Expression ="qryProjectSearchFSC_CountOfNetSheets.PaperYInch"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectHeader.BillOrderedBy = dbo_ContactName.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectHeader.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="viewTotalProjectValue"
    Expression ="dbo_ProjectHeader.ID = viewTotalProjectValue.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectHeader.ID = dbo_ProjectComponentHeader.ProjectHeaderID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="dbo_ProjectComponentHeader.ID = dbo_ProjectComponentStock.ProjectComponentID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="Vendor"
    Expression ="dbo_ProjectComponentStock.VendorID = Vendor.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPrepress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPrepress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="qryProjectSearchFSC_CountOfNetSheets"
    Expression ="dbo_ProjectComponentStock.PressRunName = qryProjectSearchFSC_CountOfNetSheets.Se"
        "ctionName"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="qryProjectSearchFSC_CountOfNetSheets"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = qryProjectSearchFSC_CountOfNetShe"
        "ets.ProjectComponentID"
    Flag =2
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
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a10000000076461f4c2de0e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46000000002bfd224c2de0e4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d00650000000000000039a4960a0ccbe542ab18e42cf68884fa00000000f162 ,
    0x124c2de0e4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f00790065006500000000000000221853e36fed ,
    0xa04f8221f9fc8678092f000000005d21d44c2de0e44000000000000000007600 ,
    0x69006500770054006f00740061006c00500072006f006a006500630074005600 ,
    0x61006c007500650000000000000089466ecffa47f64d8a430ccaf9e274af0000 ,
    0x0000fdd0694c2de0e4400000000000000000640062006f005f00500072006f00 ,
    0x6a0065006300740043006f006d0070006f006e0065006e007400530074006f00 ,
    0x63006b00000000000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8 ,
    0x534c2de0e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720000000000000031cd7ae343a06f4e947a4d021bf74079000000006ef75e4c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500700072006500 ,
    0x730073000000000000009064004d452deb4fa9bdd4b6728ae9a5000000001261 ,
    0xea0950e0e4400000000000000000710072007900500072006f006a0065006300 ,
    0x74005300650061007200630068004600530043005f0043006f0075006e007400 ,
    0x4f0066004e0065007400530068006500650074007300000000000000061ac725 ,
    0xe2d4bb409f1e8318da999c0907000000353c85ed072a4a43b3cff3f20f66a1e3 ,
    0x43006f006d0070006f006e0065006e00740049004400000000000000b442e147 ,
    0xd07032438ae06e0f86ac40d407000000353c85ed072a4a43b3cff3f20f66a1e3 ,
    0x4f0072006400650072006500640042007900000000000000dd24e4db54b9c84f ,
    0xa9e6187cf0183ded07000000353c85ed072a4a43b3cff3f20f66a1e353006100 ,
    0x6c0065007300520065007000000000000000d01d3dd498190940858eed16c5d6 ,
    0x430907000000353c85ed072a4a43b3cff3f20f66a1e3560065006e0064006f00 ,
    0x72004e0061006d0065000000000000000133837d430b9d4ea6d14af7e4afa417 ,
    0x07000000353c85ed072a4a43b3cff3f20f66a1e34600530043005f0031003000 ,
    0x3000000000000000de59aca77440ad428ffa51c1a8af79fc07000000353c85ed ,
    0x072a4a43b3cff3f20f66a1e34600530043005f004d0049005800000000000000 ,
    0x2693ca0deaee984799926b79c9f6534f07000000353c85ed072a4a43b3cff3f2 ,
    0x0f66a1e34600530043005f005200450000000000000029556c4fcc6de9418049 ,
    0xe37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be490044000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8044006f0063006b00650074004e0075006d00000000000000 ,
    0x7da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8049006e0076006f006900630065004e0075006d00000000000000fde2 ,
    0x928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e0 ,
    0x22a143006f006d0070004e0061006d0065000000000000001c9b84855b8f264a ,
    0xbd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a8050007200 ,
    0x6f006a006500630074004e0061006d00650000000000000065ad3064e8981147 ,
    0xa4bdc2ff83e1e02607000000abd7a13a18cfc44f845c77c762d61a4666006e00 ,
    0x00000000000096debff91f1ff043bcf0998107c8713e07000000abd7a13a18cf ,
    0xc44f845c77c762d61a466c006e00000000000000c310a93c2fe0c4488706f21c ,
    0xe736cf3a0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00 ,
    0x65007400440061007400650000000000000077a5524b02faf248a18587169cb2 ,
    0x874b0700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f006900 ,
    0x630065004400610074006500000000000000c2ae23dbc46de0498a55893ecc1e ,
    0xa0130700000035f87d9f0b136040ad3c2851f16d2a8050004f004e0075006d00 ,
    0x620065007200000000000000238a70cc04f1b542bd79b33633915bc607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa66006e0000000000000027afc0ba5db6 ,
    0x0e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa6c00 ,
    0x6e00000000000000cc6778d275654d469e749d2ff4cb28aa07000000221853e3 ,
    0x6feda04f8221f9fc8678092f54006f00740061006c0044006f0063006b006500 ,
    0x7400560061006c0075006500000000000000a21dc4fed47c244fa08fb5209ebb ,
    0xfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f00 ,
    0x6e0065006e0074004e0061006d006500000000000000dad4a6c1c16ae546abad ,
    0x203c0819a8710700000089466ecffa47f64d8a430ccaf9e274af510074007900 ,
    0x4f00720064006500720065006400000000000000713513c1b5a6cd42a31ef41a ,
    0x4a1d8a780700000089466ecffa47f64d8a430ccaf9e274af4d00730074007200 ,
    0x580000000000000010d2b25ce6d2db44a196021f3a4d4c010700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af4d007300740072005900000000000000e9d4a493 ,
    0xb1e3504b863faa0fba8186c00700000089466ecffa47f64d8a430ccaf9e274af ,
    0x4400650073006300720069007000740069006f006e000000000000000a0fde3a ,
    0x8f63b24ab9015124129711500700000089466ecffa47f64d8a430ccaf9e274af ,
    0x5700650069006700680074000000000000000000000000000000000000000000 ,
    0x00000000000000000000000000000000000000000000560065006e0064006f00 ,
    0x7200000000000000605b2c3ae71de74fb6d28bf46bc818a907000000bb4ee421 ,
    0x343f624db77659eef5e022a1560065006e0064006f0072004600530043004e00 ,
    0x6f000000000000003a6702c2545e6f4eb29807276a37ebc10700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af53007500700070006c0069006500720050006100 ,
    0x63006b0069006e0067004c006900730074004e0075006d006200650072000000 ,
    0x00000000c6ecd305d4b75b4f8d069e74d8ebc1cc0700000031cd7ae343a06f4e ,
    0x947a4d021bf740796600730063006c006500760065006c00000000000000b48d ,
    0x053ab466c145baa12891685bec9f070000009064004d452deb4fa9bdd4b6728a ,
    0xe9a54e0065007400530068006500650074007300000000000000a9d8cf08a797 ,
    0x0e41b7ba2c81e662684c070000009064004d452deb4fa9bdd4b6728ae9a54700 ,
    0x72006f0073007300530068006500650074007300000000000000efc82cdffc1d ,
    0x7d489f71a723a4edac40070000009064004d452deb4fa9bdd4b6728ae9a55000 ,
    0x6100700065007200580049006e0063006800000000000000edf6b482cbcb5f4e ,
    0xaa66dd0d64f56b1d070000009064004d452deb4fa9bdd4b6728ae9a550006100 ,
    0x700065007200590049006e00630068000000000000008265226ce5165f4597f9 ,
    0xcda188898d960700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00 ,
    0x7400610063007400470065006e006500720061006c0049004400000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a149004400000000000000437b2c749c26d9488eaca0d07ff97a9f0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80420069006c006c004f0072006400 ,
    0x65007200650064004200790000000000000055214613b67cb94eaac4189bee61 ,
    0x392c07000000abd7a13a18cfc44f845c77c762d61a4649004400000000000000 ,
    0x40de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80530061006c006500730052006500700049004400000000000000836b ,
    0x4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa4900440000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80490044000000000000007b000948f6ed ,
    0xa242b7fc69e56945dc8b07000000221853e36feda04f8221f9fc8678092f4900 ,
    0x44000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006a00650063007400480065006100 ,
    0x64006500720049004400000000000000fe371115569a08478b428437714db9f9 ,
    0x0700000089466ecffa47f64d8a430ccaf9e274af500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e00740049004400000000000000acd6 ,
    0xa6e372a779498bc62b47128da6270700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af560065006e0064006f00720049004400000000000000c31e4efad55c574a ,
    0xad9cce13d02d3f790700000031cd7ae343a06f4e947a4d021bf7407950007200 ,
    0x6f006a0065006300740043006f006d0070006f006e0065006e00740049004400 ,
    0x00000000000079563dff7b4c1d4cac3f9086abd61c0c0700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af50007200650073007300520075006e004e0061006d00 ,
    0x6500000000000000ffd475da9c35f547ad76cf08e4dbfd4e070000009064004d ,
    0x452deb4fa9bdd4b6728ae9a5530065006300740069006f006e004e0061006d00 ,
    0x6500000000000000e19fd78d6de8f042912e16a0f4718a30070000009064004d ,
    0x452deb4fa9bdd4b6728ae9a5500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e00740049004400000000000000e04379333b12ce4eb39e ,
    0xba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a8076006f006900 ,
    0x6400000000000000748f86ce53ecfb429f888aeb3372a5450700000035f87d9f ,
    0x0b136040ad3c2851f16d2a804900730046005300430000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
dbBinary "GUID" = Begin
    0x353c85ed072a4a43b3cff3f20f66a1e3
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4095"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3930"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="OrderedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb442e147d07032438ae06e0f86ac40d4
        End
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd24e4db54b9c84fa9e6187cf0183ded
        End
    End
    Begin
        dbText "Name" ="viewTotalProjectValue.TotalDocketValue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyOrdered"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Description"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrX"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrY"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Weight"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VendorName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd01d3dd498190940858eed16c5d64309
        End
    End
    Begin
        dbText "Name" ="Vendor.VendorFSCNo"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SupplierPackingListNumber"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FSC_MIX"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde59aca77440ad428ffa51c1a8af79fc
        End
    End
    Begin
        dbText "Name" ="FSC_RE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2693ca0deaee984799926b79c9f6534f
        End
    End
    Begin
        dbText "Name" ="FSC_100"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0133837d430b9d4ea6d14af7e4afa417
        End
    End
    Begin
        dbText "Name" ="ComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x061ac725e2d4bb409f1e8318da999c09
        End
    End
    Begin
        dbText "Name" ="qryProjectSearchFSC_CountOfNetSheets.NetSheets"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qryProjectSearchFSC_CountOfNetSheets.GrossSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryProjectSearchFSC_CountOfNetSheets.PaperXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryProjectSearchFSC_CountOfNetSheets.PaperYInch"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =111
    Top =32
    Right =1824
    Bottom =760
    Left =-1
    Top =-1
    Right =1681
    Bottom =368
    Left =250
    Top =0
    ColumnsShown =539
    Begin
        Left =-186
        Top =14
        Right =160
        Bottom =265
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =238
        Top =17
        Right =458
        Bottom =161
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =392
        Top =34
        Right =631
        Bottom =178
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =956
        Top =12
        Right =1190
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =594
        Top =3
        Right =781
        Bottom =174
        Top =0
        Name ="viewTotalProjectValue"
        Name =""
    End
    Begin
        Left =939
        Top =198
        Right =1201
        Bottom =342
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =692
        Top =273
        Right =918
        Bottom =416
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1238
        Top =108
        Right =1382
        Bottom =252
        Top =0
        Name ="Vendor"
        Name =""
    End
    Begin
        Left =1057
        Top =20
        Right =1401
        Bottom =164
        Top =0
        Name ="dbo_ProjectComponentPrepress"
        Name =""
    End
    Begin
        Left =1457
        Top =170
        Right =1646
        Bottom =427
        Top =0
        Name ="qryProjectSearchFSC_CountOfNetSheets"
        Name =""
    End
End
