Operation =1
Option =0
Where ="(((dbo_ProjectHeader.void)=False) AND ((dbo_ProjectHeader.IsFSC)=True))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
    Name ="dbo_CompanyEmployee"
    Name ="viewTotalProjectValue"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Alias ="OrderedBy"
    Expression ="[dbo_contactName].[fn] & \" \" & [dbo_contactname].[ln]"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.QuoteDate"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.void"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Expression ="dbo_ProjectHeader.PONumber"
    Expression ="dbo_ProjectHeader.IsFSC"
    Alias ="SalesRep"
    Expression ="[dbo_companyEmployee].[fn] & \" \" & [dbo_companyEmployee].[ln]"
    Expression ="viewTotalProjectValue.TotalDocketValue"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectHeader.BillOrderedBy = dbo_ContactName.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectHeader.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="viewTotalProjectValue"
    Expression ="dbo_ProjectHeader.ID = viewTotalProjectValue.ID"
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
dbBinary "GUID" = Begin
    0x2f4afefd5110274795e0ee3865b17890
End
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
    0x6e00790045006d0070006c006f00790065006500000000000000221853e36fed ,
    0xa04f8221f9fc8678092f000000005d21d44c2de0e44000000000000000007600 ,
    0x69006500770054006f00740061006c00500072006f006a006500630074005600 ,
    0x61006c0075006500000000000000b442e147d07032438ae06e0f86ac40d40700 ,
    0x00002f4afefd5110274795e0ee3865b178904f00720064006500720065006400 ,
    0x42007900000000000000dd24e4db54b9c84fa9e6187cf0183ded070000002f4a ,
    0xfefd5110274795e0ee3865b17890530061006c00650073005200650070000000 ,
    0x00000000d0b1539c9f7bfc439d9435b3dda929d50700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80510075006f00740065004e0075006d00000000000000749d ,
    0x4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8044006f0063006b00650074004e0075006d000000000000007da6a641b3cf ,
    0x604b95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x6e0076006f006900630065004e0075006d00000000000000fde2928bbc55824d ,
    0x8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f00 ,
    0x6d0070004e0061006d0065000000000000001c9b84855b8f264abd34a504e56b ,
    0x05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a006500 ,
    0x630074004e0061006d00650000000000000065ad3064e8981147a4bdc2ff83e1 ,
    0xe02607000000abd7a13a18cfc44f845c77c762d61a4666006e00000000000000 ,
    0x96debff91f1ff043bcf0998107c8713e07000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a466c006e0000000000000040de5e7aec65a745aa86e7e9e8cb55780700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80530061006c006500730052006500 ,
    0x700049004400000000000000ce73341489752f42bffad7debac543a607000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8043007300720049004400000000000000 ,
    0x9d63ea70f7ac1e44aa26234fcf0001210700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80510075006f00740065004400610074006500000000000000c310a93c ,
    0x2fe0c4488706f21ce736cf3a0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x44006f0063006b0065007400440061007400650000000000000077a5524b02fa ,
    0xf248a18587169cb2874b0700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x6e0076006f006900630065004400610074006500000000000000e04379333b12 ,
    0xce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a807600 ,
    0x6f00690064000000000000006b8100b18f7ba34aa3c59fda19a111ed07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80500072006f006a006500630074005300 ,
    0x7400610074007500730049004400000000000000c2ae23dbc46de0498a55893e ,
    0xcc1ea0130700000035f87d9f0b136040ad3c2851f16d2a8050004f004e007500 ,
    0x6d00620065007200000000000000748f86ce53ecfb429f888aeb3372a5450700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a804900730046005300430000000000 ,
    0x0000238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa66006e0000000000000027afc0ba5db60e409636470e73e1fc43 ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa6c006e00000000000000cc67 ,
    0x78d275654d469e749d2ff4cb28aa07000000221853e36feda04f8221f9fc8678 ,
    0x092f54006f00740061006c0044006f0063006b0065007400560061006c007500 ,
    0x65000000000000008265226ce5165f4597f9cda188898d960700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006e007400610063007400470065006e00 ,
    0x6500720061006c00490044000000000000001fc238e447652546a47f3ca6a0d8 ,
    0x89e407000000bb4ee421343f624db77659eef5e022a149004400000000000000 ,
    0x437b2c749c26d9488eaca0d07ff97a9f0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80420069006c006c004f00720064006500720065006400420079000000 ,
    0x0000000055214613b67cb94eaac4189bee61392c07000000abd7a13a18cfc44f ,
    0x845c77c762d61a4649004400000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x04aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80490044000000000000007b000948f6eda242b7fc69e56945dc8b0700 ,
    0x0000221853e36feda04f8221f9fc8678092f4900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="OrderedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb442e147d07032438ae06e0f86ac40d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsFSC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd24e4db54b9c84fa9e6187cf0183ded
        End
    End
    Begin
        dbText "Name" ="viewTotalProjectValue.TotalDocketValue"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-64
    Top =58
    Right =1449
    Bottom =786
    Left =-1
    Top =-1
    Right =1481
    Bottom =245
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =64
        Top =14
        Right =410
        Bottom =265
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =507
        Top =24
        Right =727
        Bottom =168
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =597
        Top =87
        Right =836
        Bottom =231
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =1206
        Top =12
        Right =1440
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =844
        Top =3
        Right =1031
        Bottom =174
        Top =0
        Name ="viewTotalProjectValue"
        Name =""
    End
End
