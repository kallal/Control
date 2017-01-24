Operation =1
Option =0
Begin InputTables
    Name ="dbo_T_StatusRecord"
    Name ="dbo_M_MainteItem"
End
Begin OutputColumns
    Expression ="dbo_T_StatusRecord.DeviceID"
    Expression ="dbo_T_StatusRecord.RecordDate"
    Expression ="dbo_T_StatusRecord.CategoryID"
    Expression ="dbo_T_StatusRecord.ItemID"
    Expression ="dbo_M_MainteItem.ItemName"
    Expression ="dbo_T_StatusRecord.Speed"
    Expression ="dbo_M_MainteItem.IntervalHour"
    Expression ="dbo_T_StatusRecord.WorkingTime"
    Expression ="dbo_M_MainteItem.PassageType"
    Expression ="dbo_T_StatusRecord.GoodPrintingTime"
End
Begin Joins
    LeftTable ="dbo_T_StatusRecord"
    RightTable ="dbo_M_MainteItem"
    Expression ="dbo_T_StatusRecord.DeviceID = dbo_M_MainteItem.DeviceID"
    Flag =1
    LeftTable ="dbo_T_StatusRecord"
    RightTable ="dbo_M_MainteItem"
    Expression ="dbo_T_StatusRecord.ItemID = dbo_M_MainteItem.ItemID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_T_StatusRecord.RecordDate"
    Flag =1
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
dbBinary "GUID" = Begin
    0x258aef1bc6af524a9c7335977ca7acfe
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b227a9a7fa8fcb4c8fdd5f4fcb709cee000000001f536482 ,
    0xb69be4400000000000000000640062006f005f0054005f005300740061007400 ,
    0x750073005200650063006f0072006400000000000000e702de0c3323154e82dd ,
    0x0dd47ee5631800000000b5565282b69be4400000000000000000640062006f00 ,
    0x5f004d005f004d00610069006e00740065004900740065006d00000000000000 ,
    0x12646ab9ce766b4bb52d5d736f1ae9c807000000b227a9a7fa8fcb4c8fdd5f4f ,
    0xcb709cee440065007600690063006500490044000000000000009c8fca5514b8 ,
    0x2b42ade1f07732930b2107000000b227a9a7fa8fcb4c8fdd5f4fcb709cee5200 ,
    0x650063006f0072006400440061007400650000000000000035d2fb142089d04f ,
    0xb32c662a71a74fa007000000b227a9a7fa8fcb4c8fdd5f4fcb709cee43006100 ,
    0x7400650067006f007200790049004400000000000000ad49e7027c6dfa45be3f ,
    0x801a2c86d88f07000000b227a9a7fa8fcb4c8fdd5f4fcb709cee490074006500 ,
    0x6d0049004400000000000000c05c822cd437ae46baa3d8b9c7a50f3007000000 ,
    0xe702de0c3323154e82dd0dd47ee563184900740065006d004e0061006d006500 ,
    0x0000000000001872947c1d0e014a87216c9e3486e50e07000000b227a9a7fa8f ,
    0xcb4c8fdd5f4fcb709cee53007000650065006400000000000000dfa66bb390ce ,
    0x4543841a91f201a4a98d07000000e702de0c3323154e82dd0dd47ee563184900 ,
    0x6e00740065007200760061006c0048006f0075007200000000000000e96a4dc1 ,
    0x11d8d6438f0fd71854e1668b07000000b227a9a7fa8fcb4c8fdd5f4fcb709cee ,
    0x57006f0072006b0069006e006700540069006d006500000000000000e1a2d53a ,
    0x41f1164eba71ff7a9610fbed07000000e702de0c3323154e82dd0dd47ee56318 ,
    0x500061007300730061006700650054007900700065000000000000001e66662e ,
    0x7c4abc4ca25027620d8f8b7107000000b227a9a7fa8fcb4c8fdd5f4fcb709cee ,
    0x47006f006f0064005000720069006e00740069006e006700540069006d006500 ,
    0x000000000000cedf554781838f44976ad00286beaa1607000000e702de0c3323 ,
    0x154e82dd0dd47ee5631844006500760069006300650049004400000000000000 ,
    0x2011037577b015419219edc6c1de9f4f07000000e702de0c3323154e82dd0dd4 ,
    0x7ee563184900740065006d004900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_T_StatusRecord.CategoryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2433be270463a448791f1e834fedf5b
        End
    End
    Begin
        dbText "Name" ="dbo_M_MainteItem.ItemName"
        dbInteger "ColumnWidth" ="4200"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x737dd6abb5ff2c48a18787f2b286a29a
        End
    End
    Begin
        dbText "Name" ="dbo_T_StatusRecord.DeviceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4c0b969587e1db41b90627553ea1840d
        End
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_T_StatusRecord.RecordDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68218d5e22ef6d41800c411ddfce3f15
        End
        dbInteger "ColumnWidth" ="2940"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_T_StatusRecord.ItemID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4422e4c6a3427540baa8e05cd22e88b7
        End
    End
    Begin
        dbText "Name" ="dbo_T_StatusRecord.Speed"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfcf166823ab6a144a3831f53a0190b1f
        End
    End
    Begin
        dbText "Name" ="dbo_M_MainteItem.IntervalHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_StatusRecord.WorkingTime"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_M_MainteItem.PassageType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_StatusRecord.GoodPrintingTime"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1683
    Bottom =877
    Left =-1
    Top =-1
    Right =1651
    Bottom =435
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =138
        Top =61
        Right =429
        Bottom =382
        Top =0
        Name ="dbo_T_StatusRecord"
        Name =""
    End
    Begin
        Left =665
        Top =84
        Right =972
        Bottom =436
        Top =0
        Name ="dbo_M_MainteItem"
        Name =""
    End
End
