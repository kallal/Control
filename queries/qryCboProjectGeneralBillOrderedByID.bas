Operation =1
Option =0
Where ="(((dbo_ContactName.ContactGeneralID)=[forms]![navmaster].[form]![navSubform].[fo"
    "rm]![NavProject].[form]![ContactGeneralID]))"
Begin InputTables
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.ID"
    Alias ="FULLNAME"
    Expression ="[FN] & \" \" & [LN]"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactName.PreferredName"
    Expression ="dbo_ContactName.PhDirect"
    Expression ="dbo_ContactName.FN"
End
Begin OrderBy
    Expression ="[FN] & \" \" & [LN]"
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
    0xd7d2ddcb227bfb42a99a51606361f730
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004e0061006d0065000000000000005b7785166e75dd4a880bc494370c2f8e ,
    0x07000000d7d2ddcb227bfb42a99a51606361f730460055004c004c004e004100 ,
    0x4d004500000000000000e0b7aa1a6ad58345865216cdf3cbec4e07000000b1df ,
    0xd77f67641a4a8c10df9ef7c359634900440000000000000008ae9e11739f3544 ,
    0xa2d99be00a23adf107000000b1dfd77f67641a4a8c10df9ef7c3596346004e00 ,
    0x00000000000008374dd34b155c49be4fe6c2125378e407000000b1dfd77f6764 ,
    0x1a4a8c10df9ef7c359634c004e0000000000000022d2565f36f8c84b9b248204 ,
    0x01a2dee107000000b1dfd77f67641a4a8c10df9ef7c3596345006d0061006900 ,
    0x6c00000000000000fead2a127dbd2041bc901ee03a80d10c07000000b1dfd77f ,
    0x67641a4a8c10df9ef7c359635000720065006600650072007200650064004e00 ,
    0x61006d00650000000000000008a34d34695a5d4c8d9e55b7d6ce6a1d07000000 ,
    0xb1dfd77f67641a4a8c10df9ef7c3596350006800440069007200650063007400 ,
    0x00000000000043f6e7679eba6741ad8592a856384d9e07000000b1dfd77f6764 ,
    0x1a4a8c10df9ef7c3596343006f006e007400610063007400470065006e006500 ,
    0x720061006c004900440000000000000069f3d9b11a4b0140a08785aaf39439fc ,
    0x010000006fb1f072ec62e44000000000000000006e00610076006d0061007300 ,
    0x740065007200000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b7785166e75dd4a880bc494370c2f8e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PreferredName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhDirect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-23
    Top =105
    Right =1567
    Bottom =879
    Left =-1
    Top =-1
    Right =1558
    Bottom =202
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =487
        Bottom =314
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
