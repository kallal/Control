Operation =1
Option =0
Begin InputTables
    Name ="dbo_StationToUser"
    Name ="dbo_Station"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_StationToUser.StationID"
    Expression ="dbo_Station.StationName"
    Expression ="dbo_StationToUser.UserID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.MN"
    Expression ="dbo_CompanyEmployee.LN"
End
Begin Joins
    LeftTable ="dbo_StationToUser"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_StationToUser.UserID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_StationToUser"
    RightTable ="dbo_Station"
    Expression ="dbo_StationToUser.StationID = dbo_Station.id"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_StationToUser.StationID"
    Flag =0
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
    0x87af00118af6fd47a54e96c7e9b06ee9
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000972ee5ec0e5bc24dbe34be9ac3eb138a00000000a2708b0e ,
    0xcfe0e4400000000000000000640062006f005f00530074006100740069006f00 ,
    0x6e0054006f0055007300650072000000000000005f5d8649d2e04846ac2d27b6 ,
    0xa706a09000000000aa8f860ecfe0e4400000000000000000640062006f005f00 ,
    0x530074006100740069006f006e0000000000000039a4960a0ccbe542ab18e42c ,
    0xf68884fa000000004f96e40ccfe0e4400000000000000000640062006f005f00 ,
    0x43006f006d00700061006e00790045006d0070006c006f007900650065000000 ,
    0x0000000038a28617f87183488b6a69b58d48109f07000000972ee5ec0e5bc24d ,
    0xbe34be9ac3eb138a530074006100740069006f006e0049004400000000000000 ,
    0x2222effada5980429e1ee9ed0305beec070000005f5d8649d2e04846ac2d27b6 ,
    0xa706a090530074006100740069006f006e004e0061006d006500000000000000 ,
    0xce19fb8608142449a4d19ae31a3ddf5e07000000972ee5ec0e5bc24dbe34be9a ,
    0xc3eb138a550073006500720049004400000000000000238a70cc04f1b542bd79 ,
    0xb33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa46004e000000 ,
    0x0000000055bf9e7fe3d8a545a2a9964eee5ec3d20700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa4d004e0000000000000027afc0ba5db60e409636470e73e1 ,
    0xfc430700000039a4960a0ccbe542ab18e42cf68884fa4c004e00000000000000 ,
    0x836b4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa490044000000000000004d5252b332b7a74e8882d03c9dd042090700 ,
    0x00005f5d8649d2e04846ac2d27b6a706a0906900640000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_Station.StationName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_StationToUser.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.MN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_StationToUser.UserID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1520
    Bottom =980
    Left =-1
    Top =-1
    Right =1412
    Bottom =497
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =37
        Right =271
        Bottom =263
        Top =0
        Name ="dbo_StationToUser"
        Name =""
    End
    Begin
        Left =404
        Top =9
        Right =725
        Bottom =177
        Top =0
        Name ="dbo_Station"
        Name =""
    End
    Begin
        Left =554
        Top =218
        Right =780
        Bottom =421
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
