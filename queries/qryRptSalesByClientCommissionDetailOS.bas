Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentOutsideService"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentOutsideService.ProjectComponentID"
    Alias ="SumOfQuoteAmt"
    Expression ="Sum(dbo_ProjectComponentOutsideService.QuoteAmt)"
End
Begin Groups
    Expression ="dbo_ProjectComponentOutsideService.ProjectComponentID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4b80218c010bab40bfbf1b9be46b3825
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c252235b46cf774eb1cc0f5ab71b9a61000000009afd59b4 ,
    0x14b5e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e0074004f0075007400730069006400 ,
    0x65005300650072007600690063006500000000000000e9637aa989e2a0409e4c ,
    0xc9662d952053070000004b80218c010bab40bfbf1b9be46b3825530075006d00 ,
    0x4f006600510075006f007400650041006d00740000000000000035ae08324c3f ,
    0x9b439499da5f2592a53307000000c252235b46cf774eb1cc0f5ab71b9a615000 ,
    0x72006f006a0065006300740043006f006d0070006f006e0065006e0074004900 ,
    0x4400000000000000c9a9ddcea37f69468920579db02c121607000000c252235b ,
    0x46cf774eb1cc0f5ab71b9a61510075006f007400650041006d00740000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QuoteAmt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.PricePerM"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfQuoteAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe9637aa989e2a0409e4cc9662d952053
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1374
    Bottom =439
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =563
        Bottom =406
        Top =0
        Name ="dbo_ProjectComponentOutsideService"
        Name =""
    End
End
