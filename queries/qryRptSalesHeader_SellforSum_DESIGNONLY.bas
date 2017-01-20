Operation =1
Option =0
Having ="(((dbo_ProjectComponentHeader.ProjectHeaderID)>0))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectComponentCreative"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Alias ="sellfor"
    Expression ="Sum(dbo_ProjectComponentHeader.sellforfinal)"
    Alias ="quotefor"
    Expression ="Sum(dbo_ProjectComponentHeader.pdqAmtFinal)"
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Expression ="dbo_ProjectComponentCreative.Description"
    Expression ="dbo_ProjectComponentCreative.HoursEst"
    Expression ="dbo_ProjectComponentCreative.IsComplete"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentCreative"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentCreative.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =1
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    GroupLevel =0
    Expression ="dbo_ProjectComponentCreative.Description"
    GroupLevel =0
    Expression ="dbo_ProjectComponentCreative.HoursEst"
    GroupLevel =0
    Expression ="dbo_ProjectComponentCreative.IsComplete"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000028432c4c2b117b45b2969d4c04c522fe00000000c8f94d4c2de0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x43006f006d0070006f006e0065006e0074004300720065006100740069007600 ,
    0x6500000000000000b0bd0eeaaff55740a5eb393481fda4f40700000040633ae7 ,
    0x56023547afe856f8fa55b761730065006c006c0066006f007200000000000000 ,
    0xb62cf6d097d23148af8470f7ba7d6a5a0700000040633ae756023547afe856f8 ,
    0xfa55b761710075006f007400650066006f0072000000000000002042568302f4 ,
    0x8b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x72006f006a006500630074004800650061006400650072004900440000000000 ,
    0x0000295dd08fa5fdd842b45759b74bd1aab007000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be730065006c006c0066006f007200660069006e0061006c000000 ,
    0x0000000008e398ef1796b9449476fedb66098b6b07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be70006400710041006d007400460069006e0061006c000000 ,
    0x00000000c59643644848454d997b09a1342a123207000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4d00610069006c0043006f006d0070006f006e0065006e00 ,
    0x740059004e00000000000000cedc3209f2a2e948845617e9086c989507000000 ,
    0x28432c4c2b117b45b2969d4c04c522fe44006500730063007200690070007400 ,
    0x69006f006e000000000000005b541c13c9d43e49928de905f2906af807000000 ,
    0x28432c4c2b117b45b2969d4c04c522fe48006f00750072007300450073007400 ,
    0x0000000000002e8f9718e7684e498b033e6c1868e8c80700000028432c4c2b11 ,
    0x7b45b2969d4c04c522fe4900730043006f006d0070006c006500740065000000 ,
    0x000000009db5c04e1e7c524d885da8dbba3b8b040700000028432c4c2b117b45 ,
    0xb2969d4c04c522fe500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e0074004900440000000000000029556c4fcc6de9418049e37cebcb ,
    0x8ed307000000d2d381ba93398a4283a6a9ed80a7b4be49004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
dbBinary "GUID" = Begin
    0x40633ae756023547afe856f8fa55b761
End
Begin
    Begin
        dbText "Name" ="sellfor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb0bd0eeaaff55740a5eb393481fda4f4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4a5eec03f45e6e4997b2fc833d2a0514
        End
    End
    Begin
        dbText "Name" ="quotefor"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb62cf6d097d23148af8470f7ba7d6a5a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailComponentYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.Description"
        dbInteger "ColumnWidth" ="3765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.HoursEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.IsComplete"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1579
    Bottom =980
    Left =-1
    Top =-1
    Right =1471
    Bottom =395
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =753
        Bottom =458
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =801
        Top =12
        Right =1122
        Bottom =211
        Top =0
        Name ="dbo_ProjectComponentCreative"
        Name =""
    End
End
