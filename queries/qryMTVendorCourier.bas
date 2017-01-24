Operation =2
Name ="tblCboVendorCourier"
Option =0
Where ="(((dbo_ContactGeneral.IsVendor)=True) AND ((dbo_ContactGeneral.IsCourier)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.Website"
    Expression ="dbo_ContactGeneral.TrackSite"
    Expression ="dbo_ContactGeneral.IsCourier"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x45eefad55545c54db3bc718c0c1993a9
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a1000000006f48190d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d0065000000000000000760 ,
    0x4ce0e23c7d408457d293ab264ae207000000bb4ee421343f624db77659eef5e0 ,
    0x22a149007300560065006e0064006f007200000000000000a028a7a3600f0748 ,
    0xb2b60ea0d6053ab407000000bb4ee421343f624db77659eef5e022a157006500 ,
    0x6200730069007400650000000000000029c8943280fd974a8536c7703c75fc9e ,
    0x07000000bb4ee421343f624db77659eef5e022a154007200610063006b005300 ,
    0x690074006500000000000000cc842eb681e6db4388489b4c80036b9e07000000 ,
    0xbb4ee421343f624db77659eef5e022a14900730043006f007500720069006500 ,
    0x7200000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
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
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Website"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.TrackSite"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCourier"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1598
    Bottom =997
    Left =-1
    Top =-1
    Right =1566
    Bottom =572
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =565
        Bottom =465
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
