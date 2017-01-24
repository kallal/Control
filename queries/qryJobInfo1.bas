dbMemo "SQL" ="SELECT dbo_T_Product.ProductID, dbo_T_Product.ProductName, dbo_T_Product.OrderNo"
    ", dbo_T_JobPart.JobNo, dbo_T_Product.Quantity, dbo_T_Product.Status, dbo_T_Produ"
    "ct.OperatorID, dbo_M_WorkOperator.OperatorName, dbo_T_JobPart.JobGroupID, dbo_T_"
    "JobPart.Priority, dbo_T_JobPartHistory.StartDate, dbo_T_JobPartHistory.FinishDat"
    "e, dbo_T_JobPart.TotalSheets, dbo_T_JobPart.DeliverySheets, (DateDiff(\"n\",[dbo"
    "_T_JobPartHistory].[StartDate],[dbo_T_JobPartHistory].[FinishDate])/60) AS JHour"
    "s, dbo_T_JobPart.StartOrderDate, dbo_T_JobPart.SettingStatus, ([MakereadyTime]/6"
    "0/60) AS MakeReadyTimeH, dbo_T_JobPartHistory.WorkType, dbo_T_JobPartHistory.Tot"
    "alSheets, dbo_T_JobPartHistory.PrintSheets, dbo_T_JobPartHistory.GoodSheets, dbo"
    "_T_JobPartHistory.SpeedAve, dbo_T_JobPartHistory.MakereadySheets\015\012FROM ((d"
    "bo_T_Product LEFT JOIN dbo_T_JobPart ON dbo_T_Product.ProductID = dbo_T_JobPart."
    "ProductID) LEFT JOIN dbo_M_WorkOperator ON dbo_T_Product.OperatorID = dbo_M_Work"
    "Operator.OperatorID) LEFT JOIN dbo_T_JobPartHistory ON dbo_T_JobPart.JobPartID ="
    " dbo_T_JobPartHistory.JobPartID;\015\012"
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
    0x5d53156699ac1747a13e602708c8a3a6
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c67dfac3f08a084e96da7c357218cbf100000000242448c1 ,
    0xea62e4400000000000000000640062006f005f0054005f00500072006f006400 ,
    0x750063007400000000000000bd04abdc9da0ae44b2fc0d58b2fb6f8b00000000 ,
    0x656d3fc1ea62e4400000000000000000640062006f005f0054005f004a006f00 ,
    0x620050006100720074000000000000009bec6967df2c514bb2029c5eb07e3f4c ,
    0x0000000079a634c1ea62e4400000000000000000640062006f005f004d005f00 ,
    0x57006f0072006b004f00700065007200610074006f00720000000000000035e3 ,
    0x2080f722854a87bf1048d6b1401100000000922641c1ea62e440000000000000 ,
    0x0000640062006f005f0054005f004a006f006200500061007200740048006900 ,
    0x730074006f0072007900000000000000fe6a5b7f247c79498db933575168b9f5 ,
    0x07000000000000000000000000000000000000004a0048006f00750072007300 ,
    0x00000000000045b58ddf8086ce47af2366589af6a2cb07000000000000000000 ,
    0x000000000000000000004d0061006b0065005200650061006400790054006900 ,
    0x6d00650048000000000000002e1c545e84ae884da906f54e0f82ce3007000000 ,
    0xc67dfac3f08a084e96da7c357218cbf1500072006f0064007500630074004900 ,
    0x4400000000000000347d062770b2114795479d04ffc7767807000000c67dfac3 ,
    0xf08a084e96da7c357218cbf1500072006f0064007500630074004e0061006d00 ,
    0x6500000000000000cfa40cb325b8d14ba0b97466f251b51107000000c67dfac3 ,
    0xf08a084e96da7c357218cbf14f0072006400650072004e006f00000000000000 ,
    0xb5cc9189d495004ab362c071504ee97607000000bd04abdc9da0ae44b2fc0d58 ,
    0xb2fb6f8b4a006f0062004e006f00000000000000ff07fc305fe35942abab75fd ,
    0x7d89554107000000c67dfac3f08a084e96da7c357218cbf15100750061006e00 ,
    0x740069007400790000000000000083c83d0361feb041b7b0c091c740b2b90700 ,
    0x0000c67dfac3f08a084e96da7c357218cbf15300740061007400750073000000 ,
    0x0000000010da8ffa9c6a4e45b8081ec0bdc9132a07000000c67dfac3f08a084e ,
    0x96da7c357218cbf14f00700065007200610074006f0072004900440000000000 ,
    0x00004cc4f143d62d154a880543411b75e13c070000009bec6967df2c514bb202 ,
    0x9c5eb07e3f4c4f00700065007200610074006f0072004e0061006d0065000000 ,
    0x00000000e3678936f1aa534ba32d03e18eb3d76307000000bd04abdc9da0ae44 ,
    0xb2fc0d58b2fb6f8b4a006f006200470072006f00750070004900440000000000 ,
    0x0000342e59e31ebb294ca5f64ef81563dece07000000bd04abdc9da0ae44b2fc ,
    0x0d58b2fb6f8b5000720069006f007200690074007900000000000000bae22c11 ,
    0x9dbc4747ad1b2e641e38d4490700000035e32080f722854a87bf1048d6b14011 ,
    0x5300740061007200740044006100740065000000000000002e924a2950244246 ,
    0xb86848fba9a87dca0700000035e32080f722854a87bf1048d6b1401146006900 ,
    0x6e0069007300680044006100740065000000000000009d3b709c88b6e14598ef ,
    0x07a251d1563907000000bd04abdc9da0ae44b2fc0d58b2fb6f8b54006f007400 ,
    0x61006c005300680065006500740073000000000000009cbd2de4a0f2af418ca1 ,
    0xb06d856d80de07000000bd04abdc9da0ae44b2fc0d58b2fb6f8b440065006c00 ,
    0x69007600650072007900530068006500650074007300000000000000905884f8 ,
    0x11da314183f0569dd11dde5907000000bd04abdc9da0ae44b2fc0d58b2fb6f8b ,
    0x530074006100720074004f007200640065007200440061007400650000000000 ,
    0x0000d59d82316f08824395acf8f66b06987c07000000bd04abdc9da0ae44b2fc ,
    0x0d58b2fb6f8b530065007400740069006e006700530074006100740075007300 ,
    0x000000000000c504d32446b3cb4eb5e91d32204b5bd90700000035e32080f722 ,
    0x854a87bf1048d6b140114d0061006b0065007200650061006400790054006900 ,
    0x6d006500000000000000a4543780a990b540ad3cdbea0e71b5590700000035e3 ,
    0x2080f722854a87bf1048d6b1401157006f0072006b0054007900700065000000 ,
    0x0000000079a5dace2a5c254d89e80425ef8dacfa0700000035e32080f722854a ,
    0x87bf1048d6b1401154006f00740061006c005300680065006500740073000000 ,
    0x00000000a88e90feb96d6e4a99bca60a158283de0700000035e32080f722854a ,
    0x87bf1048d6b140115000720069006e0074005300680065006500740073000000 ,
    0x000000003b024bfe4ae1024f89b82d5efdc3e0500700000035e32080f722854a ,
    0x87bf1048d6b1401147006f006f00640053006800650065007400730000000000 ,
    0x000011f7d2ec97cae04db9e4395faf0122230700000035e32080f722854a87bf ,
    0x1048d6b140115300700065006500640041007600650000000000000018c7dfed ,
    0xf3747e459dbf877c7e6695100700000035e32080f722854a87bf1048d6b14011 ,
    0x4d0061006b006500720065006100640079005300680065006500740073000000 ,
    0x00000000ac9415d48d01184cb0ed37d696ab4b6607000000bd04abdc9da0ae44 ,
    0xb2fc0d58b2fb6f8b500072006f00640075006300740049004400000000000000 ,
    0x94df94ce3de32946ada899d8c2752875070000009bec6967df2c514bb2029c5e ,
    0xb07e3f4c4f00700065007200610074006f007200490044000000000000003600 ,
    0x52d630204b43aa5e8f25796feaf807000000bd04abdc9da0ae44b2fc0d58b2fb ,
    0x6f8b4a006f0062005000610072007400490044000000000000005423e4d3163b ,
    0x5c4f93890f80262ab0f90700000035e32080f722854a87bf1048d6b140114a00 ,
    0x6f00620050006100720074004900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.DeliverySheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_M_WorkOperator.OperatorName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
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
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.FinishDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.WorkType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPartHistory.TotalSheets"
        dbLong "AggregateType" ="-1"
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
End
