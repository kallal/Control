Operation =1
Option =0
Having ="(((Sum(IIf(Year([QuoteDate])=Year(Date()),[ExtQuoteAmt1],0)))>0) AND ((dbo_Proje"
    "ctHeader.Void)=False))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Alias ="EstToday"
    Expression ="Sum(IIf([QuoteDate]=Date(),[ExtQuoteAmt1],0))"
    Alias ="EstMonth"
    Expression ="Sum(IIf(Month([QuoteDate])=Month(Date()),[ExtQuoteAmt1],0))"
    Alias ="EstYear"
    Expression ="Sum(IIf(Year([QuoteDate])=Year(Date()),[ExtQuoteAmt1],0))"
    Alias ="DktDay"
    Expression ="Sum(IIf([DocketDate]=(Date()),[ExtQuoteAmt1],0))"
    Alias ="DktMonth"
    Expression ="Sum(IIf(Month([DocketDate])=Month(Date()),[ExtQuoteAmt1],0))"
    Alias ="DktYear"
    Expression ="Sum(IIf(Year([DocketDate])=Year(Date()),[ExtQuoteAmt1],0))"
    Alias ="InvDay"
    Expression ="Sum(IIf([InvoiceDate]=(Date()),[ExtQuoteAmt1],0))"
    Alias ="InvMonth"
    Expression ="Sum(IIf(Month([InvoiceDate])=Month(Date()),[ExtQuoteAmt1],0))"
    Alias ="InvYear"
    Expression ="Sum(IIf(Year([InvoiceDate])=Year(Date()),[ExtQuoteAmt1],0))"
    Expression ="dbo_ProjectHeader.Void"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_CompanyEmployee.ID = dbo_ProjectHeader.SalesRepID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectHeader.ID = dbo_ProjectComponentHeader.ProjectHeaderID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Flag =0
    Expression ="dbo_CompanyEmployee.FN"
    Flag =0
End
Begin Groups
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.FN"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.LN"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.Void"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xaa3c39a223557d4d925114f5b001e395
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa00000000f8191786 ,
    0x157fe4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be0000000015704586157fe440000000000000000064006200 ,
    0x6f005f00500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e00740048006500610064006500720000000000000035f87d9f0b136040ad3c ,
    0x2851f16d2a8000000000c93a5786157fe4400000000000000000640062006f00 ,
    0x5f00500072006f006a0065006300740048006500610064006500720000000000 ,
    0x00007beabf67696c1b4ca6cd569d9933f46c07000000aa3c39a223557d4d9251 ,
    0x14f5b001e39545007300740054006f006400610079000000000000009f01e9a1 ,
    0x29adfe4eb7e73ba3ec6c906607000000aa3c39a223557d4d925114f5b001e395 ,
    0x4500730074004d006f006e007400680000000000000006fdac8c5952de4c9ff2 ,
    0xdc852466acb607000000aa3c39a223557d4d925114f5b001e395450073007400 ,
    0x5900650061007200000000000000c5be7f1026a5494f9e59e1744321490c0700 ,
    0x0000aa3c39a223557d4d925114f5b001e39544006b0074004400610079000000 ,
    0x00000000aa857f836ee4fb4f830751c454f3e29707000000aa3c39a223557d4d ,
    0x925114f5b001e39544006b0074004d006f006e0074006800000000000000a0fa ,
    0xae5098e9f641b9162dbe5687ff5d07000000aa3c39a223557d4d925114f5b001 ,
    0xe39544006b00740059006500610072000000000000005e890174c56c144eb5b5 ,
    0x75a65cf9ef7307000000aa3c39a223557d4d925114f5b001e39549006e007600 ,
    0x440061007900000000000000a53e3d463bce8d4aaa46dae3e7a7dd2307000000 ,
    0xaa3c39a223557d4d925114f5b001e39549006e0076004d006f006e0074006800 ,
    0x000000000000db4f0833ac96f34abcc5f62e8ef06d0507000000aa3c39a22355 ,
    0x7d4d925114f5b001e39549006e00760059006500610072000000000000003643 ,
    0xc3eb337ba84280e3540342d9e3170700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa49007300530061006c0065007300520065007000000000000000238a70cc ,
    0x04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x46004e0000000000000027afc0ba5db60e409636470e73e1fc430700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa4c004e000000000000009d63ea70f7ac1e44 ,
    0xaa26234fcf0001210700000035f87d9f0b136040ad3c2851f16d2a8051007500 ,
    0x6f007400650044006100740065000000000000004c7cc044f37d714ca4af682c ,
    0x91d41ae007000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f007400650041006d0074003100000000000000c310a93c2fe0c4488706 ,
    0xf21ce736cf3a0700000035f87d9f0b136040ad3c2851f16d2a8044006f006300 ,
    0x6b0065007400440061007400650000000000000077a5524b02faf248a1858716 ,
    0x9cb2874b0700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00 ,
    0x6900630065004400610074006500000000000000e04379333b12ce4eb39eba2d ,
    0x39783d1f0700000035f87d9f0b136040ad3c2851f16d2a8056006f0069006400 ,
    0x000000000000836b4761bb445b46b7a949192117f8700700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa4900440000000000000040de5e7aec65a745aa86e7e9 ,
    0xe8cb55780700000035f87d9f0b136040ad3c2851f16d2a80530061006c006500 ,
    0x73005200650070004900440000000000000004aeb2718000d24bb73b562a7379 ,
    0x94cb0700000035f87d9f0b136040ad3c2851f16d2a8049004400000000000000 ,
    0x2042568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006f006a006500630074004800650061006400650072004900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa582dcd85abe4640a84b198645702029
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x294ead11b26afb418307905320804d53
        End
    End
    Begin
        dbText "Name" ="EstToday"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7beabf67696c1b4ca6cd569d9933f46c
        End
    End
    Begin
        dbText "Name" ="EstMonth"
        dbInteger "ColumnWidth" ="2475"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9f01e9a129adfe4eb7e73ba3ec6c9066
        End
    End
    Begin
        dbText "Name" ="EstYear"
        dbInteger "ColumnWidth" ="2475"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x06fdac8c5952de4c9ff2dc852466acb6
        End
    End
    Begin
        dbText "Name" ="DktMonth"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa857f836ee4fb4f830751c454f3e297
        End
    End
    Begin
        dbText "Name" ="DktDay"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5be7f1026a5494f9e59e1744321490c
        End
    End
    Begin
        dbText "Name" ="DktYear"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa0faae5098e9f641b9162dbe5687ff5d
        End
    End
    Begin
        dbText "Name" ="InvDay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5e890174c56c144eb5b575a65cf9ef73
        End
    End
    Begin
        dbText "Name" ="InvMonth"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa53e3d463bce8d4aaa46dae3e7a7dd23
        End
    End
    Begin
        dbText "Name" ="InvYear"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb4f0833ac96f34abcc5f62e8ef06d05
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d15820507e02b4fa8d72f605865bb26
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsSalesRep"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =46
    Top =75
    Right =1452
    Bottom =877
    Left =-1
    Top =-1
    Right =1374
    Bottom =434
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =350
        Bottom =478
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =742
        Top =5
        Right =1095
        Bottom =332
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =457
        Top =13
        Right =657
        Bottom =308
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
