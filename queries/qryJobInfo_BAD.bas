Operation =1
Option =0
Begin InputTables
    Name ="dbo_T_Product"
    Name ="dbo_T_JobPart"
    Name ="dbo_T_JobPartHistory"
End
Begin OutputColumns
    Expression ="dbo_T_Product.ProductID"
    Expression ="dbo_T_Product.ProductName"
    Expression ="dbo_T_Product.OrderNo"
    Expression ="dbo_T_JobPart.JobNo"
    Expression ="dbo_T_Product.Quantity"
    Expression ="dbo_T_Product.Status"
    Expression ="dbo_T_Product.OperatorID"
    Expression ="dbo_T_JobPart.JobGroupID"
    Expression ="dbo_T_JobPart.Priority"
    Expression ="dbo_T_JobPartHistory.StartDate"
    Expression ="dbo_T_JobPartHistory.FinishDate"
    Expression ="dbo_T_JobPart.TotalSheets"
    Expression ="dbo_T_JobPart.DeliverySheets"
    Alias ="JHours"
    Expression ="(DateDiff(\"n\",[dbo_T_JobPartHistory].[StartDate],[dbo_T_JobPartHistory].[Finis"
        "hDate])/60)"
    Expression ="dbo_T_JobPart.StartOrderDate"
    Expression ="dbo_T_JobPart.SettingStatus"
    Alias ="WorkingTimeH"
    Expression ="(([WorkingTime]-[MAKEREADYTIME])/60/60)"
    Alias ="MakeReadyTimeH"
    Expression ="([MakereadyTime]/60/60)"
    Expression ="dbo_T_JobPartHistory.WorkType"
    Expression ="dbo_T_JobPartHistory.TotalSheets"
    Expression ="dbo_T_JobPartHistory.PrintSheets"
    Expression ="dbo_T_JobPartHistory.GoodSheets"
    Expression ="dbo_T_JobPartHistory.SpeedAve"
    Expression ="dbo_T_JobPartHistory.MakereadySheets"
    Alias ="docketnum"
    Expression ="Val(Left([orderno],6))"
    Alias ="OpID"
    Expression ="(select  OperatorName from qryOperator where qryOperator.StartDate <= dbo_T_JobP"
        "art.FinishDate and qryOperator.FinishDate >= dbo_T_JobPart.StartDate)"
End
Begin Joins
    LeftTable ="dbo_T_Product"
    RightTable ="dbo_T_JobPart"
    Expression ="dbo_T_Product.ProductID = dbo_T_JobPart.ProductID"
    Flag =2
    LeftTable ="dbo_T_JobPart"
    RightTable ="dbo_T_JobPartHistory"
    Expression ="dbo_T_JobPart.JobPartID = dbo_T_JobPartHistory.JobPartID"
    Flag =2
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
    0x6bbc82992e100042b249df8e6a90271d
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000092bfe54b8ce3264581d79e12c51b5567000000007e048826 ,
    0x0fa8e4400000000000000000640062006f005f0054005f00500072006f006400 ,
    0x7500630074000000000000005a239477139e7d44a08b6c5371395c0800000000 ,
    0x56b85b260fa8e4400000000000000000640062006f005f0054005f004a006f00 ,
    0x620050006100720074000000000000005b4b61589f22dd4981c111f4686b6242 ,
    0x00000000a41065260fa8e4400000000000000000640062006f005f0054005f00 ,
    0x4a006f006200500061007200740048006900730074006f007200790000000000 ,
    0x0000fe6a5b7f247c79498db933575168b9f5070000006bbc82992e100042b249 ,
    0xdf8e6a90271d4a0048006f00750072007300000000000000564f755d352c284b ,
    0xa685588dd880ddfe070000006bbc82992e100042b249df8e6a90271d57006f00 ,
    0x72006b0069006e006700540069006d006500480000000000000045b58ddf8086 ,
    0xce47af2366589af6a2cb070000006bbc82992e100042b249df8e6a90271d4d00 ,
    0x61006b00650052006500610064007900540069006d0065004800000000000000 ,
    0x747f5f652e2fe94bb384813361676f66070000006bbc82992e100042b249df8e ,
    0x6a90271d64006f0063006b00650074006e0075006d000000000000007ba9e614 ,
    0xb9dbe440945f1e9d83966f3c070000006bbc82992e100042b249df8e6a90271d ,
    0x4f007000490044000000000000003e58f69845b3ea4ca48126cc3bd1ea8a0700 ,
    0x000092bfe54b8ce3264581d79e12c51b5567500072006f006400750063007400 ,
    0x49004400000000000000cf657d28c0691844962c00fcc92a3dc50700000092bf ,
    0xe54b8ce3264581d79e12c51b5567500072006f0064007500630074004e006100 ,
    0x6d006500000000000000d90d09fe96bbba4da0fc4fcc085ea1230700000092bf ,
    0xe54b8ce3264581d79e12c51b55674f0072006400650072004e006f0000000000 ,
    0x000041d50587fcf4cc4a8e0ff82179e26c98070000005a239477139e7d44a08b ,
    0x6c5371395c084a006f0062004e006f000000000000003aa75e1244d70341a498 ,
    0x883e39a9e1c50700000092bfe54b8ce3264581d79e12c51b5567510075006100 ,
    0x6e007400690074007900000000000000ed9f7235725e2543822600d18fbbd875 ,
    0x0700000092bfe54b8ce3264581d79e12c51b5567530074006100740075007300 ,
    0x000000000000ce73043bd55f4449ac89a57dfb50ec7c0700000092bfe54b8ce3 ,
    0x264581d79e12c51b55674f00700065007200610074006f007200490044000000 ,
    0x00000000cbab18d7af676d4c99084120032374f9070000005a239477139e7d44 ,
    0xa08b6c5371395c084a006f006200470072006f00750070004900440000000000 ,
    0x0000170af90e570bfb4695a7cd15ee530a14070000005a239477139e7d44a08b ,
    0x6c5371395c085000720069006f007200690074007900000000000000cf6dc719 ,
    0x159fca43b9facadd9b8d6d38070000005b4b61589f22dd4981c111f4686b6242 ,
    0x530074006100720074004400610074006500000000000000285757c4d1f18742 ,
    0xb2ed2efc0a8e6c2d070000005b4b61589f22dd4981c111f4686b624246006900 ,
    0x6e0069007300680044006100740065000000000000005837f201c5590b4f9aeb ,
    0xfafc319ba093070000005a239477139e7d44a08b6c5371395c0854006f007400 ,
    0x61006c0053006800650065007400730000000000000020a778ed278cd8429c20 ,
    0x036275f336c8070000005a239477139e7d44a08b6c5371395c08440065006c00 ,
    0x69007600650072007900530068006500650074007300000000000000951c4bae ,
    0x6729ec42b8115f93aa37b7c0070000005a239477139e7d44a08b6c5371395c08 ,
    0x530074006100720074004f007200640065007200440061007400650000000000 ,
    0x0000a55ca5ee18c79844ae8e695212f53ccc070000005a239477139e7d44a08b ,
    0x6c5371395c08530065007400740069006e006700530074006100740075007300 ,
    0x000000000000de5a9a15ff55aa4993aff4c8a206164b070000005b4b61589f22 ,
    0xdd4981c111f4686b624257006f0072006b0069006e006700540069006d006500 ,
    0x00000000000075e0e5d804cb7841954f035864fcbfbc070000005b4b61589f22 ,
    0xdd4981c111f4686b62424d0041004b0045005200450041004400590054004900 ,
    0x4d00450000000000000077b6ae5305d8954eb6cd1bfc53cd8d8d070000005b4b ,
    0x61589f22dd4981c111f4686b624257006f0072006b0054007900700065000000 ,
    0x00000000b0a6c38e12faac4a9047c484f5f31b03070000005b4b61589f22dd49 ,
    0x81c111f4686b624254006f00740061006c005300680065006500740073000000 ,
    0x00000000403cb60746e9ac459ba6d4a4ab4b4958070000005b4b61589f22dd49 ,
    0x81c111f4686b62425000720069006e0074005300680065006500740073000000 ,
    0x00000000c7c4d7f11ca25644bcdfad63b71cb1a8070000005b4b61589f22dd49 ,
    0x81c111f4686b624247006f006f00640053006800650065007400730000000000 ,
    0x0000138871f12c0fd049b72cd790e1b8e65c070000005b4b61589f22dd4981c1 ,
    0x11f4686b624253007000650065006400410076006500000000000000b39ca522 ,
    0x71284949b9f9fa333b812109070000005b4b61589f22dd4981c111f4686b6242 ,
    0x4d0061006b006500720065006100640079005300680065006500740073000000 ,
    0x00000000000000000000000000000000000000000d0000000000000000000000 ,
    0x0000000000000000000000000000e98a2e6bab82c440b67468e363b350790700 ,
    0x00005a239477139e7d44a08b6c5371395c08500072006f006400750063007400 ,
    0x49004400000000000000849f235b51c76042be10cfb436b76208070000005a23 ,
    0x9477139e7d44a08b6c5371395c084a006f006200500061007200740049004400 ,
    0x00000000000061ac5339ba7cf249b9eb6253f8326f19070000005b4b61589f22 ,
    0xdd4981c111f4686b62424a006f00620050006100720074004900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_T_Product.ProductName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaeabc3f53bbd7643a398aa260399448e
        End
    End
    Begin
        dbText "Name" ="dbo_T_Product.OrderNo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c634c1ee12639458a7ee8bb98438548
        End
    End
    Begin
        dbText "Name" ="dbo_T_Product.Quantity"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe8871bc1fae7844aaa2e357798c8c4c2
        End
    End
    Begin
        dbText "Name" ="dbo_T_Product.Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a7a5022272f2347a405d708f1028e35
        End
    End
    Begin
        dbText "Name" ="dbo_T_Product.OperatorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c5b5bf837426441bcb071092be077df
        End
        dbInteger "ColumnWidth" ="1455"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.JobNo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea1b7c6a1c6cd6498983fdc14d59469d
        End
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.TotalSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x178de304278ec84fa226aea32c0f201b
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.DeliverySheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.JobGroupID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.StartOrderDate"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.SettingStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_Product.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.StartDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.FinishDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.WorkType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.TotalSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2a3797af5d15e64fb467a9620cd5cee6
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.PrintSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.GoodSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.SpeedAve"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MakeReadyTimeH"
        dbInteger "ColumnWidth" ="2175"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x45b58ddf8086ce47af2366589af6a2cb
        End
    End
    Begin
        dbText "Name" ="JHours"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfe6a5b7f247c79498db933575168b9f5
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.MakereadySheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="OpID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ba9e614b9dbe440945f1e9d83966f3c
        End
    End
    Begin
        dbText "Name" ="WorkingTimeH"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x564f755d352c284ba685588dd880ddfe
        End
    End
    Begin
        dbText "Name" ="docketnum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x747f5f652e2fe94bb384813361676f66
        End
    End
End
Begin
    State =0
    Left =6
    Top =8
    Right =2133
    Bottom =845
    Left =-1
    Top =-1
    Right =2095
    Bottom =315
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =238
        Bottom =362
        Top =0
        Name ="dbo_T_Product"
        Name =""
    End
    Begin
        Left =273
        Top =13
        Right =468
        Bottom =399
        Top =0
        Name ="dbo_T_JobPart"
        Name =""
    End
    Begin
        Left =590
        Top =23
        Right =759
        Bottom =456
        Top =0
        Name ="dbo_T_JobPartHistory"
        Name =""
    End
End
