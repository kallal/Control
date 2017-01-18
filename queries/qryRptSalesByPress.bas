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
    Name ="dbo_Machine"
    Name ="qry_PressUsedByComponent_Summary"
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
    Expression ="Round((([sellfor]-[quotefor])/[quotefor])*100,2)"
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
    Expression ="dbo_Machine.MachineModel"
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
    LeftTable ="qry_PressUsedByComponent_Summary"
    RightTable ="dbo_ProjectHeader"
    Expression ="qry_PressUsedByComponent_Summary.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
    LeftTable ="qry_PressUsedByComponent_Summary"
    RightTable ="dbo_Machine"
    Expression ="qry_PressUsedByComponent_Summary.FirstOfPress = dbo_Machine.ID"
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
dbBinary "GUID" = Begin
    0x751a833bdcae7d40983d762cde776285
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000fbaad29a ,
    0x4ecce4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a1000000004b5cdbab09cce4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000abd7a13a18cfc44f845c77c762d61a4600000000cd5edeab09cce4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d00650000000000000039a4960a0ccbe542ab18e42cf68884fa000000000284 ,
    0xd4ab09cce4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f007900650065000000000000005b083f7056ff ,
    0x724f87556f9a4773200e0000000021f6b9b3f3cde44000000000000000007100 ,
    0x72007900520070007400530061006c0065007300480065006100640065007200 ,
    0x5f00530065006c006c0066006f007200530075006d00000000000000657f6535 ,
    0x45447543a70db61cc8fc06fc000000000746e8ab09cce4400000000000000000 ,
    0x640062006f005f004d0061006300680069006e00650000000000000089680d98 ,
    0xabf8314cb539d89f7b105a69000000009ccfbab3f3cde4400000000000000000 ,
    0x7100720079005f00500072006500730073005500730065006400420079004300 ,
    0x6f006d0070006f006e0065006e0074005f00530075006d006d00610072007900 ,
    0x00000000000037cfd12f6be5a64980e975bf36d2674207000000751a833bdcae ,
    0x7d40983d762cde77628549006e00760044006100740065000000000000009cd9 ,
    0x827e0f004847a4abf108bdd9060b07000000751a833bdcae7d40983d762cde77 ,
    0x62856d00610072006b0075007000000000000000f5c4cd1d2add1941a1d86890 ,
    0x0bf3789107000000751a833bdcae7d40983d762cde7762854700530054004100 ,
    0x6d006f0075006e007400000000000000622b4027a9a0cd4da869bce313715ff6 ,
    0x07000000751a833bdcae7d40983d762cde776285530061006c00650073005200 ,
    0x650070000000000000002f93f74e4a6fff4885ac9171da36f92d07000000751a ,
    0x833bdcae7d40983d762cde77628543006f006e0074006100630074004e006100 ,
    0x6d00650000000000000004aeb2718000d24bb73b562a737994cb0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80690064000000000000007da6a641b3cf604b ,
    0x95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e00 ,
    0x76006f006900630065004e0075006d0000000000000077a5524b02faf248a185 ,
    0x87169cb2874b0700000035f87d9f0b136040ad3c2851f16d2a8049006e007600 ,
    0x6f006900630065004400610074006500000000000000749d4175d9cbb541b774 ,
    0x14bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f006300 ,
    0x6b00650074004e0075006d00000000000000c310a93c2fe0c4488706f21ce736 ,
    0xcf3a0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b006500 ,
    0x74004400610074006500000000000000d0b1539c9f7bfc439d9435b3dda929d5 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80510075006f00740065004e00 ,
    0x75006d000000000000009d63ea70f7ac1e44aa26234fcf0001210700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80510075006f00740065004400610074006500 ,
    0x000000000000b0bd0eeaaff55740a5eb393481fda4f4070000005b083f7056ff ,
    0x724f87556f9a4773200e730065006c006c0066006f007200000000000000b62c ,
    0xf6d097d23148af8470f7ba7d6a5a070000005b083f7056ff724f87556f9a4773 ,
    0x200e710075006f007400650066006f007200000000000000b8e9a11e129a6542 ,
    0xb0b1ab24c8bef85307000000bb4ee421343f624db77659eef5e022a147005300 ,
    0x54004500780065006d0070007400000000000000fde2928bbc55824d8e33fcf8 ,
    0xa8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d007000 ,
    0x4e0061006d006500000000000000238a70cc04f1b542bd79b33633915bc60700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa46004e0000000000000027afc0ba ,
    0x5db60e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x6c006e00000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8076006f006900640000000000000065ad3064 ,
    0xe8981147a4bdc2ff83e1e02607000000abd7a13a18cfc44f845c77c762d61a46 ,
    0x46004e0000000000000096debff91f1ff043bcf0998107c8713e07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a464c004e00000000000000c2ae23dbc46de049 ,
    0x8a55893ecc1ea0130700000035f87d9f0b136040ad3c2851f16d2a8050004f00 ,
    0x4e0075006d006200650072000000000000008265226ce5165f4597f9cda18889 ,
    0x8d960700000035f87d9f0b136040ad3c2851f16d2a8043006f006e0074006100 ,
    0x63007400470065006e006500720061006c004900440000000000000040de5e7a ,
    0xec65a745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x530061006c0065007300520065007000490044000000000000001c9b84855b8f ,
    0x264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a805000 ,
    0x72006f006a006500630074004e0061006d00650000000000000010525034e9fc ,
    0x5c4db54aaa12e9031a8e07000000657f653545447543a70db61cc8fc06fc4d00 ,
    0x61006300680069006e0065004d006f00640065006c00000000000000ec0b7243 ,
    0x01a5a646ae4fd759d8d39c9c0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x43006f006e0074006100630074004e0061006d00650049004400000000000000 ,
    0x55214613b67cb94eaac4189bee61392c07000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a46490044000000000000001fc238e447652546a47f3ca6a0d889e40700 ,
    0x0000bb4ee421343f624db77659eef5e022a149004400000000000000836b4761 ,
    0xbb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x490044000000000000004a5eec03f45e6e4997b2fc833d2a0514070000005b08 ,
    0x3f7056ff724f87556f9a4773200e500072006f006a0065006300740048006500 ,
    0x6100640065007200490044000000000000002042568302f48b4d89eb4ba2abdd ,
    0xca730700000089680d98abf8314cb539d89f7b105a69500072006f006a006500 ,
    0x63007400480065006100640065007200490044000000000000000eeab2ec001d ,
    0x5f4a8d480e2b096d11750700000089680d98abf8314cb539d89f7b105a694600 ,
    0x69007200730074004f006600500072006500730073000000000000008bb0fb76 ,
    0xcef6a144a050ef38f896b3f907000000657f653545447543a70db61cc8fc06fc ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
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
    Begin
        dbText "Name" ="dbo_Machine.MachineModel"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =93
    Top =11
    Right =1596
    Bottom =859
    Left =-1
    Top =-1
    Right =1471
    Bottom =449
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =242
        Bottom =494
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =820
        Top =105
        Right =1130
        Bottom =325
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =846
        Top =320
        Right =1113
        Bottom =577
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =444
        Top =185
        Right =665
        Bottom =381
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =283
        Top =86
        Right =427
        Bottom =230
        Top =0
        Name ="qryRptSalesHeader_SellforSum"
        Name =""
    End
    Begin
        Left =667
        Top =12
        Right =966
        Bottom =156
        Top =0
        Name ="dbo_Machine"
        Name =""
    End
    Begin
        Left =475
        Top =12
        Right =619
        Bottom =156
        Top =0
        Name ="qry_PressUsedByComponent_Summary"
        Name =""
    End
End
