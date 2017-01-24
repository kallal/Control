Operation =1
Option =0
Where ="(((dbo_ProjectHeader.InvoiceNum)>=115000))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectComponentPrepress"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ContactGeneral.IndustryID"
    Alias ="Industry"
    Expression ="DLookUp(\"[NAICSTitle]\",\"dbo_NaicsCode\",\"[naicscode] = '\" & [dbo_ContactGen"
        "eral].[industryid] & \"'\")"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectComponentPrepress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPrepress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =3
End
Begin OrderBy
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x5558be38118fa44cbadb79ef4a166433
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a80000000009be482d5 ,
    0xca96e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be000000008cdf77d5ca96e4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x48006500610064006500720000000000000031cd7ae343a06f4e947a4d021bf7 ,
    0x407900000000e6a87bd5ca96e4400000000000000000640062006f005f005000 ,
    0x72006f006a0065006300740043006f006d0070006f006e0065006e0074005000 ,
    0x7200650070007200650073007300000000000000bb4ee421343f624db77659ee ,
    0xf5e022a100000000f465cbde8c97e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000b4d9ec28f5aa424396043f2a27d9182f070000005558be38118fa44cbadb ,
    0x79ef4a16643349006e0064007500730074007200790000000000000004aeb271 ,
    0x8000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x490044000000000000007da6a641b3cf604b95c0700a612b45850700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8049006e0076006f006900630065004e007500 ,
    0x6d0000000000000077a5524b02faf248a18587169cb2874b0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8049006e0076006f00690063006500440061007400 ,
    0x6500000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074004e0075006d000000 ,
    0x000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80500072006f006a006500630074004e0061006d0065000000 ,
    0x00000000a21dc4fed47c244fa08fb5209ebbfbc707000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be43006f006d0070006f006e0065006e0074004e0061006d00 ,
    0x65000000000000005c90b798aa47ab459c1716da6c77396207000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006f006600530065006e0074004400 ,
    0x61007400650000000000000078a4ab78684be74a86eca6bbeda30d6807000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be500072006f006f006600410070007000 ,
    0x72006f007600650064004400610074006500000000000000cf4472ff195d5f47 ,
    0x855327b49a3bd64607000000bb4ee421343f624db77659eef5e022a149006e00 ,
    0x640075007300740072007900490044000000000000002042568302f48b4d89eb ,
    0x4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f00 ,
    0x6a0065006300740048006500610064006500720049004400000000000000c31e ,
    0x4efad55c574aad9cce13d02d3f790700000031cd7ae343a06f4e947a4d021bf7 ,
    0x4079500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x74004900440000000000000029556c4fcc6de9418049e37cebcb8ed307000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be490044000000000000008265226ce516 ,
    0x5f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624d ,
    0xb77659eef5e022a1490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaaa885dd7817f14b81a150a0062ab932
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8fb7773836efdc46b627f3b3d40b5f94
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbInteger "ColumnWidth" ="4215"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1ffe998936731c48bb9594548323282c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbInteger "ColumnWidth" ="2775"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6358841f83224e45a93df44d5163fb73
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x552088643b507948944fe07d8f8cd122
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac9d577dfe62144ab71b4187a636514d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x27e9db691b6b5946b6e09a51e19cf9fc
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IndustryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d8812812be0c34191daccd8357dd78d
        End
    End
    Begin
        dbText "Name" ="Industry"
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4d9ec28f5aa424396043f2a27d9182f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd72efe8ed576d24f84f5d7478877ef7a
        End
    End
    Begin
        dbText "Name" ="tblCboNaicsCode.NaicsTitle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =16
    Top =40
    Right =1498
    Bottom =763
    Left =-1
    Top =-1
    Right =1450
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =238
        Bottom =419
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =682
        Top =8
        Right =999
        Bottom =295
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1075
        Top =19
        Right =1315
        Bottom =357
        Top =0
        Name ="dbo_ProjectComponentPrepress"
        Name =""
    End
    Begin
        Left =328
        Top =91
        Right =486
        Bottom =353
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
