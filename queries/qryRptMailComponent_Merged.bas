Operation =1
Option =0
Begin InputTables
    Name ="qryRptMailComponent_Header"
    Name ="qryRptMailComponent_Details"
End
Begin OutputColumns
    Expression ="qryRptMailComponent_Header.MailComponentYN"
    Expression ="qryRptMailComponent_Header.CompName"
    Expression ="qryRptMailComponent_Header.InvoiceDate"
    Expression ="qryRptMailComponent_Header.DocketNum"
    Expression ="qryRptMailComponent_Header.ProjectName"
    Expression ="qryRptMailComponent_Header.ComponentName"
    Expression ="qryRptMailComponent_Header.SellForFinal"
    Expression ="qryRptMailComponent_Header.SellQtyFinal"
    Expression ="qryRptMailComponent_Details.Qty"
    Expression ="qryRptMailComponent_Details.TotalPrice"
    Expression ="qryRptMailComponent_Details.CategoryID"
End
Begin Joins
    LeftTable ="qryRptMailComponent_Header"
    RightTable ="qryRptMailComponent_Details"
    Expression ="qryRptMailComponent_Header.ID = qryRptMailComponent_Details.ProjectComponentID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xbd374ece29aed64b8b58b4f23ccaed45
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001fa799cf3c261b4c9a3216276a1586b800000000b1cebcad ,
    0xf387e44000000000000000007100720079005200700074004d00610069006c00 ,
    0x43006f006d0070006f006e0065006e0074005f00480065006100640065007200 ,
    0x0000000000005b258d149e84314992806f69ba7f5a5c0000000056e1bcadf387 ,
    0xe44000000000000000007100720079005200700074004d00610069006c004300 ,
    0x6f006d0070006f006e0065006e0074005f00440065007400610069006c007300 ,
    0x000000000000246a3fbe5dfaff458dd01d9ee64838df070000001fa799cf3c26 ,
    0x1b4c9a3216276a1586b84d00610069006c0043006f006d0070006f006e006500 ,
    0x6e00740059004e000000000000006bf880c8a27c9441b0179e9f6477db6a0700 ,
    0x00001fa799cf3c261b4c9a3216276a1586b843006f006d0070004e0061006d00 ,
    0x6500000000000000955009496e93eb499fa211df6fed1850070000001fa799cf ,
    0x3c261b4c9a3216276a1586b849006e0076006f00690063006500440061007400 ,
    0x65000000000000009576056b7a3ba9499650f0294feb6d0c070000001fa799cf ,
    0x3c261b4c9a3216276a1586b844006f0063006b00650074004e0075006d000000 ,
    0x00000000de3fe7acb87809499a6a5fdadc40176d070000001fa799cf3c261b4c ,
    0x9a3216276a1586b8500072006f006a006500630074004e0061006d0065000000 ,
    0x000000004279a333f8007548977e89cd5e28aec6070000001fa799cf3c261b4c ,
    0x9a3216276a1586b843006f006d0070006f006e0065006e0074004e0061006d00 ,
    0x6500000000000000f99054656e6b204a9b1e967fb934a2db070000001fa799cf ,
    0x3c261b4c9a3216276a1586b8530065006c006c0046006f007200460069006e00 ,
    0x61006c000000000000004fd231051da27e49ba4c478e2320d300070000001fa7 ,
    0x99cf3c261b4c9a3216276a1586b8530065006c006c0051007400790046006900 ,
    0x6e0061006c00000000000000b05a4491eaa61b44ada212fea993649607000000 ,
    0x5b258d149e84314992806f69ba7f5a5c510074007900000000000000b70b6c2a ,
    0x3fc1904699d595799104e424070000005b258d149e84314992806f69ba7f5a5c ,
    0x54006f00740061006c00500072006900630065000000000000001a9bcebee1ef ,
    0x2d4ca3bb11d587b92c8a070000005b258d149e84314992806f69ba7f5a5c4300 ,
    0x61007400650067006f00720079004900440000000000000029556c4fcc6de941 ,
    0x8049e37cebcb8ed3070000001fa799cf3c261b4c9a3216276a1586b849004400 ,
    0x0000000000009b577f5f4d33e74a94cf2f3e78fa4e1e070000005b258d149e84 ,
    0x314992806f69ba7f5a5c500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e00740049004400000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="qryRptMailComponent_Header.SellQtyFinal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc8e904d4fbd4b44886c7241c5888473a
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Details.Qty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb6c62592986544d847b0fd3e8fa0d6a
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.MailComponentYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15c87dfb1ac98a4881c9929366895e98
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb46b04c384cf2f4097ce288b2bc5e833
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x54a7384bf31895409225ae0de6c9c75b
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa10e5b9bcc18464cb2da8e36514a5118
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21de3d4cca9a564fa1bbbf2b4aface53
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd426c53c167f474899db669222d97b6a
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Header.SellForFinal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7bf481daf07b0143b3ef0c083a40fd3d
        End
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Details.TotalPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptMailComponent_Details.CategoryID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TotalPrice"
        dbBinary "GUID" = Begin
            0x148be4ef01fcfe41899d1343f2e7d2a4
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1560
    Bottom =859
    Left =-1
    Top =-1
    Right =1450
    Bottom =388
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =80
        Top =44
        Right =340
        Bottom =350
        Top =0
        Name ="qryRptMailComponent_Header"
        Name =""
    End
    Begin
        Left =457
        Top =66
        Right =923
        Bottom =363
        Top =0
        Name ="qryRptMailComponent_Details"
        Name =""
    End
End
