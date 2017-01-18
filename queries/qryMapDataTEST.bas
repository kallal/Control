Operation =1
Option =0
Where ="(((dbo_ContactLocation.ADD1) Is Not Null))"
Begin InputTables
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.ADD1"
    Expression ="dbo_ContactLocation.ADD2"
    Expression ="dbo_ContactLocation.CITY"
    Expression ="dbo_ContactLocation.PROV"
    Expression ="dbo_ContactLocation.PC"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe9103c8ffa62fa4e9114ecbf559cbacf
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006ecc18cd46f1e049a0ecf20645e886810000000086c873d9 ,
    0xccb2e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004c006f0063006100740069006f006e00000000000000aaabb1b23bd39248 ,
    0x8260ff59a466a242070000006ecc18cd46f1e049a0ecf20645e886814c006f00 ,
    0x63006100740069006f006e004e0061006d0065000000000000001e2eccbc7bce ,
    0x744db6eaca12c0fa988e070000006ecc18cd46f1e049a0ecf20645e886814100 ,
    0x440044003100000000000000355ca7965b305e4ba2e4d7ebe1c9603a07000000 ,
    0x6ecc18cd46f1e049a0ecf20645e886814100440044003200000000000000cbd6 ,
    0xc6fa2117fc4e9df206d70154fd84070000006ecc18cd46f1e049a0ecf20645e8 ,
    0x86814300490054005900000000000000ec901205cce6354b9c15fd6176a8d7b5 ,
    0x070000006ecc18cd46f1e049a0ecf20645e88681500052004f00560000000000 ,
    0x000039499532d1e09842a970f35d35cecce6070000006ecc18cd46f1e049a0ec ,
    0xf20645e886815000430000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x16295383b48cac43bb5e4d15a4d5babd
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x86eef39bc3361b41a8aaec5064127463
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5aec05ad34da204ca777e79a4d042fa5
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe56937a6bc52a14c97599b83846f58ec
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1130156a71551d4a88b9601d735772a6
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x182394c6986b0843b88e3fa7b24b5741
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1374
    Bottom =439
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =80
        Top =21
        Right =542
        Bottom =311
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
