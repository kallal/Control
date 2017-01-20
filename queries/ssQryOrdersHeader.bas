Operation =1
Option =0
Begin InputTables
    Name ="ssd_Orders"
    Name ="ssd_Customers"
    Name ="ssd_Users"
    Name ="ssQryLiveOrderID"
    Name ="ssQryOrderDetailsForReport"
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
    Expression ="ssd_Customers.ShippingAddressID"
    Expression ="ssd_Orders.billingAddressID"
    Expression ="ssd_Orders.OrderDate"
    Expression ="ssd_Orders.RequiredDate"
    Alias ="OrderedBy"
    Expression ="[ssd_users].[Firstname] & \" \" & [ssd_users].[lastname]"
    Expression ="ssQryOrderDetailsForReport.OrderReferenceName"
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
    Flag =1
    LeftTable ="ssd_Orders"
    RightTable ="ssQryOrderDetailsForReport"
    Expression ="ssd_Orders.OrderID = ssQryOrderDetailsForReport.OrderID"
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
    Expression ="ssd_Customers.ShippingAddressID"
    GroupLevel =0
    Expression ="ssd_Orders.billingAddressID"
    GroupLevel =0
    Expression ="ssd_Orders.OrderDate"
    GroupLevel =0
    Expression ="ssd_Orders.RequiredDate"
    GroupLevel =0
    Expression ="[ssd_users].[Firstname] & \" \" & [ssd_users].[lastname]"
    GroupLevel =0
    Expression ="ssQryOrderDetailsForReport.OrderReferenceName"
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
    0xc7fbe5515dbb974a9e4389d630f71cba
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000005a1819734cb5964181860fe7f17be7e40000000036ef116f ,
    0xcedae44000000000000000007300730064005f004f0072006400650072007300 ,
    0x000000000000dbce053724824e42b50867bf5a132b4c00000000234dd06eceda ,
    0xe44000000000000000007300730064005f0043007500730074006f006d006500 ,
    0x7200730000000000000031b72bd9918ea44294d75ceb3011383900000000f0b1 ,
    0x7f6fcedae44000000000000000007300730064005f0055007300650072007300 ,
    0x00000000000057948a3f50009e4982782c56944bafd000000000562ccd1750e0 ,
    0xe4400000000000000000730073005100720079004c006900760065004f007200 ,
    0x64006500720049004400000000000000f1b8fe97ddf7e844a5ed5257ff8c0b73 ,
    0x00000000da95be1750e0e4400000000000000000730073005100720079004f00 ,
    0x7200640065007200440065007400610069006c00730046006f00720052006500 ,
    0x70006f0072007400000000000000e7dee123dfc80344a47fd7b101f414750700 ,
    0x0000c7fbe5515dbb974a9e4389d630f71cba4f00720064006500720065006400 ,
    0x42007900000000000000b389e525a675754a89224e9d763fa2bf070000005a18 ,
    0x19734cb5964181860fe7f17be7e44f0072006400650072004900440000000000 ,
    0x0000f14d760bed07d040a13e97baf6a05356070000005a1819734cb596418186 ,
    0x0fe7f17be7e44f00720064006500720053007400610074007500730049004400 ,
    0x000000000000ef823e88cb29b04a87cc6019f3477ca8070000005a1819734cb5 ,
    0x964181860fe7f17be7e44e0075006d0065007200610074006f00720000000000 ,
    0x00002abd3abe63d92a48b48e8c789ee3770d070000005a1819734cb596418186 ,
    0x0fe7f17be7e443007500730074006f006d006500720049004400000000000000 ,
    0x2f7c3875dff7394b918f10678230ae9c07000000dbce053724824e42b50867bf ,
    0x5a132b4c43007500730074006f006d00650072004e0061006d00650000000000 ,
    0x000023f90a65a5f2654da5cca75bcdfdfe26070000005a1819734cb596418186 ,
    0x0fe7f17be7e453007500620074006f00740061006c0050007200690063006500 ,
    0x000000000000d2689b72faf3294bbffc66896d6fa788070000005a1819734cb5 ,
    0x964181860fe7f17be7e455007200670065006e00630079005000720069006300 ,
    0x65000000000000008f33cac3b635c148ab89b800c297bcf5070000005a181973 ,
    0x4cb5964181860fe7f17be7e454006100780000000000000022fde1e8d01ed048 ,
    0x87f35d942bd29789070000005a1819734cb5964181860fe7f17be7e453006800 ,
    0x69007000700069006e00670050007200690063006500000000000000bd07bb27 ,
    0xd4bbdf4a9be8963d3fc004a7070000005a1819734cb5964181860fe7f17be7e4 ,
    0x54006f00740061006c0050007200690063006500000000000000d8f202bbec0a ,
    0x17488ee00debdef5c389070000005a1819734cb5964181860fe7f17be7e45000 ,
    0x4f004e0075006d00620065007200000000000000b5c8022ccdeffa48b5f5397a ,
    0xbf2d0965070000005a1819734cb5964181860fe7f17be7e45000610079006d00 ,
    0x65006e0074005400720061006e00730061006300740069006f006e0049004400 ,
    0x00000000000012aef1ed55471a4cb0482c6f41a8adac07000000dbce05372482 ,
    0x4e42b50867bf5a132b4c5300680069007000700069006e006700410064006400 ,
    0x7200650073007300490044000000000000009dbe8512c83f9542b93e09e74231 ,
    0x23de070000005a1819734cb5964181860fe7f17be7e4620069006c006c006900 ,
    0x6e0067004100640064007200650073007300490044000000000000001bc57401 ,
    0xd94d9340bb97c6e2d1e4ba40070000005a1819734cb5964181860fe7f17be7e4 ,
    0x4f0072006400650072004400610074006500000000000000792b29457e405b4e ,
    0xbe475acf2aa34584070000005a1819734cb5964181860fe7f17be7e452006500 ,
    0x710075006900720065006400440061007400650000000000000036aa0f8ab338 ,
    0x534983001b5b597093d70700000031b72bd9918ea44294d75ceb301138394600 ,
    0x69007200730074006e0061006d0065000000000000001e8cc05823d4c240ae72 ,
    0x049ecac5af570700000031b72bd9918ea44294d75ceb301138396c0061007300 ,
    0x74006e0061006d006500000000000000a6991bae6fcf264ea91784c39fa63feb ,
    0x07000000f1b8fe97ddf7e844a5ed5257ff8c0b734f0072006400650072005200 ,
    0x650066006500720065006e00630065004e0061006d0065000000000000009ee1 ,
    0x5744a3e3544a9d125cc667fde80507000000dbce053724824e42b50867bf5a13 ,
    0x2b4c43007500730074006f006d0065007200490044000000000000003d159609 ,
    0xe1a1aa44904153457b64a673070000005a1819734cb5964181860fe7f17be7e4 ,
    0x55007300650072004900440000000000000032ef39a7d147fb4d92a206845c06 ,
    0x11f90700000031b72bd9918ea44294d75ceb3011383955007300650072004900 ,
    0x44000000000000007f7184f64d7bb543821b2f267f2843e10700000057948a3f ,
    0x50009e4982782c56944bafd04f00720064006500720049004400000000000000 ,
    0x61ff3a8bd325fc45842a49787f349f5d07000000f1b8fe97ddf7e844a5ed5257 ,
    0xff8c0b734f007200640065007200490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
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
        dbInteger "ColumnWidth" ="2310"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="ssQryOrderDetailsForReport.OrderReferenceName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =5
    Top =20
    Right =1608
    Bottom =977
    Left =-1
    Top =-1
    Right =1571
    Bottom =232
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
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="ssQryLiveOrderID"
        Name =""
    End
    Begin
        Left =816
        Top =12
        Right =1147
        Bottom =229
        Top =0
        Name ="ssQryOrderDetailsForReport"
        Name =""
    End
End
