Operation =1
Option =0
Having ="(((dbo_ContactGeneral.IsClient)=True) AND ((qryEstAnalysis_Detail.QuoteMY)=Month"
    "(Now()) & Year(Now())))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
    Name ="qryEstAnalysis_Detail"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.CompName"
    Alias ="SalesRep"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Expression ="dbo_ContactGeneral.MarkToDeleteYN"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsProspect"
    Expression ="qryEstAnalysis_Detail.QuoteMY"
    Alias ="SumOfSumOfsellfor"
    Expression ="Sum(qryEstAnalysis_Detail.SumOfsellfor)"
    Alias ="SumOfNumComponents"
    Expression ="Sum(qryEstAnalysis_Detail.NumComponents)"
    Alias ="NumEstimates"
    Expression ="DCount(\"[QuoteNum]\",\"dbo_ProjectHeader\",\"Month(QuoteDate) & year(QuoteDate)"
        " = \" & [QuoteMY])"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactGeneral.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ContactGeneral"
    RightTable ="qryEstAnalysis_Detail"
    Expression ="dbo_ContactGeneral.ID = qryEstAnalysis_Detail.ContactGeneralID"
    Flag =2
End
Begin Groups
    Expression ="dbo_ContactGeneral.CompName"
    GroupLevel =0
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.MarkToDeleteYN"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.IsClient"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.IsProspect"
    GroupLevel =0
    Expression ="qryEstAnalysis_Detail.QuoteMY"
    GroupLevel =0
    Expression ="DCount(\"[QuoteNum]\",\"dbo_ProjectHeader\",\"Month(QuoteDate) & year(QuoteDate)"
        " = \" & [QuoteMY])"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x298314b6aaf0ad4b9eb33efc2a7383ab
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000431c785ce507fd4487a1 ,
    0x822c7cd25c6600000000412096c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006d00700061006e00790045006d0070006c006f00790065006500 ,
    0x0000000000004424f2eba8426c4f857d752f461dae3100000000af18af6eec62 ,
    0xe440000000000000000071007200790045007300740041006e0061006c007900 ,
    0x7300690073005f00440065007400610069006c0000000000000019941e50aca8 ,
    0x10469ddedf6ab175833807000000000000000000000000000000000000005300 ,
    0x61006c0065007300520065007000000000000000803b1d0633e02642b96ac383 ,
    0x13f8c0320700000000000000000000000000000000000000530075006d004f00 ,
    0x6600530075006d004f006600730065006c006c0066006f007200000000000000 ,
    0x422d44d4e5693146bb56fc35fc4d3e0207000000000000000000000000000000 ,
    0x00000000530075006d004f0066004e0075006d0043006f006d0070006f006e00 ,
    0x65006e0074007300000000000000750b1dd9311032409109a6f610d47fc80700 ,
    0x0000000000000000000000000000000000004e0075006d004500730074006900 ,
    0x6d006100740065007300000000000000124b02a694dd0e4c96264abff2583127 ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b943006f006d0070004e006100 ,
    0x6d0065000000000000002b42c8be7cfa534a8515b53e50209ccf07000000431c ,
    0x785ce507fd4487a1822c7cd25c6666006e000000000000006ee7053a7af8f44c ,
    0x9a585dba8febe06007000000431c785ce507fd4487a1822c7cd25c666c006e00 ,
    0x000000000000d5edde8392c4334bb42324464be98acc07000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b94d00610072006b0054006f00440065006c0065007400 ,
    0x650059004e0000000000000017c69993fefe48429e58f91ca567f01a07000000 ,
    0xd7c549c33168bc4ab70151c855c0b6b94900730043006c00690065006e007400 ,
    0x000000000000fbb21d6db604ed4490b07800f207405507000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b949007300500072006f00730070006500630074000000 ,
    0x0000000080fb1f144cbe2e0038be2e004810c504070000004424f2eba8426c4f ,
    0x857d752f461dae31510075006f00740065004d00590000000000000054686772 ,
    0x1974c740938deea20835d556070000004424f2eba8426c4f857d752f461dae31 ,
    0x4e0075006d0043006f006d0070006f006e0065006e0074007300000000000000 ,
    0x57fab0ed9f451a4ab512137d4cabc63007000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b9530061006c006500730052006500700049004400000000000000c6c5 ,
    0x4d8e9dff594db3e19de4c2b573f507000000431c785ce507fd4487a1822c7cd2 ,
    0x5c664900440000000000000003933b4b9f324445a82e368651b1052b07000000 ,
    0xd7c549c33168bc4ab70151c855c0b6b949004400000000000000a802da7b854e ,
    0x1a4b8296a66eda53f99d070000004424f2eba8426c4f857d752f461dae314300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsProspect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa64f4c37a1799a429d9e64d0dd1159a2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.MarkToDeleteYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x79ca4150ad229446aca4c39400960411
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19941e50aca810469ddedf6ab1758338
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8ed85dac524ef046b7e6b60bbfe4d6bc
        End
        dbInteger "ColumnWidth" ="3180"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf55e06f3030db5459f19ba8fed225972
        End
    End
    Begin
        dbText "Name" ="qryEstAnalysis_Detail.QuoteMY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfSumOfsellfor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x803b1d0633e02642b96ac38313f8c032
        End
    End
    Begin
        dbText "Name" ="SumOfNumComponents"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x422d44d4e5693146bb56fc35fc4d3e02
        End
    End
    Begin
        dbText "Name" ="NumEstimates"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x750b1dd9311032409109a6f610d47fc8
        End
    End
End
Begin
    State =0
    Left =70
    Top =46
    Right =1599
    Bottom =769
    Left =-1
    Top =-1
    Right =1497
    Bottom =388
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =60
        Top =26
        Right =354
        Bottom =366
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =484
        Top =174
        Right =749
        Bottom =415
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =790
        Top =22
        Right =1324
        Bottom =303
        Top =0
        Name ="qryEstAnalysis_Detail"
        Name =""
    End
End
