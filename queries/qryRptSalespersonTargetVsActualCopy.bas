Operation =1
Option =0
Having ="(((qryRptSalespersonActualSumFiscalYr.FN)<>\"\"))"
Begin InputTables
    Name ="dbo_CompanyEmployeeSalesTarget"
    Name ="qryCountNewContactGeneralYTD"
    Name ="qryCountNewContactGeneral"
    Name ="qryRptSalespersonActualSumThreePrevMo"
    Name ="qryRptSalespersonActualSumFiscalYr"
    Name ="qryRptSalespersonActualSumCurrentMo"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID"
    Alias ="totalYTD"
    Expression ="qryRptSalespersonActualSumFiscalYr.sellfor"
    Expression ="qryRptSalespersonActualSumFiscalYr.FN"
    Expression ="qryRptSalespersonActualSumFiscalYr.LN"
    Alias ="TotalEst"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt01"
    Alias ="ThisMonthTarget"
    Expression ="IIf([EstAmt02]>0,[estAmt02],0)"
    Alias ="ThisMonthActual"
    Expression ="qryRptSalespersonActualSumCurrentMo.sumofsellfor"
    Alias ="ThreeMonthTarget"
    Expression ="[estAmt11]+[estAmt12]+[estAmt01]"
    Alias ="ThreeMonthActual"
    Expression ="qryRptSalespersonActualSumThreePrevMo.sumofsellfor"
    Expression ="qryCountNewContactGeneral.CountOfID"
    Expression ="qryCountNewContactGeneralYTD.CountOfID"
    Alias ="newclientsexp"
    Expression ="dbo_CompanyEmployeeSalesTarget.newclt01"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployeeSalesTarget"
    RightTable ="qryCountNewContactGeneralYTD"
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryCountNewContactGeneralYTD."
        "SalesRepID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeSalesTarget"
    RightTable ="qryCountNewContactGeneral"
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryCountNewContactGeneral.Sal"
        "esRepID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeSalesTarget"
    RightTable ="qryRptSalespersonActualSumThreePrevMo"
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryRptSalespersonActualSumThr"
        "eePrevMo.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeSalesTarget"
    RightTable ="qryRptSalespersonActualSumFiscalYr"
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryRptSalespersonActualSumFis"
        "calYr.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployeeSalesTarget"
    RightTable ="qryRptSalespersonActualSumCurrentMo"
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID = qryRptSalespersonActualSumCur"
        "rentMo.ID"
    Flag =2
End
Begin OrderBy
    Expression ="qryRptSalespersonActualSumFiscalYr.sellfor"
    Flag =1
    Expression ="qryRptSalespersonActualSumFiscalYr.FN"
    Flag =0
End
Begin Groups
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumFiscalYr.sellfor"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumFiscalYr.FN"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumFiscalYr.LN"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt01"
    GroupLevel =0
    Expression ="IIf([EstAmt02]>0,[estAmt02],0)"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumCurrentMo.sumofsellfor"
    GroupLevel =0
    Expression ="[estAmt11]+[estAmt12]+[estAmt01]"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumThreePrevMo.sumofsellfor"
    GroupLevel =0
    Expression ="qryCountNewContactGeneral.CountOfID"
    GroupLevel =0
    Expression ="qryCountNewContactGeneralYTD.CountOfID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeSalesTarget.newclt01"
    GroupLevel =0
End
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
    0x9276aace5d49aaadd93f337b48a1070000003ac4c02d6a067742afa631a4de8b ,
    0x5a7474006f00740061006c005900540044000000000000002f8dd8ba87b99649 ,
    0x895e5a5be5ffa5b2070000003ac4c02d6a067742afa631a4de8b5a7454006f00 ,
    0x740061006c00450073007400000000000000622ebde6c944e8458da7fc60f3b6 ,
    0x8414070000003ac4c02d6a067742afa631a4de8b5a7454006800690073004d00 ,
    0x6f006e0074006800540061007200670065007400000000000000e980dfb6ff3d ,
    0x5841bb97954680fb40af070000003ac4c02d6a067742afa631a4de8b5a745400 ,
    0x6800690073004d006f006e0074006800410063007400750061006c0000000000 ,
    0x000097d656e64adbea4fa6d26c122e67a729070000003ac4c02d6a067742afa6 ,
    0x31a4de8b5a74540068007200650065004d006f006e0074006800540061007200 ,
    0x670065007400000000000000b28e6ccb74205c4abff5058ea3ea0e1107000000 ,
    0x3ac4c02d6a067742afa631a4de8b5a74540068007200650065004d006f006e00 ,
    0x74006800410063007400750061006c00000000000000bb71a5772891424e948f ,
    0xee46ac65c5d8070000003ac4c02d6a067742afa631a4de8b5a746e0065007700 ,
    0x63006c00690065006e00740073006500780070000000000000008a1712ccfbd4 ,
    0xb94d972f069d18afe48d07000000b7dbdae76666ae4ab7c16c77901ca0034300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650049004400 ,
    0x0000000000004deb041a8bb4db43a25851bc3e57e03d070000004f91188c90a8 ,
    0x454cb57efe66fcf07647730065006c006c0066006f007200000000000000238a ,
    0x70cc04f1b542bd79b33633915bc6070000004f91188c90a8454cb57efe66fcf0 ,
    0x764746004e0000000000000027afc0ba5db60e409636470e73e1fc4307000000 ,
    0x4f91188c90a8454cb57efe66fcf076474c004e00000000000000bb0a9bfbb88b ,
    0xdb45bf1cddb38301f2c207000000b7dbdae76666ae4ab7c16c77901ca0034500 ,
    0x7300740041006d00740030003100000000000000565601e3befdd64f80c38a2b ,
    0x19f0ed1207000000b7dbdae76666ae4ab7c16c77901ca0034500730074004100 ,
    0x6d007400300032000000000000004deb041a8bb4db43a25851bc3e57e03d0700 ,
    0x000018ba04bc8109c44a90ba664743ee50b4730075006d006f00660073006500 ,
    0x6c006c0066006f0072000000000000005ce1d9ba54d0d647b8b3e6ee9f21ba43 ,
    0x07000000b7dbdae76666ae4ab7c16c77901ca00365007300740041006d007400 ,
    0x31003100000000000000a7ef6bb3eda47d4f90e408fea8cae01e07000000b7db ,
    0xdae76666ae4ab7c16c77901ca00365007300740041006d007400310032000000 ,
    0x000000004deb041a8bb4db43a25851bc3e57e03d07000000dafa8512343e5342 ,
    0x99a479e52387ce36730075006d006f006600730065006c006c0066006f007200 ,
    0x00000000000088068c183447f94bbb4cfb542495270b07000000f793d5bfa44a ,
    0x43478c8258cb6d8e59d343006f0075006e0074004f0066004900440000000000 ,
    0x000088068c183447f94bbb4cfb542495270b07000000b20e1489690fb64ea2a6 ,
    0x8de81dcdf2bf43006f0075006e0074004f006600490044000000000000003db8 ,
    0x7a2d1a622e42bd377c18a5501e8f07000000b7dbdae76666ae4ab7c16c77901c ,
    0xa0036e006500770063006c007400300031000000000000005c8e63e116aab741 ,
    0xbd843cc24df51cf207000000b20e1489690fb64ea2a68de81dcdf2bf53006100 ,
    0x6c0065007300520065007000490044000000000000005c8e63e116aab741bd84 ,
    0x3cc24df51cf207000000f793d5bfa44a43478c8258cb6d8e59d3530061006c00 ,
    0x6500730052006500700049004400000000000000836b4761bb445b46b7a94919 ,
    0x2117f87007000000dafa8512343e534299a479e52387ce364900440000000000 ,
    0x0000836b4761bb445b46b7a949192117f870070000004f91188c90a8454cb57e ,
    0xfe66fcf0764749004400000000000000836b4761bb445b46b7a949192117f870 ,
    0x0700000018ba04bc8109c44a90ba664743ee50b4490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
dbBinary "GUID" = Begin
    0x3ac4c02d6a067742afa631a4de8b5a74
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
Begin
    State =0
    Left =30
    Top =273
    Right =1610
    Bottom =1149
    Left =-1
    Top =-1
    Right =1548
    Bottom =359
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =266
        Bottom =197
        Top =0
        Name ="dbo_CompanyEmployeeSalesTarget"
        Name =""
    End
    Begin
        Left =138
        Top =232
        Right =282
        Bottom =376
        Top =0
        Name ="qryCountNewContactGeneralYTD"
        Name =""
    End
    Begin
        Left =656
        Top =313
        Right =896
        Bottom =457
        Top =0
        Name ="qryCountNewContactGeneral"
        Name =""
    End
    Begin
        Left =295
        Top =16
        Right =593
        Bottom =211
        Top =0
        Name ="qryRptSalespersonActualSumThreePrevMo"
        Name =""
    End
    Begin
        Left =347
        Top =243
        Right =640
        Bottom =477
        Top =0
        Name ="qryRptSalespersonActualSumFiscalYr"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =936
        Bottom =269
        Top =0
        Name ="qryRptSalespersonActualSumCurrentMo"
        Name =""
    End
End
