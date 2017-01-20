Operation =1
Option =1
Where ="(NZ([DocketNum],0) > 0 AND NZ([InvoiceNum],0) = 0)  AND ([DueDate] >= #01/01/190"
    "0#) AND ([DueDate] <= #12/31/2199#)"
Begin InputTables
    Name ="qryReadyToInvoice"
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
    0x2ac7eaef4de77745b6cbf84035c64f33
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000054998de269cb434c97f89560bcb28bc100000000b7503311 ,
    0x50e0e44000000000000000007100720079005200650061006400790054006f00 ,
    0x49006e0076006f00690063006500000000000000749d4175d9cbb541b77414bf ,
    0x76f2aa9c0700000054998de269cb434c97f89560bcb28bc144006f0063006b00 ,
    0x650074004e0075006d000000000000007da6a641b3cf604b95c0700a612b4585 ,
    0x0700000054998de269cb434c97f89560bcb28bc149006e0076006f0069006300 ,
    0x65004e0075006d000000000000005ba2247b30523747bea5ebc1b157cfba0700 ,
    0x000054998de269cb434c97f89560bcb28bc14400750065004400610074006500 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
Begin
End
Begin
    State =0
    Left =76
    Top =132
    Right =1569
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
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
        Name ="qryReadyToInvoice"
        Name =""
    End
End
