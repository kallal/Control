Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.EmailDomain"
    Expression ="dbo_ContactLocation.ID"
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.DeleteYN"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_ContactLocation"
    Expression ="dbo_ContactGeneral.ID = dbo_ContactLocation.ContactGeneralID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x9562b65ea4e3f743b78ec0e5b249b95d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a10000000076461f4c ,
    0x2de0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000006ecc18cd46f1e049a0ec ,
    0xf20645e886810000000036f3204c2de0e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f ,
    0x624db77659eef5e022a143006f006d0070004e0061006d006500000000000000 ,
    0x39296fbcc4624a43a80e9999b4e558a807000000bb4ee421343f624db77659ee ,
    0xf5e022a145006d00610069006c0044006f006d00610069006e00000000000000 ,
    0x8f3fa2a882b70a4cb6d5c4e1be34373f070000006ecc18cd46f1e049a0ecf206 ,
    0x45e8868149004400000000000000aaabb1b23bd392488260ff59a466a2420700 ,
    0x00006ecc18cd46f1e049a0ecf20645e886814c006f0063006100740069006f00 ,
    0x6e004e0061006d00650000000000000070419aa87a204f48b8fa78ab5f70a952 ,
    0x070000006ecc18cd46f1e049a0ecf20645e88681440065006c00650074006500 ,
    0x59004e000000000000001fc238e447652546a47f3ca6a0d889e407000000bb4e ,
    0xe421343f624db77659eef5e022a149004400000000000000df5335f01df81449 ,
    0xb4f1ffab68eda91b070000006ecc18cd46f1e049a0ecf20645e8868143006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.EmailDomain"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhMain"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1587
    Bottom =980
    Left =-1
    Top =-1
    Right =1479
    Bottom =497
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
        Right =486
        Bottom =247
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
