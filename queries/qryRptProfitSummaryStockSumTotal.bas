Operation =1
Option =0
Begin InputTables
    Name ="qryRptProfitSummaryStockSum"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="SumOfStockAmt"
    Expression ="Sum(qryRptProfitSummaryStockSum.StockAmt)"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="qryRptProfitSummaryStockSum"
    Expression ="dbo_ProjectComponentHeader.ID = qryRptProfitSummaryStockSum.ProjectComponentID"
    Flag =2
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
    0x483f9a30cad6414da6b99e1f53bd101d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000014fce238e55d3a488600f99d914c303b00000000049b7498 ,
    0x6fe0e4400000000000000000710072007900520070007400500072006f006600 ,
    0x69007400530075006d006d00610072007900530074006f0063006b0053007500 ,
    0x6d00000000000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000075ee57744321f34c8c10a6e02360ecee07000000483f9a30cad6 ,
    0x414da6b99e1f53bd101d530075006d004f006600530074006f0063006b004100 ,
    0x6d0074000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500072006f006a0065006300740048006500 ,
    0x610064006500720049004400000000000000619b9613908f8e4192312aa429d0 ,
    0x82b70700000014fce238e55d3a488600f99d914c303b530074006f0063006b00 ,
    0x41006d00740000000000000029556c4fcc6de9418049e37cebcb8ed307000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be49004400000000000000163a0d035111 ,
    0x6c4fb70ea5a79469dd530700000014fce238e55d3a488600f99d914c303b5000 ,
    0x72006f006a0065006300740043006f006d0070006f006e0065006e0074004900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d588d973a3b7443ba8d611ea4a1d78b
        End
    End
    Begin
        dbText "Name" ="qryRptProfitSummaryStockSum.StockAmt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfStockAmt"
        dbInteger "ColumnWidth" ="4230"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x75ee57744321f34c8c10a6e02360ecee
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
        Left =406
        Top =15
        Right =550
        Bottom =159
        Top =0
        Name ="qryRptProfitSummaryStockSum"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
