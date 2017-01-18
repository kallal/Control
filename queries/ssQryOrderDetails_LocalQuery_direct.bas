Operation =1
Option =0
Where ="(((ssd_OrderDetails.ProductID)=16347 Or (ssd_OrderDetails.ProductID)=16406))"
Begin InputTables
    Name ="ssd_OrderDetails"
    Name ="ssd_Products"
    Name ="ssd_ProductStatus"
    Name ="ssd_OutputDevices"
    Name ="ssd_Delivery"
    Name ="ssQryLiveOrderID"
    Name ="ssd_JobInQueue"
    Name ="ssd_Queue"
End
Begin OutputColumns
    Expression ="ssd_OrderDetails.ProductID"
    Expression ="ssd_OrderDetails.OrderID"
    Expression ="ssd_OrderDetails.OrderedProductStatusID"
    Alias ="ShippingStatusID"
    Expression ="ssd_Delivery.StatusID"
    Expression ="ssd_Delivery.ShippedDate"
    Expression ="ssd_Products.CustomerID"
    Expression ="ssd_Products.ProductType"
    Expression ="ssd_Products.Description"
    Expression ="ssd_Products.CreationDate"
    Expression ="ssd_Products.ProductStatusID"
    Alias ="StatusDescription"
    Expression ="ssd_ProductStatus.Description"
    Expression ="ssd_OrderDetails.Copies"
    Expression ="ssd_OrderDetails.CustomerPrice"
    Expression ="ssd_Products.Path"
    Expression ="ssd_Products.RefCode"
    Alias ="OutputDeviceName"
    Expression ="ssd_OutputDevices.DisplayName"
    Expression ="ssd_Delivery.RequiredDate"
    Expression ="ssd_JobInQueue.QueueID"
    Expression ="ssd_JobInQueue.StatusInQueue"
    Expression ="ssd_Queue.QueueName"
    Expression ="ssd_OrderDetails.TrackingCode"
    Expression ="ssd_OrderDetails.PrintedDate"
    Expression ="ssd_Delivery.ShippedDate"
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
    RightTable ="ssd_Delivery"
    Expression ="ssd_OrderDetails.ProductID = ssd_Delivery.ProductID"
    Flag =2
    LeftTable ="ssd_OrderDetails"
    RightTable ="ssQryLiveOrderID"
    Expression ="ssd_OrderDetails.OrderID = ssQryLiveOrderID.OrderID"
    Flag =2
    LeftTable ="ssd_OrderDetails"
    RightTable ="ssd_JobInQueue"
    Expression ="ssd_OrderDetails.ProductID = ssd_JobInQueue.ProductID"
    Flag =2
    LeftTable ="ssd_JobInQueue"
    RightTable ="ssd_Queue"
    Expression ="ssd_JobInQueue.QueueID = ssd_Queue.QueueID"
    Flag =2
End
Begin OrderBy
    Expression ="ssd_OrderDetails.ProductID"
    Flag =0
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
dbBinary "GUID" = Begin
    0xfc532bf7a77ead43aa38835b9cb9f632
End
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
    0x6300650073000000000000006bc7f4e13cae2d4eb0dfc22bb2a2706d00000000 ,
    0x45a4f5c1ea62e44000000000000000007300730064005f00440065006c006900 ,
    0x760065007200790000000000000057948a3f50009e4982782c56944bafd00000 ,
    0x0000c75bc171ec62e4400000000000000000730073005100720079004c006900 ,
    0x760065004f00720064006500720049004400000000000000af808aa0ec1bb745 ,
    0x91b8b61e6bbf8578000000006de61ac2ea62e440000000000000000073007300 ,
    0x64005f004a006f00620049006e0051007500650075006500000000000000715c ,
    0xf340b021d84db6dd67cde0e303e10000000050678bc2ea62e440000000000000 ,
    0x00007300730064005f0051007500650075006500000000000000ed52158c62a0 ,
    0x9b40ab882dbba8f08a3507000000000000000000000000000000000000005300 ,
    0x680069007000700069006e006700530074006100740075007300490044000000 ,
    0x00000000b2444053d605114b81466639e5eb21c9070000000000000000000000 ,
    0x0000000000000000530074006100740075007300440065007300630072006900 ,
    0x7000740069006f006e000000000000000457dce3c31bf14aa634a6e3adce92b8 ,
    0x07000000000000000000000000000000000000004f0075007400700075007400 ,
    0x4400650076006900630065004e0061006d0065000000000000001be77f7d5d33 ,
    0x8141b6ddfeccb9396050070000006e4d4b6d3453784295e09efb62f588255000 ,
    0x72006f006400750063007400490044000000000000005ac0d5fb7ad57c47be86 ,
    0x3fceb2b0b32d070000006e4d4b6d3453784295e09efb62f588254f0072006400 ,
    0x65007200490044000000000000000ccf39db1c46674f8b0673518a80811f0700 ,
    0x00006e4d4b6d3453784295e09efb62f588254f00720064006500720065006400 ,
    0x500072006f006400750063007400530074006100740075007300490044000000 ,
    0x00000000baaad3a5a7d67741bf89180483102009070000006bc7f4e13cae2d4e ,
    0xb0dfc22bb2a2706d53007400610074007500730049004400000000000000017b ,
    0xe373081a944882901452198b3fda070000006bc7f4e13cae2d4eb0dfc22bb2a2 ,
    0x706d53006800690070007000650064004400610074006500000000000000e87f ,
    0x245962005341b9e576ab471bd22e070000002ce8edd86a48c748ada42ffe77c9 ,
    0x518f43007500730074006f006d00650072004900440000000000000039246cf2 ,
    0x7c6a1b4d82809773a4bf360c070000002ce8edd86a48c748ada42ffe77c9518f ,
    0x500072006f006400750063007400540079007000650000000000000065ea3bf9 ,
    0xb418284b82a7fb7e407770c1070000002ce8edd86a48c748ada42ffe77c9518f ,
    0x4400650073006300720069007000740069006f006e000000000000009d8ac74f ,
    0x8c4f8d47b3ec7e1ff9e2aeee070000002ce8edd86a48c748ada42ffe77c9518f ,
    0x4300720065006100740069006f006e004400610074006500000000000000a828 ,
    0xf73a9587074d9484ebe68c1fe200070000002ce8edd86a48c748ada42ffe77c9 ,
    0x518f500072006f00640075006300740053007400610074007500730049004400 ,
    0x000000000000527b5c801af60149a718d995f90ff46a070000007e04db67412f ,
    0xd848a9fd340d64c9d9294400650073006300720069007000740069006f006e00 ,
    0x0000000000001e70cf7b32c23f498e3c5e68262c5de6070000006e4d4b6d3453 ,
    0x784295e09efb62f5882543006f007000690065007300000000000000a7667521 ,
    0x3b1558489bcc792883444440070000006e4d4b6d3453784295e09efb62f58825 ,
    0x43007500730074006f006d006500720050007200690063006500000000000000 ,
    0x0b3ce032d666da4ab59159662b4e0c11070000002ce8edd86a48c748ada42ffe ,
    0x77c9518f500061007400680000000000000040394ea064af2b42b0cd7da510c5 ,
    0xae6c070000002ce8edd86a48c748ada42ffe77c9518f52006500660043006f00 ,
    0x640065000000000000008b77dfc9433d6b4c83c1f1c2ca6d3e6b070000000cfe ,
    0x67283f4a5449b98550eff12896af44006900730070006c00610079004e006100 ,
    0x6d006500000000000000d883f1cc0e2e544e80a5de047549ac4a070000006bc7 ,
    0xf4e13cae2d4eb0dfc22bb2a2706d520065007100750069007200650064004400 ,
    0x61007400650000000000000094e7392e0e51b94f9924229e3f09680007000000 ,
    0xaf808aa0ec1bb74591b8b61e6bbf857851007500650075006500490044000000 ,
    0x000000008bad0458ddbc304c9a323601e52e87f007000000af808aa0ec1bb745 ,
    0x91b8b61e6bbf857853007400610074007500730049006e005100750065007500 ,
    0x6500000000000000b673b08d970793488c7dd030e3f66c9807000000715cf340 ,
    0xb021d84db6dd67cde0e303e1510075006500750065004e0061006d0065000000 ,
    0x000000002d5f941b1b6dd64cb8ad7b2d0d6ba58b070000006e4d4b6d34537842 ,
    0x95e09efb62f5882554007200610063006b0069006e00670043006f0064006500 ,
    0x0000000000004b7296a7e0c94448bead4fb8ec8da354070000006e4d4b6d3453 ,
    0x784295e09efb62f588255000720069006e007400650064004400610074006500 ,
    0x00000000000010cfe9bd3bb2894682f4fbc7fda11c47070000002ce8edd86a48 ,
    0xc748ada42ffe77c9518f500072006f0064007500630074004900440000000000 ,
    0x00004caf421a95eead42ad98abf51d372f65070000007e04db67412fd848a9fd ,
    0x340d64c9d929500072006f006400750063007400530074006100740075007300 ,
    0x49004400000000000000ccfe97c1aaa8ea44929a07299de93141070000002ce8 ,
    0xedd86a48c748ada42ffe77c9518f4f0075007400700075007400440065007600 ,
    0x69006300650049004400000000000000f0dc4344cd2ec84e9ce8069a15937db1 ,
    0x070000000cfe67283f4a5449b98550eff12896af4f0075007400700075007400 ,
    0x44006500760069006300650049004400000000000000a25ae1802db4234cbad5 ,
    0x2d110aa073b1070000006bc7f4e13cae2d4eb0dfc22bb2a2706d500072006f00 ,
    0x6400750063007400490044000000000000005ac0d5fb7ad57c47be863fceb2b0 ,
    0xb32d0700000057948a3f50009e4982782c56944bafd04f007200640065007200 ,
    0x49004400000000000000651176344cdbb943aa65c6fa9bbf21e107000000af80 ,
    0x8aa0ec1bb74591b8b61e6bbf8578500072006f00640075006300740049004400 ,
    0x000000000000b05ac6fb9b89b74fa16dd640233846dd07000000715cf340b021 ,
    0xd84db6dd67cde0e303e151007500650075006500490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
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
        dbText "Name" ="OutputDeviceName"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0457dce3c31bf14aa634a6e3adce92b8
        End
    End
    Begin
        dbText "Name" ="ShippingStatusID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2235"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0xed52158c62a09b40ab882dbba8f08a35
        End
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.OrderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Delivery.ShippedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Queue.QueueName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.TrackingCode"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2820"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ssd_Products.ProductType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.CreationDate"
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
        dbText "Name" ="ssd_Products.Path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Products.RefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Delivery.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_JobInQueue.QueueID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_JobInQueue.StatusInQueue"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ssd_OrderDetails.PrintedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1004"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =48
    Top =17
    Right =1587
    Bottom =957
    Left =-1
    Top =-1
    Right =1507
    Bottom =496
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =202
        Bottom =370
        Top =0
        Name ="ssd_OrderDetails"
        Name =""
    End
    Begin
        Left =276
        Top =193
        Right =439
        Bottom =541
        Top =0
        Name ="ssd_Products"
        Name =""
    End
    Begin
        Left =507
        Top =347
        Right =651
        Bottom =491
        Top =0
        Name ="ssd_ProductStatus"
        Name =""
    End
    Begin
        Left =635
        Top =178
        Right =779
        Bottom =480
        Top =0
        Name ="ssd_OutputDevices"
        Name =""
    End
    Begin
        Left =825
        Top =131
        Right =969
        Bottom =456
        Top =0
        Name ="ssd_Delivery"
        Name =""
    End
    Begin
        Left =1028
        Top =65
        Right =1172
        Bottom =266
        Top =0
        Name ="ssQryLiveOrderID"
        Name =""
    End
    Begin
        Left =1200
        Top =12
        Right =1375
        Bottom =355
        Top =0
        Name ="ssd_JobInQueue"
        Name =""
    End
    Begin
        Left =979
        Top =233
        Right =1123
        Bottom =377
        Top =0
        Name ="ssd_Queue"
        Name =""
    End
End
