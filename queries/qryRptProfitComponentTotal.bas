Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="totsell"
    Expression ="Sum((IIf([ExtQuoteSelect]=1,[ExtQuoteSell1],0)+IIf([ExtQuoteSelect]=2,[extquoteS"
        "ell2],0)+IIf([ExtQuoteSelect]=3,[ExtQuoteSell3],0)+IIf([ExtQuoteSelect]=4,[ExtQu"
        "oteSell4],0)+IIf([ExtQuoteSelect]=5,[ExtQuoteSell5],0)))"
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query3].[ProjectHeaderID] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x34a86721b8fa2d4599aa72b13689a347
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be00000000316fe880 ,
    0x0dc1e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000e32e9ad76869ca45aeef4c462a45f51a0700000034a86721b8fa ,
    0x2d4599aa72b13689a34774006f007400730065006c006c000000000000002042 ,
    0x568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006a0065006300740048006500610064006500720049004400 ,
    0x000000000000d08b4937f088e7428ae717547dec70aa07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500530065006c00 ,
    0x6500630074000000000000004a068060220a094c96a87ac3aedc171a07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x530065006c006c00310000000000000095876e66f0a19947a5ae51e28c4d1533 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be650078007400710075006f00 ,
    0x74006500530065006c006c003200000000000000375589a6fd3aa24695413ee5 ,
    0x6877914207000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f0074006500530065006c006c003300000000000000d711831e173fa344 ,
    0xbec8d4feb8ebac6807000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f0074006500530065006c006c00340000000000000008cecaee ,
    0xa7635e46a9b59e7552e0556307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f0074006500530065006c006c003500000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="totsell"
        dbInteger "ColumnWidth" ="2160"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe32e9ad76869ca45aeef4c462a45f51a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcc673efb0fea0244847437160d84f94c
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
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =526
        Bottom =350
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
