Operation =1
Option =0
Where ="(((tmp_ContactGeneral.TagForMail)=True) AND ((dbo_ContactLocation.IsActive)=True"
    ") AND ((Len([add1]))>\"0\"))"
Begin InputTables
    Name ="tmp_ContactGeneral"
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="tmp_ContactGeneral.TagForMail"
    Expression ="tmp_ContactGeneral.ID"
    Expression ="tmp_ContactGeneral.CompName"
    Expression ="tmp_ContactGeneral.OperatingAs"
    Expression ="tmp_ContactGeneral.IsClient"
    Expression ="dbo_ContactLocation.IsActive"
    Expression ="dbo_ContactLocation.ADD1"
    Expression ="dbo_ContactLocation.ADD2"
    Expression ="dbo_ContactLocation.CITY"
    Expression ="dbo_ContactLocation.PROV"
    Expression ="dbo_ContactLocation.PC"
End
Begin Joins
    LeftTable ="tmp_ContactGeneral"
    RightTable ="dbo_ContactLocation"
    Expression ="tmp_ContactGeneral.ID = dbo_ContactLocation.ContactGeneralID"
    Flag =1
End
Begin OrderBy
    Expression ="tmp_ContactGeneral.CompName"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x8f6a27526d78b649b19bd7c649a781a6
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000f34f585b01795941b03d76300f1d14ce00000000898d786d ,
    0xec62e440000000000000000074006d0070005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000003df7a9feef9a5149845d ,
    0x78596be4e62d000000004cd3a1c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x0000000000009fa782597715c344ab5d77f29a50fdbe07000000f34f585b0179 ,
    0x5941b03d76300f1d14ce54006100670046006f0072004d00610069006c000000 ,
    0x00000000612dee8b40a22e44b4091d3a7d52b8f707000000f34f585b01795941 ,
    0xb03d76300f1d14ce49004400000000000000726a5b330cce2e479cf862b1a753 ,
    0xc84e07000000f34f585b01795941b03d76300f1d14ce43006f006d0070004e00 ,
    0x61006d006500000000000000b094a0568b92e4419414bff3712a458207000000 ,
    0xf34f585b01795941b03d76300f1d14ce4f007000650072006100740069006e00 ,
    0x6700410073000000000000006e402b8ab1c5554b96dd7f991410c91907000000 ,
    0xf34f585b01795941b03d76300f1d14ce4900730043006c00690065006e007400 ,
    0x00000000000023e5d65a1835a445ab8be2202a455179070000003df7a9feef9a ,
    0x5149845d78596be4e62d49007300410063007400690076006500000000000000 ,
    0x66490f6b6d4aa24689cdb8d25f7a71df070000003df7a9feef9a5149845d7859 ,
    0x6be4e62d41004400440031000000000000007495468be6dc124bb31153489df0 ,
    0x8a88070000003df7a9feef9a5149845d78596be4e62d41004400440032000000 ,
    0x00000000c2b1c7e28fcc214a80de7eef36ed89e1070000003df7a9feef9a5149 ,
    0x845d78596be4e62d4300490054005900000000000000324af511baa2774faed6 ,
    0xf6014abe4694070000003df7a9feef9a5149845d78596be4e62d500052004f00 ,
    0x56000000000000009896163c0cdcee4f8f3441ba351776bf070000003df7a9fe ,
    0xef9a5149845d78596be4e62d500043000000000000003b6e70abe227564f853f ,
    0xdca7a7fe4ff3070000003df7a9feef9a5149845d78596be4e62d43006f006e00 ,
    0x7400610063007400470065006e006500720061006c0049004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="tmp_ContactGeneral.TagForMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcaede37edea8504180ce9220ba271d4e
        End
    End
    Begin
        dbText "Name" ="tmp_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xadcf48ab862f1643871b89e0a7d92b8b
        End
    End
    Begin
        dbText "Name" ="tmp_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7a4dbcf23271f94f8b427612585f332a
        End
    End
    Begin
        dbText "Name" ="tmp_ContactGeneral.OperatingAs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x883bfb302ac77149aacca1e56b2362ab
        End
    End
    Begin
        dbText "Name" ="tmp_ContactGeneral.isclient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd961d0cb8ea84d45be8ba84ad3b034c1
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x477dd7e2663b5941a260c3f99b9fc0fa
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x26fd98d215a09f4caaf7cfecc258dea9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5cf67435594f1d4cad5b24ff4ae88615
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x67d6e1a4ddc6eb4b87cd58fe9b79df5c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcbb9f9dd4e4da94cac1b79d4d2714b78
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7c1bc47870243346aa68474a4982acd8
        End
    End
End
Begin
    State =0
    Left =63
    Top =45
    Right =1559
    Bottom =956
    Left =-1
    Top =-1
    Right =1464
    Bottom =577
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =161
        Top =95
        Right =482
        Bottom =508
        Top =0
        Name ="tmp_ContactGeneral"
        Name =""
    End
    Begin
        Left =662
        Top =55
        Right =1146
        Bottom =460
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
