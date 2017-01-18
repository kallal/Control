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
    Expression ="dbo_ProjectComponentHeader.ShipDate"
    Expression ="dbo_ProjectComponentHeader.FriendlyDescription"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteNum"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty1"
    Expression ="dbo_ProjectComponentHeader.VendorID"
    Expression ="dbo_ProjectComponentHeader.VendorNameID"
    Expression ="dbo_ProjectComponentHeader.VendorPackingListNumber"
    Expression ="dbo_ProjectComponentHeader.ReceivedBy"
    Expression ="dbo_ProjectComponentHeader.Notes"
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
dbBinary "GUID" = Begin
    0x7a4849b279cd2949b1a507aeec44ca36
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000118be950d66974438268ddc04c06af1a070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb449004400000000000000873fed1bdd4daf46b59105d9 ,
    0xe5c28c31070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006a00 ,
    0x65006300740048006500610064006500720049004400000000000000b04f8d26 ,
    0x0a13f3428c8e9ff1b197c202070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x4500780070006500630074006500640051007400790000000000000043a9080a ,
    0x40b39b4398f2497ff8672674070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x460069006e0061006c005100740079000000000000003c3a0e9cef0ad74dbd10 ,
    0x42d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb443006f006d00 ,
    0x70006f006e0065006e0074004e0061006d0065000000000000002c0cb3926442 ,
    0xce40bbd03c5a057afc43070000000e7a128852f41a47b128e4f3b41e4fb44300 ,
    0x6f006d0070006f006e0065006e00740054007900700065000000000000006acb ,
    0xb3b826c2784591a3527463d0a9c8070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4500072006500720065007100750069007300690074006500000000000000 ,
    0xbb526c362e3766439077c29ed7f6e54a070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb453006800690070004400610074006500000000000000e8666705bfc7 ,
    0x214597e800ebbb65fa07070000000e7a128852f41a47b128e4f3b41e4fb44600 ,
    0x7200690065006e0064006c007900440065007300630072006900700074006900 ,
    0x6f006e00000000000000e390174379724b4c8c16d8f17f03dc67070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4450078007400510075006f00740065004e00 ,
    0x75006d000000000000006697c5f92befb746a7f608739b193afb070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4450078007400510075006f00740065004100 ,
    0x6d007400310000000000000014208e479d4b594a81de954645afe56f07000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb4450078007400510075006f0074006500 ,
    0x51007400790031000000000000002440b51063f0a347b5f46d313b83079c0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4560065006e0064006f0072004900 ,
    0x4400000000000000389c04c648cc8b4cbde86e73bb06cfc6070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4560065006e0064006f0072004e0061006d006500 ,
    0x49004400000000000000117346749bcb1845b7240084af35385d070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4560065006e0064006f007200500061006300 ,
    0x6b0069006e0067004c006900730074004e0075006d0062006500720000000000 ,
    0x0000a52d60eea46b42498bb7b1ace6870e64070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb45200650063006500690076006500640042007900000000000000 ,
    0x43baa47ce5485d4894130f46c2cf084c070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb44e006f007400650073000000000000000ec7380e261b054eafff47cb ,
    0x435e98ab070000000e7a128852f41a47b128e4f3b41e4fb443006f006d007000 ,
    0x6c006500740069006f006e004400610074006500000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
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
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =90
    Top =76
    Right =1607
    Bottom =804
    Left =-1
    Top =-1
    Right =1485
    Bottom =309
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =813
        Bottom =303
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
