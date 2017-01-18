dbMemo "SQL" ="SELECT        TOP (100) PERCENT dbo.OrderDetails.ProductID, dbo.OrderDetails.Ord"
    "erID, dbo.OrderDetails.OrderedProductStatusID, dbo.Delivery.StatusID AS Shipping"
    "StatusID, \015\012                         dbo.Delivery.ShippedDate, dbo.Product"
    "s.CustomerID, dbo.Products.ProductType, dbo.Products.Description, dbo.Products.C"
    "reationDate, \015\012                         dbo.Products.ProductStatusID, dbo."
    "ProductStatus.Description AS StatusDescription, dbo.OrderDetails.Copies, dbo.Ord"
    "erDetails.CustomerPrice, dbo.Products.Path, \015\012                         dbo"
    ".Products.RefCode, dbo.OutputDevices.DisplayName AS OutputDeviceName, dbo.Delive"
    "ry.RequiredDate, dbo.JobInQueue.QueueID, \015\012                         dbo.Jo"
    "bInQueue.StatusInQueue, dbo.Queue.QueueName, dbo.OrderDetails.TrackingCode, dbo."
    "OrderDetails.PrintedDate\015\012FROM            dbo.Delivery RIGHT OUTER JOIN\015"
    "\012                         dbo.Queue RIGHT OUTER JOIN\015\012                 "
    "        dbo.JobInQueue ON dbo.Queue.QueueID = dbo.JobInQueue.QueueID RIGHT OUTER"
    " JOIN\015\012                         dbo.OrderDetails LEFT OUTER JOIN\015\012  "
    "                       dbo.ProductStatus RIGHT OUTER JOIN\015\012               "
    "          dbo.OutputDevices RIGHT OUTER JOIN\015\012                         dbo"
    ".Products ON dbo.OutputDevices.OutputDeviceID = dbo.Products.OutputDeviceID ON d"
    "bo.ProductStatus.ProductStatusID = dbo.Products.ProductStatusID ON \015\012     "
    "                    dbo.OrderDetails.ProductID = dbo.Products.ProductID ON dbo.J"
    "obInQueue.ProductID = dbo.OrderDetails.ProductID ON \015\012                    "
    "     dbo.Delivery.ProductID = dbo.OrderDetails.ProductID\015\012WHERE        (db"
    "o.Delivery.StatusID < 200) AND (dbo.OrderDetails.OrderedProductStatusID >= 100) "
    "AND (dbo.OrderDetails.OrderedProductStatusID < 200) AND \015\012                "
    "         (dbo.Delivery.ShippedDate IS NULL) AND (dbo.Products.ProductStatusID = "
    "3)\015\012ORDER BY dbo.OrderDetails.ProductID"
dbMemo "Connect" ="ODBC;DSN=SSDirectorRoger;UID=SSAxis;PWD=SSAxis;DATABASE=iWayDbSql;"
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "LogMessages" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x53b5366579975541ae94665b85a3a915
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="1.ProductID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9eae63b5b248c54885a546595c9f7789
        End
    End
    Begin
        dbText "Name" ="1.OrderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x716fcf6f497f0e4b8b482da89c397408
        End
    End
    Begin
        dbText "Name" ="1.OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d7e4d4139b1434c884b41df80310887
        End
    End
    Begin
        dbText "Name" ="1.ShippingStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5f2c065a79e8d94f9f72f4f4a865fb1a
        End
    End
    Begin
        dbText "Name" ="1.ShippedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6457f19455c4494ea62c41eb2b92a0a8
        End
    End
    Begin
        dbText "Name" ="1.CustomerID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x445589b3d608f744ad8523d5dd5cce2f
        End
    End
    Begin
        dbText "Name" ="1.ProductType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb3865b09bcf01345b252cee33a21e206
        End
    End
    Begin
        dbText "Name" ="1.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xddf379234e02354884b17f37e896ad94
        End
    End
    Begin
        dbText "Name" ="1.CreationDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf895e0dbabf46142b043ca4942ddfbd6
        End
    End
    Begin
        dbText "Name" ="1.ProductStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x74dd98d8cb501d4e8e2d13c441c4a854
        End
    End
    Begin
        dbText "Name" ="1.StatusDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4689c6060d9a5447910ff10560c3ff6e
        End
    End
    Begin
        dbText "Name" ="1.Copies"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb382df50f3f0d04e88f34816b57b9608
        End
    End
    Begin
        dbText "Name" ="1.CustomerPrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x89f6a6497e3f13448d3f8a6c0bbc32ee
        End
    End
    Begin
        dbText "Name" ="1.Path"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x75b4b0863707fc41b44aaa4cf1cc4c00
        End
    End
    Begin
        dbText "Name" ="1.RefCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb163f45c2d1b64baf570f162542d1cc
        End
    End
    Begin
        dbText "Name" ="1.OutputDeviceName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66d635ca35dbb04d9f2f10206f576ad0
        End
    End
    Begin
        dbText "Name" ="1.RequiredDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0aee6e5349e24048bd7bfd74ec7fc9cd
        End
    End
    Begin
        dbText "Name" ="1.QueueID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x96b09486f9386345bfa604561341930a
        End
    End
    Begin
        dbText "Name" ="1.StatusInQueue"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7e2441fa28cd4d4d8c86b05f49bbad26
        End
    End
    Begin
        dbText "Name" ="1.QueueName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21cdb27bd6c84442af5a8614443223bf
        End
    End
    Begin
        dbText "Name" ="1.TrackingCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee3db15aa60f194d924edb8db0c15196
        End
    End
    Begin
        dbText "Name" ="1.PrintedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b2086fc581e774f95d45e847761527b
        End
    End
    Begin
        dbText "Name" ="ProductID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4b7a744cec7bbe4595010bdfe878c2fc
        End
    End
    Begin
        dbText "Name" ="OrderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd44cdd7273d95e43b062dcfd7b29156a
        End
    End
    Begin
        dbText "Name" ="OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56acc0de157fd848bf86eb8320a44c0e
        End
    End
    Begin
        dbText "Name" ="ShippingStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x37b76888c4c5754194c81cde9eb569d0
        End
    End
    Begin
        dbText "Name" ="ShippedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab8b3dade0469644b618a9f9a3a95b33
        End
    End
    Begin
        dbText "Name" ="CustomerID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfeab146b286e5345a1a35cd4bbeddec4
        End
    End
    Begin
        dbText "Name" ="ProductType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1efa6a69c93c084e96370d4f17aadd89
        End
    End
    Begin
        dbText "Name" ="Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ccdbbf0ce851c418013b1f96db2b7f6
        End
    End
    Begin
        dbText "Name" ="CreationDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc86eb61a84e8b54798320c0c60d894a3
        End
    End
    Begin
        dbText "Name" ="ProductStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e063040f5cb4e4caa032d1b1e4c3a01
        End
    End
    Begin
        dbText "Name" ="StatusDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1da8e0e4c1d85e45a38f63faba11d656
        End
    End
    Begin
        dbText "Name" ="Copies"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ef607845d9bcf42afa489d8334402c1
        End
    End
    Begin
        dbText "Name" ="CustomerPrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf88d9464ef28e6418bdd26b8ba1ef362
        End
    End
    Begin
        dbText "Name" ="Path"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe3c71d9e309ff14cb52ee7a15ef4d1ca
        End
    End
    Begin
        dbText "Name" ="RefCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d3fae86c3373b45a60cabff3500703e
        End
    End
    Begin
        dbText "Name" ="OutputDeviceName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x569f8b0d0641eb4aa529c1d34c5e0880
        End
    End
    Begin
        dbText "Name" ="RequiredDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb99387ca5ab9af4abce524d022a95c15
        End
    End
    Begin
        dbText "Name" ="QueueID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x32385d0c24189549912990c05b8f9323
        End
    End
    Begin
        dbText "Name" ="StatusInQueue"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cac3aa3fcf4d445aebd54ea2bd40fcd
        End
    End
    Begin
        dbText "Name" ="QueueName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c2ece0431e0244a8303d46609afa36e
        End
    End
    Begin
        dbText "Name" ="TrackingCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x46bd3602c9b9c745b0119f031af91236
        End
    End
    Begin
        dbText "Name" ="PrintedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf05755ecc7f6ed4daf142e6e798fb5a5
        End
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ShippedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.CreationDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.QueueID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.StatusInQueue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.StatusDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.OrderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ShippingStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ProductType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.Path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.PrintedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.Copies"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.CustomerPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.RefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.OutputDeviceName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.QueueName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.TrackingCode"
        dbLong "AggregateType" ="-1"
    End
End
