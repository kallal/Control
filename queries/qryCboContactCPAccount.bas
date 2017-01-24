Operation =1
Option =0
Begin InputTables
    Name ="dbo_ContactCPAccount"
End
Begin OutputColumns
    Expression ="dbo_ContactCPAccount.ID"
    Alias ="Account Holder"
    Expression ="dbo_ContactCPAccount.CPAcctName"
    Alias ="Account Number"
    Expression ="dbo_ContactCPAccount.CPAcctNum"
    Alias ="Contract Number"
    Expression ="dbo_ContactCPAccount.CPContractNum"
    Expression ="dbo_ContactCPAccount.ContactGeneralID"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xa3ef2dd0cb307a46aa10875d7b859874
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008afb41ce3a919545b4dcf9816bdc05da00000000d6a6130d ,
    0xcfe0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400430050004100630063006f0075006e0074000000000000000003800c18ba ,
    0x310004ba310030fd600c07000000a3ef2dd0cb307a46aa10875d7b8598744100 ,
    0x630063006f0075006e007400200048006f006c00640065007200000000000000 ,
    0x8f8233f6b37cdd4e93941cd736bb7b1a07000000a3ef2dd0cb307a46aa10875d ,
    0x7b8598744100630063006f0075006e00740020004e0075006d00620065007200 ,
    0x000000000000a607e3dbe7c94d49b7c6d95e1ac8234c07000000a3ef2dd0cb30 ,
    0x7a46aa10875d7b85987443006f006e007400720061006300740020004e007500 ,
    0x6d00620065007200000000000000725a65bc3b3fc141958e7adf37af0f910700 ,
    0x00008afb41ce3a919545b4dcf9816bdc05da49004400000000000000ae06136a ,
    0xe60dec46af393543bb8139a6070000008afb41ce3a919545b4dcf9816bdc05da ,
    0x4300500041006300630074004e0061006d00650000000000000074ad9a329b9a ,
    0xbb4b8bd2b6dd3f181c54070000008afb41ce3a919545b4dcf9816bdc05da4300 ,
    0x500041006300630074004e0075006d0000000000000062c9d333e44d314ba98a ,
    0x7bf1d7f803e2070000008afb41ce3a919545b4dcf9816bdc05da430050004300 ,
    0x6f006e00740072006100630074004e0075006d00000000000000d0af253dab50 ,
    0xb9468097d0277235061f070000008afb41ce3a919545b4dcf9816bdc05da4300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactCPAccount.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Account Number"
        dbInteger "ColumnWidth" ="2730"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8f8233f6b37cdd4e93941cd736bb7b1a
        End
    End
    Begin
        dbText "Name" ="Contract Number"
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa607e3dbe7c94d49b7c6d95e1ac8234c
        End
    End
    Begin
        dbText "Name" ="Account Holder"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0003800c18ba310004ba310030fd600c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactCPAccount.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3885"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1628
    Bottom =860
    Left =-1
    Top =-1
    Right =1520
    Bottom =360
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =531
        Bottom =337
        Top =0
        Name ="dbo_ContactCPAccount"
        Name =""
    End
End
