dbMemo "SQL" ="SELECT Sum(qryRptSalesHeader.sellfor) AS SumOfsellfor, qryRptSalesHeader.CompNam"
    "e, qryRptSalesHeader.SalesRep\015\012FROM qryRptSalesHeader\015\012WHERE [Invoic"
    "eDate] >= #01-Jan-15# AND [InvoiceDate] <= #31-Jan-15#\015\012GROUP BY qryRptSal"
    "esHeader.CompName, qryRptSalesHeader.SalesRep;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe714b11ca49f734288f3cbf0ce45eb81
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008eb9041ea2033a4a913901a71864de18000000008944b5a0 ,
    0xcde0e4400000000000000000710072007900520070007400530061006c006500 ,
    0x7300480065006100640065007200000000000000d13fed31f2c5164993afd89c ,
    0x896297d007000000e714b11ca49f734288f3cbf0ce45eb81530075006d004f00 ,
    0x6600730065006c006c0066006f007200000000000000b0bd0eeaaff55740a5eb ,
    0x393481fda4f4070000008eb9041ea2033a4a913901a71864de18730065006c00 ,
    0x6c0066006f007200000000000000195829dc71c54f45a716724ee3b066a90700 ,
    0x00008eb9041ea2033a4a913901a71864de1843006f006d0070004e0061006d00 ,
    0x6500000000000000622b4027a9a0cd4da869bce313715ff6070000008eb9041e ,
    0xa2033a4a913901a71864de18530061006c006500730052006500700000000000 ,
    0x00007707cb18d8d39040a29368c09b261c96070000008eb9041ea2033a4a9139 ,
    0x01a71864de1849006e0076006f00690063006500440061007400650000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="qryRptSalesHeader.SalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.CompName"
        dbInteger "ColumnWidth" ="5985"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfsellfor"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd13fed31f2c5164993afd89c896297d0
        End
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9341c7cd77a8a4bb5aade3328fcbfbb
        End
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="InvDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5699560d8dd9cd43b741a5075497280b
        End
    End
    Begin
        dbText "Name" ="markup"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x22d257627aef7e498a897f7912dfeab2
        End
    End
    Begin
        dbText "Name" ="GSTAmount"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa06193c4a93f3e46a646c0e33428af83
        End
    End
    Begin
        dbText "Name" ="ContactName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x290d90fa9cdff848b2f6fe57977594c0
        End
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.sellfor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.InvDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.QuoteDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.qryRptSalesHeader_SellforSum.sellfor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.qryRptSalesHeader_SellforSum.quotefor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.markup"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ContactGeneral.GSTExempt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.GSTAmount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.ContactName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalesHeader.dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
End
