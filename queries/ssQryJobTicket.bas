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
    LeftTable ="ssd_Orders"
    RightTable ="ssd_qryUserIDtoAddresses"
    Expression ="ssd_Orders.UserID = ssd_qryUserIDtoAddresses.UserID"
    Flag =2
    LeftTable ="ssd_Products"
    RightTable ="ssd_Addresses_1"
    Expression ="ssd_Products.ShippingAddressID = ssd_Addresses_1.AddressID"
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
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x55f91cf8309d0e42a2cbb8c7a26c2ff5
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000096625352da5d6840a7324d1e0509449900000000ac48106f ,
    0xcedae44000000000000000007300730064005f004f0072006400650072004400 ,
    0x65007400610069006c007300000000000000f317d7ac27109d4f9401387db45c ,
    0xe7b200000000222f576fcedae44000000000000000007300730064005f005000 ,
    0x72006f0064007500630074007300000000000000717ee34efbc37547a2f65389 ,
    0x09e81d5e000000008e92576fcedae44000000000000000007300730064005f00 ,
    0x500072006f006400750063007400530074006100740075007300000000000000 ,
    0x40041049bcde864d942013d20920134e0000000019da136fcedae44000000000 ,
    0x000000007300730064005f004f00750074007000750074004400650076006900 ,
    0x6300650073000000000000005a1819734cb5964181860fe7f17be7e400000000 ,
    0x36ef116fcedae44000000000000000007300730064005f004f00720064006500 ,
    0x72007300000000000000042f83d2dbc4ca4f953e27a0e0e7163f00000000b2f8 ,
    0xd76ecedae44000000000000000007300730064005f00440065006c0069007600 ,
    0x6500720079000000000000004b7fb99e4fb07645bca03ff3bf44afcf00000000 ,
    0x3bfb7b6fcedae44000000000000000007300730064005f00540065006d007000 ,
    0x6c0061007400650073000000000000007d6da6ac85718643b03a2428766192d9 ,
    0x000000008d64546fcedae44000000000000000007300730064005f0050007200 ,
    0x6f00640075006300740049006e00740065006e007400000000000000816b811a ,
    0x6c73ac45911821d019bad025000000009301ef6ecedae4400000000000000000 ,
    0x7300730064005f004a004200460032004a006f006200000000000000997b53e4 ,
    0xf06f5c45984cfa4fc4f4c752000000009aaff46ecedae4400000000000000000 ,
    0x7300730064005f004a0042004600530065007400740069006e00670073000000 ,
    0x000000004f29c3cb5e47d2458acb045e0bce434100000000fa1eb96ecedae440 ,
    0x00000000000000007300730064005f0041006400640072006500730073006500 ,
    0x730000000000000084fc12c578bc81409975be230eb421a000000000cf4fc0a0 ,
    0x6fe0e44000000000000000007300730064005f00710072007900550073006500 ,
    0x72004900440074006f0041006400640072006500730073006500730000000000 ,
    0x0000b2444053d605114b81466639e5eb21c90700000055f91cf8309d0e42a2cb ,
    0xb8c7a26c2ff55300740061007400750073004400650073006300720069007000 ,
    0x740069006f006e0000000000000043e271e8ff64f54888560e361a16a4cf0700 ,
    0x000055f91cf8309d0e42a2cbb8c7a26c2ff54f00750074007000750074004400 ,
    0x650076006900630065004e0061006d006500000000000000e5f16a62a88a004b ,
    0x9fa7f8dd5398eb2f0700000055f91cf8309d0e42a2cbb8c7a26c2ff554006500 ,
    0x6d0070006c006100740065005300750062006a00650063007400000000000000 ,
    0xa8638882cc453e48a0202e07465a2eed0700000055f91cf8309d0e42a2cbb8c7 ,
    0xa26c2ff55300680069007000700069006e006700410064006400720065007300 ,
    0x730049004400000000000000def551449c69cd48979aee468820eb9407000000 ,
    0x55f91cf8309d0e42a2cbb8c7a26c2ff54f00720064006500720049006e007400 ,
    0x650072006e0061006c004e006f00740065000000000000009e63b42a12900d45 ,
    0xb450d75d26628ebc0700000055f91cf8309d0e42a2cbb8c7a26c2ff541007400 ,
    0x74006e0054006f000000000000007f7184f64d7bb543821b2f267f2843e10700 ,
    0x000096625352da5d6840a7324d1e050944994f00720064006500720049004400 ,
    0x0000000000000852e38d4991ab4490b11d340e10650b07000000f317d7ac2710 ,
    0x9d4f9401387db45ce7b243007500730074006f006d0065007200490044000000 ,
    0x00000000683f28ed60b5f74b8a6dd0a634e55d9c0700000096625352da5d6840 ,
    0xa7324d1e05094499500072006f00640075006300740049004400000000000000 ,
    0xd6c7a52ce699924fbecd977472c8422907000000f317d7ac27109d4f9401387d ,
    0xb45ce7b2500072006f0064007500630074005400790070006500000000000000 ,
    0xd534781d4a42c04ca10d9ac43ff4843e07000000f317d7ac27109d4f9401387d ,
    0xb45ce7b24400650073006300720069007000740069006f006e00000000000000 ,
    0xef0687c813d7c042b365d88048ed739007000000f317d7ac27109d4f9401387d ,
    0xb45ce7b24300720065006100740069006f006e00440061007400650000000000 ,
    0x000004ad641ae2ff6f46bd15ac22a4fa206207000000f317d7ac27109d4f9401 ,
    0x387db45ce7b2500072006f006400750063007400530074006100740075007300 ,
    0x4900440000000000000047c05598b633214fa304f8ad34d1ccbd07000000717e ,
    0xe34efbc37547a2f6538909e81d5e440065007300630072006900700074006900 ,
    0x6f006e0000000000000068ee26359810f841b4011abb3dfe2d2e070000009662 ,
    0x5352da5d6840a7324d1e0509449943006f007000690065007300000000000000 ,
    0xde9e585a1ed3154bb2ee84ba49cc8bdd0700000096625352da5d6840a7324d1e ,
    0x0509449943007500730074006f006d0065007200500072006900630065000000 ,
    0x00000000a830e9c39659aa4fa1b70936a3881ac507000000f317d7ac27109d4f ,
    0x9401387db45ce7b250006100740068000000000000000a6217b3c590054ebc7b ,
    0x8c6e2c96408a07000000f317d7ac27109d4f9401387db45ce7b2430075007300 ,
    0x74006f006d006500720052006500660043006f0064006500000000000000e8f0 ,
    0xe2b118485545adbecfa21743f21c07000000f317d7ac27109d4f9401387db45c ,
    0xe7b252006500660043006f0064006500000000000000a01076bbf98c20439d89 ,
    0x20c5a554f3620700000040041049bcde864d942013d20920134e440069007300 ,
    0x70006c00610079004e0061006d0065000000000000001bc57401d94d9340bb97 ,
    0xc6e2d1e4ba40070000005a1819734cb5964181860fe7f17be7e44f0072006400 ,
    0x650072004400610074006500000000000000792b29457e405b4ebe475acf2aa3 ,
    0x4584070000005a1819734cb5964181860fe7f17be7e452006500710075006900 ,
    0x720065006400440061007400650000000000000025d9333cdf8f5446b623615b ,
    0xb82247130700000096625352da5d6840a7324d1e050944995000720069006e00 ,
    0x7400650064004400610074006500000000000000e8fcfab26cd94d49aa4468a8 ,
    0x2c8ba02b07000000042f83d2dbc4ca4f953e27a0e0e7163f5200650071007500 ,
    0x69007200650064004400610074006500000000000000ef823e88cb29b04a87cc ,
    0x6019f3477ca8070000005a1819734cb5964181860fe7f17be7e44e0075006d00 ,
    0x65007200610074006f0072000000000000005aeca64bdb4f354f83910cf1c282 ,
    0x8ca207000000f317d7ac27109d4f9401387db45ce7b2500072006f0064007500 ,
    0x6300740054007900700065004e0061006d0065000000000000006e9f71031265 ,
    0x69489d536f6fda710f8807000000f317d7ac27109d4f9401387db45ce7b25000 ,
    0x72006f00640075006300740053007500620074007900700065004e0061006d00 ,
    0x6500000000000000d69d27b2c6b99a44bea8db533ac4ad8307000000f317d7ac ,
    0x27109d4f9401387db45ce7b2540065006d0070006c0061007400650049004400 ,
    0x000000000000d4c306304e99ae438ae1aea1f59f00ea070000004b7fb99e4fb0 ,
    0x7645bca03ff3bf44afcf540065006d0070006c006100740065004e0061006d00 ,
    0x650000000000000065c4384789cc4e4eaafb74a01b22792b070000004b7fb99e ,
    0x4fb07645bca03ff3bf44afcf5300750062006a00650063007400000000000000 ,
    0x1ec01795d6e3934c9ecd065afbe50b4a07000000f317d7ac27109d4f9401387d ,
    0xb45ce7b2500072006f00640075006300740049006e00740065006e0074004900 ,
    0x4400000000000000828aab67af7a644ba0cc9ca201a94a91070000005a181973 ,
    0x4cb5964181860fe7f17be7e443007500730074006f006d00650072004e006f00 ,
    0x74006500000000000000e628fcf962d30a4a9e9cae26518a4f68070000005a18 ,
    0x19734cb5964181860fe7f17be7e45000610079006d0065006e00740054006500 ,
    0x72006d007300000000000000d8f202bbec0a17488ee00debdef5c38907000000 ,
    0x5a1819734cb5964181860fe7f17be7e450004f004e0075006d00620065007200 ,
    0x000000000000b5c8022ccdeffa48b5f5397abf2d0965070000005a1819734cb5 ,
    0x964181860fe7f17be7e45000610079006d0065006e0074005400720061006e00 ,
    0x730061006300740069006f006e00490044000000000000008399e4fe67d1fd44 ,
    0xa1a93cd7fc9883c607000000042f83d2dbc4ca4f953e27a0e0e7163f41006400 ,
    0x64007200650073007300490044000000000000009dbe8512c83f9542b93e09e7 ,
    0x423123de070000005a1819734cb5964181860fe7f17be7e4620069006c006c00 ,
    0x69006e006700410064006400720065007300730049004400000000000000dd8a ,
    0x3bc14ec214429e1dafd6c27c81f307000000042f83d2dbc4ca4f953e27a0e0e7 ,
    0x163f530068006900700070006500640044006100740065000000000000009381 ,
    0xb4009fd2f0498a771740258a25d0070000007d6da6ac85718643b03a24287661 ,
    0x92d94e006f0074006500460072006f006d0043007500730074006f006d006500 ,
    0x7200000000000000006e67b937449b45895b4bebc2769f0e070000007d6da6ac ,
    0x85718643b03a2428766192d94e006f007400650046006f007200430075007300 ,
    0x74006f006d00650072000000000000003ca5d4a5e6f6ad4bacfb5d81f4ba2668 ,
    0x070000007d6da6ac85718643b03a2428766192d949006e007400650072006e00 ,
    0x61006c004e006f00740065000000000000008621b19bb8493c45a20ef3bcb374 ,
    0x149b070000007d6da6ac85718643b03a2428766192d944006500730063007200 ,
    0x6900700074006900760065004e0061006d006500000000000000109ae93498db ,
    0xb247ab061ab5bda67760070000005a1819734cb5964181860fe7f17be7e44900 ,
    0x6e007400650072006e0061006c004e006f0074006500000000000000769c4ab6 ,
    0x291d57499e78f0750beb34fe07000000997b53e4f06f5c45984cfa4fc4f4c752 ,
    0x500072006f00640075006300740069006f006e004e006f007400650000000000 ,
    0x0000e80ec5cbd1e21d47b74648038eab91c607000000997b53e4f06f5c45984c ,
    0xfa4fc4f4c752460069006e0069007300680069006e0067004e006f0074006500 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000007300730064005f004100640064007200650073007300 ,
    0x650073005f00310000000000000026d358f0e0c3ce41950d850afdf076d20700 ,
    0x00004f29c3cb5e47d2458acb045e0bce43416100640064007200650073007300 ,
    0x6600690065006c00640031000000000000009c4a738fb974bf47a550560b24c7 ,
    0x60ed07000000997b53e4f06f5c45984cfa4fc4f4c7524a004200460049004400 ,
    0x0000000000003d159609e1a1aa44904153457b64a673070000005a1819734cb5 ,
    0x964181860fe7f17be7e455007300650072004900440000000000000062913ac3 ,
    0xed7cd94aab77a7024331a0be07000000f317d7ac27109d4f9401387db45ce7b2 ,
    0x500072006f00640075006300740049004400000000000000b05157583657b24c ,
    0xacab9eb6e637660207000000717ee34efbc37547a2f6538909e81d5e50007200 ,
    0x6f00640075006300740053007400610074007500730049004400000000000000 ,
    0xdcf9401abd33dd409cd7acb0eb1a712107000000f317d7ac27109d4f9401387d ,
    0xb45ce7b24f007500740070007500740044006500760069006300650049004400 ,
    0x000000000000433b3dc2593ec54f880b659851e397fa0700000040041049bcde ,
    0x864d942013d20920134e4f007500740070007500740044006500760069006300 ,
    0x650049004400000000000000b389e525a675754a89224e9d763fa2bf07000000 ,
    0x5a1819734cb5964181860fe7f17be7e44f007200640065007200490044000000 ,
    0x00000000326731d87080c94c8a11a2f5d90092a807000000042f83d2dbc4ca4f ,
    0x953e27a0e0e7163f500072006f00640075006300740049004400000000000000 ,
    0x8375e9826a68c642bb39fea906a45122070000004b7fb99e4fb07645bca03ff3 ,
    0xbf44afcf540065006d0070006c00610074006500490044000000000000007dab ,
    0xc56c3c642a4db75c4e0efac5cf66070000007d6da6ac85718643b03a24287661 ,
    0x92d9500072006f00640075006300740049006e00740065006e00740049004400 ,
    0x000000000000cfc3b780a55d8e40810df3be6ae9b6d907000000816b811a6c73 ,
    0xac45911821d019bad0254a006f006200490044000000000000004dc69b354850 ,
    0x28479e4feac6ec00684007000000816b811a6c73ac45911821d019bad0254a00 ,
    0x4200460049004400000000000000838c0f8065f2db438f37e957eddd8fbe0700 ,
    0x00004f29c3cb5e47d2458acb045e0bce43414100640064007200650073007300 ,
    0x49004400000000000000d0883864ea367a42a7fe66768fa3fba70700000084fc ,
    0x12c578bc81409975be230eb421a0550073006500720049004400000000000000 ,
    0x08ef6fe04d84734eb4e35eba4637353107000000f317d7ac27109d4f9401387d ,
    0xb45ce7b25300680069007000700069006e006700410064006400720065007300 ,
    0x730049004400000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
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
            0x43e271e8ff64f54888560e361a16a4cf
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
        dbText "Name" ="ShippingAddressID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa8638882cc453e48a0202e07465a2eed
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
        dbText "Name" ="AttnTo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e63b42a12900d45b450d75d26628ebc
        End
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="ssd_ProductIntent.NoteForCustomer"
        dbLong "AggregateType" ="-1"
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
        Left =842
        Top =11
        Right =986
        Bottom =155
        Top =0
        Name ="ssd_Addresses_1"
        Name =""
    End
End
