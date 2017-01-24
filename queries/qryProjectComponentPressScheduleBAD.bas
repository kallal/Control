Operation =1
Option =0
Where ="(((DLookUp(\"[DocketNum]\",\"dbo_ProjectHeader\",\"[ID] = \" & DLookUp(\"[Projec"
    "tHeaderID]\",\"dbo_ProjectComponentHeader\",\"[ID] = \" & [projectComponentID]))"
    ")>0) AND ((DLookUp(\"[VOID]\",\"dbo_ProjectHeader\",\"[ID] = \" & DLookUp(\"[Pro"
    "jectHeaderID]\",\"dbo_ProjectComponentHeader\",\"[ID] = \" & [projectComponentID"
    "])))=0))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.ID"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Alias ="ComponentName"
    Expression ="DLookUp(\"[componentname]\",\"dbo_ProjectComponentHeader\",\"[ID] = \" & [Projec"
        "tComponentID])"
    Alias ="ProjectName"
    Expression ="DLookUp(\"[ProjectName]\",\"dbo_ProjectHeader\",\"[ID] = \" & DLookUp(\"[Project"
        "HeaderID]\",\"dbo_ProjectComponentHeader\",\"[ID] = \" & [projectComponentID]))"
    Alias ="CompName"
    Expression ="DLookUp(\"[compname]\",\"dbo_ContactGeneral\",\"[ID] = \" & DLookUp(\"[ContactGe"
        "neralID]\",\"dbo_ProjectHeader\",\"[ID] = \" & DLookUp(\"[ProjectHeaderID]\",\"d"
        "bo_ProjectComponentHeader\",\"[ID] = \" & [projectComponentID])))"
    Alias ="DocketNum"
    Expression ="DLookUp(\"[DocketNum]\",\"dbo_ProjectHeader\",\"[ID] = \" & DLookUp(\"[ProjectHe"
        "aderID]\",\"dbo_ProjectComponentHeader\",\"[ID] = \" & [projectComponentID]))"
    Alias ="VOID"
    Expression ="DLookUp(\"[VOID]\",\"dbo_ProjectHeader\",\"[ID] = \" & DLookUp(\"[ProjectHeaderI"
        "D]\",\"dbo_ProjectComponentHeader\",\"[ID] = \" & [projectComponentID]))"
    Alias ="Expr1"
    Expression ="dbo_ProjectComponentPress.Qty"
    Alias ="Expr2"
    Expression ="dbo_ProjectComponentPress.Description"
    Expression ="dbo_ProjectComponentPress.Press"
    Alias ="Expr3"
    Expression ="dbo_ProjectComponentPress.Colour"
    Expression ="dbo_ProjectComponentPress.MatchSample"
    Expression ="dbo_ProjectComponentPress.PressCheck"
    Expression ="dbo_ProjectComponentPress.Varnish"
    Alias ="Expr4"
    Expression ="dbo_ProjectComponentPress.NumberUp"
    Alias ="Expr5"
    Expression ="dbo_ProjectComponentPress.RunSheetExp"
    Alias ="Expr6"
    Expression ="dbo_ProjectComponentPress.RunSheetExpPressOvers"
    Alias ="Expr7"
    Expression ="dbo_ProjectComponentPress.RunSheetExpBinderyOvers"
    Alias ="Expr8"
    Expression ="dbo_ProjectComponentPress.RunSheetActual"
    Expression ="dbo_ProjectComponentPress.PressDateExp"
    Expression ="dbo_ProjectComponentPress.NumberingStart"
    Expression ="dbo_ProjectComponentPress.NumberingEnd"
    Expression ="dbo_ProjectComponentPress.Diecut"
    Expression ="dbo_ProjectComponentPress.DieNumber"
    Expression ="dbo_ProjectComponentPress.LithoPerf"
    Expression ="dbo_ProjectComponentPress.LithoScore"
    Expression ="dbo_ProjectComponentPress.Matrix"
    Expression ="dbo_ProjectComponentPress.Bleeds"
    Alias ="Expr9"
    Expression ="dbo_ProjectComponentPress.IsCMYK"
    Expression ="dbo_ProjectComponentPress.IsBlackOnly"
    Alias ="Expr10"
    Expression ="dbo_ProjectComponentPress.PMSCount"
    Expression ="dbo_ProjectComponentPress.PMSColours"
    Alias ="Expr11"
    Expression ="dbo_ProjectComponentPress.HoursEst"
    Alias ="Expr12"
    Expression ="dbo_ProjectComponentPress.HoursAct"
    Alias ="Expr13"
    Expression ="dbo_ProjectComponentPress.DaysEst"
    Alias ="Expr14"
    Expression ="dbo_ProjectComponentPress.DaysAct"
    Alias ="Expr15"
    Expression ="dbo_ProjectComponentPress.FinalSize"
    Alias ="Expr16"
    Expression ="dbo_ProjectComponentPress.IsEnabled"
    Alias ="Expr17"
    Expression ="dbo_ProjectComponentPress.IsComplete"
    Alias ="Expr18"
    Expression ="dbo_ProjectComponentPress.PrintOnStock"
    Expression ="dbo_ProjectComponentPress.Priority"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
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
    0x105864556de3e741ae56d34479038c29
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000aa4d4a3d82683542a64491e1b0dcc8ce00000000b941156e ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6dec62e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000094e6a2e0a7ccd44e9267cf0383c9528d0700000000000000000000000000 ,
    0x00000000000043006f006d0070006f006e0065006e0074004e0061006d006500 ,
    0x0000000000000001050358bc2e0044bc2e007450050307000000000000000000 ,
    0x00000000000000000000500072006f006a006500630074004e0061006d006500 ,
    0x0000000000007832a09d7f42ef4cab50a327d0ecc1bb07000000000000000000 ,
    0x0000000000000000000043006f006d0070004e0061006d006500000000000000 ,
    0xe325e88bd3df5f41b50877f32304a28c07000000000000000000000000000000 ,
    0x0000000044006f0063006b00650074004e0075006d00000000000000e13bed98 ,
    0x93760a489ac81bf3130984290700000000000000000000000000000000000000 ,
    0x56004f0049004400000000000000ccd575e6193f514692dc3f9769e8bb990700 ,
    0x0000000000000000000000000000000000004500780070007200310000000000 ,
    0x000037d38b2ee8d6c34aa649640938cb7ca60700000000000000000000000000 ,
    0x000000000000450078007000720032000000000000002f348dfecbe6a74b9db6 ,
    0xc1008cde52200700000000000000000000000000000000000000450078007000 ,
    0x7200330000000000000045a5255a0b501848ba63f6b0f2a9ce6e070000000000 ,
    0x0000000000000000000000000000450078007000720034000000000000003e66 ,
    0x59c4a46d1242a619417ebba2be96070000000000000000000000000000000000 ,
    0x00004500780070007200350000000000000028eb542a3be24c4292e3d0a5555a ,
    0xaebf070000000000000000000000000000000000000045007800700072003600 ,
    0x000000000000adc171363a53d346bbdf816d5dc42db507000000000000000000 ,
    0x0000000000000000000045007800700072003700000000000000ef4ca46b493a ,
    0xd64cb10b18a7b5a7475507000000000000000000000000000000000000004500 ,
    0x7800700072003800000000000000baec95b52d12524ea7523cff6d5d1cea0700 ,
    0x0000000000000000000000000000000000004500780070007200390000000000 ,
    0x00006cfa3909995795479706ec185bf40f850700000000000000000000000000 ,
    0x000000000000450078007000720031003000000000000000b638b2e84179ae45 ,
    0xaceff8b6f1401639070000000000000000000000000000000000000045007800 ,
    0x7000720031003100000000000000a8aa52bd17d3a244a6cac0844168181e0700 ,
    0x0000000000000000000000000000000000004500780070007200310032000000 ,
    0x000000003070959d02319c43804c6b6366fe8bf4070000000000000000000000 ,
    0x0000000000000000450078007000720031003300000000000000bd28412a9a94 ,
    0x184cb4985ebc58e3d39f07000000000000000000000000000000000000004500 ,
    0x78007000720031003400000000000000336898a3b640f94ba83ab72d086e15a1 ,
    0x0700000000000000000000000000000000000000450078007000720031003500 ,
    0x0000000000005319469faf181e4fabadfd252b390fad07000000000000000000 ,
    0x0000000000000000000045007800700072003100360000000000000077712a7b ,
    0xa5030d46a4f1a67e1d7b83100700000000000000000000000000000000000000 ,
    0x450078007000720031003700000000000000f4f2305906ebaf4a871d887507c9 ,
    0xa260070000000000000000000000000000000000000045007800700072003100 ,
    0x3800000000000000b14c94a8a3d9394db1aaf6ace8a38c8707000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce4900440000000000000071e323a4bb368e4da313 ,
    0x2c08218e7d3607000000aa4d4a3d82683542a64491e1b0dcc8ce500072006f00 ,
    0x6a0065006300740043006f006d0070006f006e0065006e007400490044000000 ,
    0x00000000e9d0677522e2ad44aabb87878d9f2baa07000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce50007200650073007300000000000000506a48b1f2ef2148 ,
    0xa7b8fb777d4c355907000000aa4d4a3d82683542a64491e1b0dcc8ce4d006100 ,
    0x740063006800530061006d0070006c006500000000000000124f8c598730d74a ,
    0x9d55876459da0cc207000000aa4d4a3d82683542a64491e1b0dcc8ce50007200 ,
    0x65007300730043006800650063006b00000000000000a635a2388b3e4e468979 ,
    0x28144b7ccaac07000000aa4d4a3d82683542a64491e1b0dcc8ce560061007200 ,
    0x6e006900730068000000000000009da362c35908de4aa8aa56d2ce6e82290700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce4e0075006d006200650072005500 ,
    0x7000000000000000ea02e61de3aa224abf473b3b69213d7907000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce5000720065007300730044006100740065004500 ,
    0x7800700000000000000001a90ba49f5a0a4696bf3a18284314f107000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce4e0075006d0062006500720069006e006700 ,
    0x53007400610072007400000000000000de1b21757758fa4392a45769bda57bb8 ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce4e0075006d00620065007200 ,
    0x69006e00670045006e0064000000000000009124781409590a4cb09e9c27f536 ,
    0x50e907000000aa4d4a3d82683542a64491e1b0dcc8ce44006900650063007500 ,
    0x740000000000000068790605801c534691531de6a869568007000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce4400690065004e0075006d006200650072000000 ,
    0x00000000929063ee4e372a468167ec2e41b805c107000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce4c006900740068006f005000650072006600000000000000 ,
    0x86c8540ac3ddd54eb93ead07be8a5ce607000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce4c006900740068006f00530063006f0072006500000000000000f4a2 ,
    0x06b05ee2bf4c8dbf77b42530cf5907000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce4d006100740072006900780000000000000076d7329e12bb544a888c8e52 ,
    0xd9f6fd0e07000000aa4d4a3d82683542a64491e1b0dcc8ce42006c0065006500 ,
    0x6400730000000000000076e590be5021d04db4abcef175554d6707000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce4900730042006c00610063006b004f006e00 ,
    0x6c0079000000000000007aa98770ff7b164aa4d3c93cbf64da1f07000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce50004d00530043006f006c006f0075007200 ,
    0x730000000000000015fc52137048344b8cb5b095dce05f4907000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce5000720069006f00720069007400790000000000 ,
    0x0000118be950d66974438268ddc04c06af1a070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb44900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Matrix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5ba3fc14b7f8246a29144674afb7260
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Bleeds"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2907ef99aac74a4a83ee9f6909fc71f8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.IsCMYK"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x173f896f61e76044913e3661b6d02f94
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.IsBlackOnly"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2d9facc8efcea4ba9b7f81957712611
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Qty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0c3c71ad0061204b87b5d9e5f0558c99
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e14bc745ae214780af98649a57c483
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressCheck"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3662f17fb0a60244bf6101f901d8ed3f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingStart"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa873ff7ded62254fa1cb9db5eb6cf14b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoPerf"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc85d0b930d7b04458e9a3ccdea86d27c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoScore"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4822fdefe492c4f895e408c21c517f7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f49ef4c3886b64ebc6e70d595d7e008
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Colour"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x33fcf307ccb6a041bf989bab17df9c4f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MatchSample"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x263e369029a96349b97999de3c079b16
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6e7c69900879a449bf2f739853bf81e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Diecut"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa50ec622fef3e45bb593d2d9d2f9b1e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.DieNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd8a227fd007da64982947be64dd10b61
        End
    End
    Begin
        dbText "Name" ="CompName"
        dbInteger "ColumnWidth" ="5265"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7832a09d7f42ef4cab50a327d0ecc1bb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x746e97c2943d994b9979ae410da3fd6b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.RunSheetExpPressOvers"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5e95e1aacb76d14ab0b8cb8b8cf735ee
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingEnd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb822fe25320c3742a0b18bedd71f13d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.HoursEst"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc9b709fb1bbc834185ed46eb5cd906f8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.HoursAct"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x75a83f36f1d4b949a698f19af27203d2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.DaysEst"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x172a738ba66f114ba8a35b8f4ef40be0
        End
    End
    Begin
        dbText "Name" ="ComponentName"
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94e6a2e0a7ccd44e9267cf0383c9528d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSCount"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1d6cc50e5be08240a6a35630cb681152
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSColours"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a40154f30581b45bc6b389ace779603
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.DaysAct"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbc13a68ebd821d4d9d9521f60648650c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x53a4784282a8294597129472dc346aa1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Varnish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0662fad8a64fd140a7c8286300579585
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberUp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x07b34a0a8b5af242ba2dcfd6742ac1f6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.RunSheetExp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x198384661d8f5440902023ae45f4a125
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.RunSheetExpBinderyOvers"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab8f5fe04f550347bd932b50ffe5f731
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.RunSheetActual"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3b0384d6eb5d394e945f57b15219c28b
        End
    End
    Begin
        dbText "Name" ="ProjectName"
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0001050358bc2e0044bc2e0074500503
        End
    End
    Begin
        dbText "Name" ="DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe325e88bd3df5f41b50877f32304a28c
        End
    End
    Begin
        dbText "Name" ="VOID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe13bed9893760a489ac81bf313098429
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbBinary "GUID" = Begin
            0xccd575e6193f514692dc3f9769e8bb99
        End
    End
    Begin
        dbText "Name" ="Expr2"
        dbBinary "GUID" = Begin
            0x37d38b2ee8d6c34aa649640938cb7ca6
        End
    End
    Begin
        dbText "Name" ="Expr3"
        dbBinary "GUID" = Begin
            0x2f348dfecbe6a74b9db6c1008cde5220
        End
    End
    Begin
        dbText "Name" ="Expr4"
        dbBinary "GUID" = Begin
            0x45a5255a0b501848ba63f6b0f2a9ce6e
        End
    End
    Begin
        dbText "Name" ="Expr5"
        dbBinary "GUID" = Begin
            0x3e6659c4a46d1242a619417ebba2be96
        End
    End
    Begin
        dbText "Name" ="Expr6"
        dbBinary "GUID" = Begin
            0x28eb542a3be24c4292e3d0a5555aaebf
        End
    End
    Begin
        dbText "Name" ="Expr7"
        dbBinary "GUID" = Begin
            0xadc171363a53d346bbdf816d5dc42db5
        End
    End
    Begin
        dbText "Name" ="Expr8"
        dbBinary "GUID" = Begin
            0xef4ca46b493ad64cb10b18a7b5a74755
        End
    End
    Begin
        dbText "Name" ="Expr9"
        dbBinary "GUID" = Begin
            0xbaec95b52d12524ea7523cff6d5d1cea
        End
    End
    Begin
        dbText "Name" ="Expr10"
        dbBinary "GUID" = Begin
            0x6cfa3909995795479706ec185bf40f85
        End
    End
    Begin
        dbText "Name" ="Expr11"
        dbBinary "GUID" = Begin
            0xb638b2e84179ae45aceff8b6f1401639
        End
    End
    Begin
        dbText "Name" ="Expr12"
        dbBinary "GUID" = Begin
            0xa8aa52bd17d3a244a6cac0844168181e
        End
    End
    Begin
        dbText "Name" ="Expr13"
        dbBinary "GUID" = Begin
            0x3070959d02319c43804c6b6366fe8bf4
        End
    End
    Begin
        dbText "Name" ="Expr14"
        dbBinary "GUID" = Begin
            0xbd28412a9a94184cb4985ebc58e3d39f
        End
    End
    Begin
        dbText "Name" ="Expr15"
        dbBinary "GUID" = Begin
            0x336898a3b640f94ba83ab72d086e15a1
        End
    End
    Begin
        dbText "Name" ="Expr16"
        dbBinary "GUID" = Begin
            0x5319469faf181e4fabadfd252b390fad
        End
    End
    Begin
        dbText "Name" ="Expr17"
        dbBinary "GUID" = Begin
            0x77712a7ba5030d46a4f1a67e1d7b8310
        End
    End
    Begin
        dbText "Name" ="Expr18"
        dbBinary "GUID" = Begin
            0xf4f2305906ebaf4a871d887507c9a260
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1598
    Bottom =980
    Left =-1
    Top =-1
    Right =1490
    Bottom =499
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =1019
        Bottom =485
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =1067
        Top =12
        Right =1211
        Bottom =156
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
