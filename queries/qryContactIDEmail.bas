Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.ID"
    Expression ="dbo_ContactName.ContactGeneralID"
    Alias ="fullname"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Expression ="dbo_ContactName.Email"
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
    0x5442d47b362ffa4184094cbba8ec52aa
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004e0061006d006500000000000000526c221fc512804984840f86ae58ec00 ,
    0x0700000000000000000000000000000000000000660075006c006c006e006100 ,
    0x6d006500000000000000e0b7aa1a6ad58345865216cdf3cbec4e07000000b1df ,
    0xd77f67641a4a8c10df9ef7c359634900440000000000000043f6e7679eba6741 ,
    0xad8592a856384d9e07000000b1dfd77f67641a4a8c10df9ef7c3596343006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x000008ae9e11739f3544a2d99be00a23adf107000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c3596366006e0000000000000008374dd34b155c49be4fe6c2125378e4 ,
    0x07000000b1dfd77f67641a4a8c10df9ef7c359636c006e0000000000000022d2 ,
    0x565f36f8c84b9b24820401a2dee107000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x596345006d00610069006c000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x629408551b62774884ab7dc3e65755af
        End
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="fullname"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x526c221fc512804984840f86ae58ec00
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =8
    Top =22
    Right =1525
    Bottom =750
    Left =-1
    Top =-1
    Right =1485
    Bottom =377
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =699
        Bottom =440
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
