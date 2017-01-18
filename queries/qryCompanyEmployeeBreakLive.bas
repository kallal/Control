Operation =1
Option =0
Where ="(((dbo_CompanyEmployeeBreak.BreakBegin) Is Not Null) AND ((dbo_CompanyEmployeeBr"
    "eak.BreakEnd) Is Null))"
Begin InputTables
    Name ="dbo_CompanyEmployeeBreak"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeBreak.ID"
    Expression ="dbo_CompanyEmployeeBreak.CompanyEmployeeID"
    Expression ="dbo_CompanyEmployeeBreak.BreakBegin"
    Expression ="dbo_CompanyEmployeeBreak.BreakEnd"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3a5407e2d0775447b84bff40585cdb29
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b494c17b950c2840ae0330c54f69d729000000002a0697c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f0079006500650042007200650061006b0000000000 ,
    0x0000c0653c640355db499b9b2192ca1b099407000000b494c17b950c2840ae03 ,
    0x30c54f69d7294900440000000000000072cd993f35ed644cb4b64bc32793dc27 ,
    0x07000000b494c17b950c2840ae0330c54f69d72943006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500490044000000000000009087db9a ,
    0x40669544b7462b495aa6e57607000000b494c17b950c2840ae0330c54f69d729 ,
    0x42007200650061006b0042006500670069006e0000000000000060ef6468233c ,
    0x2c4f865d927c4fee1b0507000000b494c17b950c2840ae0330c54f69d7294200 ,
    0x7200650061006b0045006e006400000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeBreak.BreakEnd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeBreak.BreakBegin"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1485
    Bottom =428
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =548
        Bottom =329
        Top =0
        Name ="dbo_CompanyEmployeeBreak"
        Name =""
    End
End
