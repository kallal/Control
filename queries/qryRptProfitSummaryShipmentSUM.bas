Operation =1
Option =0
Begin InputTables
    Name ="dbo_PackingListHeader"
    Name ="dbo_ShipmentHeader"
End
Begin OutputColumns
    Expression ="dbo_PackingListHeader.ProjectHeaderID"
    Alias ="SumOfEstCost"
    Expression ="Sum(dbo_ShipmentHeader.EstCost)"
End
Begin Joins
    LeftTable ="dbo_PackingListHeader"
    RightTable ="dbo_ShipmentHeader"
    Expression ="dbo_PackingListHeader.ShipmentHeaderID = dbo_ShipmentHeader.ID"
    Flag =2
End
Begin Groups
    Expression ="dbo_PackingListHeader.ProjectHeaderID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query3].[ProjectHeaderID] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xdbf8f9716aff304e9ffca3158b31a2bc
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000009939adb14d3770448571dd31722423c5000000001f60c00d ,
    0xcfe0e4400000000000000000640062006f005f005000610063006b0069006e00 ,
    0x67004c00690073007400480065006100640065007200000000000000e35b5057 ,
    0xa3270648a22974f102fa784900000000f0d37c0ecfe0e4400000000000000000 ,
    0x640062006f005f0053006800690070006d0065006e0074004800650061006400 ,
    0x6500720000000000000014309feb9216bc46a24b63e071fac2cc07000000dbf8 ,
    0xf9716aff304e9ffca3158b31a2bc530075006d004f0066004500730074004300 ,
    0x6f007300740000000000000089a3931c973bd74b9560c8d09e7a4fb507000000 ,
    0x9939adb14d3770448571dd31722423c5500072006f006a006500630074004800 ,
    0x65006100640065007200490044000000000000003fc6f6fe262b9040bc0fe8d2 ,
    0x8a2a4d4d07000000e35b5057a3270648a22974f102fa78494500730074004300 ,
    0x6f00730074000000000000000ef6ab91f3ba9042b984f388527f4ba107000000 ,
    0x9939adb14d3770448571dd31722423c553006800690070006d0065006e007400 ,
    0x480065006100640065007200490044000000000000000fb59cdf7ddc4d4f965a ,
    0x76f53902055607000000e35b5057a3270648a22974f102fa7849490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_PackingListHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdff2606d5adab6429e9cfc2ff71cd581
        End
    End
    Begin
        dbText "Name" ="dbo_ShipmentHeader.EstCost"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfEstCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x14309feb9216bc46a24b63e071fac2cc
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1579
    Bottom =859
    Left =-1
    Top =-1
    Right =1469
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =351
        Bottom =366
        Top =0
        Name ="dbo_PackingListHeader"
        Name =""
    End
    Begin
        Left =459
        Top =34
        Right =745
        Bottom =275
        Top =0
        Name ="dbo_ShipmentHeader"
        Name =""
    End
End
