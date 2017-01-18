Operation =1
Option =0
Begin InputTables
    Name ="dbo_PaperBasicSizeThickness"
    Name ="dbo_PaperBasicSize"
End
Begin OutputColumns
    Expression ="dbo_PaperBasicSizeThickness.PaperTypeID"
    Expression ="dbo_PaperBasicSizeThickness.Finish"
    Expression ="dbo_PaperBasicSize.BasicSizeName"
End
Begin Joins
    LeftTable ="dbo_PaperBasicSizeThickness"
    RightTable ="dbo_PaperBasicSize"
    Expression ="dbo_PaperBasicSizeThickness.PaperTypeID = dbo_PaperBasicSize.ID"
    Flag =2
End
Begin Groups
    Expression ="dbo_PaperBasicSizeThickness.PaperTypeID"
    GroupLevel =0
    Expression ="dbo_PaperBasicSizeThickness.Finish"
    GroupLevel =0
    Expression ="dbo_PaperBasicSize.BasicSizeName"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3c4c97d958e00a4f9582a4132c0f3707
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d493d7c77c82254f89abc21aaacc1ff600000000f5673fda ,
    0x0dd8e4400000000000000000640062006f005f00500061007000650072004200 ,
    0x6100730069006300530069007a00650054006800690063006b006e0065007300 ,
    0x73000000000000008d25df47c74f55448db34f5c065f7586000000000ad93eda ,
    0x0dd8e4400000000000000000640062006f005f00500061007000650072004200 ,
    0x6100730069006300530069007a006500000000000000d482afb4f1e0f240b32b ,
    0xd4dfa7e6391e07000000d493d7c77c82254f89abc21aaacc1ff6500061007000 ,
    0x65007200540079007000650049004400000000000000b1891c03f44af04d9f22 ,
    0x2ebe46a21f7307000000d493d7c77c82254f89abc21aaacc1ff6460069006e00 ,
    0x6900730068000000000000007b5e146bd27d0e4697e5aac923f50a3207000000 ,
    0x8d25df47c74f55448db34f5c065f758642006100730069006300530069007a00 ,
    0x65004e0061006d006500000000000000db3c5c04c16c314c9535d9cf2b82edca ,
    0x070000008d25df47c74f55448db34f5c065f7586490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_PaperBasicSizeThickness.PaperTypeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_PaperBasicSizeThickness.Finish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_PaperBasicSize.BasicSizeName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =508
    Top =94
    Right =1822
    Bottom =643
    Left =-1
    Top =-1
    Right =1282
    Bottom =186
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =148
        Top =27
        Right =292
        Bottom =215
        Top =0
        Name ="dbo_PaperBasicSizeThickness"
        Name =""
    End
    Begin
        Left =670
        Top =18
        Right =911
        Bottom =242
        Top =0
        Name ="dbo_PaperBasicSize"
        Name =""
    End
End
