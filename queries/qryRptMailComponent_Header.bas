Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.MailComponentYN)=True) AND ((dbo_ProjectHeader.Inv"
    "oiceNum) Is Null) AND ((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.SellForFinal"
    Expression ="dbo_ProjectComponentHeader.SellQtyFinal"
    Expression ="dbo_ProjectComponentHeader.ID"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x1fa799cf3c261b4c9a3216276a1586b8
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a1000000006f48190dcfe0e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0xc59643644848454d997b09a1342a123207000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4d00610069006c0043006f006d0070006f006e0065006e0074005900 ,
    0x4e00000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421 ,
    0x343f624db77659eef5e022a143006f006d0070004e0061006d00650000000000 ,
    0x000077a5524b02faf248a18587169cb2874b0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8049006e0076006f00690063006500440061007400650000000000 ,
    0x0000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8044006f0063006b00650074004e0075006d000000000000001c9b ,
    0x84855b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a80500072006f006a006500630074004e0061006d006500000000000000a21d ,
    0xc4fed47c244fa08fb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be43006f006d0070006f006e0065006e0074004e0061006d00650000000000 ,
    0x0000295dd08fa5fdd842b45759b74bd1aab007000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be530065006c006c0046006f007200460069006e0061006c000000 ,
    0x00000000ed1798185848c04c993f9b79d746c8e007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530065006c006c00510074007900460069006e0061006c00 ,
    0x00000000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be490044000000000000002042568302f48b4d89eb4ba2 ,
    0xabddca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a00 ,
    0x6500630074004800650061006400650072004900440000000000000004aeb271 ,
    0x8000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x490044000000000000008265226ce5165f4597f9cda188898d960700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8043006f006e00740061006300740047006500 ,
    0x6e006500720061006c00490044000000000000001fc238e447652546a47f3ca6 ,
    0xa0d889e407000000bb4ee421343f624db77659eef5e022a14900440000000000 ,
    0x00007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8049006e0076006f006900630065004e0075006d00000000000000 ,
    0xe04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8056006f00690064000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailComponentYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x246a3fbe5dfaff458dd01d9ee64838df
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6bf880c8a27c9441b0179e9f6477db6a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x955009496e93eb499fa211df6fed1850
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9576056b7a3ba9499650f0294feb6d0c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde3fe7acb87809499a6a5fdadc40176d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4279a333f8007548977e89cd5e28aec6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SellForFinal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf99054656e6b204a9b1e967fb934a2db
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SellQtyFinal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4fd231051da27e49ba4c478e2320d300
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
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
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =55
        Top =18
        Right =470
        Bottom =421
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =577
        Top =39
        Right =782
        Bottom =202
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =889
        Top =27
        Right =1033
        Bottom =171
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
