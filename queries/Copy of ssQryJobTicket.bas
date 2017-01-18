Operation =1
Option =0
Begin InputTables
    Name ="ssd_OrderDetails"
    Name ="ssd_Products"
    Name ="ssd_ProductStatus"
    Name ="ssd_OutputDevices"
    Name ="ssd_Orders"
    Name ="ssd_Delivery"
    Name ="ssd_Templates"
    Name ="ssd_ProductIntent"
    Name ="ssd_JBF2Job"
    Name ="ssd_JBFSettings"
    Name ="ssd_Addresses"
    Name ="ssd_qryUserIDtoAddresses"
    Name ="ssd_Addresses"
    Alias ="ssd_Addresses_1"
End
Begin OutputColumns
    Expression ="ssd_OrderDetails.OrderID"
    Expression ="ssd_Products.CustomerID"
    Expression ="ssd_OrderDetails.ProductID"
    Expression ="ssd_Products.ProductType"
    Expression ="ssd_Products.Description"
    Expression ="ssd_Products.CreationDate"
    Expression ="ssd_Products.ProductStatusID"
    Alias ="StatusDescription"
    Expression ="ssd_ProductStatus.Description"
    Expression ="ssd_OrderDetails.Copies"
    Expression ="ssd_OrderDetails.CustomerPrice"
    Expression ="ssd_Products.Path"
    Expression ="ssd_Products.CustomerRefCode"
    Expression ="ssd_Products.RefCode"
    Alias ="OutputDeviceName"
    Expression ="ssd_OutputDevices.DisplayName"
    Expression ="ssd_Orders.OrderDate"
    Expression ="ssd_Orders.RequiredDate"
    Expression ="ssd_OrderDetails.PrintedDate"
    Expression ="ssd_Delivery.RequiredDate"
    Expression ="ssd_Orders.Numerator"
    Expression ="ssd_Products.ProductTypeName"
    Expression ="ssd_Products.ProductSubtypeName"
    Expression ="ssd_Products.TemplateID"
    Expression ="ssd_Templates.TemplateName"
    Alias ="TemplateSubject"
    Expression ="ssd_Templates.Subject"
    Expression ="ssd_Products.ProductIntentID"
    Expression ="ssd_Orders.CustomerNote"
    Expression ="ssd_Orders.PaymentTerms"
    Expression ="ssd_Orders.PONumber"
    Expression ="ssd_Orders.PaymentTransactionID"
    Alias ="ShippingAddressID"
    Expression ="ssd_Delivery.AddressID"
    Expression ="ssd_Orders.billingAddressID"
    Expression ="ssd_Delivery.ShippedDate"
    Expression ="ssd_Products.ProductIntentID"
    Expression ="ssd_ProductIntent.NoteFromCustomer"
    Expression ="ssd_ProductIntent.NoteForCustomer"
    Expression ="ssd_ProductIntent.InternalNote"
    Expression ="ssd_ProductIntent.DescriptiveName"
    Alias ="OrderInternalNote"
    Expression ="ssd_Orders.InternalNote"
    Expression ="ssd_JBFSettings.ProductionNote"
    Expression ="ssd_JBFSettings.FinishingNote"
    Expression ="ssd_Delivery.AddressID"
    Alias ="AttnTo"
    Expression ="ssd_Addresses_1.addressfield1"
    Expression ="ssd_JBFSettings.JBFID"
    Expression ="ssd_Orders.UserID"
End
Begin Joins
    LeftTable ="ssd_OrderDetails"
    RightTable ="ssd_Products"
    Expression ="ssd_OrderDetails.ProductID = ssd_Products.ProductID"
    Flag =2
    LeftTable ="ssd_Products"
    RightTable ="ssd_ProductStatus"
    Expression ="ssd_Products.ProductStatusID = ssd_ProductStatus.ProductStatusID"
    Flag =2
    LeftTable ="ssd_Products"
    RightTable ="ssd_OutputDevices"
    Expression ="ssd_Products.OutputDeviceID = ssd_OutputDevices.OutputDeviceID"
    Flag =2
    LeftTable ="ssd_OrderDetails"
    RightTable ="ssd_Orders"
    Expression ="ssd_OrderDetails.OrderID = ssd_Orders.OrderID"
    Flag =2
    LeftTable ="ssd_OrderDetails"
    RightTable ="ssd_Delivery"
    Expression ="ssd_OrderDetails.ProductID = ssd_Delivery.ProductID"
    Flag =2
    LeftTable ="ssd_Products"
    RightTable ="ssd_Templates"
    Expression ="ssd_Products.TemplateID = ssd_Templates.TemplateID"
    Flag =2
    LeftTable ="ssd_Products"
    RightTable ="ssd_ProductIntent"
    Expression ="ssd_Products.ProductIntentID = ssd_ProductIntent.ProductIntentID"
    Flag =2
    LeftTable ="ssd_Products"
    RightTable ="ssd_JBF2Job"
    Expression ="ssd_Products.ProductID = ssd_JBF2Job.JobID"
    Flag =2
    LeftTable ="ssd_JBF2Job"
    RightTable ="ssd_JBFSettings"
    Expression ="ssd_JBF2Job.JBFID = ssd_JBFSettings.JBFID"
    Flag =2
    LeftTable ="ssd_Delivery"
    RightTable ="ssd_Addresses"
    Expression ="ssd_Delivery.AddressID = ssd_Addresses.AddressID"
    Flag =2
    LeftTable ="ssd_qryUserIDtoAddresses"
    RightTable ="ssd_Addresses_1"
    Expression ="ssd_qryUserIDtoAddresses.AddressID = ssd_Addresses_1.AddressID"
    Flag =2
    LeftTable ="ssd_Orders"
    RightTable ="ssd_qryUserIDtoAddresses"
    Expression ="ssd_Orders.UserID = ssd_qryUserIDtoAddresses.UserID"
    Flag =2
End
Begin OrderBy
    Expression ="ssd_OrderDetails.OrderID"
    Flag =0
    Expression ="ssd_OrderDetails.ProductID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd8351f7e6063dd4cbed9f246c398d5a9
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006e4d4b6d3453784295e09efb62f5882500000000ca4d36c2 ,
    0xea62e44000000000000000007300730064005f004f0072006400650072004400 ,
    0x65007400610069006c0073000000000000002ce8edd86a48c748ada42ffe77c9 ,
    0x518f00000000620188c2ea62e44000000000000000007300730064005f005000 ,
    0x72006f00640075006300740073000000000000007e04db67412fd848a9fd340d ,
    0x64c9d9290000000003c288c2ea62e44000000000000000007300730064005f00 ,
    0x500072006f006400750063007400530074006100740075007300000000000000 ,
    0x0cfe67283f4a5449b98550eff12896af0000000076b73bc2ea62e44000000000 ,
    0x000000007300730064005f004f00750074007000750074004400650076006900 ,
    0x6300650073000000000000009de67af8997ceb4982bbfa026b3f232200000000 ,
    0x6f8e39c2ea62e44000000000000000007300730064005f004f00720064006500 ,
    0x720073000000000000006bc7f4e13cae2d4eb0dfc22bb2a2706d0000000045a4 ,
    0xf5c1ea62e44000000000000000007300730064005f00440065006c0069007600 ,
    0x6500720079000000000000007fc4af3939f1b94caf9e5e388ac1944100000000 ,
    0xc64eb3c2ea62e44000000000000000007300730064005f00540065006d007000 ,
    0x6c006100740065007300000000000000ec919c3cea3a4242b30c102a391cc4a2 ,
    0x00000000d4da83c2ea62e44000000000000000007300730064005f0050007200 ,
    0x6f00640075006300740049006e00740065006e007400000000000000dff7a86c ,
    0x80fa934dbcfd3adbbf7d702900000000dc6310c2ea62e4400000000000000000 ,
    0x7300730064005f004a004200460032004a006f0062000000000000004356cc0b ,
    0x8811354ab6d9f3164769e30b000000009d3e15c2ea62e4400000000000000000 ,
    0x7300730064005f004a0042004600530065007400740069006e00670073000000 ,
    0x00000000285c4fbaaae46748b8a87759b01124390000000063ded0c1ea62e440 ,
    0x00000000000000007300730064005f0041006400640072006500730073006500 ,
    0x730000000000000084fc12c578bc81409975be230eb421a0000000000496abf1 ,
    0x105be44000000000000000007300730064005f00710072007900550073006500 ,
    0x72004900440074006f0041006400640072006500730073006500730000000000 ,
    0x0000b2444053d605114b81466639e5eb21c90700000000000000000000000000 ,
    0x0000000000005300740061007400750073004400650073006300720069007000 ,
    0x740069006f006e0000000000000043e271e8ff64f54888560e361a16a4cf0700 ,
    0x0000000000000000000000000000000000004f00750074007000750074004400 ,
    0x650076006900630065004e0061006d006500000000000000e5f16a62a88a004b ,
    0x9fa7f8dd5398eb2f070000000000000000000000000000000000000054006500 ,
    0x6d0070006c006100740065005300750062006a00650063007400000000000000 ,
    0xa8638882cc453e48a0202e07465a2eed07000000000000000000000000000000 ,
    0x000000005300680069007000700069006e006700410064006400720065007300 ,
    0x730049004400000000000000def551449c69cd48979aee468820eb9407000000 ,
    0x000000000000000000000000000000004f00720064006500720049006e007400 ,
    0x650072006e0061006c004e006f00740065000000000000009e63b42a12900d45 ,
    0xb450d75d26628ebc070000000000000000000000000000000000000041007400 ,
    0x74006e0054006f000000000000005ac0d5fb7ad57c47be863fceb2b0b32d0700 ,
    0x00006e4d4b6d3453784295e09efb62f588254f00720064006500720049004400 ,
    0x000000000000e87f245962005341b9e576ab471bd22e070000002ce8edd86a48 ,
    0xc748ada42ffe77c9518f43007500730074006f006d0065007200490044000000 ,
    0x000000001be77f7d5d338141b6ddfeccb9396050070000006e4d4b6d34537842 ,
    0x95e09efb62f58825500072006f00640075006300740049004400000000000000 ,
    0x39246cf27c6a1b4d82809773a4bf360c070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f500072006f0064007500630074005400790070006500000000000000 ,
    0x65ea3bf9b418284b82a7fb7e407770c1070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f4400650073006300720069007000740069006f006e00000000000000 ,
    0x9d8ac74f8c4f8d47b3ec7e1ff9e2aeee070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f4300720065006100740069006f006e00440061007400650000000000 ,
    0x0000a828f73a9587074d9484ebe68c1fe200070000002ce8edd86a48c748ada4 ,
    0x2ffe77c9518f500072006f006400750063007400530074006100740075007300 ,
    0x49004400000000000000527b5c801af60149a718d995f90ff46a070000007e04 ,
    0xdb67412fd848a9fd340d64c9d929440065007300630072006900700074006900 ,
    0x6f006e000000000000001e70cf7b32c23f498e3c5e68262c5de6070000006e4d ,
    0x4b6d3453784295e09efb62f5882543006f007000690065007300000000000000 ,
    0xa76675213b1558489bcc792883444440070000006e4d4b6d3453784295e09efb ,
    0x62f5882543007500730074006f006d0065007200500072006900630065000000 ,
    0x000000000b3ce032d666da4ab59159662b4e0c11070000002ce8edd86a48c748 ,
    0xada42ffe77c9518f50006100740068000000000000003a73a4a724ba3545a7f8 ,
    0x72c9e8212d7e070000002ce8edd86a48c748ada42ffe77c9518f430075007300 ,
    0x74006f006d006500720052006500660043006f00640065000000000000004039 ,
    0x4ea064af2b42b0cd7da510c5ae6c070000002ce8edd86a48c748ada42ffe77c9 ,
    0x518f52006500660043006f00640065000000000000008b77dfc9433d6b4c83c1 ,
    0xf1c2ca6d3e6b070000000cfe67283f4a5449b98550eff12896af440069007300 ,
    0x70006c00610079004e0061006d0065000000000000002fa8d9ee2725c84cb17c ,
    0x982da0ca6ba3070000009de67af8997ceb4982bbfa026b3f23224f0072006400 ,
    0x65007200440061007400650000000000000082a4b7ff3f1ee343b241bbe26861 ,
    0x0035070000009de67af8997ceb4982bbfa026b3f232252006500710075006900 ,
    0x72006500640044006100740065000000000000004b7296a7e0c94448bead4fb8 ,
    0xec8da354070000006e4d4b6d3453784295e09efb62f588255000720069006e00 ,
    0x7400650064004400610074006500000000000000d883f1cc0e2e544e80a5de04 ,
    0x7549ac4a070000006bc7f4e13cae2d4eb0dfc22bb2a2706d5200650071007500 ,
    0x69007200650064004400610074006500000000000000ad7497a518d6144aa554 ,
    0x3086b8541653070000009de67af8997ceb4982bbfa026b3f23224e0075006d00 ,
    0x65007200610074006f0072000000000000003de7c3e4dfa89c48b4b940c21cde ,
    0x4394070000002ce8edd86a48c748ada42ffe77c9518f500072006f0064007500 ,
    0x6300740054007900700065004e0061006d006500000000000000c53df17d086c ,
    0x4547a441a057942d0f95070000002ce8edd86a48c748ada42ffe77c9518f5000 ,
    0x72006f00640075006300740053007500620074007900700065004e0061006d00 ,
    0x650000000000000071a9993a4ee6ce42a1f43e1b5c044384070000002ce8edd8 ,
    0x6a48c748ada42ffe77c9518f540065006d0070006c0061007400650049004400 ,
    0x000000000000e0c58eacd7e2fb4d9c5ee33e6a6db99d070000007fc4af3939f1 ,
    0xb94caf9e5e388ac19441540065006d0070006c006100740065004e0061006d00 ,
    0x6500000000000000099601c145295e4e9ee8ee3a77f8198d070000007fc4af39 ,
    0x39f1b94caf9e5e388ac194415300750062006a00650063007400000000000000 ,
    0x57e472cf69c02b4bac165f34973a36de070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f500072006f00640075006300740049006e00740065006e0074004900 ,
    0x4400000000000000b9fe80422701ea409885e7a93fff83c2070000009de67af8 ,
    0x997ceb4982bbfa026b3f232243007500730074006f006d00650072004e006f00 ,
    0x74006500000000000000bd0c45bc9c164548b52b87329b994b2d070000009de6 ,
    0x7af8997ceb4982bbfa026b3f23225000610079006d0065006e00740054006500 ,
    0x72006d007300000000000000bc7a11826e79e0489c49f30a2de2099607000000 ,
    0x9de67af8997ceb4982bbfa026b3f232250004f004e0075006d00620065007200 ,
    0x000000000000a53cfbb67ffae7498b36164d79cc50d7070000009de67af8997c ,
    0xeb4982bbfa026b3f23225000610079006d0065006e0074005400720061006e00 ,
    0x730061006300740069006f006e004900440000000000000002c63552f7564f49 ,
    0x956322b006f0d376070000006bc7f4e13cae2d4eb0dfc22bb2a2706d41006400 ,
    0x6400720065007300730049004400000000000000ea7b682e5d9ebe4792db5827 ,
    0x48ed3fc1070000009de67af8997ceb4982bbfa026b3f2322620069006c006c00 ,
    0x69006e006700410064006400720065007300730049004400000000000000017b ,
    0xe373081a944882901452198b3fda070000006bc7f4e13cae2d4eb0dfc22bb2a2 ,
    0x706d53006800690070007000650064004400610074006500000000000000ad9c ,
    0x2da5a39a084e88e84c980974cf0107000000ec919c3cea3a4242b30c102a391c ,
    0xc4a24e006f0074006500460072006f006d0043007500730074006f006d006500 ,
    0x72000000000000003b2e441a91f0ab46adaa794c5b05795d07000000ec919c3c ,
    0xea3a4242b30c102a391cc4a24e006f007400650046006f007200430075007300 ,
    0x74006f006d00650072000000000000000d5c414f7fbb254cadb70793c1626487 ,
    0x07000000ec919c3cea3a4242b30c102a391cc4a249006e007400650072006e00 ,
    0x61006c004e006f00740065000000000000005424bf9feb05934fa68bdc31286b ,
    0x836907000000ec919c3cea3a4242b30c102a391cc4a244006500730063007200 ,
    0x6900700074006900760065004e0061006d00650000000000000020ffeb22c04c ,
    0x1f4e849836e7706d9990070000009de67af8997ceb4982bbfa026b3f23224900 ,
    0x6e007400650072006e0061006c004e006f0074006500000000000000b87b5b6b ,
    0xc1be824bb0550561b3ad2d88070000004356cc0b8811354ab6d9f3164769e30b ,
    0x500072006f00640075006300740069006f006e004e006f007400650000000000 ,
    0x00002834ffe19056374c886b379f22bedf8c070000004356cc0b8811354ab6d9 ,
    0xf3164769e30b460069006e0069007300680069006e0067004e006f0074006500 ,
    0x0000000000002a13912cbc2f8e48be485ed15b367d72070000004356cc0b8811 ,
    0x354ab6d9f3164769e30b4a004200460049004400000000000000728b212ac173 ,
    0x9f4ea6de5fc23513b572070000009de67af8997ceb4982bbfa026b3f23225500 ,
    0x7300650072004900440000000000000010cfe9bd3bb2894682f4fbc7fda11c47 ,
    0x070000002ce8edd86a48c748ada42ffe77c9518f500072006f00640075006300 ,
    0x7400490044000000000000004caf421a95eead42ad98abf51d372f6507000000 ,
    0x7e04db67412fd848a9fd340d64c9d929500072006f0064007500630074005300 ,
    0x7400610074007500730049004400000000000000ccfe97c1aaa8ea44929a0729 ,
    0x9de93141070000002ce8edd86a48c748ada42ffe77c9518f4f00750074007000 ,
    0x7500740044006500760069006300650049004400000000000000f0dc4344cd2e ,
    0xc84e9ce8069a15937db1070000000cfe67283f4a5449b98550eff12896af4f00 ,
    0x7500740070007500740044006500760069006300650049004400000000000000 ,
    0xd5ab509d912562469e80fca7b615e9c6070000009de67af8997ceb4982bbfa02 ,
    0x6b3f23224f00720064006500720049004400000000000000a25ae1802db4234c ,
    0xbad52d110aa073b1070000006bc7f4e13cae2d4eb0dfc22bb2a2706d50007200 ,
    0x6f00640075006300740049004400000000000000f677f0078f00ce4fa5816f0f ,
    0xca20a2c9070000007fc4af3939f1b94caf9e5e388ac19441540065006d007000 ,
    0x6c006100740065004900440000000000000011ac929e51a9bb4792454383d1b2 ,
    0x199d07000000ec919c3cea3a4242b30c102a391cc4a2500072006f0064007500 ,
    0x6300740049006e00740065006e007400490044000000000000004738b7382c4c ,
    0xe649bc43c85187242b4207000000dff7a86c80fa934dbcfd3adbbf7d70294a00 ,
    0x6f00620049004400000000000000b02d750f126a6045a78f0614cd9218cc0700 ,
    0x0000dff7a86c80fa934dbcfd3adbbf7d70294a00420046004900440000000000 ,
    0x000014829e1f0fd11c488b795cfed7b87af907000000285c4fbaaae46748b8a8 ,
    0x7759b01124394100640064007200650073007300490044000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x00007300730064005f004100640064007200650073007300650073005f003100 ,
    0x000000000000113f9805348a6949bbb78e7975e7659f0700000084fc12c578bc ,
    0x81409975be230eb421a041006400640072006500730073004900440000000000 ,
    0x0000d0883864ea367a42a7fe66768fa3fba70700000084fc12c578bc81409975 ,
    0xbe230eb421a05500730065007200490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="StatusDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb2444053d605114b81466639e5eb21c9
        End
    End
    Begin
        dbText "Name" ="ShippingAddressID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa8638882cc453e48a0202e07465a2eed
        End
    End
    Begin
        dbText "Name" ="TemplateSubject"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe5f16a62a88a004b9fa7f8dd5398eb2f
        End
    End
    Begin
        dbText "Name" ="AttnTo"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e63b42a12900d45b450d75d26628ebc
        End
    End
    Begin
        dbText "Name" ="Expr1024"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="OrderInternalNote"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdef551449c69cd48979aee468820eb94
        End
    End
    Begin
        dbText "Name" ="ssd_ProductIntent.NoteForCustomer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.OrderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.UserID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.CreationDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.ProductSubtypeName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Templates.TemplateName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PaymentTerms"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Delivery.ShippedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_ProductIntent.DescriptiveName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_JBFSettings.ProductionNote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_JBFSettings.JBFID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.RefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.TemplateID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CustomerNote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_ProductIntent.NoteFromCustomer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_ProductIntent.InternalNote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Delivery.AddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.ProductType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.Path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Delivery.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Numerator"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.ProductTypeName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.billingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_JBFSettings.FinishingNote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.ProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.Copies"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.CustomerPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.CustomerRefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.PrintedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PONumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PaymentTransactionID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.ProductIntentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="OutputDeviceName"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43e271e8ff64f54888560e361a16a4cf
        End
    End
End
Begin
    State =0
    Left =131
    Top =35
    Right =1631
    Bottom =975
    Left =-1
    Top =-1
    Right =1468
    Bottom =277
    Left =288
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="ssd_OrderDetails"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =408
        Bottom =156
        Top =0
        Name ="ssd_Products"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="ssd_ProductStatus"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="ssd_OutputDevices"
        Name =""
    End
    Begin
        Left =830
        Top =155
        Right =993
        Bottom =299
        Top =0
        Name ="ssd_Orders"
        Name =""
    End
    Begin
        Left =1008
        Top =12
        Right =1152
        Bottom =156
        Top =0
        Name ="ssd_Delivery"
        Name =""
    End
    Begin
        Left =1200
        Top =12
        Right =1344
        Bottom =156
        Top =0
        Name ="ssd_Templates"
        Name =""
    End
    Begin
        Left =48
        Top =156
        Right =192
        Bottom =300
        Top =0
        Name ="ssd_ProductIntent"
        Name =""
    End
    Begin
        Left =240
        Top =156
        Right =384
        Bottom =300
        Top =0
        Name ="ssd_JBF2Job"
        Name =""
    End
    Begin
        Left =432
        Top =156
        Right =576
        Bottom =300
        Top =0
        Name ="ssd_JBFSettings"
        Name =""
    End
    Begin
        Left =624
        Top =156
        Right =768
        Bottom =300
        Top =0
        Name ="ssd_Addresses"
        Name =""
    End
    Begin
        Left =1021
        Top =184
        Right =1196
        Bottom =336
        Top =0
        Name ="ssd_qryUserIDtoAddresses"
        Name =""
    End
    Begin
        Left =1255
        Top =182
        Right =1399
        Bottom =326
        Top =0
        Name ="ssd_Addresses_1"
        Name =""
    End
End
