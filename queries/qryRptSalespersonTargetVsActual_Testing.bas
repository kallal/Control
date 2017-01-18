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
    Expression ="qryRptSalespersonActualSumFiscalYr.SumOfsellfor"
    Expression ="qryRptSalespersonActualSumFiscalYr.FN"
    Expression ="qryRptSalespersonActualSumFiscalYr.LN"
    Alias ="TotalEst"
    Expression ="[EstAmt07]+[EstAmt08]+[EstAmt09]"
    Alias ="ThisMonthTarget"
    Expression ="IIf([EstAmt10]>0,[estAmt10],0)"
    Alias ="ThisMonthActual"
    Expression ="qryRptSalespersonActualSumCurrentMo.sumofsellfor"
    Alias ="ThreeMonthTarget"
    Expression ="[estAmt09]+[estAmt07]+[estAmt08]"
    Alias ="ThreeMonthActual"
    Expression ="qryRptSalespersonActualSumThreePrevMo.sumofsellfor"
    Expression ="qryCountNewContactGeneral.CountOfID"
    Expression ="qryCountNewContactGeneralYTD.CountOfID"
    Alias ="newclientsexp"
    Expression ="[newclt01]+[newclt02]+[newclt03]+[newclt04]+[newclt05]+[newclt06]+[newclt07]+[ne"
        "wclt08]"
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
    Expression ="qryRptSalespersonActualSumFiscalYr.SumOfsellfor"
    Flag =1
    Expression ="qryRptSalespersonActualSumFiscalYr.FN"
    Flag =0
End
Begin Groups
    Expression ="dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumFiscalYr.SumOfsellfor"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumFiscalYr.FN"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumFiscalYr.LN"
    GroupLevel =0
    Expression ="[EstAmt07]+[EstAmt08]+[EstAmt09]"
    GroupLevel =0
    Expression ="IIf([EstAmt10]>0,[estAmt10],0)"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumCurrentMo.sumofsellfor"
    GroupLevel =0
    Expression ="[estAmt09]+[estAmt07]+[estAmt08]"
    GroupLevel =0
    Expression ="qryRptSalespersonActualSumThreePrevMo.sumofsellfor"
    GroupLevel =0
    Expression ="qryCountNewContactGeneral.CountOfID"
    GroupLevel =0
    Expression ="qryCountNewContactGeneralYTD.CountOfID"
    GroupLevel =0
    Expression ="[newclt01]+[newclt02]+[newclt03]+[newclt04]+[newclt05]+[newclt06]+[newclt07]+[ne"
        "wclt08]"
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
dbBinary "GUID" = Begin
    0xf015ef3ccf2001499d6e7f995eb00a00
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000bbcc5b0986b71a4ba8ca76b35ed174aa00000000fd7a98c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500530061006c006500730054006100 ,
    0x7200670065007400000000000000b20e1489690fb64ea2a68de81dcdf2bf0000 ,
    0x000046e2a970ec62e440000000000000000071007200790043006f0075006e00 ,
    0x74004e006500770043006f006e007400610063007400470065006e0065007200 ,
    0x61006c00590054004400000000000000f793d5bfa44a43478c8258cb6d8e59d3 ,
    0x00000000fb13aa70ec62e440000000000000000071007200790043006f007500 ,
    0x6e0074004e006500770043006f006e007400610063007400470065006e006500 ,
    0x720061006c00000000000000dafa8512343e534299a479e52387ce3600000000 ,
    0x9cd4aa70ec62e440000000000000000071007200790052007000740053006100 ,
    0x6c006500730070006500720073006f006e00410063007400750061006c005300 ,
    0x75006d005400680072006500650050007200650076004d006f00000000000000 ,
    0xa6507c010de6c242a0abe6af7f73e34200000000068fab70ec62e44000000000 ,
    0x00000000710072007900520070007400530061006c0065007300700065007200 ,
    0x73006f006e00410063007400750061006c00530075006d004600690073006300 ,
    0x61006c005900720000000000000018ba04bc8109c44a90ba664743ee50b40000 ,
    0x0000145cac70ec62e44000000000000000007100720079005200700074005300 ,
    0x61006c006500730070006500720073006f006e00410063007400750061006c00 ,
    0x530075006d00430075007200720065006e0074004d006f0000000000000098d1 ,
    0x9276aace5d49aaadd93f337b48a1070000000000000000000000000000000000 ,
    0x000074006f00740061006c005900540044000000000000002f8dd8ba87b99649 ,
    0x895e5a5be5ffa5b2070000000000000000000000000000000000000054006f00 ,
    0x740061006c00450073007400000000000000622ebde6c944e8458da7fc60f3b6 ,
    0x8414070000000000000000000000000000000000000054006800690073004d00 ,
    0x6f006e0074006800540061007200670065007400000000000000e980dfb6ff3d ,
    0x5841bb97954680fb40af07000000000000000000000000000000000000005400 ,
    0x6800690073004d006f006e0074006800410063007400750061006c0000000000 ,
    0x000097d656e64adbea4fa6d26c122e67a7290700000000000000000000000000 ,
    0x000000000000540068007200650065004d006f006e0074006800540061007200 ,
    0x670065007400000000000000b28e6ccb74205c4abff5058ea3ea0e1107000000 ,
    0x00000000000000000000000000000000540068007200650065004d006f006e00 ,
    0x74006800410063007400750061006c00000000000000bb71a5772891424e948f ,
    0xee46ac65c5d807000000000000000000000000000000000000006e0065007700 ,
    0x63006c00690065006e0074007300650078007000000000000000547682a9e00a ,
    0xdc41af76a65b6c5cd50407000000bbcc5b0986b71a4ba8ca76b35ed174aa4300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650049004400 ,
    0x0000000000004deb041a8bb4db43a25851bc3e57e03d07000000a6507c010de6 ,
    0xc242a0abe6af7f73e342530075006d004f006600730065006c006c0066006f00 ,
    0x72000000000000002b42c8be7cfa534a8515b53e50209ccf07000000a6507c01 ,
    0x0de6c242a0abe6af7f73e34246004e000000000000006ee7053a7af8f44c9a58 ,
    0x5dba8febe06007000000a6507c010de6c242a0abe6af7f73e3424c004e000000 ,
    0x0000000072c39b95b72c074ca6f43864bbedfe9f07000000bbcc5b0986b71a4b ,
    0xa8ca76b35ed174aa45007300740041006d00740030003700000000000000fdc8 ,
    0xd52471fcec4fb9ae79677358b8bc07000000bbcc5b0986b71a4ba8ca76b35ed1 ,
    0x74aa45007300740041006d00740030003800000000000000b3c2992559ff1e4d ,
    0x87b637aab13346df07000000bbcc5b0986b71a4ba8ca76b35ed174aa45007300 ,
    0x740041006d007400300039000000000000007246c34eab08a24b83cff1a0259b ,
    0x77e507000000bbcc5b0986b71a4ba8ca76b35ed174aa45007300740041006d00 ,
    0x7400310030000000000000004deb041a8bb4db43a25851bc3e57e03d07000000 ,
    0x18ba04bc8109c44a90ba664743ee50b4730075006d006f006600730065006c00 ,
    0x6c0066006f0072000000000000004deb041a8bb4db43a25851bc3e57e03d0700 ,
    0x0000dafa8512343e534299a479e52387ce36730075006d006f00660073006500 ,
    0x6c006c0066006f00720000000000000088068c183447f94bbb4cfb542495270b ,
    0x07000000f793d5bfa44a43478c8258cb6d8e59d343006f0075006e0074004f00 ,
    0x66004900440000000000000088068c183447f94bbb4cfb542495270b07000000 ,
    0xb20e1489690fb64ea2a68de81dcdf2bf43006f0075006e0074004f0066004900 ,
    0x4400000000000000a4ef5be81adec241b39d183f4a0bfe7d07000000bbcc5b09 ,
    0x86b71a4ba8ca76b35ed174aa6e006500770063006c0074003000310000000000 ,
    0x000069e0784682a2e74a8e5840ec59eb296807000000bbcc5b0986b71a4ba8ca ,
    0x76b35ed174aa6e006500770063006c00740030003200000000000000ed033766 ,
    0x358717429cd484565af9725b07000000bbcc5b0986b71a4ba8ca76b35ed174aa ,
    0x6e006500770063006c0074003000330000000000000006b05bb3770b1148ae3f ,
    0x4481c2f4bafd07000000bbcc5b0986b71a4ba8ca76b35ed174aa6e0065007700 ,
    0x63006c0074003000340000000000000001bae32759d31342b969cbbcc321d092 ,
    0x07000000bbcc5b0986b71a4ba8ca76b35ed174aa6e006500770063006c007400 ,
    0x300035000000000000008084c7ea9cc4374288d6b608b328f25507000000bbcc ,
    0x5b0986b71a4ba8ca76b35ed174aa6e006500770063006c007400300036000000 ,
    0x0000000055b6674f2da2c64b9a793f4a4a3fe5f807000000bbcc5b0986b71a4b ,
    0xa8ca76b35ed174aa6e006500770063006c007400300037000000000000005d1b ,
    0x638e099b9042927acda2a03280c807000000bbcc5b0986b71a4ba8ca76b35ed1 ,
    0x74aa6e006500770063006c007400300038000000000000005c8e63e116aab741 ,
    0xbd843cc24df51cf207000000b20e1489690fb64ea2a68de81dcdf2bf53006100 ,
    0x6c0065007300520065007000490044000000000000005c8e63e116aab741bd84 ,
    0x3cc24df51cf207000000f793d5bfa44a43478c8258cb6d8e59d3530061006c00 ,
    0x6500730052006500700049004400000000000000c6c54d8e9dff594db3e19de4 ,
    0xc2b573f507000000dafa8512343e534299a479e52387ce364900440000000000 ,
    0x0000c6c54d8e9dff594db3e19de4c2b573f507000000a6507c010de6c242a0ab ,
    0xe6af7f73e34249004400000000000000c6c54d8e9dff594db3e19de4c2b573f5 ,
    0x0700000018ba04bc8109c44a90ba664743ee50b4490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
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
End
Begin
    State =0
    Left =148
    Top =45
    Right =1681
    Bottom =893
    Left =-1
    Top =-1
    Right =1501
    Bottom =266
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployeeSalesTarget"
        Name =""
    End
    Begin
        Left =211
        Top =227
        Right =355
        Bottom =371
        Top =0
        Name ="qryCountNewContactGeneralYTD"
        Name =""
    End
    Begin
        Left =445
        Top =188
        Right =685
        Bottom =332
        Top =0
        Name ="qryCountNewContactGeneral"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="qryRptSalespersonActualSumThreePrevMo"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="qryRptSalespersonActualSumFiscalYr"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="qryRptSalespersonActualSumCurrentMo"
        Name =""
    End
End
