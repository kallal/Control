Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectComponentHeader.ArtArrivedDate) Is Null) AND ((dbo_Pr"
    "ojectHeader.Void)=False) AND ((dbo_ProjectHeader.projectstatusid)<=30) AND ((Lef"
    "t([StPrepress],4))<>\"COMP\"))"
Begin InputTables
    Name ="dbo_ProjectComponentPrepress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyLocation"
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
    Alias ="SALESREP"
    Expression ="DLookUp(\"[FN]\",\"DBO_COMPANYEMPLOYEE\",\"[ID] = \" & [DBO_PROJECThEADER]![sALE"
        "SrEPid])"
    Expression ="dbo_ProjectHeader.projectstatusid"
    Alias ="WorkHrs"
    Expression ="Nz([mhPrepress],0)+Nz([mhCreative],0)"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.PONumber"
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
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
dbBinary "GUID" = Begin
    0x6de3351e110bb0418339135571b0a67f
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000031cd7ae343a06f4e947a4d021bf74079000000003d6c4a89 ,
    0xd3cfe4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500700072006500 ,
    0x73007300000000000000d2d381ba93398a4283a6a9ed80a7b4be000000004a01 ,
    0x4189d3cfe4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720000000000000035f87d9f0b136040ad3c2851f16d2a8000000000278a5589 ,
    0xd3cfe4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a1000000003d9c0f89d3cfe4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000f0a07a545f8a6448b11bd6a1031b20d10000000003bf0c89d3cfe4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e0079004c006f00 ,
    0x63006100740069006f006e000000000000006babbd308a80ea4b9aebd7afc412 ,
    0xe927070000006de3351e110bb0418339135571b0a67f44007500650044006100 ,
    0x74006500000000000000d9c9a9d2480a634d8a42f103de9e2af7070000006de3 ,
    0x351e110bb0418339135571b0a67f490073005200750073006800000000000000 ,
    0x778be358c2d07f429df161ba06e3402d070000006de3351e110bb04183391355 ,
    0x71b0a67f530075006d004f00660054006f00740061006c0048006f0075007200 ,
    0x73000000000000005bbd0e9948a6d84da5ae97933dc77568070000006de3351e ,
    0x110bb0418339135571b0a67f530041004c004500530052004500500000000000 ,
    0x000074b2a843dca4284facc8504919be8b1d070000006de3351e110bb0418339 ,
    0x135571b0a67f57006f0072006b00480072007300000000000000f17c7fe93bbc ,
    0xb045b61b3332729d515e0700000031cd7ae343a06f4e947a4d021bf740794900 ,
    0x4400000000000000c31e4efad55c574aad9cce13d02d3f790700000031cd7ae3 ,
    0x43a06f4e947a4d021bf74079500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e00740049004400000000000000a21dc4fed47c244fa08f ,
    0xb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d00 ,
    0x70006f006e0065006e0074004e0061006d0065000000000000000d7f86d15213 ,
    0x9e4482b44608eb0af6bc0700000031cd7ae343a06f4e947a4d021bf740795300 ,
    0x650074004e006500770059004e00000000000000892ca5b9316dd849b1a8dcc4 ,
    0x2fcbb1a30700000031cd7ae343a06f4e947a4d021bf740795400790070006500 ,
    0x4300680061006e0067006500730059004e00000000000000ec991703efb3cf44 ,
    0xa86f4f5e43381bed0700000031cd7ae343a06f4e947a4d021bf7407950007200 ,
    0x6500700059004e00000000000000c7511730b84a93428a76d1f6544bdfb70700 ,
    0x000031cd7ae343a06f4e947a4d021bf740795300740061006e00640069006e00 ,
    0x67005200650069006d0070006f0059004e0000000000000076465d558ad9fa48 ,
    0x9ba08f210e1d19dd0700000031cd7ae343a06f4e947a4d021bf7407945007800 ,
    0x61006300740052006500700065006100740059004e000000000000008f955f78 ,
    0xf6508a4c974124af72e2144b0700000031cd7ae343a06f4e947a4d021bf74079 ,
    0x41007200740045006d00610069006c0059004e00000000000000352a2aba4de0 ,
    0xf6478d058ff893fb91e10700000031cd7ae343a06f4e947a4d021bf740794100 ,
    0x720074004400690073006b0059004e000000000000003a6c47f9b29e3441a820 ,
    0x28c702a27afa0700000031cd7ae343a06f4e947a4d021bf74079410072007400 ,
    0x46005400500059004e00000000000000e42206a23c44d045871e2a78644dafc4 ,
    0x0700000031cd7ae343a06f4e947a4d021bf74079500072006f006f0066005000 ,
    0x4400460059004e00000000000000a4fa2131e087584facfbf923601ee44f0700 ,
    0x000031cd7ae343a06f4e947a4d021bf74079500072006f006f0066004c006100 ,
    0x73006500720059004e0000000000000094341aaf4d010549b913eb848bc57ea6 ,
    0x0700000031cd7ae343a06f4e947a4d021bf74079500072006f006f0066004900 ,
    0x6e006400690067006f0059004e000000000000006ae7767424a5744e80084d78 ,
    0x0ebe6e490700000031cd7ae343a06f4e947a4d021bf74079500072006f006f00 ,
    0x660050006c006f00740074006500720059004e00000000000000b620c3893321 ,
    0x3546ad8bfb58104722f90700000031cd7ae343a06f4e947a4d021bf740795000 ,
    0x72006f006f00660043006f006e007400720061006300740059004e0000000000 ,
    0x0000fb48526146a84a4dbf62b23d8ef11b440700000031cd7ae343a06f4e947a ,
    0x4d021bf74079500072006f006f00660054006f0000000000000099407d9d6aa7 ,
    0x4b489d98c64e2cf76af30700000031cd7ae343a06f4e947a4d021bf740795000 ,
    0x72006f006f00660052006500710042007900000000000000ad70a78c8da0a34e ,
    0xa1a80627e4fc3dda0700000031cd7ae343a06f4e947a4d021bf7407950007200 ,
    0x6f006f006600440065006c0042007900000000000000082d846d0665984399b6 ,
    0x1050fb60e3170700000031cd7ae343a06f4e947a4d021bf740794e006f007400 ,
    0x650073000000000000009eba933f0a8b134a81ad20477dba4add0700000031cd ,
    0x7ae343a06f4e947a4d021bf740794900730045006e00610062006c0065006400 ,
    0x000000000000b9ff21756cda8c4b9bf238c9e9ec63e40700000031cd7ae343a0 ,
    0x6f4e947a4d021bf740794900730043006f006d0070006c006500740065000000 ,
    0x00000000ae31b4b33e873b4bb3ab8d71e0dc27420700000031cd7ae343a06f4e ,
    0x947a4d021bf740794e0075006d004c00610079006f0075007400000000000000 ,
    0x374dfa69e80bb547823a5c7f653eb7670700000031cd7ae343a06f4e947a4d02 ,
    0x1bf740794e0075006d0050006c006100740065000000000000002042568302f4 ,
    0x8b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x72006f006a006500630074004800650061006400650072004900440000000000 ,
    0x00002ec1cc8ae91cb541b85d1edb0463fc7f0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8043006f006d00700061006e00790049004400000000000000fde2 ,
    0x928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e0 ,
    0x22a143006f006d0070004e0061006d006500000000000000d0b1539c9f7bfc43 ,
    0x9d9435b3dda929d50700000035f87d9f0b136040ad3c2851f16d2a8051007500 ,
    0x6f00740065004e0075006d00000000000000749d4175d9cbb541b77414bf76f2 ,
    0xaa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b006500 ,
    0x74004e0075006d000000000000007da6a641b3cf604b95c0700a612b45850700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00690063006500 ,
    0x4e0075006d00000000000000d78c97c321bdff4cb11f574e44afadc007000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53007400530074006f0063006b000000 ,
    0x00000000a50f2c519c3b6341a4a9c550ee3d1f3907000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530074005000720065007000720065007300730000000000 ,
    0x0000e84040dfa768474680a2782dc10e186f07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4d00480050007200650070007200650073007300000000000000 ,
    0x5c90b798aa47ab459c1716da6c77396207000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006f006f006600530065006e00740044006100740065000000 ,
    0x0000000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006f006f00660041007000700072006f0076006500 ,
    0x6400440061007400650000000000000036c416abbe03c14ba648e2d2a6710c0d ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440059005000720065007000 ,
    0x7200650073007300000000000000d6c60e3e1c864e4c91229495e3751c710700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4100720074004500780070006500 ,
    0x63007400650064004400610074006500000000000000a0733058dc273a468b1a ,
    0xf7e6c66c844607000000d2d381ba93398a4283a6a9ed80a7b4be410072007400 ,
    0x41007200720069007600650064004400610074006500000000000000a084f8da ,
    0x1e4f1342b1fae6042c102b9a07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x410073007300690067006e006500640044007500650044006100740065000000 ,
    0x00000000d9c1524eae16e7439791b1c28f640d8107000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530070006500630069006600690065006400440075006500 ,
    0x4400610074006500000000000000c4583128db72324389f00cb2ee7b13690700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c00410070007000 ,
    0x72006f00760061006c0052006500710075006900720065006400000000000000 ,
    0xe04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8056006f0069006400000000000000e7a1c7c3e0748146a24476571a89 ,
    0x30930700000031cd7ae343a06f4e947a4d021bf740795000720069006f007200 ,
    0x6900740079000000000000008265226ce5165f4597f9cda188898d9607000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8043006f006e0074006100630074004700 ,
    0x65006e006500720061006c0049004400000000000000b19777ae0f57ea4293cb ,
    0x5332053705e107000000d2d381ba93398a4283a6a9ed80a7b4be49006e005000 ,
    0x6c0061006e006e0069006e00670000000000000040de5e7aec65a745aa86e7e9 ,
    0xe8cb55780700000035f87d9f0b136040ad3c2851f16d2a80730041004c004500 ,
    0x5300720045005000690064000000000000006b8100b18f7ba34aa3c59fda19a1 ,
    0x11ed0700000035f87d9f0b136040ad3c2851f16d2a80700072006f006a006500 ,
    0x6300740073007400610074007500730069006400000000000000ddd164036eb0 ,
    0x1f449febd79de5e8458b07000000d2d381ba93398a4283a6a9ed80a7b4be6d00 ,
    0x6800430072006500610074006900760065000000000000001c9b84855b8f264a ,
    0xbd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a8050007200 ,
    0x6f006a006500630074004e0061006d006500000000000000c2ae23dbc46de049 ,
    0x8a55893ecc1ea0130700000035f87d9f0b136040ad3c2851f16d2a8050004f00 ,
    0x4e0075006d0062006500720000000000000097f4d916639123478b4d0c4170d6 ,
    0x1ffb0700000035f87d9f0b136040ad3c2851f16d2a8043006f006d0070006100 ,
    0x6e0079004c006f0063006100740069006f006e004900440000000000000001d2 ,
    0xb706cee7ea48b9f4af0b27f2548007000000f0a07a545f8a6448b11bd6a1031b ,
    0x20d15200650070006f007200740043006f006c006f0072000000000000002955 ,
    0x6c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4900440000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80490044000000000000001fc238e44765 ,
    0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
    0x4400000000000000cfcb0f694dd678469d745c2d3c9b453407000000f0a07a54 ,
    0x5f8a6448b11bd6a1031b20d14900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
        dbInteger "ColumnWidth" ="2505"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="SALESREP"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5bbd0e9948a6d84da5ae97933dc77568
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.projectstatusid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="WorkHrs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x74b2a843dca4284facc8504919be8b1d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
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
    Left =84
    Top =118
    Right =1381
    Bottom =920
    Left =-1
    Top =-1
    Right =1265
    Bottom =350
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
        Right =878
        Bottom =346
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =973
        Top =9
        Right =1321
        Bottom =170
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =926
        Top =180
        Right =1070
        Bottom =324
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
