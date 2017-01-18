Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.OperatingAs"
    Expression ="dbo_ContactGeneral.IndustryID"
    Expression ="dbo_ContactGeneral.ContactSizeID"
    Expression ="dbo_ContactGeneral.ConsultantID"
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
    0x23c926e325c2774c900b618e253c33fc
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000294b24da ,
    0x0dd8e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d006500000000000000cbe3 ,
    0xd67c1f4e8243a8c70f75ef0c22ca07000000bb4ee421343f624db77659eef5e0 ,
    0x22a14f007000650072006100740069006e00670041007300000000000000cf44 ,
    0x72ff195d5f47855327b49a3bd64607000000bb4ee421343f624db77659eef5e0 ,
    0x22a149006e0064007500730074007200790049004400000000000000530541e9 ,
    0x47ad3f47b7d0e2e61dc2ccfd07000000bb4ee421343f624db77659eef5e022a1 ,
    0x43006f006e007400610063007400530069007a00650049004400000000000000 ,
    0x93ec75fb613aa743a510e40b0928b82507000000bb4ee421343f624db77659ee ,
    0xf5e022a143006f006e00730075006c00740061006e0074004900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
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
        dbText "Name" ="dbo_ContactGeneral.OperatingAs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ConsultantID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =56
    Top =86
    Right =1898
    Bottom =1001
    Left =-1
    Top =-1
    Right =1810
    Bottom =598
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =572
        Bottom =425
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
