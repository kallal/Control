Operation =1
Option =0
Where ="(((dbo_ProjectHeader.InvoiceNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceDat"
    "e)=#1/3/2014#))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="tblCboEmployee"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="tblCboEmployee.FULLNAME"
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell1"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="tblCboEmployee"
    Expression ="dbo_ProjectHeader.SalesRepID = tblCboEmployee.ID"
    Flag =1
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectHeader.ID = dbo_ProjectComponentHeader.ProjectHeaderID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x1295d53bb48b45409e532a5f331777ff
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000fe926418f32ed843874a57f371c555c700000000dc739ada ,
    0x8d64e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x74004800650061006400650072000000000000004b14361fa30a4f4ba5116cdb ,
    0x34ab490f00000000ea0e1473ae64e4400000000000000000740062006c004300 ,
    0x62006f0045006d0070006c006f007900650065000000000000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4000000001446517b8c64e44000000000000000006400 ,
    0x62006f005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e007400480065006100640065007200000000000000bb0ae340649d1049 ,
    0xaae8ec4ebde6085c07000000fe926418f32ed843874a57f371c555c749006e00 ,
    0x76006f006900630065004e0075006d00000000000000a4ded50498588c4e9f47 ,
    0x4307ea76385807000000fe926418f32ed843874a57f371c555c749006e007600 ,
    0x6f006900630065004400610074006500000000000000371b3f0a0cc4374085fb ,
    0x3fe4e10ea082070000004b14361fa30a4f4ba5116cdb34ab490f460055004c00 ,
    0x4c004e0041004d0045000000000000006f7f02ef6df8574092eeeafb278f50ec ,
    0x07000000fe926418f32ed843874a57f371c555c7490044000000000000006697 ,
    0xc5f92befb746a7f608739b193afb070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4450078007400510075006f007400650041006d0074003100000000000000 ,
    0x14208e479d4b594a81de954645afe56f070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4450078007400510075006f0074006500510074007900310000000000 ,
    0x0000e4337d6fe2c6af4d90a576502da69601070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4450078007400510075006f0074006500530065006c0065006300 ,
    0x740000000000000003d4f4ad64ec7b4e82bc811b44943a67070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4450078007400510075006f007400650051007400 ,
    0x79003200000000000000c161c1e893c8b041adba3400cb4110b2070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4450078007400510075006f00740065005300 ,
    0x65006c006c00320000000000000047f26f7110cb2f49bc71c726986a5bd00700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4450078007400510075006f007400 ,
    0x6500530065006c006c00310000000000000023f6fcc77666d448823b90b11d10 ,
    0xe84007000000fe926418f32ed843874a57f371c555c7530061006c0065007300 ,
    0x52006500700049004400000000000000d21aef19e73d6849afa1ec17a3a49fbe ,
    0x070000004b14361fa30a4f4ba5116cdb34ab490f49004400000000000000873f ,
    0xed1bdd4daf46b59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4500072006f006a0065006300740048006500610064006500720049004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x77a49153cd4940488d7b02275799b9ff
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9cd28eb45679b547ba287bbd8421d67f
        End
    End
    Begin
        dbText "Name" ="tblCboEmployee.FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa2075868a5b74041988acf7132c570dd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x669f3e607fd16c42b379177f7cb49407
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb03071c3a270de4db02010542f1c6b76
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3bf204a5b96e034293aa0ee53a4a587a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x65ae1c43cd9623489fd7984714c21b7e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty2"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xae545db77989af42b74c27fd05d29239
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell2"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xad0d74d130cb1347a0940ee4a73c76d5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell1"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2f6c47d89acab49a7320d117ae882fe
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1469
    Bottom =859
    Left =-1
    Top =-1
    Right =1359
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =23
        Top =20
        Right =490
        Bottom =407
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =534
        Top =16
        Right =787
        Bottom =245
        Top =0
        Name ="tblCboEmployee"
        Name =""
    End
    Begin
        Left =1046
        Top =145
        Right =1360
        Bottom =425
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
