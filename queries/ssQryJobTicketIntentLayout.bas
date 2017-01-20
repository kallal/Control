dbMemo "SQL" ="SELECT ssd_IntentResource.IntentResourceID, ssd_IntentResource.ProductIntentID, "
    "ssd_IntentResource.IntentResourceTypeID, ssd_IntentResource.DescriptiveName, ssd"
    "_LayoutIntent.Pages, ssd_LayoutIntent.Width, ssd_LayoutIntent.Height, ssd_Layout"
    "Intent.FinishedWidth, ssd_LayoutIntent.FinishedHeight, ssd_LayoutIntent.Finished"
    "Depth, ssd_LayoutIntent.Sides, ssd_LayoutIntent.Weight, ssd_LayoutIntent.Finishe"
    "dPages, ssd_LayoutIntent.PageSize\015\012FROM ssd_IntentResource INNER JOIN ssd_"
    "LayoutIntent ON ssd_IntentResource.IntentResourceID = ssd_LayoutIntent.IntentRes"
    "ourceID;\015\012"
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
    0x4f87a783e564fa4e98de12e6c744680c
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000067871fb76ee29c4bb80022d07f2d799200000000f35dad14 ,
    0x50e0e44000000000000000007300730064005f0049006e00740065006e007400 ,
    0x5200650073006f00750072006300650000000000000093dc315ea32ad24e8c80 ,
    0x89b2cd94d9ec000000007e3bd81450e0e4400000000000000000730073006400 ,
    0x5f004c00610079006f007500740049006e00740065006e007400000000000000 ,
    0xe16dba5326350746862b8a1bb6238f380700000067871fb76ee29c4bb80022d0 ,
    0x7f2d799249006e00740065006e0074005200650073006f007500720063006500 ,
    0x49004400000000000000416a8e4b2911194ebf0ed618e0d4b88f070000006787 ,
    0x1fb76ee29c4bb80022d07f2d7992500072006f00640075006300740049006e00 ,
    0x740065006e0074004900440000000000000028babb8148664849918b7fc910c8 ,
    0x81450700000067871fb76ee29c4bb80022d07f2d799249006e00740065006e00 ,
    0x74005200650073006f0075007200630065005400790070006500490044000000 ,
    0x0000000099df483fcae20949a29775320ea6a49a0700000067871fb76ee29c4b ,
    0xb80022d07f2d7992440065007300630072006900700074006900760065004e00 ,
    0x61006d00650000000000000037eb2bc4a647004ca2c6474c3ad60d8007000000 ,
    0x93dc315ea32ad24e8c8089b2cd94d9ec50006100670065007300000000000000 ,
    0x255282039805824cab2ea59a00b0f6370700000093dc315ea32ad24e8c8089b2 ,
    0xcd94d9ec570069006400740068000000000000009948b1ed273bf34ea47b65b6 ,
    0xa61995a30700000093dc315ea32ad24e8c8089b2cd94d9ec4800650069006700 ,
    0x6800740000000000000027cff9193c311a4bb81f9f89d15f19210700000093dc ,
    0x315ea32ad24e8c8089b2cd94d9ec460069006e00690073006800650064005700 ,
    0x690064007400680000000000000013bbbb7b94e4494fb6de6158db69bee90700 ,
    0x000093dc315ea32ad24e8c8089b2cd94d9ec460069006e006900730068006500 ,
    0x6400480065006900670068007400000000000000a34b1d7057e8ca409181e25b ,
    0x03564ac50700000093dc315ea32ad24e8c8089b2cd94d9ec460069006e006900 ,
    0x7300680065006400440065007000740068000000000000001293e6f84b730449 ,
    0xa9872f07493f04230700000093dc315ea32ad24e8c8089b2cd94d9ec53006900 ,
    0x64006500730000000000000063fb4bb8e4e79c4ca37fd1bec6b1938007000000 ,
    0x93dc315ea32ad24e8c8089b2cd94d9ec57006500690067006800740000000000 ,
    0x0000c0d0ff13ae9c63499c785ae764b0b7380700000093dc315ea32ad24e8c80 ,
    0x89b2cd94d9ec460069006e006900730068006500640050006100670065007300 ,
    0x00000000000064c3e90631b0a24bbf3c8e6acce3db480700000093dc315ea32a ,
    0xd24e8c8089b2cd94d9ec5000610067006500530069007a006500000000000000 ,
    0xb9fbfb9627ce6f48a468e5de31366cbc0700000093dc315ea32ad24e8c8089b2 ,
    0xcd94d9ec49006e00740065006e0074005200650073006f007500720063006500 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_IntentResource.DescriptiveName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb48ba87395f2764891bd25911707eac2
        End
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_IntentResource.ProductIntentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f9217d10f750343af5b086fff132410
        End
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_IntentResource.IntentResourceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x452bc879f8bf8546a35efe57eb0ab73c
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.IntentResourceTypeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b351c841ef07c4ebdcc0f52eb5e008c
        End
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.PageSize"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.Pages"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.Width"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.FinishedDepth"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.Sides"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.Weight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.FinishedPages"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.Height"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.FinishedWidth"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_LayoutIntent.FinishedHeight"
        dbLong "AggregateType" ="-1"
    End
End
