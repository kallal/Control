Operation =3
Name ="tblDeletedContactGeneral"
Option =0
Where ="(((dbo_ContactGeneral.EmailDomain)=\"999\"))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x6eef4b6afa9a2c498f41e0406426a24e
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000740062006c00440065006c006500740065006400 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96dec62e4400000 ,
    0x000000000000640062006f005f0043006f006e00740061006300740047006500 ,
    0x6e006500720061006c00000000000000375833fbc7779d4ea5fc1b827aa125af ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b945006d00610069006c004400 ,
    0x6f006d00610069006e0000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x081f71f6b699e441beb5c150b59c32df
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastInvoice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x18c953eaf5a61a4e92f98c6dc793b555
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CreditShipOK"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15e1bfd633176245bf31acef369f79d3
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x572767e4e0cf934693ef814ba63cfec7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeaa8364cdf1f3c40a9d1c8b0c4734346
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2eb84442deeef5498935e39d5a549a39
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.VerifiedOn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x898fd72a0080c6458c0cfb6203fa9a93
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCourier"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3765f92cd728444cbd3d5d912c74a504
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Website"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa7d8c7d11aad1f479c9287a168befddb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.TrackSite"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x868502cb065bf34f959027a2447f9ced
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ClientSince"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3b3401ce85ff974bb2416dd56e9fbe2f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CreditOrderOK"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa476b8ba0de30d4fad309351c9cfedf7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendPOViaEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x72939f3cfc66e14abb85ef673c5e855c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.GSTExempt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x34f0f0e676b1f04bb12606c9c0c05005
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Verified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56c2ee0dff5d7546ba7a29cbf693862b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.VerifiedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5e81f1ec63bfc447817393b2ff1fa000
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a6cd12dae6c064b974aebda5400de7b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15b65c0418dc834aa75fbc06b1180e27
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe945ac7666310749a674dfce04e344bc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x11f4543a52f17a4d80d6883bbd3d136d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ARContactID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x222d348074ce6b4c965fe63c27e001dc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastDocket"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a41d24a2dfdfa498c1cd2af820a1e73
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendInvoiceViaEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03290c0ef7bf94498f7d8f4068efbbcb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.PORequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe1e78ebf51d0d245ba419e6f51a31cf0
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.EmailDomain"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x709ce87bafaa254782053e458621e3b3
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c5d1189eabbd04d8728f91e4ac2b4a7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.NaicsCodeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd64763b12955654c829e5f3505041df5
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesMgrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94807915a49ab745a2dfacb081e8dc82
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.APContactID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcba68f2ec6cd20409ef785587993112a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEstimate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x79791d069c0caa4ea803b841ae27b4ad
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8a71b5127290704492411bc2c4bfb2fb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd997d6c88f18ed4ea63445265bfc6d50
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendInvoiceViaSnailMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x32fb27f9b1e4024a8c1cfa91994b9a6b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendInvoiceViaFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ffc105a1a950d4082f2a54ef9c885a0
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendPOViaFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09e99102c3ffda458e673f59f8860c13
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc1c9672f17404642bd7ed39e08347ed9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.OperatingAs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6dcba8225633440babdb70019ae92db
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
    Bottom =548
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
