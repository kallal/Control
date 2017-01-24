Operation =1
Option =0
Where ="(((dbo_ProjectHeader.InvoiceNum) Is Not Null Or (dbo_ProjectHeader.InvoiceNum)>0"
    ") AND ((dbo_ProjectHeader.void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
    Name ="dbo_CompanyEmployee"
    Name ="qryRptSalesHeader_SellforSum"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.id"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Alias ="InvDate"
    Expression ="Format([invoicedate],\"mmm d\")"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.QuoteDate"
    Expression ="qryRptSalesHeader_SellforSum.sellfor"
    Expression ="qryRptSalesHeader_SellforSum.quotefor"
    Alias ="markup"
    Expression ="IIf([quotefor]>0,Round((([sellfor]-[quotefor])/[quotefor])*100,2),0)"
    Expression ="dbo_ContactGeneral.GSTExempt"
    Alias ="GSTAmount"
    Expression ="IIf([dbo_ContactGeneral].[GstExempt]=False,[sellfor]*0.05,0)"
    Expression ="dbo_ContactGeneral.CompName"
    Alias ="SalesRep"
    Expression ="[dbo_companyEmployee].[FN] & \" \" & [dbo_companyemployee].[ln]"
    Expression ="dbo_ProjectHeader.void"
    Alias ="ContactName"
    Expression ="[dbo_ContactName].[FN] & \" \" & [dbo_ContactName].[LN]"
    Expression ="dbo_ProjectHeader.PONumber"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.ProjectName"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectHeader.ContactNameID = dbo_ContactName.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectHeader.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptSalesHeader_SellforSum"
    Expression ="dbo_ProjectHeader.ID = qryRptSalesHeader_SellforSum.ProjectHeaderID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Flag =0
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
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a800000000035b2174a ,
    0x3384e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a100000000582ae4493384e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46000000001133e7493384e4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d00650000000000000039a4960a0ccbe542ab18e42cf68884fa0000000029c3 ,
    0xcb66ec87e4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f007900650065000000000000005b083f7056ff ,
    0x724f87556f9a4773200e00000000b5ee347eee87e44000000000000000007100 ,
    0x72007900520070007400530061006c0065007300480065006100640065007200 ,
    0x5f00530065006c006c0066006f007200530075006d0000000000000037cfd12f ,
    0x6be5a64980e975bf36d267420700000000000000000000000000000000000000 ,
    0x49006e00760044006100740065000000000000009cd9827e0f004847a4abf108 ,
    0xbdd9060b07000000000000000000000000000000000000006d00610072006b00 ,
    0x75007000000000000000f5c4cd1d2add1941a1d868900bf37891070000000000 ,
    0x000000000000000000000000000047005300540041006d006f0075006e007400 ,
    0x000000000000622b4027a9a0cd4da869bce313715ff607000000000000000000 ,
    0x00000000000000000000530061006c0065007300520065007000000000000000 ,
    0x2f93f74e4a6fff4885ac9171da36f92d07000000000000000000000000000000 ,
    0x0000000043006f006e0074006100630074004e0061006d006500000000000000 ,
    0x04aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80690064000000000000007da6a641b3cf604b95c0700a612b45850700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00690063006500 ,
    0x4e0075006d0000000000000077a5524b02faf248a18587169cb2874b07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8049006e0076006f006900630065004400 ,
    0x610074006500000000000000749d4175d9cbb541b77414bf76f2aa9c07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004e007500 ,
    0x6d00000000000000c310a93c2fe0c4488706f21ce736cf3a0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074004400610074006500 ,
    0x000000000000d0b1539c9f7bfc439d9435b3dda929d50700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80510075006f00740065004e0075006d00000000000000 ,
    0x9d63ea70f7ac1e44aa26234fcf0001210700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80510075006f00740065004400610074006500000000000000b0bd0eea ,
    0xaff55740a5eb393481fda4f4070000005b083f7056ff724f87556f9a4773200e ,
    0x730065006c006c0066006f007200000000000000b62cf6d097d23148af8470f7 ,
    0xba7d6a5a070000005b083f7056ff724f87556f9a4773200e710075006f007400 ,
    0x650066006f007200000000000000b8e9a11e129a6542b0b1ab24c8bef8530700 ,
    0x0000bb4ee421343f624db77659eef5e022a14700530054004500780065006d00 ,
    0x70007400000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4e ,
    0xe421343f624db77659eef5e022a143006f006d0070004e0061006d0065000000 ,
    0x00000000238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa46004e0000000000000027afc0ba5db60e409636470e73e1 ,
    0xfc430700000039a4960a0ccbe542ab18e42cf68884fa6c006e00000000000000 ,
    0xe04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8076006f006900640000000000000065ad3064e8981147a4bdc2ff83e1 ,
    0xe02607000000abd7a13a18cfc44f845c77c762d61a4646004e00000000000000 ,
    0x96debff91f1ff043bcf0998107c8713e07000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a464c004e00000000000000c2ae23dbc46de0498a55893ecc1ea0130700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8050004f004e0075006d0062006500 ,
    0x72000000000000008265226ce5165f4597f9cda188898d960700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006e007400610063007400470065006e00 ,
    0x6500720061006c004900440000000000000040de5e7aec65a745aa86e7e9e8cb ,
    0x55780700000035f87d9f0b136040ad3c2851f16d2a80530061006c0065007300 ,
    0x520065007000490044000000000000001c9b84855b8f264abd34a504e56b05af ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a0065006300 ,
    0x74004e0061006d006500000000000000ec0b724301a5a646ae4fd759d8d39c9c ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00740061006300 ,
    0x74004e0061006d0065004900440000000000000055214613b67cb94eaac4189b ,
    0xee61392c07000000abd7a13a18cfc44f845c77c762d61a464900440000000000 ,
    0x00001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db776 ,
    0x59eef5e022a149004400000000000000836b4761bb445b46b7a949192117f870 ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa490044000000000000004a5e ,
    0xec03f45e6e4997b2fc833d2a0514070000005b083f7056ff724f87556f9a4773 ,
    0x200e500072006f006a0065006300740048006500610064006500720049004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbBinary "GUID" = Begin
    0x162c92739c50b049b54ec5bd2e90d30c
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.id"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1d022a52cd6c5943945b4f88a10a0646
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5f74e5a46779849a85a65a593625be6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7707cb18d8d39040a29368c09b261c96
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnOrder" ="11"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x195829dc71c54f45a716724ee3b066a9
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbInteger "ColumnOrder" ="13"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x622b4027a9a0cd4da869bce313715ff6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfe7d9f1b15130d41b61b82ae079230ee
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc05d53673760f14ea055f0a82ca9fb5f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteDate"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa72fb154de7de4478eaf6bffb5ac8b38
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xef0212459698fb4883ac31c47db30b88
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbInteger "ColumnOrder" ="14"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8263683fcfa0744d89f38ffb82fdc7a4
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.GSTExempt"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x12dfa2e19a5d0b47ad1d3de958e9c56b
        End
    End
    Begin
        dbText "Name" ="GSTAmount"
        dbInteger "ColumnOrder" ="10"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf5c4cd1d2add1941a1d868900bf37891
        End
    End
    Begin
        dbText "Name" ="ContactName"
        dbInteger "ColumnOrder" ="12"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2f93f74e4a6fff4885ac9171da36f92d
        End
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum.sellfor"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum.quotefor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="markup"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9cd9827e0f004847a4abf108bdd9060b
        End
    End
    Begin
        dbText "Name" ="InvDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x37cfd12f6be5a64980e975bf36d26742
        End
    End
End
Begin
    State =0
    Left =27
    Top =73
    Right =1530
    Bottom =771
    Left =-1
    Top =-1
    Right =1471
    Bottom =207
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =242
        Bottom =195
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =928
        Top =173
        Right =1072
        Bottom =317
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1127
        Top =37
        Right =1394
        Bottom =294
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =476
        Top =60
        Right =697
        Bottom =256
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =289
        Top =10
        Right =433
        Bottom =154
        Top =0
        Name ="qryRptSalesHeader_SellforSum"
        Name =""
    End
End
