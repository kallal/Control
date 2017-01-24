Operation =1
Option =0
Having ="(((Last(dbo_LoginHistory.LastHeartbeat))>Now()-1))"
Begin InputTables
    Name ="dbo_LoginHistory"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_Station"
End
Begin OutputColumns
    Alias ="LoginName"
    Expression ="[fn] & \" \" & [ln]"
    Expression ="dbo_Station.StationName"
    Expression ="dbo_LoginHistory.PCName"
    Alias ="LastOfID"
    Expression ="Last(dbo_LoginHistory.ID)"
    Alias ="LastOfLoginDateTime"
    Expression ="Last(dbo_LoginHistory.LoginDateTime)"
    Alias ="LastOfLastHeartbeat"
    Expression ="Last(dbo_LoginHistory.LastHeartbeat)"
    Alias ="LastOfPCUserName"
    Expression ="Last(dbo_LoginHistory.PCUserName)"
    Alias ="LastOfIPAddress"
    Expression ="Last(dbo_LoginHistory.IPAddress)"
    Alias ="LastOfSoftwareVersion"
    Expression ="Last(dbo_LoginHistory.SoftwareVersion)"
End
Begin Joins
    LeftTable ="dbo_LoginHistory"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_LoginHistory.EmployeeID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_LoginHistory"
    RightTable ="dbo_Station"
    Expression ="dbo_LoginHistory.StationID = dbo_Station.id"
    Flag =2
End
Begin OrderBy
    Expression ="[fn] & \" \" & [ln]"
    Flag =0
    Expression ="Last(dbo_LoginHistory.LoginDateTime)"
    Flag =1
End
Begin Groups
    Expression ="[fn] & \" \" & [ln]"
    GroupLevel =0
    Expression ="dbo_Station.StationName"
    GroupLevel =0
    Expression ="dbo_LoginHistory.PCName"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xa637e4d6036a184cbc0fea2e3c721d06
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000078f3e695f0905149a9e27ed94c95c91c00000000f42f35da ,
    0x0dd8e4400000000000000000640062006f005f004c006f00670069006e004800 ,
    0x6900730074006f007200790000000000000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa00000000077e19da0dd8e4400000000000000000640062006f005f004300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650000000000 ,
    0x00005f5d8649d2e04846ac2d27b6a706a09000000000826966da0dd8e4400000 ,
    0x000000000000640062006f005f00530074006100740069006f006e0000000000 ,
    0x00003ad83f2bcadf164f874c7e65b16fbaab07000000a637e4d6036a184cbc0f ,
    0xea2e3c721d064c006f00670069006e004e0061006d0065000000000000008004 ,
    0x280cb8d5f800a4d5f8006471130c07000000a637e4d6036a184cbc0fea2e3c72 ,
    0x1d064c006100730074004f00660049004400000000000000238a70cc04f1b542 ,
    0xbd79b33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa66006e00 ,
    0x00000000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa6c006e000000000000002222effada5980429e1ee9ed ,
    0x0305beec070000005f5d8649d2e04846ac2d27b6a706a0905300740061007400 ,
    0x69006f006e004e0061006d006500000000000000adb4048791f2554c977fc7d9 ,
    0xa6fc22180700000078f3e695f0905149a9e27ed94c95c91c500043004e006100 ,
    0x6d006500000000000000b08f21876327114683d202a1a95482d80700000078f3 ,
    0xe695f0905149a9e27ed94c95c91c49004400000000000000561e83cb0d19d14a ,
    0xa330a72837b92c870700000078f3e695f0905149a9e27ed94c95c91c4c006f00 ,
    0x670069006e004400610074006500540069006d006500000000000000427dc6c5 ,
    0xbc03394e86cc1741cdc5eaa30700000078f3e695f0905149a9e27ed94c95c91c ,
    0x4c00610073007400480065006100720074006200650061007400000000000000 ,
    0x82ef9b0291fb664fae47ed24cbb922e40700000078f3e695f0905149a9e27ed9 ,
    0x4c95c91c5000430055007300650072004e0061006d00650000000000000045b3 ,
    0xbd4df836a849921a22c6f6d8b7130700000078f3e695f0905149a9e27ed94c95 ,
    0xc91c4900500041006400640072006500730073000000000000006f7be19a2f0f ,
    0xe94fa763de13a0dece500700000078f3e695f0905149a9e27ed94c95c91c5300 ,
    0x6f00660074007700610072006500560065007200730069006f006e0000000000 ,
    0x0000929bc9a62d99994da38d1065961f52150700000078f3e695f0905149a9e2 ,
    0x7ed94c95c91c45006d0070006c006f0079006500650049004400000000000000 ,
    0x836b4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa490044000000000000007d64bb1bced4c04b9c192a558484ff710700 ,
    0x000078f3e695f0905149a9e27ed94c95c91c530074006100740069006f006e00 ,
    0x490044000000000000004d5252b332b7a74e8882d03c9dd04209070000005f5d ,
    0x8649d2e04846ac2d27b6a706a090690064000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="LoginName"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ad83f2bcadf164f874c7e65b16fbaab
        End
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="dbo_Station.StationName"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a8e74c3fd9afd469e092bff0aa53d60
        End
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="LastOfID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8004280cb8d5f800a4d5f8006471130c
        End
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="LastOfLoginDateTime"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8004280cb8d5f800a4d5f8006471130c
        End
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="LastOfLastHeartbeat"
        dbInteger "ColumnWidth" ="2715"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8004280cb8d5f800a4d5f8006471130c
        End
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="LastOfPCUserName"
        dbInteger "ColumnWidth" ="2490"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8004280cb8d5f800a4d5f8006471130c
        End
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="LastOfIPAddress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8004280cb8d5f800a4d5f8006471130c
        End
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="LastOfSoftwareVersion"
        dbInteger "ColumnWidth" ="2235"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8004280cb8d5f800a4d5f8006471130c
        End
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="dbo_LoginHistory.PCName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
End
Begin
    State =0
    Left =35
    Top =53
    Right =1564
    Bottom =835
    Left =-1
    Top =-1
    Right =1497
    Bottom =303
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =247
        Bottom =378
        Top =0
        Name ="dbo_LoginHistory"
        Name =""
    End
    Begin
        Left =294
        Top =10
        Right =527
        Bottom =332
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =690
        Top =112
        Right =834
        Bottom =256
        Top =0
        Name ="dbo_Station"
        Name =""
    End
End
