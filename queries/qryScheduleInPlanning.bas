Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectComponentHeader.StStock)=\"WAIT - PLAN\") AND ((dbo_P"
    "rojectHeader.Void)=False) AND ((dbo_ProjectHeader.projectstatusid)<=30)) OR (((d"
    "bo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum) Is "
    "Null) AND ((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectComponentHeader.InPl"
    "anning)=True))"
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
    0x33e44691bbef4044bf76e54a45eabdea
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000080430d93ec5f3f4882e13b3d5d33bf010000000008c2776f ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500700072006500 ,
    0x730073000000000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04 ,
    0xba6dec62e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x7200000000000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b900000000bad9a96dec62e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x00006babbd308a80ea4b9aebd7afc412e9270700000033e44691bbef4044bf76 ,
    0xe54a45eabdea4400750065004400610074006500000000000000d9c9a9d2480a ,
    0x634d8a42f103de9e2af70700000033e44691bbef4044bf76e54a45eabdea4900 ,
    0x73005200750073006800000000000000778be358c2d07f429df161ba06e3402d ,
    0x0700000033e44691bbef4044bf76e54a45eabdea530075006d004f0066005400 ,
    0x6f00740061006c0048006f007500720073000000000000005d9f967830eafd41 ,
    0xbaba2b292bae0fb10700000080430d93ec5f3f4882e13b3d5d33bf0149004400 ,
    0x0000000000007be17a4476eb264da4444add33d055210700000080430d93ec5f ,
    0x3f4882e13b3d5d33bf01500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e007400490044000000000000003c3a0e9cef0ad74dbd1042d7 ,
    0xc3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb443006f006d007000 ,
    0x6f006e0065006e0074004e0061006d00650000000000000069074c42a0161140 ,
    0x9f0fc492c8c5011b0700000080430d93ec5f3f4882e13b3d5d33bf0153006500 ,
    0x74004e006500770059004e000000000000000ecd45e8ce265f49af67c370629a ,
    0xd1f60700000080430d93ec5f3f4882e13b3d5d33bf0154007900700065004300 ,
    0x680061006e0067006500730059004e00000000000000906f4b1e8651344d9550 ,
    0x4faa4fde161a0700000080430d93ec5f3f4882e13b3d5d33bf01500072006500 ,
    0x700059004e0000000000000039074a8f1174db4da188a0f4e952f45b07000000 ,
    0x80430d93ec5f3f4882e13b3d5d33bf015300740061006e00640069006e006700 ,
    0x5200650069006d0070006f0059004e00000000000000d91c21dc0c06584f93dd ,
    0x6b554f8393c50700000080430d93ec5f3f4882e13b3d5d33bf01450078006100 ,
    0x6300740052006500700065006100740059004e0000000000000007c80bbf3507 ,
    0x124082b2ffc30332d3bc0700000080430d93ec5f3f4882e13b3d5d33bf014100 ,
    0x7200740045006d00610069006c0059004e00000000000000bedea11c37777345 ,
    0xa1b138e2d3af70e80700000080430d93ec5f3f4882e13b3d5d33bf0141007200 ,
    0x74004400690073006b0059004e0000000000000011c4443fa09df34c9c88c7bc ,
    0x0ca825510700000080430d93ec5f3f4882e13b3d5d33bf014100720074004600 ,
    0x5400500059004e000000000000009a726a7740687e4c98d4a0b42b22dd830700 ,
    0x000080430d93ec5f3f4882e13b3d5d33bf01500072006f006f00660050004400 ,
    0x460059004e000000000000000cbb5979a137124aada1126306d4eb5907000000 ,
    0x80430d93ec5f3f4882e13b3d5d33bf01500072006f006f0066004c0061007300 ,
    0x6500720059004e00000000000000c603cff324eea443889472629b5f91e70700 ,
    0x000080430d93ec5f3f4882e13b3d5d33bf01500072006f006f00660049006e00 ,
    0x6400690067006f0059004e00000000000000b3777ecb12295a4cac9ef26ec7d6 ,
    0x605c0700000080430d93ec5f3f4882e13b3d5d33bf01500072006f006f006600 ,
    0x50006c006f00740074006500720059004e00000000000000dfe9a8afda20ad42 ,
    0x9e3e2caf4718cf050700000080430d93ec5f3f4882e13b3d5d33bf0150007200 ,
    0x6f006f00660043006f006e007400720061006300740059004e00000000000000 ,
    0x37cf028919a41c4db024d9d3e9b4c4700700000080430d93ec5f3f4882e13b3d ,
    0x5d33bf01500072006f006f00660054006f00000000000000541528d7ae264244 ,
    0x8b8a4f4058da50390700000080430d93ec5f3f4882e13b3d5d33bf0150007200 ,
    0x6f006f006600520065007100420079000000000000007d79f373b3daef4b91cc ,
    0x1e5d6751eca80700000080430d93ec5f3f4882e13b3d5d33bf01500072006f00 ,
    0x6f006600440065006c00420079000000000000003c30e2f6f7006240982b2ad7 ,
    0x97adc24c0700000080430d93ec5f3f4882e13b3d5d33bf014e006f0074006500 ,
    0x730000000000000043f3607924659e40b5ba03bf473028670700000080430d93 ,
    0xec5f3f4882e13b3d5d33bf014900730045006e00610062006c00650064000000 ,
    0x00000000ad70bfc0dc111544bd072de8044047d80700000080430d93ec5f3f48 ,
    0x82e13b3d5d33bf014900730043006f006d0070006c0065007400650000000000 ,
    0x0000cc766217492d244b9c2dd6939d29c7f20700000080430d93ec5f3f4882e1 ,
    0x3b3d5d33bf014e0075006d004c00610079006f0075007400000000000000a60f ,
    0xf37080143c42ab0d7cd5cd3620d30700000080430d93ec5f3f4882e13b3d5d33 ,
    0xbf014e0075006d0050006c00610074006500000000000000873fed1bdd4daf46 ,
    0xb59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb450007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x3dac0047d3113342ab825d63a065d2b507000000fe926418f32ed843874a57f3 ,
    0x71c555c743006f006d00700061006e00790049004400000000000000124b02a6 ,
    0x94dd0e4c96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b9 ,
    0x43006f006d0070004e0061006d00650000000000000069785be96a31f94d959e ,
    0x3e736aa5db0207000000fe926418f32ed843874a57f371c555c7510075006f00 ,
    0x740065004e0075006d00000000000000d9cb95bb9ff0b84fa39eeda5976282d6 ,
    0x07000000fe926418f32ed843874a57f371c555c744006f0063006b0065007400 ,
    0x4e0075006d00000000000000bb0ae340649d1049aae8ec4ebde6085c07000000 ,
    0xfe926418f32ed843874a57f371c555c749006e0076006f006900630065004e00 ,
    0x75006d000000000000001ebba2150c013742aa56bff89bda9179070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb453007400530074006f0063006b0000000000 ,
    0x0000c1876f97fff14c42aa536b9f96f3acbd070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb45300740050007200650070007200650073007300000000000000 ,
    0xe777fa7319e13f4fb4f07cf2fa595a9d070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb44d004800500072006500700072006500730073000000000000006340 ,
    0x27e63b69c14c8d8a18cfebb340f0070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4500072006f006f006600530065006e007400440061007400650000000000 ,
    0x00009663a2b3f469e74384b7fdcf57d349e8070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4500072006f006f00660041007000700072006f00760065006400 ,
    0x4400610074006500000000000000f77b44268d16cf4bb68a24a27d5f27c80700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb44400590050007200650070007200 ,
    0x650073007300000000000000717e39111eca6347b57209c2ea15cddc07000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb441007200740045007800700065006300 ,
    0x7400650064004400610074006500000000000000510e420f3ce318458e4a8318 ,
    0x7ceafcd5070000000e7a128852f41a47b128e4f3b41e4fb44100720074004100 ,
    0x72007200690076006500640044006100740065000000000000009034f5093d68 ,
    0x4d4493441af67c602460070000000e7a128852f41a47b128e4f3b41e4fb44100 ,
    0x73007300690067006e0065006400440075006500440061007400650000000000 ,
    0x0000e41b349e809836428a33efa5925ec82d070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb45300700065006300690066006900650064004400750065004400 ,
    0x610074006500000000000000ce60f0117b1f14459b7c2040684ea79807000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb44d00610069006c004100700070007200 ,
    0x6f00760061006c00520065007100750069007200650064000000000000008175 ,
    0x1aaa23f69a40a072b77523cc41aa07000000fe926418f32ed843874a57f371c5 ,
    0x55c756006f006900640000000000000048da5107e57ef442bf98e796b6a732da ,
    0x0700000080430d93ec5f3f4882e13b3d5d33bf015000720069006f0072006900 ,
    0x7400790000000000000089ff919c8c2cb04795bac03adb54784507000000fe92 ,
    0x6418f32ed843874a57f371c555c743006f006e00740061006300740047006500 ,
    0x6e006500720061006c00490044000000000000009a24b4536fc29149b186802a ,
    0xfdd4673f070000000e7a128852f41a47b128e4f3b41e4fb449006e0050006c00 ,
    0x61006e006e0069006e006700000000000000673d52f2b5bccc4d948b1dfe92c9 ,
    0x04e007000000fe926418f32ed843874a57f371c555c7700072006f006a006500 ,
    0x6300740073007400610074007500730069006400000000000000118be950d669 ,
    0x74438268ddc04c06af1a070000000e7a128852f41a47b128e4f3b41e4fb44900 ,
    0x44000000000000006f7f02ef6df8574092eeeafb278f50ec07000000fe926418 ,
    0xf32ed843874a57f371c555c74900440000000000000003933b4b9f324445a82e ,
    0x368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b9490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
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
        dbInteger "ColumnWidth" ="1455"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =220
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
