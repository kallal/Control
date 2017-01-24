Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectComponentHeader.FinalQty"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ComponentType"
    Expression ="dbo_ProjectComponentHeader.Prerequisite"
    Alias ="Expr1"
    Expression ="dbo_ProjectComponentHeader.DueDate"
    Alias ="Expr1"
    Expression ="dbo_ProjectComponentHeader.DaysRequired"
    Expression ="dbo_ProjectComponentHeader.ShipDate"
    Expression ="dbo_ProjectComponentHeader.FriendlyDescription"
    Alias ="Expr2"
    Expression ="dbo_ProjectComponentHeader.ExternalQuoteNumber"
    Alias ="Expr3"
    Expression ="dbo_ProjectComponentHeader.ExternalQuoteAmount"
    Alias ="Expr4"
    Expression ="dbo_ProjectComponentHeader.ExternalQuoteQty"
    Expression ="dbo_ProjectComponentHeader.VendorID"
    Expression ="dbo_ProjectComponentHeader.VendorNameID"
    Expression ="dbo_ProjectComponentHeader.VendorPackingListNumber"
    Expression ="dbo_ProjectComponentHeader.ReceivedBy"
    Expression ="dbo_ProjectComponentHeader.Notes"
    Alias ="Expr5"
    Expression ="dbo_ProjectComponentHeader.ArtDataReceivedDate"
    Alias ="Expr6"
    Expression ="dbo_ProjectComponentHeader.ProofOKDate"
    Expression ="dbo_ProjectComponentHeader.CompletionDate"
End
Begin OrderBy
    Expression ="dbo_ProjectComponentHeader.Prerequisite"
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
    0xcdcd430abbe11043a2d117d5cef9cf32
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x0000000000002700140aaffc6a488cf9d9368d31cc4607000000000000000000 ,
    0x0000000000000000000045007800700072003100000000000000a6a68272ac6a ,
    0x564ebe93111bfe3718fe07000000000000000000000000000000000000004500 ,
    0x780070007200320000000000000093d90ba764f50649aa907d3c3c8c47170700 ,
    0x0000000000000000000000000000000000004500780070007200330000000000 ,
    0x0000ac5020e0f544ea47bcfe7a51cdf518e40700000000000000000000000000 ,
    0x00000000000045007800700072003400000000000000b478578a53e8c442ad56 ,
    0xbc7d4f6276870700000000000000000000000000000000000000450078007000 ,
    0x720035000000000000003b4b3b1837d84a41af4b8b10decc6b7d070000000000 ,
    0x000000000000000000000000000045007800700072003600000000000000118b ,
    0xe950d66974438268ddc04c06af1a070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb449004400000000000000873fed1bdd4daf46b59105d9e5c28c3107000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb4500072006f006a006500630074004800 ,
    0x6500610064006500720049004400000000000000b04f8d260a13f3428c8e9ff1 ,
    0xb197c202070000000e7a128852f41a47b128e4f3b41e4fb44500780070006500 ,
    0x630074006500640051007400790000000000000043a9080a40b39b4398f2497f ,
    0xf8672674070000000e7a128852f41a47b128e4f3b41e4fb4460069006e006100 ,
    0x6c005100740079000000000000003c3a0e9cef0ad74dbd1042d7c3a3d51d0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb443006f006d0070006f006e006500 ,
    0x6e0074004e0061006d0065000000000000002c0cb3926442ce40bbd03c5a057a ,
    0xfc43070000000e7a128852f41a47b128e4f3b41e4fb443006f006d0070006f00 ,
    0x6e0065006e00740054007900700065000000000000006acbb3b826c2784591a3 ,
    0x527463d0a9c8070000000e7a128852f41a47b128e4f3b41e4fb4500072006500 ,
    0x720065007100750069007300690074006500000000000000bb526c362e376643 ,
    0x9077c29ed7f6e54a070000000e7a128852f41a47b128e4f3b41e4fb453006800 ,
    0x690070004400610074006500000000000000e8666705bfc7214597e800ebbb65 ,
    0xfa07070000000e7a128852f41a47b128e4f3b41e4fb446007200690065006e00 ,
    0x64006c0079004400650073006300720069007000740069006f006e0000000000 ,
    0x00002440b51063f0a347b5f46d313b83079c070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4560065006e0064006f00720049004400000000000000389c04c6 ,
    0x48cc8b4cbde86e73bb06cfc6070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x560065006e0064006f0072004e0061006d006500490044000000000000001173 ,
    0x46749bcb1845b7240084af35385d070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4560065006e0064006f0072005000610063006b0069006e0067004c006900 ,
    0x730074004e0075006d00620065007200000000000000a52d60eea46b42498bb7 ,
    0xb1ace6870e64070000000e7a128852f41a47b128e4f3b41e4fb4520065006300 ,
    0x650069007600650064004200790000000000000043baa47ce5485d4894130f46 ,
    0xc2cf084c070000000e7a128852f41a47b128e4f3b41e4fb44e006f0074006500 ,
    0x73000000000000000ec7380e261b054eafff47cb435e98ab070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb443006f006d0070006c006500740069006f006e00 ,
    0x4400610074006500000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xae5a046dfe4e1a42a0259843d753ea5e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Prerequisite"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe80ee14c98f7c4488967f0b472486539
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xafbeaeb5651bdb45acd811d437caa919
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfed06e11ae6d8d4fb8d417b19c6ead8f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0e6320e8c287874d9aad6d1a795ea6be
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FinalQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x85c3c42b9c035a44b6abeddb0eba8520
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x704320601840354b8d3d95b046ecc75c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39e56d581286094f8bab54a1dc41c6d2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x194df3c29613b745871231840ae1fbfb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DaysRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e85fe78a81c3147a3b7f066a6bc4028
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShipDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e1806c1fdca5941b4a32ea0f76bee16
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FriendlyDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x99138e0ec76e14458e65b6b3ba75fc8b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExternalQuoteNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x22bc2148a1ba0c4887fb7dde6e8c6e17
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExternalQuoteAmount"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa46ad8d17164ca4195fb26d0272c685c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExternalQuoteQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc69a33bf3cc9df4d85cab69df5f74dcb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x577d09e4eaa53742be1de5af7146c489
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7453578bf819694ea6f86768c5293c78
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorPackingListNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f69fddfd6526e4fb94227175b726037
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ReceivedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf58ad52053b4eb49a9b0af299b5a37bf
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb8f5ab8ba378e54cb7b03059edc34725
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtDataReceivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x31ff42658bb2ff46a984e0a37d4224e8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofOKDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaf6d11bd73513b4eaab3c038e8bf02c8
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2700140aaffc6a488cf9d9368d31cc46
        End
    End
    Begin
        dbText "Name" ="Expr2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6a68272ac6a564ebe93111bfe3718fe
        End
    End
    Begin
        dbText "Name" ="Expr3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x93d90ba764f50649aa907d3c3c8c4717
        End
    End
    Begin
        dbText "Name" ="Expr4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac5020e0f544ea47bcfe7a51cdf518e4
        End
    End
    Begin
        dbText "Name" ="Expr5"
        dbBinary "GUID" = Begin
            0xb478578a53e8c442ad56bc7d4f627687
        End
    End
    Begin
        dbText "Name" ="Expr6"
        dbBinary "GUID" = Begin
            0x3b4b3b1837d84a41af4b8b10decc6b7d
        End
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
    Bottom =377
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
