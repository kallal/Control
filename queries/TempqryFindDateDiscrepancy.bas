Operation =1
Option =0
Where ="(((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectHeader.InvoiceNum) Is Null) A"
    "ND ((dbo_ProjectHeader.DocketNum) Is Not Null))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.AssignedDocketDueDate"
    Expression ="dbo_ProjectHeader.SpecifiedDocketDueDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Alias ="DocketDD"
    Expression ="IIf([SpecifiedDocketDueDate],[SpecifiedDocketDueDate],[AssignedDocketDueDate])"
    Alias ="ComponentDD"
    Expression ="IIf([specifiedDueDate],[SpecifiedDueDAte],[AssignedDueDate])"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectHeader.ID = dbo_ProjectComponentHeader.ProjectHeaderID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[TempqryFindDateDiscrepancy].[DocketNum] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xc6d54e9c6513774287c0205bfd5653b0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000fe926418f32ed843874a57f371c555c7000000009b2fba6dec62 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x4800650061006400650072000000000000003ecf011d6a2b964f9f11d64a1cc7 ,
    0xb04c070000000000000000000000000000000000000044006f0063006b006500 ,
    0x7400440044000000000000000649e05aad4e4d4e82a6a20854b654a707000000 ,
    0x0000000000000000000000000000000043006f006d0070006f006e0065006e00 ,
    0x7400440044000000000000004ee447eaa662274b8e491ce7343d32c707000000 ,
    0xfe926418f32ed843874a57f371c555c744006f0063006b006500740044006100 ,
    0x7400650000000000000081751aaa23f69a40a072b77523cc41aa07000000fe92 ,
    0x6418f32ed843874a57f371c555c756006f0069006400000000000000bb0ae340 ,
    0x649d1049aae8ec4ebde6085c07000000fe926418f32ed843874a57f371c555c7 ,
    0x49006e0076006f006900630065004e0075006d00000000000000d9cb95bb9ff0 ,
    0xb84fa39eeda5976282d607000000fe926418f32ed843874a57f371c555c74400 ,
    0x6f0063006b00650074004e0075006d000000000000004d96453ae8154647b2e5 ,
    0xe15ac183b16d07000000fe926418f32ed843874a57f371c555c7410073007300 ,
    0x690067006e006500640044006f0063006b006500740044007500650044006100 ,
    0x740065000000000000007e722a4b6628714995d6709d9b16e96c07000000fe92 ,
    0x6418f32ed843874a57f371c555c7530070006500630069006600690065006400 ,
    0x44006f0063006b00650074004400750065004400610074006500000000000000 ,
    0x9034f5093d684d4493441af67c602460070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4410073007300690067006e0065006400440075006500440061007400 ,
    0x6500000000000000e41b349e809836428a33efa5925ec82d070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb45300700065006300690066006900650064004400 ,
    0x7500650044006100740065000000000000006f7f02ef6df8574092eeeafb278f ,
    0x50ec07000000fe926418f32ed843874a57f371c555c749004400000000000000 ,
    0x873fed1bdd4daf46b59105d9e5c28c31070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4500072006f006a006500630074004800650061006400650072004900 ,
    0x4400000000000000c6d54e9c6513774287c0205bfd5653b000000000b140e171 ,
    0xec62e4400000000000000000540065006d007000710072007900460069006e00 ,
    0x64004400610074006500440069007300630072006500700061006e0063007900 ,
    0x000000000000ac1d56db39218c438839950e2c10fbd207000000c6d54e9c6513 ,
    0x774287c0205bfd5653b044006f0063006b00650074004e0075006d0000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xffc13dda06260148a70c2893eaa47973
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac1d56db39218c438839950e2c10fbd2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.AssignedDocketDueDate"
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc334a186f684684bbdd6d84994c4f57b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SpecifiedDocketDueDate"
        dbInteger "ColumnWidth" ="2835"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3bd513ef52808447bb17dcbf6307e3e7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf9be96b42562144c8389f8c185e4680f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x759e5efb108ba74faf9ce725796c61c3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DocketDD"
        dbInteger "ColumnWidth" ="2745"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ecf011d6a2b964f9f11d64a1cc7b04c
        End
    End
    Begin
        dbText "Name" ="ComponentDD"
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0649e05aad4e4d4e82a6a20854b654a7
        End
    End
End
Begin
    State =0
    Left =-5
    Top =79
    Right =1602
    Bottom =915
    Left =-1
    Top =-1
    Right =1575
    Bottom =518
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =550
        Top =1
        Right =1114
        Bottom =519
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =52
        Top =17
        Right =460
        Bottom =539
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
