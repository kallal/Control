Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Alias ="Init"
    Expression ="Left([fn],1) & Left([ln],1)"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x09fe4a3617bfd54fb88424c81dc727b3
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa00000000f162124c ,
    0x2de0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000a810fc2ea07b024b ,
    0xbfc77ac9f31c7a8d0700000009fe4a3617bfd54fb88424c81dc727b349006e00 ,
    0x69007400000000000000836b4761bb445b46b7a949192117f8700700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa49004400000000000000238a70cc04f1b542 ,
    0xbd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa66006e00 ,
    0x00000000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa6c006e00000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc970bdbc8d546b43a671e2321c59e7d3
        End
    End
    Begin
        dbText "Name" ="Init"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa810fc2ea07b024bbfc77ac9f31c7a8d
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1569
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
    Bottom =531
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =608
        Bottom =381
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
