Operation =1
Option =0
Begin InputTables
    Name ="tblConversionTypes"
    Name ="tblDynamicCostModelling"
End
Begin OutputColumns
    Expression ="tblConversionTypes.ID"
    Expression ="tblConversionTypes.conversionTypeName"
    Expression ="tblConversionTypes.conversionOrder"
    Alias ="DCMID"
    Expression ="tblDynamicCostModelling.ID"
    Expression ="tblDynamicCostModelling.ProcessName"
End
Begin Joins
    LeftTable ="tblConversionTypes"
    RightTable ="tblDynamicCostModelling"
    Expression ="tblConversionTypes.ID = tblDynamicCostModelling.conversionTypeId"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe2d4dccf1efe8349a881d146cc60cffe
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000de946da9ec3ebc43a6b7a1996b98227c000000003c6ad64d ,
    0x36c1e4400000000000000000740062006c0043006f006e007600650072007300 ,
    0x69006f006e0054007900700065007300000000000000094093f5fa487048bde8 ,
    0x1a6a1e6f2159000000003e98d94d36c1e4400000000000000000740062006c00 ,
    0x440079006e0061006d006900630043006f00730074004d006f00640065006c00 ,
    0x6c0069006e006700000000000000ede37fbcb8646746ac72e181e3be82440700 ,
    0x0000e2d4dccf1efe8349a881d146cc60cffe440043004d004900440000000000 ,
    0x0000975bae4e39e7d54a975eae056bb2dd8e07000000de946da9ec3ebc43a6b7 ,
    0xa1996b98227c49004400000000000000c0dd3f540c78a84583226f175ff07219 ,
    0x07000000de946da9ec3ebc43a6b7a1996b98227c63006f006e00760065007200 ,
    0x730069006f006e0054007900700065004e0061006d00650000000000000012fc ,
    0x555993e6324caa44e2352770d67b07000000de946da9ec3ebc43a6b7a1996b98 ,
    0x227c63006f006e00760065007200730069006f006e004f007200640065007200 ,
    0x000000000000ba2f3e863950644399de4e57acfcbe5907000000094093f5fa48 ,
    0x7048bde81a6a1e6f2159490044000000000000003dc2c7db2492144685612f4e ,
    0xdac2d19807000000094093f5fa487048bde81a6a1e6f2159500072006f006300 ,
    0x6500730073004e0061006d00650000000000000035761d639f651c408120daf7 ,
    0xca27b52807000000094093f5fa487048bde81a6a1e6f215963006f006e007600 ,
    0x65007200730069006f006e005400790070006500490064000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="tblConversionTypes.conversionTypeName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe826aad34e1a2f40be5b024919abd70d
        End
    End
    Begin
        dbText "Name" ="tblConversionTypes.conversionOrder"
        dbInteger "ColumnWidth" ="3390"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56bef759533fe74abc5f91e299e86c3b
        End
    End
    Begin
        dbText "Name" ="tblDynamicCostModelling.ProcessName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3b71d72df0c70a4f8fe2d29e4cc4c160
        End
    End
    Begin
        dbText "Name" ="tblConversionTypes.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe89b7190bc23ac49a0ca0ac55b0ba9f3
        End
    End
    Begin
        dbText "Name" ="DCMID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xede37fbcb8646746ac72e181e3be8244
        End
    End
    Begin
        dbText "Name" ="tblDynamicCostModelling.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =31
    Top =57
    Right =1561
    Bottom =780
    Left =-1
    Top =-1
    Right =1498
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =58
        Top =27
        Right =367
        Bottom =381
        Top =0
        Name ="tblConversionTypes"
        Name =""
    End
    Begin
        Left =406
        Top =25
        Right =1265
        Bottom =380
        Top =0
        Name ="tblDynamicCostModelling"
        Name =""
    End
End
