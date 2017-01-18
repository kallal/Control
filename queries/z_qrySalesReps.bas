Operation =1
Option =0
Where ="(((dbo_CompanyEmployee.IsSalesRep)=True))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_CompanyEmployee.IsSalesRep"
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.FN"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x941f6d73bb10674d92636c5686922fc7
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000431c785ce507fd4487a1822c7cd25c6600000000412096c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000c6c54d8e9dff594d ,
    0xb3e19de4c2b573f507000000431c785ce507fd4487a1822c7cd25c6649004400 ,
    0x0000000000002b42c8be7cfa534a8515b53e50209ccf07000000431c785ce507 ,
    0xfd4487a1822c7cd25c6646004e000000000000006ee7053a7af8f44c9a585dba ,
    0x8febe06007000000431c785ce507fd4487a1822c7cd25c664c004e0000000000 ,
    0x000075fd283928ddb1438d7b3f9d768d251c07000000431c785ce507fd4487a1 ,
    0x822c7cd25c6649007300530061006c0065007300520065007000000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x671efd59558a46488283614f8f491bc5
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc08df47817b4774485c384ac2b061ac4
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97544716ca6bb6498add36956714f717
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsSalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7c71041d22f79048b2b5e117cd1cb087
        End
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1598
    Bottom =980
    Left =-1
    Top =-1
    Right =1452
    Bottom =502
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =489
        Bottom =402
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
