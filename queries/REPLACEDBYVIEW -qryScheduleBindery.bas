Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectComponentHeader."
    "StBindery)<>\"NOT REQ'D\") AND ((dbo_ProjectHeader.projectstatusid)<=30) AND ((d"
    "bo_ProjectComponentHeader.CompletionDate) Is Null) AND ((Left([StBindery],4))<>\""
    "COMP\")) OR (((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader"
    ".Void)=False) AND ((dbo_ProjectComponentHeader.StBindery)<>\"NOT REQ'D\") AND (("
    "dbo_ProjectHeader.projectstatusid)<=30) AND ((dbo_ProjectComponentHeader.Complet"
    "ionDate) Is Null) AND ((dbo_ProjectHeader.KeepInProductionYN)=True) AND ((Left(["
    "StBindery],4))<>\"COMP\"))"
Begin InputTables
    Name ="dbo_ProjectComponentBindery"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentBindery.ID"
    Expression ="dbo_ProjectComponentBindery.IsTrim"
    Expression ="dbo_ProjectComponentBindery.PadInYN"
    Expression ="dbo_ProjectComponentBindery.BookYN"
    Expression ="dbo_ProjectComponentBindery.RoundCornerYN"
    Expression ="dbo_ProjectComponentBindery.DieCutYN"
    Expression ="dbo_ProjectComponentBindery.DrillYN"
    Expression ="dbo_ProjectComponentBindery.IsFoil"
    Expression ="dbo_ProjectComponentBindery.IsThermo"
    Expression ="dbo_ProjectComponentBindery.IsEmboss"
    Expression ="dbo_ProjectComponentBindery.IsScore"
    Expression ="dbo_ProjectComponentBindery.FoldYN"
    Expression ="dbo_ProjectComponentBindery.BindYN"
    Expression ="dbo_ProjectComponentBindery.PackageMailPrep"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ShipDate"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.MHBindery"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Expression ="dbo_ProjectComponentHeader.DYBindery"
    Expression ="dbo_ProjectComponentHeader.StBindery"
    Expression ="dbo_ProjectComponentHeader.StPrint"
    Expression ="dbo_ProjectHeader.projectstatusid"
    Expression ="dbo_ProjectComponentBindery.ProjectComponentID"
    Expression ="dbo_ProjectComponentBindery.Priority"
    Expression ="dbo_ProjectHeader.DeliveryCutoffTime"
    Alias ="ProofDisplay"
    Expression ="IIf([HardProofSentDate],Format(IIf([HardProofApprovedDate],[HardProofApprovedDat"
        "e],\"\"),\"Medium Date\"),Format(IIf([ProofApprovedDate],[ProofApprovedDate],\"\""
        "),\"Medium Date\"))"
    Expression ="dbo_ProjectHeader.FirmDueDate"
    Expression ="dbo_ProjectHeader.IsRush"
    Alias ="myPriority"
    Expression ="Nz([dbo_projectComponentBindery].[Priority],99)"
    Expression ="dbo_ProjectComponentHeader.CompletionDate"
    Expression ="dbo_ProjectComponentBindery.BindSaddleYN"
    Expression ="dbo_ProjectComponentBindery.BindPerfectYN"
    Expression ="dbo_ProjectComponentBindery.BindCoilYN"
    Expression ="dbo_ProjectComponentBindery.BindWireOYn"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.DeliveryCutoffTime"
    Expression ="dbo_ProjectHeader.FirmDueDate"
    Alias ="IsSW"
    Expression ="dbo_ProjectComponentBindery.PackageShrinkYN"
    Alias ="isUV"
    Expression ="IIf(Nz([UVOfflineFront],\"\")<>\"\",True,False)"
    Alias ="IsLam"
    Expression ="IIf(Nz([LamFront],\"\")<>\"\" Or Nz([LamEdgeFront],\"\")<>\"\" Or Nz([LamThickFr"
        "ont],\"\")<>\"\",True,False)"
    Alias ="IsOther"
    Expression ="IIf([IsTrim]=False And [PadInYN]=False And [BookYN]=False And [RoundCornerYN]=Fa"
        "lse And [DieCutYN]=False And [DrillYN]=False And [IsFoil]=False And [IsThermo]=F"
        "alse And [IsEmboss]=False And [IsScore]=False And [FoldYN]=False And [BindYN]=Fa"
        "lse And [BindSaddleYN]=False And [BindPerfectYN]=False And [BindCoilYN]=False An"
        "d [BindWireOYN]=False And [IsSW]=False And [IsLam]=False And [IsUV]=False,True,F"
        "alse)"
    Expression ="dbo_ProjectHeader.KeepInProductionYN"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentBindery"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentBindery.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x8f47e523fb886e40947ebd447e056f0c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000de0adfee667dff49b440235772c3fed900000000a9d6ae89 ,
    0x71c6e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400420069006e00640065007200 ,
    0x7900000000000000d2d381ba93398a4283a6a9ed80a7b4be000000009098b389 ,
    0x71c6e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a80000000004335c28971c6 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a10000000098f0998971c6e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x78c63f7b36e17d4c906bad020584d859070000008f47e523fb886e40947ebd44 ,
    0x7e056f0c4400750065004400610074006500000000000000cb05118f254c9f4a ,
    0x9dee26feb4a8cb90070000008f47e523fb886e40947ebd447e056f0c50007200 ,
    0x6f006f00660044006900730070006c0061007900000000000000bed166fafe9a ,
    0x9a48829ae0266d442e1e070000008f47e523fb886e40947ebd447e056f0c6d00 ,
    0x79005000720069006f0072006900740079000000000000001cb757519a18c84f ,
    0x8dbe51ddf73dbf77070000008f47e523fb886e40947ebd447e056f0c49007300 ,
    0x53005700000000000000194bc3fec9d7144eaa2bb2045201edf4070000008f47 ,
    0xe523fb886e40947ebd447e056f0c69007300550056000000000000009c8aa984 ,
    0x2ce61d44a312a6d33ebf8bb8070000008f47e523fb886e40947ebd447e056f0c ,
    0x490073004c0061006d000000000000008dd674a8c6bcc841886534179acdbdea ,
    0x070000008f47e523fb886e40947ebd447e056f0c490073004f00740068006500 ,
    0x72000000000000004fd5a2ebc31e714f8e234e882c9db95007000000de0adfee ,
    0x667dff49b440235772c3fed94900440000000000000016640ec60cea834db2cd ,
    0x1cf37870642e07000000de0adfee667dff49b440235772c3fed9490073005400 ,
    0x720069006d000000000000005967904b9a39bd4a9c13330977d898d507000000 ,
    0xde0adfee667dff49b440235772c3fed950006100640049006e0059004e000000 ,
    0x000000003ed9868ec2e6b247a64a9e743587c00a07000000de0adfee667dff49 ,
    0xb440235772c3fed942006f006f006b0059004e0000000000000055e451cf1a8b ,
    0xeb47aef151914bc46d5a07000000de0adfee667dff49b440235772c3fed95200 ,
    0x6f0075006e00640043006f0072006e006500720059004e000000000000001171 ,
    0x4b1da498fe48a7f8457aa31a506507000000de0adfee667dff49b440235772c3 ,
    0xfed944006900650043007500740059004e0000000000000054c9dc903a21e048 ,
    0xb5078dd78b95108507000000de0adfee667dff49b440235772c3fed944007200 ,
    0x69006c006c0059004e00000000000000ee5adf873e3dad4e839e31311ce8ebee ,
    0x07000000de0adfee667dff49b440235772c3fed94900730046006f0069006c00 ,
    0x000000000000f5330bfad6f02e409d2c97ccb65f917907000000de0adfee667d ,
    0xff49b440235772c3fed94900730054006800650072006d006f00000000000000 ,
    0x6a0328bbb86db340a22e1bedafe0756007000000de0adfee667dff49b4402357 ,
    0x72c3fed94900730045006d0062006f00730073000000000000003f0d37b9ff00 ,
    0x9a4fa95fbd1d89225f0207000000de0adfee667dff49b440235772c3fed94900 ,
    0x7300530063006f007200650000000000000077bf401ca740924ba5f9e81e6216 ,
    0xdb1307000000de0adfee667dff49b440235772c3fed946006f006c0064005900 ,
    0x4e0000000000000085dc7903fca783489d5158c0d3ecb79c07000000de0adfee ,
    0x667dff49b440235772c3fed9420069006e00640059004e000000000000009e8d ,
    0x0f3593909342b73f86b9df1048e307000000de0adfee667dff49b440235772c3 ,
    0xfed95000610063006b006100670065004d00610069006c005000720065007000 ,
    0x0000000000007857d2ada5ee1a42ae4659405dc8fd6b07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be45007800700065006300740065006400510074007900 ,
    0x000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e0074004e006100 ,
    0x6d0065000000000000008369de8a22548c409566162116d7156007000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be530068006900700044006100740065000000 ,
    0x00000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624d ,
    0xb77659eef5e022a143006f006d0070004e0061006d006500000000000000749d ,
    0x4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8044006f0063006b00650074004e0075006d00000000000000a084f8da1e4f ,
    0x1342b1fae6042c102b9a07000000d2d381ba93398a4283a6a9ed80a7b4be4100 ,
    0x73007300690067006e0065006400440075006500440061007400650000000000 ,
    0x0000d9c1524eae16e7439791b1c28f640d8107000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be5300700065006300690066006900650064004400750065004400 ,
    0x610074006500000000000000f08b0b99aeca0d42a7931b2d3d02df1907000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d004800420069006e00640065007200 ,
    0x79000000000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8049006e0076006f006900630065004e0075006d00 ,
    0x000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8056006f00690064000000000000002042568302f48b4d ,
    0x89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x490044000000000000005de3afceffee604bb48d2533e48439fd07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be44005900420069006e006400650072007900 ,
    0x000000000000dd6fcd94378b0c49b622eb3d0714ca0207000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be53007400420069006e00640065007200790000000000 ,
    0x0000b7c36995fcfafa45ad69b32c6b3b9b9e07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be530074005000720069006e0074000000000000006b8100b18f7b ,
    0xa34aa3c59fda19a111ed0700000035f87d9f0b136040ad3c2851f16d2a807000 ,
    0x72006f006a006500630074007300740061007400750073006900640000000000 ,
    0x00005d3253e611f3864495bf6642e622950b07000000de0adfee667dff49b440 ,
    0x235772c3fed9500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e0074004900440000000000000057f5f9223a7ee24bb7a3d18214ec742a ,
    0x07000000de0adfee667dff49b440235772c3fed95000720069006f0072006900 ,
    0x7400790000000000000078fe3e064e1fef458d83017ec118ee560700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80440065006c00690076006500720079004300 ,
    0x750074006f0066006600540069006d0065000000000000009775c709b2c3384b ,
    0xb07837caae4863b007000000d2d381ba93398a4283a6a9ed80a7b4be48006100 ,
    0x72006400500072006f006f006600530065006e00740044006100740065000000 ,
    0x000000005bc2afaa308a944d853680cee4b2efba07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4800610072006400500072006f006f006600410070007000 ,
    0x72006f00760065006400440061007400650000000000000078a4ab78684be74a ,
    0x86eca6bbeda30d6807000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006f00660041007000700072006f0076006500640044006100740065000000 ,
    0x0000000047b1ba89889f994aa5a5b0ab4f547da30700000035f87d9f0b136040 ,
    0xad3c2851f16d2a804600690072006d0044007500650044006100740065000000 ,
    0x0000000093ba397e75759745b39991abbd4894170700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8049007300520075007300680000000000000090591afcca33 ,
    0xcc4a8f11af1822f3c84907000000d2d381ba93398a4283a6a9ed80a7b4be4300 ,
    0x6f006d0070006c006500740069006f006e004400610074006500000000000000 ,
    0x2bce2750e7a94c4cafae05940cb88e7807000000de0adfee667dff49b4402357 ,
    0x72c3fed9420069006e00640053006100640064006c00650059004e0000000000 ,
    0x0000a2cbf3a8504061458faf1748ec98335a07000000de0adfee667dff49b440 ,
    0x235772c3fed9420069006e006400500065007200660065006300740059004e00 ,
    0x000000000000bc8b098ddfa63f48baf4726fc1829f0d07000000de0adfee667d ,
    0xff49b440235772c3fed9420069006e00640043006f0069006c0059004e000000 ,
    0x000000005a54430a81442d4d9fda4ddd45734cff07000000de0adfee667dff49 ,
    0xb440235772c3fed9420069006e00640057006900720065004f0059006e000000 ,
    0x000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80500072006f006a006500630074004e0061006d0065000000 ,
    0x000000008c152645551d054398f6e7f16c47b09f07000000de0adfee667dff49 ,
    0xb440235772c3fed95000610063006b0061006700650053006800720069006e00 ,
    0x6b0059004e00000000000000e484c7dc82ab9148b340351b957c189f07000000 ,
    0xde0adfee667dff49b440235772c3fed9550056004f00660066006c0069006e00 ,
    0x6500460072006f006e00740000000000000017da6e9c29559f42bba9afde6a87 ,
    0x1d9b07000000de0adfee667dff49b440235772c3fed94c0061006d0046007200 ,
    0x6f006e0074000000000000009b2bbb0784f4d04a945552cfb37f287b07000000 ,
    0xde0adfee667dff49b440235772c3fed94c0061006d0045006400670065004600 ,
    0x72006f006e007400000000000000f1aecc0a2d26b5449743739dd39a6d350700 ,
    0x0000de0adfee667dff49b440235772c3fed94c0061006d005400680069006300 ,
    0x6b00460072006f006e0074000000000000007398ac0669261c43a6ab19abf6cc ,
    0xf39d0700000035f87d9f0b136040ad3c2851f16d2a804b006500650070004900 ,
    0x6e00500072006f00640075006300740069006f006e0059004e00000000000000 ,
    0x29556c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4900440000000000000004aeb2718000d24bb73b562a737994cb0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80490044000000000000001fc238e4 ,
    0x47652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
dbMemo "OrderBy" ="[qryScheduleBindery].[ID]"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.IsTrim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.PadInYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.BookYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.RoundCornerYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.DieCutYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.DrillYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.IsFoil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.IsThermo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.IsEmboss"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.IsScore"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.FoldYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.BindYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.PackageMailPrep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShipDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1018"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DUEDATE"
        dbInteger "ColumnWidth" ="3285"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x78c63f7b36e17d4c906bad020584d859
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.projectstatusid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb05118f254c9f4a9dee26feb4a8cb90
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPriority"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbed166fafe9a9a48829ae0266d442e1e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.BindSaddleYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.BindPerfectYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.BindCoilYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentBindery.BindWireOYn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IsSW"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1cb757519a18c84f8dbe51ddf73dbf77
        End
    End
    Begin
        dbText "Name" ="isUV"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x194bc3fec9d7144eaa2bb2045201edf4
        End
    End
    Begin
        dbText "Name" ="IsLam"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c8aa9842ce61d44a312a6d33ebf8bb8
        End
    End
    Begin
        dbText "Name" ="IsOther"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8dd674a8c6bcc841886534179acdbdea
        End
    End
    Begin
        dbText "Name" ="Expr1036"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1034"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =34
    Top =35
    Right =1414
    Bottom =722
    Left =-1
    Top =-1
    Right =1348
    Bottom =461
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =61
        Top =3
        Right =449
        Bottom =417
        Top =0
        Name ="dbo_ProjectComponentBindery"
        Name =""
    End
    Begin
        Left =488
        Top =10
        Right =731
        Bottom =376
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =901
        Top =2
        Right =1185
        Bottom =393
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1274
        Top =8
        Right =1560
        Bottom =385
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
