Operation =1
Option =0
Where ="(((dbo_ContactGeneral.SalesRepID) Is Null))"
Begin InputTables
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactGeneral.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf99ac073570b1949be2597e211d79efe
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c0000000000000057fab0ed9f451a4ab512 ,
    0x137d4cabc63007000000d7c549c33168bc4ab70151c855c0b6b9530061006c00 ,
    0x6500730052006500700049004400000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x64c72746d63b604896209f9abdfd7083
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6f00e5a0e7a3754dae2e6790a09c3a1c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7bef14d1868ddd4c9f8c452b8b23fa24
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ClientSince"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x641ed46d33aec04a91ce3dc874ac6422
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CreditOrderOK"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x33b9d09108ac0043a3fbb8928fce5fe7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendPOViaEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5616aa4f5f8dd04ba42ba342682c0042
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.GSTExempt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb29edb34efead84b87acbc1a893501a2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Verified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6236b57baccdda4d9143d2c2c3ca1d54
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.VerifiedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x096c11dd6da658418d80940603814b63
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00650803b312aa4cbb2c008e67061aa3
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.NaicsCodeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ab6a787adc3ff4f8e0f69c75b7b48e9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa051efd4ff3b994980256a78ed54b24a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ARContactID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2a4a48588eaef24d8efccf1d6177798e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastDocket"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3f4c0ecd9beef443b912fadcc5c1ed89
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendInvoiceViaEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7c09d3ba4013a48974741d50751b5bb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.PORequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68f7ed78f79c3f4ca3f3c30189a9f1dc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.VerifiedOn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0368523b29bc92418a90fab7736720d2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="6495"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd6f450824d616f44a4e208f14a7a6b49
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.OperatingAs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd0d384242825df4a96af3ed14c9a03cc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesMgrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc993ebd36d282744913189edb56f8a02
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.APContactID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97e19bdb0f62734d8fe1f08541540148
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEstimate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf7543afebb1bab43b67505a5853ed965
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbe517894bc06764cb775048ef770a34d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2210542c5c577b4aa33e74b037b1b279
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendInvoiceViaSnailMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc7d5b8f4cf306e4987b464e48c402edd
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendInvoiceViaFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfed1f4dc767136449ca34c09e8613a2f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendPOViaFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfe29d210c07aff4989dffd2a84d1f7c3
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCourier"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4ac83e903de5e0458d19df54a4b66663
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Website"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ab2fa83edcbac4eb0a7a6fee97c268e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.TrackSite"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xede76b6bb3be4f4fa7cf2623090072a9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.EmailDomain"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1d51dd5834b50d46871f8c2f3d97b523
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastInvoice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x508375265bb943438c7401a8b11ce45c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CreditShipOK"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd1bda664dbf2544287edf6bd0dc81b17
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xefa0c56fbef0dd40979586fa4d31ae0d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SendMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4c2d66ee6621543b80de865adaec417
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf889beb62df379439419f0939de16718
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.DefaultDiscount"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =49
    Top =31
    Right =1571
    Bottom =879
    Left =-1
    Top =-1
    Right =1490
    Bottom =531
    Left =0
    Top =0
    ColumnsShown =539
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
