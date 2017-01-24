dbMemo "SQL" ="SELECT dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID, qryRptSalespersonActual"
    "SumFiscalYr.sellfor AS totalYTD, qryRptSalespersonActualSumFiscalYr.FN, qryRptSa"
    "lespersonActualSumFiscalYr.LN, [TotalEst] AS TotalEst, IIf([ThisMonth]>0,[ThisMo"
    "nth],0) AS ThisMonthTarget, qryRptSalespersonActualSumCurrentMo.sumofsellfor AS "
    "ThisMonthActual, [ThreeMonths] AS ThreeMonthTarget, qryRptSalespersonActualSumTh"
    "reePrevMo.sumofsellfor AS ThreeMonthActual, qryCountNewContactGeneral.CountOfID,"
    " qryCountNewContactGeneralYTD.CountOfID, dbo_CompanyEmployeeSalesTarget.[newclt0"
    "1] AS newclientsexp\015\012FROM ((((dbo_CompanyEmployeeSalesTarget LEFT JOIN qry"
    "CountNewContactGeneralYTD ON dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = "
    "qryCountNewContactGeneralYTD.SalesRepID) LEFT JOIN qryCountNewContactGeneral ON "
    "dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryCountNewContactGeneral.Sal"
    "esRepID) LEFT JOIN qryRptSalespersonActualSumThreePrevMo ON dbo_CompanyEmployeeS"
    "alesTarget.CompanyEmployeeID = qryRptSalespersonActualSumThreePrevMo.ID) LEFT JO"
    "IN qryRptSalespersonActualSumFiscalYr ON dbo_CompanyEmployeeSalesTarget.CompanyE"
    "mployeeID = qryRptSalespersonActualSumFiscalYr.ID) LEFT JOIN qryRptSalespersonAc"
    "tualSumCurrentMo ON dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryRptSal"
    "espersonActualSumCurrentMo.ID\015\012WHERE (((qryRptSalespersonActualSumFiscalYr"
    ".FN)<>\"\"))\015\012ORDER BY qryRptSalespersonActualSumFiscalYr.sellfor DESC , q"
    "ryRptSalespersonActualSumFiscalYr.FN;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b7dbdae76666ae4ab7c16c77901ca00300000000be0ab4b4 ,
    0x33a8e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500530061006c006500730054006100 ,
    0x7200670065007400000000000000b20e1489690fb64ea2a68de81dcdf2bf0000 ,
    0x00004193261274a8e440000000000000000071007200790043006f0075006e00 ,
    0x74004e006500770043006f006e007400610063007400470065006e0065007200 ,
    0x61006c00590054004400000000000000f793d5bfa44a43478c8258cb6d8e59d3 ,
    0x000000004193261274a8e440000000000000000071007200790043006f007500 ,
    0x6e0074004e006500770043006f006e007400610063007400470065006e006500 ,
    0x720061006c00000000000000dafa8512343e534299a479e52387ce3600000000 ,
    0xba99332f74a8e440000000000000000071007200790052007000740053006100 ,
    0x6c006500730070006500720073006f006e00410063007400750061006c005300 ,
    0x75006d005400680072006500650050007200650076004d006f00000000000000 ,
    0x4f91188c90a8454cb57efe66fcf07647000000002454342f74a8e44000000000 ,
    0x00000000710072007900520070007400530061006c0065007300700065007200 ,
    0x73006f006e00410063007400750061006c00530075006d004600690073006300 ,
    0x61006c005900720000000000000018ba04bc8109c44a90ba664743ee50b40000 ,
    0x00005e728e0574a8e44000000000000000007100720079005200700074005300 ,
    0x61006c006500730070006500720073006f006e00410063007400750061006c00 ,
    0x530075006d00430075007200720065006e0074004d006f0000000000000098d1 ,
    0x9276aace5d49aaadd93f337b48a1070000004f5cf958c3b41544b060eeeaf45f ,
    0xd8bc74006f00740061006c005900540044000000000000002f8dd8ba87b99649 ,
    0x895e5a5be5ffa5b2070000004f5cf958c3b41544b060eeeaf45fd8bc54006f00 ,
    0x740061006c00450073007400000000000000622ebde6c944e8458da7fc60f3b6 ,
    0x8414070000004f5cf958c3b41544b060eeeaf45fd8bc54006800690073004d00 ,
    0x6f006e0074006800540061007200670065007400000000000000e980dfb6ff3d ,
    0x5841bb97954680fb40af070000004f5cf958c3b41544b060eeeaf45fd8bc5400 ,
    0x6800690073004d006f006e0074006800410063007400750061006c0000000000 ,
    0x000097d656e64adbea4fa6d26c122e67a729070000004f5cf958c3b41544b060 ,
    0xeeeaf45fd8bc540068007200650065004d006f006e0074006800540061007200 ,
    0x670065007400000000000000b28e6ccb74205c4abff5058ea3ea0e1107000000 ,
    0x4f5cf958c3b41544b060eeeaf45fd8bc540068007200650065004d006f006e00 ,
    0x74006800410063007400750061006c00000000000000bb71a5772891424e948f ,
    0xee46ac65c5d8070000004f5cf958c3b41544b060eeeaf45fd8bc6e0065007700 ,
    0x63006c00690065006e00740073006500780070000000000000008a1712ccfbd4 ,
    0xb94d972f069d18afe48d07000000b7dbdae76666ae4ab7c16c77901ca0034300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650049004400 ,
    0x0000000000004deb041a8bb4db43a25851bc3e57e03d070000004f91188c90a8 ,
    0x454cb57efe66fcf07647730065006c006c0066006f007200000000000000238a ,
    0x70cc04f1b542bd79b33633915bc6070000004f91188c90a8454cb57efe66fcf0 ,
    0x764746004e0000000000000027afc0ba5db60e409636470e73e1fc4307000000 ,
    0x4f91188c90a8454cb57efe66fcf076474c004e000000000000004deb041a8bb4 ,
    0xdb43a25851bc3e57e03d0700000018ba04bc8109c44a90ba664743ee50b47300 ,
    0x75006d006f006600730065006c006c0066006f0072000000000000004deb041a ,
    0x8bb4db43a25851bc3e57e03d07000000dafa8512343e534299a479e52387ce36 ,
    0x730075006d006f006600730065006c006c0066006f0072000000000000008806 ,
    0x8c183447f94bbb4cfb542495270b07000000f793d5bfa44a43478c8258cb6d8e ,
    0x59d343006f0075006e0074004f0066004900440000000000000088068c183447 ,
    0xf94bbb4cfb542495270b07000000b20e1489690fb64ea2a68de81dcdf2bf4300 ,
    0x6f0075006e0074004f006600490044000000000000003db87a2d1a622e42bd37 ,
    0x7c18a5501e8f07000000b7dbdae76666ae4ab7c16c77901ca0036e0065007700 ,
    0x63006c007400300031000000000000005c8e63e116aab741bd843cc24df51cf2 ,
    0x07000000b20e1489690fb64ea2a68de81dcdf2bf530061006c00650073005200 ,
    0x65007000490044000000000000005c8e63e116aab741bd843cc24df51cf20700 ,
    0x0000f793d5bfa44a43478c8258cb6d8e59d3530061006c006500730052006500 ,
    0x700049004400000000000000836b4761bb445b46b7a949192117f87007000000 ,
    0xdafa8512343e534299a479e52387ce3649004400000000000000836b4761bb44 ,
    0x5b46b7a949192117f870070000004f91188c90a8454cb57efe66fcf076474900 ,
    0x4400000000000000836b4761bb445b46b7a949192117f8700700000018ba04bc ,
    0x8109c44a90ba664743ee50b44900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
dbBinary "GUID" = Begin
    0x4f5cf958c3b41544b060eeeaf45fd8bc
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x052fd68243c17f48a2bbbccceb26edc9
        End
    End
    Begin
        dbText "Name" ="TotalYTD"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x98d19276aace5d49aaadd93f337b48a1
        End
    End
    Begin
        dbText "Name" ="TotalEst"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2f8dd8ba87b99649895e5a5be5ffa5b2
        End
    End
    Begin
        dbText "Name" ="ThisMonthTarget"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x622ebde6c944e8458da7fc60f3b68414
        End
    End
    Begin
        dbText "Name" ="ThisMonthActual"
        dbInteger "ColumnWidth" ="1800"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe980dfb6ff3d5841bb97954680fb40af
        End
    End
    Begin
        dbText "Name" ="ThreeMonthTarget"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97d656e64adbea4fa6d26c122e67a729
        End
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ThreeMonthActual"
        dbInteger "ColumnWidth" ="2895"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb28e6ccb74205c4abff5058ea3ea0e11
        End
    End
    Begin
        dbText "Name" ="qryCountNewContactGeneral.CountOfID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qryCountNewContactGeneralYTD.CountOfID"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="newClientsexp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb71a5772891424e948fee46ac65c5d8
        End
    End
    Begin
        dbText "Name" ="qryRptSalespersonActualSumFiscalYr.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptSalespersonActualSumFiscalYr.LN"
        dbLong "AggregateType" ="-1"
    End
End
