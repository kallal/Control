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
    0x0acc0e5500000000934925925117e34ea1de37cc9e6922b60000000080f10cc2 ,
    0xea62e44000000000000000007300730064005f0049006e00740065006e007400 ,
    0x5200650073006f0075007200630065000000000000001f05b7aa39b3c34fa436 ,
    0xea5557bf1c86000000004aea2bc2ea62e4400000000000000000730073006400 ,
    0x5f004c00610079006f007500740049006e00740065006e007400000000000000 ,
    0x99b9a9506d7d874c86ff4bfbab8d9b6b07000000934925925117e34ea1de37cc ,
    0x9e6922b649006e00740065006e0074005200650073006f007500720063006500 ,
    0x49004400000000000000f771963724b611408ebc2abafa505181070000009349 ,
    0x25925117e34ea1de37cc9e6922b6500072006f00640075006300740049006e00 ,
    0x740065006e007400490044000000000000005bd13398d4e1c94d812c13c704b8 ,
    0x6aa207000000934925925117e34ea1de37cc9e6922b649006e00740065006e00 ,
    0x74005200650073006f0075007200630065005400790070006500490044000000 ,
    0x00000000ca4bbd32af70484ea396a6835e9162db07000000934925925117e34e ,
    0xa1de37cc9e6922b6440065007300630072006900700074006900760065004e00 ,
    0x61006d0065000000000000000f3a150bccf3954d999538ae645d506807000000 ,
    0x1f05b7aa39b3c34fa436ea5557bf1c8650006100670065007300000000000000 ,
    0xb81d57794b64aa469e6b7630d06ff532070000001f05b7aa39b3c34fa436ea55 ,
    0x57bf1c8657006900640074006800000000000000f0285febd88c7841a14a2950 ,
    0x94329373070000001f05b7aa39b3c34fa436ea5557bf1c864800650069006700 ,
    0x680074000000000000009d0a72edcbfe234bab900ff4bb02854b070000001f05 ,
    0xb7aa39b3c34fa436ea5557bf1c86460069006e00690073006800650064005700 ,
    0x6900640074006800000000000000444c58b24adc7b4d921b00b848c5ab640700 ,
    0x00001f05b7aa39b3c34fa436ea5557bf1c86460069006e006900730068006500 ,
    0x6400480065006900670068007400000000000000ddc0dbda9c36e5488ff62599 ,
    0xb502c45c070000001f05b7aa39b3c34fa436ea5557bf1c86460069006e006900 ,
    0x7300680065006400440065007000740068000000000000006b280ad65b84bb4a ,
    0x8af19d7daf1c8a88070000001f05b7aa39b3c34fa436ea5557bf1c8653006900 ,
    0x640065007300000000000000919215cfa6abbf4cadc6826a2f256ebe07000000 ,
    0x1f05b7aa39b3c34fa436ea5557bf1c8657006500690067006800740000000000 ,
    0x00003019630aca196744b50505109a31f2f1070000001f05b7aa39b3c34fa436 ,
    0xea5557bf1c86460069006e006900730068006500640050006100670065007300 ,
    0x0000000000001b6aee08b1ba6e49888428136259e9d0070000001f05b7aa39b3 ,
    0xc34fa436ea5557bf1c865000610067006500530069007a006500000000000000 ,
    0xdc336803b7874d419edeeb28942065c3070000001f05b7aa39b3c34fa436ea55 ,
    0x57bf1c8649006e00740065006e0074005200650073006f007500720063006500 ,
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
