Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.ProjectStat"
    "usID)<=30))"
Begin InputTables
    Name ="dbo_ProjectComponentLFFinishWorkList"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyLocation"
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
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
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
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyLocation"
    Expression ="dbo_ProjectHeader.CompanyLocationID = dbo_CompanyLocation.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x614bcc4f284baa4cadb9f55c8a324323
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000ccdae839ea603049a9a3da6e12671b4f000000009726574c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e0074004c004600460069006e006900 ,
    0x7300680057006f0072006b004c00690073007400000000000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be0000000096f8534c2de0e44000000000000000006400 ,
    0x62006f005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e00740048006500610064006500720000000000000035f87d9f0b136040 ,
    0xad3c2851f16d2a8000000000f6b16e4c2de0e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x00000000bb4ee421343f624db77659eef5e022a10000000076461f4c2de0e440 ,
    0x0000000000000000640062006f005f0043006f006e0074006100630074004700 ,
    0x65006e006500720061006c00000000000000f0a07a545f8a6448b11bd6a1031b ,
    0x20d10000000074181c4c2de0e4400000000000000000640062006f005f004300 ,
    0x6f006d00700061006e0079004c006f0063006100740069006f006e0000000000 ,
    0x00001b420ba99e70424782f5e01ec3c5157e07000000614bcc4f284baa4cadb9 ,
    0xf55c8a3243234800610073004300750074007400650072000000000000007445 ,
    0xd7793732e946b9c9a9c0b828504807000000614bcc4f284baa4cadb9f55c8a32 ,
    0x432348006100730052006f006c006c0043007500740074006500720000000000 ,
    0x000062878ec8fedc484d85115c3ba8f8250c07000000614bcc4f284baa4cadb9 ,
    0xf55c8a32432348006100730052006f0075007400650072000000000000000403 ,
    0xedd95e096148b9f904b1a7120f0e07000000614bcc4f284baa4cadb9f55c8a32 ,
    0x43234800610073004c0061006d0069006e00610074006500000000000000bf41 ,
    0x5f8d37d9c845b2e86d12a05c951307000000614bcc4f284baa4cadb9f55c8a32 ,
    0x43234800610073004400720069006c006c000000000000008668125fd1bf9d48 ,
    0xb3190313ff17f1a507000000614bcc4f284baa4cadb9f55c8a32432348006100 ,
    0x730054006100700069006e006700000000000000a473e003de09d540b06e8007 ,
    0xd5854ba607000000614bcc4f284baa4cadb9f55c8a3243234800610073004b00 ,
    0x69007400740069006e006700000000000000d9bfbe4b140cca4e96783149bc2e ,
    0xc91607000000614bcc4f284baa4cadb9f55c8a32432348006100730053006500 ,
    0x77006e00480065006d00000000000000f1e532df9ae7d84e95e08a34bd0dba56 ,
    0x07000000614bcc4f284baa4cadb9f55c8a3243234800610073004f0074006800 ,
    0x65007200530072007600000000000000c4e49d975864f94698cb4f0614c3ec7a ,
    0x07000000614bcc4f284baa4cadb9f55c8a324323440075006500440061007400 ,
    0x650000000000000097bf7db54a399948baa43dcb82c1345507000000614bcc4f ,
    0x284baa4cadb9f55c8a324323500072006f006f00660044006900730070006c00 ,
    0x61007900000000000000c73ad9baf87ecf4293f7213ef0e1ef8a07000000ccda ,
    0xe839ea603049a9a3da6e12671b4f490044000000000000001e40657114655c43 ,
    0x97fc4838a9a13d2507000000ccdae839ea603049a9a3da6e12671b4f50007200 ,
    0x6f006a0065006300740043006f006d0070006f006e0065006e00740049004400 ,
    0x000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f ,
    0x624db77659eef5e022a143006f006d0070004e0061006d006500000000000000 ,
    0x1c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80500072006f006a006500630074004e0061006d006500000000000000 ,
    0xa21dc4fed47c244fa08fb5209ebbfbc707000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be43006f006d0070006f006e0065006e0074004e0061006d0065000000 ,
    0x00000000c5a9be9694cdf24dbcec494cbeb0c83907000000ccdae839ea603049 ,
    0xa9a3da6e12671b4f530065006300740069006f006e004e0061006d0065000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8044006f0063006b00650074004e0075006d00000000000000 ,
    0x1f4b92ec5ede1d48b275a05a58d5dba507000000ccdae839ea603049a9a3da6e ,
    0x12671b4f6e0061006d00650000000000000021a4163971273246a895c465b1b5 ,
    0x136307000000ccdae839ea603049a9a3da6e12671b4f53007400610074007500 ,
    0x73000000000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8049006e0076006f006900630065004e0075006d00 ,
    0x0000000000007398ac0669261c43a6ab19abf6ccf39d0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a804b0065006500700049006e00500072006f0064007500 ,
    0x6300740069006f006e0059004e00000000000000b57d49568e0a0748b3bcda76 ,
    0xabcd850f07000000d2d381ba93398a4283a6a9ed80a7b4be530074004c004600 ,
    0x460069006e0069007300680000000000000034e96cce7623ef419098596b394b ,
    0x016e07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004c0046004600 ,
    0x69006e00690073006800000000000000fd0ed26d4a6bd649b28cc16ee730e063 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440059004c00460046006900 ,
    0x6e00690073006800000000000000b7c36995fcfafa45ad69b32c6b3b9b9e0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be530074005000720069006e007400 ,
    0x000000000000d9c1524eae16e7439791b1c28f640d8107000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be53007000650063006900660069006500640044007500 ,
    0x65004400610074006500000000000000a084f8da1e4f1342b1fae6042c102b9a ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be610073007300690067006e00 ,
    0x6500640064007500650064006100740065000000000000006b8100b18f7ba34a ,
    0xa3c59fda19a111ed0700000035f87d9f0b136040ad3c2851f16d2a8050007200 ,
    0x6f006a0065006300740053007400610074007500730049004400000000000000 ,
    0x9775c709b2c3384bb07837caae4863b007000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4800610072006400500072006f006f006600530065006e0074004400 ,
    0x6100740065000000000000005bc2afaa308a944d853680cee4b2efba07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4800610072006400500072006f006f00 ,
    0x660041007000700072006f007600650064004400610074006500000000000000 ,
    0x78a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006f006f00660041007000700072006f007600650064004400 ,
    0x61007400650000000000000078fe3e064e1fef458d83017ec118ee5607000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80440065006c0069007600650072007900 ,
    0x4300750074006f0066006600540069006d0065000000000000007857d2ada5ee ,
    0x1a42ae4659405dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x780070006500630074006500640051007400790000000000000093ba397e7575 ,
    0x9745b39991abbd4894170700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x730052007500730068000000000000008265226ce5165f4597f9cda188898d96 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00740061006300 ,
    0x7400470065006e006500720061006c004900440000000000000047b1ba89889f ,
    0x994aa5a5b0ab4f547da30700000035f87d9f0b136040ad3c2851f16d2a804600 ,
    0x690072006d0044007500650044006100740065000000000000002042568302f4 ,
    0x8b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x72006f006a006500630074004800650061006400650072004900440000000000 ,
    0x000097f4d916639123478b4d0c4170d61ffb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8043006f006d00700061006e0079004c006f006300610074006900 ,
    0x6f006e004900440000000000000001d2b706cee7ea48b9f4af0b27f254800700 ,
    0x0000f0a07a545f8a6448b11bd6a1031b20d15200650070006f00720074004300 ,
    0x6f006c006f00720000000000000029556c4fcc6de9418049e37cebcb8ed30700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4900440000000000000004aeb271 ,
    0x8000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x490044000000000000001fc238e447652546a47f3ca6a0d889e407000000bb4e ,
    0xe421343f624db77659eef5e022a149004400000000000000cfcb0f694dd67846 ,
    0x9d745c2d3c9b453407000000f0a07a545f8a6448b11bd6a1031b20d149004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
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
    Begin
        dbText "Name" ="dbo_CompanyLocation.ReportColor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyLocationID"
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
    Bottom =366
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
        Left =373
        Top =18
        Right =600
        Bottom =350
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =689
        Top =8
        Right =881
        Bottom =365
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1005
        Top =81
        Right =1291
        Bottom =373
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1339
        Top =12
        Right =1483
        Bottom =156
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
