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
    0x0acc0e55000000005a1819734cb5964181860fe7f17be7e40000000036ef116f ,
    0xcedae44000000000000000007300730064005f004f0072006400650072007300 ,
    0x000000000000dbce053724824e42b50867bf5a132b4c00000000234dd06eceda ,
    0xe44000000000000000007300730064005f0043007500730074006f006d006500 ,
    0x7200730000000000000031b72bd9918ea44294d75ceb3011383900000000f0b1 ,
    0x7f6fcedae44000000000000000007300730064005f0055007300650072007300 ,
    0x00000000000057948a3f50009e4982782c56944bafd0000000004f17b2a16fe0 ,
    0xe4400000000000000000730073005100720079004c006900760065004f007200 ,
    0x640065007200490044000000000000001c852a3e3dd4c54cb343a513fdde5026 ,
    0x000000005e43836fcedae44000000000000000007300730064005f0076006900 ,
    0x65007700530053005100720079004f0072006400650072004400650074006100 ,
    0x69006c007300000000000000e7dee123dfc80344a47fd7b101f4147507000000 ,
    0xb5ff172cea8e304bb087d8f1806e9cf64f007200640065007200650064004200 ,
    0x7900000000000000b389e525a675754a89224e9d763fa2bf070000005a181973 ,
    0x4cb5964181860fe7f17be7e44f00720064006500720049004400000000000000 ,
    0xf14d760bed07d040a13e97baf6a05356070000005a1819734cb5964181860fe7 ,
    0xf17be7e44f007200640065007200530074006100740075007300490044000000 ,
    0x00000000ef823e88cb29b04a87cc6019f3477ca8070000005a1819734cb59641 ,
    0x81860fe7f17be7e44e0075006d0065007200610074006f007200000000000000 ,
    0x2abd3abe63d92a48b48e8c789ee3770d070000005a1819734cb5964181860fe7 ,
    0xf17be7e443007500730074006f006d0065007200490044000000000000002f7c ,
    0x3875dff7394b918f10678230ae9c07000000dbce053724824e42b50867bf5a13 ,
    0x2b4c43007500730074006f006d00650072004e0061006d006500000000000000 ,
    0x23f90a65a5f2654da5cca75bcdfdfe26070000005a1819734cb5964181860fe7 ,
    0xf17be7e453007500620074006f00740061006c00500072006900630065000000 ,
    0x00000000d2689b72faf3294bbffc66896d6fa788070000005a1819734cb59641 ,
    0x81860fe7f17be7e455007200670065006e006300790050007200690063006500 ,
    0x0000000000008f33cac3b635c148ab89b800c297bcf5070000005a1819734cb5 ,
    0x964181860fe7f17be7e454006100780000000000000022fde1e8d01ed04887f3 ,
    0x5d942bd29789070000005a1819734cb5964181860fe7f17be7e4530068006900 ,
    0x7000700069006e00670050007200690063006500000000000000bd07bb27d4bb ,
    0xdf4a9be8963d3fc004a7070000005a1819734cb5964181860fe7f17be7e45400 ,
    0x6f00740061006c0050007200690063006500000000000000d8f202bbec0a1748 ,
    0x8ee00debdef5c389070000005a1819734cb5964181860fe7f17be7e450004f00 ,
    0x4e0075006d00620065007200000000000000b5c8022ccdeffa48b5f5397abf2d ,
    0x0965070000005a1819734cb5964181860fe7f17be7e45000610079006d006500 ,
    0x6e0074005400720061006e00730061006300740069006f006e00490044000000 ,
    0x000000009dbe8512c83f9542b93e09e7423123de070000005a1819734cb59641 ,
    0x81860fe7f17be7e4620069006c006c0069006e00670041006400640072006500 ,
    0x73007300490044000000000000001bc57401d94d9340bb97c6e2d1e4ba400700 ,
    0x00005a1819734cb5964181860fe7f17be7e44f00720064006500720044006100 ,
    0x74006500000000000000792b29457e405b4ebe475acf2aa34584070000005a18 ,
    0x19734cb5964181860fe7f17be7e4520065007100750069007200650064004400 ,
    0x61007400650000000000000036aa0f8ab338534983001b5b597093d707000000 ,
    0x31b72bd9918ea44294d75ceb30113839460069007200730074006e0061006d00 ,
    0x65000000000000001e8cc05823d4c240ae72049ecac5af570700000031b72bd9 ,
    0x918ea44294d75ceb301138396c006100730074006e0061006d00650000000000 ,
    0x000005dd04ad49d6f645aeb007c72657f8ec070000001c852a3e3dd4c54cb343 ,
    0xa513fdde50265300680069007000700069006e00670053007400610074007500 ,
    0x7300490044000000000000003d159609e1a1aa44904153457b64a67307000000 ,
    0x5a1819734cb5964181860fe7f17be7e455007300650072004900440000000000 ,
    0x00007f089c19f13d384ea0131b2b2b07a560070000001c852a3e3dd4c54cb343 ,
    0xa513fdde50265300680069007000700069006e00670041006400640072006500 ,
    0x73007300490044000000000000009ee15744a3e3544a9d125cc667fde8050700 ,
    0x0000dbce053724824e42b50867bf5a132b4c43007500730074006f006d006500 ,
    0x72004900440000000000000032ef39a7d147fb4d92a206845c0611f907000000 ,
    0x31b72bd9918ea44294d75ceb3011383955007300650072004900440000000000 ,
    0x00007f7184f64d7bb543821b2f267f2843e10700000057948a3f50009e498278 ,
    0x2c56944bafd04f0072006400650072004900440000000000000061ff3a8bd325 ,
    0xfc45842a49787f349f5d070000001c852a3e3dd4c54cb343a513fdde50264f00 ,
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
