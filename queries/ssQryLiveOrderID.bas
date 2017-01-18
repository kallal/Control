dbMemo "SQL" ="SELECT ssd_OrderDetails.OrderID, Min(ssd_Delivery.StatusID) AS ShippingStatus, M"
    "in(ssd_OrderDetails.OrderedProductStatusID) AS MinOfOrderedProductStatusID\015\012"
    "FROM ssd_OrderDetails INNER JOIN ssd_Delivery ON ssd_OrderDetails.ProductID = ss"
    "d_Delivery.ProductID\015\012GROUP BY ssd_OrderDetails.OrderID\015\012HAVING (((M"
    "in(ssd_Delivery.StatusID))<200) AND ((Min(ssd_OrderDetails.OrderedProductStatusI"
    "D))>=100 And (Min(ssd_OrderDetails.OrderedProductStatusID))<200));\015\012"
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
    0x57948a3f50009e4982782c56944bafd0
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000096625352da5d6840a7324d1e0509449900000000ba76a3ec ,
    0x2abde44000000000000000007300730064005f004f0072006400650072004400 ,
    0x65007400610069006c007300000000000000042f83d2dbc4ca4f953e27a0e0e7 ,
    0x163f00000000cdba80ec2abde44000000000000000007300730064005f004400 ,
    0x65006c0069007600650072007900000000000000758bb818a4b79c43bafcd0f9 ,
    0x483f02600700000057948a3f50009e4982782c56944bafd05300680069007000 ,
    0x700069006e0067005300740061007400750073000000000000004e0c25192410 ,
    0x9e4eb7f4c867c039f1350700000057948a3f50009e4982782c56944bafd04d00 ,
    0x69006e004f0066004f00720064006500720065006400500072006f0064007500 ,
    0x63007400530074006100740075007300490044000000000000007f7184f64d7b ,
    0xb543821b2f267f2843e10700000096625352da5d6840a7324d1e050944994f00 ,
    0x720064006500720049004400000000000000a95c3b61f3836a44af4577230630 ,
    0xa37b07000000042f83d2dbc4ca4f953e27a0e0e7163f53007400610074007500 ,
    0x730049004400000000000000df056b65cafde440a1aa01fc113d688007000000 ,
    0x96625352da5d6840a7324d1e050944994f007200640065007200650064005000 ,
    0x72006f0064007500630074005300740061007400750073004900440000000000 ,
    0x0000683f28ed60b5f74b8a6dd0a634e55d9c0700000096625352da5d6840a732 ,
    0x4d1e05094499500072006f006400750063007400490044000000000000003267 ,
    0x31d87080c94c8a11a2f5d90092a807000000042f83d2dbc4ca4f953e27a0e0e7 ,
    0x163f500072006f00640075006300740049004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_OrderDetails.OrderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30ac0a2e4a844b41b5a69afc1300e280
        End
    End
    Begin
        dbText "Name" ="dbo_Delivery.StatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ShippingStatus"
        dbInteger "ColumnWidth" ="3795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x758bb818a4b79c43bafcd0f9483f0260
        End
    End
    Begin
        dbText "Name" ="dbo_OrderDetails.OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinOfOrderedProductStatusID"
        dbInteger "ColumnWidth" ="4170"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4e0c251924109e4eb7f4c867c039f135
        End
    End
End
