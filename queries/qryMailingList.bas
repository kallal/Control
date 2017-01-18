Operation =1
Option =0
Where ="(((dbo_ContactName.IsActive)=True) AND ((dbo_ContactLocation.ADD1) Is Not Null) "
    "AND ((dbo_ContactName.SendMail)=True) AND ((dbo_ContactName.DeleteMeYN)=False) A"
    "ND ((dbo_ContactGeneral.IsClient)=True) AND ((dbo_ContactGeneral.IsCompetitor)=F"
    "alse))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactLocation"
    Name ="dbo_ContactName"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Alias ="Sales Rep"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactName.SendMail"
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactName.ID"
    Alias ="NameAct"
    Expression ="dbo_ContactName.IsActive"
    Expression ="dbo_ContactName.FN"
    Expression ="dbo_ContactName.LN"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactName.Title"
    Expression ="dbo_ContactName.Department"
    Alias ="Location"
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.ADD1"
    Expression ="dbo_ContactLocation.ADD2"
    Expression ="dbo_ContactLocation.CITY"
    Expression ="dbo_ContactLocation.PROV"
    Expression ="dbo_ContactLocation.PC"
    Expression ="dbo_ContactName.SendMail"
    Expression ="dbo_ContactName.Verified"
    Expression ="dbo_ContactName.VerifiedBy"
    Expression ="dbo_ContactName.DeleteMeYN"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
End
Begin Joins
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactName.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =3
    LeftTable ="dbo_ContactLocation"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ContactLocation.ID = dbo_ContactName.ContactLocationID"
    Flag =3
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactGeneral.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.FN"
    Flag =0
    Expression ="dbo_ContactGeneral.CompName"
    Flag =0
    Expression ="dbo_ContactGeneral.SalesRepID"
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
    0x77d6350563a9df4592d2b343abf5bb54
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000c9821255 ,
    0x8ebae4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000006ecc18cd46f1e049a0ec ,
    0xf20645e8868100000000d0ab14558ebae4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x000000000000abd7a13a18cfc44f845c77c762d61a460000000038c14b588eba ,
    0xe4400000000000000000640062006f005f0043006f006e007400610063007400 ,
    0x4e0061006d00650000000000000039a4960a0ccbe542ab18e42cf68884fa0000 ,
    0x00004bc807558ebae4400000000000000000640062006f005f0043006f006d00 ,
    0x700061006e00790045006d0070006c006f00790065006500000000000000d452 ,
    0x469956208744a3820cd32b2f4c5e0700000077d6350563a9df4592d2b343abf5 ,
    0xbb54530061006c00650073002000520065007000000000000000d88a354e2b87 ,
    0x514c8b88673484a292500700000077d6350563a9df4592d2b343abf5bb544e00 ,
    0x61006d006500410063007400000000000000a51dc23796fbcf478344066436a0 ,
    0x9e720700000077d6350563a9df4592d2b343abf5bb544c006f00630061007400 ,
    0x69006f006e00000000000000238a70cc04f1b542bd79b33633915bc607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa46004e00000000000000fde2928bbc55 ,
    0x824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a14300 ,
    0x6f006d0070004e0061006d006500000000000000919bd1d6e18f3740993a3f2b ,
    0xa2c34e0907000000abd7a13a18cfc44f845c77c762d61a46530065006e006400 ,
    0x4d00610069006c000000000000001fc238e447652546a47f3ca6a0d889e40700 ,
    0x0000bb4ee421343f624db77659eef5e022a14900440000000000000055214613 ,
    0xb67cb94eaac4189bee61392c07000000abd7a13a18cfc44f845c77c762d61a46 ,
    0x4900440000000000000036016e1792632f4aa7c3f027f6febe8607000000abd7 ,
    0xa13a18cfc44f845c77c762d61a46490073004100630074006900760065000000 ,
    0x0000000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a18cfc44f ,
    0x845c77c762d61a4646004e0000000000000096debff91f1ff043bcf0998107c8 ,
    0x713e07000000abd7a13a18cfc44f845c77c762d61a464c004e00000000000000 ,
    0x28286631c5eaed4e9d4e2118c912f40c07000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a4645006d00610069006c000000000000000b1ca37d39b2344e93d07754 ,
    0x85e7b9bb07000000abd7a13a18cfc44f845c77c762d61a465400690074006c00 ,
    0x6500000000000000724f1231dc75834584b6e66e0928b67007000000abd7a13a ,
    0x18cfc44f845c77c762d61a464400650070006100720074006d0065006e007400 ,
    0x000000000000aaabb1b23bd392488260ff59a466a242070000006ecc18cd46f1 ,
    0xe049a0ecf20645e886814c006f0063006100740069006f006e004e0061006d00 ,
    0x65000000000000001e2eccbc7bce744db6eaca12c0fa988e070000006ecc18cd ,
    0x46f1e049a0ecf20645e886814100440044003100000000000000355ca7965b30 ,
    0x5e4ba2e4d7ebe1c9603a070000006ecc18cd46f1e049a0ecf20645e886814100 ,
    0x440044003200000000000000cbd6c6fa2117fc4e9df206d70154fd8407000000 ,
    0x6ecc18cd46f1e049a0ecf20645e886814300490054005900000000000000ec90 ,
    0x1205cce6354b9c15fd6176a8d7b5070000006ecc18cd46f1e049a0ecf20645e8 ,
    0x8681500052004f00560000000000000039499532d1e09842a970f35d35cecce6 ,
    0x070000006ecc18cd46f1e049a0ecf20645e8868150004300000000000000713e ,
    0xbbcb811a2041aaf056dc5353339907000000abd7a13a18cfc44f845c77c762d6 ,
    0x1a4656006500720069006600690065006400000000000000cec93aede5ef7e47 ,
    0xaf4f6d6f5cdead8c07000000abd7a13a18cfc44f845c77c762d61a4656006500 ,
    0x720069006600690065006400420079000000000000002b3606d06cafb44a99ea ,
    0x3044174c030407000000abd7a13a18cfc44f845c77c762d61a46440065006c00 ,
    0x6500740065004d00650059004e00000000000000c078b2b09e758d43b3a414bc ,
    0x20509d0607000000bb4ee421343f624db77659eef5e022a14900730043006c00 ,
    0x690065006e00740000000000000007604ce0e23c7d408457d293ab264ae20700 ,
    0x0000bb4ee421343f624db77659eef5e022a149007300560065006e0064006f00 ,
    0x7200000000000000051074cd352c2143baa0d3872ee7b3cd07000000bb4ee421 ,
    0x343f624db77659eef5e022a14900730043006f006d0070006500740069007400 ,
    0x6f007200000000000000d599d0cd154bce47987e4268426c590007000000abd7 ,
    0xa13a18cfc44f845c77c762d61a4643006f006e00740061006300740047006500 ,
    0x6e006500720061006c00490044000000000000008f3fa2a882b70a4cb6d5c4e1 ,
    0xbe34373f070000006ecc18cd46f1e049a0ecf20645e886814900440000000000 ,
    0x0000f1ecc88bbc9ce94488904dc64610eb1407000000abd7a13a18cfc44f845c ,
    0x77c762d61a4643006f006e0074006100630074004c006f006300610074006900 ,
    0x6f006e004900440000000000000011b96ad6e2992845a5955d6e4851e0210700 ,
    0x0000bb4ee421343f624db77659eef5e022a1530061006c006500730052006500 ,
    0x700049004400000000000000836b4761bb445b46b7a949192117f87007000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa49004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe39b34410d653248b9315ad036ded2f8
        End
        dbInteger "ColumnWidth" ="4620"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6ebe4692859c84488ae6e3284d71629
        End
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbInteger "ColumnWidth" ="1470"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x35d74718e8c5d9459b21457532fe822f
        End
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdc75d886bbbff4458aa4bbc9df2dca5d
        End
        dbInteger "ColumnWidth" ="2175"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1c37c75d7e6ec546bad4dbc0108230b8
        End
        dbInteger "ColumnWidth" ="2580"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe0a9e61553fa5d44af84fca9c97b8513
        End
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8ebb9f62d4eaa044b1a4e6229208587a
        End
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd24746d29ac6d74cb70c7a9ec3fcaf9f
        End
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cfd66ef3f4ee849b2ccf8f7d65d6de2
        End
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6bbf34115bed8c458270323600710416
        End
        dbInteger "ColumnWidth" ="480"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="Location"
        dbInteger "ColumnWidth" ="1365"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa51dc23796fbcf478344066436a09e72
        End
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="Sales Rep"
        dbInteger "ColumnWidth" ="1515"
        dbInteger "ColumnOrder" ="15"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd452469956208744a3820cd32b2f4c5e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendMail"
        dbInteger "ColumnWidth" ="1305"
        dbInteger "ColumnOrder" ="0"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbInteger "ColumnWidth" ="2670"
        dbInteger "ColumnOrder" ="16"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbInteger "ColumnWidth" ="975"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NameAct"
        dbInteger "ColumnWidth" ="2025"
        dbInteger "ColumnOrder" ="6"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd88a354e2b87514c8b88673484a29250
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Verified"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.VerifiedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.DeleteMeYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1002"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =96
    Top =136
    Right =1898
    Bottom =876
    Left =-1
    Top =-1
    Right =1770
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =87
        Top =51
        Right =342
        Bottom =397
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1089
        Top =5
        Right =1537
        Bottom =359
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
    Begin
        Left =510
        Top =-4
        Right =1027
        Bottom =414
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =373
        Top =168
        Right =517
        Bottom =312
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
