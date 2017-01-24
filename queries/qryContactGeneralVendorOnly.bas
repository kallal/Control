Operation =1
Option =0
Where ="(((dbo_ContactGeneral.IsVendor)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.OperatingAs"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.SalesMgrID"
    Expression ="dbo_ContactGeneral.CsrID"
    Expression ="dbo_ContactGeneral.ClientSince"
    Expression ="dbo_ContactGeneral.LastInvoice"
    Expression ="dbo_ContactGeneral.LastEstimate"
    Expression ="dbo_ContactGeneral.LastDocket"
    Expression ="dbo_ContactGeneral.CreditOrderOK"
    Expression ="dbo_ContactGeneral.CreditShipOK"
    Expression ="dbo_ContactGeneral.Notes"
    Expression ="dbo_ContactGeneral.SendEmail"
    Expression ="dbo_ContactGeneral.SendMail"
    Expression ="dbo_ContactGeneral.LastEdited"
    Expression ="dbo_ContactGeneral.LastEditedBy"
End
Begin OrderBy
    Expression ="dbo_ContactGeneral.CompName"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd1d692813445104792340ac278104abb
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c0000000000000003933b4b9f324445a82e ,
    0x368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b9490044000000 ,
    0x00000000124b02a694dd0e4c96264abff258312707000000d7c549c33168bc4a ,
    0xb70151c855c0b6b943006f006d0070004e0061006d006500000000000000eeea ,
    0xa2c1e5c5674396cce069d7db400307000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b94f007000650072006100740069006e0067004100730000000000000017c6 ,
    0x9993fefe48429e58f91ca567f01a07000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b94900730043006c00690065006e007400000000000000af4d474e244fef4b ,
    0x831c16707b00dd9007000000d7c549c33168bc4ab70151c855c0b6b949007300 ,
    0x560065006e0064006f00720000000000000072135043f1c5534594c399467e5e ,
    0x4d5f07000000d7c549c33168bc4ab70151c855c0b6b94900730043006f006d00 ,
    0x700065007400690074006f00720000000000000057fab0ed9f451a4ab512137d ,
    0x4cabc63007000000d7c549c33168bc4ab70151c855c0b6b9530061006c006500 ,
    0x7300520065007000490044000000000000000561ea25ad59004380d6214fd7eb ,
    0x943407000000d7c549c33168bc4ab70151c855c0b6b9530061006c0065007300 ,
    0x4d006700720049004400000000000000b61e2062eb3db54aa58b2b5979d040e8 ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b9430073007200490044000000 ,
    0x000000006acc3e7c3f74f448bc552aa448b2ffb907000000d7c549c33168bc4a ,
    0xb70151c855c0b6b943006c00690065006e007400530069006e00630065000000 ,
    0x000000003684f74355f05b4fae6a460fbd9f396807000000d7c549c33168bc4a ,
    0xb70151c855c0b6b94c0061007300740049006e0076006f006900630065000000 ,
    0x00000000621521ffc95ab9428557a9800d9fba2b07000000d7c549c33168bc4a ,
    0xb70151c855c0b6b94c0061007300740045007300740069006d00610074006500 ,
    0x000000000000c2ba29d53d47134eb4f37c5b83b7ff9107000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b94c0061007300740044006f0063006b00650074000000 ,
    0x00000000371508649edb43438249d34f3ca4553907000000d7c549c33168bc4a ,
    0xb70151c855c0b6b94300720065006400690074004f0072006400650072004f00 ,
    0x4b00000000000000b4e75f8445a4e64dad7ec2715bd5d53607000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b94300720065006400690074005300680069007000 ,
    0x4f004b000000000000006ac3ae3c093fdb41b6d6352c2067949b07000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b94e006f00740065007300000000000000bac2 ,
    0x913d74c3424685c5e8362c31611107000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b9530065006e00640045006d00610069006c00000000000000630b1a1eb010 ,
    0xac40ba9e9106dd052be507000000d7c549c33168bc4ab70151c855c0b6b95300 ,
    0x65006e0064004d00610069006c00000000000000df9c180e16a7064fb2af26af ,
    0x28b1b2d707000000d7c549c33168bc4ab70151c855c0b6b94c00610073007400 ,
    0x450064006900740065006400000000000000326ddb68969ed941a223bd757f8a ,
    0x7e9b07000000d7c549c33168bc4ab70151c855c0b6b94c006100730074004500 ,
    0x6400690074006500640042007900000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEditedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ClientSince"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1485
    Bottom =394
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =560
        Bottom =444
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
