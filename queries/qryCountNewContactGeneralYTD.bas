Operation =1
Option =0
Where ="(((Format([ClientSince],\"mm\"))=\"99\"))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Alias ="CountOfID"
    Expression ="Count(dbo_ContactGeneral.ID)"
    Expression ="dbo_ContactGeneral.SalesRepID"
End
Begin Groups
    Expression ="dbo_ContactGeneral.SalesRepID"
    GroupLevel =0
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
    0xb20e1489690fb64ea2a68de81dcdf2bf
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000294b24da ,
    0x0dd8e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c0000000000000088068c183447f94bbb4c ,
    0xfb542495270b07000000b20e1489690fb64ea2a68de81dcdf2bf43006f007500 ,
    0x6e0074004f006600490044000000000000001fc238e447652546a47f3ca6a0d8 ,
    0x89e407000000bb4ee421343f624db77659eef5e022a149004400000000000000 ,
    0x11b96ad6e2992845a5955d6e4851e02107000000bb4ee421343f624db77659ee ,
    0xf5e022a1530061006c0065007300520065007000490044000000000000009383 ,
    0xb136d5476b4b8d4ebcc8031c04d507000000bb4ee421343f624db77659eef5e0 ,
    0x22a143006c00690065006e007400530069006e00630065000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.ClientSince"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CountOfID"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x88068c183447f94bbb4cfb542495270b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c8e63e116aab741bd843cc24df51cf2
        End
    End
    Begin
        dbText "Name" ="month"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x95eddbd2c0c31843a26d4b45ab2193ce
        End
    End
    Begin
        dbText "Name" ="Format([ClientSince],\"mm\")"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =980
    Left =-1
    Top =-1
    Right =1501
    Bottom =463
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =214
        Top =43
        Right =358
        Bottom =187
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
