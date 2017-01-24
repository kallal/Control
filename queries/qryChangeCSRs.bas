Operation =4
Option =0
Where ="(((dbo_ContactGeneral.SalesRepID)>=8 And (dbo_ContactGeneral.SalesRepID)<=11) AN"
    "D ((dbo_ContactGeneral.ID)<>141))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Name ="dbo_ContactGeneral.CsrID"
    Expression ="29"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x26a27c6837f05744a672c2f4e98026c5
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000b61e2062eb3db54aa58b ,
    0x2b5979d040e807000000d7c549c33168bc4ab70151c855c0b6b9430073007200 ,
    0x4900440000000000000057fab0ed9f451a4ab512137d4cabc63007000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b9530061006c00650073005200650070004900 ,
    0x440000000000000003933b4b9f324445a82e368651b1052b07000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b94900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x681f43567c93be479464a4a1a7da28d4
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1fc74709bd99984eb2c77825780e254c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa05c0dd67ef3774d8d5b77c6ad70b632
        End
    End
End
Begin
    State =0
    Left =18
    Top =55
    Right =1475
    Bottom =924
    Left =-1
    Top =-1
    Right =1425
    Bottom =569
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =48
        Top =12
        Right =692
        Bottom =507
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
