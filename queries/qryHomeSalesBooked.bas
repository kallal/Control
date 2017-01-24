Operation =1
Option =0
Having ="(((Sum(IIf(Year([QuoteDate])=Year(Date()),[SellForFinal],0)))>0) AND ((dbo_Proje"
    "ctHeader.Void)=False))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Alias ="EstToday"
    Expression ="Sum(IIf([QuoteDate]=Date(),[SellForFinal],0))"
    Alias ="EstMonth"
    Expression ="Sum(IIf(Month([QuoteDate])=Month(Date()) And Year([QuoteDate])=Year(Date()),[Sel"
        "lForFinal],0))"
    Alias ="EstYear"
    Expression ="Sum(IIf(Year([QuoteDate])=Year(Date()),[SellForFinal],0))"
    Alias ="DktDay"
    Expression ="Sum(IIf([DocketDate]=(Date()),[SellForFinal],0))"
    Alias ="DktMonth"
    Expression ="Sum(IIf(Month([DocketDate])=Month(Date()) And Year([docketdate])=Year(Date()),[S"
        "ellForFinal],0))"
    Alias ="DktYear"
    Expression ="Sum(IIf(Year([DocketDate])=Year(Date()),[SellForFinal],0))"
    Alias ="InvDay"
    Expression ="Sum(IIf([InvoiceDate]=(Date()),[SellForFinal],0))"
    Alias ="InvMonth"
    Expression ="Sum(IIf(Month([InvoiceDate])=Month(Date()) And Year([invoicedate])=Year(Date()),"
        "[SellForFinal],0))"
    Alias ="InvYear"
    Expression ="Sum(IIf(Year([InvoiceDate])=Year(Date()),[SellForFinal],0))"
    Expression ="dbo_ProjectHeader.Void"
    Alias ="DktFuture"
    Expression ="Sum(IIf(Nz([dbo_ProjectHeader].[DocketNum],0)>0 And Nz([dbo_projectHeader].[Invo"
        "iceNum],0)=0,[SellForFinal],0))"
    Alias ="DktFutureThisMonth"
    Expression ="Sum(IIf(Nz([dbo_ProjectHeader].[DocketNum],0)>0 And Nz([dbo_projectHeader].[Invo"
        "iceNum],0)=0 And Month(IIf(Nz([specifieddocketduedate],0)<>0,[specifieddocketdue"
        "date],[assigneddocketduedate]))=Month(Date()),[SellForFinal],0))"
    Alias ="countofid"
    Expression ="DCount(\"[ID]\",\"dbo_ProjectHeader\",\"[SalesRepID] = \" & [dbo_companyEmployee"
        "].[id] & \" AND nz([docketnum],0) > 0 AND nz([invoicenum],0) = 0  AND [VOID] = F"
        "alse\")"
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
    Expression ="dbo_CompanyEmployee.ID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.SalesRepID"
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
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0xb53083db8bc6c24180651d4b6b091d50
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa00000000f162124c ,
    0x2de0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be0000000096f8534c2de0e440000000000000000064006200 ,
    0x6f005f00500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e00740048006500610064006500720000000000000035f87d9f0b136040ad3c ,
    0x2851f16d2a8000000000f6b16e4c2de0e4400000000000000000640062006f00 ,
    0x5f00500072006f006a0065006300740048006500610064006500720000000000 ,
    0x00007beabf67696c1b4ca6cd569d9933f46c07000000b53083db8bc6c2418065 ,
    0x1d4b6b091d5045007300740054006f006400610079000000000000009f01e9a1 ,
    0x29adfe4eb7e73ba3ec6c906607000000b53083db8bc6c24180651d4b6b091d50 ,
    0x4500730074004d006f006e007400680000000000000006fdac8c5952de4c9ff2 ,
    0xdc852466acb607000000b53083db8bc6c24180651d4b6b091d50450073007400 ,
    0x5900650061007200000000000000c5be7f1026a5494f9e59e1744321490c0700 ,
    0x0000b53083db8bc6c24180651d4b6b091d5044006b0074004400610079000000 ,
    0x00000000aa857f836ee4fb4f830751c454f3e29707000000b53083db8bc6c241 ,
    0x80651d4b6b091d5044006b0074004d006f006e0074006800000000000000a0fa ,
    0xae5098e9f641b9162dbe5687ff5d07000000b53083db8bc6c24180651d4b6b09 ,
    0x1d5044006b00740059006500610072000000000000005e890174c56c144eb5b5 ,
    0x75a65cf9ef7307000000b53083db8bc6c24180651d4b6b091d5049006e007600 ,
    0x440061007900000000000000a53e3d463bce8d4aaa46dae3e7a7dd2307000000 ,
    0xb53083db8bc6c24180651d4b6b091d5049006e0076004d006f006e0074006800 ,
    0x000000000000db4f0833ac96f34abcc5f62e8ef06d0507000000b53083db8bc6 ,
    0xc24180651d4b6b091d5049006e00760059006500610072000000000000003fbe ,
    0xfa75ddcd3740a68f716122b91fa907000000b53083db8bc6c24180651d4b6b09 ,
    0x1d5044006b00740046007500740075007200650000000000000092e1a93634fd ,
    0xc04391a65115bfa5070407000000b53083db8bc6c24180651d4b6b091d504400 ,
    0x6b00740046007500740075007200650054006800690073004d006f006e007400 ,
    0x68000000000000001cb1e8ecbda0ec499542f870a0bc149a07000000b53083db ,
    0x8bc6c24180651d4b6b091d5063006f0075006e0074006f006600690064000000 ,
    0x00000000836b4761bb445b46b7a949192117f8700700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa490044000000000000003643c3eb337ba84280e3540342d9 ,
    0xe3170700000039a4960a0ccbe542ab18e42cf68884fa49007300530061006c00 ,
    0x6500730052006500700000000000000040de5e7aec65a745aa86e7e9e8cb5578 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80530061006c00650073005200 ,
    0x6500700049004400000000000000238a70cc04f1b542bd79b33633915bc60700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa46004e0000000000000027afc0ba ,
    0x5db60e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x4c004e000000000000009d63ea70f7ac1e44aa26234fcf0001210700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80510075006f00740065004400610074006500 ,
    0x000000000000295dd08fa5fdd842b45759b74bd1aab007000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be530065006c006c0046006f007200460069006e006100 ,
    0x6c00000000000000c310a93c2fe0c4488706f21ce736cf3a0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074004400610074006500 ,
    0x00000000000077a5524b02faf248a18587169cb2874b0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8049006e0076006f006900630065004400610074006500 ,
    0x000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8056006f0069006400000000000000749d4175d9cbb541 ,
    0xb77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f00 ,
    0x63006b00650074004e0075006d000000000000007da6a641b3cf604b95c0700a ,
    0x612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00 ,
    0x6900630065004e0075006d00000000000000dc68bee42e27934ca4722dc0273f ,
    0xfc020700000035f87d9f0b136040ad3c2851f16d2a8073007000650063006900 ,
    0x660069006500640064006f0063006b0065007400640075006500640061007400 ,
    0x65000000000000000991cbddd7747348961699f709bd31030700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80610073007300690067006e006500640064006f00 ,
    0x63006b0065007400640075006500640061007400650000000000000004aeb271 ,
    0x8000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x490044000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500072006f006a0065006300740048006500 ,
    0x6100640065007200490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
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
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="InvYear"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb4f0833ac96f34abcc5f62e8ef06d05
        End
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
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
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DktFuture"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3fbefa75ddcd3740a68f716122b91fa9
        End
    End
    Begin
        dbText "Name" ="DktFutureThisMonth"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x92e1a93634fdc04391a65115bfa50704
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CountOfID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1cb1e8ecbda0ec499542f870a0bc149a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =49
    Right =1738
    Bottom =848
    Left =-1
    Top =-1
    Right =1666
    Bottom =387
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =49
        Top =5
        Right =351
        Bottom =376
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =796
        Top =7
        Right =1158
        Bottom =378
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =419
        Top =7
        Right =621
        Bottom =378
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
