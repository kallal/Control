Operation =3
Name ="tblDeletedLocations"
Option =0
Where ="(((dbo_ContactLocation.DeleteYN)=True))"
Begin InputTables
    Name ="dbo_ContactLocation"
End
Begin OutputColumns
    Expression ="dbo_ContactLocation.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x5c63d2f089d3da49b691711b2ada4f64
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000740062006c00440065006c006500740065006400 ,
    0x4c006f0063006100740069006f006e0073000000000000003df7a9feef9a5149 ,
    0x845d78596be4e62d000000004cd3a1c0ea62e440000000000000000064006200 ,
    0x6f005f0043006f006e0074006100630074004c006f0063006100740069006f00 ,
    0x6e00000000000000b64f2a01ff01d248ba5a6c3c8618d0e2070000003df7a9fe ,
    0xef9a5149845d78596be4e62d440065006c0065007400650059004e0000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0158f0a57f63834898c8c07781210096
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x443e3e2cb843c748bcb110ae8508766d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7da738ddbb92c94dbea2d78abd81a356
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3e9c752013c78f4e8ae6d8b69c48d07f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb13083ad62dc649937469b69a55913c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa695f84e1839bd43a8a2497ecd3e3c8f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde2e6a98f7638f42b5c788dbc682847c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ffb92ab8507ba409b500343e4a61e1a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4f5aa0d00b30e5428604bb7960f540b9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3290f43be3a8d74dbb4559f351644ad0
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Country_old"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9268da2c7ed11e479c961002c6691043
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhMain"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3edce773d65c534d94b0190e7c671e01
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x86ab446955ec54428462d1e0699e3e6b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PhTollFree"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff2915a402b06d45a3a655af733466f2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d1770be21c2f346bc37cd905990e529
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf007230ea1742c47be8e3495fb0cb39d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x10149ff3f87a9543872c861dfc6fa5d2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.COUNTRY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7be87d2b5097d048a75268569d5064f0
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.Verified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x398916dbf4991f449351c34407a49f6c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.VerifiedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e272eb5bf502944aa7d48b8933e7e1c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.VerifiedOn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3b1ce26f025fb469417070f176f3b60
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.MailXmasCardYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6ced2b85d3c3174a862b381f983d3fa2
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1587
    Bottom =980
    Left =-1
    Top =-1
    Right =1479
    Bottom =531
    Left =0
    Top =0
    ColumnsShown =651
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
