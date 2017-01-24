Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentPress"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Alias ="MinOfPressDateExp"
    Expression ="Min(dbo_ProjectComponentPress.PressDateExp)"
End
Begin Groups
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xbb54366bb2c4fc46855dc74e6bdedf4b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa37704000000006b20350e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x00000000a437b70e8cc5084a8e28fd23c7c4d9bd07000000bb54366bb2c4fc46 ,
    0x855dc74e6bdedf4b4d0069006e004f0066005000720065007300730044006100 ,
    0x74006500450078007000000000000000e19fd78d6de8f042912e16a0f4718a30 ,
    0x070000001ff48b4b7bbd39459517fa849aa37704500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e00740049004400000000000000a7e5 ,
    0xcd913689b745b8b11323a11cf3f0070000001ff48b4b7bbd39459517fa849aa3 ,
    0x7704500072006500730073004400610074006500450078007000000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinOfPressDateExp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa437b70e8cc5084a8e28fd23c7c4d9bd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7b7da50293877b46b941bb5203d0b2c2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97ed1cf65892374fabbfa680907c65c0
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1478
    Bottom =980
    Left =-1
    Top =-1
    Right =1370
    Bottom =425
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =497
        Bottom =405
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
End
