Operation =2
Name ="tblCboContactCompanyName"
Option =0
Where ="(((dbo_ContactGeneral.IsClient)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.IsClient"
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
dbBinary "GUID" = Begin
    0x72224e21178ffb45b8795531da908e19
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000294b24da ,
    0x0dd8e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d006500000000000000c078 ,
    0xb2b09e758d43b3a414bc20509d0607000000bb4ee421343f624db77659eef5e0 ,
    0x22a14900730043006c00690065006e0074000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1501
    Bottom =535
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =438
        Bottom =390
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
