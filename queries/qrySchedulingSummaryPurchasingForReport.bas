Operation =1
Option =1
Where ="(NZ([DocketNum],0) > 0 AND NZ([InvoiceNum],0) = 0)  AND ([DueDate] >= #01/01/190"
    "0#) AND ([DueDate] <= #12/31/2199#)"
Begin InputTables
    Name ="qrySchedulingSummaryPurchasing"
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
    0xc35124f78b649b42b9545eb6819f6367
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c19d6790316dfe419f1feae283d8234b00000000c007ea9e ,
    0xd3e0e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d00610072007900500075007200630068006100 ,
    0x730069006e006700000000000000749d4175d9cbb541b77414bf76f2aa9c0700 ,
    0x0000c19d6790316dfe419f1feae283d8234b44006f0063006b00650074004e00 ,
    0x75006d000000000000007da6a641b3cf604b95c0700a612b458507000000c19d ,
    0x6790316dfe419f1feae283d8234b49006e0076006f006900630065004e007500 ,
    0x6d000000000000005ba2247b30523747bea5ebc1b157cfba07000000c19d6790 ,
    0x316dfe419f1feae283d8234b4400750065004400610074006500000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
End
Begin
    State =0
    Left =114
    Top =178
    Right =1579
    Bottom =980
    Left =-1
    Top =-1
    Right =1433
    Bottom =502
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qrySchedulingSummaryPurchasing"
        Name =""
    End
End
