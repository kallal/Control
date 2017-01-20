Operation =1
Option =0
Where ="(((dbo_ProjectHeader.InvoiceNum) Is Not Null Or (dbo_ProjectHeader.InvoiceNum)>0"
    ") AND ((dbo_ProjectHeader.void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
    Name ="dbo_CompanyEmployee"
    Name ="qryRptSalesHeader_SellforSum_MAILONLY"
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
    Expression ="qryRptSalesHeader_SellforSum_MAILONLY.sellfor"
    Expression ="qryRptSalesHeader_SellforSum_MAILONLY.quotefor"
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
    RightTable ="qryRptSalesHeader_SellforSum_MAILONLY"
    Expression ="dbo_ProjectHeader.ID = qryRptSalesHeader_SellforSum_MAILONLY.ProjectHeaderID"
    Flag =1
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
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a10000000076461f4c2de0e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46000000002bfd224c2de0e4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d00650000000000000039a4960a0ccbe542ab18e42cf68884fa00000000f162 ,
    0x124c2de0e4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f007900650065000000000000006a9a949928bd ,
    0x174ba87d0b268bb452d3000000002f1dc21250e0e44000000000000000007100 ,
    0x72007900520070007400530061006c0065007300480065006100640065007200 ,
    0x5f00530065006c006c0066006f007200530075006d005f004d00410049004c00 ,
    0x4f004e004c00590000000000000037cfd12f6be5a64980e975bf36d267420700 ,
    0x000064baee76f526c243a85fecae025d0b3949006e0076004400610074006500 ,
    0x0000000000009cd9827e0f004847a4abf108bdd9060b0700000064baee76f526 ,
    0xc243a85fecae025d0b396d00610072006b0075007000000000000000f5c4cd1d ,
    0x2add1941a1d868900bf378910700000064baee76f526c243a85fecae025d0b39 ,
    0x47005300540041006d006f0075006e007400000000000000622b4027a9a0cd4d ,
    0xa869bce313715ff60700000064baee76f526c243a85fecae025d0b3953006100 ,
    0x6c00650073005200650070000000000000002f93f74e4a6fff4885ac9171da36 ,
    0xf92d0700000064baee76f526c243a85fecae025d0b3943006f006e0074006100 ,
    0x630074004e0061006d00650000000000000004aeb2718000d24bb73b562a7379 ,
    0x94cb0700000035f87d9f0b136040ad3c2851f16d2a8069006400000000000000 ,
    0x7da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8049006e0076006f006900630065004e0075006d0000000000000077a5 ,
    0x524b02faf248a18587169cb2874b0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8049006e0076006f006900630065004400610074006500000000000000749d ,
    0x4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8044006f0063006b00650074004e0075006d00000000000000c310a93c2fe0 ,
    0xc4488706f21ce736cf3a0700000035f87d9f0b136040ad3c2851f16d2a804400 ,
    0x6f0063006b00650074004400610074006500000000000000d0b1539c9f7bfc43 ,
    0x9d9435b3dda929d50700000035f87d9f0b136040ad3c2851f16d2a8051007500 ,
    0x6f00740065004e0075006d000000000000009d63ea70f7ac1e44aa26234fcf00 ,
    0x01210700000035f87d9f0b136040ad3c2851f16d2a80510075006f0074006500 ,
    0x4400610074006500000000000000b62cf6d097d23148af8470f7ba7d6a5a0700 ,
    0x00006a9a949928bd174ba87d0b268bb452d3710075006f007400650066006f00 ,
    0x7200000000000000b0bd0eeaaff55740a5eb393481fda4f4070000006a9a9499 ,
    0x28bd174ba87d0b268bb452d3730065006c006c0066006f007200000000000000 ,
    0xb8e9a11e129a6542b0b1ab24c8bef85307000000bb4ee421343f624db77659ee ,
    0xf5e022a14700530054004500780065006d0070007400000000000000fde2928b ,
    0xbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a1 ,
    0x43006f006d0070004e0061006d006500000000000000238a70cc04f1b542bd79 ,
    0xb33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa46004e000000 ,
    0x0000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa6c006e00000000000000e04379333b12ce4eb39eba2d3978 ,
    0x3d1f0700000035f87d9f0b136040ad3c2851f16d2a8076006f00690064000000 ,
    0x0000000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a18cfc44f ,
    0x845c77c762d61a4646004e0000000000000096debff91f1ff043bcf0998107c8 ,
    0x713e07000000abd7a13a18cfc44f845c77c762d61a464c004e00000000000000 ,
    0xc2ae23dbc46de0498a55893ecc1ea0130700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8050004f004e0075006d006200650072000000000000008265226ce516 ,
    0x5f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x0000000040de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80530061006c00650073005200650070004900440000000000 ,
    0x00001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a80500072006f006a006500630074004e0061006d00650000000000 ,
    0x0000ec0b724301a5a646ae4fd759d8d39c9c0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8043006f006e0074006100630074004e0061006d00650049004400 ,
    0x00000000000055214613b67cb94eaac4189bee61392c07000000abd7a13a18cf ,
    0xc44f845c77c762d61a46490044000000000000001fc238e447652546a47f3ca6 ,
    0xa0d889e407000000bb4ee421343f624db77659eef5e022a14900440000000000 ,
    0x0000836b4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa490044000000000000004a5eec03f45e6e4997b2fc833d2a0514 ,
    0x070000006a9a949928bd174ba87d0b268bb452d3500072006f006a0065006300 ,
    0x7400480065006100640065007200490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
dbBinary "GUID" = Begin
    0x64baee76f526c243a85fecae025d0b39
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
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_MAILONLY.sellfor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_MAILONLY.quotefor"
        dbLong "AggregateType" ="-1"
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
    Bottom =260
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =269
        Bottom =285
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =810
        Top =119
        Right =1067
        Bottom =263
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
        Left =410
        Top =26
        Right =554
        Bottom =170
        Top =0
        Name ="qryRptSalesHeader_SellforSum_MAILONLY"
        Name =""
    End
End
