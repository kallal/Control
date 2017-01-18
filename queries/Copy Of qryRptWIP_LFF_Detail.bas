Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.ProjectStat"
    "usID)<=30))"
Begin InputTables
    Name ="dbo_ProjectComponentLFFinishWorkList"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentLFFinishWorkList.ID"
    Expression ="dbo_ProjectComponentLFFinishWorkList.ProjectComponentID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentLFFinishWorkList.SectionName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Alias ="HasCutter"
    Expression ="IIf(InStr([name],\"flatbed cutter\")>1,True,False)"
    Alias ="HasRollCutter"
    Expression ="IIf(InStr([name],\"roll cutter\")>1,True,False)"
    Alias ="HasRouter"
    Expression ="IIf(InStr([name],\"flatbed router\")>0,True,False)"
    Alias ="HasLaminate"
    Expression ="IIf(InStr([name],\"laminat\")>0,True,False)"
    Alias ="HasDrill"
    Expression ="IIf(InStr([name],\"drill\")>0,True,False)"
    Alias ="HasTaping"
    Expression ="IIf(InStr([name],\"taping\")>0,True,False)"
    Alias ="HasKitting"
    Expression ="IIf(InStr([name],\"kitting\")>0,True,False)"
    Alias ="HasSewnHem"
    Expression ="IIf(InStr([name],\"sewn hem\")>0,True,False)"
    Alias ="HasOtherSrv"
    Expression ="IIf([HasCutter]=False And [HasRollCutter]=False And [hasrouter]=False And [hasla"
        "minate]=False And [hasdrill]=False And [hastaping]=False And [haskitting]=False "
        "And [hassewnhem]=False,True,False)"
    Expression ="dbo_ProjectComponentLFFinishWorkList.Status"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.KeepInProductionYN"
    Expression ="dbo_ProjectComponentLFFinishWorkList.Name"
    Expression ="dbo_ProjectComponentHeader.StLFFinish"
    Expression ="dbo_ProjectComponentHeader.MHLFFinish"
    Expression ="dbo_ProjectComponentHeader.DYLFFinish"
    Expression ="dbo_ProjectComponentHeader.StPrint"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Alias ="ProofDisplay"
    Expression ="IIf([HardProofSentDate],Format(IIf([HardProofApprovedDate],[HardProofApprovedDat"
        "e],\"\"),\"Medium Date\"),Format(IIf([ProofApprovedDate],[ProofApprovedDate],\"\""
        "),\"Medium Date\"))"
    Expression ="dbo_ProjectHeader.DeliveryCutoffTime"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectHeader.IsRush"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.FirmDueDate"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentLFFinishWorkList"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentLFFinishWorkList.ProjectComponentID = dbo_ProjectComponentHe"
        "ader.ID"
    Flag =1
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =1
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
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
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000ccdae839ea603049a9a3da6e12671b4f000000007466cf85 ,
    0x72c6e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e0074004c004600460069006e006900 ,
    0x7300680057006f0072006b004c00690073007400000000000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be0000000083a4c58572c6e44000000000000000006400 ,
    0x62006f005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e00740048006500610064006500720000000000000035f87d9f0b136040 ,
    0xad3c2851f16d2a800000000093220b8672c6e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x00000000bb4ee421343f624db77659eef5e022a100000000c218e08472c6e440 ,
    0x0000000000000000640062006f005f0043006f006e0074006100630074004700 ,
    0x65006e006500720061006c000000000000001b420ba99e70424782f5e01ec3c5 ,
    0x157e070000000000000000000000000000000000000048006100730043007500 ,
    0x74007400650072000000000000007445d7793732e946b9c9a9c0b82850480700 ,
    0x00000000000000000000000000000000000048006100730052006f006c006c00 ,
    0x43007500740074006500720000000000000062878ec8fedc484d85115c3ba8f8 ,
    0x250c070000000000000000000000000000000000000048006100730052006f00 ,
    0x75007400650072000000000000000403edd95e096148b9f904b1a7120f0e0700 ,
    0x0000000000000000000000000000000000004800610073004c0061006d006900 ,
    0x6e00610074006500000000000000bf415f8d37d9c845b2e86d12a05c95130700 ,
    0x0000000000000000000000000000000000004800610073004400720069006c00 ,
    0x6c000000000000008668125fd1bf9d48b3190313ff17f1a50700000000000000 ,
    0x00000000000000000000000048006100730054006100700069006e0067000000 ,
    0x00000000a473e003de09d540b06e8007d5854ba6070000000000000000000000 ,
    0x00000000000000004800610073004b0069007400740069006e00670000000000 ,
    0x0000d9bfbe4b140cca4e96783149bc2ec9160700000000000000000000000000 ,
    0x0000000000004800610073005300650077006e00480065006d00000000000000 ,
    0xf1e532df9ae7d84e95e08a34bd0dba5607000000000000000000000000000000 ,
    0x000000004800610073004f007400680065007200530072007600000000000000 ,
    0xc4e49d975864f94698cb4f0614c3ec7a07000000000000000000000000000000 ,
    0x00000000440075006500440061007400650000000000000097bf7db54a399948 ,
    0xbaa43dcb82c13455070000000000000000000000000000000000000050007200 ,
    0x6f006f00660044006900730070006c0061007900000000000000c73ad9baf87e ,
    0xcf4293f7213ef0e1ef8a07000000ccdae839ea603049a9a3da6e12671b4f4900 ,
    0x44000000000000001e40657114655c4397fc4838a9a13d2507000000ccdae839 ,
    0xea603049a9a3da6e12671b4f500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e00740049004400000000000000fde2928bbc55824d8e33 ,
    0xfcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d00 ,
    0x70004e0061006d0065000000000000001c9b84855b8f264abd34a504e56b05af ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a0065006300 ,
    0x74004e0061006d006500000000000000a21dc4fed47c244fa08fb5209ebbfbc7 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e00 ,
    0x65006e0074004e0061006d006500000000000000c5a9be9694cdf24dbcec494c ,
    0xbeb0c83907000000ccdae839ea603049a9a3da6e12671b4f5300650063007400 ,
    0x69006f006e004e0061006d006500000000000000749d4175d9cbb541b77414bf ,
    0x76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00 ,
    0x650074004e0075006d000000000000001f4b92ec5ede1d48b275a05a58d5dba5 ,
    0x07000000ccdae839ea603049a9a3da6e12671b4f6e0061006d00650000000000 ,
    0x000021a4163971273246a895c465b1b5136307000000ccdae839ea603049a9a3 ,
    0xda6e12671b4f5300740061007400750073000000000000007da6a641b3cf604b ,
    0x95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e00 ,
    0x76006f006900630065004e0075006d000000000000007398ac0669261c43a6ab ,
    0x19abf6ccf39d0700000035f87d9f0b136040ad3c2851f16d2a804b0065006500 ,
    0x700049006e00500072006f00640075006300740069006f006e0059004e000000 ,
    0x00000000b57d49568e0a0748b3bcda76abcd850f07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530074004c004600460069006e0069007300680000000000 ,
    0x000034e96cce7623ef419098596b394b016e07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4d0048004c004600460069006e00690073006800000000000000 ,
    0xfd0ed26d4a6bd649b28cc16ee730e06307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be440059004c004600460069006e00690073006800000000000000b7c3 ,
    0x6995fcfafa45ad69b32c6b3b9b9e07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be530074005000720069006e007400000000000000d9c1524eae16e7439791 ,
    0xb1c28f640d8107000000d2d381ba93398a4283a6a9ed80a7b4be530070006500 ,
    0x6300690066006900650064004400750065004400610074006500000000000000 ,
    0xa084f8da1e4f1342b1fae6042c102b9a07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be610073007300690067006e0065006400640075006500640061007400 ,
    0x65000000000000006b8100b18f7ba34aa3c59fda19a111ed0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80500072006f006a00650063007400530074006100 ,
    0x740075007300490044000000000000009775c709b2c3384bb07837caae4863b0 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be480061007200640050007200 ,
    0x6f006f006600530065006e00740044006100740065000000000000005bc2afaa ,
    0x308a944d853680cee4b2efba07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4800610072006400500072006f006f00660041007000700072006f0076006500 ,
    0x6400440061007400650000000000000078a4ab78684be74a86eca6bbeda30d68 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006f0066004100 ,
    0x7000700072006f00760065006400440061007400650000000000000078fe3e06 ,
    0x4e1fef458d83017ec118ee560700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x440065006c00690076006500720079004300750074006f006600660054006900 ,
    0x6d0065000000000000007857d2ada5ee1a42ae4659405dc8fd6b07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007000650063007400650064005100 ,
    0x7400790000000000000093ba397e75759745b39991abbd4894170700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80490073005200750073006800000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x4900440000000000000047b1ba89889f994aa5a5b0ab4f547da30700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a804600690072006d0044007500650044006100 ,
    0x740065000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500072006f006a0065006300740048006500 ,
    0x61006400650072004900440000000000000029556c4fcc6de9418049e37cebcb ,
    0x8ed307000000d2d381ba93398a4283a6a9ed80a7b4be49004400000000000000 ,
    0x04aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80490044000000000000001fc238e447652546a47f3ca6a0d889e40700 ,
    0x0000bb4ee421343f624db77659eef5e022a14900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x4e671b4a6980974fa840b1784fd8d958
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xda5b718935ed4143b9c647680df595f1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x95f4e4e94221bf4cb264d8f2bcaa5f4a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinishWorkList.SectionName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe9109248176610449a9283fb025cfefd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe888f07c5e51cb46a64537e533d89f72
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinishWorkList.Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x404d31817d65844a8da6a72b740b671e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d45eb16938f0a458de9e1a323bb5dd5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinishWorkList.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinishWorkList.Name"
        dbInteger "ColumnWidth" ="2835"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HasCutter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1b420ba99e70424782f5e01ec3c5157e
        End
    End
    Begin
        dbText "Name" ="HasRouter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x62878ec8fedc484d85115c3ba8f8250c
        End
    End
    Begin
        dbText "Name" ="HasRollCutter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7445d7793732e946b9c9a9c0b8285048
        End
    End
    Begin
        dbText "Name" ="HasLaminate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0403edd95e096148b9f904b1a7120f0e
        End
    End
    Begin
        dbText "Name" ="HasDrill"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbf415f8d37d9c845b2e86d12a05c9513
        End
    End
    Begin
        dbText "Name" ="HasTaping"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8668125fd1bf9d48b3190313ff17f1a5
        End
    End
    Begin
        dbText "Name" ="HasKitting"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa473e003de09d540b06e8007d5854ba6
        End
    End
    Begin
        dbText "Name" ="HasSewnHem"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd9bfbe4b140cca4e96783149bc2ec916
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4e49d975864f94698cb4f0614c3ec7a
        End
    End
    Begin
        dbText "Name" ="HasOtherSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf1e532df9ae7d84e95e08a34bd0dba56
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofDisplay"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97bf7db54a399948baa43dcb82c13455
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinishWorkList.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =28
    Top =126
    Right =1558
    Bottom =849
    Left =-1
    Top =-1
    Right =1498
    Bottom =383
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =29
        Top =9
        Right =322
        Bottom =394
        Top =0
        Name ="dbo_ProjectComponentLFFinishWorkList"
        Name =""
    End
    Begin
        Left =438
        Top =20
        Right =665
        Bottom =352
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =800
        Top =12
        Right =992
        Bottom =369
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1102
        Top =26
        Right =1388
        Bottom =318
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
