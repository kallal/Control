Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="SumOfExtQuoteSell1"
    Expression ="Sum(dbo_ProjectComponentHeader.ExtQuoteSell1)"
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
    0xf3481e2c9680114cb2d5db70e7895e90
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000005e6d9ea0 ,
    0xf662e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000c399dcaa448b6143896100eaee802c1507000000f3481e2c9680 ,
    0x114cb2d5db70e7895e90530075006d004f006600450078007400510075006f00 ,
    0x74006500530065006c006c003100000000000000873fed1bdd4daf46b59105d9 ,
    0xe5c28c31070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006a00 ,
    0x6500630074004800650061006400650072004900440000000000000047f26f71 ,
    0x10cb2f49bc71c726986a5bd0070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x450078007400510075006f0074006500530065006c006c003100000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2af8bd010bce5a4db0d4c8e2ffec067f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfExtQuoteSell1"
        dbInteger "ColumnWidth" ="3615"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc399dcaa448b6143896100eaee802c15
        End
    End
End
Begin
    State =0
    Left =152
    Top =224
    Right =1534
    Bottom =980
    Left =-1
    Top =-1
    Right =1350
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =571
        Bottom =312
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
