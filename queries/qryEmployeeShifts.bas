Operation =1
Option =0
Where ="(((dbo_CompanyEmployeeShift.ShiftBegin)>=Date()-5))"
Begin InputTables
    Name ="dbo_CompanyEmployeeShift"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_Station"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_CompanyEmployee.Department"
    Expression ="dbo_CompanyEmployeeShift.ShiftBegin"
    Expression ="dbo_CompanyEmployeeShift.ShiftEnd"
    Expression ="dbo_CompanyEmployeeShift.StationID"
    Expression ="dbo_Station.StationName"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyEmployeeShift"
    Expression ="dbo_CompanyEmployee.ID = dbo_CompanyEmployeeShift.CompanyEmployeeID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeShift"
    RightTable ="dbo_Station"
    Expression ="dbo_CompanyEmployeeShift.StationID = dbo_Station.id"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.FN"
    Flag =0
    Expression ="dbo_CompanyEmployeeShift.ShiftBegin"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe5682b868060bb4f84e3c0a8f31cecd0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryEmployeeShifts].[ShiftBegin]"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000002e9a16c95eed734ab40ee4411d97821800000000adaf25ed ,
    0xd1a5e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005300680069006600740000000000 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa0000000053e621edd1a5e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790045006d00 ,
    0x70006c006f007900650065000000000000005f5d8649d2e04846ac2d27b6a706 ,
    0xa09000000000e88a66edd1a5e4400000000000000000640062006f005f005300 ,
    0x74006100740069006f006e00000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa46004e0000000000000027afc0ba5db60e409636470e73e1fc430700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa4c004e000000000000006b8629bf ,
    0xd016cc4cbd0e98316df1fa2c0700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x4400650070006100720074006d0065006e007400000000000000f5c7b2c66302 ,
    0x704bbc3dfab8d5ea0b53070000002e9a16c95eed734ab40ee4411d9782185300 ,
    0x680069006600740042006500670069006e00000000000000ac84d60abf4c314c ,
    0x8c0ff1eba4bac623070000002e9a16c95eed734ab40ee4411d97821853006800 ,
    0x69006600740045006e0064000000000000000dc8963d4130514bbf2a4c64cb68 ,
    0x0632070000002e9a16c95eed734ab40ee4411d97821853007400610074006900 ,
    0x6f006e00490044000000000000002222effada5980429e1ee9ed0305beec0700 ,
    0x00005f5d8649d2e04846ac2d27b6a706a090530074006100740069006f006e00 ,
    0x4e0061006d0065000000000000002a97099fbd408749830c46c1537f2fb40700 ,
    0x00002e9a16c95eed734ab40ee4411d97821843006f006d00700061006e007900 ,
    0x45006d0070006c006f00790065006500490044000000000000004d5252b332b7 ,
    0xa74e8882d03c9dd04209070000005f5d8649d2e04846ac2d27b6a706a0906900 ,
    0x6400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftEnd"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2d66e866715f684f9a74860f36863df5
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x65bf646e0eccd74ab5dc202e8f961f63
        End
    End
    Begin
        dbText "Name" ="dbo_Station.StationName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e1dc8e120167246a56a9d53e91fca13
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd804340fedeb044e85af933f7236ef59
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6c1eef64197c624fa06509cd1f488fc7
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x189bf058ef32e24fab614d3f75a71dbb
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x18410700db644f40b29bd705250c34be
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftBegin"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbfa8e29f4052414186f2354ae8afcd23
        End
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1607
    Bottom =836
    Left =-1
    Top =-1
    Right =1461
    Bottom =341
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =271
        Top =9
        Right =494
        Bottom =324
        Top =0
        Name ="dbo_CompanyEmployeeShift"
        Name =""
    End
    Begin
        Left =68
        Top =14
        Right =212
        Bottom =158
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =699
        Top =94
        Right =843
        Bottom =238
        Top =0
        Name ="dbo_Station"
        Name =""
    End
End
