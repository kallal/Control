Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x1fe07a38cda1bd44acfeba51c9506678
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000873fed1bdd4daf46b59105d9e5c28c31070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4500072006f006a006500630074004800650061006400 ,
    0x6500720049004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1607
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
    Bottom =502
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =498
        Bottom =286
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
