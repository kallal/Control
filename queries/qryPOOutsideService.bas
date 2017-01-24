Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactLocation"
    Name ="dbo_ContactName"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentOutsideService"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentOutsideService.ID"
    Expression ="dbo_ProjectComponentOutsideService.ProjectComponentID"
    Alias ="VendorName"
    Expression ="dbo_ContactGeneral.CompName"
    Alias ="VendorSalesRep"
    Expression ="[dbo_Contactname].[FN] & \" \" & [dbo_contactname].[ln]"
    Expression ="dbo_ContactLocation.ADD1"
    Expression ="dbo_ContactLocation.ADD2"
    Expression ="dbo_ContactLocation.CITY"
    Expression ="dbo_ContactLocation.PROV"
    Expression ="dbo_ContactLocation.PC"
    Expression ="dbo_ProjectComponentOutsideService.Service"
    Expression ="dbo_ProjectComponentOutsideService.Description"
    Alias ="OrderedBy"
    Expression ="[dbo_companyEmployee].[FN] & \" \" & [dbo_CompanyEmployee].[LN]"
    Expression ="dbo_ProjectComponentOutsideService.OrderDate"
    Alias ="PONumber"
    Expression ="dbo_ProjectHeader.docketnum"
    Expression ="dbo_ProjectComponentOutsideService.OutToVendorExpected"
    Expression ="dbo_ProjectComponentOutsideService.ExpectedBy"
    Expression ="dbo_ProjectComponentOutsideService.QuoteAmt"
    Expression ="dbo_ProjectComponentOutsideService.PricePerM"
    Expression ="dbo_ProjectComponentOutsideService.QtyOrdered"
    Expression ="dbo_ContactName.PhDirect"
    Expression ="dbo_ContactName.PhFax"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ProjectHeader.QuoteNum"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentOutsideService.ProjectComponentID = dbo_ProjectComponentHead"
        "er.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectComponentOutsideService.VendorID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectComponentOutsideService.VendorNameID = dbo_ContactName.ID"
    Flag =2
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactLocation"
    Expression ="dbo_ContactName.ContactLocationID = dbo_ContactLocation.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentOutsideService"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectComponentOutsideService.OrderByID = dbo_CompanyEmployee.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xc8d433f3efd0384aa9a75cef1af2590b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryPOOutsideService].[ProjectComponentID] DESC"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a1000000006f48190d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000006ecc18cd46f1e049a0ec ,
    0xf20645e8868100000000bda0220dcfe0e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x000000000000abd7a13a18cfc44f845c77c762d61a46000000000acb280dcfe0 ,
    0xe4400000000000000000640062006f005f0043006f006e007400610063007400 ,
    0x4e0061006d00650000000000000035f87d9f0b136040ad3c2851f16d2a800000 ,
    0x0000d8784d0ecfe0e4400000000000000000640062006f005f00500072006f00 ,
    0x6a00650063007400480065006100640065007200000000000000c252235b46cf ,
    0x774eb1cc0f5ab71b9a610000000087fd280ecfe0e44000000000000000006400 ,
    0x62006f005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e0074004f00750074007300690064006500530065007200760069006300 ,
    0x6500000000000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40ccfe0 ,
    0xe4400000000000000000640062006f005f0043006f006d00700061006e007900 ,
    0x45006d0070006c006f007900650065000000000000000f75f26865ce0941a6a7 ,
    0x58ab3a6ab56f07000000c8d433f3efd0384aa9a75cef1af2590b560065006e00 ,
    0x64006f0072004e0061006d0065000000000000000e452468f22b7546b9ecfe99 ,
    0x3f165e5007000000c8d433f3efd0384aa9a75cef1af2590b560065006e006400 ,
    0x6f007200530061006c00650073005200650070000000000000000d39169618ed ,
    0x24468c8c7bde029585d807000000c8d433f3efd0384aa9a75cef1af2590b4f00 ,
    0x720064006500720065006400420079000000000000007e6a66c373db5b43b92b ,
    0x767272be585907000000c8d433f3efd0384aa9a75cef1af2590b50004f004e00 ,
    0x75006d0062006500720000000000000036360845580dd141a2df46398416dfa4 ,
    0x07000000c252235b46cf774eb1cc0f5ab71b9a614900440000000000000035ae ,
    0x08324c3f9b439499da5f2592a53307000000c252235b46cf774eb1cc0f5ab71b ,
    0x9a61500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x740049004400000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000 ,
    0xbb4ee421343f624db77659eef5e022a143006f006d0070004e0061006d006500 ,
    0x00000000000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a18cf ,
    0xc44f845c77c762d61a4646004e0000000000000096debff91f1ff043bcf09981 ,
    0x07c8713e07000000abd7a13a18cfc44f845c77c762d61a466c006e0000000000 ,
    0x00001e2eccbc7bce744db6eaca12c0fa988e070000006ecc18cd46f1e049a0ec ,
    0xf20645e886814100440044003100000000000000355ca7965b305e4ba2e4d7eb ,
    0xe1c9603a070000006ecc18cd46f1e049a0ecf20645e886814100440044003200 ,
    0x000000000000cbd6c6fa2117fc4e9df206d70154fd84070000006ecc18cd46f1 ,
    0xe049a0ecf20645e886814300490054005900000000000000ec901205cce6354b ,
    0x9c15fd6176a8d7b5070000006ecc18cd46f1e049a0ecf20645e8868150005200 ,
    0x4f00560000000000000039499532d1e09842a970f35d35cecce6070000006ecc ,
    0x18cd46f1e049a0ecf20645e8868150004300000000000000bcee6d9381d05749 ,
    0xaf79b5a638dbd78f07000000c252235b46cf774eb1cc0f5ab71b9a6153006500 ,
    0x72007600690063006500000000000000cea04e73540b3142af2c9c022ba9fb0e ,
    0x07000000c252235b46cf774eb1cc0f5ab71b9a61440065007300630072006900 ,
    0x7000740069006f006e00000000000000238a70cc04f1b542bd79b33633915bc6 ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa46004e0000000000000027af ,
    0xc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa4c004e00000000000000b79cc02b0663714f868150f758febc4807000000 ,
    0xc252235b46cf774eb1cc0f5ab71b9a614f007200640065007200440061007400 ,
    0x6500000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8064006f0063006b00650074006e0075006d000000 ,
    0x00000000d48b5eee384a2b409f0b8c292945f83c07000000c252235b46cf774e ,
    0xb1cc0f5ab71b9a614f007500740054006f00560065006e0064006f0072004500 ,
    0x7800700065006300740065006400000000000000abd7cc991136ba42849d1222 ,
    0x9c79308a07000000c252235b46cf774eb1cc0f5ab71b9a614500780070006500 ,
    0x630074006500640042007900000000000000c9a9ddcea37f69468920579db02c ,
    0x121607000000c252235b46cf774eb1cc0f5ab71b9a61510075006f0074006500 ,
    0x41006d0074000000000000004da7ba50348c254084575e386714615907000000 ,
    0xc252235b46cf774eb1cc0f5ab71b9a6150007200690063006500500065007200 ,
    0x4d00000000000000d53d221d6af82f4f910657c37c8e964c07000000c252235b ,
    0x46cf774eb1cc0f5ab71b9a615100740079004f00720064006500720065006400 ,
    0x000000000000314dcea91aeaac4ab1665229bd5d11d107000000abd7a13a18cf ,
    0xc44f845c77c762d61a4650006800440069007200650063007400000000000000 ,
    0xb910a49a8afe0447bf74a7d66b3dfd6c07000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a465000680046006100780000000000000028286631c5eaed4e9d4e2118 ,
    0xc912f40c07000000abd7a13a18cfc44f845c77c762d61a4645006d0061006900 ,
    0x6c00000000000000d0b1539c9f7bfc439d9435b3dda929d50700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80510075006f00740065004e0075006d0000000000 ,
    0x000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be490044000000000000002042568302f48b4d89eb4ba2abddca73 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a0065006300 ,
    0x74004800650061006400650072004900440000000000000004aeb2718000d24b ,
    0xb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a8049004400 ,
    0x000000000000032b0eece77b9840a00917e58fbda33907000000c252235b46cf ,
    0x774eb1cc0f5ab71b9a61560065006e0064006f00720049004400000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a149004400000000000000a83b9285b12d37468e696b0d164b2bd70700 ,
    0x0000c252235b46cf774eb1cc0f5ab71b9a61560065006e0064006f0072004e00 ,
    0x61006d0065004900440000000000000055214613b67cb94eaac4189bee61392c ,
    0x07000000abd7a13a18cfc44f845c77c762d61a4649004400000000000000f1ec ,
    0xc88bbc9ce94488904dc64610eb1407000000abd7a13a18cfc44f845c77c762d6 ,
    0x1a4643006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x490044000000000000008f3fa2a882b70a4cb6d5c4e1be34373f070000006ecc ,
    0x18cd46f1e049a0ecf20645e886814900440000000000000081e50aba88f23c45 ,
    0xb24064912356c8b007000000c252235b46cf774eb1cc0f5ab71b9a614f007200 ,
    0x6400650072004200790049004400000000000000836b4761bb445b46b7a94919 ,
    0x2117f8700700000039a4960a0ccbe542ab18e42cf68884fa4900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0b95d729abf3c84a83fcb382ca77919b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1cd2e3e0ff72444595ce1dbfa9462199
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x72732995a946494e80959379214de977
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21261c4d70ee8645bba41bee3d9ffea3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.Service"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xecc98f139e4ab4479fa7e52f2fd20c05
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.Description"
        dbInteger "ColumnWidth" ="4485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfbf7157e1cc7fc42a07f0cea5bf8bcff
        End
    End
    Begin
        dbText "Name" ="OrderedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d39169618ed24468c8c7bde029585d8
        End
    End
    Begin
        dbText "Name" ="PONumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7e6a66c373db5b43b92b767272be5859
        End
    End
    Begin
        dbText "Name" ="VendorSalesRep"
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e452468f22b7546b9ecfe993f165e50
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QuoteAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3dddeaa25a849146af59c31b9ac606d6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.OutToVendorExpected"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39402041777ae645a2943ec3702534cc
        End
    End
    Begin
        dbText "Name" ="VendorName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0f75f26865ce0941a6a758ab3a6ab56f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d3871c96b40a44eb5cc14ab891eead1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ExpectedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x015365b762aa9f41a15e91ed80a8e951
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QtyOrdered"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x33e4dca8b2215144ab290521759a5191
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.PricePerM"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa0f8b438b5435a4daaf4cc9ea8ad2017
        End
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
        dbText "Name" ="dbo_ProjectComponentOutsideService.OrderDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.MN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =88
    Top =34
    Right =1532
    Bottom =882
    Left =-1
    Top =-1
    Right =1412
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =649
        Top =246
        Right =850
        Bottom =541
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1184
        Top =214
        Right =1394
        Bottom =514
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
    Begin
        Left =920
        Top =229
        Right =1131
        Bottom =509
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =879
        Top =25
        Right =1084
        Bottom =169
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =10
        Top =32
        Right =611
        Bottom =525
        Top =0
        Name ="dbo_ProjectComponentOutsideService"
        Name =""
    End
    Begin
        Left =645
        Top =12
        Right =842
        Bottom =234
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1132
        Top =12
        Right =1276
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
