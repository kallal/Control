Operation =1
Option =0
Where ="(((dbo_ProjectComponentPricingDetail.ProjectComponentID)=11935))"
Begin InputTables
    Name ="dbo_ProjectComponentPricingDetail"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPricingDetail.ProjectComponentID"
    Expression ="dbo_ProjectComponentPricingDetail.*"
    Expression ="dbo_ProjectComponentPricingDetail.Cost"
    Expression ="dbo_ProjectComponentPricingDetail.ChargeType"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x08d90e43fe63144a92ec2a33cf749ecf
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e39a6717b14b5c4d9bb0cf22aa00ca46000000009b35644c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006900630069006e00 ,
    0x6700440065007400610069006c0000000000000079d3b9e582d6d34581f5d7f9 ,
    0x50ea0ab807000000e39a6717b14b5c4d9bb0cf22aa00ca46500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004900440000000000 ,
    0x0000f588e5a81e2b2e4b91b64a931f52e66307000000e39a6717b14b5c4d9bb0 ,
    0xcf22aa00ca4643006f007300740000000000000098d9fc6426f2254fad53c380 ,
    0xc3c6507507000000e39a6717b14b5c4d9bb0cf22aa00ca464300680061007200 ,
    0x6700650054007900700065000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
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
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentCategory"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.PrintRunNum"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1561
    Bottom =876
    Left =-1
    Top =-1
    Right =1529
    Bottom =453
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =132
        Top =45
        Right =398
        Bottom =282
        Top =0
        Name ="dbo_ProjectComponentPricingDetail"
        Name =""
    End
End
