Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentPricingDetail"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPricingDetail.*"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPricingDetail"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPricingDetail.ProjectComponentID = dbo_ProjectComponentHeade"
        "r.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x2395c281cf6b4143a4500348e9c5f7ff
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e39a6717b14b5c4d9bb0cf22aa00ca460000000028cb5e2b ,
    0xacd7e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006900630069006e00 ,
    0x6700440065007400610069006c00000000000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be00000000d477562bacd7e4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x4800650061006400650072000000000000002042568302f48b4d89eb4ba2abdd ,
    0xca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a006500 ,
    0x630074004800650061006400650072004900440000000000000079d3b9e582d6 ,
    0xd34581f5d7f950ea0ab807000000e39a6717b14b5c4d9bb0cf22aa00ca465000 ,
    0x72006f006a0065006300740043006f006d0070006f006e0065006e0074004900 ,
    0x440000000000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.QuoteID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.SectionName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.FunctionID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.Cost"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.CarbonKg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ChargeBasis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentCategory"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ChargeBasisPerHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ChargeType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ConversionType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.CustomItem"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.DirectCosts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.IndirectCosts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.Time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.TimeInMins"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.TimeinHrs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.TotalMaterialCosts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1527
    Bottom =980
    Left =-1
    Top =-1
    Right =1419
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =306
        Bottom =364
        Top =0
        Name ="dbo_ProjectComponentPricingDetail"
        Name =""
    End
    Begin
        Left =354
        Top =12
        Right =643
        Bottom =270
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
