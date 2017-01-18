Operation =2
Name ="tblCboContactGeneralClientOnly"
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.OperatingAs"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.CsrID"
End
Begin OrderBy
    Expression ="dbo_ContactGeneral.CompName"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xa01367fa11f6004eb6ba4bbc4dee683d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c0000000000000003933b4b9f324445a82e ,
    0x368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b9490044000000 ,
    0x00000000124b02a694dd0e4c96264abff258312707000000d7c549c33168bc4a ,
    0xb70151c855c0b6b943006f006d0070004e0061006d006500000000000000eeea ,
    0xa2c1e5c5674396cce069d7db400307000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b94f007000650072006100740069006e0067004100730000000000000017c6 ,
    0x9993fefe48429e58f91ca567f01a07000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b94900730043006c00690065006e00740000000000000057fab0ed9f451a4a ,
    0xb512137d4cabc63007000000d7c549c33168bc4ab70151c855c0b6b953006100 ,
    0x6c006500730052006500700049004400000000000000b61e2062eb3db54aa58b ,
    0x2b5979d040e807000000d7c549c33168bc4ab70151c855c0b6b9430073007200 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.OperatingAs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
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
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =68
    Top =47
    Right =1543
    Bottom =746
    Left =-1
    Top =-1
    Right =1443
    Bottom =297
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =366
        Bottom =366
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
