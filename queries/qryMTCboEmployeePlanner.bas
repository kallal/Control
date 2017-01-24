Operation =2
Name ="tblCboEmployeePlanner"
Option =0
Where ="(((dbo_CompanyEmployee.PL)>=1))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Alias ="FULLNAME"
    Expression ="Trim([FN]) & \" \" & Trim([LN])"
    Expression ="dbo_CompanyEmployee.IsActive"
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Expression ="dbo_CompanyEmployee.IsCSR"
    Expression ="dbo_CompanyEmployee.PhDirect"
    Expression ="dbo_CompanyEmployee.Email"
    Expression ="dbo_CompanyEmployee.PL"
End
Begin OrderBy
    Expression ="Trim([FN]) & \" \" & Trim([LN])"
    Flag =0
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
    0x03cd6c898c5ea94885ed926b50078655
End
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000431c785ce507fd4487a1822c7cd25c6600000000412096c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065000000000000006b6e1d36a4d6284b ,
    0xa39f1c5e5cb814c60700000003cd6c898c5ea94885ed926b5007865546005500 ,
    0x4c004c004e0041004d004500000000000000c6c54d8e9dff594db3e19de4c2b5 ,
    0x73f507000000431c785ce507fd4487a1822c7cd25c6649004400000000000000 ,
    0x2b42c8be7cfa534a8515b53e50209ccf07000000431c785ce507fd4487a1822c ,
    0x7cd25c6646004e000000000000006ee7053a7af8f44c9a585dba8febe0600700 ,
    0x0000431c785ce507fd4487a1822c7cd25c664c004e00000000000000b5a389c2 ,
    0xbe84e74792986a08dd407b4007000000431c785ce507fd4487a1822c7cd25c66 ,
    0x4900730041006300740069007600650000000000000075fd283928ddb1438d7b ,
    0x3f9d768d251c07000000431c785ce507fd4487a1822c7cd25c66490073005300 ,
    0x61006c006500730052006500700000000000000027a74cff57e1cc48a97f1cc5 ,
    0x7ed6d2e107000000431c785ce507fd4487a1822c7cd25c664900730043005300 ,
    0x5200000000000000493fa6c02f41064ab23e1079861246db07000000431c785c ,
    0xe507fd4487a1822c7cd25c665000680044006900720065006300740000000000 ,
    0x00004cd0d22e304ce146867c24124c2b889607000000431c785ce507fd4487a1 ,
    0x822c7cd25c6645006d00610069006c0000000000000089c7ecd61a0e7d42b491 ,
    0xbf6dc3fefc1b07000000431c785ce507fd4487a1822c7cd25c6650004c000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b6e1d36a4d6284ba39f1c5e5cb814c6
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsCSR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsSalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhDirect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Email"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4335"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PL"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1441
    Bottom =797
    Left =-1
    Top =-1
    Right =1409
    Bottom =365
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =514
        Top =12
        Right =933
        Bottom =270
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
