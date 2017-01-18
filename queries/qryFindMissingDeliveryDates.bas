Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.SpecifiedDueDate) Is Null) AND ((dbo_ProjectCompon"
    "entHeader.AssignedDueDate) Is Null) AND ((dbo_ProjectHeader.invoicenum) Is Null)"
    ")"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.invoicenum"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[qryFindMissingDeliveryDates].[DocketNum] DESC"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xdc803cbe837c9e4bbac136a31c49662d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb400000000055016e2 ,
    0xb16de4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000fe926418f32ed843874a57f371c555c70000000022a725e2b16d ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000118be950d66974438268ddc04c06 ,
    0xaf1a070000000e7a128852f41a47b128e4f3b41e4fb449004400000000000000 ,
    0x873fed1bdd4daf46b59105d9e5c28c31070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4500072006f006a006500630074004800650061006400650072004900 ,
    0x4400000000000000e41b349e809836428a33efa5925ec82d070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb45300700065006300690066006900650064004400 ,
    0x7500650044006100740065000000000000009034f5093d684d4493441af67c60 ,
    0x2460070000000e7a128852f41a47b128e4f3b41e4fb441007300730069006700 ,
    0x6e006500640044007500650044006100740065000000000000004ee447eaa662 ,
    0x274b8e491ce7343d32c707000000fe926418f32ed843874a57f371c555c74400 ,
    0x6f0063006b00650074004400610074006500000000000000d9cb95bb9ff0b84f ,
    0xa39eeda5976282d607000000fe926418f32ed843874a57f371c555c744006f00 ,
    0x63006b00650074004e0075006d00000000000000bb0ae340649d1049aae8ec4e ,
    0xbde6085c07000000fe926418f32ed843874a57f371c555c769006e0076006f00 ,
    0x6900630065006e0075006d000000000000006f7f02ef6df8574092eeeafb278f ,
    0x50ec07000000fe926418f32ed843874a57f371c555c749004400000000000000 ,
    0xdc803cbe837c9e4bbac136a31c49662d0000000090241b4a2b6ee44000000000 ,
    0x00000000710072007900460069006e0064004d0069007300730069006e006700 ,
    0x440065006c006900760065007200790044006100740065007300000000000000 ,
    0xa8469810fdcbe349a02414efaec1e88007000000dc803cbe837c9e4bbac136a3 ,
    0x1c49662d44006f0063006b00650074004e0075006d0000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa8469810fdcbe349a02414efaec1e880
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9cd479c0988e3343aad9e47009f63c3b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xed8e4b1b50c30140834e18bbb4be4858
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe2ae73c8fa1aff439e6637618a7effd4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d2a7dff957f744d830645fa9683c649
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd1a1160dcc668549a67aa30f968e7801
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.invoicenum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x42a4ab83c1e4a248890f04e48965f4a8
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1553
    Bottom =859
    Left =-1
    Top =-1
    Right =1443
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =458
        Bottom =318
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =506
        Top =12
        Right =1059
        Bottom =323
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
