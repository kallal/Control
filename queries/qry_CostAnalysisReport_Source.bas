Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.ContactNameID"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Alias ="SumOfSellForFinal"
    Expression ="Sum(dbo_ProjectComponentHeader.SellForFinal)"
    Alias ="SumOfPDQAddedValue"
    Expression ="Sum(dbo_ProjectComponentHeader.PDQAddedValue)"
    Alias ="SumOfPDQGrossProfit"
    Expression ="Sum(dbo_ProjectComponentHeader.PDQGrossProfit)"
    Alias ="SumOfPDQSellingPrice"
    Expression ="Sum(dbo_ProjectComponentHeader.PDQSellingPrice)"
    Alias ="SumOfPDQOverallMarkup"
    Expression ="Sum(dbo_ProjectComponentHeader.PDQOverallMarkup)"
    Alias ="PDQHardCost"
    Expression ="Sum([PDQSellingPrice]-[PDQAddedValue])"
    Alias ="PDQLabourCost"
    Expression ="Sum([PDQAddedValue]-[PDQGrossProfit])"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectHeader.ID = dbo_ProjectComponentHeader.ProjectHeaderID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Flag =1
End
Begin Groups
    Expression ="dbo_ProjectHeader.InvoiceNum"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.DocketNum"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.ContactNameID"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.SalesRepID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x60b0a44c27879542a12a5183e10c266c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000edd9c2dd ,
    0x748ae4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be00000000e44ab3dd748ae4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x4800650061006400650072000000000000001411ecd25b7e5d4b852c54ce163a ,
    0x3c370700000060b0a44c27879542a12a5183e10c266c530075006d004f006600 ,
    0x530065006c006c0046006f007200460069006e0061006c0000000000000002fc ,
    0xccd43820ba44b91bdaaa74026bf20700000060b0a44c27879542a12a5183e10c ,
    0x266c530075006d004f0066005000440051004100640064006500640056006100 ,
    0x6c00750065000000000000002750f27fe5e493468b4826207d3ba15907000000 ,
    0x60b0a44c27879542a12a5183e10c266c530075006d004f006600500044005100 ,
    0x470072006f0073007300500072006f006600690074000000000000008d48e884 ,
    0x2340f246acec9cb3e31fe09f0700000060b0a44c27879542a12a5183e10c266c ,
    0x530075006d004f006600500044005100530065006c006c0069006e0067005000 ,
    0x7200690063006500000000000000855d26bc358077409f16a05d04f89c690700 ,
    0x000060b0a44c27879542a12a5183e10c266c530075006d004f00660050004400 ,
    0x51004f0076006500720061006c006c004d00610072006b007500700000000000 ,
    0x000085e38ae2d71a81409dcbb8f406551f370700000060b0a44c27879542a12a ,
    0x5183e10c266c500044005100480061007200640043006f007300740000000000 ,
    0x000049fb53311eb4164ba469e016825194040700000060b0a44c27879542a12a ,
    0x5183e10c266c5000440051004c00610062006f007500720043006f0073007400 ,
    0x0000000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8049006e0076006f006900630065004e0075006d000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8044006f0063006b00650074004e0075006d00000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x49004400000000000000ec0b724301a5a646ae4fd759d8d39c9c0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8043006f006e0074006100630074004e006100 ,
    0x6d0065004900440000000000000040de5e7aec65a745aa86e7e9e8cb55780700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80530061006c006500730052006500 ,
    0x700049004400000000000000295dd08fa5fdd842b45759b74bd1aab007000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be530065006c006c0046006f0072004600 ,
    0x69006e0061006c000000000000003747aa8249bff741999ea42bfa7b36bd0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5000440051004100640064006500 ,
    0x6400560061006c0075006500000000000000ceb9e6b7c6726e4ba44196458c49 ,
    0x9bd007000000d2d381ba93398a4283a6a9ed80a7b4be50004400510047007200 ,
    0x6f0073007300500072006f006600690074000000000000003f7399254f01f34d ,
    0xb26555c0ae0e557007000000d2d381ba93398a4283a6a9ed80a7b4be50004400 ,
    0x5100530065006c006c0069006e00670050007200690063006500000000000000 ,
    0xd62a92a953f0d04f97ac9050ccf6ac3c07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be5000440051004f0076006500720061006c006c004d00610072006b00 ,
    0x7500700000000000000004aeb2718000d24bb73b562a737994cb0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80490044000000000000002042568302f48b4d ,
    0x89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb960ce52e7522d40b17adc9bd8b9658c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb53aef501196bc40995a4f0b579ba440
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa32879cc7369a04d8f4389f30183f234
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0df4a21b5b5c7343ab4f61bf29509c7f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc2276ba66147b469355edad522f1445
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SellForFinal"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQAddedValue"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfSellForFinal"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1411ecd25b7e5d4b852c54ce163a3c37
        End
    End
    Begin
        dbText "Name" ="SumOfPDQAddedValue"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x02fcccd43820ba44b91bdaaa74026bf2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQOverallMarkup"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQGrossProfit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfPDQGrossProfit"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2750f27fe5e493468b4826207d3ba159
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQSellingPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfPDQSellingPrice"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8d48e8842340f246acec9cb3e31fe09f
        End
    End
    Begin
        dbText "Name" ="PDQHardCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x85e38ae2d71a81409dcbb8f406551f37
        End
    End
    Begin
        dbText "Name" ="SumOfPDQOverallMarkup"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x855d26bc358077409f16a05d04f89c69
        End
    End
    Begin
        dbText "Name" ="PDQLabourCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x49fb53311eb4164ba469e01682519404
        End
    End
    Begin
        dbText "Name" ="ActualGP"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-7
    Top =12
    Right =1779
    Bottom =752
    Left =-1
    Top =-1
    Right =1754
    Bottom =456
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =14
        Top =61
        Right =230
        Bottom =391
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =293
        Top =26
        Right =670
        Bottom =380
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
