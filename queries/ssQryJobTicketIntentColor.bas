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
    0x0acc0e55000000002ce8edd86a48c748ada42ffe77c9518f00000000620188c2 ,
    0xea62e44000000000000000007300730064005f00500072006f00640075006300 ,
    0x74007300000000000000934925925117e34ea1de37cc9e6922b60000000080f1 ,
    0x0cc2ea62e44000000000000000007300730064005f0049006e00740065006e00 ,
    0x74005200650073006f007500720063006500000000000000628886a2f4304741 ,
    0xbf25f68ad37b30f6000000002becdec1ea62e440000000000000000073007300 ,
    0x64005f0043006f006c006f00720049006e00740065006e007400000000000000 ,
    0x10cfe9bd3bb2894682f4fbc7fda11c47070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f500072006f0064007500630074004900440000000000000099b9a950 ,
    0x6d7d874c86ff4bfbab8d9b6b07000000934925925117e34ea1de37cc9e6922b6 ,
    0x49006e00740065006e0074005200650073006f00750072006300650049004400 ,
    0x000000000000f771963724b611408ebc2abafa50518107000000934925925117 ,
    0xe34ea1de37cc9e6922b6500072006f00640075006300740049006e0074006500 ,
    0x6e007400490044000000000000005bd13398d4e1c94d812c13c704b86aa20700 ,
    0x0000934925925117e34ea1de37cc9e6922b649006e00740065006e0074005200 ,
    0x650073006f007500720063006500540079007000650049004400000000000000 ,
    0xca4bbd32af70484ea396a6835e9162db07000000934925925117e34ea1de37cc ,
    0x9e6922b6440065007300630072006900700074006900760065004e0061006d00 ,
    0x650000000000000072aae574c26ed94d9ee01033a90b2a3c07000000628886a2 ,
    0xf4304741bf25f68ad37b30f6500072006f00630065007300730043006f006c00 ,
    0x6f0072007300540079007000650049004400000000000000dcf6609f0cb30644 ,
    0x97bafc109ef1ff3f07000000628886a2f4304741bf25f68ad37b30f653007000 ,
    0x6f00740043006f006c006f00720043006f0075006e0074000000000000009187 ,
    0xba19acd2b24da49c58416442c24507000000628886a2f4304741bf25f68ad37b ,
    0x30f643006f006100740069006e006700490044000000000000001297323ac745 ,
    0x96429461da5032dea59007000000628886a2f4304741bf25f68ad37b30f64900 ,
    0x6e00740065006e0074005200650073006f007500720063006500490044000000 ,
    0x0000000057e472cf69c02b4bac165f34973a36de070000002ce8edd86a48c748 ,
    0xada42ffe77c9518f500072006f00640075006300740049006e00740065006e00 ,
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
