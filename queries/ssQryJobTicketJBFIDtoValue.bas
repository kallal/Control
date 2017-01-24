dbMemo "SQL" ="SELECT ssd_JBFsJoblets.JBFID, ssd_JBFsJoblets.JobletID, ssd_JobletLibrary.Joblet"
    "Name, ssd_JobletLibrary.JobletType, ssd_JBFsJoblets.ViewOrder, ssd_JBFPropertyVa"
    "lues.ValueID, ssd_JobletPropertyValues.PropertyID, ssd_JobletPropertyValues.Name"
    ", ssd_JobletPropertyValues.Value, ssd_JobletPropertyValues.IsEnabled, ssd_Joblet"
    "PropertyValues.IsDeleted, ssd_JobletPropertyValues.IconID, ssd_Icons.CategoryID,"
    " ssd_Icons.FileName, ssd_Icons.DisplayName\015\012FROM (((ssd_JBFsJoblets LEFT J"
    "OIN ssd_JBFPropertyValues ON ssd_JBFsJoblets.JBFJobletID = ssd_JBFPropertyValues"
    ".JBFJobletID) LEFT JOIN ssd_JobletPropertyValues ON ssd_JBFPropertyValues.ValueI"
    "D = ssd_JobletPropertyValues.ValueID) LEFT JOIN ssd_JobletLibrary ON ssd_JBFsJob"
    "lets.JobletID = ssd_JobletLibrary.JobletID) LEFT JOIN ssd_Icons ON ssd_JobletPro"
    "pertyValues.IconID = ssd_Icons.IconID\015\012ORDER BY ssd_JBFsJoblets.ViewOrder,"
    " ssd_JobletPropertyValues.PropertyID;\015\012"
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
    0x7d16017cac214f4cb957e3a5908cb622
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000033dd860d0dccd44b897bfc07897a1f8e000000004a899914 ,
    0x50e0e44000000000000000007300730064005f004a004200460073004a006f00 ,
    0x62006c00650074007300000000000000d473169450ff334585d61d1734f393fa ,
    0x000000004a89991450e0e44000000000000000007300730064005f004a004200 ,
    0x4600500072006f0070006500720074007900560061006c007500650073000000 ,
    0x00000000065947a63d8c3e4dab764119e9baa3dc000000004a89991450e0e440 ,
    0x00000000000000007300730064005f004a006f0062006c006500740050007200 ,
    0x6f0070006500720074007900560061006c00750065007300000000000000fbf4 ,
    0xa4e45e00c14d8d5bdcdf5fddad23000000004a89991450e0e440000000000000 ,
    0x00007300730064005f004a006f0062006c00650074004c006900620072006100 ,
    0x72007900000000000000d81a3d04587b364c8841bee0ef73a514000000007fe6 ,
    0x991450e0e44000000000000000007300730064005f00490063006f006e007300 ,
    0x000000000000e595ec2151cce64a8096803b845a89990700000033dd860d0dcc ,
    0xd44b897bfc07897a1f8e4a0042004600490044000000000000001772c1b8ee48 ,
    0x934a9fc911d4908a0ecb0700000033dd860d0dccd44b897bfc07897a1f8e4a00 ,
    0x6f0062006c0065007400490044000000000000003ecb9d85ae078a4cb86ded10 ,
    0x520b409507000000fbf4a4e45e00c14d8d5bdcdf5fddad234a006f0062006c00 ,
    0x650074004e0061006d006500000000000000ef35344057c6aa4cb567fbcff5da ,
    0x36f607000000fbf4a4e45e00c14d8d5bdcdf5fddad234a006f0062006c006500 ,
    0x74005400790070006500000000000000dc2517a7500b68469dcefb55add429f5 ,
    0x0700000033dd860d0dccd44b897bfc07897a1f8e56006900650077004f007200 ,
    0x640065007200000000000000e145444860aae24c89eb0aa46015dc4707000000 ,
    0xd473169450ff334585d61d1734f393fa560061006c0075006500490044000000 ,
    0x0000000061b347b8a51ea748b710f79e217f0b2707000000065947a63d8c3e4d ,
    0xab764119e9baa3dc500072006f00700065007200740079004900440000000000 ,
    0x00003bdb2d09f2eea34dbc696450a43c35ef07000000065947a63d8c3e4dab76 ,
    0x4119e9baa3dc4e0061006d0065000000000000008539e780f5fee64d95702eb0 ,
    0x5bc2ba6e07000000065947a63d8c3e4dab764119e9baa3dc560061006c007500 ,
    0x65000000000000002c966acca3cfbb4d8908c7e63e813a5407000000065947a6 ,
    0x3d8c3e4dab764119e9baa3dc4900730045006e00610062006c00650064000000 ,
    0x00000000925d6c29f910284480963ff6d532ee5d07000000065947a63d8c3e4d ,
    0xab764119e9baa3dc49007300440065006c006500740065006400000000000000 ,
    0x63ef2314dc77b346aab53d87b8d1b08607000000065947a63d8c3e4dab764119 ,
    0xe9baa3dc490063006f006e00490044000000000000003b7770be7117144d9815 ,
    0x9676f9119c3507000000d81a3d04587b364c8841bee0ef73a514430061007400 ,
    0x650067006f007200790049004400000000000000ee113dcda96e1a45ae9d931f ,
    0x1264d2fe07000000d81a3d04587b364c8841bee0ef73a514460069006c006500 ,
    0x4e0061006d0065000000000000006118ff15c343c34aabb6779f4243ce020700 ,
    0x0000d81a3d04587b364c8841bee0ef73a51444006900730070006c0061007900 ,
    0x4e0061006d006500000000000000a421353bd9c96c459f73f8f4655d5a4a0700 ,
    0x000033dd860d0dccd44b897bfc07897a1f8e4a00420046004a006f0062006c00 ,
    0x650074004900440000000000000048b770bbf21c8f4ca5db048dfafa2e370700 ,
    0x0000d473169450ff334585d61d1734f393fa4a00420046004a006f0062006c00 ,
    0x65007400490044000000000000004857dc6c4eb4394c91f31e77b39de4390700 ,
    0x0000065947a63d8c3e4dab764119e9baa3dc560061006c007500650049004400 ,
    0x0000000000002a3b9854926b3a45bba84a524c38e37307000000fbf4a4e45e00 ,
    0xc14d8d5bdcdf5fddad234a006f0062006c006500740049004400000000000000 ,
    0x937225872f62a343a8530027af1ef73707000000d81a3d04587b364c8841bee0 ,
    0xef73a514490063006f006e004900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_JBFsJoblets.JBFID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6efd8fd632c0d345ae380d18ebab43bc
        End
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.Name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd13829770d2def43a7760b1c2fbe8fbb
        End
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.Value"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d2b255b9087f34f99a512d4684f6091
        End
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.PropertyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x034a4f32ab17f345925e39fba5b59d11
        End
    End
    Begin
        dbText "Name" ="dbo_JBFsJoblets.ViewOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb25ba3ec5c96ae4f9121e9818a50018c
        End
    End
    Begin
        dbText "Name" ="dbo_JBFPropertyValues.ValueID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x13804f4fc6bd404899ce1b85a0d71a06
        End
    End
    Begin
        dbText "Name" ="dbo_JBFsJoblets.JobletID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletLibrary.JobletName"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.IsEnabled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.IsDeleted"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.IconID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Icons.FileName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Icons.DisplayName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3375"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Icons.CategoryID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletLibrary.JobletType"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
