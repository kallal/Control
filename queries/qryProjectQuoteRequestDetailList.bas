Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectQuoteRequestDetail"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectQuoteRequestDetail.id"
    Expression ="dbo_ProjectQuoteRequestDetail.ProjectHeaderID"
    Expression ="dbo_ProjectQuoteRequestDetail.Type"
    Expression ="dbo_ProjectQuoteRequestDetail.ComponentName"
    Expression ="dbo_ProjectQuoteRequestDetail.Locked"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.ContactNameID"
End
Begin Joins
    LeftTable ="dbo_ProjectQuoteRequestDetail"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectQuoteRequestDetail.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3500be0fbbf199489dffb07012cd3ef2
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000faed22be4f0c5429cd77cfdad34eeb0000000009338662b ,
    0xacd7e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400510075006f00740065005200650071007500650073007400440065007400 ,
    0x610069006c0000000000000035f87d9f0b136040ad3c2851f16d2a8000000000 ,
    0x9fd7632bacd7e4400000000000000000640062006f005f00500072006f006a00 ,
    0x650063007400480065006100640065007200000000000000b5e642e9c211a34e ,
    0x9599d29860a2df86070000000faed22be4f0c5429cd77cfdad34eeb069006400 ,
    0x000000000000aff25d63cb991d489c42a1b76f3240a6070000000faed22be4f0 ,
    0xc5429cd77cfdad34eeb0500072006f006a006500630074004800650061006400 ,
    0x6500720049004400000000000000b9b755408dd2f24ca0e22eddcccf81900700 ,
    0x00000faed22be4f0c5429cd77cfdad34eeb05400790070006500000000000000 ,
    0xaeee278be930a2448bda6bde72f544ae070000000faed22be4f0c5429cd77cfd ,
    0xad34eeb043006f006d0070006f006e0065006e0074004e0061006d0065000000 ,
    0x000000007e4e5ccf381ca74886d4de7716d24758070000000faed22be4f0c542 ,
    0x9cd77cfdad34eeb04c006f0063006b00650064000000000000008265226ce516 ,
    0x5f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x00000000ec0b724301a5a646ae4fd759d8d39c9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8043006f006e0074006100630074004e0061006d0065004900 ,
    0x440000000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a804900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectQuoteRequestDetail.id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectQuoteRequestDetail.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectQuoteRequestDetail.Type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectQuoteRequestDetail.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectQuoteRequestDetail.Locked"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactNameID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1587
    Bottom =980
    Left =-1
    Top =-1
    Right =1479
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =864
        Bottom =514
        Top =0
        Name ="dbo_ProjectQuoteRequestDetail"
        Name =""
    End
    Begin
        Left =912
        Top =12
        Right =1301
        Bottom =316
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
