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
    0x0acc0e5500000000bd04abdc9da0ae44b2fc0d58b2fb6f8b000000009f786c57 ,
    0x8d67e4400000000000000000640062006f005f0054005f004a006f0062005000 ,
    0x610072007400000000000000c67dfac3f08a084e96da7c357218cbf100000000 ,
    0x6d7772578d67e4400000000000000000640062006f005f0054005f0050007200 ,
    0x6f006400750063007400000000000000360052d630204b43aa5e8f25796feaf8 ,
    0x07000000bd04abdc9da0ae44b2fc0d58b2fb6f8b4a006f006200500061007200 ,
    0x7400490044000000000000007acd6396f089414fac25a02342dafb3007000000 ,
    0xbd04abdc9da0ae44b2fc0d58b2fb6f8b4a006f00620050006100720074004e00 ,
    0x61006d0065000000000000003b155dfce5b7a244b73d0d5110a35bcf07000000 ,
    0xbd04abdc9da0ae44b2fc0d58b2fb6f8b44006500760069006300650049004400 ,
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
