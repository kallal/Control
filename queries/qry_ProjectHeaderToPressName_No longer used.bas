Operation =1
Option =0
Having ="(((fncPressListOnComponent([dbo_projectComponentheader].[id]))<>\"\"))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Alias ="PressName"
    Expression ="fncPressListOnComponent([dbo_projectComponentheader].[id])"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectComponentPress"
    Expression ="dbo_ProjectComponentHeader.ID = dbo_ProjectComponentPress.ProjectComponentID"
    Flag =2
End
Begin Groups
    Expression ="dbo_ProjectHeader.ID"
    GroupLevel =0
    Expression ="fncPressListOnComponent([dbo_projectComponentheader].[id])"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x83f4cd6ac2ee41408be1b7920e9461ea
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa3770400000000a661f898 ,
    0x4d7ee4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x0000000035f87d9f0b136040ad3c2851f16d2a8000000000c280fd984d7ee440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004800 ,
    0x65006100640065007200000000000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x000000006704f3984d7ee4400000000000000000640062006f005f0050007200 ,
    0x6f006a0065006300740043006f006d0070006f006e0065006e00740048006500 ,
    0x6100640065007200000000000000bb7076a74441ee46b44a5356eec69d810700 ,
    0x000083f4cd6ac2ee41408be1b7920e9461ea500072006500730073004e006100 ,
    0x6d00650000000000000004aeb2718000d24bb73b562a737994cb0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a804900440000000000000029556c4fcc6de941 ,
    0x8049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be69006400 ,
    0x0000000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be500072006f006a006500630074004800650061006400 ,
    0x6500720049004400000000000000e19fd78d6de8f042912e16a0f4718a300700 ,
    0x00001ff48b4b7bbd39459517fa849aa37704500072006f006a00650063007400 ,
    0x43006f006d0070006f006e0065006e0074004900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="PressName"
        dbInteger "ColumnWidth" ="6465"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb7076a74441ee46b44a5356eec69d81
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x50d410abc8a5f944a2a458b3ac15b94b
        End
    End
End
Begin
    State =0
    Left =74
    Top =175
    Right =1603
    Bottom =898
    Left =-1
    Top =-1
    Right =1497
    Bottom =388
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =578
        Top =16
        Right =986
        Bottom =440
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =90
        Top =33
        Right =280
        Bottom =440
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =344
        Top =81
        Right =566
        Bottom =349
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
