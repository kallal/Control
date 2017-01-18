Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
    Name ="viewFindMostRecentProjects"
End
Begin OutputColumns
    Expression ="dbo_ContactName.IsActive"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactName.FN"
    Expression ="dbo_ContactName.LN"
    Expression ="dbo_ContactName.Title"
    Expression ="dbo_ContactName.PhDirect"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
    Expression ="dbo_ContactName.ID"
    Expression ="dbo_ContactGeneral.ID"
    Expression ="viewFindMostRecentProjects.DocketNum"
    Expression ="viewFindMostRecentProjects.DocketDate"
    Expression ="viewFindMostRecentProjects.InvoiceNum"
    Expression ="viewFindMostRecentProjects.InvoiceDate"
    Expression ="viewFindMostRecentProjects.QuoteNum"
    Expression ="viewFindMostRecentProjects.QuoteDate"
    Alias ="SalesRepID"
    Expression ="IIf(Nz([dbo_contactname]![ContactNameSalesRepID],0)=0,[dbo_ContactGeneral]![Sale"
        "sRepID],[dbo_ContactName]![ContactNameSalesRepID])"
End
Begin Joins
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactName.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =3
    LeftTable ="dbo_ContactGeneral"
    RightTable ="viewFindMostRecentProjects"
    Expression ="dbo_ContactGeneral.ID = viewFindMostRecentProjects.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xde2f1f4090c70542b20b429b50e705d0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000294b24da ,
    0x0dd8e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000abd7a13a18cfc44f845c ,
    0x77c762d61a46000000006da328da0dd8e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004e0061006d006500000000000000487d ,
    0x1cb8b11a234aaf5c461023406c330000000008ff98da0dd8e440000000000000 ,
    0x00007600690065007700460069006e0064004d006f0073007400520065006300 ,
    0x65006e007400500072006f006a00650063007400730000000000000015c76f40 ,
    0x7c2bc44f964ef1640f27493f07000000de2f1f4090c70542b20b429b50e705d0 ,
    0x530061006c00650073005200650070004900440000000000000036016e179263 ,
    0x2f4aa7c3f027f6febe8607000000abd7a13a18cfc44f845c77c762d61a464900 ,
    0x7300410063007400690076006500000000000000fde2928bbc55824d8e33fcf8 ,
    0xa8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d007000 ,
    0x4e0061006d00650000000000000065ad3064e8981147a4bdc2ff83e1e0260700 ,
    0x0000abd7a13a18cfc44f845c77c762d61a4646004e0000000000000096debff9 ,
    0x1f1ff043bcf0998107c8713e07000000abd7a13a18cfc44f845c77c762d61a46 ,
    0x4c004e000000000000000b1ca37d39b2344e93d0775485e7b9bb07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a465400690074006c006500000000000000314d ,
    0xcea91aeaac4ab1665229bd5d11d107000000abd7a13a18cfc44f845c77c762d6 ,
    0x1a465000680044006900720065006300740000000000000028286631c5eaed4e ,
    0x9d4e2118c912f40c07000000abd7a13a18cfc44f845c77c762d61a4645006d00 ,
    0x610069006c00000000000000c078b2b09e758d43b3a414bc20509d0607000000 ,
    0xbb4ee421343f624db77659eef5e022a14900730043006c00690065006e007400 ,
    0x00000000000007604ce0e23c7d408457d293ab264ae207000000bb4ee421343f ,
    0x624db77659eef5e022a149007300560065006e0064006f007200000000000000 ,
    0x051074cd352c2143baa0d3872ee7b3cd07000000bb4ee421343f624db77659ee ,
    0xf5e022a14900730043006f006d00700065007400690074006f00720000000000 ,
    0x000055214613b67cb94eaac4189bee61392c07000000abd7a13a18cfc44f845c ,
    0x77c762d61a46490044000000000000001fc238e447652546a47f3ca6a0d889e4 ,
    0x07000000bb4ee421343f624db77659eef5e022a149004400000000000000e86c ,
    0x079d83e5a34ea440227b2aac9a1f07000000487d1cb8b11a234aaf5c46102340 ,
    0x6c3344006f0063006b00650074004e0075006d00000000000000dc2be2c560ae ,
    0x42449cb75a42fecfcd7e07000000487d1cb8b11a234aaf5c461023406c334400 ,
    0x6f0063006b006500740044006100740065000000000000006a46f01cc04c5b46 ,
    0x99c95523f2f0140607000000487d1cb8b11a234aaf5c461023406c3349006e00 ,
    0x76006f006900630065004e0075006d0000000000000023b30fe08968c44e8598 ,
    0xc76412f48fb107000000487d1cb8b11a234aaf5c461023406c3349006e007600 ,
    0x6f00690063006500440061007400650000000000000040d66cd79035aa408992 ,
    0xfe4846caaf0c07000000487d1cb8b11a234aaf5c461023406c33510075006f00 ,
    0x740065004e0075006d000000000000007063bb1c2f7d6a4abf85417bca89f7d6 ,
    0x07000000487d1cb8b11a234aaf5c461023406c33510075006f00740065004400 ,
    0x610074006500000000000000529afa58122e354698e2ae0f8e590a0907000000 ,
    0xabd7a13a18cfc44f845c77c762d61a4643006f006e0074006100630074004e00 ,
    0x61006d006500530061006c006500730052006500700049004400000000000000 ,
    0x11b96ad6e2992845a5955d6e4851e02107000000bb4ee421343f624db77659ee ,
    0xf5e022a1530061006c006500730052006500700049004400000000000000d599 ,
    0xd0cd154bce47987e4268426c590007000000abd7a13a18cfc44f845c77c762d6 ,
    0x1a4643006f006e007400610063007400470065006e006500720061006c004900 ,
    0x4400000000000000aba84b91ba26a8438d2cfdb0e0abf29b07000000487d1cb8 ,
    0xb11a234aaf5c461023406c334900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2895e171758a5b459ee82c61fa783645
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe62e4348c2d4e449b1c9c97276d50ccc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1189ddf9d19b4f47be2e66a68c86f908
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaeb881237c2b4749a135bec0432ed08b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x909f41ffbe539541937afb76dff7af8b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x99e9c6515fdd02489efe5f776810ffed
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhDirect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x973928b77ac1564580c6b7e9e903673f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d410b3756eb2342877512a27efac06a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x242567005df698489c5d5dd0e22b8f5c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.QuoteDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.DocketDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.QuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15c76f407c2bc44f964ef1640f27493f
        End
    End
End
Begin
    State =0
    Left =43
    Top =-6
    Right =1556
    Bottom =722
    Left =-1
    Top =-1
    Right =1481
    Bottom =292
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =451
        Bottom =156
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =641
        Top =-15
        Right =1014
        Bottom =213
        Top =0
        Name ="viewFindMostRecentProjects"
        Name =""
    End
End
