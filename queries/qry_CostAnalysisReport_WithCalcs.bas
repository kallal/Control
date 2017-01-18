Operation =1
Option =0
Begin InputTables
    Name ="qry_CostAnalysisReport_Source"
End
Begin OutputColumns
    Expression ="qry_CostAnalysisReport_Source.*"
    Alias ="PlannedNet"
    Expression ="[sumofsellforfinal]-[PDQHardCost]-[pdqlabourcost]"
    Alias ="PlannedAVLabour"
    Expression ="([sumofsellforfinal]-[PDQHardCost])/[PDQLabourCost]"
    Alias ="TmpCommish"
    Expression ="([sumofsellforfinal]*[plannedAVLabour])*0.05"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x01bdd9a606af054595cfb7b600137e9d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000060b0a44c27879542a12a5183e10c266c00000000839fd518 ,
    0xcd8ee44000000000000000007100720079005f0043006f007300740041006e00 ,
    0x61006c0079007300690073005200650070006f00720074005f0053006f007500 ,
    0x720063006500000000000000641370d16f4f9b418209b0648cc5416307000000 ,
    0x0000000000000000000000000000000050006c0061006e006e00650064004e00 ,
    0x65007400000000000000f110509f51cc3e4ab1864505d9eefb9a070000000000 ,
    0x000000000000000000000000000050006c0061006e006e006500640041005600 ,
    0x4c00610062006f00750072000000000000002d87249d29d10d48a0f73e6bf903 ,
    0x0963070000000000000000000000000000000000000054006d00700043006f00 ,
    0x6d006d006900730068000000000000001411ecd25b7e5d4b852c54ce163a3c37 ,
    0x0700000060b0a44c27879542a12a5183e10c266c730075006d006f0066007300 ,
    0x65006c006c0066006f007200660069006e0061006c0000000000000085e38ae2 ,
    0xd71a81409dcbb8f406551f370700000060b0a44c27879542a12a5183e10c266c ,
    0x500044005100480061007200640043006f007300740000000000000049fb5331 ,
    0x1eb4164ba469e016825194040700000060b0a44c27879542a12a5183e10c266c ,
    0x7000640071006c00610062006f007500720063006f0073007400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="ActualGP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x91c2cb44c7aa824083b08664304dd07f
        End
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6515922b33637a488e4f65df4d3f9e67
        End
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe944e7f1b3ad5b4188927a674ec86a7d
        End
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.dbo_ProjectHeader.ContactNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e9c10b1b9043142b2d19c665a0a64cf
        End
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a5c0277c7258646897df2eccd2dff56
        End
        dbInteger "ColumnWidth" ="495"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.SumOfSellForFinal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9a41831adb8c3a4089953b657fc53984
        End
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.SumOfPDQAddedValue"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbdeec06be6b7ce43965f5718c27bf8ab
        End
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.SumOfPDQGrossProfit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaae692711c00aa44b7af2dadf67dbdf2
        End
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.SumOfPDQSellingPrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbda10119b9842743a442b1ab9bfe7163
        End
        dbInteger "ColumnWidth" ="2940"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.SumOfPDQOverallMarkup"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2f690b645c0fc4c96a873bd00043c9b
        End
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.PDQHardCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xba0cb1e75393e24cb149ede8f4b942e6
        End
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_CostAnalysisReport_Source.PDQLabourCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc9c31a1008ec34aa182f923eeb1d711
        End
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ActualNet"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PlannedNet"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x641370d16f4f9b418209b0648cc54163
        End
    End
    Begin
        dbText "Name" ="PlannedAV"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PlannedAVLabour"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf110509f51cc3e4ab1864505d9eefb9a
        End
    End
    Begin
        dbText "Name" ="TmpCommish"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2d87249d29d10d48a0f73e6bf9030963
        End
    End
End
Begin
    State =0
    Left =107
    Top =32
    Right =1463
    Bottom =803
    Left =-1
    Top =-1
    Right =1324
    Bottom =487
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =101
        Top =79
        Right =805
        Bottom =433
        Top =0
        Name ="qry_CostAnalysisReport_Source"
        Name =""
    End
End
