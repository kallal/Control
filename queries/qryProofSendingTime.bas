Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.ProofSentDate) Is Not Null) AND ((dbo_ProjectCompo"
    "nentHeader.ArtArrivedDate) Is Not Null) AND ((Year([proofSentDate]))=Year(Date()"
    ")) AND ((Month([proofSentDate]))=Month(Date())))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Alias ="ProofDays"
    Expression ="([proofsentDate]-[artarriveddate])"
    Alias ="ProofYear"
    Expression ="Year([proofSentDate])"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0xe0ca757d562cd747aad7b46957ea1761
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000ec189e923ecdb142a37edc98d081753b07000000000000000000 ,
    0x00000000000000000000500072006f006f006600440061007900730000000000 ,
    0x00009c4c3c0fad724f4490df71650f8532a70700000000000000000000000000 ,
    0x000000000000500072006f006f00660059006500610072000000000000006340 ,
    0x27e63b69c14c8d8a18cfebb340f0070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4500072006f006f006600530065006e007400440061007400650000000000 ,
    0x0000510e420f3ce318458e4a83187ceafcd5070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb44100720074004100720072006900760065006400440061007400 ,
    0x6500000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x421e1b0cdf02234fb4f3ea036e97cd3b
        End
    End
    Begin
        dbText "Name" ="ProofDays"
        dbInteger "ColumnWidth" ="3915"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xec189e923ecdb142a37edc98d081753b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbInteger "ColumnWidth" ="3870"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofYear"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c4c3c0fad724f4490df71650f8532a7
        End
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1463
    Bottom =438
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =705
        Bottom =482
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
