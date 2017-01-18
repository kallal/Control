Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.ProofApprovedDate) Is Not Null) AND ((Year([proofs"
    "entdate]))=Year(Date())) AND ((Month([proofSentDate]))=Month(Date())))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="ProofDays"
    Expression ="([proofApprovedDate]-[proofSentDate])"
    Alias ="ProofYear"
    Expression ="Year([proofsentdate])"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x63de3ecac2154d41abf5d14cfa407ccf
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be000000001b5fa29c ,
    0x8aace4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000ec189e923ecdb142a37edc98d081753b0700000063de3ecac215 ,
    0x4d41abf5d14cfa407ccf500072006f006f006600440061007900730000000000 ,
    0x000080d0d70c08be4000f4bd40006093d70c0700000063de3ecac2154d41abf5 ,
    0xd14cfa407ccf500072006f006f00660059006500610072000000000000005c90 ,
    0xb798aa47ab459c1716da6c77396207000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006f006600530065006e007400440061007400650000000000 ,
    0x000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006f006f00660041007000700072006f00760065006400 ,
    0x4400610074006500000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
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
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbInteger "ColumnWidth" ="3870"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x856f775c74a46e4a926c90c8aa9812eb
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
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofYear"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80d0d70c08be4000f4bd40006093d70c
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
