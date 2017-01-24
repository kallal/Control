Operation =1
Option =0
Begin InputTables
    Name ="viewScheduleBindery"
    Name ="dbo_ProjectHeader"
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Expression ="viewScheduleBindery.*"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Alias ="ProofDisplay"
    Expression ="IIf([HardProofSentDate],Format(IIf([HardProofApprovedDate],[HardProofApprovedDat"
        "e],\"\"),\"Medium Date\"),Format(IIf([ProofApprovedDate],[ProofApprovedDate],\"\""
        "),\"Medium Date\"))"
    Alias ="myPriority"
    Expression ="Nz([Priority],99)"
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
    Alias ="isSW"
    Expression ="IIf([PackageShrinkYN]=True,True,False)"
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
End
Begin Joins
    LeftTable ="viewScheduleBindery"
    RightTable ="dbo_ProjectHeader"
    Expression ="viewScheduleBindery.ProjectHeaderID = dbo_ProjectHeader.ID"
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
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b6a9bbf62a4a9848bddedda3933fbf610000000028c4d34c ,
    0x2de0e44000000000000000007600690065007700530063006800650064007500 ,
    0x6c006500420069006e00640065007200790000000000000035f87d9f0b136040 ,
    0xad3c2851f16d2a8000000000f6b16e4c2de0e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x00000000f0a07a545f8a6448b11bd6a1031b20d10000000074181c4c2de0e440 ,
    0x0000000000000000640062006f005f0043006f006d00700061006e0079004c00 ,
    0x6f0063006100740069006f006e0000000000000078c63f7b36e17d4c906bad02 ,
    0x0584d8590700000037bc00003206734aa2baa27652f6c9124400750065004400 ,
    0x610074006500000000000000cb05118f254c9f4a9dee26feb4a8cb9007000000 ,
    0x37bc00003206734aa2baa27652f6c912500072006f006f006600440069007300 ,
    0x70006c0061007900000000000000bed166fafe9a9a48829ae0266d442e1e0700 ,
    0x000037bc00003206734aa2baa27652f6c9126d0079005000720069006f007200 ,
    0x690074007900000000000000194bc3fec9d7144eaa2bb2045201edf407000000 ,
    0x37bc00003206734aa2baa27652f6c91269007300550056000000000000009c8a ,
    0xa9842ce61d44a312a6d33ebf8bb80700000037bc00003206734aa2baa27652f6 ,
    0xc912490073004c0061006d000000000000008dd674a8c6bcc841886534179acd ,
    0xbdea0700000037bc00003206734aa2baa27652f6c912490073004f0074006800 ,
    0x650072000000000000001cb757519a18c84f8dbe51ddf73dbf770700000037bc ,
    0x00003206734aa2baa27652f6c91269007300530057000000000000004ec13485 ,
    0xe288d747904a60113958703407000000b6a9bbf62a4a9848bddedda3933fbf61 ,
    0x5300700065006300690066006900650064004400750065004400610074006500 ,
    0x000000000000d9707a7c55417f4fb50b1d6a746ec27a07000000b6a9bbf62a4a ,
    0x9848bddedda3933fbf61610073007300690067006e0065006400640075006500 ,
    0x640061007400650000000000000084d9a563a934414abbf2aa1fda7d45780700 ,
    0x0000b6a9bbf62a4a9848bddedda3933fbf614800610072006400500072006f00 ,
    0x6f006600530065006e00740044006100740065000000000000006606384be0e0 ,
    0x7848a3a18a315741e2bb07000000b6a9bbf62a4a9848bddedda3933fbf614800 ,
    0x610072006400500072006f006f00660041007000700072006f00760065006400 ,
    0x4400610074006500000000000000ff38162c4e1bdc4ea1353228af480da00700 ,
    0x0000b6a9bbf62a4a9848bddedda3933fbf61500072006f006f00660041007000 ,
    0x700072006f0076006500640044006100740065000000000000004df647e1021d ,
    0x384aa782741d0e3dc7a007000000b6a9bbf62a4a9848bddedda3933fbf615000 ,
    0x720069006f007200690074007900000000000000618be18122328e47be3cab49 ,
    0x9c0b50d507000000b6a9bbf62a4a9848bddedda3933fbf61550056004f006600 ,
    0x66006c0069006e006500460072006f006e007400000000000000995ebb8dd269 ,
    0x5742a4214a248b4897be07000000b6a9bbf62a4a9848bddedda3933fbf614c00 ,
    0x61006d00460072006f006e0074000000000000001ad3627b445deb42a2b5120e ,
    0x5d792ffc07000000b6a9bbf62a4a9848bddedda3933fbf614c0061006d004500 ,
    0x640067006500460072006f006e0074000000000000003d29fcb1b8f9204a837b ,
    0xdb5bc86fbce707000000b6a9bbf62a4a9848bddedda3933fbf614c0061006d00 ,
    0x54006800690063006b00460072006f006e007400000000000000d1f9d4080d1b ,
    0xbd4cbef61d688f045ed607000000b6a9bbf62a4a9848bddedda3933fbf614900 ,
    0x73005400720069006d0000000000000017bcccc09b4d434894269fc6d39ad063 ,
    0x07000000b6a9bbf62a4a9848bddedda3933fbf6150006100640049006e005900 ,
    0x4e00000000000000bc350b89f4b75c488f23cea79f82d5fc07000000b6a9bbf6 ,
    0x2a4a9848bddedda3933fbf6142006f006f006b0059004e00000000000000442a ,
    0x158c572ff94088bdea52cb00e30b07000000b6a9bbf62a4a9848bddedda3933f ,
    0xbf6152006f0075006e00640043006f0072006e006500720059004e0000000000 ,
    0x0000511675f5f579b2488e6a133b1499553b07000000b6a9bbf62a4a9848bdde ,
    0xdda3933fbf6144006900650043007500740059004e00000000000000fcfbb5fe ,
    0xd97f58429aba7f60d2c7564d07000000b6a9bbf62a4a9848bddedda3933fbf61 ,
    0x4400720069006c006c0059004e00000000000000e7ab3b7f105bb442bcbb7d17 ,
    0x2e56ebc907000000b6a9bbf62a4a9848bddedda3933fbf614900730046006f00 ,
    0x69006c000000000000008e76aa13b361da4f933000c316ddaa3a07000000b6a9 ,
    0xbbf62a4a9848bddedda3933fbf614900730054006800650072006d006f000000 ,
    0x000000008420cb617491e34ca61740e4018cb40707000000b6a9bbf62a4a9848 ,
    0xbddedda3933fbf614900730045006d0062006f0073007300000000000000b6af ,
    0x1ba2e5eebc4c892cfd38ff9ed0ce07000000b6a9bbf62a4a9848bddedda3933f ,
    0xbf6149007300530063006f0072006500000000000000d6e91315f6f8b443915f ,
    0x6e3b6a93254207000000b6a9bbf62a4a9848bddedda3933fbf6146006f006c00 ,
    0x640059004e00000000000000b3be1849bd603b458066410dc2f07df407000000 ,
    0xb6a9bbf62a4a9848bddedda3933fbf61420069006e00640059004e0000000000 ,
    0x0000dfa23d47924f8448af790344c616092307000000b6a9bbf62a4a9848bdde ,
    0xdda3933fbf61420069006e00640053006100640064006c00650059004e000000 ,
    0x00000000d9c9b41af316af4f923750e02db063ec07000000b6a9bbf62a4a9848 ,
    0xbddedda3933fbf61420069006e00640050006500720066006500630074005900 ,
    0x4e00000000000000f32389ce85108f42928bcff392576b4a07000000b6a9bbf6 ,
    0x2a4a9848bddedda3933fbf61420069006e00640043006f0069006c0059004e00 ,
    0x000000000000293cdd7287955b4cb002118840f71f4507000000b6a9bbf62a4a ,
    0x9848bddedda3933fbf61420069006e00640057006900720065004f0059004e00 ,
    0x0000000000007879ad59a842d54e95143e08fd0a8c6207000000b6a9bbf62a4a ,
    0x9848bddedda3933fbf615000610063006b006100670065005300680072006900 ,
    0x6e006b0059004e0000000000000097f4d916639123478b4d0c4170d61ffb0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8043006f006d00700061006e007900 ,
    0x4c006f0063006100740069006f006e004900440000000000000001d2b706cee7 ,
    0xea48b9f4af0b27f2548007000000f0a07a545f8a6448b11bd6a1031b20d15200 ,
    0x650070006f007200740043006f006c006f007200000000000000bb775f0bcb77 ,
    0x5d40b64389672b5f618c07000000b6a9bbf62a4a9848bddedda3933fbf615000 ,
    0x72006f006a006500630074004800650061006400650072004900440000000000 ,
    0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8049004400000000000000cfcb0f694dd678469d745c2d3c9b4534 ,
    0x07000000f0a07a545f8a6448b11bd6a1031b20d1490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
dbBinary "GUID" = Begin
    0x37bc00003206734aa2baa27652f6c912
End
Begin
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
        dbText "Name" ="ProofDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb05118f254c9f4a9dee26feb4a8cb90
        End
    End
    Begin
        dbText "Name" ="myPriority"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbed166fafe9a9a48829ae0266d442e1e
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
        dbText "Name" ="viewScheduleBindery.PadInYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PadQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PadLocation"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BookYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BookInQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BookLocation"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BookCoverTapeYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindWireOYn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.LamThickFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.LamThickBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.AQOfflineBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.RoundTLYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.RoundTRYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.RoundBLYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.RoundBRYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DieCutYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DieNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldAccordianYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldOtherYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackagePaperYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageBoxLooseYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageBoxYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageBandYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindCoilYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DrillSize"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.StBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DYBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.MHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageMailPrep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindCoilSize"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.Collate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ActualRunSpoil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.LamFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.LamEdgeFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.LamBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.LamEdgeBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DrillQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.RoundCornerYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldLetterYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldAndSlitYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindPerfectYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BookCoverWrapYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DrillYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.DrillLocation"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindOtherYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.AQOfflineFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.Fold4pgYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldGateYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageShrinkYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageRubberYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageShipFlatYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageWrapCount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.IsThermo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.IsFoil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.IsEmboss"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.IsScore"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.IsTrim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.IsGlue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindSaddleYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.NCRYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BookTotalQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageUnmarkedYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindCornerYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.Fold8pgYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ActualRunLength"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.RoundCornerRadius"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.UVOfflineFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.UVOfflineBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.FoldFinishedSize"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageBCYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageWrapYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.PackageBandCount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.BindCoilColour"
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
        dbText "Name" ="viewScheduleBindery.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.HardProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewScheduleBindery.HardProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo.projectComponentHeader.projectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_projectComponentHeader.projectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00818806acb80f0198b80f017c4aa206
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.ReportColor"
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
    Bottom =359
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =6
        Right =441
        Bottom =350
        Top =0
        Name ="viewScheduleBindery"
        Name =""
    End
    Begin
        Left =489
        Top =12
        Right =633
        Bottom =156
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =681
        Top =12
        Right =825
        Bottom =156
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
