Operation =4
Option =0
Where ="(((dbo_ContactGeneral.AcctStatus)=1))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Name ="dbo_ContactGeneral.InvoiceTermsID"
    Expression ="8"
    Name ="dbo_ContactGeneral.InvoiceTermsDays"
    Expression ="30"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x647e88c25b9d5b4aa0bb16f612e38b19
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000454772d9 ,
    0xccb2e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000238f8238ee163948b343 ,
    0xa5c71629631807000000bb4ee421343f624db77659eef5e022a149006e007600 ,
    0x6f006900630065005400650072006d00730049004400000000000000da927a7a ,
    0x82902f44a970279326ef407707000000bb4ee421343f624db77659eef5e022a1 ,
    0x49006e0076006f006900630065005400650072006d0073004400610079007300 ,
    0x00000000000043dc58e6eabeb641b98be8fbc2e2242007000000bb4ee421343f ,
    0x624db77659eef5e022a141006300630074005300740061007400750073000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.InvoiceTermsID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc8a0cf4e0d1e34c80334b75448c0ea9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.InvoiceTermsDays"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf4c13934e271bf479506044b2d9fa2a9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.AcctStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1021645268c9444dad9daa0b3aa3780c
        End
    End
End
Begin
    State =0
    Left =39
    Top =88
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1413
    Bottom =487
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =87
        Top =62
        Right =662
        Bottom =405
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
