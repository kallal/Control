Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectHeader.projectst"
    "atusid)<=30) AND ((Left([StPrepress],4))<>\"COMP\" Or (Left([StPrepress],4))=\"N"
    "OT REQ'D\")) OR (((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHe"
    "ader.Void)=False) AND ((dbo_ProjectHeader.projectstatusid)<=30) AND ((Left([StPr"
    "epress],4))<>\"COMP\" Or (Left([StPrepress],4))=\"NOT REQ'D\") AND ((dbo_Project"
    "Header.KeepInProductionYN)=True))"
Begin InputTables
    Name ="dbo_ProjectComponentPrepress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectComponentPress"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPrepress.ID"
    Expression ="dbo_ProjectComponentPrepress.ProjectComponentID"
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
    Alias ="PlatedBy"
    Expression ="Format(fncWorkday([ArtArrivedDate],[DYPrepress]),\"mmm d\")"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.projectstatusid"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Alias ="myPrePressDate"
    Expression ="fncWorkday(IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz("
        "[dyBindery],0)+Nz([dyOutsideSrv],0)))),-1)"
    Expression ="dbo_ProjectComponentPress.PressDateExp"
    Alias ="myPressDate"
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz([dyBindery]"
        ",0)+Nz([dyOutsideSrv],0))))"
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
    LeftTable ="dbo_ProjectComponentPrepress"
    RightTable ="dbo_ProjectComponentPress"
    Expression ="dbo_ProjectComponentPrepress.ProjectComponentID = dbo_ProjectComponentPress.Proj"
        "ectComponentID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000031cd7ae343a06f4e947a4d021bf7407900000000fea056b8 ,
    0x78c6e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500700072006500 ,
    0x73007300000000000000d2d381ba93398a4283a6a9ed80a7b4be0000000047bd ,
    0x30b878c6e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720000000000000035f87d9f0b136040ad3c2851f16d2a80000000001f0773b8 ,
    0x78c6e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a1000000004d8c52b778c6e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x00001ff48b4b7bbd39459517fa849aa377040000000000545db878c6e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e00740050007200650073007300000000000000d9c9 ,
    0xa9d2480a634d8a42f103de9e2af7070000000000000000000000000000000000 ,
    0x0000490073005200750073006800000000000000778be358c2d07f429df161ba ,
    0x06e3402d0700000000000000000000000000000000000000530075006d004f00 ,
    0x660054006f00740061006c0048006f007500720073000000000000003d9e8c1a ,
    0x2541a34e85a6419a23b86efc0700000000000000000000000000000000000000 ,
    0x50006c006100740065006400420079000000000000006cd034e1254253419491 ,
    0x5d1347fcaec60700000000000000000000000000000000000000440075006500 ,
    0x440061007400650000000000000030adda0273cfdb499ca4292586827ba30700 ,
    0x0000000000000000000000000000000000006d00790050007200650050007200 ,
    0x65007300730044006100740065000000000000001e8d8a77ff02664398b43fbc ,
    0xd4b7a06907000000000000000000000000000000000000006d00790050007200 ,
    0x6500730073004400610074006500000000000000f17c7fe93bbcb045b61b3332 ,
    0x729d515e0700000031cd7ae343a06f4e947a4d021bf740794900440000000000 ,
    0x0000c31e4efad55c574aad9cce13d02d3f790700000031cd7ae343a06f4e947a ,
    0x4d021bf74079500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e007400490044000000000000000d7f86d152139e4482b44608eb0af6bc ,
    0x0700000031cd7ae343a06f4e947a4d021bf740795300650074004e0065007700 ,
    0x59004e00000000000000892ca5b9316dd849b1a8dcc42fcbb1a30700000031cd ,
    0x7ae343a06f4e947a4d021bf7407954007900700065004300680061006e006700 ,
    0x6500730059004e00000000000000ec991703efb3cf44a86f4f5e43381bed0700 ,
    0x000031cd7ae343a06f4e947a4d021bf74079500072006500700059004e000000 ,
    0x00000000c7511730b84a93428a76d1f6544bdfb70700000031cd7ae343a06f4e ,
    0x947a4d021bf740795300740061006e00640069006e0067005200650069006d00 ,
    0x70006f0059004e0000000000000076465d558ad9fa489ba08f210e1d19dd0700 ,
    0x000031cd7ae343a06f4e947a4d021bf740794500780061006300740052006500 ,
    0x700065006100740059004e000000000000008f955f78f6508a4c974124af72e2 ,
    0x144b0700000031cd7ae343a06f4e947a4d021bf7407941007200740045006d00 ,
    0x610069006c0059004e00000000000000352a2aba4de0f6478d058ff893fb91e1 ,
    0x0700000031cd7ae343a06f4e947a4d021bf74079410072007400440069007300 ,
    0x6b0059004e000000000000003a6c47f9b29e3441a82028c702a27afa07000000 ,
    0x31cd7ae343a06f4e947a4d021bf7407941007200740046005400500059004e00 ,
    0x000000000000e42206a23c44d045871e2a78644dafc40700000031cd7ae343a0 ,
    0x6f4e947a4d021bf74079500072006f006f00660050004400460059004e000000 ,
    0x00000000a4fa2131e087584facfbf923601ee44f0700000031cd7ae343a06f4e ,
    0x947a4d021bf74079500072006f006f0066004c00610073006500720059004e00 ,
    0x00000000000094341aaf4d010549b913eb848bc57ea60700000031cd7ae343a0 ,
    0x6f4e947a4d021bf74079500072006f006f00660049006e006400690067006f00 ,
    0x59004e000000000000006ae7767424a5744e80084d780ebe6e490700000031cd ,
    0x7ae343a06f4e947a4d021bf74079500072006f006f00660050006c006f007400 ,
    0x74006500720059004e00000000000000b620c38933213546ad8bfb58104722f9 ,
    0x0700000031cd7ae343a06f4e947a4d021bf74079500072006f006f0066004300 ,
    0x6f006e007400720061006300740059004e00000000000000fb48526146a84a4d ,
    0xbf62b23d8ef11b440700000031cd7ae343a06f4e947a4d021bf7407950007200 ,
    0x6f006f00660054006f0000000000000099407d9d6aa74b489d98c64e2cf76af3 ,
    0x0700000031cd7ae343a06f4e947a4d021bf74079500072006f006f0066005200 ,
    0x6500710042007900000000000000ad70a78c8da0a34ea1a80627e4fc3dda0700 ,
    0x000031cd7ae343a06f4e947a4d021bf74079500072006f006f00660044006500 ,
    0x6c0042007900000000000000082d846d0665984399b61050fb60e31707000000 ,
    0x31cd7ae343a06f4e947a4d021bf740794e006f00740065007300000000000000 ,
    0x9eba933f0a8b134a81ad20477dba4add0700000031cd7ae343a06f4e947a4d02 ,
    0x1bf740794900730045006e00610062006c0065006400000000000000b9ff2175 ,
    0x6cda8c4b9bf238c9e9ec63e40700000031cd7ae343a06f4e947a4d021bf74079 ,
    0x4900730043006f006d0070006c00650074006500000000000000ae31b4b33e87 ,
    0x3b4bb3ab8d71e0dc27420700000031cd7ae343a06f4e947a4d021bf740794e00 ,
    0x75006d004c00610079006f0075007400000000000000374dfa69e80bb547823a ,
    0x5c7f653eb7670700000031cd7ae343a06f4e947a4d021bf740794e0075006d00 ,
    0x50006c006100740065000000000000002042568302f48b4d89eb4ba2abddca73 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a0065006300 ,
    0x7400480065006100640065007200490044000000000000002ec1cc8ae91cb541 ,
    0xb85d1edb0463fc7f0700000035f87d9f0b136040ad3c2851f16d2a8043006f00 ,
    0x6d00700061006e00790049004400000000000000fde2928bbc55824d8e33fcf8 ,
    0xa8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d007000 ,
    0x4e0061006d006500000000000000d0b1539c9f7bfc439d9435b3dda929d50700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80510075006f00740065004e007500 ,
    0x6d00000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074004e0075006d000000 ,
    0x000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8049006e0076006f006900630065004e0075006d0000000000 ,
    0x0000a50f2c519c3b6341a4a9c550ee3d1f3907000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be5300740050007200650070007200650073007300000000000000 ,
    0xe84040dfa768474680a2782dc10e186f07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4d004800500072006500700072006500730073000000000000005c90 ,
    0xb798aa47ab459c1716da6c77396207000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006f006600530065006e007400440061007400650000000000 ,
    0x000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006f006f00660041007000700072006f00760065006400 ,
    0x440061007400650000000000000036c416abbe03c14ba648e2d2a6710c0d0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4400590050007200650070007200 ,
    0x650073007300000000000000d6c60e3e1c864e4c91229495e3751c7107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be41007200740045007800700065006300 ,
    0x7400650064004400610074006500000000000000a0733058dc273a468b1af7e6 ,
    0xc66c844607000000d2d381ba93398a4283a6a9ed80a7b4be4100720074004100 ,
    0x7200720069007600650064004400610074006500000000000000a084f8da1e4f ,
    0x1342b1fae6042c102b9a07000000d2d381ba93398a4283a6a9ed80a7b4be4100 ,
    0x73007300690067006e0065006400440075006500440061007400650000000000 ,
    0x0000d9c1524eae16e7439791b1c28f640d8107000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be5300700065006300690066006900650064004400750065004400 ,
    0x610074006500000000000000c4583128db72324389f00cb2ee7b136907000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d00610069006c004100700070007200 ,
    0x6f00760061006c0052006500710075006900720065006400000000000000e043 ,
    0x79333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8056006f0069006400000000000000e7a1c7c3e0748146a24476571a893093 ,
    0x0700000031cd7ae343a06f4e947a4d021bf740795000720069006f0072006900 ,
    0x740079000000000000008265226ce5165f4597f9cda188898d960700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8043006f006e00740061006300740047006500 ,
    0x6e006500720061006c0049004400000000000000b19777ae0f57ea4293cb5332 ,
    0x053705e107000000d2d381ba93398a4283a6a9ed80a7b4be49006e0050006c00 ,
    0x61006e006e0069006e006700000000000000a21dc4fed47c244fa08fb5209ebb ,
    0xfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f00 ,
    0x6e0065006e0074004e0061006d0065000000000000006b8100b18f7ba34aa3c5 ,
    0x9fda19a111ed0700000035f87d9f0b136040ad3c2851f16d2a80700072006f00 ,
    0x6a0065006300740073007400610074007500730069006400000000000000a7e5 ,
    0xcd913689b745b8b11323a11cf3f0070000001ff48b4b7bbd39459517fa849aa3 ,
    0x7704700072006500730073006400610074006500650078007000000000000000 ,
    0x5de3afceffee604bb48d2533e48439fd07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be64007900420069006e006400650072007900000000000000fb7f59af ,
    0x3141d84d8ecd1e922c02fcee07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x640079004f007500740073006900640065005300720076000000000000002955 ,
    0x6c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4900440000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80490044000000000000001fc238e44765 ,
    0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
    0x4400000000000000e19fd78d6de8f042912e16a0f4718a30070000001ff48b4b ,
    0x7bbd39459517fa849aa37704500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e007400490044000000000000007398ac0669261c43a6ab ,
    0x19abf6ccf39d0700000035f87d9f0b136040ad3c2851f16d2a804b0065006500 ,
    0x700049006e00500072006f00640075006300740069006f006e0059004e000000 ,
    0x00000000fa99ba84b6e6d24e9b7316872e0c65fb000000004c22e84d79c6e440 ,
    0x0000000000000000710072007900500072006500700072006500730073005300 ,
    0x630068006500640075006c006500000000000000cc399d9f74eef6458ff0f5b5 ,
    0x63ad092407000000fa99ba84b6e6d24e9b7316872e0c65fb44006f0063006b00 ,
    0x650074004e0075006d0000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
dbMemo "OrderBy" ="[qryPrepressSchedule].[DocketNum] DESC"
dbBinary "GUID" = Begin
    0xc861b3db9bfcb144ba5fb547c1646ce4
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
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="Expr1032"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PlatedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d9e8c1a2541a34e85a6419a23b86efc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.projectstatusid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cd034e12542534194915d1347fcaec6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPressDate"
        dbInteger "ColumnWidth" ="2625"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e8d8a77ff02664398b43fbcd4b7a069
        End
    End
    Begin
        dbText "Name" ="myPrePressDate"
        dbInteger "ColumnWidth" ="2625"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30adda0273cfdb499ca4292586827ba3
        End
    End
End
Begin
    State =0
    Left =-4
    Top =30
    Right =1495
    Bottom =832
    Left =-1
    Top =-1
    Right =1467
    Bottom =430
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
        Left =407
        Top =13
        Right =588
        Bottom =114
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
    Begin
        Left =388
        Top =258
        Right =793
        Bottom =472
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
End
