Operation =1
Option =0
Where ="(((dbo_ProjectComponentPress.PrintingMethod) Is Not Null) AND ((dbo_ProjectHeade"
    "r.InvoiceNum) Is Not Null) AND ((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.PrintingMethod"
    Expression ="dbo_ProjectComponentPress.TotalGrossSheets"
    Expression ="dbo_ProjectComponentPress.TotalNetSheets"
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    Expression ="dbo_ProjectComponentPress.PaperYInch"
    Expression ="dbo_ProjectComponentPress.SizeXInch"
    Expression ="dbo_ProjectComponentPress.SizeYInch"
    Expression ="dbo_ProjectComponentPress.CYMKFront"
    Expression ="dbo_ProjectComponentPress.CYMKBack"
    Expression ="dbo_ProjectComponentPress.PMSFront"
    Expression ="dbo_ProjectComponentPress.PMSBack"
    Expression ="dbo_ProjectComponentPress.Press"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectHeader.InvoiceDate"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =1
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4f64d9a2171b7c4a94e0057d0fb36d2b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa37704000000006b20350e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050ecfe0e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x610064006500720000000000000076a8cdc098fa8249bd081dc6e8bd70bb0700 ,
    0x00001ff48b4b7bbd39459517fa849aa377045000720069006e00740069006e00 ,
    0x67004d006500740068006f006400000000000000c38f93dadb9e5448b9f12dc5 ,
    0x64ea53c1070000001ff48b4b7bbd39459517fa849aa3770454006f0074006100 ,
    0x6c00470072006f00730073005300680065006500740073000000000000004226 ,
    0xb818d57dd7448e5d8497a2542e24070000001ff48b4b7bbd39459517fa849aa3 ,
    0x770454006f00740061006c004e00650074005300680065006500740073000000 ,
    0x00000000efc82cdffc1d7d489f71a723a4edac40070000001ff48b4b7bbd3945 ,
    0x9517fa849aa3770450006100700065007200580049006e006300680000000000 ,
    0x0000edf6b482cbcb5f4eaa66dd0d64f56b1d070000001ff48b4b7bbd39459517 ,
    0xfa849aa3770450006100700065007200590049006e0063006800000000000000 ,
    0xe189018d978ad649ace4fdc81766f168070000001ff48b4b7bbd39459517fa84 ,
    0x9aa37704530069007a006500580049006e00630068000000000000003771bdad ,
    0xb1ab134a98013e3fb5c693b1070000001ff48b4b7bbd39459517fa849aa37704 ,
    0x530069007a006500590049006e006300680000000000000050fcd19dbbd51644 ,
    0xb3cec975eb00fea9070000001ff48b4b7bbd39459517fa849aa3770443005900 ,
    0x4d004b00460072006f006e007400000000000000edcf2e9b27c11f47a0862f81 ,
    0x2ead71d2070000001ff48b4b7bbd39459517fa849aa37704430059004d004b00 ,
    0x4200610063006b00000000000000f17b592ccb7d7c40b3a8855002404cfd0700 ,
    0x00001ff48b4b7bbd39459517fa849aa3770450004d005300460072006f006e00 ,
    0x7400000000000000da9ea2b58b32cd4386f0bd34feab6c56070000001ff48b4b ,
    0x7bbd39459517fa849aa3770450004d0053004200610063006b00000000000000 ,
    0x6ea354afae85c6419effcf1967fdb2b4070000001ff48b4b7bbd39459517fa84 ,
    0x9aa3770450007200650073007300000000000000a21dc4fed47c244fa08fb520 ,
    0x9ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d007000 ,
    0x6f006e0065006e0074004e0061006d0065000000000000007857d2ada5ee1a42 ,
    0xae4659405dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7000650063007400650064005100740079000000000000007da6a641b3cf604b ,
    0x95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e00 ,
    0x76006f006900630065004e0075006d00000000000000e04379333b12ce4eb39e ,
    0xba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a8056006f006900 ,
    0x640000000000000077a5524b02faf248a18587169cb2874b0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8049006e0076006f00690063006500440061007400 ,
    0x6500000000000000e19fd78d6de8f042912e16a0f4718a30070000001ff48b4b ,
    0x7bbd39459517fa849aa37704500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e0074004900440000000000000029556c4fcc6de9418049 ,
    0xe37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be490044000000 ,
    0x000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006f006a0065006300740048006500610064006500 ,
    0x72004900440000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8049004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintingMethod"
        dbInteger "ColumnWidth" ="3600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x13e85b8c585b594bbf4c47a8f51e766f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalGrossSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7fc7242e4712894da61544a966671715
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalNetSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc8e6d6ac32bfbe4890688cb3e59858af
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeXInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x61f37298e54a5a418c3b9ac9bb1e68cd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperXInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x689d30e2d85fc34f81fcef016c601fbb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperYInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7e53969d434aff4a91d7ac2e9b991d65
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeYInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe214cd6a4e87474a9583ca0a950d1963
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKFront"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x59111168f702cc4694bd16c963f93a9e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKBack"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb84ca6a8a53bd478dc5b399a7265164
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSFront"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb0d3bf26938f8e4a81f9ec9fcfa5df93
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSBack"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x912ba355d1fa1146831275acc01747a8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ee92bf6ca69ce4797c4e62f65615ff3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbInteger "ColumnWidth" ="5310"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x340ac73e839f5e468a037eed2b3e2d01
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x05e3d9e74e5de44e88d6f00a672dbe1e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09f7eb9c7a224e4182191b95e0c21de4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x74604ecef71bdf48ba5376d2709de058
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x83deef1f29e8494f8aaafee012a06883
        End
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1608
    Bottom =876
    Left =-1
    Top =-1
    Right =1576
    Bottom =402
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =66
        Top =45
        Right =332
        Bottom =537
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =396
        Top =35
        Right =620
        Bottom =487
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =710
        Top =31
        Right =1030
        Bottom =501
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
