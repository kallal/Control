Operation =1
Option =0
Having ="(((Format([ClientSince],\"mm\"))=\"09\") AND ((Format([clientsince],\"yyyy\"))=\""
    "2013\"))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Alias ="month"
    Expression ="Format([ClientSince],\"mm\")"
    Alias ="year"
    Expression ="Format([clientsince],\"yyyy\")"
    Alias ="CountOfID"
    Expression ="Count(dbo_ContactGeneral.ID)"
    Expression ="dbo_ContactGeneral.SalesRepID"
End
Begin Groups
    Expression ="Format([ClientSince],\"mm\")"
    GroupLevel =0
    Expression ="Format([clientsince],\"yyyy\")"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.SalesRepID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf793d5bfa44a43478c8258cb6d8e59d3
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000294b24da ,
    0x0dd8e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c0000000000000095eddbd2c0c31843a26d ,
    0x4b45ab2193ce07000000f793d5bfa44a43478c8258cb6d8e59d36d006f006e00 ,
    0x74006800000000000000fc55e0882bc81448aaa055ac43f85e2107000000f793 ,
    0xd5bfa44a43478c8258cb6d8e59d3790065006100720000000000000088068c18 ,
    0x3447f94bbb4cfb542495270b07000000f793d5bfa44a43478c8258cb6d8e59d3 ,
    0x43006f0075006e0074004f006600490044000000000000009383b136d5476b4b ,
    0x8d4ebcc8031c04d507000000bb4ee421343f624db77659eef5e022a143006c00 ,
    0x690065006e007400530069006e00630065000000000000001fc238e447652546 ,
    0xa47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a149004400 ,
    0x00000000000011b96ad6e2992845a5955d6e4851e02107000000bb4ee421343f ,
    0x624db77659eef5e022a1530061006c0065007300520065007000490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
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
        dbText "Name" ="year"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc55e0882bc81448aaa055ac43f85e21
        End
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
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =214
        Top =43
        Right =504
        Bottom =479
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
