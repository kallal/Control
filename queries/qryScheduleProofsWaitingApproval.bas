Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectComponentHeader.ProofSentDate) Is Not Null) AND ((dbo"
    "_ProjectComponentHeader.ArtArrivedDate) Is Not Null) AND ((dbo_ProjectHeader.Voi"
    "d)=False) AND ((dbo_ProjectComponentHeader.ProofApprovedDate) Is Null) AND ((dbo"
    "_ProjectHeader.projectstatusid)<=30) AND ((Left([StPrepress],4))<>\"COMP\"))"
Begin InputTables
    Name ="dbo_ProjectComponentPrepress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPrepress.ID"
    Expression ="dbo_ProjectComponentPrepress.ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentPrepress.SetNewYN"
    Expression ="dbo_ProjectComponentPrepress.TypeChangesYN"
    Expression ="dbo_ProjectComponentPrepress.PrepYN"
    Expression ="dbo_ProjectComponentPrepress.StandingReimpoYN"
    Expression ="dbo_ProjectComponentPrepress.ExactRepeatYN"
    Expression ="dbo_ProjectComponentPrepress.ArtEmailYN"
    Expression ="dbo_ProjectComponentPrepress.ArtDiskYN"
    Expression ="dbo_ProjectComponentPrepress.ArtFTPYN"
    Expression ="dbo_ProjectComponentPrepress.ProofPDFYN"
    Expression ="dbo_ProjectComponentPrepress.ProofLaserYN"
    Expression ="dbo_ProjectComponentPrepress.ProofIndigoYN"
    Expression ="dbo_ProjectComponentPrepress.ProofPlotterYN"
    Expression ="dbo_ProjectComponentPrepress.ProofContractYN"
    Expression ="dbo_ProjectComponentPrepress.ProofTo"
    Expression ="dbo_ProjectComponentPrepress.ProofReqBy"
    Expression ="dbo_ProjectComponentPrepress.ProofDelBy"
    Expression ="dbo_ProjectComponentPrepress.Notes"
    Expression ="dbo_ProjectComponentPrepress.IsEnabled"
    Expression ="dbo_ProjectComponentPrepress.IsComplete"
    Expression ="dbo_ProjectComponentPrepress.NumLayout"
    Expression ="dbo_ProjectComponentPrepress.NumPlate"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.CompanyID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectComponentHeader.StStock"
    Expression ="dbo_ProjectComponentHeader.StPrepress"
    Expression ="dbo_ProjectComponentHeader.MHPrepress"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.DYPrepress"
    Expression ="dbo_ProjectComponentHeader.ArtExpectedDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.MailApprovalRequired"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Alias ="IsRush"
    Expression ="IIf(Nz([specifiedduedate],0)>0 And [specifiedduedate]<=[assignedduedate],True,Fa"
        "lse)"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentPrepress.Priority"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectComponentHeader.InPlanning"
    Alias ="SumOfTotalHours"
    Expression ="DLookUp(\"sumoftotaltime\",\"qryPrepressScheduleHoursSoFar\",\"[ProjectComponent"
        "HeaderID] = \" & [dbo_projectComponentPrepress].[projectComponentid])"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="SalesRep"
    Expression ="DLookUp(\"FN\",\"dbo_CompanyEmployee\",\"[ID] = \" & [dbo_ProjectHeader]![SalesR"
        "epID])"
    Alias ="CSR"
    Expression ="DLookUp(\"FN\",\"dbo_CompanyEmployee\",\"[ID] = \" & [dbo_ProjectHeader]![CsrID]"
        ")"
    Expression ="dbo_ProjectHeader.projectstatusid"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPrepress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPrepress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
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
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0xcbcb26d7b094c84f87fab536b61c37a2
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000080430d93ec5f3f4882e13b3d5d33bf0100000000dafe95f5 ,
    0xee62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500700072006500 ,
    0x730073000000000000000e7a128852f41a47b128e4f3b41e4fb4000000002043 ,
    0x8cf5ee62e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x7200000000000000fe926418f32ed843874a57f371c555c7000000002505a0f5 ,
    0xee62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b9000000002a7d5df5ee62e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x00006babbd308a80ea4b9aebd7afc412e92707000000cbcb26d7b094c84f87fa ,
    0xb536b61c37a24400750065004400610074006500000000000000d9c9a9d2480a ,
    0x634d8a42f103de9e2af707000000cbcb26d7b094c84f87fab536b61c37a24900 ,
    0x73005200750073006800000000000000778be358c2d07f429df161ba06e3402d ,
    0x07000000cbcb26d7b094c84f87fab536b61c37a2530075006d004f0066005400 ,
    0x6f00740061006c0048006f00750072007300000000000000f3405402bea48445 ,
    0xb9136f91388e514007000000cbcb26d7b094c84f87fab536b61c37a253006100 ,
    0x6c00650073005200650070000000000000004b1bb58f9e5c2c41aa21adee997b ,
    0x6ddb07000000cbcb26d7b094c84f87fab536b61c37a243005300520000000000 ,
    0x00005d9f967830eafd41baba2b292bae0fb10700000080430d93ec5f3f4882e1 ,
    0x3b3d5d33bf01490044000000000000007be17a4476eb264da4444add33d05521 ,
    0x0700000080430d93ec5f3f4882e13b3d5d33bf01500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400490044000000000000003c3a ,
    0x0e9cef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb443006f006d0070006f006e0065006e0074004e0061006d00650000000000 ,
    0x000069074c42a01611409f0fc492c8c5011b0700000080430d93ec5f3f4882e1 ,
    0x3b3d5d33bf015300650074004e006500770059004e000000000000000ecd45e8 ,
    0xce265f49af67c370629ad1f60700000080430d93ec5f3f4882e13b3d5d33bf01 ,
    0x54007900700065004300680061006e0067006500730059004e00000000000000 ,
    0x906f4b1e8651344d95504faa4fde161a0700000080430d93ec5f3f4882e13b3d ,
    0x5d33bf01500072006500700059004e0000000000000039074a8f1174db4da188 ,
    0xa0f4e952f45b0700000080430d93ec5f3f4882e13b3d5d33bf01530074006100 ,
    0x6e00640069006e0067005200650069006d0070006f0059004e00000000000000 ,
    0xd91c21dc0c06584f93dd6b554f8393c50700000080430d93ec5f3f4882e13b3d ,
    0x5d33bf014500780061006300740052006500700065006100740059004e000000 ,
    0x0000000007c80bbf3507124082b2ffc30332d3bc0700000080430d93ec5f3f48 ,
    0x82e13b3d5d33bf0141007200740045006d00610069006c0059004e0000000000 ,
    0x0000bedea11c37777345a1b138e2d3af70e80700000080430d93ec5f3f4882e1 ,
    0x3b3d5d33bf014100720074004400690073006b0059004e0000000000000011c4 ,
    0x443fa09df34c9c88c7bc0ca825510700000080430d93ec5f3f4882e13b3d5d33 ,
    0xbf0141007200740046005400500059004e000000000000009a726a7740687e4c ,
    0x98d4a0b42b22dd830700000080430d93ec5f3f4882e13b3d5d33bf0150007200 ,
    0x6f006f00660050004400460059004e000000000000000cbb5979a137124aada1 ,
    0x126306d4eb590700000080430d93ec5f3f4882e13b3d5d33bf01500072006f00 ,
    0x6f0066004c00610073006500720059004e00000000000000c603cff324eea443 ,
    0x889472629b5f91e70700000080430d93ec5f3f4882e13b3d5d33bf0150007200 ,
    0x6f006f00660049006e006400690067006f0059004e00000000000000b3777ecb ,
    0x12295a4cac9ef26ec7d6605c0700000080430d93ec5f3f4882e13b3d5d33bf01 ,
    0x500072006f006f00660050006c006f00740074006500720059004e0000000000 ,
    0x0000dfe9a8afda20ad429e3e2caf4718cf050700000080430d93ec5f3f4882e1 ,
    0x3b3d5d33bf01500072006f006f00660043006f006e0074007200610063007400 ,
    0x59004e0000000000000037cf028919a41c4db024d9d3e9b4c470070000008043 ,
    0x0d93ec5f3f4882e13b3d5d33bf01500072006f006f00660054006f0000000000 ,
    0x0000541528d7ae2642448b8a4f4058da50390700000080430d93ec5f3f4882e1 ,
    0x3b3d5d33bf01500072006f006f00660052006500710042007900000000000000 ,
    0x7d79f373b3daef4b91cc1e5d6751eca80700000080430d93ec5f3f4882e13b3d ,
    0x5d33bf01500072006f006f006600440065006c00420079000000000000003c30 ,
    0xe2f6f7006240982b2ad797adc24c0700000080430d93ec5f3f4882e13b3d5d33 ,
    0xbf014e006f0074006500730000000000000043f3607924659e40b5ba03bf4730 ,
    0x28670700000080430d93ec5f3f4882e13b3d5d33bf014900730045006e006100 ,
    0x62006c0065006400000000000000ad70bfc0dc111544bd072de8044047d80700 ,
    0x000080430d93ec5f3f4882e13b3d5d33bf014900730043006f006d0070006c00 ,
    0x650074006500000000000000cc766217492d244b9c2dd6939d29c7f207000000 ,
    0x80430d93ec5f3f4882e13b3d5d33bf014e0075006d004c00610079006f007500 ,
    0x7400000000000000a60ff37080143c42ab0d7cd5cd3620d30700000080430d93 ,
    0xec5f3f4882e13b3d5d33bf014e0075006d0050006c0061007400650000000000 ,
    0x0000873fed1bdd4daf46b59105d9e5c28c31070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4500072006f006a00650063007400480065006100640065007200 ,
    0x490044000000000000003dac0047d3113342ab825d63a065d2b507000000fe92 ,
    0x6418f32ed843874a57f371c555c743006f006d00700061006e00790049004400 ,
    0x000000000000124b02a694dd0e4c96264abff258312707000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b943006f006d0070004e0061006d006500000000000000 ,
    0x69785be96a31f94d959e3e736aa5db0207000000fe926418f32ed843874a57f3 ,
    0x71c555c7510075006f00740065004e0075006d00000000000000d9cb95bb9ff0 ,
    0xb84fa39eeda5976282d607000000fe926418f32ed843874a57f371c555c74400 ,
    0x6f0063006b00650074004e0075006d00000000000000bb0ae340649d1049aae8 ,
    0xec4ebde6085c07000000fe926418f32ed843874a57f371c555c749006e007600 ,
    0x6f006900630065004e0075006d000000000000001ebba2150c013742aa56bff8 ,
    0x9bda9179070000000e7a128852f41a47b128e4f3b41e4fb45300740053007400 ,
    0x6f0063006b00000000000000c1876f97fff14c42aa536b9f96f3acbd07000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb453007400500072006500700072006500 ,
    0x73007300000000000000e777fa7319e13f4fb4f07cf2fa595a9d070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb44d0048005000720065007000720065007300 ,
    0x7300000000000000634027e63b69c14c8d8a18cfebb340f0070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4500072006f006f006600530065006e0074004400 ,
    0x6100740065000000000000009663a2b3f469e74384b7fdcf57d349e807000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb4500072006f006f006600410070007000 ,
    0x72006f007600650064004400610074006500000000000000f77b44268d16cf4b ,
    0xb68a24a27d5f27c8070000000e7a128852f41a47b128e4f3b41e4fb444005900 ,
    0x50007200650070007200650073007300000000000000717e39111eca6347b572 ,
    0x09c2ea15cddc070000000e7a128852f41a47b128e4f3b41e4fb4410072007400 ,
    0x450078007000650063007400650064004400610074006500000000000000510e ,
    0x420f3ce318458e4a83187ceafcd5070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4410072007400410072007200690076006500640044006100740065000000 ,
    0x000000009034f5093d684d4493441af67c602460070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4410073007300690067006e00650064004400750065004400 ,
    0x610074006500000000000000e41b349e809836428a33efa5925ec82d07000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb453007000650063006900660069006500 ,
    0x64004400750065004400610074006500000000000000ce60f0117b1f14459b7c ,
    0x2040684ea798070000000e7a128852f41a47b128e4f3b41e4fb44d0061006900 ,
    0x6c0041007000700072006f00760061006c005200650071007500690072006500 ,
    0x640000000000000081751aaa23f69a40a072b77523cc41aa07000000fe926418 ,
    0xf32ed843874a57f371c555c756006f006900640000000000000048da5107e57e ,
    0xf442bf98e796b6a732da0700000080430d93ec5f3f4882e13b3d5d33bf015000 ,
    0x720069006f00720069007400790000000000000089ff919c8c2cb04795bac03a ,
    0xdb54784507000000fe926418f32ed843874a57f371c555c743006f006e007400 ,
    0x610063007400470065006e006500720061006c00490044000000000000009a24 ,
    0xb4536fc29149b186802afdd4673f070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb449006e0050006c0061006e006e0069006e00670000000000000023f6fcc7 ,
    0x7666d448823b90b11d10e84007000000fe926418f32ed843874a57f371c555c7 ,
    0x530061006c006500730052006500700049004400000000000000f1ee1b4eb71b ,
    0xed44b484e51d9518382207000000fe926418f32ed843874a57f371c555c74300 ,
    0x7300720049004400000000000000673d52f2b5bccc4d948b1dfe92c904e00700 ,
    0x0000fe926418f32ed843874a57f371c555c7700072006f006a00650063007400 ,
    0x73007400610074007500730069006400000000000000118be950d66974438268 ,
    0xddc04c06af1a070000000e7a128852f41a47b128e4f3b41e4fb4490044000000 ,
    0x000000006f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843 ,
    0x874a57f371c555c74900440000000000000003933b4b9f324445a82e368651b1 ,
    0x052b07000000d7c549c33168bc4ab70151c855c0b6b949004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.SetNewYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa30777490ad46b419f095275939d4a8f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.TypeChangesYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x05bbc544d16e7f408549441ea63b469b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ArtEmailYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d901a08b98f8342a51801d5cf327500
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofPlotterYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfbb43913f962dc449ff6777ab40c9a4f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofTo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa267b8153731b24f92978acf00b567fa
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofReqBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf26eaea65217ee43bebbf1111b0cb9d8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19a7128785a9d4498c734ea0d60e668f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcc399d9f74eef6458ff0f5b563ad0924
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ExactRepeatYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0299358244583c42b0dc7d595982f64d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofIndigoYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b884c4a161dd0498bf4e9494ccef691
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x75c904383ba8bf46bf9af87bc9615c9f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofLaserYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2835b3520d57e64986897568f31d66eb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofContractYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf389be482cebaf4f8fb3701d2534bcfb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe6688fdfbc4df047876e879600b31f1b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.NumLayout"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2a1c32eda95af54499adde7697fe74e8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.NumPlate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x077938ef76a0d949a2e50548df70e5c8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d60c4174ee61f4eb85431f0250d2d61
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x90cccf2f46d84640a2989df6dfe25c16
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8941374ae06157428dc416006a5680cd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf03cdeb355cd8f4a9904123157494175
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x51a5afad2b63464d8c63b0268ad23516
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.PrepYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2260fa17abd5764e91ab3033285720a2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.StandingReimpoYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56e88d44af84954bbb20194bdbe2432a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ArtDiskYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe2b614cb0c0b5741b5b26058ab368a48
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ArtFTPYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd545a6cc8a022445bc0f550eb82bf710
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofPDFYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x72087cce3ef662429df37590720cbce0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.ProofDelBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbde17b95e3d64442859e109c02c2f0a4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.IsEnabled"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x52c97eab847b4d41a24d38783d55a048
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.IsComplete"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd5ed252a97979948b70d1f261a8630a2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6babbd308a80ea4b9aebd7afc412e927
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd9c9a9d2480a634d8a42f103de9e2af7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPrepress.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.InPlanning"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfTotalHours"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x778be358c2d07f429df161ba06e3402d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1034"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3405402bea48445b9136f91388e5140
        End
    End
    Begin
        dbText "Name" ="CSR"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4b1bb58f9e5c2c41aa21adee997b6ddb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.projectstatusid"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =45
    Top =102
    Right =1465
    Bottom =904
    Left =-1
    Top =-1
    Right =1388
    Bottom =468
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =352
        Bottom =520
        Top =0
        Name ="dbo_ProjectComponentPrepress"
        Name =""
    End
    Begin
        Left =400
        Top =12
        Right =595
        Bottom =383
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =622
        Top =16
        Right =1293
        Bottom =248
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =911
        Top =280
        Right =1259
        Bottom =540
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
