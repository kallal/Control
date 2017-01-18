Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ExpectedCompletionDate"
    Expression ="dbo_ProjectHeader.AssignedDocketDueDate"
    Expression ="dbo_ProjectHeader.SpecifiedDocketDueDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[Query6].[DocketNum] DESC, [Query6].[AssignedDocketDueDate] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x689e2ee7194a4744acd516b04919288d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x74004800650061006400650072000000000000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4000000001c04ba6dec62e4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x480065006100640065007200000000000000d9cb95bb9ff0b84fa39eeda59762 ,
    0x82d607000000fe926418f32ed843874a57f371c555c744006f0063006b006500 ,
    0x74004e0075006d0000000000000054085452d194844ea154e4f1667b2d2c0700 ,
    0x0000fe926418f32ed843874a57f371c555c74500780070006500630074006500 ,
    0x640043006f006d0070006c006500740069006f006e0044006100740065000000 ,
    0x000000004d96453ae8154647b2e5e15ac183b16d07000000fe926418f32ed843 ,
    0x874a57f371c555c7410073007300690067006e006500640044006f0063006b00 ,
    0x6500740044007500650044006100740065000000000000007e722a4b66287149 ,
    0x95d6709d9b16e96c07000000fe926418f32ed843874a57f371c555c753007000 ,
    0x650063006900660069006500640044006f0063006b0065007400440075006500 ,
    0x44006100740065000000000000009034f5093d684d4493441af67c6024600700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4410073007300690067006e006500 ,
    0x64004400750065004400610074006500000000000000e41b349e809836428a33 ,
    0xefa5925ec82d070000000e7a128852f41a47b128e4f3b41e4fb4530070006500 ,
    0x6300690066006900650064004400750065004400610074006500000000000000 ,
    0x873fed1bdd4daf46b59105d9e5c28c31070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4500072006f006a006500630074004800650061006400650072004900 ,
    0x44000000000000006f7f02ef6df8574092eeeafb278f50ec07000000fe926418 ,
    0xf32ed843874a57f371c555c74900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ExpectedCompletionDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5dd8c40e7e074348842b08aaa9d94729
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.AssignedDocketDueDate"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf7ca09f2b3e6c0468a2a18fdfce9dae1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SpecifiedDocketDueDate"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1eca5afdeee2354fa7fdd665f2ef460e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbInteger "ColumnWidth" ="2835"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0eb2f46a66973047be7dc80ebe31a5fb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbInteger "ColumnWidth" ="2775"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe0a3dcf591cda54281ba7d63e77fa12e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x78fb0ba8fea7524d8aa2bb1b682794d2
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1607
    Bottom =859
    Left =-1
    Top =-1
    Right =1497
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =294
        Bottom =440
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =352
        Top =7
        Right =858
        Bottom =440
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
