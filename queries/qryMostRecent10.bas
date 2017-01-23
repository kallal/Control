Operation =1
Option =0
Begin InputTables
    Name ="qryFindTop10MostRecent"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="qryFindTop10MostRecent.CompanyEmployeeID"
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Alias ="ContactName"
    Expression ="[fn] & \" \" & [ln]"
    Expression ="qryFindTop10MostRecent.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
End
Begin Joins
    LeftTable ="qryFindTop10MostRecent"
    RightTable ="dbo_ProjectHeader"
    Expression ="qryFindTop10MostRecent.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =1
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =1
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectHeader.ContactNameID = dbo_ContactName.ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.QuoteNum"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x8ab8baf3bf3ad84289241423a6196a41
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
<<<<<<< HEAD
    0x0acc0e5500000000d489615088b0d14b980d716f4d17f87500000000d33cf79f ,
    0xcee0e4400000000000000000710072007900460069006e00640054006f007000 ,
=======
    0x0acc0e5500000000d489615088b0d14b980d716f4d17f8750000000035358090 ,
    0x6fe0e4400000000000000000710072007900460069006e00640054006f007000 ,
>>>>>>> origin/master
    0x310030004d006f007300740052006500630065006e00740000000000000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80000000003f11149ecee0e440000000000000 ,
    0x0000640062006f005f00500072006f006a006500630074004800650061006400 ,
    0x65007200000000000000bb4ee421343f624db77659eef5e022a10000000096e7 ,
    0xc19dcee0e4400000000000000000640062006f005f0043006f006e0074006100 ,
    0x63007400470065006e006500720061006c00000000000000abd7a13a18cfc44f ,
    0x845c77c762d61a46000000006838c79dcee0e440000000000000000064006200 ,
    0x6f005f0043006f006e0074006100630074004e0061006d006500000000000000 ,
    0x45710cbc247cd043962d4cfa2b41b1c6070000008ab8baf3bf3ad84289241423 ,
    0xa6196a4143006f006e0074006100630074004e0061006d006500000000000000 ,
    0xa148c940c4648246980e58bb560208d607000000d489615088b0d14b980d716f ,
    0x4d17f87543006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x650049004400000000000000d0b1539c9f7bfc439d9435b3dda929d507000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80510075006f00740065004e0075006d00 ,
    0x000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8044006f0063006b00650074004e0075006d0000000000 ,
    0x00007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8049006e0076006f006900630065004e0075006d00000000000000 ,
    0xfde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659ee ,
    0xf5e022a143006f006d0070004e0061006d0065000000000000001c9b84855b8f ,
    0x264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a805000 ,
    0x72006f006a006500630074004e0061006d00650000000000000065ad3064e898 ,
    0x1147a4bdc2ff83e1e02607000000abd7a13a18cfc44f845c77c762d61a466600 ,
    0x6e0000000000000096debff91f1ff043bcf0998107c8713e07000000abd7a13a ,
    0x18cfc44f845c77c762d61a466c006e00000000000000aba2a3c025eb57409e50 ,
    0x139c8d15561b07000000d489615088b0d14b980d716f4d17f875500072006f00 ,
    0x6a00650063007400480065006100640065007200490044000000000000008265 ,
    0x226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8043006f006e007400610063007400470065006e006500720061006c004900 ,
    0x440000000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80490044000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000ec0b724301a5a646ae4fd759d8d39c9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8043006f006e0074006100630074004e0061006d0065004900 ,
    0x440000000000000055214613b67cb94eaac4189bee61392c07000000abd7a13a ,
    0x18cfc44f845c77c762d61a464900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="qryFindTop10MostRecent.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57932def3d6c074d96e403acb3079581
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d4291502fec0a43b8897d663dd616dc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf75be9bee0acb4499431b02086304251
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97e47805bc604642a20fb61cff67e018
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3f8beb9aa6ecc9489f36465d6072e379
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ContactName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x45710cbc247cd043962d4cfa2b41b1c6
        End
    End
    Begin
        dbText "Name" ="qryFindTop10MostRecent.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1607
    Bottom =859
    Left =-1
    Top =-1
    Right =1497
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =101
        Top =14
        Right =386
        Bottom =278
        Top =0
        Name ="qryFindTop10MostRecent"
        Name =""
    End
    Begin
        Left =428
        Top =12
        Right =907
        Bottom =302
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =955
        Top =12
        Right =1215
        Bottom =296
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1263
        Top =12
        Right =1473
        Bottom =275
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
