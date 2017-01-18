dbMemo "SQL" ="UPDATE dbo_ContactGeneral INNER JOIN dbo_ContactLocation ON dbo_ContactGeneral.T"
    "empID = dbo_ContactLocation.TempID SET dbo_ContactLocation.ContactGeneralID = [d"
    "bo_ContactGeneral].[ID];\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x848f1eb446dbee429882ba4206e0f25e
End
dbByte "PublishToWeb" ="1"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000003df7a9feef9a5149845d ,
    0x78596be4e62d000000004cd3a1c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004c006f0063006100740069006f006e00 ,
    0x00000000000003933b4b9f324445a82e368651b1052b07000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b9490044000000000000003b6e70abe227564f853fdca7 ,
    0xa7fe4ff3070000003df7a9feef9a5149845d78596be4e62d43006f006e007400 ,
    0x610063007400470065006e006500720061006c00490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="3480"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ee8645b0b1cb64fae0409bc632e6954
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbInteger "ColumnWidth" ="3660"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb404022b53b274885623f52cfba591c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00f6cf38d5aa8a479a20460816ea0a3e
        End
    End
End
