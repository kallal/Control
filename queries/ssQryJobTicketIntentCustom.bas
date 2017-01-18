dbMemo "SQL" ="SELECT ssd_Products.ProductID, ssd_IntentResource.IntentResourceID, ssd_IntentRe"
    "source.ProductIntentID, ssd_IntentResource.DescriptiveName, ssd_IntentResource.I"
    "ntentResourceTypeID, ssd_CustomIntent_Property.PropertyID, ssd_Property.ValueNam"
    "e, ssd_JBF2Job.JBFID\015\012FROM (((ssd_Products LEFT JOIN ssd_IntentResource ON"
    " ssd_Products.ProductIntentID = ssd_IntentResource.ProductIntentID) LEFT JOIN ss"
    "d_CustomIntent_Property ON ssd_IntentResource.IntentResourceID = ssd_CustomInten"
    "t_Property.IntentResourceID) LEFT JOIN ssd_Property ON ssd_CustomIntent_Property"
    ".PropertyID = ssd_Property.PropertyID) LEFT JOIN ssd_JBF2Job ON ssd_Products.Pro"
    "ductID = ssd_JBF2Job.JobID\015\012WHERE (((ssd_CustomIntent_Property.PropertyID)"
    " Is Not Null));\015\012"
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
    0x9a5e975e32c2dc43bda636812b36f33e
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000002ce8edd86a48c748ada42ffe77c9518f00000000620188c2 ,
    0xea62e44000000000000000007300730064005f00500072006f00640075006300 ,
    0x74007300000000000000934925925117e34ea1de37cc9e6922b60000000080f1 ,
    0x0cc2ea62e44000000000000000007300730064005f0049006e00740065006e00 ,
    0x74005200650073006f007500720063006500000000000000b8578a17f366e54a ,
    0x86180661b302f10d000000000e19f2c1ea62e440000000000000000073007300 ,
    0x64005f0043007500730074006f006d0049006e00740065006e0074005f005000 ,
    0x72006f00700065007200740079000000000000009af75dffc78bd64694051c53 ,
    0x78c1c2be00000000eafe89c2ea62e44000000000000000007300730064005f00 ,
    0x500072006f0070006500720074007900000000000000dff7a86c80fa934dbcfd ,
    0x3adbbf7d702900000000dc6310c2ea62e4400000000000000000730073006400 ,
    0x5f004a004200460032004a006f00620000000000000010cfe9bd3bb2894682f4 ,
    0xfbc7fda11c47070000002ce8edd86a48c748ada42ffe77c9518f500072006f00 ,
    0x64007500630074004900440000000000000099b9a9506d7d874c86ff4bfbab8d ,
    0x9b6b07000000934925925117e34ea1de37cc9e6922b649006e00740065006e00 ,
    0x74005200650073006f00750072006300650049004400000000000000f7719637 ,
    0x24b611408ebc2abafa50518107000000934925925117e34ea1de37cc9e6922b6 ,
    0x500072006f00640075006300740049006e00740065006e007400490044000000 ,
    0x00000000ca4bbd32af70484ea396a6835e9162db07000000934925925117e34e ,
    0xa1de37cc9e6922b6440065007300630072006900700074006900760065004e00 ,
    0x61006d0065000000000000005bd13398d4e1c94d812c13c704b86aa207000000 ,
    0x934925925117e34ea1de37cc9e6922b649006e00740065006e00740052006500 ,
    0x73006f0075007200630065005400790070006500490044000000000000006969 ,
    0xdeeec98acd4f8381cc82a530968b07000000b8578a17f366e54a86180661b302 ,
    0xf10d500072006f0070006500720074007900490044000000000000003fcdab1e ,
    0x1ebd134e99ab65d85c17a7f1070000009af75dffc78bd64694051c5378c1c2be ,
    0x560061006c00750065004e0061006d006500000000000000b02d750f126a6045 ,
    0xa78f0614cd9218cc07000000dff7a86c80fa934dbcfd3adbbf7d70294a004200 ,
    0x46004900440000000000000057e472cf69c02b4bac165f34973a36de07000000 ,
    0x2ce8edd86a48c748ada42ffe77c9518f500072006f0064007500630074004900 ,
    0x6e00740065006e00740049004400000000000000a31a34b052c6a54681704000 ,
    0xc85c179607000000b8578a17f366e54a86180661b302f10d49006e0074006500 ,
    0x6e0074005200650073006f00750072006300650049004400000000000000e38a ,
    0xb43f5670a940b6235231628292c8070000009af75dffc78bd64694051c5378c1 ,
    0xc2be500072006f0070006500720074007900490044000000000000004738b738 ,
    0x2c4ce649bc43c85187242b4207000000dff7a86c80fa934dbcfd3adbbf7d7029 ,
    0x4a006f0062004900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
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
        dbText "Name" ="dbo_Products.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CustomIntent_Property.PropertyID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Property.ValueName"
        dbInteger "ColumnWidth" ="5070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JBF2Job.JBFID"
        dbLong "AggregateType" ="-1"
    End
End
