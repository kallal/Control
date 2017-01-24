Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
    Expression ="dbo_ContactGeneral.IsCourier"
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
    0xbbb173a859ab9b45a737b49ad661df7e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000124b02a694dd0e4c9626 ,
    0x4abff258312707000000d7c549c33168bc4ab70151c855c0b6b943006f006d00 ,
    0x70004e0061006d00650000000000000057fab0ed9f451a4ab512137d4cabc630 ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b9530061006c00650073005200 ,
    0x650070004900440000000000000017c69993fefe48429e58f91ca567f01a0700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b94900730043006c00690065006e00 ,
    0x7400000000000000af4d474e244fef4b831c16707b00dd9007000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b949007300560065006e0064006f00720000000000 ,
    0x000072135043f1c5534594c399467e5e4d5f07000000d7c549c33168bc4ab701 ,
    0x51c855c0b6b94900730043006f006d00700065007400690074006f0072000000 ,
    0x000000005b20ad9dafc871418612d73ca94a048207000000d7c549c33168bc4a ,
    0xb70151c855c0b6b94900730043006f0075007200690065007200000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="5655"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x33768f328ed47040a9f53ac1ca62e12e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ef60b197c2bdf45a0c8e4892a1cf18b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd32add955413e84eaa43bdf36eb43d5f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd31324fb73e4e542b41e072232dba235
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCourier"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1de18db497e573489ccf1affa8944f78
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1598
    Bottom =980
    Left =-1
    Top =-1
    Right =1490
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =802
        Bottom =452
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
