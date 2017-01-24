Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.ID"
    Alias ="FULLNAME"
    Expression ="[FN] & \" \" & [LN]"
    Expression ="dbo_ContactName.ContactGeneralID"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x8815e60ebaa87345804ab23ea8f2ee7f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000abd7a13a18cfc44f845c77c762d61a46000000000acb280d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004e0061006d006500000000000000ecd2028d88582842aeca775c4aa30bfd ,
    0x070000008815e60ebaa87345804ab23ea8f2ee7f460055004c004c004e004100 ,
    0x4d00450000000000000055214613b67cb94eaac4189bee61392c07000000abd7 ,
    0xa13a18cfc44f845c77c762d61a464900440000000000000065ad3064e8981147 ,
    0xa4bdc2ff83e1e02607000000abd7a13a18cfc44f845c77c762d61a4646004e00 ,
    0x00000000000096debff91f1ff043bcf0998107c8713e07000000abd7a13a18cf ,
    0xc44f845c77c762d61a464c004e00000000000000d599d0cd154bce47987e4268 ,
    0x426c590007000000abd7a13a18cfc44f845c77c762d61a4643006f006e007400 ,
    0x610063007400470065006e006500720061006c00490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2401c969a388ad4b98351d9d4e2135c0
        End
    End
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xecd2028d88582842aeca775c4aa30bfd
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1589
    Bottom =860
    Left =-1
    Top =-1
    Right =1481
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =623
        Bottom =261
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
