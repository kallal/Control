Operation =1
Option =0
Where ="(((dbo_ProjectHeader.Invoicedate) Between DateAdd(\"m\",-3,DateSerial(Year(Date("
    ")),Month(Date()),1)) And DateSerial(Year(Date()),Month(Date()),1)-1))"
Having ="(((dbo_ProjectHeader.void)=False))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ProjectHeader"
    Name ="qryRptSalesHeader_SellforSum"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Alias ="SumOfsellfor"
    Expression ="Sum(qryRptSalesHeader_SellforSum.sellfor)"
    Expression ="dbo_ProjectHeader.void"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_CompanyEmployee.ID = dbo_ProjectHeader.SalesRepID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptSalesHeader_SellforSum"
    Expression ="dbo_ProjectHeader.ID = qryRptSalesHeader_SellforSum.ProjectHeaderID"
    Flag =2
End
Begin Groups
    Expression ="dbo_CompanyEmployee.ID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.FN"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.LN"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.void"
    GroupLevel =0
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
    0xdafa8512343e534299a479e52387ce36
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000000502b1b4 ,
    0x33a8e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f0079006500650000000000000035f87d9f0b136040 ,
    0xad3c2851f16d2a800000000097de9bb533a8e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x000000005b083f7056ff724f87556f9a4773200e00000000f4b78d0574a8e440 ,
    0x0000000000000000710072007900520070007400530061006c00650073004800 ,
    0x650061006400650072005f00530065006c006c0066006f007200530075006d00 ,
    0x0000000000004deb041a8bb4db43a25851bc3e57e03d07000000dafa8512343e ,
    0x534299a479e52387ce36530075006d004f006600730065006c006c0066006f00 ,
    0x7200000000000000836b4761bb445b46b7a949192117f8700700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa49004400000000000000238a70cc04f1b542bd79 ,
    0xb33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa46004e000000 ,
    0x0000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa4c004e00000000000000b0bd0eeaaff55740a5eb393481fd ,
    0xa4f4070000005b083f7056ff724f87556f9a4773200e730065006c006c006600 ,
    0x6f007200000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8076006f006900640000000000000040de5e7a ,
    0xec65a745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x530061006c00650073005200650070004900440000000000000004aeb2718000 ,
    0xd24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x44000000000000004a5eec03f45e6e4997b2fc833d2a0514070000005b083f70 ,
    0x56ff724f87556f9a4773200e500072006f006a00650063007400480065006100 ,
    0x6400650072004900440000000000000077a5524b02faf248a18587169cb2874b ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f0069006300 ,
    0x6500640061007400650000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfsellfor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4deb041a8bb4db43a25851bc3e57e03d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum.sellfor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="InvMOnth"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="invYear"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb1c8debde0f66b4f85f3398688fc3086
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Invoicedate"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-30
    Right =1570
    Bottom =855
    Left =-1
    Top =-1
    Right =1546
    Bottom =276
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =375
        Bottom =343
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =633
        Bottom =387
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =785
        Top =83
        Right =929
        Bottom =227
        Top =0
        Name ="qryRptSalesHeader_SellforSum"
        Name =""
    End
End
