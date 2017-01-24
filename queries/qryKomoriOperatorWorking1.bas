Operation =1
Option =0
Begin InputTables
    Name ="dbo_T_OperatorWorking"
    Name ="dbo_M_WorkOperator"
End
Begin OutputColumns
    Expression ="dbo_M_WorkOperator.OperatorName"
End
Begin Joins
    LeftTable ="dbo_T_OperatorWorking"
    RightTable ="dbo_M_WorkOperator"
    Expression ="dbo_T_OperatorWorking.OperatorID = dbo_M_WorkOperator.OperatorID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0xc8b2d95e0412a345a229d0d01be6e1ed
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000034ae12c0c672bc42ad60d33ffce0aa6600000000860c47c1 ,
    0xea62e4400000000000000000640062006f005f0054005f004f00700065007200 ,
    0x610074006f00720057006f0072006b0069006e0067000000000000009bec6967 ,
    0xdf2c514bb2029c5eb07e3f4c0000000079a634c1ea62e4400000000000000000 ,
    0x640062006f005f004d005f0057006f0072006b004f0070006500720061007400 ,
    0x6f0072000000000000004cc4f143d62d154a880543411b75e13c070000009bec ,
    0x6967df2c514bb2029c5eb07e3f4c4f00700065007200610074006f0072004e00 ,
    0x61006d006500000000000000e016365fcc7bf24795124c2c6f9ffce807000000 ,
    0x34ae12c0c672bc42ad60d33ffce0aa664f00700065007200610074006f007200 ,
    0x4900440000000000000094df94ce3de32946ada899d8c2752875070000009bec ,
    0x6967df2c514bb2029c5eb07e3f4c4f00700065007200610074006f0072004900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_M_WorkOperator.OperatorName"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc7c2639ec7fd74dbbc3a43c64ff6e2c
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1501
    Bottom =552
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =166
        Top =124
        Right =310
        Bottom =268
        Top =0
        Name ="dbo_T_OperatorWorking"
        Name =""
    End
    Begin
        Left =604
        Top =150
        Right =748
        Bottom =294
        Top =0
        Name ="dbo_M_WorkOperator"
        Name =""
    End
End
