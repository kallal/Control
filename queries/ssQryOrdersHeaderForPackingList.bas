Operation =1
Option =0
Having ="(((ssd_viewSSQryOrderDetails.ShippingStatusID)=195))"
Begin InputTables
    Name ="ssd_Orders"
    Name ="ssd_Customers"
    Name ="ssd_Users"
    Name ="ssQryLiveOrderID"
    Name ="ssd_viewSSQryOrderDetails"
End
Begin OutputColumns
    Expression ="ssd_Orders.OrderID"
    Expression ="ssd_Orders.OrderStatusID"
    Expression ="ssd_Orders.Numerator"
    Expression ="ssd_Orders.CustomerID"
    Expression ="ssd_Customers.CustomerName"
    Expression ="ssd_Orders.SubtotalPrice"
    Expression ="ssd_Orders.UrgencyPrice"
    Expression ="ssd_Orders.Tax"
    Expression ="ssd_Orders.ShippingPrice"
    Expression ="ssd_Orders.TotalPrice"
    Expression ="ssd_Orders.PONumber"
    Expression ="ssd_Orders.PaymentTransactionID"
    Expression ="ssd_Orders.billingAddressID"
    Expression ="ssd_Orders.OrderDate"
    Expression ="ssd_Orders.RequiredDate"
    Alias ="OrderedBy"
    Expression ="[ssd_users].[Firstname] & \" \" & [ssd_users].[lastname]"
    Expression ="ssd_viewSSQryOrderDetails.ShippingStatusID"
    Expression ="ssd_Orders.UserID"
    Expression ="ssd_viewSSQryOrderDetails.ShippingAddressID"
End
Begin Joins
    LeftTable ="ssd_Orders"
    RightTable ="ssd_Customers"
    Expression ="ssd_Orders.CustomerID = ssd_Customers.CustomerID"
    Flag =1
    LeftTable ="ssd_Orders"
    RightTable ="ssd_Users"
    Expression ="ssd_Orders.UserID = ssd_Users.UserID"
    Flag =2
    LeftTable ="ssd_Orders"
    RightTable ="ssQryLiveOrderID"
    Expression ="ssd_Orders.OrderID = ssQryLiveOrderID.OrderID"
    Flag =2
    LeftTable ="ssd_Orders"
    RightTable ="ssd_viewSSQryOrderDetails"
    Expression ="ssd_Orders.OrderID = ssd_viewSSQryOrderDetails.OrderID"
    Flag =1
End
Begin OrderBy
    Expression ="ssd_Orders.OrderID"
    Flag =0
End
Begin Groups
    Expression ="ssd_Orders.OrderID"
    GroupLevel =0
    Expression ="ssd_Orders.OrderStatusID"
    GroupLevel =0
    Expression ="ssd_Orders.Numerator"
    GroupLevel =0
    Expression ="ssd_Orders.CustomerID"
    GroupLevel =0
    Expression ="ssd_Customers.CustomerName"
    GroupLevel =0
    Expression ="ssd_Orders.SubtotalPrice"
    GroupLevel =0
    Expression ="ssd_Orders.UrgencyPrice"
    GroupLevel =0
    Expression ="ssd_Orders.Tax"
    GroupLevel =0
    Expression ="ssd_Orders.ShippingPrice"
    GroupLevel =0
    Expression ="ssd_Orders.TotalPrice"
    GroupLevel =0
    Expression ="ssd_Orders.PONumber"
    GroupLevel =0
    Expression ="ssd_Orders.PaymentTransactionID"
    GroupLevel =0
    Expression ="ssd_Orders.billingAddressID"
    GroupLevel =0
    Expression ="ssd_Orders.OrderDate"
    GroupLevel =0
    Expression ="ssd_Orders.RequiredDate"
    GroupLevel =0
    Expression ="[ssd_users].[Firstname] & \" \" & [ssd_users].[lastname]"
    GroupLevel =0
    Expression ="ssd_viewSSQryOrderDetails.ShippingStatusID"
    GroupLevel =0
    Expression ="ssd_Orders.UserID"
    GroupLevel =0
    Expression ="ssd_viewSSQryOrderDetails.ShippingAddressID"
    GroupLevel =0
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
    0xb5ff172cea8e304bb087d8f1806e9cf6
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000009de67af8997ceb4982bbfa026b3f232200000000bfb2f99a ,
    0x146ae44000000000000000007300730064005f004f0072006400650072007300 ,
    0x000000000000faecb0f3fdc9414881393ddbbfbffac7000000007e29b39a146a ,
    0xe44000000000000000007300730064005f0043007500730074006f006d006500 ,
    0x72007300000000000000a7d8769101497a4cac4359b51e4cc41c000000009747 ,
    0x739b146ae44000000000000000007300730064005f0055007300650072007300 ,
    0x00000000000057948a3f50009e4982782c56944bafd000000000038f4779cc6a ,
    0xe4400000000000000000730073005100720079004c006900760065004f007200 ,
    0x640065007200490044000000000000007a1f53941663f64c96be00a9248a615d ,
    0x00000000ba0a779b146ae44000000000000000007300730064005f0076006900 ,
    0x65007700530053005100720079004f0072006400650072004400650074006100 ,
    0x69006c007300000000000000e7dee123dfc80344a47fd7b101f4147507000000 ,
    0xb5ff172cea8e304bb087d8f1806e9cf64f007200640065007200650064004200 ,
    0x7900000000000000d5ab509d912562469e80fca7b615e9c6070000009de67af8 ,
    0x997ceb4982bbfa026b3f23224f00720064006500720049004400000000000000 ,
    0x073f4d1b16f7394cba390449f16ddd30070000009de67af8997ceb4982bbfa02 ,
    0x6b3f23224f007200640065007200530074006100740075007300490044000000 ,
    0x00000000ad7497a518d6144aa5543086b8541653070000009de67af8997ceb49 ,
    0x82bbfa026b3f23224e0075006d0065007200610074006f007200000000000000 ,
    0xf544c584b41d704c824687300d17c13b070000009de67af8997ceb4982bbfa02 ,
    0x6b3f232243007500730074006f006d00650072004900440000000000000098e9 ,
    0x53ab4951b04eb5a5e2214b3bcc0507000000faecb0f3fdc9414881393ddbbfbf ,
    0xfac743007500730074006f006d00650072004e0061006d006500000000000000 ,
    0x944e0fd4c862814d8e9558a6fa56bf32070000009de67af8997ceb4982bbfa02 ,
    0x6b3f232253007500620074006f00740061006c00500072006900630065000000 ,
    0x00000000442671e4b44c2f4d823d28255d208060070000009de67af8997ceb49 ,
    0x82bbfa026b3f232255007200670065006e006300790050007200690063006500 ,
    0x0000000000002c79577bd57d884fa7edde7cef70cbb5070000009de67af8997c ,
    0xeb4982bbfa026b3f23225400610078000000000000004491ddcb4c9a0b469c56 ,
    0x0443731b5902070000009de67af8997ceb4982bbfa026b3f2322530068006900 ,
    0x7000700069006e006700500072006900630065000000000000007d09374346c9 ,
    0x3e43bebe90c5bbaa95fc070000009de67af8997ceb4982bbfa026b3f23225400 ,
    0x6f00740061006c0050007200690063006500000000000000bc7a11826e79e048 ,
    0x9c49f30a2de20996070000009de67af8997ceb4982bbfa026b3f232250004f00 ,
    0x4e0075006d00620065007200000000000000a53cfbb67ffae7498b36164d79cc ,
    0x50d7070000009de67af8997ceb4982bbfa026b3f23225000610079006d006500 ,
    0x6e0074005400720061006e00730061006300740069006f006e00490044000000 ,
    0x00000000ea7b682e5d9ebe4792db582748ed3fc1070000009de67af8997ceb49 ,
    0x82bbfa026b3f2322620069006c006c0069006e00670041006400640072006500 ,
    0x73007300490044000000000000002fa8d9ee2725c84cb17c982da0ca6ba30700 ,
    0x00009de67af8997ceb4982bbfa026b3f23224f00720064006500720044006100 ,
    0x7400650000000000000082a4b7ff3f1ee343b241bbe268610035070000009de6 ,
    0x7af8997ceb4982bbfa026b3f2322520065007100750069007200650064004400 ,
    0x610074006500000000000000f02758fa70fa014897debef9973fa9b107000000 ,
    0xa7d8769101497a4cac4359b51e4cc41c460069007200730074006e0061006d00 ,
    0x65000000000000009f6f95e082363840b8d9fc5913732c5c07000000a7d87691 ,
    0x01497a4cac4359b51e4cc41c6c006100730074006e0061006d00650000000000 ,
    0x00009fd49a36f51e5b4193740c70cf2cedae070000007a1f53941663f64c96be ,
    0x00a9248a615d5300680069007000700069006e00670053007400610074007500 ,
    0x730049004400000000000000728b212ac1739f4ea6de5fc23513b57207000000 ,
    0x9de67af8997ceb4982bbfa026b3f232255007300650072004900440000000000 ,
    0x00006ec156db9ca7a6459c52cb6b29a295cc070000007a1f53941663f64c96be ,
    0x00a9248a615d5300680069007000700069006e00670041006400640072006500 ,
    0x730073004900440000000000000031feab8713a2654a8866f7f15e44a8020700 ,
    0x0000faecb0f3fdc9414881393ddbbfbffac743007500730074006f006d006500 ,
    0x7200490044000000000000000f057dbfd2978a418858b6cc3f327d0407000000 ,
    0xa7d8769101497a4cac4359b51e4cc41c55007300650072004900440000000000 ,
    0x00005ac0d5fb7ad57c47be863fceb2b0b32d0700000057948a3f50009e498278 ,
    0x2c56944bafd04f007200640065007200490044000000000000008f781fe13016 ,
    0x6244bcba3075cbbff20f070000007a1f53941663f64c96be00a9248a615d4f00 ,
    0x7200640065007200490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="OrderedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe7dee123dfc80344a47fd7b101f41475
        End
    End
    Begin
        dbText "Name" ="ssd_Customers.CustomerName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.SubtotalPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.UrgencyPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Tax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.ShippingPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.TotalPrice"
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
        dbText "Name" ="ssd_Customers.ShippingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.billingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Numerator"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_viewSSQryOrderDetails.ShippingStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.UserID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ShippingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_viewSSQryOrderDetails.ShippingAddressID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =7
    Top =327
    Right =1610
    Bottom =1284
    Left =-1
    Top =-1
    Right =1571
    Bottom =260
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="ssd_Orders"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="ssd_Customers"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="ssd_Users"
        Name =""
    End
    Begin
        Left =654
        Top =0
        Right =798
        Bottom =144
        Top =0
        Name ="ssQryLiveOrderID"
        Name =""
    End
    Begin
        Left =883
        Top =133
        Right =1130
        Bottom =277
        Top =0
        Name ="ssd_viewSSQryOrderDetails"
        Name =""
    End
End
