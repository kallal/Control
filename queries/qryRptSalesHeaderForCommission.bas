Operation =1
Option =0
Where ="(((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactName"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
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
    Expression ="dbo_ContactGeneral.GSTExempt"
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
    Expression ="dbo_ProjectHeader.Void"
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
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000666311c3 ,
    0xd6c0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a4600000000c186f5c3d6c0e4400000000000000000640062006f005f00 ,
    0x43006f006e0074006100630074004e0061006d006500000000000000bb4ee421 ,
    0x343f624db77659eef5e022a100000000774be8c2d6c0e4400000000000000000 ,
    0x640062006f005f0043006f006e007400610063007400470065006e0065007200 ,
    0x61006c0000000000000039a4960a0ccbe542ab18e42cf68884fa00000000195b ,
    0xe1c3d6c0e4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f0079006500650000000000000037cfd12f6be5 ,
    0xa64980e975bf36d26742070000003681308ed109984394de3456f6b7d3ff4900 ,
    0x6e0076004400610074006500000000000000622b4027a9a0cd4da869bce31371 ,
    0x5ff6070000003681308ed109984394de3456f6b7d3ff530061006c0065007300 ,
    0x5200650070000000000000002f93f74e4a6fff4885ac9171da36f92d07000000 ,
    0x3681308ed109984394de3456f6b7d3ff43006f006e0074006100630074004e00 ,
    0x61006d00650000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80690064000000000000007da6a641b3cf ,
    0x604b95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x6e0076006f006900630065004e0075006d0000000000000077a5524b02faf248 ,
    0xa18587169cb2874b0700000035f87d9f0b136040ad3c2851f16d2a8049006e00 ,
    0x76006f006900630065004400610074006500000000000000749d4175d9cbb541 ,
    0xb77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f00 ,
    0x63006b00650074004e0075006d00000000000000c310a93c2fe0c4488706f21c ,
    0xe736cf3a0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00 ,
    0x650074004400610074006500000000000000d0b1539c9f7bfc439d9435b3dda9 ,
    0x29d50700000035f87d9f0b136040ad3c2851f16d2a80510075006f0074006500 ,
    0x4e0075006d000000000000009d63ea70f7ac1e44aa26234fcf00012107000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80510075006f0074006500440061007400 ,
    0x6500000000000000b8e9a11e129a6542b0b1ab24c8bef85307000000bb4ee421 ,
    0x343f624db77659eef5e022a14700530054004500780065006d00700074000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d006500000000000000238a ,
    0x70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa46004e0000000000000027afc0ba5db60e409636470e73e1fc4307000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa6c006e00000000000000e04379333b12 ,
    0xce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a807600 ,
    0x6f006900640000000000000065ad3064e8981147a4bdc2ff83e1e02607000000 ,
    0xabd7a13a18cfc44f845c77c762d61a4646004e0000000000000096debff91f1f ,
    0xf043bcf0998107c8713e07000000abd7a13a18cfc44f845c77c762d61a464c00 ,
    0x4e00000000000000c2ae23dbc46de0498a55893ecc1ea0130700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8050004f004e0075006d0062006500720000000000 ,
    0x00008265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8043006f006e007400610063007400470065006e00650072006100 ,
    0x6c004900440000000000000040de5e7aec65a745aa86e7e9e8cb557807000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80530061006c0065007300520065007000 ,
    0x490044000000000000001c9b84855b8f264abd34a504e56b05af0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80500072006f006a006500630074004e006100 ,
    0x6d006500000000000000ec0b724301a5a646ae4fd759d8d39c9c0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8043006f006e0074006100630074004e006100 ,
    0x6d0065004900440000000000000055214613b67cb94eaac4189bee61392c0700 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46490044000000000000001fc238e4 ,
    0x47652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1 ,
    0x49004400000000000000836b4761bb445b46b7a949192117f8700700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
dbBinary "GUID" = Begin
    0x3681308ed109984394de3456f6b7d3ff
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
        dbText "Name" ="Level"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfbe09fae28573f48b496d8b03057ed14
        End
    End
    Begin
        dbText "Name" ="Commission"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x14ba6fd60c38cb49b4c88ae9111981d4
        End
    End
    Begin
        dbText "Name" ="qryRptSalesHeaderForCommissionPDQCosts.CategoryName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DirectCostsVal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7872d189f53c6a4ba7b7342ea2ebefc2
        End
    End
    Begin
        dbText "Name" ="IndirectCostsVal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x101d940ecad0524295e60d101df0b314
        End
    End
    Begin
        dbText "Name" ="TotalMaterialCostsVal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf954ddfcd2ffd7408dc6f54188e8dd96
        End
    End
    Begin
        dbText "Name" ="qryRptSalesHeaderForCommissionPDQCosts.CostVal"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StockAndOSCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xebecbfaf5e42c748a0c5696e808fc63a
        End
    End
End
Begin
    State =0
    Left =58
    Top =34
    Right =1629
    Bottom =732
    Left =-1
    Top =-1
    Right =1539
    Bottom =255
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
        Left =920
        Top =8
        Right =1187
        Bottom =265
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =732
        Top =95
        Right =876
        Bottom =239
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =393
        Top =27
        Right =614
        Bottom =223
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
