dbMemo "SQL" ="SELECT ssd_Products.ProductID, ssd_IntentResource.IntentResourceID, ssd_IntentRe"
    "source.ProductIntentID, ssd_IntentResource.IntentResourceTypeID, ssd_IntentResou"
    "rce.DescriptiveName, ssd_ColorIntent.ProcessColorsTypeID, ssd_ColorIntent.SpotCo"
    "lorCount, ssd_ColorIntent.CoatingID\015\012FROM ssd_Products LEFT JOIN (ssd_Inte"
    "ntResource LEFT JOIN ssd_ColorIntent ON ssd_IntentResource.IntentResourceID = ss"
    "d_ColorIntent.IntentResourceID) ON ssd_Products.ProductIntentID = ssd_IntentReso"
    "urce.ProductIntentID;\015\012"
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
    0x9097334eb327c846bbd7a50e607d91f9
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000f317d7ac27109d4f9401387db45ce7b200000000222f576f ,
    0xcedae44000000000000000007300730064005f00500072006f00640075006300 ,
    0x7400730000000000000067871fb76ee29c4bb80022d07f2d799200000000f35d ,
    0xad1450e0e44000000000000000007300730064005f0049006e00740065006e00 ,
    0x74005200650073006f0075007200630065000000000000004e4575dfbe16eb49 ,
    0xa6b4239086fcc5f60000000057eeca1450e0e440000000000000000073007300 ,
    0x64005f0043006f006c006f00720049006e00740065006e007400000000000000 ,
    0x62913ac3ed7cd94aab77a7024331a0be07000000f317d7ac27109d4f9401387d ,
    0xb45ce7b2500072006f00640075006300740049004400000000000000e16dba53 ,
    0x26350746862b8a1bb6238f380700000067871fb76ee29c4bb80022d07f2d7992 ,
    0x49006e00740065006e0074005200650073006f00750072006300650049004400 ,
    0x000000000000416a8e4b2911194ebf0ed618e0d4b88f0700000067871fb76ee2 ,
    0x9c4bb80022d07f2d7992500072006f00640075006300740049006e0074006500 ,
    0x6e0074004900440000000000000028babb8148664849918b7fc910c881450700 ,
    0x000067871fb76ee29c4bb80022d07f2d799249006e00740065006e0074005200 ,
    0x650073006f007500720063006500540079007000650049004400000000000000 ,
    0x99df483fcae20949a29775320ea6a49a0700000067871fb76ee29c4bb80022d0 ,
    0x7f2d7992440065007300630072006900700074006900760065004e0061006d00 ,
    0x6500000000000000c83c1d5b1658c24096039b4a34389831070000004e4575df ,
    0xbe16eb49a6b4239086fcc5f6500072006f00630065007300730043006f006c00 ,
    0x6f0072007300540079007000650049004400000000000000a5273d4226638646 ,
    0xb50e6a12f3e525c6070000004e4575dfbe16eb49a6b4239086fcc5f653007000 ,
    0x6f00740043006f006c006f00720043006f0075006e0074000000000000004944 ,
    0x637aab5b9c4e9b658396dae86d7e070000004e4575dfbe16eb49a6b4239086fc ,
    0xc5f643006f006100740069006e0067004900440000000000000081bb5aa58b7d ,
    0xb94aadc2687d7eba6c52070000004e4575dfbe16eb49a6b4239086fcc5f64900 ,
    0x6e00740065006e0074005200650073006f007500720063006500490044000000 ,
    0x000000001ec01795d6e3934c9ecd065afbe50b4a07000000f317d7ac27109d4f ,
    0x9401387db45ce7b2500072006f00640075006300740049006e00740065006e00 ,
    0x740049004400000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_IntentResource.IntentResourceTypeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b351c841ef07c4ebdcc0f52eb5e008c
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.DescriptiveName"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb48ba87395f2764891bd25911707eac2
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.ProductIntentID"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f9217d10f750343af5b086fff132410
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.IntentResourceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x452bc879f8bf8546a35efe57eb0ab73c
        End
    End
    Begin
        dbText "Name" ="dbo_ColorIntent.CoatingID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ColorIntent.ProcessColorsTypeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ColorIntent.SpotColorCount"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Products.ProductID"
        dbLong "AggregateType" ="-1"
    End
End
