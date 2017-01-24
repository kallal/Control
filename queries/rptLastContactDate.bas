Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactHistory"
End
Begin OutputColumns
    Alias ="LastOfDateStamp"
    Expression ="Last(dbo_ContactHistory.DateStamp)"
    Expression ="dbo_ContactHistory.ContactGeneralID"
End
Begin OrderBy
    Expression ="dbo_ContactHistory.ContactGeneralID"
    Flag =0
End
Begin Groups
    Expression ="dbo_ContactHistory.ContactGeneralID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3810298087283c4eae989a77b2c9032a
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008faaeb84fb561a409c4104d89a2db26e000000002acf1f4c ,
    0x2de0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x740048006900730074006f007200790000000000000068b6e50a9eb94d4c8d80 ,
    0xfa739a88c988070000003810298087283c4eae989a77b2c9032a4c0061007300 ,
    0x74004f00660044006100740065005300740061006d0070000000000000009f56 ,
    0x82b3e0c0674781fb1b7666c2f7b6070000008faaeb84fb561a409c4104d89a2d ,
    0xb26e44006100740065005300740061006d007000000000000000752b38108368 ,
    0x8449a65e2f408a3b252e070000008faaeb84fb561a409c4104d89a2db26e4300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ContactHistory.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ContactGeneralID"
        dbInteger "ColumnWidth" ="3885"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4b565b6b16c6141aae902cca2f02813
        End
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.DateStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LastOfDateStamp"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68b6e50a9eb94d4c8d80fa739a88c988
        End
    End
End
Begin
    State =0
    Left =2
    Top =8
    Right =1477
    Bottom =731
    Left =-1
    Top =-1
    Right =1443
    Bottom =439
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =708
        Bottom =440
        Top =0
        Name ="dbo_ContactHistory"
        Name =""
    End
End
