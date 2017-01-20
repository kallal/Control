Operation =1
Option =0
Having ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectComponentHeader"
    Name ="qryCompanyEmployeeTaskSummarySUM"
    Name ="dbo_ProjectComponentOutsideService"
    Name ="qryRptProfitSummaryShipmentSUM"
    Name ="qryRptProfitSummaryStockSumTotal"
    Name ="qryRptProfitComponentTotal"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.IsRush"
    Expression ="dbo_ContactGeneral.CompName"
    Alias ="LabourAmt"
    Expression ="qryCompanyEmployeeTaskSummarySUM.SumOfNetCost"
    Alias ="OSAmt"
    Expression ="Sum(dbo_ProjectComponentOutsideService.QuoteAmt)"
    Alias ="ShipAmt"
    Expression ="qryRptProfitSummaryShipmentSUM.SumOfEstCost"
    Alias ="StockAmt"
    Expression ="qryRptProfitSummaryStockSumTotal.SumOfStockAmt"
    Expression ="qryRptProfitComponentTotal.totsell"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectHeader.ID = dbo_ProjectComponentHeader.ProjectHeaderID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryCompanyEmployeeTaskSummarySUM"
    Expression ="dbo_ProjectHeader.ID = qryCompanyEmployeeTaskSummarySUM.ProjectHeaderID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptProfitSummaryShipmentSUM"
    Expression ="dbo_ProjectHeader.ID = qryRptProfitSummaryShipmentSUM.ProjectHeaderID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectComponentOutsideService"
    Expression ="dbo_ProjectComponentHeader.ID = dbo_ProjectComponentOutsideService.ProjectCompon"
        "entID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptProfitSummaryStockSumTotal"
    Expression ="dbo_ProjectHeader.ID = qryRptProfitSummaryStockSumTotal.ProjectHeaderID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptProfitComponentTotal"
    Expression ="dbo_ProjectHeader.ID = qryRptProfitComponentTotal.ProjectHeaderID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Flag =1
End
Begin Groups
    Expression ="dbo_ProjectHeader.ID"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.DocketNum"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.InvoiceNum"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.Void"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.DocketDate"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.InvoiceDate"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.ProjectName"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.SalesRepID"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.CsrID"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.IsRush"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.CompName"
    GroupLevel =0
    Expression ="qryCompanyEmployeeTaskSummarySUM.SumOfNetCost"
    GroupLevel =0
    Expression ="qryRptProfitSummaryShipmentSUM.SumOfEstCost"
    GroupLevel =0
    Expression ="qryRptProfitSummaryStockSumTotal.SumOfStockAmt"
    GroupLevel =0
    Expression ="qryRptProfitComponentTotal.totsell"
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
    0x84479c7b0a28bd4d9de552a334f61935
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a10000000076461f4c2de0e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c2de0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e007400480065006100640065007200000000000000 ,
    0x672beb9716914e43ad281bb1314c425500000000610bb61050e0e44000000000 ,
    0x0000000071007200790043006f006d00700061006e00790045006d0070006c00 ,
    0x6f007900650065005400610073006b00530075006d006d006100720079005300 ,
    0x55004d00000000000000c252235b46cf774eb1cc0f5ab71b9a6100000000e2a7 ,
    0x5d4c2de0e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e0074004f007500740073006900 ,
    0x640065005300650072007600690063006500000000000000dbf8f9716aff304e ,
    0x9ffca3158b31a2bc00000000cc6eb61050e0e440000000000000000071007200 ,
    0x7900520070007400500072006f00660069007400530075006d006d0061007200 ,
    0x790053006800690070006d0065006e007400530055004d00000000000000483f ,
    0x9a30cad6414da6b99e1f53bd101d0000000080f7b61050e0e440000000000000 ,
    0x0000710072007900520070007400500072006f00660069007400530075006d00 ,
    0x6d00610072007900530074006f0063006b00530075006d0054006f0074006100 ,
    0x6c0000000000000034a86721b8fa2d4599aa72b13689a34700000000ec5ab710 ,
    0x50e0e4400000000000000000710072007900520070007400500072006f006600 ,
    0x6900740043006f006d0070006f006e0065006e00740054006f00740061006c00 ,
    0x000000000000809fd11154a71f0040a71f003012d1110700000084479c7b0a28 ,
    0xbd4d9de552a334f619354c00610062006f007500720041006d00740000000000 ,
    0x0000ba2ea950a9df0c45a4d2f26311e48b0e0700000084479c7b0a28bd4d9de5 ,
    0x52a334f619354f00530041006d0074000000000000008e85bb184594854485b9 ,
    0x9c19b0d7b9350700000084479c7b0a28bd4d9de552a334f61935530068006900 ,
    0x700041006d00740000000000000082e437992973774d9df8e6ebe1c030b80700 ,
    0x000084479c7b0a28bd4d9de552a334f61935530074006f0063006b0041006d00 ,
    0x740000000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8049004400000000000000749d4175d9cbb541b774 ,
    0x14bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f006300 ,
    0x6b00650074004e0075006d000000000000007da6a641b3cf604b95c0700a612b ,
    0x45850700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f006900 ,
    0x630065004e0075006d00000000000000e04379333b12ce4eb39eba2d39783d1f ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8056006f006900640000000000 ,
    0x0000c310a93c2fe0c4488706f21ce736cf3a0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8044006f0063006b00650074004400610074006500000000000000 ,
    0x77a5524b02faf248a18587169cb2874b0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8049006e0076006f006900630065004400610074006500000000000000 ,
    0x1c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80500072006f006a006500630074004e0061006d006500000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x4900440000000000000040de5e7aec65a745aa86e7e9e8cb55780700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80530061006c00650073005200650070004900 ,
    0x4400000000000000ce73341489752f42bffad7debac543a60700000035f87d9f ,
    0x0b136040ad3c2851f16d2a804300730072004900440000000000000093ba397e ,
    0x75759745b39991abbd4894170700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x490073005200750073006800000000000000fde2928bbc55824d8e33fcf8a8e7 ,
    0xc2e107000000bb4ee421343f624db77659eef5e022a143006f006d0070004e00 ,
    0x61006d006500000000000000c146f2dc70dc5a47abccf6d8e53232a207000000 ,
    0x672beb9716914e43ad281bb1314c4255530075006d004f0066004e0065007400 ,
    0x43006f0073007400000000000000c9a9ddcea37f69468920579db02c12160700 ,
    0x0000c252235b46cf774eb1cc0f5ab71b9a61510075006f007400650041006d00 ,
    0x740000000000000014309feb9216bc46a24b63e071fac2cc07000000dbf8f971 ,
    0x6aff304e9ffca3158b31a2bc530075006d004f00660045007300740043006f00 ,
    0x7300740000000000000075ee57744321f34c8c10a6e02360ecee07000000483f ,
    0x9a30cad6414da6b99e1f53bd101d530075006d004f006600530074006f006300 ,
    0x6b0041006d007400000000000000e32e9ad76869ca45aeef4c462a45f51a0700 ,
    0x000034a86721b8fa2d4599aa72b13689a34774006f007400730065006c006c00 ,
    0x0000000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f ,
    0x624db77659eef5e022a1490044000000000000002042568302f48b4d89eb4ba2 ,
    0xabddca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a00 ,
    0x65006300740048006500610064006500720049004400000000000000006a9a68 ,
    0xbf819947b96bb425e85d413007000000672beb9716914e43ad281bb1314c4255 ,
    0x500072006f006a00650063007400480065006100640065007200490044000000 ,
    0x00000000dff2606d5adab6429e9cfc2ff71cd58107000000dbf8f9716aff304e ,
    0x9ffca3158b31a2bc500072006f006a0065006300740048006500610064006500 ,
    0x72004900440000000000000029556c4fcc6de9418049e37cebcb8ed307000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4900440000000000000035ae08324c3f ,
    0x9b439499da5f2592a53307000000c252235b46cf774eb1cc0f5ab71b9a615000 ,
    0x72006f006a0065006300740043006f006d0070006f006e0065006e0074004900 ,
    0x44000000000000003d588d973a3b7443ba8d611ea4a1d78b07000000483f9a30 ,
    0xcad6414da6b99e1f53bd101d500072006f006a00650063007400480065006100 ,
    0x64006500720049004400000000000000cc673efb0fea0244847437160d84f94c ,
    0x0700000034a86721b8fa2d4599aa72b13689a347500072006f006a0065006300 ,
    0x7400480065006100640065007200490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8055507bcbaa5742bc556b3a412be754
        End
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca085da09509fc4c832edd791ddc35c3
        End
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x668975333e1b294283d3702171f6e1d6
        End
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa3f22ce9678c4541816d106941473713
        End
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x11813f9d259763428b94b35b502acca3
        End
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3377cfa46f0abd488dbf6f9806f5f605
        End
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x474bd3b72c36554eac4c4c14c0fe08fd
        End
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d9cd85b91f3d34881defd4600227430
        End
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6e2b9c3e209ffd42b287844730d052f7
        End
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb4c612a2a0fab4db710c5a155f507ab
        End
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43ffe2c55f11b4458120b6d23556eb3c
        End
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6e2fa0cb1368b42b39f06908131ccfd
        End
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="StockAmt"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x82e437992973774d9df8e6ebe1c030b8
        End
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="LabourAmt"
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x809fd11154a71f0040a71f003012d111
        End
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="OSAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xba2ea950a9df0c45a4d2f26311e48b0e
        End
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="ShipAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8e85bb184594854485b99c19b0d7b935
        End
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="qryRptProfitComponentTotal.totsell"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =109
    Top =58
    Right =1859
    Bottom =1007
    Left =-1
    Top =-1
    Right =1718
    Bottom =582
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =319
        Bottom =665
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =350
        Top =389
        Right =526
        Bottom =664
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =640
        Top =203
        Right =893
        Bottom =626
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =635
        Top =44
        Right =893
        Bottom =184
        Top =0
        Name ="qryCompanyEmployeeTaskSummarySUM"
        Name =""
    End
    Begin
        Left =931
        Top =48
        Right =1225
        Bottom =559
        Top =0
        Name ="dbo_ProjectComponentOutsideService"
        Name =""
    End
    Begin
        Left =357
        Top =172
        Right =612
        Bottom =270
        Top =0
        Name ="qryRptProfitSummaryShipmentSUM"
        Name =""
    End
    Begin
        Left =357
        Top =46
        Right =608
        Bottom =163
        Top =0
        Name ="qryRptProfitSummaryStockSumTotal"
        Name =""
    End
    Begin
        Left =356
        Top =276
        Right =613
        Bottom =380
        Top =0
        Name ="qryRptProfitComponentTotal"
        Name =""
    End
End
