dbMemo "SQL" ="SELECT dbo_T_JobPart.JobPartID, dbo_T_JobPart.JobPartName, dbo_T_Product.DeviceI"
    "D, dbo_T_Product.FinishStatus\015\012FROM dbo_T_JobPart LEFT JOIN dbo_T_Product "
    "ON dbo_T_JobPart.JobPartID = dbo_T_Product.JobPartID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x66a8b498fa500f4eb9133c38ed7ae08e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000005a239477139e7d44a08b6c5371395c080000000085d92c6e ,
    0xcedae4400000000000000000640062006f005f0054005f004a006f0062005000 ,
    0x61007200740000000000000092bfe54b8ce3264581d79e12c51b556700000000 ,
    0x9ed4356ecedae4400000000000000000640062006f005f0054005f0050007200 ,
    0x6f006400750063007400000000000000849f235b51c76042be10cfb436b76208 ,
    0x070000005a239477139e7d44a08b6c5371395c084a006f006200500061007200 ,
    0x7400490044000000000000000939af19c35ef942b1514ef9d82a7bfc07000000 ,
    0x5a239477139e7d44a08b6c5371395c084a006f00620050006100720074004e00 ,
    0x61006d006500000000000000b98bdc047e05d4448f24f98dd99d2b3907000000 ,
    0x5a239477139e7d44a08b6c5371395c0844006500760069006300650049004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_T_JobPart.JobPartID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_JobPart.JobPartName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_Product.DeviceID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_Product.FinishStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DeviceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2f29fbe7d58a394683da7c1744683670
        End
    End
    Begin
        dbText "Name" ="FinishStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a2ede5334e25144bb389e0cc84c7f6c
        End
    End
End
