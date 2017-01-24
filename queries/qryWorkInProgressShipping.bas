Operation =1
Option =0
Where ="(((dbo_ProjectHeader.ProjectStatusID)=31))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Alias ="ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Alias ="Duedate"
    Expression ="IIf(Nz([specifieddocketduedate],0)<>0,[specifieddocketduedate],[assigneddocketdu"
        "edate])"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ShipInstruction"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
End
Begin Joins
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
    0x03928a990689fe44a71d1079ec2add4d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a8000000000453d923f ,
    0x6ecfe4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a100000000f799513f6ecfe4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000fb2c2f058b8aab4f9af66427841c5f6d0700000003928a990689fe44a71d ,
    0x1079ec2add4d500072006f006a00650063007400480065006100640065007200 ,
    0x49004400000000000000d7fb3da46a6660449fe6d5f10012313a070000000392 ,
    0x8a990689fe44a71d1079ec2add4d440075006500640061007400650000000000 ,
    0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a80490044000000000000006b8100b18f7ba34aa3c59fda19a111ed ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a0065006300 ,
    0x740053007400610074007500730049004400000000000000dc68bee42e27934c ,
    0xa4722dc0273ffc020700000035f87d9f0b136040ad3c2851f16d2a8073007000 ,
    0x650063006900660069006500640064006f0063006b0065007400640075006500 ,
    0x64006100740065000000000000000991cbddd7747348961699f709bd31030700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80610073007300690067006e006500 ,
    0x640064006f0063006b0065007400640075006500640061007400650000000000 ,
    0x0000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db776 ,
    0x59eef5e022a143006f006d0070004e0061006d006500000000000000897a455e ,
    0x3fce6c43841aaa453a86d60b0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x530068006900700049006e0073007400720075006300740069006f006e000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8044006f0063006b00650074004e0075006d00000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x490044000000000000001fc238e447652546a47f3ca6a0d889e407000000bb4e ,
    0xe421343f624db77659eef5e022a1490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56f232fb1db5bf479bbb0f761b564d1f
        End
    End
    Begin
        dbText "Name" ="Duedate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7fb3da46a6660449fe6d5f10012313a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde921dd01bbf1e4eb6ddb6259e061145
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipInstruction"
        dbInteger "ColumnWidth" ="9510"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcac43b2f9d18ad41a1ab796517debc85
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProjectHeaderID"
        dbInteger "ColumnWidth" ="1665"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb2c2f058b8aab4f9af66427841c5f6d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1569
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =454
        Bottom =519
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =581
        Top =-1
        Right =941
        Bottom =290
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
