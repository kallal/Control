Operation =1
Option =0
Where ="(((dbo_CompanyEmployee.PR)=3))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyEmployeeShift"
    Name ="dbo_CompanyEmployeeBreak"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_CompanyEmployee.PR"
    Expression ="dbo_CompanyEmployee.LastLoginTime"
    Alias ="ShiftID"
    Expression ="dbo_CompanyEmployeeShift.ID"
    Expression ="dbo_CompanyEmployeeShift.ShiftBegin"
    Expression ="dbo_CompanyEmployeeShift.ShiftEnd"
    Alias ="BreakID"
    Expression ="dbo_CompanyEmployeeBreak.ID"
    Expression ="dbo_CompanyEmployeeBreak.BreakBegin"
    Expression ="dbo_CompanyEmployeeBreak.BreakEnd"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyEmployeeShift"
    Expression ="dbo_CompanyEmployee.ID = dbo_CompanyEmployeeShift.CompanyEmployeeID"
    Flag =2
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyEmployeeBreak"
    Expression ="dbo_CompanyEmployee.ID = dbo_CompanyEmployeeBreak.CompanyEmployeeID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.LN"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x55bfc452f1216c4baef5bdbb032d987f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa0000000097990ea4 ,
    0x72a5e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065000000000000002e9a16c95eed734a ,
    0xb40ee4411d97821800000000e53e11a472a5e440000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x650053006800690066007400000000000000c4aa234e46f3b544ad6dfbd56bc9 ,
    0x4f7e00000000a4bd0fa472a5e4400000000000000000640062006f005f004300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650042007200 ,
    0x650061006b00000000000000472bab102298f444b64a14b7e0f081c907000000 ,
    0x55bfc452f1216c4baef5bdbb032d987f53006800690066007400490044000000 ,
    0x00000000a23725a25fced44e8019c44552ecb7940700000055bfc452f1216c4b ,
    0xaef5bdbb032d987f42007200650061006b0049004400000000000000836b4761 ,
    0xbb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x49004400000000000000238a70cc04f1b542bd79b33633915bc60700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa46004e0000000000000027afc0ba5db60e40 ,
    0x9636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa4c004e00 ,
    0x0000000000007eaa6bdadc979d41bdfd657e822aa0f60700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa5000520000000000000050caa85e56083945a3ca6558 ,
    0x1f2983ae0700000039a4960a0ccbe542ab18e42cf68884fa4c00610073007400 ,
    0x4c006f00670069006e00540069006d0065000000000000008b52621898411845 ,
    0x958664d9fd7760cb070000002e9a16c95eed734ab40ee4411d97821849004400 ,
    0x000000000000f5c7b2c66302704bbc3dfab8d5ea0b53070000002e9a16c95eed ,
    0x734ab40ee4411d9782185300680069006600740042006500670069006e000000 ,
    0x00000000ac84d60abf4c314c8c0ff1eba4bac623070000002e9a16c95eed734a ,
    0xb40ee4411d9782185300680069006600740045006e00640000000000000061e4 ,
    0x2bbccb0a484da21b8f298e6bf57a07000000c4aa234e46f3b544ad6dfbd56bc9 ,
    0x4f7e490044000000000000009c7fb53b66f2a7468b41416e0fd5239b07000000 ,
    0xc4aa234e46f3b544ad6dfbd56bc94f7e42007200650061006b00420065006700 ,
    0x69006e0000000000000057052faf46175347a6d455ff748f3ddf07000000c4aa ,
    0x234e46f3b544ad6dfbd56bc94f7e42007200650061006b0045006e0064000000 ,
    0x000000002a97099fbd408749830c46c1537f2fb4070000002e9a16c95eed734a ,
    0xb40ee4411d97821843006f006d00700061006e00790045006d0070006c006f00 ,
    0x79006500650049004400000000000000dbb4f398c403b848859ed4a5ef475cd3 ,
    0x07000000c4aa234e46f3b544ad6dfbd56bc94f7e43006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065004900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3e2530b18e10d8488a502f3597729d44
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66292be88fde2d489a533e4fec05173b
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5db2a6353ddbcc42a2c97da86319f98c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PR"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb8fd6ef9295d247a7b9b1ac44be9de8
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LastLoginTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftBegin"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftEnd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeBreak.BreakBegin"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeBreak.BreakEnd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ShiftID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x472bab102298f444b64a14b7e0f081c9
        End
    End
    Begin
        dbText "Name" ="BreakID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa23725a25fced44e8019c44552ecb794
        End
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1447
    Bottom =280
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =543
        Bottom =349
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =591
        Top =12
        Right =735
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployeeShift"
        Name =""
    End
    Begin
        Left =625
        Top =186
        Right =769
        Bottom =330
        Top =0
        Name ="dbo_CompanyEmployeeBreak"
        Name =""
    End
End
