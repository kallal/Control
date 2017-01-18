dbMemo "SQL" ="SELECT ssd_Products.ProductID, ssd_IntentResource.IntentResourceID, ssd_IntentRe"
    "source.ProductIntentID, ssd_IntentResource.DescriptiveName, ssd_IntentResource.I"
    "ntentResourceTypeID, ssd_JBF2Job.JBFID, ssd_FoldingIntent.FoldingCatalogID, ssd_"
    "FoldingCatalog.JdfCatalogName, ssd_FoldingCatalog.CatalogName, ssd_FoldingCatalo"
    "g.Pages, ssd_FoldingCatalog.FoldOperations, ssd_FoldingCatalog.RelativePageWidth"
    ", ssd_FoldingCatalog.RelativePageHeight, ssd_FoldingCatalog.PageWidthGap, ssd_Fo"
    "ldingCatalog.PageHeightGap, DLookUp(\"[name]\",\"ssd_JobletPropertyValues\",\"va"
    "l([Value]) = \" & [ssd_FoldingIntent].[foldingcatalogid]) AS FoldDescription\015"
    "\012FROM (((ssd_Products LEFT JOIN ssd_IntentResource ON ssd_Products.ProductInt"
    "entID = ssd_IntentResource.ProductIntentID) LEFT JOIN ssd_JBF2Job ON ssd_Product"
    "s.ProductID = ssd_JBF2Job.JobID) LEFT JOIN ssd_FoldingIntent ON ssd_IntentResour"
    "ce.IntentResourceID = ssd_FoldingIntent.IntentResourceID) LEFT JOIN ssd_FoldingC"
    "atalog ON ssd_FoldingIntent.FoldingCatalogID = ssd_FoldingCatalog.FoldingCatalog"
    "ID\015\012WHERE (((ssd_FoldingIntent.FoldingCatalogID) Is Not Null));\015\012"
dbMemo "Connect" =""
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
    0x5abf1757be19754d9e525415608d682e
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000002ce8edd86a48c748ada42ffe77c9518f00000000620188c2 ,
    0xea62e44000000000000000007300730064005f00500072006f00640075006300 ,
    0x74007300000000000000934925925117e34ea1de37cc9e6922b60000000080f1 ,
    0x0cc2ea62e44000000000000000007300730064005f0049006e00740065006e00 ,
    0x74005200650073006f007500720063006500000000000000dff7a86c80fa934d ,
    0xbcfd3adbbf7d702900000000dc6310c2ea62e440000000000000000073007300 ,
    0x64005f004a004200460032004a006f006200000000000000b685f9614d3bab45 ,
    0xae73cf38ce46657b00000000eb97ffc1ea62e440000000000000000073007300 ,
    0x64005f0046006f006c00640069006e00670049006e00740065006e0074000000 ,
    0x000000008586f0b8701bac4eb3206e8d283481d900000000ca02ffc1ea62e440 ,
    0x00000000000000007300730064005f0046006f006c00640069006e0067004300 ,
    0x6100740061006c006f0067000000000000000ed2845a38967a418ead56185b86 ,
    0xe2cd070000005abf1757be19754d9e525415608d682e46006f006c0064004400 ,
    0x650073006300720069007000740069006f006e0000000000000010cfe9bd3bb2 ,
    0x894682f4fbc7fda11c47070000002ce8edd86a48c748ada42ffe77c9518f5000 ,
    0x72006f0064007500630074004900440000000000000099b9a9506d7d874c86ff ,
    0x4bfbab8d9b6b07000000934925925117e34ea1de37cc9e6922b649006e007400 ,
    0x65006e0074005200650073006f00750072006300650049004400000000000000 ,
    0xf771963724b611408ebc2abafa50518107000000934925925117e34ea1de37cc ,
    0x9e6922b6500072006f00640075006300740049006e00740065006e0074004900 ,
    0x4400000000000000ca4bbd32af70484ea396a6835e9162db0700000093492592 ,
    0x5117e34ea1de37cc9e6922b64400650073006300720069007000740069007600 ,
    0x65004e0061006d0065000000000000005bd13398d4e1c94d812c13c704b86aa2 ,
    0x07000000934925925117e34ea1de37cc9e6922b649006e00740065006e007400 ,
    0x5200650073006f00750072006300650054007900700065004900440000000000 ,
    0x0000b02d750f126a6045a78f0614cd9218cc07000000dff7a86c80fa934dbcfd ,
    0x3adbbf7d70294a004200460049004400000000000000be4370f3e5c74345a0fd ,
    0x6b22cee03d2307000000b685f9614d3bab45ae73cf38ce46657b46006f006c00 ,
    0x640069006e00670043006100740061006c006f00670049004400000000000000 ,
    0xcc46967c68bc144e96f22beea21d22a3070000008586f0b8701bac4eb3206e8d ,
    0x283481d94a006400660043006100740061006c006f0067004e0061006d006500 ,
    0x00000000000000e3d683fbd2224e9ed53e44acecf95f070000008586f0b8701b ,
    0xac4eb3206e8d283481d943006100740061006c006f0067004e0061006d006500 ,
    0x0000000000003b0ca67d09a3884ba9ca685102dc3f2a070000008586f0b8701b ,
    0xac4eb3206e8d283481d950006100670065007300000000000000790d8b255fa2 ,
    0x8e428003b3ccf3083660070000008586f0b8701bac4eb3206e8d283481d94600 ,
    0x6f006c0064004f007000650072006100740069006f006e007300000000000000 ,
    0x0b9873c8ab270d4e85c4b9cec93e0c74070000008586f0b8701bac4eb3206e8d ,
    0x283481d9520065006c0061007400690076006500500061006700650057006900 ,
    0x640074006800000000000000e8272b3eeb14124186e6875caf5c464c07000000 ,
    0x8586f0b8701bac4eb3206e8d283481d9520065006c0061007400690076006500 ,
    0x50006100670065004800650069006700680074000000000000006cd7492f69c3 ,
    0x4f44a9f04f3cf898b3a4070000008586f0b8701bac4eb3206e8d283481d95000 ,
    0x6100670065005700690064007400680047006100700000000000000065806b1e ,
    0x1ab0d244ba3166ef1c8ca212070000008586f0b8701bac4eb3206e8d283481d9 ,
    0x5000610067006500480065006900670068007400470061007000000000000000 ,
    0x57e472cf69c02b4bac165f34973a36de070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f500072006f00640075006300740049006e00740065006e0074004900 ,
    0x44000000000000004738b7382c4ce649bc43c85187242b4207000000dff7a86c ,
    0x80fa934dbcfd3adbbf7d70294a006f006200490044000000000000006c4d43a5 ,
    0xb6150b4a9a96eb2c50f3ba6007000000b685f9614d3bab45ae73cf38ce46657b ,
    0x49006e00740065006e0074005200650073006f00750072006300650049004400 ,
    0x000000000000b90f16f6baac9844a53eec8e5649628b070000008586f0b8701b ,
    0xac4eb3206e8d283481d946006f006c00640069006e0067004300610074006100 ,
    0x6c006f0067004900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="FoldDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ed2845a38967a418ead56185b86e2cd
        End
    End
    Begin
        dbText "Name" ="ssd_Products.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_IntentResource.IntentResourceID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_IntentResource.ProductIntentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_IntentResource.DescriptiveName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_IntentResource.IntentResourceTypeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_JBF2Job.JBFID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingIntent.FoldingCatalogID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.JdfCatalogName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.CatalogName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.Pages"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.FoldOperations"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.RelativePageWidth"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.RelativePageHeight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.PageWidthGap"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_FoldingCatalog.PageHeightGap"
        dbLong "AggregateType" ="-1"
    End
End
