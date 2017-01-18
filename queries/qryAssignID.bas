Operation =4
Option =0
Where ="((([_FromClaude2].Salesperson)=\"tammy\"))"
Begin InputTables
    Name ="_FromClaude2"
End
Begin OutputColumns
    Name ="[_FromClaude2].AxisMISEmployeeID"
    Expression ="12"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0xb174a3bb10d86741907093b12be6bfde
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000007e047c4f0677f14da15cb7bf348b122300000000fa54286d ,
    0xec62e44000000000000000005f00460072006f006d0043006c00610075006400 ,
    0x65003200000000000000ccce89e9d6342342907dd6ac615d2fa1070000007e04 ,
    0x7c4f0677f14da15cb7bf348b122341007800690073004d004900530045006d00 ,
    0x70006c006f0079006500650049004400000000000000b61e2a6936cb384895ff ,
    0x2eb7067849ce070000007e047c4f0677f14da15cb7bf348b1223530061006c00 ,
    0x6500730070006500720073006f006e0000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="[_FromClaude1].AssignedSalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[_FromClaude1].AxisMISEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a630d68aa0c00418825e4df156cbfe4
        End
    End
    Begin
        dbText "Name" ="[_FromClaude2].[Customer Name]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[_FromClaude2].Salesperson"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[_FromClaude2].AxisMISEmployeeID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =111
    Top =92
    Right =884
    Bottom =894
    Left =-1
    Top =-1
    Right =741
    Bottom =485
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="_FromClaude2"
        Name =""
    End
End
