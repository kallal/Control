Operation =1
Option =0
Where ="(((dbo_ContactLocation.ContactGeneralID)=[forms]![navMaster].[form]![navSubform]"
    "![contactID]))"
Begin InputTables
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactLocation.ID"
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.ContactGeneralID"
End
Begin OrderBy
    Expression ="dbo_ContactLocation.LocationName"
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
    0xcf34de779e960d4391aa51072b1fb216
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006ecc18cd46f1e049a0ecf20645e88681000000008c6126da ,
    0x0dd8e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004c006f0063006100740069006f006e000000000000008f3fa2a882b70a4c ,
    0xb6d5c4e1be34373f070000006ecc18cd46f1e049a0ecf20645e8868149004400 ,
    0x000000000000aaabb1b23bd392488260ff59a466a242070000006ecc18cd46f1 ,
    0xe049a0ecf20645e886814c006f0063006100740069006f006e004e0061006d00 ,
    0x6500000000000000df5335f01df81449b4f1ffab68eda91b070000006ecc18cd ,
    0x46f1e049a0ecf20645e8868143006f006e007400610063007400470065006e00 ,
    0x6500720061006c004900440000000000000069f3d9b11a4b0140a08785aaf394 ,
    0x39fc01000000f4b438ca53d0e44000000000000000006e00610076004d006100 ,
    0x7300740065007200000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =186
    Top =169
    Right =1776
    Bottom =943
    Left =-1
    Top =-1
    Right =1558
    Bottom =355
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =433
        Bottom =156
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
