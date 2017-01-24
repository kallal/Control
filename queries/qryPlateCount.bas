Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_Machine"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.NetPlates"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_Machine.DepartmentID"
    Expression ="dbo_Machine.PlateCost"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_Machine"
    Expression ="dbo_ProjectComponentPress.Press = dbo_Machine.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x20741043202de540a606bff12c501c25
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa3770400000000dbd01d83 ,
    0xa679e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000003fdd1883a679e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000657f653545447543a70db61cc8fc06fc00000000bf790e83a679e4400000 ,
    0x000000000000640062006f005f004d0061006300680069006e00650000000000 ,
    0x0000f47ec5a0279ae340a8e5e140988d49be070000001ff48b4b7bbd39459517 ,
    0xfa849aa377044e006500740050006c0061007400650073000000000000002042 ,
    0x568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006a0065006300740048006500610064006500720049004400 ,
    0x00000000000098e86e8724423a40a7d78c102af45e8107000000657f65354544 ,
    0x7543a70db61cc8fc06fc4400650070006100720074006d0065006e0074004900 ,
    0x440000000000000088049419f5b9d54b820a7198092078d507000000657f6535 ,
    0x45447543a70db61cc8fc06fc50006c0061007400650043006f00730074000000 ,
    0x00000000e19fd78d6de8f042912e16a0f4718a30070000001ff48b4b7bbd3945 ,
    0x9517fa849aa37704500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e0074004900440000000000000029556c4fcc6de9418049e37cebcb ,
    0x8ed307000000d2d381ba93398a4283a6a9ed80a7b4be49004400000000000000 ,
    0x6ea354afae85c6419effcf1967fdb2b4070000001ff48b4b7bbd39459517fa84 ,
    0x9aa37704500072006500730073000000000000008bb0fb76cef6a144a050ef38 ,
    0xf896b3f907000000657f653545447543a70db61cc8fc06fc4900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NetPlates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Machine.DepartmentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Machine.PlateCost"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1607
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
    Bottom =451
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =348
        Bottom =446
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =452
        Top =10
        Right =596
        Bottom =154
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =482
        Top =163
        Right =749
        Bottom =313
        Top =0
        Name ="dbo_Machine"
        Name =""
    End
End
