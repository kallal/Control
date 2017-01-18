Operation =1
Option =0
Where ="(((dbo_SecurityLevel.CAT)=\"SM\"))"
Begin InputTables
    Name ="dbo_SecurityLevel"
End
Begin OutputColumns
    Expression ="dbo_SecurityLevel.LEVEL"
    Expression ="dbo_SecurityLevel.DESC"
End
Begin OrderBy
    Expression ="dbo_SecurityLevel.LEVEL"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xef8e06872badfd439d0f52d1ae119d9e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d73ffc18e2438140938ba0c557beec6100000000e6666a6d ,
    0xcedae4400000000000000000640062006f005f00530065006300750072006900 ,
    0x740079004c006500760065006c00000000000000d9ea50e5c7961a439990e5d2 ,
    0x971b6f4907000000d73ffc18e2438140938ba0c557beec614c00450056004500 ,
    0x4c000000000000005f969aaec97bd747b2e496a71940d8b207000000d73ffc18 ,
    0xe2438140938ba0c557beec61440045005300430000000000000004481becabe6 ,
    0xf4448da54c6a34b8137407000000d73ffc18e2438140938ba0c557beec614300 ,
    0x41005400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_SecurityLevel.LEVEL"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_SecurityLevel.DESC"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1628
    Bottom =860
    Left =-1
    Top =-1
    Right =1520
    Bottom =428
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_SecurityLevel"
        Name =""
    End
End
