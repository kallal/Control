Operation =1
Option =0
Where ="(((dbo_ContactGeneral.SalesRepID) Is Not Null) AND ((dbo_ContactLocation.DeleteY"
    "N)=False) AND ((dbo_ContactLocation.MailXmasCardYN)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactLocation"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Alias ="LocationID"
    Expression ="dbo_ContactLocation.ID"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.EmailDomain"
    Expression ="dbo_ContactLocation.DeleteYN"
    Expression ="dbo_ContactLocation.MailXmasCardYN"
    Alias ="MailYN"
    Expression ="IIf([dbo_ContactLocation.MailXmasCardYN]=True,\"MAIL\",\"\")"
    Alias ="Location"
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.ADD1"
    Expression ="dbo_ContactLocation.ADD2"
    Expression ="dbo_ContactLocation.CITY"
    Expression ="dbo_ContactLocation.PROV"
    Expression ="dbo_ContactLocation.PC"
    Alias ="Sales Rep"
    Expression ="dbo_CompanyEmployee.FN"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactGeneral.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ContactLocation"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactLocation.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ContactGeneral.CompName"
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
    0x4abb0c330d544042a896ab7ab5dd5b04
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000b2be0bc7 ,
    0x12dae4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000006ecc18cd46f1e049a0ec ,
    0xf20645e8868100000000f33f0dc712dae4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x00000000000039a4960a0ccbe542ab18e42cf68884fa00000000708a03c712da ,
    0xe4400000000000000000640062006f005f0043006f006d00700061006e007900 ,
    0x45006d0070006c006f0079006500650000000000000048fff902bc54db478bf7 ,
    0x71c21bacf457070000004abb0c330d544042a896ab7ab5dd5b044c006f006300 ,
    0x6100740069006f006e00490044000000000000007c75f44a82fea842a9d18061 ,
    0x54fd6f3b070000004abb0c330d544042a896ab7ab5dd5b044d00610069006c00 ,
    0x59004e00000000000000a51dc23796fbcf478344066436a09e72070000004abb ,
    0x0c330d544042a896ab7ab5dd5b044c006f0063006100740069006f006e000000 ,
    0x00000000d452469956208744a3820cd32b2f4c5e070000004abb0c330d544042 ,
    0xa896ab7ab5dd5b04530061006c00650073002000520065007000000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a1490044000000000000008f3fa2a882b70a4cb6d5c4e1be34373f0700 ,
    0x00006ecc18cd46f1e049a0ecf20645e886814900440000000000000011b96ad6 ,
    0xe2992845a5955d6e4851e02107000000bb4ee421343f624db77659eef5e022a1 ,
    0x530061006c006500730052006500700049004400000000000000fde2928bbc55 ,
    0x824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a14300 ,
    0x6f006d0070004e0061006d00650000000000000039296fbcc4624a43a80e9999 ,
    0xb4e558a807000000bb4ee421343f624db77659eef5e022a145006d0061006900 ,
    0x6c0044006f006d00610069006e0000000000000070419aa87a204f48b8fa78ab ,
    0x5f70a952070000006ecc18cd46f1e049a0ecf20645e88681440065006c006500 ,
    0x7400650059004e0000000000000001cb0dfa96ba6e4cba76c86021cc07ba0700 ,
    0x00006ecc18cd46f1e049a0ecf20645e886814d00610069006c0058006d006100 ,
    0x7300430061007200640059004e00000000000000aaabb1b23bd392488260ff59 ,
    0xa466a242070000006ecc18cd46f1e049a0ecf20645e886814c006f0063006100 ,
    0x740069006f006e004e0061006d0065000000000000001e2eccbc7bce744db6ea ,
    0xca12c0fa988e070000006ecc18cd46f1e049a0ecf20645e88681410044004400 ,
    0x3100000000000000355ca7965b305e4ba2e4d7ebe1c9603a070000006ecc18cd ,
    0x46f1e049a0ecf20645e886814100440044003200000000000000cbd6c6fa2117 ,
    0xfc4e9df206d70154fd84070000006ecc18cd46f1e049a0ecf20645e886814300 ,
    0x490054005900000000000000ec901205cce6354b9c15fd6176a8d7b507000000 ,
    0x6ecc18cd46f1e049a0ecf20645e88681500052004f0056000000000000003949 ,
    0x9532d1e09842a970f35d35cecce6070000006ecc18cd46f1e049a0ecf20645e8 ,
    0x868150004300000000000000238a70cc04f1b542bd79b33633915bc607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa46004e00000000000000836b4761bb44 ,
    0x5b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf68884fa4900 ,
    0x4400000000000000df5335f01df81449b4f1ffab68eda91b070000006ecc18cd ,
    0x46f1e049a0ecf20645e8868143006f006e007400610063007400470065006e00 ,
    0x6500720061006c00490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe39b34410d653248b9315ad036ded2f8
        End
        dbInteger "ColumnWidth" ="5580"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
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
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8ebb9f62d4eaa044b1a4e6229208587a
        End
        dbInteger "ColumnWidth" ="8580"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd24746d29ac6d74cb70c7a9ec3fcaf9f
        End
        dbInteger "ColumnWidth" ="3585"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cfd66ef3f4ee849b2ccf8f7d65d6de2
        End
        dbInteger "ColumnWidth" ="2130"
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
        dbText "Name" ="Location"
        dbInteger "ColumnWidth" ="1905"
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
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbInteger "ColumnWidth" ="1410"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MailYN"
        dbInteger "ColumnWidth" ="1050"
        dbInteger "ColumnOrder" ="6"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7c75f44a82fea842a9d1806154fd6f3b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.MailXmasCardYN"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.EmailDomain"
        dbInteger "ColumnWidth" ="1050"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbInteger "ColumnWidth" ="975"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LocationID"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x48fff902bc54db478bf771c21bacf457
        End
    End
End
Begin
    State =0
    Left =29
    Top =59
    Right =1591
    Bottom =914
    Left =-1
    Top =-1
    Right =1530
    Bottom =198
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =86
        Top =25
        Right =341
        Bottom =371
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =588
        Top =14
        Right =1036
        Bottom =368
        Top =0
        Name ="dbo_ContactLocation"
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
