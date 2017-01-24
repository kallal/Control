Operation =1
Option =0
Begin InputTables
    Name ="pdqProcess"
    Name ="pdqSection"
End
Begin OutputColumns
    Expression ="pdqProcess.QuoteID"
    Expression ="pdqProcess.SectionName"
    Expression ="pdqProcess.FunctionID"
    Expression ="pdqProcess.Name"
    Expression ="pdqProcess.Cost"
    Expression ="pdqProcess.CarbonKg"
    Expression ="pdqProcess.ChargeBasis"
    Expression ="pdqProcess.ChargeBasisPerHour"
    Expression ="pdqProcess.ChargeType"
    Expression ="pdqProcess.ConversionType"
    Expression ="pdqProcess.CustomItem"
    Expression ="pdqProcess.DirectCosts"
    Expression ="pdqProcess.IndirectCosts"
    Expression ="pdqProcess.Time"
    Expression ="pdqProcess.TimeInMins"
    Expression ="pdqProcess.TimeinHrs"
    Expression ="pdqProcess.TotalMaterialCosts"
End
Begin Joins
    LeftTable ="pdqSection"
    RightTable ="pdqProcess"
    Expression ="pdqSection.Name = pdqProcess.SectionName"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xba8ebce50b0e784eaf8a77d861d51591
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008412ce9908328045a1b65a4992498b7a00000000cf3a1f55 ,
    0xf276e4400000000000000000700064007100500072006f006300650073007300 ,
    0x0000000000006654ff39c88c7f499dbdbc07cc6350b100000000af99556dec62 ,
    0xe4400000000000000000700064007100530065006300740069006f006e000000 ,
    0x00000000334245f7cc59d045b39b982fe10c2bf1070000008412ce9908328045 ,
    0xa1b65a4992498b7a510075006f007400650049004400000000000000e88a619e ,
    0x82ff5c4a86adf06821bfbad2070000008412ce9908328045a1b65a4992498b7a ,
    0x530065006300740069006f006e004e0061006d006500000000000000c758efa6 ,
    0x5ba88b4ea16c4b6baf238f82070000008412ce9908328045a1b65a4992498b7a ,
    0x460075006e006300740069006f006e0049004400000000000000f7127cdff6ee ,
    0x86419f6b551a41196938070000008412ce9908328045a1b65a4992498b7a4e00 ,
    0x61006d006500000000000000ca6cfe5a32527e45a2a1fd8671e871d407000000 ,
    0x8412ce9908328045a1b65a4992498b7a43006f007300740000000000000059a0 ,
    0x6fd04d26f446b84e0147d9756d4f070000008412ce9908328045a1b65a499249 ,
    0x8b7a43006100720062006f006e004b006700000000000000ab34696892859a47 ,
    0xa7ea89690d9aee99070000008412ce9908328045a1b65a4992498b7a43006800 ,
    0x610072006700650042006100730069007300000000000000768efba512a96146 ,
    0xaee5b1bebdde9b40070000008412ce9908328045a1b65a4992498b7a43006800 ,
    0x61007200670065004200610073006900730050006500720048006f0075007200 ,
    0x000000000000e06b684fed669a45b6e2a428d8f97a9f070000008412ce990832 ,
    0x8045a1b65a4992498b7a43006800610072006700650054007900700065000000 ,
    0x000000008f410a858ec24c4d91486987d2bd714b070000008412ce9908328045 ,
    0xa1b65a4992498b7a43006f006e00760065007200730069006f006e0054007900 ,
    0x700065000000000000003bd333fb6c728040bfa38e29764e3238070000008412 ,
    0xce9908328045a1b65a4992498b7a43007500730074006f006d00490074006500 ,
    0x6d00000000000000168aec8b787e764ea432181563cbfe49070000008412ce99 ,
    0x08328045a1b65a4992498b7a44006900720065006300740043006f0073007400 ,
    0x7300000000000000894c09687729064a9e59ba8950941f27070000008412ce99 ,
    0x08328045a1b65a4992498b7a49006e0064006900720065006300740043006f00 ,
    0x7300740073000000000000009732af781fb43744a735af64d80e923307000000 ,
    0x8412ce9908328045a1b65a4992498b7a540069006d006500000000000000d4ff ,
    0x103c4195764c97b4e948d6aaac02070000008412ce9908328045a1b65a499249 ,
    0x8b7a540069006d00650049006e004d0069006e007300000000000000dd6105e0 ,
    0x31958442b50a850e3beca27c070000008412ce9908328045a1b65a4992498b7a ,
    0x540069006d00650069006e004800720073000000000000002c086c4504b32648 ,
    0x863a831ee8f21b77070000008412ce9908328045a1b65a4992498b7a54006f00 ,
    0x740061006c004d006100740065007200690061006c0043006f00730074007300 ,
    0x00000000000052644fe0f0785e498fa34a25aa3319c2070000006654ff39c88c ,
    0x7f499dbdbc07cc6350b14e0061006d0065000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="pdqProcess.TotalMaterialCosts"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a241056d96b804b8ca5234a91ae6ff9
        End
    End
    Begin
        dbText "Name" ="pdqProcess.QuoteID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68772bd4b7dc72469714c910cd16fece
        End
    End
    Begin
        dbText "Name" ="pdqProcess.SectionName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21dc1aa26d467746bfca2d3a0fe0a78e
        End
    End
    Begin
        dbText "Name" ="pdqProcess.FunctionID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0140ea0c434d2643ac644bf6d3d5acac
        End
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqProcess.Name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21d6665be5af5f4da2c294360526a0f8
        End
    End
    Begin
        dbText "Name" ="pdqProcess.Cost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0fe39b099bd1954a873be4e8ecae5d44
        End
    End
    Begin
        dbText "Name" ="pdqProcess.CarbonKg"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b742a0fd79e5d4c8487cc07319b3363
        End
    End
    Begin
        dbText "Name" ="pdqProcess.ChargeBasis"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6f1723335e67ed4fa642942f9ac06473
        End
    End
    Begin
        dbText "Name" ="pdqProcess.ChargeBasisPerHour"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2281475bbc47814abb602904f9f79bf3
        End
    End
    Begin
        dbText "Name" ="pdqProcess.ChargeType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e028883f82aa548a976d76f28564b01
        End
    End
    Begin
        dbText "Name" ="pdqProcess.ConversionType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57b62d5f432e2c4c89592ae70cc9555e
        End
    End
    Begin
        dbText "Name" ="pdqProcess.CustomItem"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x04e582b8cf72cc4fa2681f87e0c61932
        End
    End
    Begin
        dbText "Name" ="pdqProcess.DirectCosts"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c2c60f46f118f4d9ddd4090c927f6cd
        End
    End
    Begin
        dbText "Name" ="pdqProcess.IndirectCosts"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcd8ace33ece0b043b9b63ef5b9b747ef
        End
    End
    Begin
        dbText "Name" ="pdqProcess.Time"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4b048c7db2045a4fbf2d94ded3079288
        End
    End
    Begin
        dbText "Name" ="pdqProcess.TimeInMins"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4570aa9de5624e4989f46ef9b8fdda7f
        End
    End
    Begin
        dbText "Name" ="pdqProcess.TimeinHrs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x104378820a21564a8ba8e15358389a55
        End
    End
End
Begin
    State =0
    Left =26
    Top =4
    Right =1477
    Bottom =852
    Left =-1
    Top =-1
    Right =1419
    Bottom =412
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =210
        Top =51
        Right =354
        Bottom =195
        Top =0
        Name ="pdqProcess"
        Name =""
    End
    Begin
        Left =704
        Top =99
        Right =848
        Bottom =243
        Top =0
        Name ="pdqSection"
        Name =""
    End
End
