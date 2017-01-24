Operation =1
Option =0
Begin InputTables
    Name ="dbo_ShipmentHeader"
    Name ="dbo_PackingListHeader"
    Name ="dbo_ContactGeneral"
    Alias ="Courier"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Alias ="Client"
    Name ="dbo_CompanyEmployee"
    Alias ="SalesRep"
End
Begin OutputColumns
    Expression ="dbo_ShipmentHeader.ShipmentSpeed"
    Expression ="dbo_ShipmentHeader.ContactGeneralID"
    Expression ="dbo_ShipmentHeader.ShipViaID"
    Expression ="dbo_ShipmentHeader.Waybill"
    Alias ="Courier"
    Expression ="Courier.CompName"
    Expression ="dbo_ShipmentHeader.EstCost"
    Expression ="dbo_ShipmentHeader.EnteredBy"
    Alias ="Client"
    Expression ="Client.CompName"
    Alias ="SalesRep"
    Expression ="Trim([salesrep].[FN]) & \" \" & [salesrep].[ln]"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ShipmentHeader.ShipmentDate"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.DocketDate"
End
Begin Joins
    LeftTable ="dbo_ShipmentHeader"
    RightTable ="dbo_PackingListHeader"
    Expression ="dbo_ShipmentHeader.ID = dbo_PackingListHeader.ShipmentHeaderID"
    Flag =2
    LeftTable ="dbo_ShipmentHeader"
    RightTable ="Courier"
    Expression ="dbo_ShipmentHeader.ShipViaID = Courier.ID"
    Flag =1
    LeftTable ="dbo_PackingListHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_PackingListHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="Client"
    Expression ="dbo_ProjectHeader.ContactGeneralID = Client.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="SalesRep"
    Expression ="dbo_ProjectHeader.SalesRepID = SalesRep.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query6].[ShipmentDate] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xb9db0945fc382148a9711df661d57a8d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e35b5057a3270648a22974f102fa784900000000f0d37c0e ,
    0xcfe0e4400000000000000000640062006f005f0053006800690070006d006500 ,
    0x6e0074004800650061006400650072000000000000009939adb14d3770448571 ,
    0xdd31722423c5000000001f60c00dcfe0e4400000000000000000640062006f00 ,
    0x5f005000610063006b0069006e0067004c006900730074004800650061006400 ,
    0x65007200000000000000bb4ee421343f624db77659eef5e022a1000000006f48 ,
    0x190dcfe0e4400000000000000000640062006f005f0043006f006e0074006100 ,
    0x63007400470065006e006500720061006c0000000000000035f87d9f0b136040 ,
    0xad3c2851f16d2a8000000000d8784d0ecfe0e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x0000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40ccfe0e440 ,
    0x0000000000000000640062006f005f0043006f006d00700061006e0079004500 ,
    0x6d0070006c006f00790065006500000000000000eff9417a32112844a75e5aae ,
    0x73dc1f4707000000b9db0945fc382148a9711df661d57a8d43006f0075007200 ,
    0x6900650072000000000000003087ab5a1c2a9c49a959f1b43ad2cb0307000000 ,
    0xb9db0945fc382148a9711df661d57a8d43006c00690065006e00740000000000 ,
    0x000047dbcbd2eb8cfa47b1c4949a24b82f3907000000b9db0945fc382148a971 ,
    0x1df661d57a8d530061006c0065007300520065007000000000000000205be6ac ,
    0xdcb1ec4aae6a3b69e7b65ae707000000e35b5057a3270648a22974f102fa7849 ,
    0x53006800690070006d0065006e00740053007000650065006400000000000000 ,
    0x369bbd98fb5fb54eb797b37874a7a5d507000000e35b5057a3270648a22974f1 ,
    0x02fa784943006f006e007400610063007400470065006e006500720061006c00 ,
    0x49004400000000000000b31339255898fc4eab1da77a32bd13ed07000000e35b ,
    0x5057a3270648a22974f102fa7849530068006900700056006900610049004400 ,
    0x000000000000e096bdaa12359a48bc649bea0feeb3dd07000000e35b5057a327 ,
    0x0648a22974f102fa7849570061007900620069006c006c000000000000003fc6 ,
    0xf6fe262b9040bc0fe8d28a2a4d4d07000000e35b5057a3270648a22974f102fa ,
    0x784945007300740043006f0073007400000000000000dbe4d012f4f5e84fab9c ,
    0x3ebc85b6697207000000e35b5057a3270648a22974f102fa784945006e007400 ,
    0x65007200650064004200790000000000000077a5524b02faf248a18587169cb2 ,
    0x874b0700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f006900 ,
    0x6300650044006100740065000000000000004160c6560425454e9d3a6875eaa8 ,
    0x9a9707000000e35b5057a3270648a22974f102fa784953006800690070006d00 ,
    0x65006e00740044006100740065000000000000007da6a641b3cf604b95c0700a ,
    0x612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00 ,
    0x6900630065004e0075006d000000000000001c9b84855b8f264abd34a504e56b ,
    0x05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a006500 ,
    0x630074004e0061006d006500000000000000749d4175d9cbb541b77414bf76f2 ,
    0xaa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b006500 ,
    0x74004e0075006d00000000000000c310a93c2fe0c4488706f21ce736cf3a0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004400 ,
    0x6100740065000000000000000fb59cdf7ddc4d4f965a76f53902055607000000 ,
    0xe35b5057a3270648a22974f102fa7849490044000000000000000ef6ab91f3ba ,
    0x9042b984f388527f4ba1070000009939adb14d3770448571dd31722423c55300 ,
    0x6800690070006d0065006e007400480065006100640065007200490044000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000043006f007500720069006500720000000000000089a3931c ,
    0x973bd74b9560c8d09e7a4fb5070000009939adb14d3770448571dd31722423c5 ,
    0x500072006f006a00650063007400480065006100640065007200490044000000 ,
    0x0000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80490044000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000043006c00690065006e00 ,
    0x74000000000000008265226ce5165f4597f9cda188898d960700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006e007400610063007400470065006e00 ,
    0x6500720061006c00490044000000000000000000000000000000000000000000 ,
    0x00000000000000000000000000000000000000000000530061006c0065007300 ,
    0x52006500700000000000000040de5e7aec65a745aa86e7e9e8cb557807000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80530061006c0065007300520065007000 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="Client.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Courier"
        dbInteger "ColumnWidth" ="2580"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeff9417a32112844a75e5aae73dc1f47
        End
    End
    Begin
        dbText "Name" ="Client"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3087ab5a1c2a9c49a959f1b43ad2cb03
        End
    End
    Begin
        dbText "Name" ="SalesRep.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x47dbcbd2eb8cfa47b1c4949a24b82f39
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ShipmentSpeed"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x23aa82007233bf4c8638efa0cc0bd839
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe0470a82ab155842b57e007a2aca1927
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ShipViaID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf03ac347aac5cf4e899c95d3763fc67f
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.Waybill"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x36780ef83f06ec4ca61a9e1a1c2d04bc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Shipper.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.EstCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x518320c2a40b6e469d2bbd726d2cffd6
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.EnteredBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e42647967d6fc4499c810a71cba0556
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3b70a657a4693a40a7d02117f86761d3
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ShipmentDate"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c22a9c4c1a55b4ba6b49c33e26960a1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =63
    Right =1436
    Bottom =840
    Left =-1
    Top =-1
    Right =1404
    Bottom =376
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =62
        Top =11
        Right =276
        Bottom =386
        Top =0
        Name ="dbo_ShipmentHeader"
        Name =""
    End
    Begin
        Left =319
        Top =22
        Right =590
        Bottom =301
        Top =0
        Name ="dbo_PackingListHeader"
        Name =""
    End
    Begin
        Left =1283
        Top =11
        Right =1465
        Bottom =205
        Top =0
        Name ="Courier"
        Name =""
    End
    Begin
        Left =644
        Top =105
        Right =869
        Bottom =369
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =914
        Top =25
        Right =1058
        Bottom =169
        Top =0
        Name ="Client"
        Name =""
    End
    Begin
        Left =916
        Top =192
        Right =1056
        Bottom =350
        Top =0
        Name ="SalesRep"
        Name =""
    End
End
