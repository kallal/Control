Operation =1
Option =0
Where ="(((dbo_ContactName.isactive) Is Null Or (dbo_ContactName.isactive)=-1) And ((dbo"
    "_ContactName.SendMail)=True) And ((dbo_ContactGeneral.NaicsCodeID)=99))"
Begin InputTables
    Name ="dbo_ContactLocation"
    Name ="dbo_ContactName"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactName.FN"
    Expression ="dbo_ContactName.LN"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactName.Title"
    Expression ="dbo_ContactName.Department"
    Alias ="Location"
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.ADD1"
    Expression ="dbo_ContactLocation.ADD2"
    Expression ="dbo_ContactLocation.CITY"
    Expression ="dbo_ContactLocation.PROV"
    Expression ="dbo_ContactLocation.PC"
    Alias ="Sales Rep"
    Expression ="dbo_CompanyEmployee.FN"
End
Begin Joins
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactName.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =3
    LeftTable ="dbo_ContactLocation"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ContactLocation.ID = dbo_ContactName.ContactLocationID"
    Flag =3
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ContactGeneral.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ContactGeneral.CompName"
    Flag =0
    Expression ="dbo_ContactGeneral.SalesRepID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x124303f0e5f259418ad7ab6aee0796ac
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000003df7a9feef9a5149845d ,
    0x78596be4e62d000000004cd3a1c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x000000000000b1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0ea62 ,
    0xe4400000000000000000640062006f005f0043006f006e007400610063007400 ,
    0x4e0061006d006500000000000000431c785ce507fd4487a1822c7cd25c660000 ,
    0x0000412096c0ea62e4400000000000000000640062006f005f0043006f006d00 ,
    0x700061006e00790045006d0070006c006f00790065006500000000000000a51d ,
    0xc23796fbcf478344066436a09e72070000000000000000000000000000000000 ,
    0x00004c006f0063006100740069006f006e00000000000000d452469956208744 ,
    0xa3820cd32b2f4c5e070000000000000000000000000000000000000053006100 ,
    0x6c00650073002000520065007000000000000000124b02a694dd0e4c96264abf ,
    0xf258312707000000d7c549c33168bc4ab70151c855c0b6b943006f006d007000 ,
    0x4e0061006d00650000000000000008ae9e11739f3544a2d99be00a23adf10700 ,
    0x0000b1dfd77f67641a4a8c10df9ef7c3596346004e0000000000000008374dd3 ,
    0x4b155c49be4fe6c2125378e407000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x4c004e0000000000000022d2565f36f8c84b9b24820401a2dee107000000b1df ,
    0xd77f67641a4a8c10df9ef7c3596345006d00610069006c00000000000000a5f1 ,
    0x6584c741a047891ec89cc76b6c5707000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x59635400690074006c006500000000000000f9e278512c532b42bd0996e60dce ,
    0xf70107000000b1dfd77f67641a4a8c10df9ef7c3596344006500700061007200 ,
    0x74006d0065006e007400000000000000064d0e09833efc44b077db645332d810 ,
    0x070000003df7a9feef9a5149845d78596be4e62d4c006f006300610074006900 ,
    0x6f006e004e0061006d00650000000000000066490f6b6d4aa24689cdb8d25f7a ,
    0x71df070000003df7a9feef9a5149845d78596be4e62d41004400440031000000 ,
    0x000000007495468be6dc124bb31153489df08a88070000003df7a9feef9a5149 ,
    0x845d78596be4e62d4100440044003200000000000000c2b1c7e28fcc214a80de ,
    0x7eef36ed89e1070000003df7a9feef9a5149845d78596be4e62d430049005400 ,
    0x5900000000000000324af511baa2774faed6f6014abe4694070000003df7a9fe ,
    0xef9a5149845d78596be4e62d500052004f0056000000000000009896163c0cdc ,
    0xee4f8f3441ba351776bf070000003df7a9feef9a5149845d78596be4e62d5000 ,
    0x43000000000000002b42c8be7cfa534a8515b53e50209ccf07000000431c785c ,
    0xe507fd4487a1822c7cd25c6646004e0000000000000043f6e7679eba6741ad85 ,
    0x92a856384d9e07000000b1dfd77f67641a4a8c10df9ef7c3596343006f006e00 ,
    0x7400610063007400470065006e006500720061006c0049004400000000000000 ,
    0x03933b4b9f324445a82e368651b1052b07000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b9490044000000000000007484d78ae736d34187337f6e21dbede40700 ,
    0x00003df7a9feef9a5149845d78596be4e62d4900440000000000000097679ead ,
    0x79f3524f9bc291a71cea14a807000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x43006f006e0074006100630074004c006f0063006100740069006f006e004900 ,
    0x440000000000000057fab0ed9f451a4ab512137d4cabc63007000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b9530061006c006500730052006500700049004400 ,
    0x000000000000c6c54d8e9dff594db3e19de4c2b573f507000000431c785ce507 ,
    0xfd4487a1822c7cd25c66490044000000000000005ebeb34792c1554a8c940abd ,
    0xd7f404f207000000b1dfd77f67641a4a8c10df9ef7c359636900730061006300 ,
    0x7400690076006500000000000000ef215b79b21f3049b48a84e7713d13e60700 ,
    0x0000b1dfd77f67641a4a8c10df9ef7c35963530065006e0064004d0061006900 ,
    0x6c00000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe39b34410d653248b9315ad036ded2f8
        End
        dbInteger "ColumnWidth" ="4620"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6ebe4692859c84488ae6e3284d71629
        End
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbInteger "ColumnWidth" ="1470"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x35d74718e8c5d9459b21457532fe822f
        End
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdc75d886bbbff4458aa4bbc9df2dca5d
        End
        dbInteger "ColumnWidth" ="2175"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1c37c75d7e6ec546bad4dbc0108230b8
        End
        dbInteger "ColumnWidth" ="2580"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe0a9e61553fa5d44af84fca9c97b8513
        End
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8ebb9f62d4eaa044b1a4e6229208587a
        End
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd24746d29ac6d74cb70c7a9ec3fcaf9f
        End
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cfd66ef3f4ee849b2ccf8f7d65d6de2
        End
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6bbf34115bed8c458270323600710416
        End
        dbInteger "ColumnWidth" ="480"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="Location"
        dbInteger "ColumnWidth" ="1365"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa51dc23796fbcf478344066436a09e72
        End
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="Sales Rep"
        dbInteger "ColumnWidth" ="1515"
        dbInteger "ColumnOrder" ="13"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd452469956208744a3820cd32b2f4c5e
        End
    End
End
Begin
    State =0
    Left =15
    Top =50
    Right =1526
    Bottom =905
    Left =-1
    Top =-1
    Right =1479
    Bottom =327
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =87
        Top =51
        Right =342
        Bottom =397
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1089
        Top =5
        Right =1537
        Bottom =359
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
    Begin
        Left =510
        Top =-4
        Right =1027
        Bottom =414
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =416
        Top =342
        Right =560
        Bottom =486
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
