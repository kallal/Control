Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="qryProjectComponentPricingDetailStockOS"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="CostVal"
    Expression ="Sum(Nz([cost],0))"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="qryProjectComponentPricingDetailStockOS"
    Expression ="dbo_ProjectComponentHeader.ID = qryProjectComponentPricingDetailStockOS.ProjectC"
        "omponentID"
    Flag =2
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x6c6e272b87f13244966dfc9aa31a60c6
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000078b552b4 ,
    0x14b5e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000718c4e27dff6c047a2dc5cc4feae806900000000e3ee5ec12ab5 ,
    0xe4400000000000000000710072007900500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e007400500072006900630069006e0067004400 ,
    0x65007400610069006c00530074006f0063006b004f005300000000000000aa31 ,
    0xd64b33a4ec4e8c65b78a9fbbb05d070000006c6e272b87f13244966dfc9aa31a ,
    0x60c643006f0073007400560061006c000000000000002042568302f48b4d89eb ,
    0x4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f00 ,
    0x6a0065006300740048006500610064006500720049004400000000000000f588 ,
    0xe5a81e2b2e4b91b64a931f52e66307000000718c4e27dff6c047a2dc5cc4feae ,
    0x806963006f007300740000000000000029556c4fcc6de9418049e37cebcb8ed3 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4900440000000000000079d3 ,
    0xb9e582d6d34581f5d7f950ea0ab807000000718c4e27dff6c047a2dc5cc4feae ,
    0x8069500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x740049004400000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CostVal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa31d64b33a4ec4e8c65b78a9fbbb05d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentCategory"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryProjectComponentPricingDetailStockOS.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =75
    Top =10
    Right =1481
    Bottom =733
    Left =-1
    Top =-1
    Right =1374
    Bottom =235
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =35
        Top =108
        Right =245
        Bottom =252
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =360
        Top =79
        Right =582
        Bottom =223
        Top =0
        Name ="qryProjectComponentPricingDetailStockOS"
        Name =""
    End
End
