Operation =2
Name ="tblCboEmployee"
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Alias ="FULLNAME"
    Expression ="Trim([FN]) & \" \" & Trim([LN])"
    Expression ="dbo_CompanyEmployee.IsActive"
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Expression ="dbo_CompanyEmployee.IsCSR"
    Expression ="dbo_CompanyEmployee.PhDirect"
    Expression ="dbo_CompanyEmployee.Email"
End
Begin OrderBy
    Expression ="Trim([FN]) & \" \" & Trim([LN])"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xbc8a25c480f4cc448dbfd15bc6ec2723
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000006815372b ,
    0xacd7e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065000000000000006b6e1d36a4d6284b ,
    0xa39f1c5e5cb814c607000000bc8a25c480f4cc448dbfd15bc6ec272346005500 ,
    0x4c004c004e0041004d004500000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa46004e0000000000000027afc0ba5db60e409636470e73e1fc430700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa4c004e0000000000000065634c04 ,
    0xfc14254c9348cee3d3ff40f00700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x490073004100630074006900760065000000000000003643c3eb337ba84280e3 ,
    0x540342d9e3170700000039a4960a0ccbe542ab18e42cf68884fa490073005300 ,
    0x61006c006500730052006500700000000000000071e0a90e7342674ab3b27b94 ,
    0x42989c660700000039a4960a0ccbe542ab18e42cf68884fa4900730043005300 ,
    0x5200000000000000929b8ab77df57548a338fab4b93b26490700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa5000680044006900720065006300740000000000 ,
    0x00003808dc08f075294895138d6441b339380700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa45006d00610069006c0000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b6e1d36a4d6284ba39f1c5e5cb814c6
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsCSR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsSalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhDirect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Email"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4335"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1441
    Bottom =797
    Left =-1
    Top =-1
    Right =1409
    Bottom =382
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =514
        Top =12
        Right =933
        Bottom =270
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
