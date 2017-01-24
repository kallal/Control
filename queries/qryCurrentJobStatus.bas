Operation =1
Option =0
Begin InputTables
    Name ="dbo_T_JobPartWorking"
    Name ="dbo_T_JobPart"
    Name ="dbo_T_Product"
End
Begin OutputColumns
    Expression ="dbo_T_JobPartWorking.JobPartID"
    Expression ="dbo_T_JobPartWorking.StartDate"
    Expression ="dbo_T_JobPart.JobPartName"
    Expression ="dbo_T_JobPart.JobNo"
    Expression ="dbo_T_JobPart.ProductID"
    Expression ="dbo_T_Product.ProductName"
    Expression ="dbo_T_Product.OrderNo"
    Expression ="dbo_T_JobPartWorking.TotalSheets"
    Expression ="dbo_T_JobPartWorking.PrintSheets"
    Expression ="dbo_T_JobPartWorking.MakereadySheets"
    Expression ="dbo_T_JobPartWorking.SpeedAve"
    Expression ="dbo_T_JobPart.SmallViewU"
    Expression ="dbo_T_JobPart.SheetName"
    Alias ="Projectname"
    Expression ="DLookUp(\"[projectname]\",\"dbo_ProjectHeader\",\"[docketnum] = \" & [dbo_T_Prod"
        "uct]![orderno])"
    Alias ="CompID"
    Expression ="DLookUp(\"[ContactGeneralID]\",\"dbo_ProjectHeader\",\"[docketnum] = \" & [dbo_T"
        "_Product]![orderno])"
    Alias ="CompName"
    Expression ="DLookUp(\"[compname]\",\"dbo_ContactGeneral\",\"[id] = \" & [compid])"
End
Begin Joins
    LeftTable ="dbo_T_JobPartWorking"
    RightTable ="dbo_T_JobPart"
    Expression ="dbo_T_JobPartWorking.JobPartID = dbo_T_JobPart.JobPartID"
    Flag =2
    LeftTable ="dbo_T_JobPart"
    RightTable ="dbo_T_Product"
    Expression ="dbo_T_JobPart.ProductID = dbo_T_Product.ProductID"
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
    0x7f0a85fc60adac4597902248d266ef96
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000005126cc0796ec1042a0d5d31f10b6a29400000000ba7d2e83 ,
    0x73a5e4400000000000000000640062006f005f0054005f004a006f0062005000 ,
    0x61007200740057006f0072006b0069006e0067000000000000005a239477139e ,
    0x7d44a08b6c5371395c0800000000d7235d82b69be44000000000000000006400 ,
    0x62006f005f0054005f004a006f006200500061007200740000000000000092bf ,
    0xe54b8ce3264581d79e12c51b556700000000ec9e6382b69be440000000000000 ,
    0x0000640062006f005f0054005f00500072006f00640075006300740000000000 ,
    0x000013a9c93b628b964e8e88ab8d63691228070000007f0a85fc60adac459790 ,
    0x2248d266ef96500072006f006a006500630074006e0061006d00650000000000 ,
    0x000027a043e59ac8fc40b3237b5715efa051070000007f0a85fc60adac459790 ,
    0x2248d266ef9643006f006d007000490044000000000000004346e3a57af1914c ,
    0xb4b5a077ceb765da070000007f0a85fc60adac4597902248d266ef9643006f00 ,
    0x6d0070004e0061006d006500000000000000e1bef5d55e80604d94c15f091840 ,
    0xdedb070000005126cc0796ec1042a0d5d31f10b6a2944a006f00620050006100 ,
    0x72007400490044000000000000007134bae65606094795ed3d99e92743fd0700 ,
    0x00005126cc0796ec1042a0d5d31f10b6a2945300740061007200740044006100 ,
    0x740065000000000000000939af19c35ef942b1514ef9d82a7bfc070000005a23 ,
    0x9477139e7d44a08b6c5371395c084a006f00620050006100720074004e006100 ,
    0x6d00650000000000000041d50587fcf4cc4a8e0ff82179e26c98070000005a23 ,
    0x9477139e7d44a08b6c5371395c084a006f0062004e006f00000000000000e98a ,
    0x2e6bab82c440b67468e363b35079070000005a239477139e7d44a08b6c537139 ,
    0x5c08500072006f00640075006300740049004400000000000000cf657d28c069 ,
    0x1844962c00fcc92a3dc50700000092bfe54b8ce3264581d79e12c51b55675000 ,
    0x72006f0064007500630074004e0061006d006500000000000000d90d09fe96bb ,
    0xba4da0fc4fcc085ea1230700000092bfe54b8ce3264581d79e12c51b55674f00 ,
    0x72006400650072004e006f000000000000000318749cde3cbe4d865601747fa9 ,
    0x4648070000005126cc0796ec1042a0d5d31f10b6a29454006f00740061006c00 ,
    0x530068006500650074007300000000000000118bbfbc5745984cb67bc6d0500d ,
    0x36d1070000005126cc0796ec1042a0d5d31f10b6a2945000720069006e007400 ,
    0x5300680065006500740073000000000000005db6db22cf0fd94da1b4c543381c ,
    0x7bb0070000005126cc0796ec1042a0d5d31f10b6a2944d0061006b0065007200 ,
    0x6500610064007900530068006500650074007300000000000000e7b6c07ecbdf ,
    0x214996e5653d3ecbfd51070000005126cc0796ec1042a0d5d31f10b6a2945300 ,
    0x7000650065006400410076006500000000000000df47b4475d92de4db78224f3 ,
    0x4628194a070000005a239477139e7d44a08b6c5371395c0853006d0061006c00 ,
    0x6c0056006900650077005500000000000000a1cdaf29a5886f429935aa9cc58d ,
    0x0eb9070000005a239477139e7d44a08b6c5371395c0853006800650065007400 ,
    0x4e0061006d006500000000000000849f235b51c76042be10cfb436b762080700 ,
    0x00005a239477139e7d44a08b6c5371395c084a006f0062005000610072007400 ,
    0x490044000000000000003e58f69845b3ea4ca48126cc3bd1ea8a0700000092bf ,
    0xe54b8ce3264581d79e12c51b5567500072006f00640075006300740049004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_T_JobPartWorking.JobPartID"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1829f4770db47c4ebcecfb9c6bae3af3
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartWorking.StartDate"
        dbInteger "ColumnWidth" ="3270"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2084efb3ebdd47408c19fefee96698d0
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.JobPartName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ea84a1adb142e4bb4c9f1507030d47b
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.JobNo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb5a761689fd52d4ea5dd11c8ba1b8f37
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.ProductID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf82eddb07e42ae44909bdeeb8da019eb
        End
    End
    Begin
        dbText "Name" ="dbo_T_Product.ProductName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe5525e7f775b19489536fe6a7d85e4b1
        End
    End
    Begin
        dbText "Name" ="dbo_T_Product.OrderNo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97d52c2498a93846917004c2559a815d
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartWorking.TotalSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5aaf38940bff5241add3b79a5aff7f57
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartWorking.MakereadySheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfdb7a1a21057f745b6d8a49f17f0eb50
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartWorking.PrintSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b8fbb0027d67241b733a57693409894
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPartWorking.SpeedAve"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca4955466496d34f9b7eeb1f69d15e2b
        End
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.SmallViewU"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.SheetName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Projectname"
        dbInteger "ColumnWidth" ="3060"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x13a9c93b628b964e8e88ab8d63691228
        End
    End
    Begin
        dbText "Name" ="CompID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x27a043e59ac8fc40b3237b5715efa051
        End
        dbInteger "ColumnWidth" ="2505"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CompName"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4346e3a57af1914cb4b5a077ceb765da
        End
    End
End
Begin
    State =0
    Left =26
    Top =54
    Right =1559
    Bottom =923
    Left =-1
    Top =-1
    Right =1501
    Bottom =348
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_T_JobPartWorking"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="dbo_T_JobPart"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="dbo_T_Product"
        Name =""
    End
End
