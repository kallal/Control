Operation =1
Option =1
Where ="NZ([DocketNum],0) > 0 AND ([DueDate] >= #01/01/1900#) AND ([DueDate] <= #12/31/2"
    "199#)"
Begin InputTables
    Name ="qrySchedulingSummaryOutsideServices"
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
    0x1d266831899f6c44874975166dbbd773
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000010bad0b2120361488734e62250957e53000000005f04799e ,
    0xd3e0e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d006100720079004f0075007400730069006400 ,
    0x650053006500720076006900630065007300000000000000814e4f1f9bdf7a4c ,
    0x8930025f1d00c9e30700000010bad0b2120361488734e62250957e5344006f00 ,
    0x63006b00650074004e0075006d000000000000005ba2247b30523747bea5ebc1 ,
    0xb157cfba0700000010bad0b2120361488734e62250957e534400750065004400 ,
    0x610074006500000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="qrySchedulingSummaryOutsideServices.CompNamewQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryOutsideServices.DueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryOutsideServices.ArtYN"
        dbLong "AggregateType" ="-1"
    End
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
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="viewWIPOutsideServices"
        Name =""
    End
End
