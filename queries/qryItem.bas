Operation =1
Option =0
Begin InputTables
    Name ="dbo_Item"
    Name ="dbo_Department"
End
Begin OutputColumns
    Expression ="dbo_Item.*"
End
Begin Joins
    LeftTable ="dbo_Item"
    RightTable ="dbo_Department"
    Expression ="dbo_Item.DepartmentID = dbo_Department.ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_Department.DisplayOrder"
    Flag =0
    Expression ="dbo_Item.DisplayOrder"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x60afca14144f0946880c48a61a3cb646
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008fef4169ec123a49b09256577829cd4600000000a42bb0c0 ,
    0xea62e4400000000000000000640062006f005f004900740065006d0000000000 ,
    0x0000b6df33c5ffba1842a708d4bfa95bb00f0000000059aaa9c0ea62e4400000 ,
    0x000000000000640062006f005f004400650070006100720074006d0065006e00 ,
    0x740000000000000057284c6cc05ad84ea746a086fc117657070000008fef4169 ,
    0xec123a49b09256577829cd464400650070006100720074006d0065006e007400 ,
    0x490044000000000000008de3938440681d448226c556f76b76fb07000000b6df ,
    0x33c5ffba1842a708d4bfa95bb00f49004400000000000000c0856f9428eadc47 ,
    0xa15ec16814d3c46b07000000b6df33c5ffba1842a708d4bfa95bb00f44006900 ,
    0x730070006c00610079004f0072006400650072000000000000009cb32e0a6f63 ,
    0x6f46a71c6eaf9cc659bd070000008fef4169ec123a49b09256577829cd464400 ,
    0x6900730070006c00610079004f00720064006500720000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_Item.OptionText"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.DisplayOrder"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1515"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Item.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.Type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.DepartmentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.LocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.MachineTypeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.UnitOfSale"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.CostSetup"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.SellSetup"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.Vendor1ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.Vendor2ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.Vendor3ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Item.OptionType"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1541
    Bottom =860
    Left =-1
    Top =-1
    Right =1471
    Bottom =440
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =431
        Bottom =351
        Top =0
        Name ="dbo_Item"
        Name =""
    End
    Begin
        Left =479
        Top =12
        Right =623
        Bottom =156
        Top =0
        Name ="dbo_Department"
        Name =""
    End
End
