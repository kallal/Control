Operation =1
Option =0
Where ="(((dbo_CompanyEmployee.PR)>0))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Alias ="FULLNAME"
    Expression ="Trim([FN]) & \" \" & Trim([LN])"
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.FN"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x2feb0f6cb648694ca37a7634be77a75c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000006815372b ,
    0xacd7e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000fd4e2963304abb41 ,
    0xa32ba0ae6af9f569070000002feb0f6cb648694ca37a7634be77a75c46005500 ,
    0x4c004c004e0041004d004500000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa46004e0000000000000027afc0ba5db60e409636470e73e1fc430700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa4c004e000000000000007eaa6bda ,
    0xdc979d41bdfd657e822aa0f60700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x50005200000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d60096f65a98841909746ef69d1670d
        End
    End
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd4e2963304abb41a32ba0ae6af9f569
        End
    End
End
Begin
    State =0
    Left =117
    Top =184
    Right =1272
    Bottom =859
    Left =-1
    Top =-1
    Right =1123
    Bottom =340
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =443
        Bottom =322
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
