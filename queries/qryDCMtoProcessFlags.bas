Operation =1
Option =0
Begin InputTables
    Name ="tblDynamicCostModelling"
    Name ="dbo_DCMtoProcessFlag"
End
Begin OutputColumns
    Expression ="tblDynamicCostModelling.ID"
    Expression ="tblDynamicCostModelling.ProcessName"
    Expression ="dbo_DCMtoProcessFlag.DCM_ID"
    Expression ="dbo_DCMtoProcessFlag.Category"
    Expression ="dbo_DCMtoProcessFlag.IgnoreThisService"
    Expression ="dbo_DCMtoProcessFlag.SubDatabase"
    Expression ="dbo_DCMtoProcessFlag.SubFieldName1"
    Expression ="dbo_DCMtoProcessFlag.SubFieldData1"
    Expression ="dbo_DCMtoProcessFlag.SubFieldName2"
    Expression ="dbo_DCMtoProcessFlag.SubFieldData2"
    Expression ="dbo_DCMtoProcessFlag.SubFieldName3"
    Expression ="dbo_DCMtoProcessFlag.SubFieldData3"
End
Begin Joins
    LeftTable ="tblDynamicCostModelling"
    RightTable ="dbo_DCMtoProcessFlag"
    Expression ="tblDynamicCostModelling.ID = dbo_DCMtoProcessFlag.DCM_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xc6c5e0139e4685408922e4f53ea057ea
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000094093f5fa487048bde81a6a1e6f21590000000026ef1d8a ,
    0x37c1e4400000000000000000740062006c00440079006e0061006d0069006300 ,
    0x43006f00730074004d006f00640065006c006c0069006e006700000000000000 ,
    0x38b2e8b895441c4fb01a33ac7620751c000000003b86295636c1e44000000000 ,
    0x00000000640062006f005f00440043004d0074006f00500072006f0063006500 ,
    0x7300730046006c0061006700000000000000ba2f3e863950644399de4e57acfc ,
    0xbe5907000000094093f5fa487048bde81a6a1e6f215949004400000000000000 ,
    0x3dc2c7db2492144685612f4edac2d19807000000094093f5fa487048bde81a6a ,
    0x1e6f2159500072006f0063006500730073004e0061006d006500000000000000 ,
    0xf75faf67e4064148a4796468381c30df0700000038b2e8b895441c4fb01a33ac ,
    0x7620751c440043004d005f0049004400000000000000645838542b574b42b62d ,
    0xc86d6fd75fe60700000038b2e8b895441c4fb01a33ac7620751c430061007400 ,
    0x650067006f0072007900000000000000c5f5ac40a1a9804baeab100672b7e962 ,
    0x0700000038b2e8b895441c4fb01a33ac7620751c490067006e006f0072006500 ,
    0x540068006900730053006500720076006900630065000000000000005dd80023 ,
    0x43e9294ea6b734383c2482690700000038b2e8b895441c4fb01a33ac7620751c ,
    0x53007500620044006100740061006200610073006500000000000000a39ee9a8 ,
    0x1d94794795651c3c2a4e23000700000038b2e8b895441c4fb01a33ac7620751c ,
    0x5300750062004600690065006c0064004e0061006d0065003100000000000000 ,
    0xc34bede04f17fb46b56fdf5c51579bce0700000038b2e8b895441c4fb01a33ac ,
    0x7620751c5300750062004600690065006c006400440061007400610031000000 ,
    0x000000003dab4a597518e247a1dc0375e41747a70700000038b2e8b895441c4f ,
    0xb01a33ac7620751c5300750062004600690065006c0064004e0061006d006500 ,
    0x32000000000000006af47b09e137d74b803ffef95b2a12d10700000038b2e8b8 ,
    0x95441c4fb01a33ac7620751c5300750062004600690065006c00640044006100 ,
    0x740061003200000000000000e1518903e9ee8243b4b0e2390636668507000000 ,
    0x38b2e8b895441c4fb01a33ac7620751c5300750062004600690065006c006400 ,
    0x4e0061006d00650033000000000000004b5d8af6375db542ad0ce9e584359991 ,
    0x0700000038b2e8b895441c4fb01a33ac7620751c530075006200460069006500 ,
    0x6c00640044006100740061003300000000000000c6c5e0139e4685408922e4f5 ,
    0x3ea057ea00000000b302911a38c1e44000000000000000007100720079004400 ,
    0x43004d0074006f00500072006f00630065007300730046006c00610067007300 ,
    0x00000000000001cf09001e15e440bff9d242602b2c8807000000c6c5e0139e46 ,
    0x85408922e4f53ea057ea53007500620044006100740061006200610073006500 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryDCMtoProcessFlags].[SubDatabase] DESC"
Begin
    Begin
        dbText "Name" ="tblDynamicCostModelling.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf329a0e37a218d479517b0da96f7ac24
        End
    End
    Begin
        dbText "Name" ="tblDynamicCostModelling.ProcessName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x833ea37530949e409808a6789cef319f
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubFieldData3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4678d8ded5374c47863a37a9ff9a5d42
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.DCM_ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b11f09ec4b7e5439e284c8b3c53ab9d
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.Category"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc038982f1ee83f448d23f36ebb93f6ac
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.IgnoreThisService"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa7a19622a483894b9772e82c7778fb40
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubDatabase"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x01cf09001e15e440bff9d242602b2c88
        End
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubFieldName1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x20bbc8b73da2b643897fb8393c549131
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubFieldData1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8fdc65561d72904bb3dd5fb3fe55c1c2
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubFieldName2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x92f3cd26583a5d4a98777137d7a6a8a9
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubFieldData2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd13d85ec42926e459f09d9cadce114f6
        End
    End
    Begin
        dbText "Name" ="dbo_DCMtoProcessFlag.SubFieldName3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6087618b44776a4eaabdf6c801e0b98d
        End
    End
End
Begin
    State =0
    Left =5
    Top =44
    Right =1535
    Bottom =767
    Left =-1
    Top =-1
    Right =1498
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =201
        Bottom =436
        Top =0
        Name ="tblDynamicCostModelling"
        Name =""
    End
    Begin
        Left =328
        Top =4
        Right =799
        Bottom =375
        Top =0
        Name ="dbo_DCMtoProcessFlag"
        Name =""
    End
End
