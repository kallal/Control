Operation =1
Option =0
Where ="(((dbo_ContactGeneral.SalesRepID)=12))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.EmailDomain"
    Expression ="dbo_ContactLocation.LocationName"
    Expression ="dbo_ContactLocation.MailXmasCardYN"
    Expression ="dbo_ContactLocation.DeleteYN"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_ContactLocation"
    Expression ="dbo_ContactGeneral.ID = dbo_ContactLocation.ContactGeneralID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query2].[CompName]"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf87a8b8b71c02d488de005efce766107
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
    0x00000000000057fab0ed9f451a4ab512137d4cabc63007000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b9530061006c0065007300520065007000490044000000 ,
    0x00000000124b02a694dd0e4c96264abff258312707000000d7c549c33168bc4a ,
    0xb70151c855c0b6b943006f006d0070004e0061006d0065000000000000003758 ,
    0x33fbc7779d4ea5fc1b827aa125af07000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b945006d00610069006c0044006f006d00610069006e00000000000000064d ,
    0x0e09833efc44b077db645332d810070000003df7a9feef9a5149845d78596be4 ,
    0xe62d4c006f0063006100740069006f006e004e0061006d006500000000000000 ,
    0x4551c97e2c5adb419f492be0f0f59dc7070000003df7a9feef9a5149845d7859 ,
    0x6be4e62d4d00610069006c0058006d0061007300430061007200640059004e00 ,
    0x000000000000b64f2a01ff01d248ba5a6c3c8618d0e2070000003df7a9feef9a ,
    0x5149845d78596be4e62d440065006c0065007400650059004e00000000000000 ,
    0x03933b4b9f324445a82e368651b1052b07000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b9490044000000000000003b6e70abe227564f853fdca7a7fe4ff30700 ,
    0x00003df7a9feef9a5149845d78596be4e62d43006f006e007400610063007400 ,
    0x470065006e006500720061006c00490044000000000000009562b65ea4e3f743 ,
    0xb78ec0e5b249b95d000000006c2fde9ebb3be440000000000000000051007500 ,
    0x6500720079003200000000000000124b02a694dd0e4c96264abff25831270700 ,
    0x00009562b65ea4e3f743b78ec0e5b249b95d43006f006d0070004e0061006d00 ,
    0x6500000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="5385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x90d2b5f795aabb499eecbd9f1173500b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.EmailDomain"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe8a44f48f13ad04486c6077e92068345
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6f09cb012a541c4fabe8155f5b2a8854
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2ba228448ee5a4b84a3877bc0978820
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.MailXmasCardYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa15d8d14b77bd140ae6ef8078b15fcd2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4f362c835e38ef46b65084e8da37c39e
        End
    End
End
Begin
    State =0
    Left =74
    Top =116
    Right =1585
    Bottom =964
    Left =-1
    Top =-1
    Right =1479
    Bottom =548
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =318
        Bottom =479
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =435
        Top =26
        Right =1038
        Bottom =540
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
