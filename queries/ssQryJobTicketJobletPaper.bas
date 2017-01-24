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
    0x0acc0e550000000033dd860d0dccd44b897bfc07897a1f8e000000004a899914 ,
    0x50e0e44000000000000000007300730064005f004a004200460073004a006f00 ,
    0x62006c00650074007300000000000000d473169450ff334585d61d1734f393fa ,
    0x000000004a89991450e0e44000000000000000007300730064005f004a004200 ,
    0x4600500072006f0070006500720074007900560061006c007500650073000000 ,
    0x000000004ebbb9034a4ba84083d4bd0cd1a1696a000000002400fe1450e0e440 ,
    0x00000000000000007300730064005f006a00620066005000650072004a006200 ,
    0x66005000610070006500720045007800740072006100000000000000816b811a ,
    0x6c73ac45911821d019bad025000000009301ef6ecedae4400000000000000000 ,
    0x7300730064005f004a004200460032004a006f00620000000000000019f41d37 ,
    0x8bc8c041877a7c2f82c1e43607000000ebc9f516a17c8042a81e2b5d7bfad0c8 ,
    0x500061007000650072004e0061006d006500000000000000cfc3b780a55d8e40 ,
    0x810df3be6ae9b6d907000000816b811a6c73ac45911821d019bad0254a006f00 ,
    0x620049004400000000000000e595ec2151cce64a8096803b845a899907000000 ,
    0x33dd860d0dccd44b897bfc07897a1f8e4a004200460049004400000000000000 ,
    0x5d3187f27d00154f96d39f72e9f297ec070000004ebbb9034a4ba84083d4bd0c ,
    0xd1a1696a44006900730070006c00610079004e0061006d006500000000000000 ,
    0x5ece1818c23f914cabcf9a21c7e96f3b0700000033dd860d0dccd44b897bfc07 ,
    0x897a1f8e41006c007400650072004e0061006d0065000000000000001772c1b8 ,
    0xee48934a9fc911d4908a0ecb0700000033dd860d0dccd44b897bfc07897a1f8e ,
    0x4a006f0062006c006500740049004400000000000000e145444860aae24c89eb ,
    0x0aa46015dc4707000000d473169450ff334585d61d1734f393fa560061006c00 ,
    0x7500650049004400000000000000edcb53de35e0f04382128dfd5c8a9d140700 ,
    0x0000d473169450ff334585d61d1734f393fa4900730044006500660061007500 ,
    0x6c0074000000000000000019b4eb4b80ba40945e970a73aea23a07000000d473 ,
    0x169450ff334585d61d1734f393fa530054005200560061006c00750065000000 ,
    0x00000000a421353bd9c96c459f73f8f4655d5a4a0700000033dd860d0dccd44b ,
    0x897bfc07897a1f8e4a00420046004a006f0062006c0065007400490044000000 ,
    0x0000000048b770bbf21c8f4ca5db048dfafa2e3707000000d473169450ff3345 ,
    0x85d61d1734f393fa4a00420046004a006f0062006c0065007400490044000000 ,
    0x000000009f064344c2fa714b9c9f8fe7d7e7a90507000000d473169450ff3345 ,
    0x85d61d1734f393fa4a0042004600500072006f00700065007200740079005600 ,
    0x61006c0075006500490044000000000000002254ad15816a814b861bb3a311b7 ,
    0x8b19070000004ebbb9034a4ba84083d4bd0cd1a1696a6a006200660050007200 ,
    0x6f0070006500720074007900560061006c007500650049004400000000000000 ,
    0x4dc69b35485028479e4feac6ec00684007000000816b811a6c73ac45911821d0 ,
    0x19bad0254a004200460049004400000000000000000000000000000000000000 ,
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
