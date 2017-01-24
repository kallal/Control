Operation =1
Option =0
Begin InputTables
    Name ="dbo_PackingListHeader"
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
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.QuoteDate"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.ShipInstruction"
    Expression ="dbo_ProjectHeader.BillAdd1"
    Expression ="dbo_ProjectHeader.BillAdd2"
    Expression ="dbo_ProjectHeader.BillCity"
    Expression ="dbo_ProjectHeader.BillProv"
    Expression ="dbo_ProjectHeader.BillPC"
    Expression ="dbo_ProjectHeader.BillCountry"
    Expression ="dbo_ProjectHeader.ShipBillThirdParty"
    Expression ="dbo_ProjectHeader.ShipBillThirdPartyName"
    Expression ="dbo_ProjectHeader.ShipBillThirdPartyAccount"
    Expression ="dbo_ProjectHeader.ShipAttn"
    Expression ="dbo_ProjectHeader.ShipAdd1"
    Expression ="dbo_ProjectHeader.ShipAdd2"
    Expression ="dbo_ProjectHeader.ShipCity"
    Expression ="dbo_ProjectHeader.ShipProv"
    Expression ="dbo_ProjectHeader.ShipPC"
    Expression ="dbo_ProjectHeader.ShipCountry"
End
Begin Joins
    LeftTable ="dbo_PackingListHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_PackingListHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =1
End
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
dbLongBinary "DOL" = Begin
    0x0acc0e55000000009939adb14d3770448571dd31722423c5000000001834424c ,
    0x2de0e4400000000000000000640062006f005f005000610063006b0069006e00 ,
    0x67004c0069007300740048006500610064006500720000000000000035f87d9f ,
    0x0b136040ad3c2851f16d2a8000000000f6b16e4c2de0e4400000000000000000 ,
    0x640062006f005f00500072006f006a0065006300740048006500610064006500 ,
    0x720000000000000047a31708d98d944ebda7c4da2ddc55ce070000009939adb1 ,
    0x4d3770448571dd31722423c5490044000000000000000ef6ab91f3ba9042b984 ,
    0xf388527f4ba1070000009939adb14d3770448571dd31722423c5530068006900 ,
    0x70006d0065006e00740048006500610064006500720049004400000000000000 ,
    0x437338581eb04040bf441e4b33150fde070000009939adb14d3770448571dd31 ,
    0x722423c55000610063006b0069006e0067004c00690073007400440061007400 ,
    0x650000000000000089a3931c973bd74b9560c8d09e7a4fb5070000009939adb1 ,
    0x4d3770448571dd31722423c5500072006f006a00650063007400480065006100 ,
    0x640065007200490044000000000000009913604c3862494f90d379ed10397b91 ,
    0x070000009939adb14d3770448571dd31722423c550004f004e0075006d006200 ,
    0x65007200000000000000cd049cda69f25a4695246554266e1d71070000009939 ,
    0xadb14d3770448571dd31722423c543006f006e00740061006300740047006500 ,
    0x6e006500720061006c00490044000000000000003f0a3a61b58d0e4d8d635a05 ,
    0xf34a9f58070000009939adb14d3770448571dd31722423c543006f006e007400 ,
    0x6100630074004c006f0063006100740069006f006e0049004400000000000000 ,
    0x9a90ff6c2ad1b84b906cdd9a68286ae8070000009939adb14d3770448571dd31 ,
    0x722423c543006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x6500490044000000000000009d486f2f458b4d45917960a233779a0407000000 ,
    0x9939adb14d3770448571dd31722423c553006800690070006d0065006e007400 ,
    0x5400790070006500000000000000c4031c7ade03da4db1166da848924f6b0700 ,
    0x00009939adb14d3770448571dd31722423c54e0075006d0050006b0067000000 ,
    0x00000000be4a047392c29e4a826b2814e8d87715070000009939adb14d377044 ,
    0x8571dd31722423c54e0075006d0053006b00690064000000000000008bed05a0 ,
    0x0b766a408385b795699f7ccb070000009939adb14d3770448571dd31722423c5 ,
    0x4e0075006d004d006f006e006f00000000000000219f987fe442a548a305f2ee ,
    0xed60afbb070000009939adb14d3770448571dd31722423c54e0075006d004c00 ,
    0x43000000000000005acd0c4499f4df44be31b20243e9b040070000009939adb1 ,
    0x4d3770448571dd31722423c54e0075006d005400750062000000000000002843 ,
    0xd81da7df974bbffdc57625d9aaf4070000009939adb14d3770448571dd317224 ,
    0x23c541004400440031000000000000009a8c18466f6bf24eb28921fab9d26f6c ,
    0x070000009939adb14d3770448571dd31722423c5410044004400320000000000 ,
    0x00005506da018b8525458c74d80355ec0cd2070000009939adb14d3770448571 ,
    0xdd31722423c54300490054005900000000000000e3fcc5cdc31f694186591b4f ,
    0xfe95bb04070000009939adb14d3770448571dd31722423c5500052004f005600 ,
    0x0000000000004a1416dd5222514a9b0ac280749f72ea070000009939adb14d37 ,
    0x70448571dd31722423c5500043000000000000007adb8cbae1ef10449d5b97b2 ,
    0x3f7949fd070000009939adb14d3770448571dd31722423c543004f0055004e00 ,
    0x5400520059000000000000004852a563afeadb49800f50ba176a5c7307000000 ,
    0x9939adb14d3770448571dd31722423c54100540054004e000000000000001d8f ,
    0x5a7804df894688352d398e7ce9ce070000009939adb14d3770448571dd317224 ,
    0x23c55300680069007000560069006100000000000000bd1b51c6e4945a4890e6 ,
    0x0cb3a28a8cb2070000009939adb14d3770448571dd31722423c5490073004300 ,
    0x6f006c006c006500630074000000000000009fe1e1437c3c9f4cba556e1592e6 ,
    0x6612070000009939adb14d3770448571dd31722423c549007300500069006300 ,
    0x6b007500700000000000000097edfc906a9f544bbb83c16f6b8a1e0707000000 ,
    0x9939adb14d3770448571dd31722423c55300700065006300690061006c004900 ,
    0x6e0073007400720075006300740069006f006e007300000000000000079165a1 ,
    0xc21f3f438146ea0e48371a07070000009939adb14d3770448571dd31722423c5 ,
    0x53006800690070004c0069007300740046006c0061006700000000000000d0b1 ,
    0x539c9f7bfc439d9435b3dda929d50700000035f87d9f0b136040ad3c2851f16d ,
    0x2a80510075006f00740065004e0075006d00000000000000749d4175d9cbb541 ,
    0xb77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f00 ,
    0x63006b00650074004e0075006d000000000000007da6a641b3cf604b95c0700a ,
    0x612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00 ,
    0x6900630065004e0075006d000000000000009d63ea70f7ac1e44aa26234fcf00 ,
    0x01210700000035f87d9f0b136040ad3c2851f16d2a80510075006f0074006500 ,
    0x4400610074006500000000000000c310a93c2fe0c4488706f21ce736cf3a0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004400 ,
    0x61007400650000000000000077a5524b02faf248a18587169cb2874b07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8049006e0076006f006900630065004400 ,
    0x6100740065000000000000001c9b84855b8f264abd34a504e56b05af07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80500072006f006a006500630074004e00 ,
    0x61006d00650000000000000040de5e7aec65a745aa86e7e9e8cb557807000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80530061006c0065007300520065007000 ,
    0x49004400000000000000897a455e3fce6c43841aaa453a86d60b0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80530068006900700049006e00730074007200 ,
    0x75006300740069006f006e00000000000000decb34c61853994181e863c8690e ,
    0x25560700000035f87d9f0b136040ad3c2851f16d2a80420069006c006c004100 ,
    0x640064003100000000000000776938e8d98b8a4a87cf1f4d11dddd2c07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80420069006c006c004100640064003200 ,
    0x000000000000da77deabd6b461418ec32b48fd4b9dcc0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80420069006c006c004300690074007900000000000000 ,
    0xdcc3efc79d38f14293fc64db381c51850700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80420069006c006c00500072006f00760000000000000098355857cf4b ,
    0x1a46bbff49cd00744a9f0700000035f87d9f0b136040ad3c2851f16d2a804200 ,
    0x69006c006c00500043000000000000000ff06a4a3391804f9ec0590e48681728 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80420069006c006c0043006f00 ,
    0x75006e007400720079000000000000006f4c8fe6ee49994ab3ced58e94b8da20 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80530068006900700042006900 ,
    0x6c006c0054006800690072006400500061007200740079000000000000007c44 ,
    0x35e2bc915f4f82288596d737b31f0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a805300680069007000420069006c006c005400680069007200640050006100 ,
    0x7200740079004e0061006d0065000000000000006932d2245d9a5a409baf7a59 ,
    0x3b91870b0700000035f87d9f0b136040ad3c2851f16d2a805300680069007000 ,
    0x420069006c006c00540068006900720064005000610072007400790041006300 ,
    0x63006f0075006e0074000000000000002b86dfd960d0dd4cb4de24de92daf399 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80530068006900700041007400 ,
    0x74006e0000000000000047fd3d3961a31447810cfda41a6cc23f0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80530068006900700041006400640031000000 ,
    0x00000000427daceee1a2894d935eec7456688c770700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80530068006900700041006400640032000000000000002584 ,
    0x786c4ac6c742ab55e268a503c2010700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8053006800690070004300690074007900000000000000c0298161bb7db34b ,
    0xb0a22f3217b79e910700000035f87d9f0b136040ad3c2851f16d2a8053006800 ,
    0x69007000500072006f007600000000000000ddd8e117d87096439da9bc32a276 ,
    0x01000700000035f87d9f0b136040ad3c2851f16d2a8053006800690070005000 ,
    0x430000000000000089f25b640aa5704f92b7ea762a6aee420700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80530068006900700043006f0075006e0074007200 ,
    0x790000000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a804900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
dbBinary "GUID" = Begin
    0x4bdfd4da8effae418c0c7d130ae26d28
End
Begin
    Begin
        dbText "Name" ="dbo_PackingListHeader.ShipListFlag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_PackingListHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipVia"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipInstruction"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillAdd1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillCountry"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipBillThirdPartyAccount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipAttn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipCountry"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =31
    Top =5
    Right =1629
    Bottom =870
    Left =-1
    Top =-1
    Right =1566
    Bottom =521
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =251
        Bottom =546
        Top =0
        Name ="dbo_PackingListHeader"
        Name =""
    End
    Begin
        Left =369
        Top =10
        Right =900
        Bottom =490
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
