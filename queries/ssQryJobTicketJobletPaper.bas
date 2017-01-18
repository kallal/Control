dbMemo "SQL" ="SELECT ssd_JBF2Job.JobID, ssd_JBFsJoblets.JBFID, ssd_jbfPerJbfPaperExtra.Display"
    "Name AS PaperName, ssd_JBFsJoblets.AlterName, ssd_JBFsJoblets.JobletID, ssd_JBFP"
    "ropertyValues.ValueID, ssd_JBFPropertyValues.IsDefault, ssd_JBFPropertyValues.ST"
    "RValue\015\012FROM ((ssd_JBFsJoblets INNER JOIN ssd_JBFPropertyValues ON ssd_JBF"
    "sJoblets.JBFJobletID = ssd_JBFPropertyValues.JBFJobletID) INNER JOIN ssd_jbfPerJ"
    "bfPaperExtra ON ssd_JBFPropertyValues.JBFPropertyValueID = ssd_jbfPerJbfPaperExt"
    "ra.jbfPropertyValueID) INNER JOIN ssd_JBF2Job ON ssd_JBFsJoblets.JBFID = ssd_JBF"
    "2Job.JBFID;\015\012"
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
    0xebc9f516a17c8042a81e2b5d7bfad0c8
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001454d0a620c58348b811c8f3d760162500000000191816c2 ,
    0xea62e44000000000000000007300730064005f004a004200460073004a006f00 ,
    0x62006c006500740073000000000000008877d6aa13934641ba14276be3888643 ,
    0x0000000073d712c2ea62e44000000000000000007300730064005f004a004200 ,
    0x4600500072006f0070006500720074007900560061006c007500650073000000 ,
    0x0000000010fb86b0f68dbf42baaa96deb99fbb8300000000b18111c2ea62e440 ,
    0x00000000000000007300730064005f006a00620066005000650072004a006200 ,
    0x66005000610070006500720045007800740072006100000000000000dff7a86c ,
    0x80fa934dbcfd3adbbf7d702900000000dc6310c2ea62e4400000000000000000 ,
    0x7300730064005f004a004200460032004a006f00620000000000000019f41d37 ,
    0x8bc8c041877a7c2f82c1e43607000000ebc9f516a17c8042a81e2b5d7bfad0c8 ,
    0x500061007000650072004e0061006d0065000000000000004738b7382c4ce649 ,
    0xbc43c85187242b4207000000dff7a86c80fa934dbcfd3adbbf7d70294a006f00 ,
    0x6200490044000000000000003737795346b6b24fb1521189989c844507000000 ,
    0x1454d0a620c58348b811c8f3d76016254a004200460049004400000000000000 ,
    0x54e6b34678d6154ca5a193424041f10c0700000010fb86b0f68dbf42baaa96de ,
    0xb99fbb8344006900730070006c00610079004e0061006d006500000000000000 ,
    0x7a598d54485d964bbf45596b69e68422070000001454d0a620c58348b811c8f3 ,
    0xd760162541006c007400650072004e0061006d006500000000000000f5c5cfc0 ,
    0x575c4446b0af58a3a69c9e59070000001454d0a620c58348b811c8f3d7601625 ,
    0x4a006f0062006c0065007400490044000000000000005b711f3a0817cf4bb2e7 ,
    0x9037cadc51ae070000008877d6aa13934641ba14276be3888643560061006c00 ,
    0x750065004900440000000000000016b86abe12346d449a5cd4d354534a150700 ,
    0x00008877d6aa13934641ba14276be38886434900730044006500660061007500 ,
    0x6c0074000000000000006c176ab72b4ab248af64a5b1dd4ee3b7070000008877 ,
    0xd6aa13934641ba14276be3888643530054005200560061006c00750065000000 ,
    0x000000004d2b95900e692940984b2f0153227cc2070000001454d0a620c58348 ,
    0xb811c8f3d76016254a00420046004a006f0062006c0065007400490044000000 ,
    0x00000000ce3864e4d302ec48a87762611e1a3eb7070000008877d6aa13934641 ,
    0xba14276be38886434a00420046004a006f0062006c0065007400490044000000 ,
    0x000000002711611ae2343143a2cb18556741d943070000008877d6aa13934641 ,
    0xba14276be38886434a0042004600500072006f00700065007200740079005600 ,
    0x61006c007500650049004400000000000000ae9910750580764599548ad8d52c ,
    0x93f20700000010fb86b0f68dbf42baaa96deb99fbb836a006200660050007200 ,
    0x6f0070006500720074007900560061006c007500650049004400000000000000 ,
    0xb02d750f126a6045a78f0614cd9218cc07000000dff7a86c80fa934dbcfd3adb ,
    0xbf7d70294a004200460049004400000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_JBFsJoblets.JBFID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x04ca58bb2cd96d4d89bd860be3b93454
        End
    End
    Begin
        dbText "Name" ="dbo_jbfPerJbfPaperExtra.DisplayName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PaperName"
        dbInteger "ColumnWidth" ="3585"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19f41d378bc8c041877a7c2f82c1e436
        End
    End
    Begin
        dbText "Name" ="dbo_JBFsJoblets.AlterName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd203816fb5291447987502f3c815234b
        End
    End
    Begin
        dbText "Name" ="dbo_JBFsJoblets.JobletID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca12e4fa399d6949aa4b168b0e9e246d
        End
    End
    Begin
        dbText "Name" ="dbo_JBFPropertyValues.ValueID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa611e4e0b2b034897217fa91446a669
        End
    End
    Begin
        dbText "Name" ="dbo_JBFPropertyValues.IsDefault"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x88c9d18407cb3d40b8d6c182a2112277
        End
    End
    Begin
        dbText "Name" ="dbo_JBFPropertyValues.STRValue"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x54d46fa8b6be89448a95aff4f5d58e03
        End
    End
    Begin
        dbText "Name" ="dbo_JBF2Job.JobID"
        dbLong "AggregateType" ="-1"
    End
End
