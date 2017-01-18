Operation =1
Option =0
Where ="(((dbo_ProjectHeader.invoicedate) Between DLookUp(\"[fiscalYearStartDate]\",\"db"
    "o_company\",\"[id] = 1\") And DateSerial(Year(Date()),Month(Date()),1)-1))"
Having ="(((dbo_ProjectHeader.VOID)=False))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ProjectHeader"
    Name ="qryRptSalesHeader_SellforSum"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Alias ="sellfor"
    Expression ="Sum(qryRptSalesHeader_SellforSum.sellfor)"
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
    Expression ="dbo_ProjectHeader.VOID"
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
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000000502b1b4 ,
    0x33a8e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f0079006500650000000000000035f87d9f0b136040 ,
    0xad3c2851f16d2a800000000097de9bb533a8e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x000000005b083f7056ff724f87556f9a4773200e00000000f4b78d0574a8e440 ,
    0x0000000000000000710072007900520070007400530061006c00650073004800 ,
    0x650061006400650072005f00530065006c006c0066006f007200530075006d00 ,
    0x0000000000004deb041a8bb4db43a25851bc3e57e03d070000004f91188c90a8 ,
    0x454cb57efe66fcf07647730065006c006c0066006f007200000000000000836b ,
    0x4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa49004400000000000000238a70cc04f1b542bd79b33633915bc607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa46004e0000000000000027afc0ba5db6 ,
    0x0e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa4c00 ,
    0x4e00000000000000b0bd0eeaaff55740a5eb393481fda4f4070000005b083f70 ,
    0x56ff724f87556f9a4773200e730065006c006c0066006f007200000000000000 ,
    0x40de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80530061006c00650073005200650070004900440000000000000004ae ,
    0xb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a80490044000000000000004a5eec03f45e6e4997b2fc833d2a051407000000 ,
    0x5b083f7056ff724f87556f9a4773200e500072006f006a006500630074004800 ,
    0x6500610064006500720049004400000000000000e04379333b12ce4eb39eba2d ,
    0x39783d1f0700000035f87d9f0b136040ad3c2851f16d2a8056004f0049004400 ,
    0x00000000000077a5524b02faf248a18587169cb2874b0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8069006e0076006f006900630065006400610074006500 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbBinary "GUID" = Begin
    0x4f91188c90a8454cb57efe66fcf07647
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
        dbText "Name" ="sellfor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4deb041a8bb4db43a25851bc3e57e03d
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =980
    Left =-1
    Top =-1
    Right =1501
    Bottom =293
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
        Right =1223
        Bottom =377
        Top =0
        Name ="qryRptSalesHeader_SellforSum"
        Name =""
    End
End
