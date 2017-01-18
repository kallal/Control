Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyEmployee"
    Alias ="dbo_CompanyEmployee_1"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Alias ="SalesRep"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_ContactGeneral.CsrID"
    Alias ="CSR"
    Expression ="dbo_CompanyEmployee_1.FN"
    Expression ="dbo_ContactGeneral.MarkToDeleteYN"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactGeneral.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee_1"
    Expression ="dbo_ContactGeneral.CsrID = dbo_CompanyEmployee_1.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x2e0bd0a9e774df428c6b9e10b99f479f
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
    0x0000000000002acd3ff858de9e469d776c7cfb44517e070000002e0bd0a9e774 ,
    0xdf428c6b9e10b99f479f530061006c0065007300520065007000000000000000 ,
    0x004ed36b1b098e439db855e07cba362d070000002e0bd0a9e774df428c6b9e10 ,
    0xb99f479f43005300520000000000000003933b4b9f324445a82e368651b1052b ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b949004400000000000000124b ,
    0x02a694dd0e4c96264abff258312707000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b943006f006d0070004e0061006d00650000000000000057fab0ed9f451a4a ,
    0xb512137d4cabc63007000000d7c549c33168bc4ab70151c855c0b6b953006100 ,
    0x6c0065007300520065007000490044000000000000002b42c8be7cfa534a8515 ,
    0xb53e50209ccf07000000431c785ce507fd4487a1822c7cd25c6646004e000000 ,
    0x00000000b61e2062eb3db54aa58b2b5979d040e807000000d7c549c33168bc4a ,
    0xb70151c855c0b6b9430073007200490044000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x65005f003100000000000000d5edde8392c4334bb42324464be98acc07000000 ,
    0xd7c549c33168bc4ab70151c855c0b6b94d00610072006b0054006f0044006500 ,
    0x6c0065007400650059004e00000000000000c6c54d8e9dff594db3e19de4c2b5 ,
    0x73f507000000431c785ce507fd4487a1822c7cd25c6649004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3120"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2acd3ff858de9e469d776c7cfb44517e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CSR"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x004ed36b1b098e439db855e07cba362d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.MarkToDeleteYN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1098
    Bottom =980
    Left =-1
    Top =-1
    Right =952
    Bottom =468
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =24
        Top =32
        Right =237
        Bottom =500
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =269
        Top =8
        Right =526
        Bottom =196
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =293
        Top =216
        Right =564
        Bottom =501
        Top =0
        Name ="dbo_CompanyEmployee_1"
        Name =""
    End
End
