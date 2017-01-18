Operation =1
Option =0
Where ="(((dbo_ContactLocation.ContactGeneralID)=[forms]![navmaster].[form]![navSubform]"
    ".[form]![navProject].[form]![ContactGeneralID]))"
Begin InputTables
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactLocation.*"
End
Begin OrderBy
    Expression ="dbo_ContactLocation.LocationName"
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
    0xac083e61c2cc4d4c865d08f3d188ed31
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000003df7a9feef9a5149845d78596be4e62d000000004cd3a1c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004c006f0063006100740069006f006e00000000000000064d0e09833efc44 ,
    0xb077db645332d810070000003df7a9feef9a5149845d78596be4e62d4c006f00 ,
    0x63006100740069006f006e004e0061006d0065000000000000003b6e70abe227 ,
    0x564f853fdca7a7fe4ff3070000003df7a9feef9a5149845d78596be4e62d4300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x0000000069f3d9b11a4b0140a08785aaf39439fc010000006fb1f072ec62e440 ,
    0x00000000000000006e00610076006d0061007300740065007200000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Add1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Add2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.City"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Prov"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Country"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhMain"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhFax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhTollFree"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LastEdited"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LastEditedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.VerifiedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.VerifiedOn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.MailXmasCardYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Country_old"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Verified"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =28
    Top =90
    Right =1618
    Bottom =864
    Left =-1
    Top =-1
    Right =1558
    Bottom =321
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_ContactLocation"
        Name =""
    End
End
