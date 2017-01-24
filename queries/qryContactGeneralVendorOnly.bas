Operation =1
Option =0
Where ="(((dbo_ContactGeneral.IsVendor)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.OperatingAs"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.SalesMgrID"
    Expression ="dbo_ContactGeneral.CsrID"
    Expression ="dbo_ContactGeneral.ClientSince"
    Expression ="dbo_ContactGeneral.LastInvoice"
    Expression ="dbo_ContactGeneral.LastEstimate"
    Expression ="dbo_ContactGeneral.LastDocket"
    Expression ="dbo_ContactGeneral.CreditOrderOK"
    Expression ="dbo_ContactGeneral.CreditShipOK"
    Expression ="dbo_ContactGeneral.Notes"
    Expression ="dbo_ContactGeneral.SendEmail"
    Expression ="dbo_ContactGeneral.SendMail"
    Expression ="dbo_ContactGeneral.LastEdited"
    Expression ="dbo_ContactGeneral.LastEditedBy"
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
    0xd1d692813445104792340ac278104abb
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a1000000006f48190d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d006500000000000000cbe3 ,
    0xd67c1f4e8243a8c70f75ef0c22ca07000000bb4ee421343f624db77659eef5e0 ,
    0x22a14f007000650072006100740069006e00670041007300000000000000c078 ,
    0xb2b09e758d43b3a414bc20509d0607000000bb4ee421343f624db77659eef5e0 ,
    0x22a14900730043006c00690065006e00740000000000000007604ce0e23c7d40 ,
    0x8457d293ab264ae207000000bb4ee421343f624db77659eef5e022a149007300 ,
    0x560065006e0064006f007200000000000000051074cd352c2143baa0d3872ee7 ,
    0xb3cd07000000bb4ee421343f624db77659eef5e022a14900730043006f006d00 ,
    0x700065007400690074006f00720000000000000011b96ad6e2992845a5955d6e ,
    0x4851e02107000000bb4ee421343f624db77659eef5e022a1530061006c006500 ,
    0x730052006500700049004400000000000000bcdfa867c2f1c142a1632944bce2 ,
    0xbc1507000000bb4ee421343f624db77659eef5e022a1530061006c0065007300 ,
    0x4d0067007200490044000000000000007de1a6b4e5d1084b959142a3399adf6b ,
    0x07000000bb4ee421343f624db77659eef5e022a1430073007200490044000000 ,
    0x000000009383b136d5476b4b8d4ebcc8031c04d507000000bb4ee421343f624d ,
    0xb77659eef5e022a143006c00690065006e007400530069006e00630065000000 ,
    0x0000000083b6334ca0d6874a8dd0aa00a7d6ffc607000000bb4ee421343f624d ,
    0xb77659eef5e022a14c0061007300740049006e0076006f006900630065000000 ,
    0x0000000072b7422bc889e64f9094faaf2c5ee53a07000000bb4ee421343f624d ,
    0xb77659eef5e022a14c0061007300740045007300740069006d00610074006500 ,
    0x000000000000dc82dcd6bd0e9249a25c5504d2fb357007000000bb4ee421343f ,
    0x624db77659eef5e022a14c0061007300740044006f0063006b00650074000000 ,
    0x00000000215de642135faf42a7d662238bb808fb07000000bb4ee421343f624d ,
    0xb77659eef5e022a14300720065006400690074004f0072006400650072004f00 ,
    0x4b00000000000000a8b1c3cc41af704fa9693fd400faaec407000000bb4ee421 ,
    0x343f624db77659eef5e022a14300720065006400690074005300680069007000 ,
    0x4f004b00000000000000371dfe71b92f37458fb52158c94a365407000000bb4e ,
    0xe421343f624db77659eef5e022a14e006f00740065007300000000000000d44a ,
    0x3a9eb469914797a1aa1c242807c307000000bb4ee421343f624db77659eef5e0 ,
    0x22a1530065006e00640045006d00610069006c000000000000006aad5ed95972 ,
    0x8748884d5f8ed31ee6d207000000bb4ee421343f624db77659eef5e022a15300 ,
    0x65006e0064004d00610069006c000000000000008bb8cfbad3bdc44eb6464cac ,
    0x2d501ecb07000000bb4ee421343f624db77659eef5e022a14c00610073007400 ,
    0x450064006900740065006400000000000000cef7cc512f7ac24aa43a61db147d ,
    0x08cb07000000bb4ee421343f624db77659eef5e022a14c006100730074004500 ,
    0x6400690074006500640042007900000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEditedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ClientSince"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1485
    Bottom =394
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =560
        Bottom =444
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
