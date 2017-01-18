Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.ProjectHeaderID)=[forms]![navMaster].[form]![navSu"
    "bform]![ProjectID]))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_Department"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ID"
    Alias ="Fullname"
    Expression ="(Trim([department]) & \" - \" & Trim([componentname]))"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_Department.Department"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectComponentHeader.FinalQty"
    Expression ="dbo_ProjectComponentHeader.ComponentType"
    Expression ="dbo_ProjectComponentHeader.SortOrder"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_Department"
    Expression ="dbo_ProjectComponentHeader.ComponentType = dbo_Department.ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_ProjectComponentHeader.SortOrder"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x67f0ebdfdf6612449c0916a309a62bbf
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000b6df33c5ffba1842a708d4bfa95bb00f0000000059aaa9c0ea62 ,
    0xe4400000000000000000640062006f005f004400650070006100720074006d00 ,
    0x65006e0074000000000000006ec275ed4cac0e48bca52c11df47556d07000000 ,
    0x00000000000000000000000000000000460075006c006c006e0061006d006500 ,
    0x000000000000118be950d66974438268ddc04c06af1a070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4490044000000000000009c89f1e6bf941048a3d46a90 ,
    0x002c80e107000000b6df33c5ffba1842a708d4bfa95bb00f6400650070006100 ,
    0x720074006d0065006e0074000000000000003c3a0e9cef0ad74dbd1042d7c3a3 ,
    0xd51d070000000e7a128852f41a47b128e4f3b41e4fb463006f006d0070006f00 ,
    0x6e0065006e0074006e0061006d006500000000000000873fed1bdd4daf46b591 ,
    0x05d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb4500072006f00 ,
    0x6a0065006300740048006500610064006500720049004400000000000000b04f ,
    0x8d260a13f3428c8e9ff1b197c202070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb44500780070006500630074006500640051007400790000000000000043a9 ,
    0x080a40b39b4398f2497ff8672674070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4460069006e0061006c005100740079000000000000002c0cb3926442ce40 ,
    0xbbd03c5a057afc43070000000e7a128852f41a47b128e4f3b41e4fb443006f00 ,
    0x6d0070006f006e0065006e00740054007900700065000000000000002d3a184d ,
    0xd7f6624b97fd4b14b3f5c0ca070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x53006f00720074004f0072006400650072000000000000008de3938440681d44 ,
    0x8226c556f76b76fb07000000b6df33c5ffba1842a708d4bfa95bb00f49004400 ,
    0x00000000000069f3d9b11a4b0140a08785aaf39439fc01000000120e6e31ea62 ,
    0xe44000000000000000006e00610076004d006100730074006500720000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xba751ece5167464dafc2a36c1ff7f24d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03746ed0b7c1374c90cf958c0419291b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x114f2025de384847bcfea44da7429f3d
        End
    End
    Begin
        dbText "Name" ="dbo_Department.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x48142b45d0fad24faeb4ae6324de0cab
        End
    End
    Begin
        dbText "Name" ="Fullname"
        dbInteger "ColumnWidth" ="4125"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6ec275ed4cac0e48bca52c11df47556d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x294cb4181a43fb45b6058b8c1e53ae60
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8c2b48fef242664ebf859eac83986810
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FinalQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43d66f758f8eab438c145deb97b9cd1c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SortOrder"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =233
    Right =1555
    Bottom =961
    Left =-1
    Top =-1
    Right =1485
    Bottom =241
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =534
        Bottom =374
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =582
        Top =12
        Right =726
        Bottom =156
        Top =0
        Name ="dbo_Department"
        Name =""
    End
End
