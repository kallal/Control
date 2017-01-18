Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyEmployee"
    Alias ="dbo_CompanyEmployee_1"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Alias ="SalesRep"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_ContactGeneral.CsrID"
    Alias ="CSR"
    Expression ="dbo_CompanyEmployee_1.FN"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactGeneral.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =1
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee_1"
    Expression ="dbo_ContactGeneral.CsrID = dbo_CompanyEmployee_1.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query6].[SalesRep]"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0xaa91ea90de59c044a55f524a93fecf98
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000431c785ce507fd4487a1 ,
    0x822c7cd25c6600000000412096c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006d00700061006e00790045006d0070006c006f00790065006500 ,
    0x000000000000f622e5e63511f846b52e0eed1f97b79a07000000000000000000 ,
    0x00000000000000000000530061006c0065007300520065007000000000000000 ,
    0x935a0414d8603744b2021aaae2cc532807000000000000000000000000000000 ,
    0x00000000430053005200000000000000124b02a694dd0e4c96264abff2583127 ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b943006f006d0070004e006100 ,
    0x6d00650000000000000057fab0ed9f451a4ab512137d4cabc63007000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b9530061006c00650073005200650070004900 ,
    0x44000000000000002b42c8be7cfa534a8515b53e50209ccf07000000431c785c ,
    0xe507fd4487a1822c7cd25c6646004e00000000000000b61e2062eb3db54aa58b ,
    0x2b5979d040e807000000d7c549c33168bc4ab70151c855c0b6b9430073007200 ,
    0x49004400000000000000c6c54d8e9dff594db3e19de4c2b573f507000000431c ,
    0x785ce507fd4487a1822c7cd25c66490044000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x65005f00310000000000000003933b4b9f324445a82e368651b1052b07000000 ,
    0xd7c549c33168bc4ab70151c855c0b6b949004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="4395"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0da7ccaa55dd0945b285f883326bac68
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf622e5e63511f846b52e0eed1f97b79a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xed08b04dbca5e145b4879703a5691d03
        End
    End
    Begin
        dbText "Name" ="CSR"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x935a0414d8603744b2021aaae2cc5328
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd34d86731906c48912629689ba70d9b
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1607
    Bottom =980
    Left =-1
    Top =-1
    Right =1499
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =261
        Bottom =554
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =502
        Top =7
        Right =822
        Bottom =267
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =438
        Top =269
        Right =582
        Bottom =413
        Top =0
        Name ="dbo_CompanyEmployee_1"
        Name =""
    End
End
