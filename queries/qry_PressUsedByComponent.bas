Operation =1
Option =0
Having ="(((dbo_ProjectComponentPress.Press) Is Not Null))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Expression ="dbo_ProjectComponentPress.Press"
    Alias ="presscount"
    Expression ="Count(dbo_ProjectComponentPress.Press)"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
End
Begin OrderBy
    Expression ="Count(dbo_ProjectComponentPress.Press)"
    Flag =0
End
Begin Groups
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentPress.Press"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x6956b366c79f344fa105d887fe178137
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa37704000000006f1efeab ,
    0x09cce4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be00000000f6e3f5ab09cce440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000fbaad29a4ecce4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x610064006500720000000000000054cb0f16e201694b857ad5b166d6ef6f0700 ,
    0x00006956b366c79f344fa105d887fe1781377000720065007300730063006f00 ,
    0x75006e0074000000000000002042568302f48b4d89eb4ba2abddca7307000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be500072006f006a006500630074004800 ,
    0x6500610064006500720049004400000000000000e19fd78d6de8f042912e16a0 ,
    0xf4718a30070000001ff48b4b7bbd39459517fa849aa37704500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074004900440000000000 ,
    0x00006ea354afae85c6419effcf1967fdb2b4070000001ff48b4b7bbd39459517 ,
    0xfa849aa377045000720065007300730000000000000029556c4fcc6de9418049 ,
    0xe37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be490044000000 ,
    0x0000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3f09a22c331f6b4ca9319b06f8197f3c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="presscount"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x54cb0f16e201694b857ad5b166d6ef6f
        End
    End
    Begin
        dbText "Name" ="CountOfPress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pc2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x807e710adcc14300c8c143002040770a
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
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =738
        Top =9
        Right =1336
        Bottom =312
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =468
        Top =20
        Right =714
        Bottom =335
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =392
        Bottom =417
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
