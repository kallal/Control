Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Expression ="dbo_CompanyLocation.ID"
    Expression ="dbo_CompanyLocation.LocationCode"
    Expression ="dbo_CompanyLocation.CompanyID"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3ecc34a1d38a7a4988b754b5867e4fd0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000f0a07a545f8a6448b11bd6a1031b20d100000000e288036d ,
    0xcedae4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x79004c006f0063006100740069006f006e00000000000000cfcb0f694dd67846 ,
    0x9d745c2d3c9b453407000000f0a07a545f8a6448b11bd6a1031b20d149004400 ,
    0x000000000000d3101d5f6477664685a4d93c3b02ee6e07000000f0a07a545f8a ,
    0x6448b11bd6a1031b20d14c006f0063006100740069006f006e0043006f006400 ,
    0x6500000000000000492729f26feeda4f8ba05f9feb1fbc1f07000000f0a07a54 ,
    0x5f8a6448b11bd6a1031b20d143006f006d00700061006e007900490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyLocation.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb50bcb765f31445972184064c6b0ad2
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.CompanyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1cdcb28a333ca540a7c814a223afef3f
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.LocationCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9406f16358086a429dd5c2b06bcaf59f
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1485
    Bottom =428
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
