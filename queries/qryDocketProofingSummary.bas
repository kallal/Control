Operation =1
Option =0
Where ="(((dbo_ProjectHeader.ID)=21265))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectComponentProof"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Alias ="ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ArtExpectedDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.FirstProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
    Expression ="dbo_ProjectComponentHeader.DataArrivedDate"
    Expression ="dbo_ProjectComponentHeader.MailApprovalRequired"
    Expression ="dbo_ProjectComponentHeader.MailProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.HardProofSentDate"
    Expression ="dbo_ProjectComponentHeader.HardProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.FSCProofSentDate"
    Expression ="dbo_ProjectComponentHeader.FSCProofApprovedDate"
    Expression ="dbo_ProjectComponentProof.Description"
    Expression ="dbo_ProjectComponentProof.FriendlyName"
    Expression ="dbo_ProjectComponentProof.FileName"
    Expression ="dbo_ProjectComponentProof.ProofRevision"
    Expression ="dbo_ProjectComponentProof.Created"
    Expression ="dbo_ProjectComponentProof.CreatedBy"
    Expression ="dbo_ProjectComponentProof.Sent"
    Expression ="dbo_ProjectComponentProof.SentBy"
    Expression ="dbo_ProjectComponentProof.Notes"
    Expression ="dbo_ProjectComponentProof.Status"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectComponentProof"
    Expression ="dbo_ProjectComponentHeader.ID = dbo_ProjectComponentProof.ProjectComponentID"
    Flag =2
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
dbBinary "GUID" = Begin
    0x46a17b6a4d27994a9ca4112831c95c2c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb400000000df8cae62 ,
    0xae63e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x0000000000001b20cfe82c9fb04e940d7b25cd64694e00000000989fb862ae63 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x43006f006d0070006f006e0065006e007400500072006f006f00660000000000 ,
    0x0000fe926418f32ed843874a57f371c555c700000000ec6dbd62ae63e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000d7c549c33168bc4ab70151c855c0b6b90000 ,
    0x000046ec8962ae63e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c0000000000000005b34f2e ,
    0x5bc9c94bb507c17447eba4130700000046a17b6a4d27994a9ca4112831c95c2c ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x490044000000000000006f7f02ef6df8574092eeeafb278f50ec07000000fe92 ,
    0x6418f32ed843874a57f371c555c749004400000000000000124b02a694dd0e4c ,
    0x96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b943006f00 ,
    0x6d0070004e0061006d006500000000000000d9cb95bb9ff0b84fa39eeda59762 ,
    0x82d607000000fe926418f32ed843874a57f371c555c744006f0063006b006500 ,
    0x74004e0075006d00000000000000118be950d66974438268ddc04c06af1a0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4490044000000000000003c3a0e9c ,
    0xef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x43006f006d0070006f006e0065006e0074004e0061006d006500000000000000 ,
    0x717e39111eca6347b57209c2ea15cddc070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb441007200740045007800700065006300740065006400440061007400 ,
    0x6500000000000000510e420f3ce318458e4a83187ceafcd5070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb44100720074004100720072006900760065006400 ,
    0x44006100740065000000000000005004abda9a33dd4aba0b9a7a7519296e0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb44600690072007300740050007200 ,
    0x6f006f006600530065006e0074004400610074006500000000000000634027e6 ,
    0x3b69c14c8d8a18cfebb340f0070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x500072006f006f006600530065006e0074004400610074006500000000000000 ,
    0x9663a2b3f469e74384b7fdcf57d349e8070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4500072006f006f00660041007000700072006f007600650064004400 ,
    0x6100740065000000000000002b65fd8db5abd949aead0dff337742f207000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb444006100740061004500780070006500 ,
    0x6300740065006400440061007400650000000000000074e1da1886b7f044af38 ,
    0xcd52c4a502c8070000000e7a128852f41a47b128e4f3b41e4fb4440061007400 ,
    0x610041007200720069007600650064004400610074006500000000000000ce60 ,
    0xf0117b1f14459b7c2040684ea798070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb44d00610069006c0041007000700072006f00760061006c00520065007100 ,
    0x750069007200650064000000000000001e1a4cfa6161a047bf0d693c307b0362 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb44d00610069006c0050007200 ,
    0x6f006f00660041007000700072006f0076006500640044006100740065000000 ,
    0x000000009034f5093d684d4493441af67c602460070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4410073007300690067006e00650064004400750065004400 ,
    0x610074006500000000000000e41b349e809836428a33efa5925ec82d07000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb453007000650063006900660069006500 ,
    0x6400440075006500440061007400650000000000000065f660c3b960b142bfc0 ,
    0xffd47aff2275070000000e7a128852f41a47b128e4f3b41e4fb4480061007200 ,
    0x6400500072006f006f006600530065006e007400440061007400650000000000 ,
    0x0000bf8cb913e2df5e41ae00d52a812d00fb070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb44800610072006400500072006f006f0066004100700070007200 ,
    0x6f007600650064004400610074006500000000000000af81cba5d08bbf4fbbba ,
    0x473ad29c464b070000000e7a128852f41a47b128e4f3b41e4fb4460053004300 ,
    0x500072006f006f006600530065006e0074004400610074006500000000000000 ,
    0xb7cedb06816b3741beb03525778882e1070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4460053004300500072006f006f00660041007000700072006f007600 ,
    0x65006400440061007400650000000000000033572ee4a94d614488d1e32c918c ,
    0x6aee070000001b20cfe82c9fb04e940d7b25cd64694e44006500730063007200 ,
    0x69007000740069006f006e000000000000005a6095519dc1934984dc38bbaeab ,
    0x5bf6070000001b20cfe82c9fb04e940d7b25cd64694e46007200690065006e00 ,
    0x64006c0079004e0061006d006500000000000000d974a8a47772544d8090e5a3 ,
    0x7bd265d9070000001b20cfe82c9fb04e940d7b25cd64694e460069006c006500 ,
    0x4e0061006d0065000000000000002c47c178c9c27d4aa919365c3b7fc53b0700 ,
    0x00001b20cfe82c9fb04e940d7b25cd64694e500072006f006f00660052006500 ,
    0x76006900730069006f006e0000000000000080c44b3b59ceec48a04958ceb069 ,
    0x8ded070000001b20cfe82c9fb04e940d7b25cd64694e43007200650061007400 ,
    0x650064000000000000004cea15711387fa4ab690dca5e4844486070000001b20 ,
    0xcfe82c9fb04e940d7b25cd64694e430072006500610074006500640042007900 ,
    0x000000000000b58b97a2fb1ef247b4b52fb9478ae167070000001b20cfe82c9f ,
    0xb04e940d7b25cd64694e530065006e0074000000000000003e01b07153795c47 ,
    0xb1b27c8ed0c954f5070000001b20cfe82c9fb04e940d7b25cd64694e53006500 ,
    0x6e00740042007900000000000000aeb9378aed71334587e905906d2bf40c0700 ,
    0x00001b20cfe82c9fb04e940d7b25cd64694e4e006f0074006500730000000000 ,
    0x0000f71eaeb417448f4ab59b13ac71846cde070000001b20cfe82c9fb04e940d ,
    0x7b25cd64694e530074006100740075007300000000000000873fed1bdd4daf46 ,
    0xb59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb450007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0xd65af52f77bb00468d3c3acd21f15f87070000001b20cfe82c9fb04e940d7b25 ,
    0xcd64694e500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e0074004900440000000000000089ff919c8c2cb04795bac03adb5478450700 ,
    0x0000fe926418f32ed843874a57f371c555c743006f006e007400610063007400 ,
    0x470065006e006500720061006c004900440000000000000003933b4b9f324445 ,
    0xa82e368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b949004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15a7360fd1cd024dbf9372798d6172bd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.ProjectComponentID"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c3c1bdd74677a48aa18287135ab039c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf5575fb09ad4d04faaf7e1b0882be1d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d125cf362080d4a8cd47f832b3bcd28
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProjectComponentID"
        dbInteger "ColumnWidth" ="2760"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x05b34f2e5bc9c94bb507c17447eba413
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x83c65203f719064e8a326516f63eed51
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1056ba3abb14ac43aee660df6f1ea991
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7d8c596eac9c454d848d34a51caa784b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb2fe38459672004e9bd7734607c211e7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.HardProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa5116cc4242d0f4c9dc054cde8e6d036
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FSCProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x416ccd4ae5fbef45bdc56cb1b904981e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.FriendlyName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x87f1300f29ab7542922c7de9a5b1e7a8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x24f64059e828ed428a5f23f8d0e4c05e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FirstProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x802a8ec566ca374797b4bc32c5709e7f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x224756f2e2649a42adee94c36dea7560
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0af9c673258a084890b1b6b9790d4c2b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94896aced71a854cbf46ef651bbc1306
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea59ffe7777b364785afaeb5fd6324c0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe3e723f6de09844cb54f820e888de91c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.HardProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbcfe698334985b48ac753ff1f31500f9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FSCProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x77e27d4c1c24ea4e901d121351c96987
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x76f491c7e6c2e640933b596b7de6ccb3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ad15e8a521d9c4ca8135f60c99eb84c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.FileName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfad24a976faa814298f492886712df99
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.ProofRevision"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4daa02dbe97834bbd6b408795e653c9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Created"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4c03ec00a5679740a65749ad3f30ef1d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.CreatedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xad42674eee85c647811a409202fa4cc2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Sent"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2e7314230e8a647a2893b24188fe0a3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.SentBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8af2a80f96069f43a760129dac18bc58
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1dfe9855896663439dcfcc77c3ae5264
        End
    End
End
Begin
    State =0
    Left =55
    Top =52
    Right =1446
    Bottom =775
    Left =-1
    Top =-1
    Right =1359
    Bottom =439
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =350
        Top =16
        Right =577
        Bottom =334
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =635
        Top =4
        Right =951
        Bottom =330
        Top =0
        Name ="dbo_ProjectComponentProof"
        Name =""
    End
    Begin
        Left =37
        Top =18
        Right =313
        Bottom =324
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =999
        Top =12
        Right =1143
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
