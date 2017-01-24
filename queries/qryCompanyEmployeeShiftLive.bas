Operation =1
Option =0
Where ="(((dbo_CompanyEmployeeShift.ShiftEnd) Is Null))"
Begin InputTables
    Name ="dbo_CompanyEmployeeShift"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_Station"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeShift.ID"
    Expression ="dbo_CompanyEmployeeShift.CompanyEmployeeID"
    Expression ="dbo_CompanyEmployeeShift.ShiftBegin"
    Expression ="dbo_CompanyEmployeeShift.ShiftEnd"
    Expression ="dbo_CompanyEmployeeShift.StationID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Alias ="FULLNAME"
    Expression ="[FN] & \" \" & [LN]"
    Expression ="dbo_Station.StationName"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployeeShift"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_CompanyEmployeeShift.CompanyEmployeeID = dbo_CompanyEmployee.ID"
    Flag =1
    LeftTable ="dbo_CompanyEmployeeShift"
    RightTable ="dbo_Station"
    Expression ="dbo_CompanyEmployeeShift.StationID = dbo_Station.id"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xad4ec56e2c4a6b42b8ce7661163ac5c4
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000002e9a16c95eed734ab40ee4411d97821800000000380e1eda ,
    0x0dd8e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005300680069006600740000000000 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa00000000077e19da0dd8e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790045006d00 ,
    0x70006c006f007900650065000000000000005f5d8649d2e04846ac2d27b6a706 ,
    0xa09000000000826966da0dd8e4400000000000000000640062006f005f005300 ,
    0x74006100740069006f006e000000000000004cc3cf3197cd404588a221fe9922 ,
    0xf02307000000ad4ec56e2c4a6b42b8ce7661163ac5c4460055004c004c004e00 ,
    0x41004d0045000000000000008b52621898411845958664d9fd7760cb07000000 ,
    0x2e9a16c95eed734ab40ee4411d978218490044000000000000002a97099fbd40 ,
    0x8749830c46c1537f2fb4070000002e9a16c95eed734ab40ee4411d9782184300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650049004400 ,
    0x000000000000f5c7b2c66302704bbc3dfab8d5ea0b53070000002e9a16c95eed ,
    0x734ab40ee4411d9782185300680069006600740042006500670069006e000000 ,
    0x00000000ac84d60abf4c314c8c0ff1eba4bac623070000002e9a16c95eed734a ,
    0xb40ee4411d9782185300680069006600740045006e0064000000000000000dc8 ,
    0x963d4130514bbf2a4c64cb680632070000002e9a16c95eed734ab40ee4411d97 ,
    0x8218530074006100740069006f006e0049004400000000000000238a70cc04f1 ,
    0xb542bd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa4600 ,
    0x4e0000000000000027afc0ba5db60e409636470e73e1fc430700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa4c004e000000000000002222effada5980429e1e ,
    0xe9ed0305beec070000005f5d8649d2e04846ac2d27b6a706a090530074006100 ,
    0x740069006f006e004e0061006d006500000000000000836b4761bb445b46b7a9 ,
    0x49192117f8700700000039a4960a0ccbe542ab18e42cf68884fa490044000000 ,
    0x000000004d5252b332b7a74e8882d03c9dd04209070000005f5d8649d2e04846 ,
    0xac2d27b6a706a090690064000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftEnd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.ShiftBegin"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShift.StationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4cc3cf3197cd404588a221fe9922f023
        End
    End
    Begin
        dbText "Name" ="dbo_Station.StationName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1534
    Bottom =997
    Left =-1
    Top =-1
    Right =1502
    Bottom =606
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =291
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployeeShift"
        Name =""
    End
    Begin
        Left =339
        Top =12
        Right =627
        Bottom =286
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =675
        Top =12
        Right =819
        Bottom =156
        Top =0
        Name ="dbo_Station"
        Name =""
    End
End
