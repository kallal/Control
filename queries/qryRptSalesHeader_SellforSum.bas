Operation =1
Option =0
Having ="(((dbo_ProjectComponentHeader.ProjectHeaderID)>0))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="sellfor"
    Expression ="Sum(dbo_ProjectComponentHeader.sellforfinal)"
    Alias ="quotefor"
    Expression ="Sum(dbo_ProjectComponentHeader.pdqAmtFinal)"
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x5b083f7056ff724f87556f9a4773200e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000b0bd0eeaaff55740a5eb393481fda4f4070000005b083f7056ff ,
    0x724f87556f9a4773200e730065006c006c0066006f007200000000000000b62c ,
    0xf6d097d23148af8470f7ba7d6a5a070000005b083f7056ff724f87556f9a4773 ,
    0x200e710075006f007400650066006f0072000000000000002042568302f48b4d ,
    0x89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x295dd08fa5fdd842b45759b74bd1aab007000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be730065006c006c0066006f007200660069006e0061006c0000000000 ,
    0x000008e398ef1796b9449476fedb66098b6b07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be70006400710041006d007400460069006e0061006c0000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="sellfor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb0bd0eeaaff55740a5eb393481fda4f4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4a5eec03f45e6e4997b2fc833d2a0514
        End
    End
    Begin
        dbText "Name" ="quotefor"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb62cf6d097d23148af8470f7ba7d6a5a
        End
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
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =753
        Bottom =458
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
