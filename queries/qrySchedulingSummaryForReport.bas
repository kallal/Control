Operation =1
Option =1
Where ="NZ([DocketNum],0) > 0 AND [ProjectStatusID] < 35"
Begin InputTables
    Name ="qrySchedulingSummaryWithShipping"
End
Begin OutputColumns
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf03e2677b23ab24c8df5720bd0030546
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000007e10d0d429f88c459d8ef99a7cfc94d2000000004ba9ad15 ,
    0x50e0e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d00610072007900570069007400680053006800 ,
    0x69007000700069006e0067000000000000000cd4d2cdf67ed24c85ec586e7951 ,
    0xfb0c070000007e10d0d429f88c459d8ef99a7cfc94d244006f0063006b006500 ,
    0x74004e0075006d0000000000000048e49807c5888e428998c0f072b69d5b0700 ,
    0x00007e10d0d429f88c459d8ef99a7cfc94d2500072006f006a00650063007400 ,
    0x5300740061007400750073004900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="LFFinishWorkList"
        dbBinary "GUID" = Begin
            0xa133f9c4381fc340aae8ae9bd44a8dca
        End
    End
End
Begin
    State =0
    Left =188
    Top =21
    Right =1643
    Bottom =823
    Left =-1
    Top =-1
    Right =1423
    Bottom =315
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =357
        Bottom =305
        Top =0
        Name ="qrySchedulingSummaryWithShipping"
        Name =""
    End
    Begin
        Left =484
        Top =14
        Right =628
        Bottom =158
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
