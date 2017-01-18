Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentStock"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    Alias ="StockAmt"
    Expression ="Sum(([dbo_projectComponentStock].[QtyOrdered]*([dbo_projectComponentStock].[Pric"
        "ePerM]*IIf([dbo_projectComponentStock].[ispricepereach]=False,1/1000,1))))"
End
Begin Groups
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x14fce238e55d3a488600f99d914c303b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af000000006adbf580 ,
    0x0dc1e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000619b9613908f8e4192312aa429d082b70700000014fce238e55d3a48 ,
    0x8600f99d914c303b530074006f0063006b0041006d007400000000000000fe37 ,
    0x1115569a08478b428437714db9f90700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x740049004400000000000000dad4a6c1c16ae546abad203c0819a87107000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af5100740079004f007200640065007200 ,
    0x6500640000000000000049a54a1f54a3984782030d179cb052f8070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af500072006900630065005000650072004d00 ,
    0x0000000000005448cb3c6158c546a3895c70858e7d7b0700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af69007300700072006900630065007000650072006500 ,
    0x610063006800000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StockAmt"
        dbInteger "ColumnWidth" ="3690"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x619b9613908f8e4192312aa429d082b7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x163a0d0351116c4fb70ea5a79469dd53
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1579
    Bottom =859
    Left =-1
    Top =-1
    Right =1469
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =279
        Top =9
        Right =972
        Bottom =380
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
End
