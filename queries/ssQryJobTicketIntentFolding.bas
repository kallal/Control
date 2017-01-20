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
    0x0acc0e5500000000f317d7ac27109d4f9401387db45ce7b200000000222f576f ,
    0xcedae44000000000000000007300730064005f00500072006f00640075006300 ,
    0x7400730000000000000067871fb76ee29c4bb80022d07f2d799200000000f35d ,
    0xad1450e0e44000000000000000007300730064005f0049006e00740065006e00 ,
    0x74005200650073006f007500720063006500000000000000816b811a6c73ac45 ,
    0x911821d019bad025000000009301ef6ecedae440000000000000000073007300 ,
    0x64005f004a004200460032004a006f00620000000000000057ffafbd243f8d48 ,
    0xa7a7361035ab28e500000000cbb0151550e0e440000000000000000073007300 ,
    0x64005f0046006f006c00640069006e00670049006e00740065006e0074000000 ,
    0x00000000d8e2aacbaac52b4b9f03d80be1ded0c800000000cbb0151550e0e440 ,
    0x00000000000000007300730064005f0046006f006c00640069006e0067004300 ,
    0x6100740061006c006f0067000000000000000ed2845a38967a418ead56185b86 ,
    0xe2cd070000005abf1757be19754d9e525415608d682e46006f006c0064004400 ,
    0x650073006300720069007000740069006f006e0000000000000062913ac3ed7c ,
    0xd94aab77a7024331a0be07000000f317d7ac27109d4f9401387db45ce7b25000 ,
    0x72006f00640075006300740049004400000000000000e16dba5326350746862b ,
    0x8a1bb6238f380700000067871fb76ee29c4bb80022d07f2d799249006e007400 ,
    0x65006e0074005200650073006f00750072006300650049004400000000000000 ,
    0x416a8e4b2911194ebf0ed618e0d4b88f0700000067871fb76ee29c4bb80022d0 ,
    0x7f2d7992500072006f00640075006300740049006e00740065006e0074004900 ,
    0x440000000000000099df483fcae20949a29775320ea6a49a0700000067871fb7 ,
    0x6ee29c4bb80022d07f2d79924400650073006300720069007000740069007600 ,
    0x65004e0061006d00650000000000000028babb8148664849918b7fc910c88145 ,
    0x0700000067871fb76ee29c4bb80022d07f2d799249006e00740065006e007400 ,
    0x5200650073006f00750072006300650054007900700065004900440000000000 ,
    0x00004dc69b35485028479e4feac6ec00684007000000816b811a6c73ac459118 ,
    0x21d019bad0254a004200460049004400000000000000b11d5a199b73bd40be45 ,
    0x03ba94a0331c0700000057ffafbd243f8d48a7a7361035ab28e546006f006c00 ,
    0x640069006e00670043006100740061006c006f00670049004400000000000000 ,
    0x5de5dd6ec44f014690a571ab180f833507000000d8e2aacbaac52b4b9f03d80b ,
    0xe1ded0c84a006400660043006100740061006c006f0067004e0061006d006500 ,
    0x0000000000000aaabfbcce255b4981138dd4f0f8eb7007000000d8e2aacbaac5 ,
    0x2b4b9f03d80be1ded0c843006100740061006c006f0067004e0061006d006500 ,
    0x000000000000ebc777f28290a94ebb38a2c0044da10a07000000d8e2aacbaac5 ,
    0x2b4b9f03d80be1ded0c850006100670065007300000000000000bf4ef19391c7 ,
    0x524699639e393b829afc07000000d8e2aacbaac52b4b9f03d80be1ded0c84600 ,
    0x6f006c0064004f007000650072006100740069006f006e007300000000000000 ,
    0x069d145641ac7241aafa0f907dde5ee207000000d8e2aacbaac52b4b9f03d80b ,
    0xe1ded0c8520065006c0061007400690076006500500061006700650057006900 ,
    0x640074006800000000000000b7057e70bc91f640b9e09cf431304ba707000000 ,
    0xd8e2aacbaac52b4b9f03d80be1ded0c8520065006c0061007400690076006500 ,
    0x500061006700650048006500690067006800740000000000000096484a3d592f ,
    0xc24fb5ba8dbf8397c56007000000d8e2aacbaac52b4b9f03d80be1ded0c85000 ,
    0x61006700650057006900640074006800470061007000000000000000629e8773 ,
    0x8506c34e9c1482180e180fbf07000000d8e2aacbaac52b4b9f03d80be1ded0c8 ,
    0x5000610067006500480065006900670068007400470061007000000000000000 ,
    0x1ec01795d6e3934c9ecd065afbe50b4a07000000f317d7ac27109d4f9401387d ,
    0xb45ce7b2500072006f00640075006300740049006e00740065006e0074004900 ,
    0x4400000000000000cfc3b780a55d8e40810df3be6ae9b6d907000000816b811a ,
    0x6c73ac45911821d019bad0254a006f00620049004400000000000000c808e559 ,
    0x2d4ce94baa8375d6e1f858fe0700000057ffafbd243f8d48a7a7361035ab28e5 ,
    0x49006e00740065006e0074005200650073006f00750072006300650049004400 ,
    0x0000000000007c3aca8b04831e45959035ca1cfcebe007000000d8e2aacbaac5 ,
    0x2b4b9f03d80be1ded0c846006f006c00640069006e0067004300610074006100 ,
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
