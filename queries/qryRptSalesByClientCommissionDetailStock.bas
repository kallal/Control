Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentStock"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    Alias ="TotalPrice"
    Expression ="Sum([qtyOrdered]*IIf([ispricePerEach]=True,[PricePerM],[PricePerM]/1000))"
End
Begin Groups
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query7].[ProjectComponentID] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x0427567dc600474ba5b5d8264d4ed169
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000b4f862b4 ,
    0x14b5e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000cb3b3f6ea3c51d4a8255299565c444c6070000000427567dc600474b ,
    0xa5b5d8264d4ed16954006f00740061006c005000720069006300650000000000 ,
    0x0000fe371115569a08478b428437714db9f90700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e00740049004400000000000000dad4a6c1c16ae546abad203c0819a871 ,
    0x0700000089466ecffa47f64d8a430ccaf9e274af7100740079004f0072006400 ,
    0x65007200650064000000000000005448cb3c6158c546a3895c70858e7d7b0700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af6900730070007200690063006500 ,
    0x500065007200450061006300680000000000000049a54a1f54a3984782030d17 ,
    0x9cb052f80700000089466ecffa47f64d8a430ccaf9e274af5000720069006300 ,
    0x65005000650072004d0000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaf4e793618e22b44acb7be3f1b8f2a61
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PricePerM"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.IsPricePerEach"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TotalPrice"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb3b3f6ea3c51d4a8255299565c444c6
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1374
    Bottom =439
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =921
        Bottom =432
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
End
