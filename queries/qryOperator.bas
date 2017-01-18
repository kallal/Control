dbMemo "SQL" ="SELECT dbo_T_OperatorHistory.OperatorID, dbo_T_OperatorHistory.DeviceID, dbo_T_O"
    "peratorHistory.StartDate, dbo_T_OperatorHistory.FinishDate, dbo_M_WorkOperator.O"
    "peratorName, dbo_M_DeviceInfo.DeviceName, dbo_M_DeviceInfo.ComputerName\015\012F"
    "ROM (dbo_T_OperatorHistory INNER JOIN dbo_M_WorkOperator ON dbo_T_OperatorHistor"
    "y.OperatorID = dbo_M_WorkOperator.OperatorID) LEFT JOIN dbo_M_DeviceInfo ON dbo_"
    "T_OperatorHistory.DeviceID = dbo_M_DeviceInfo.DeviceID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x1b6dc003cd2ea546b24f11f279887f4f
End
dbMemo "OrderBy" ="[qryOperator].[StartDate] DESC"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e045ebeff504844da53aa056ef65eec800000000773f46c1 ,
    0xea62e4400000000000000000640062006f005f0054005f004f00700065007200 ,
    0x610074006f00720048006900730074006f00720079000000000000009bec6967 ,
    0xdf2c514bb2029c5eb07e3f4c0000000079a634c1ea62e4400000000000000000 ,
    0x640062006f005f004d005f0057006f0072006b004f0070006500720061007400 ,
    0x6f007200000000000000699099b1863c8e448d7d9d55b615ad4000000000354e ,
    0x30c1ea62e4400000000000000000640062006f005f004d005f00440065007600 ,
    0x69006300650049006e0066006f0000000000000008a5a015b48ac84cb9443155 ,
    0x9e76bc9a07000000e045ebeff504844da53aa056ef65eec84f00700065007200 ,
    0x610074006f007200490044000000000000000288c79b73a48a46b408f23096e3 ,
    0x9eec07000000e045ebeff504844da53aa056ef65eec844006500760069006300 ,
    0x650049004400000000000000ab91e2aac5e8b04081d6f2e2b54e0db007000000 ,
    0xe045ebeff504844da53aa056ef65eec853007400610072007400440061007400 ,
    0x6500000000000000f0df772e439c69479ed547c3c80b31ed07000000e045ebef ,
    0xf504844da53aa056ef65eec8460069006e006900730068004400610074006500 ,
    0x0000000000004cc4f143d62d154a880543411b75e13c070000009bec6967df2c ,
    0x514bb2029c5eb07e3f4c4f00700065007200610074006f0072004e0061006d00 ,
    0x650000000000000049af99b0c602fa47aa1ebf755f157d6e07000000699099b1 ,
    0x863c8e448d7d9d55b615ad404400650076006900630065004e0061006d006500 ,
    0x000000000000de7bb11e56d1084c93f4c9f8afbd8aff07000000699099b1863c ,
    0x8e448d7d9d55b615ad4043006f006d00700075007400650072004e0061006d00 ,
    0x650000000000000094df94ce3de32946ada899d8c2752875070000009bec6967 ,
    0xdf2c514bb2029c5eb07e3f4c4f00700065007200610074006f00720049004400 ,
    0x00000000000046c1ae9aed61d34caff631d002f168b207000000699099b1863c ,
    0x8e448d7d9d55b615ad4044006500760069006300650049004400000000000000 ,
    0x1b6dc003cd2ea546b24f11f279887f4f0000000006d8476fec62e44000000000 ,
    0x000000007100720079004f00700065007200610074006f007200000000000000 ,
    0xfbdc0567af9f8340862105c602342a4b070000001b6dc003cd2ea546b24f11f2 ,
    0x79887f4f53007400610072007400440061007400650000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_T_OperatorHistory.OperatorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd5f7421fda196d4ebb3bf0370ed322aa
        End
    End
    Begin
        dbText "Name" ="dbo_T_OperatorHistory.DeviceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x175afce4392d4a499b5353176cfcf76d
        End
    End
    Begin
        dbText "Name" ="dbo_T_OperatorHistory.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfbdc0567af9f8340862105c602342a4b
        End
    End
    Begin
        dbText "Name" ="dbo_T_OperatorHistory.FinishDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9957aafb6064324bb87496dc9a9ba2b9
        End
    End
    Begin
        dbText "Name" ="dbo_M_WorkOperator.OperatorName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac7e1ffa22e4324fad590242676f79a2
        End
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_M_DeviceInfo.DeviceName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_M_DeviceInfo.ComputerName"
        dbLong "AggregateType" ="-1"
    End
End
