Operation =1
Option =0
Where ="(((dbo_CompanyEmployee.IsActive)=True))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyEmployeeShiftManagement"
End
Begin OutputColumns
    Alias ="CompanyEmployeeID"
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployeeShiftManagement.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_CompanyEmployee.Title"
    Expression ="dbo_CompanyEmployee.Department"
    Expression ="dbo_CompanyEmployee.LocationID"
    Expression ="dbo_CompanyEmployee.ManagerID"
    Expression ="dbo_CompanyEmployee.StaffCategoryID"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_1"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_1"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_2"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_2"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_3"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_3"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_4"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_4"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_5"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_5"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_6"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_6"
    Expression ="dbo_CompanyEmployeeShiftManagement.Start_7"
    Expression ="dbo_CompanyEmployeeShiftManagement.End_7"
    Expression ="dbo_CompanyEmployee.IsActive"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyEmployeeShiftManagement"
    Expression ="dbo_CompanyEmployee.ID = dbo_CompanyEmployeeShiftManagement.CompanyEmployeeID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.LN"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xacb93f6d051c7a4c9bfa0ba4fe1a4aee
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa00000000d9e88864 ,
    0x0ed5e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065000000000000005199e51b880a004f ,
    0x9665cd44825eb13a00000000d7c48c640ed5e440000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x6500530068006900660074004d0061006e006100670065006d0065006e007400 ,
    0x00000000000068bb3e226e4ee54f8f86930e849c9f4007000000acb93f6d051c ,
    0x7a4c9bfa0ba4fe1a4aee43006f006d00700061006e00790045006d0070006c00 ,
    0x6f0079006500650049004400000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x4e5de066b5f9ba4185e85a5c23a5cd80070000005199e51b880a004f9665cd44 ,
    0x825eb13a49004400000000000000238a70cc04f1b542bd79b33633915bc60700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa46004e0000000000000027afc0ba ,
    0x5db60e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x4c004e00000000000000015b0fe65bb95b4fabb6d2a701b973040700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa5400690074006c0065000000000000006b86 ,
    0x29bfd016cc4cbd0e98316df1fa2c0700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa4400650070006100720074006d0065006e007400000000000000513307b4 ,
    0x9cec0445b2596271a25d223a0700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x4c006f0063006100740069006f006e00490044000000000000004ef00306ce78 ,
    0xb641afe530ce07977c290700000039a4960a0ccbe542ab18e42cf68884fa4d00 ,
    0x61006e00610067006500720049004400000000000000e2e15894c38f5b4cbe20 ,
    0x2ab0bf8ffced0700000039a4960a0ccbe542ab18e42cf68884fa530074006100 ,
    0x66006600430061007400650067006f0072007900490044000000000000007fd4 ,
    0x187ee00434409c3d3a79c54fbdef070000005199e51b880a004f9665cd44825e ,
    0xb13a530074006100720074005f003100000000000000b50c57061522bf4eb665 ,
    0xa28f6af49250070000005199e51b880a004f9665cd44825eb13a45006e006400 ,
    0x5f00310000000000000065379d0d3a33a64793202c004d06cac0070000005199 ,
    0xe51b880a004f9665cd44825eb13a530074006100720074005f00320000000000 ,
    0x0000daf7b39d7b309e4ab49794d9b34d2d04070000005199e51b880a004f9665 ,
    0xcd44825eb13a45006e0064005f003200000000000000bc9aa1e65275d44cac13 ,
    0xaa457a55d9ff070000005199e51b880a004f9665cd44825eb13a530074006100 ,
    0x720074005f00330000000000000096d7d56562c9f648bc75a9259a9cd4660700 ,
    0x00005199e51b880a004f9665cd44825eb13a45006e0064005f00330000000000 ,
    0x0000bc0195267382074fb50798ca9704ddac070000005199e51b880a004f9665 ,
    0xcd44825eb13a530074006100720074005f003400000000000000dd44b33e2748 ,
    0xf04c9c084e1a3e06fc4b070000005199e51b880a004f9665cd44825eb13a4500 ,
    0x6e0064005f003400000000000000affc1f1381108245904dec07d6cf6d940700 ,
    0x00005199e51b880a004f9665cd44825eb13a530074006100720074005f003500 ,
    0x000000000000cb41a22825ff5741895510a88bd72731070000005199e51b880a ,
    0x004f9665cd44825eb13a45006e0064005f003500000000000000fe0cabb2c229 ,
    0x0a409c1a95b1bb3c6edf070000005199e51b880a004f9665cd44825eb13a5300 ,
    0x74006100720074005f003600000000000000990a3ed2fc6bc04b82f4626df269 ,
    0x350c070000005199e51b880a004f9665cd44825eb13a45006e0064005f003600 ,
    0x000000000000b3e3654fcbc83f41a8c4c7ecf45af56a070000005199e51b880a ,
    0x004f9665cd44825eb13a530074006100720074005f0037000000000000006490 ,
    0xf1188d0f53459d4ed0f932e13420070000005199e51b880a004f9665cd44825e ,
    0xb13a45006e0064005f00370000000000000065634c04fc14254c9348cee3d3ff ,
    0x40f00700000039a4960a0ccbe542ab18e42cf68884fa49007300410063007400 ,
    0x690076006500000000000000b2aecc04c972e64bbee5722ccb32ae9407000000 ,
    0x5199e51b880a004f9665cd44825eb13a43006f006d00700061006e0079004500 ,
    0x6d0070006c006f00790065006500490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_7"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x92401532605eb1478528bb97537af63c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeb7eb1e7ec1896479cd0b6352f2c6dcd
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9df5aaa1be0cac449242db6c6f202b99
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57ea2a893beec6498e17b649c07be1e8
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.StaffCategoryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5362e0198095d4468c2ff27bc400dc41
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa1335b79b8c88a40964b264bc4687e0d
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a6a31b41ca0fe4ab3d9fb960032b84b
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_6"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa0825e5a2c3c9345b0b935a12279d96f
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_6"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x289148bc46125347b7fbf5093b765806
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_7"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd1aa1710dbc4fb4782bd30fb6924fd7d
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde03389c5b0086489cb103b4342c47ad
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15a70c903f6fe943938a500a593a32bd
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ManagerID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x34f2abd18239a04da2d805064798f4a3
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x369768d1d4a2464bb3ac0e76302cea30
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa81638069736c34f829796589e2c559a
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8f75dcc58bc30846a12bd24d8fba65da
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4af5fc1cdf0aee4ba33a01300cb923c5
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4faa7e0fd155cb4a8f9e3a5c51ef1df0
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfdd6e75a2c90c34ab71168f3c4f630b7
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.Start_4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x10f5748c3e252e42b2111db92a0f142f
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.End_4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6c4b08e8eef3a428a1af19602b1d52c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeShiftManagement.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68bb3e226e4ee54f8f86930e849c9f40
        End
    End
End
Begin
    State =0
    Left =39
    Top =88
    Right =1560
    Bottom =859
    Left =-1
    Top =-1
    Right =1489
    Bottom =368
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =352
        Bottom =338
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =473
        Top =12
        Right =908
        Bottom =362
        Top =0
        Name ="dbo_CompanyEmployeeShiftManagement"
        Name =""
    End
End
