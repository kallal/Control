Operation =1
Option =1
Where ="(NZ([DocketNum],0) > 0 AND NZ([InvoiceNum],0) = 0)  AND ([DueDate] >= #01/01/190"
    "0#) AND ([DueDate] <= #12/31/2199#)"
Begin InputTables
    Name ="qrySchedulingSummaryProofsWaitingApproval"
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
    0x39907a051c871840b430bc1af2e29aa4
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006ef000af9122e8499f52bfdba5f5f04b00000000ee758da8 ,
    0xcde0e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d00610072007900500072006f006f0066007300 ,
    0x570061006900740069006e00670041007000700072006f00760061006c000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c070000006ef000af9122e849 ,
    0x9f52bfdba5f5f04b44006f0063006b00650074004e0075006d00000000000000 ,
    0x7da6a641b3cf604b95c0700a612b4585070000006ef000af9122e8499f52bfdb ,
    0xa5f5f04b49006e0076006f006900630065004e0075006d000000000000005ba2 ,
    0x247b30523747bea5ebc1b157cfba070000006ef000af9122e8499f52bfdba5f5 ,
    0xf04b440075006500440061007400650000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
End
Begin
    State =0
    Left =76
    Top =132
    Right =1579
    Bottom =980
    Left =-1
    Top =-1
    Right =1471
    Bottom =548
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qrySchedulingSummaryProofsWaitingApproval"
        Name =""
    End
End
