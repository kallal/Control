Operation =1
Option =0
Begin InputTables
    Name ="dbo_PackingListHeader"
    Name ="dbo_ShipmentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_PackingListHeader.ID"
    Expression ="dbo_PackingListHeader.ShipmentHeaderID"
    Expression ="dbo_PackingListHeader.PackingListDate"
    Expression ="dbo_PackingListHeader.ProjectHeaderID"
    Expression ="dbo_PackingListHeader.PONumber"
    Expression ="dbo_PackingListHeader.ContactGeneralID"
    Expression ="dbo_PackingListHeader.ContactLocationID"
    Expression ="dbo_PackingListHeader.CompanyEmployeeID"
    Expression ="dbo_PackingListHeader.ShipmentType"
    Expression ="dbo_PackingListHeader.NumPkg"
    Expression ="dbo_PackingListHeader.NumSkid"
    Expression ="dbo_PackingListHeader.NumMono"
    Expression ="dbo_PackingListHeader.NumLC"
    Expression ="dbo_PackingListHeader.NumTub"
    Expression ="dbo_PackingListHeader.ADD1"
    Expression ="dbo_PackingListHeader.ADD2"
    Expression ="dbo_PackingListHeader.CITY"
    Expression ="dbo_PackingListHeader.PROV"
    Expression ="dbo_PackingListHeader.PC"
    Expression ="dbo_PackingListHeader.COUNTRY"
    Expression ="dbo_PackingListHeader.ATTN"
    Expression ="dbo_PackingListHeader.ShipVia"
    Expression ="dbo_PackingListHeader.IsCollect"
    Expression ="dbo_PackingListHeader.IsPickup"
    Expression ="dbo_PackingListHeader.SpecialInstructions"
    Expression ="dbo_PackingListHeader.ShipListFlag"
    Expression ="dbo_ShipmentHeader.ShipViaID"
    Expression ="dbo_ShipmentHeader.Waybill"
    Expression ="dbo_ShipmentHeader.ShipmentDate"
    Expression ="dbo_ShipmentHeader.EnteredBy"
    Expression ="dbo_ShipmentHeader.EstCost"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ShipmentHeader.ShipmentSpeed"
End
Begin Joins
    LeftTable ="dbo_PackingListHeader"
    RightTable ="dbo_ShipmentHeader"
    Expression ="dbo_PackingListHeader.ShipmentHeaderID = dbo_ShipmentHeader.ID"
    Flag =2
    LeftTable ="dbo_PackingListHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_PackingListHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe860dde325bb8b438d74655098625bbb
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000009939adb14d3770448571dd31722423c5000000001f60c00d ,
    0xcfe0e4400000000000000000640062006f005f005000610063006b0069006e00 ,
    0x67004c00690073007400480065006100640065007200000000000000e35b5057 ,
    0xa3270648a22974f102fa784900000000f0d37c0ecfe0e4400000000000000000 ,
    0x640062006f005f0053006800690070006d0065006e0074004800650061006400 ,
    0x6500720000000000000035f87d9f0b136040ad3c2851f16d2a8000000000d878 ,
    0x4d0ecfe0e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740048006500610064006500720000000000000047a31708d98d944ebda7 ,
    0xc4da2ddc55ce070000009939adb14d3770448571dd31722423c5490044000000 ,
    0x000000000ef6ab91f3ba9042b984f388527f4ba1070000009939adb14d377044 ,
    0x8571dd31722423c553006800690070006d0065006e0074004800650061006400 ,
    0x6500720049004400000000000000437338581eb04040bf441e4b33150fde0700 ,
    0x00009939adb14d3770448571dd31722423c55000610063006b0069006e006700 ,
    0x4c00690073007400440061007400650000000000000089a3931c973bd74b9560 ,
    0xc8d09e7a4fb5070000009939adb14d3770448571dd31722423c5500072006f00 ,
    0x6a00650063007400480065006100640065007200490044000000000000009913 ,
    0x604c3862494f90d379ed10397b91070000009939adb14d3770448571dd317224 ,
    0x23c550004f004e0075006d00620065007200000000000000cd049cda69f25a46 ,
    0x95246554266e1d71070000009939adb14d3770448571dd31722423c543006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x00003f0a3a61b58d0e4d8d635a05f34a9f58070000009939adb14d3770448571 ,
    0xdd31722423c543006f006e0074006100630074004c006f006300610074006900 ,
    0x6f006e00490044000000000000009a90ff6c2ad1b84b906cdd9a68286ae80700 ,
    0x00009939adb14d3770448571dd31722423c543006f006d00700061006e007900 ,
    0x45006d0070006c006f00790065006500490044000000000000009d486f2f458b ,
    0x4d45917960a233779a04070000009939adb14d3770448571dd31722423c55300 ,
    0x6800690070006d0065006e0074005400790070006500000000000000c4031c7a ,
    0xde03da4db1166da848924f6b070000009939adb14d3770448571dd31722423c5 ,
    0x4e0075006d0050006b006700000000000000be4a047392c29e4a826b2814e8d8 ,
    0x7715070000009939adb14d3770448571dd31722423c54e0075006d0053006b00 ,
    0x690064000000000000008bed05a00b766a408385b795699f7ccb070000009939 ,
    0xadb14d3770448571dd31722423c54e0075006d004d006f006e006f0000000000 ,
    0x0000219f987fe442a548a305f2eeed60afbb070000009939adb14d3770448571 ,
    0xdd31722423c54e0075006d004c0043000000000000005acd0c4499f4df44be31 ,
    0xb20243e9b040070000009939adb14d3770448571dd31722423c54e0075006d00 ,
    0x5400750062000000000000002843d81da7df974bbffdc57625d9aaf407000000 ,
    0x9939adb14d3770448571dd31722423c541004400440031000000000000009a8c ,
    0x18466f6bf24eb28921fab9d26f6c070000009939adb14d3770448571dd317224 ,
    0x23c541004400440032000000000000005506da018b8525458c74d80355ec0cd2 ,
    0x070000009939adb14d3770448571dd31722423c5430049005400590000000000 ,
    0x0000e3fcc5cdc31f694186591b4ffe95bb04070000009939adb14d3770448571 ,
    0xdd31722423c5500052004f0056000000000000004a1416dd5222514a9b0ac280 ,
    0x749f72ea070000009939adb14d3770448571dd31722423c55000430000000000 ,
    0x00007adb8cbae1ef10449d5b97b23f7949fd070000009939adb14d3770448571 ,
    0xdd31722423c543004f0055004e005400520059000000000000004852a563afea ,
    0xdb49800f50ba176a5c73070000009939adb14d3770448571dd31722423c54100 ,
    0x540054004e000000000000001d8f5a7804df894688352d398e7ce9ce07000000 ,
    0x9939adb14d3770448571dd31722423c553006800690070005600690061000000 ,
    0x00000000bd1b51c6e4945a4890e60cb3a28a8cb2070000009939adb14d377044 ,
    0x8571dd31722423c54900730043006f006c006c00650063007400000000000000 ,
    0x9fe1e1437c3c9f4cba556e1592e66612070000009939adb14d3770448571dd31 ,
    0x722423c5490073005000690063006b007500700000000000000097edfc906a9f ,
    0x544bbb83c16f6b8a1e07070000009939adb14d3770448571dd31722423c55300 ,
    0x700065006300690061006c0049006e0073007400720075006300740069006f00 ,
    0x6e007300000000000000079165a1c21f3f438146ea0e48371a07070000009939 ,
    0xadb14d3770448571dd31722423c553006800690070004c006900730074004600 ,
    0x6c0061006700000000000000b31339255898fc4eab1da77a32bd13ed07000000 ,
    0xe35b5057a3270648a22974f102fa784953006800690070005600690061004900 ,
    0x4400000000000000e096bdaa12359a48bc649bea0feeb3dd07000000e35b5057 ,
    0xa3270648a22974f102fa7849570061007900620069006c006c00000000000000 ,
    0x4160c6560425454e9d3a6875eaa89a9707000000e35b5057a3270648a22974f1 ,
    0x02fa784953006800690070006d0065006e007400440061007400650000000000 ,
    0x0000dbe4d012f4f5e84fab9c3ebc85b6697207000000e35b5057a3270648a229 ,
    0x74f102fa784945006e0074006500720065006400420079000000000000003fc6 ,
    0xf6fe262b9040bc0fe8d28a2a4d4d07000000e35b5057a3270648a22974f102fa ,
    0x784945007300740043006f0073007400000000000000749d4175d9cbb541b774 ,
    0x14bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f006300 ,
    0x6b00650074004e0075006d00000000000000205be6acdcb1ec4aae6a3b69e7b6 ,
    0x5ae707000000e35b5057a3270648a22974f102fa784953006800690070006d00 ,
    0x65006e007400530070006500650064000000000000000fb59cdf7ddc4d4f965a ,
    0x76f53902055607000000e35b5057a3270648a22974f102fa7849490044000000 ,
    0x0000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_PackingListHeader.ShipListFlag"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x02c7a7ad6d240641824e4f4a0493b66f
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.EstCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x795243d7d13bcc43af12b31bd2f1d7ab
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff4ec1d81a898847bd2fa61fb61e504a
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ShipmentHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ebedfeccbdb0d4d81cc80606e5c745c
        End
        dbInteger "ColumnWidth" ="3000"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.PackingListDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5decd8601445414498ace3ecde91dae3
        End
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7aae416b9c5e8d478d39215dd6ec0c99
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.PONumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0c9232141017af428c5911ccaa3cb9b3
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5852a418731fe843874cb20ff6d0d2c7
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ContactLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x707901729d212b48a80c9541675b9c33
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab03c1e54900404b8fbebb8373234d1c
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ShipmentType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2debb61f4e23c74ebcec697501489fd4
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.NumPkg"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5460576d8cc03643b4e35500fa6d2db6
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.NumSkid"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb1ae5e4d98e2ef41b48e6a67bf504313
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.NumMono"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c046303fb07664daa567ae76745f865
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.NumLC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1b63d8f3a2350c45baf17496ba4a0b7e
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.NumTub"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb85a51be70a3a248b70d86502bfb4301
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd918d472af77e8499567a55f52d34b25
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa1d84e0431fb4348ac5fd63e61692fdd
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdc8be092c23d4646be7c65cc7d2ce35b
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d29cc642e6c4b419583429a39782f03
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x44b4dda8dbbfc84db0719d840d735c2d
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.COUNTRY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1c0a23e6e3518b43a3d45548d4f106b9
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ATTN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb381d178f8d5ea47821bc240ae2fb3b8
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ShipVia"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0807f8db92430c4eba82eadc8d38b82e
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.IsCollect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcc313b5b0f3ccb4d8a298c9c9bdc8223
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.IsPickup"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6c89275f7726194690a83c1b5f6f4ae6
        End
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.SpecialInstructions"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf025f066d720c24ebee25af391329095
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ShipViaID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8f9e3aeefff33447acd4167dc246d95b
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.Waybill"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd79205685534ec4db0f2466bd28f523c
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ShipmentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe9746e89f8fb354cb9673dc586cb5596
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.EnteredBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb3cfde55169fde48a03b5e74cef17412
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.ShipmentSpeed"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =28
    Top =21
    Right =1626
    Bottom =855
    Left =-1
    Top =-1
    Right =1566
    Bottom =417
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =274
        Bottom =528
        Top =0
        Name ="dbo_PackingListHeader"
        Name =""
    End
    Begin
        Left =571
        Top =9
        Right =1109
        Bottom =380
        Top =0
        Name ="dbo_ShipmentHeader"
        Name =""
    End
    Begin
        Left =329
        Top =121
        Right =473
        Bottom =265
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
