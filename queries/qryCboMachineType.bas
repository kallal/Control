Operation =1
Option =0
Begin InputTables
    Name ="dbo_MachineType"
End
Begin OutputColumns
    Expression ="dbo_MachineType.ID"
    Expression ="dbo_MachineType.DepartmentID"
    Expression ="dbo_MachineType.MachineType"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x54aaba509c8c774387ea046b33ce2d7e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b0d0731182b93f479e0e24440f0879b900000000ec581cc7 ,
    0x12dae4400000000000000000640062006f005f004d0061006300680069006e00 ,
    0x65005400790070006500000000000000c3d12854e6346e4bb12d0da15606a732 ,
    0x07000000b0d0731182b93f479e0e24440f0879b949004400000000000000905b ,
    0x0ad2cfd6ba45ad93cc3110429e4707000000b0d0731182b93f479e0e24440f08 ,
    0x79b94400650070006100720074006d0065006e00740049004400000000000000 ,
    0xf320f64f520ffa429585dd805fadc5e507000000b0d0731182b93f479e0e2444 ,
    0x0f0879b94d0061006300680069006e0065005400790070006500000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_MachineType.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_MachineType.DepartmentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_MachineType.MachineType"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1628
    Bottom =860
    Left =-1
    Top =-1
    Right =1558
    Bottom =474
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_MachineType"
        Name =""
    End
End
