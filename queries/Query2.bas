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
    Expression ="dbo_ContactLocation.PhMain"
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
dbMemo "OrderBy" ="[Query2].[EmailDomain] DESC"
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
    0x59004e00000000000000236fe5b1cb4ecb4c96f77962a250c3cd070000006ecc ,
    0x18cd46f1e049a0ecf20645e88681500068004d00610069006e00000000000000 ,
    0x1fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db77659ee ,
    0xf5e022a149004400000000000000df5335f01df81449b4f1ffab68eda91b0700 ,
    0x00006ecc18cd46f1e049a0ecf20645e8868143006f006e007400610063007400 ,
    0x470065006e006500720061006c00490044000000000000009562b65ea4e3f743 ,
    0xb78ec0e5b249b95d00000000ecfa05fb31e0e440000000000000000051007500 ,
    0x650072007900320000000000000039296fbcc4624a43a80e9999b4e558a80700 ,
    0x00009562b65ea4e3f743b78ec0e5b249b95d45006d00610069006c0044006f00 ,
    0x6d00610069006e00000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
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
    Bottom =514
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
