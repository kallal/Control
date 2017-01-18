Operation =1
Option =0
Where ="(((dbo_ProjectComponentPricingDetail.ProjectComponentCategory)=1 Or (dbo_Project"
    "ComponentPricingDetail.ProjectComponentCategory)=6))"
Begin InputTables
    Name ="dbo_ProjectComponentPricingDetail"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPricingDetail.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x718c4e27dff6c047a2dc5cc4feae8069
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e39a6717b14b5c4d9bb0cf22aa00ca4600000000e72760b4 ,
    0x14b5e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006900630069006e00 ,
    0x6700440065007400610069006c00000000000000aafab71d63fea54ca27d84fb ,
    0xc49a673607000000e39a6717b14b5c4d9bb0cf22aa00ca46500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004300610074006500 ,
    0x67006f0072007900000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentCategory"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =156
    Top =232
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1296
    Bottom =343
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =84
        Top =31
        Right =485
        Bottom =297
        Top =0
        Name ="dbo_ProjectComponentPricingDetail"
        Name =""
    End
End
