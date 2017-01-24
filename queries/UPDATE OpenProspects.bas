Operation =4
Option =0
Where ="(((DLookUp(\"[LastOfDateStamp]\",\"rptLastContactDate\",\"[ContactGeneralID] = \""
    " & [id]))<#1/1/2014#))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Name ="dbo_ContactGeneral.salesrepid"
    Expression ="88"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0xbb74a51bb5d94b4081caaf3f1b45b906
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bb4ee421343f624db77659eef5e022a100000000582ae449 ,
    0x3384e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c0000000000000011b96ad6e2992845a595 ,
    0x5d6e4851e02107000000bb4ee421343f624db77659eef5e022a1730061006c00 ,
    0x65007300720065007000690064000000000000001fc238e447652546a47f3ca6 ,
    0xa0d889e407000000bb4ee421343f624db77659eef5e022a16900640000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="rptLastContactDate.LastOfDateStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.salesrepid"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa4d64f15634db47b0a2a28047fb9ea4
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="date"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x007fae04bcc19400a8c19400b4ca9c05
        End
    End
End
Begin
    State =0
    Left =172
    Top =154
    Right =1569
    Bottom =781
    Left =-1
    Top =-1
    Right =1365
    Bottom =343
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =104
        Top =19
        Right =248
        Bottom =163
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
