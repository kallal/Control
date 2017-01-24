Operation =1
Option =0
Where ="(((dbo_ProjectHeader.InvoiceNum) Is Not Null Or (dbo_ProjectHeader.InvoiceNum)>0"
    ") AND ((dbo_ProjectHeader.void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
    Name ="dbo_CompanyEmployee"
    Name ="qryRptSalesHeader_SellforSum_DESIGNONLY"
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
    Expression ="qryRptSalesHeader_SellforSum_DESIGNONLY.sellfor"
    Expression ="qryRptSalesHeader_SellforSum_DESIGNONLY.quotefor"
    Expression ="qryRptSalesHeader_SellforSum_DESIGNONLY.MailComponentYN"
    Expression ="qryRptSalesHeader_SellforSum_DESIGNONLY.Description"
    Expression ="qryRptSalesHeader_SellforSum_DESIGNONLY.HoursEst"
    Expression ="qryRptSalesHeader_SellforSum_DESIGNONLY.IsComplete"
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
    RightTable ="qryRptSalesHeader_SellforSum_DESIGNONLY"
    Expression ="dbo_ProjectHeader.ID = qryRptSalesHeader_SellforSum_DESIGNONLY.ProjectHeaderID"
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
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a1000000006f48190dcfe0e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46000000000acb280dcfe0e4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d00650000000000000039a4960a0ccbe542ab18e42cf68884fa000000004f96 ,
    0xe40ccfe0e4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f0079006500650000000000000040633ae75602 ,
    0x3547afe856f8fa55b76100000000a782c69bd3e0e44000000000000000007100 ,
    0x72007900520070007400530061006c0065007300480065006100640065007200 ,
    0x5f00530065006c006c0066006f007200530075006d005f004400450053004900 ,
    0x47004e004f004e004c00590000000000000037cfd12f6be5a64980e975bf36d2 ,
    0x674207000000963c571290db2149a9dad57d04d599dc49006e00760044006100 ,
    0x740065000000000000009cd9827e0f004847a4abf108bdd9060b07000000963c ,
    0x571290db2149a9dad57d04d599dc6d00610072006b0075007000000000000000 ,
    0xf5c4cd1d2add1941a1d868900bf3789107000000963c571290db2149a9dad57d ,
    0x04d599dc47005300540041006d006f0075006e007400000000000000622b4027 ,
    0xa9a0cd4da869bce313715ff607000000963c571290db2149a9dad57d04d599dc ,
    0x530061006c00650073005200650070000000000000002f93f74e4a6fff4885ac ,
    0x9171da36f92d07000000963c571290db2149a9dad57d04d599dc43006f006e00 ,
    0x74006100630074004e0061006d00650000000000000004aeb2718000d24bb73b ,
    0x562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80690064000000 ,
    0x000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8049006e0076006f006900630065004e0075006d0000000000 ,
    0x000077a5524b02faf248a18587169cb2874b0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8049006e0076006f00690063006500440061007400650000000000 ,
    0x0000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8044006f0063006b00650074004e0075006d00000000000000c310 ,
    0xa93c2fe0c4488706f21ce736cf3a0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8044006f0063006b00650074004400610074006500000000000000d0b1539c ,
    0x9f7bfc439d9435b3dda929d50700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x510075006f00740065004e0075006d000000000000009d63ea70f7ac1e44aa26 ,
    0x234fcf0001210700000035f87d9f0b136040ad3c2851f16d2a80510075006f00 ,
    0x740065004400610074006500000000000000b62cf6d097d23148af8470f7ba7d ,
    0x6a5a0700000040633ae756023547afe856f8fa55b761710075006f0074006500 ,
    0x66006f007200000000000000b0bd0eeaaff55740a5eb393481fda4f407000000 ,
    0x40633ae756023547afe856f8fa55b761730065006c006c0066006f0072000000 ,
    0x00000000b8e9a11e129a6542b0b1ab24c8bef85307000000bb4ee421343f624d ,
    0xb77659eef5e022a14700530054004500780065006d0070007400000000000000 ,
    0xfde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659ee ,
    0xf5e022a143006f006d0070004e0061006d006500000000000000238a70cc04f1 ,
    0xb542bd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa4600 ,
    0x4e0000000000000027afc0ba5db60e409636470e73e1fc430700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa6c006e00000000000000e04379333b12ce4eb39e ,
    0xba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a8076006f006900 ,
    0x640000000000000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a ,
    0x18cfc44f845c77c762d61a4646004e0000000000000096debff91f1ff043bcf0 ,
    0x998107c8713e07000000abd7a13a18cfc44f845c77c762d61a464c004e000000 ,
    0x00000000c2ae23dbc46de0498a55893ecc1ea0130700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8050004f004e0075006d006200650072000000000000008265 ,
    0x226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8043006f006e007400610063007400470065006e006500720061006c004900 ,
    0x440000000000000040de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80530061006c006500730052006500700049004400 ,
    0x0000000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80500072006f006a006500630074004e0061006d006500 ,
    0x000000000000c59643644848454d997b09a1342a12320700000040633ae75602 ,
    0x3547afe856f8fa55b7614d00610069006c0043006f006d0070006f006e006500 ,
    0x6e00740059004e00000000000000cedc3209f2a2e948845617e9086c98950700 ,
    0x000040633ae756023547afe856f8fa55b7614400650073006300720069007000 ,
    0x740069006f006e000000000000005b541c13c9d43e49928de905f2906af80700 ,
    0x000040633ae756023547afe856f8fa55b76148006f0075007200730045007300 ,
    0x74000000000000002e8f9718e7684e498b033e6c1868e8c80700000040633ae7 ,
    0x56023547afe856f8fa55b7614900730043006f006d0070006c00650074006500 ,
    0x000000000000ec0b724301a5a646ae4fd759d8d39c9c0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8043006f006e0074006100630074004e0061006d006500 ,
    0x4900440000000000000055214613b67cb94eaac4189bee61392c07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a46490044000000000000001fc238e447652546 ,
    0xa47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a149004400 ,
    0x000000000000836b4761bb445b46b7a949192117f8700700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa490044000000000000004a5eec03f45e6e4997b2fc83 ,
    0x3d2a05140700000040633ae756023547afe856f8fa55b761500072006f006a00 ,
    0x6500630074004800650061006400650072004900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
dbBinary "GUID" = Begin
    0x963c571290db2149a9dad57d04d599dc
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
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_DESIGNONLY.IsComplete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_DESIGNONLY.sellfor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_DESIGNONLY.quotefor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_DESIGNONLY.MailComponentYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_DESIGNONLY.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader_SellforSum_DESIGNONLY.HoursEst"
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
    Bottom =226
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
        Left =399
        Top =33
        Right =717
        Bottom =177
        Top =0
        Name ="qryRptSalesHeader_SellforSum_DESIGNONLY"
        Name =""
    End
End
