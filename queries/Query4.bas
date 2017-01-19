Operation =1
Option =0
Where ="(((dbo_ContactLocation.DeleteYN)=True))"
Begin InputTables
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactLocation.DeleteYN"
    Expression ="dbo_ContactLocation.LocationName"
End
Begin OrderBy
    Expression ="dbo_ContactLocation.DeleteYN"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xbf9118ebdcaf854b81bc874637aed879
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006ecc18cd46f1e049a0ecf20645e886810000000036f3204c ,
    0x2de0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004c006f0063006100740069006f006e0000000000000070419aa87a204f48 ,
    0xb8fa78ab5f70a952070000006ecc18cd46f1e049a0ecf20645e8868144006500 ,
    0x6c0065007400650059004e00000000000000aaabb1b23bd392488260ff59a466 ,
    0xa242070000006ecc18cd46f1e049a0ecf20645e886814c006f00630061007400 ,
    0x69006f006e004e0061006d006500000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbInteger "ColumnWidth" ="3705"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =153
    Top =25
    Right =1720
    Bottom =873
    Left =-1
    Top =-1
    Right =1535
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =39
        Top =20
        Right =514
        Bottom =429
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
