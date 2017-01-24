Operation =1
Option =0
Where ="(((dbo_ContactName.Email) Is Not Null And (dbo_ContactName.Email)<>\"\") AND ((d"
    "bo_ContactGeneral.IsClient)=True) AND ((dbo_ContactGeneral.IsCompetitor)=False))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.FN"
    Expression ="dbo_ContactName.MN"
    Expression ="dbo_ContactName.LN"
    Expression ="dbo_ContactName.PreferredName"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactName.SendEmail"
    Expression ="dbo_ContactName.MailListYN"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
    Expression ="dbo_ContactGeneral.SalesRepID"
End
Begin Joins
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactName.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[qry_EmailListforLuke].[SalesRepID]"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x0ac1c716192bc14fb544a80b1043b788
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c35963000000008ffda2c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004e0061006d00650000000000000008ae ,
    0x9e11739f3544a2d99be00a23adf107000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x596346004e000000000000004347a351c2594343834bc498175702c207000000 ,
    0xb1dfd77f67641a4a8c10df9ef7c359634d004e0000000000000008374dd34b15 ,
    0x5c49be4fe6c2125378e407000000b1dfd77f67641a4a8c10df9ef7c359634c00 ,
    0x4e00000000000000fead2a127dbd2041bc901ee03a80d10c07000000b1dfd77f ,
    0x67641a4a8c10df9ef7c359635000720065006600650072007200650064004e00 ,
    0x61006d00650000000000000022d2565f36f8c84b9b24820401a2dee107000000 ,
    0xb1dfd77f67641a4a8c10df9ef7c3596345006d00610069006c00000000000000 ,
    0x3fbd139ab3817c4bb02f5f60d596ef8e07000000b1dfd77f67641a4a8c10df9e ,
    0xf7c35963530065006e00640045006d00610069006c000000000000007e850214 ,
    0xe877c54097ead327bcf2d54a07000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x4d00610069006c004c0069007300740059004e00000000000000124b02a694dd ,
    0x0e4c96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b94300 ,
    0x6f006d0070004e0061006d00650000000000000017c69993fefe48429e58f91c ,
    0xa567f01a07000000d7c549c33168bc4ab70151c855c0b6b94900730043006c00 ,
    0x690065006e007400000000000000af4d474e244fef4b831c16707b00dd900700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b949007300560065006e0064006f00 ,
    0x720000000000000072135043f1c5534594c399467e5e4d5f07000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b94900730043006f006d0070006500740069007400 ,
    0x6f00720000000000000057fab0ed9f451a4ab512137d4cabc63007000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b9530061006c00650073005200650070004900 ,
    0x440000000000000043f6e7679eba6741ad8592a856384d9e07000000b1dfd77f ,
    0x67641a4a8c10df9ef7c3596343006f006e007400610063007400470065006e00 ,
    0x6500720061006c004900440000000000000003933b4b9f324445a82e368651b1 ,
    0x052b07000000d7c549c33168bc4ab70151c855c0b6b949004400000000000000 ,
    0x0ac1c716192bc14fb544a80b1043b7880000000069bb086eec62e44000000000 ,
    0x000000007100720079005f0045006d00610069006c004c006900730074006600 ,
    0x6f0072004c0075006b00650000000000000057fab0ed9f451a4ab512137d4cab ,
    0xc630070000000ac1c716192bc14fb544a80b1043b788530061006c0065007300 ,
    0x5200650070004900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0cc5d577f363c34088a0bd72c95dc4d0
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PreferredName"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3c855da2d8a27a4da2e8d21a47d3d404
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb020eac1ead2904094b543db66e97d8b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbInteger "ColumnWidth" ="3015"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x86906edab98f2349811115104e9e026e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa0bb255d6355e7488eabecd86dc0378a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.MailListYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x02a0e319ec3f764aa8f596d987eac8f9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x70f61baa5088f141910fc9f61a11f97d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.MN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x38583c3888f1534faa471ed2f4a0eb90
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa62d66183aa3a741b595d52291172d08
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd5f96d1092274a478f470407129d7ee4
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3e36962d4da2794aba07f2ea0d3e9aa4
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-4
    Top =87
    Right =1577
    Bottom =935
    Left =-1
    Top =-1
    Right =1549
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =565
        Top =46
        Right =942
        Bottom =527
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =74
        Top =64
        Right =350
        Bottom =533
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
