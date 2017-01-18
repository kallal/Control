Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.ArtArrivedDate) Is Not Null) AND ((dbo_ProjectComp"
    "onentHeader.ProofSentDate) Is Null) AND ((dbo_ProjectHeader.DocketNum) Is Not Nu"
    "ll) AND ((dbo_ProjectHeader.InvoiceNum) Is Null) AND ((dbo_ProjectHeader.void)=F"
    "alse))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.void"
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
dbMemo "OrderBy" ="[Query3].[DocketNum]"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x8bb456e080c189459022a36b47f7d977
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
    0x480065006100640065007200000000000000118be950d66974438268ddc04c06 ,
    0xaf1a070000000e7a128852f41a47b128e4f3b41e4fb449004400000000000000 ,
    0x510e420f3ce318458e4a83187ceafcd5070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb441007200740041007200720069007600650064004400610074006500 ,
    0x000000000000634027e63b69c14c8d8a18cfebb340f0070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4500072006f006f006600530065006e00740044006100 ,
    0x74006500000000000000d9cb95bb9ff0b84fa39eeda5976282d607000000fe92 ,
    0x6418f32ed843874a57f371c555c744006f0063006b00650074004e0075006d00 ,
    0x000000000000bb0ae340649d1049aae8ec4ebde6085c07000000fe926418f32e ,
    0xd843874a57f371c555c749006e0076006f006900630065004e0075006d000000 ,
    0x0000000081751aaa23f69a40a072b77523cc41aa07000000fe926418f32ed843 ,
    0x874a57f371c555c776006f0069006400000000000000873fed1bdd4daf46b591 ,
    0x05d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb4500072006f00 ,
    0x6a00650063007400480065006100640065007200490044000000000000006f7f ,
    0x02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843874a57f371c5 ,
    0x55c74900440000000000000066a8b498fa500f4eb9133c38ed7ae08e00000000 ,
    0x470ff36eec62e440000000000000000051007500650072007900330000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19650aedd2bd0e428e05676f9fc375c1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbInteger "ColumnWidth" ="2700"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa6b872fe9b6804aa9b0a11bc8522909
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9080d0e7d2154e45807c9dbe7eadfb4f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8cf9e89dd2669b40bb726a51e56d5085
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb60b322f62695d4091fcb8b0030da941
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa22902ad2452204cb9694b5cb7cf33dd
        End
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1463
    Bottom =523
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =229
        Bottom =426
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =625
        Bottom =348
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
