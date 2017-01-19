Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.SortOrder"
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentHeader.SortOrder"
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
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x0000000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be500072006f006a006500630074004800650061006400 ,
    0x650072004900440000000000000092f3a3fed2b0734280ec42fae4658f360700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be53006f00720074004f0072006400 ,
    0x65007200000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SortOrder"
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
    Bottom =468
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
