Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.ID"
    Expression ="dbo_ContactName.ContactGeneralID"
    Alias ="fullname"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xdda50841a316074783c28c93ef8aef38
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryContactFullName].[ContactGeneralID] DESC, [qryContactFullName].[ID]"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000abd7a13a18cfc44f845c77c762d61a46000000000acb280d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004e0061006d006500000000000000526c221fc512804984840f86ae58ec00 ,
    0x07000000dda50841a316074783c28c93ef8aef38660075006c006c006e006100 ,
    0x6d00650000000000000055214613b67cb94eaac4189bee61392c07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a4649004400000000000000d599d0cd154bce47 ,
    0x987e4268426c590007000000abd7a13a18cfc44f845c77c762d61a4643006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a18cfc44f845c ,
    0x77c762d61a4666006e0000000000000096debff91f1ff043bcf0998107c8713e ,
    0x07000000abd7a13a18cfc44f845c77c762d61a466c006e000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x629408551b62774884ab7dc3e65755af
        End
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="fullname"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x526c221fc512804984840f86ae58ec00
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =8
    Top =22
    Right =1525
    Bottom =750
    Left =-1
    Top =-1
    Right =1485
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =699
        Bottom =440
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
