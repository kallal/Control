Operation =2
Name ="tblCboVendor"
Option =0
Where ="(((dbo_ContactGeneral.IsVendor)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.IsVendor"
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
    0x3445a15d4200ae4ebe406fa6d49e800b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a1000000004b5cdbab ,
    0x09cce4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d0065000000000000000760 ,
    0x4ce0e23c7d408457d293ab264ae207000000bb4ee421343f624db77659eef5e0 ,
    0x22a149007300560065006e0064006f0072000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
dbBoolean "UseTransaction" ="-1"
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa57fb5f3f9fab845a4987b45934ea944
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x50d24b2705a04a41bb831a6979f6c4d1
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e1b24dd1e2b83428d92e43887711e75
        End
    End
End
Begin
    State =0
    Left =7
    Top =45
    Right =1597
    Bottom =819
    Left =-1
    Top =-1
    Right =1558
    Bottom =457
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =354
        Bottom =291
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
