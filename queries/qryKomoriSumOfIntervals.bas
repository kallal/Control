Operation =1
Option =0
Having ="(((loc_T_StatusRecord.CategoryID)>0) AND ((Sum(loc_T_StatusRecord.Interval))>0))"
Begin InputTables
    Name ="loc_T_StatusRecord"
    Name ="loc_KomoriStatusCodes"
End
Begin OutputColumns
    Expression ="loc_T_StatusRecord.DeviceID"
    Expression ="loc_T_StatusRecord.CategoryID"
    Expression ="loc_T_StatusRecord.ItemID"
    Alias ="SumOfInterval"
    Expression ="Sum(loc_T_StatusRecord.Interval)"
    Expression ="loc_KomoriStatusCodes.CategoryDescription"
    Expression ="loc_KomoriStatusCodes.ItemDescription"
End
Begin Joins
    LeftTable ="loc_T_StatusRecord"
    RightTable ="loc_KomoriStatusCodes"
    Expression ="loc_T_StatusRecord.CategoryID = loc_KomoriStatusCodes.KomoriCategoryID"
    Flag =2
    LeftTable ="loc_T_StatusRecord"
    RightTable ="loc_KomoriStatusCodes"
    Expression ="loc_T_StatusRecord.ItemID = loc_KomoriStatusCodes.KomoriItemID"
    Flag =2
End
Begin Groups
    Expression ="loc_T_StatusRecord.DeviceID"
    GroupLevel =0
    Expression ="loc_T_StatusRecord.CategoryID"
    GroupLevel =0
    Expression ="loc_T_StatusRecord.ItemID"
    GroupLevel =0
    Expression ="loc_KomoriStatusCodes.CategoryDescription"
    GroupLevel =0
    Expression ="loc_KomoriStatusCodes.ItemDescription"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd2a27fd654a67543915e326a667c4463
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c8b7546dee1252438065feff3c7eb0d900000000942e386d ,
    0xec62e44000000000000000006c006f0063005f0054005f005300740061007400 ,
    0x750073005200650063006f0072006400000000000000bc21c0408d0e384c86a4 ,
    0x49c93edcca070000000012a7316dec62e44000000000000000006c006f006300 ,
    0x5f004b006f006d006f007200690053007400610074007500730043006f006400 ,
    0x650073000000000000002d382169f312ae4bad4825a6d65fd6fd07000000d2a2 ,
    0x7fd654a67543915e326a667c4463530075006d004f00660049006e0074006500 ,
    0x7200760061006c00000000000000855ce975dac7cb46b35eaaa60bbc88850700 ,
    0x0000c8b7546dee1252438065feff3c7eb0d94400650076006900630065004900 ,
    0x4400000000000000d83258717eb99a48a746c4b4a6051c2d07000000c8b7546d ,
    0xee1252438065feff3c7eb0d9430061007400650067006f007200790049004400 ,
    0x000000000000d8dbeb27a8dcd246b69d18f9638b3a9507000000c8b7546dee12 ,
    0x52438065feff3c7eb0d94900740065006d0049004400000000000000b8cb77b4 ,
    0x433d6947883ec3ec627cade907000000c8b7546dee1252438065feff3c7eb0d9 ,
    0x49006e00740065007200760061006c0000000000000022fb095866c44345bb05 ,
    0x3a085b93311607000000bc21c0408d0e384c86a449c93edcca07430061007400 ,
    0x650067006f00720079004400650073006300720069007000740069006f006e00 ,
    0x0000000000000afaf01144a19f41a4ff240b6680ac1607000000bc21c0408d0e ,
    0x384c86a449c93edcca074900740065006d004400650073006300720069007000 ,
    0x740069006f006e00000000000000376e2828efd29c43ba7186e5d8aab4690700 ,
    0x0000bc21c0408d0e384c86a449c93edcca074b006f006d006f00720069004300 ,
    0x61007400650067006f0072007900490044000000000000001cc52a6f4202a541 ,
    0x92d5c3f1ce2d1d6407000000bc21c0408d0e384c86a449c93edcca074b006f00 ,
    0x6d006f00720069004900740065006d0049004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="loc_T_StatusRecord.DeviceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x820b7c125d60664c8ea2a393b9c26b22
        End
    End
    Begin
        dbText "Name" ="loc_T_StatusRecord.CategoryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3844cd8900f8f44b82e7ada0358a153d
        End
    End
    Begin
        dbText "Name" ="loc_T_StatusRecord.ItemID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa15917683e1bfc439e751ce0916fdc6e
        End
    End
    Begin
        dbText "Name" ="SumOfInterval"
        dbInteger "ColumnWidth" ="2835"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2d382169f312ae4bad4825a6d65fd6fd
        End
    End
    Begin
        dbText "Name" ="loc_KomoriStatusCodes.CategoryDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_KomoriStatusCodes.ItemDescription"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1539
    Bottom =530
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =465
        Bottom =443
        Top =0
        Name ="loc_T_StatusRecord"
        Name =""
    End
    Begin
        Left =805
        Top =12
        Right =1270
        Bottom =427
        Top =0
        Name ="loc_KomoriStatusCodes"
        Name =""
    End
End
