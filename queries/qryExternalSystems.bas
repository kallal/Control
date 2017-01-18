Operation =1
Option =0
Begin InputTables
    Name ="dbo_ExternalSystems"
End
Begin OutputColumns
    Expression ="dbo_ExternalSystems.ID"
    Expression ="dbo_ExternalSystems.Description"
    Expression ="dbo_ExternalSystems.Location"
    Expression ="dbo_ExternalSystems.SQLIPAddress"
    Expression ="dbo_ExternalSystems.SQLUsername"
    Expression ="dbo_ExternalSystems.SQLPassword"
    Expression ="dbo_ExternalSystems.XMLHotfolderInput"
    Expression ="dbo_ExternalSystems.XMLHotFolderOutput"
    Expression ="dbo_ExternalSystems.ApplicationName"
    Expression ="dbo_ExternalSystems.ApplicationFolder"
    Expression ="dbo_ExternalSystems.ExternalSystemType"
    Expression ="dbo_ExternalSystems.ConnectionType"
    Expression ="dbo_ExternalSystems.TestData"
    Expression ="dbo_ExternalSystems.Notes"
End
Begin OrderBy
    Expression ="dbo_ExternalSystems.ExternalSystemType"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xdf8886b973c785439a4ecaf03b451ab8
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000081c10e09ebce264fb857890c68c385da00000000b3d00973 ,
    0x14dae4400000000000000000640062006f005f00450078007400650072006e00 ,
    0x61006c00530079007300740065006d007300000000000000400d7dade731bd40 ,
    0x949b1a1e5e1760700700000081c10e09ebce264fb857890c68c385da49004400 ,
    0x0000000000008b93fa231fe55949884ef5d63b3dbeb70700000081c10e09ebce ,
    0x264fb857890c68c385da4400650073006300720069007000740069006f006e00 ,
    0x000000000000dcbce9aac70af945aff8b2dbd0b73efb0700000081c10e09ebce ,
    0x264fb857890c68c385da4c006f0063006100740069006f006e00000000000000 ,
    0x688f01b1437ae24fa69bde71028755bc0700000081c10e09ebce264fb857890c ,
    0x68c385da530051004c0049005000410064006400720065007300730000000000 ,
    0x0000ce22107f52977e46b832b334ccce67a60700000081c10e09ebce264fb857 ,
    0x890c68c385da530051004c0055007300650072006e0061006d00650000000000 ,
    0x00008781816b02702a488cc8189975eabf2f0700000081c10e09ebce264fb857 ,
    0x890c68c385da530051004c00500061007300730077006f007200640000000000 ,
    0x0000539a6a09de254a4283ce1a1b964e80300700000081c10e09ebce264fb857 ,
    0x890c68c385da58004d004c0048006f00740066006f006c006400650072004900 ,
    0x6e00700075007400000000000000d87607e055b6564d9739e4bc96d6d2b50700 ,
    0x000081c10e09ebce264fb857890c68c385da58004d004c0048006f0074004600 ,
    0x6f006c006400650072004f007500740070007500740000000000000025ea2907 ,
    0x1b07344e8b0a6e2f24250ff20700000081c10e09ebce264fb857890c68c385da ,
    0x4100700070006c00690063006100740069006f006e004e0061006d0065000000 ,
    0x00000000fa860e84bc3d804f9e723f71bd00b1ea0700000081c10e09ebce264f ,
    0xb857890c68c385da4100700070006c00690063006100740069006f006e004600 ,
    0x6f006c0064006500720000000000000036b3746bf0f2f54cb5883cc5698d8d9a ,
    0x0700000081c10e09ebce264fb857890c68c385da450078007400650072006e00 ,
    0x61006c00530079007300740065006d0054007900700065000000000000003d63 ,
    0xbe8d8d29b249b362392cc41f1a970700000081c10e09ebce264fb857890c68c3 ,
    0x85da43006f006e006e0065006300740069006f006e0054007900700065000000 ,
    0x0000000088b036888d1b1c428027a028282376cd0700000081c10e09ebce264f ,
    0xb857890c68c385da54006500730074004400610074006100000000000000deb0 ,
    0x7093f7404444ab5d2f3ce97afb7b0700000081c10e09ebce264fb857890c68c3 ,
    0x85da4e006f007400650073000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ExternalSystems.ExternalSystemType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfc3cce58f49d474daac24f003c6d4e0d
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x354bf447e6cdf742a64f2ea992dc2174
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x37f55506de2d4840a6e0fba685e1d4aa
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.Location"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc46cbdcc5a315647aeceac12ee59a951
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.SQLIPAddress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94353a876cc274438ccb62834b246af3
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.SQLUsername"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa3ef15d3dba55f449086de1f033eff3a
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d967edc186d904a8b61b45a602330cd
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.SQLPassword"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d16ade51df9ea42b4b5b4bfdbfc4f8f
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.XMLHotfolderInput"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe92c99932de04e48a2869e4c0892b9f9
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.XMLHotFolderOutput"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x643b97be5eef4044a3ff0f0f1fa0f83b
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.ApplicationName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x767b42bf052ea442b54e0d362de14ff3
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.ApplicationFolder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea42ab4ed0de354fb0b890f3a78e600c
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.ConnectionType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x20cd06ee48c85146a680c6ec4d90e1c1
        End
    End
    Begin
        dbText "Name" ="dbo_ExternalSystems.TestData"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1501
    Bottom =552
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =759
        Bottom =571
        Top =0
        Name ="dbo_ExternalSystems"
        Name =""
    End
End
