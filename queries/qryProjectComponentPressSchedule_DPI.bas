Operation =1
Option =0
Begin InputTables
    Name ="viewProjectComponentPressLiveOnly"
    Name ="dbo_ProjectComponentStock"
    Name ="qryPrintRunPreReqStatus"
    Name ="dbo_ProjectHeader"
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Alias ="myPressDate"
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],#12/31/2099#)"
    Expression ="viewProjectComponentPressLiveOnly.*"
    Alias ="PaperDisplay"
    Expression ="IIf(Nz([viewProjectComponentPressLiveOnly].[OrderOption],0)=0,\"UNKNOWN\",IIf([v"
        "iewProjectComponentPressLiveOnly].[OrderOption]=3,\"INVENTORY\",Format(IIf([view"
        "ProjectComponentPressLiveOnly].[ArrivalDate],[viewProjectComponentPressLiveOnly]"
        ".[ArrivalDate],[viewProjectComponentPressLiveOnly].[ExpectedDate]),\"Medium Date"
        "\")))"
    Alias ="ProofDisplay"
    Expression ="IIf([HardProofSentDate],Format(IIf([HardProofApprovedDate],[HardProofApprovedDat"
        "e],[HardProofSentDate]),\"Medium Date\"),Format(IIf([ProofApprovedDate],[ProofAp"
        "provedDate],[ProofSentDate]),\"Medium Date\"))"
    Alias ="CMYKColors"
    Expression ="Nz([CYMKFront],0) & \"/\" & Nz([CYMKBack],0)"
    Alias ="PMSColors"
    Expression ="Nz([PMSFront],0) & \"/\" & Nz([PMSBack],0)"
    Alias ="MetallicColors"
    Expression ="Nz([MetallicFront],0) & \"/\" & Nz([MetallicBack],0)"
    Alias ="SSColors"
    Expression ="Nz([SpotSealFront],0) & \"/\" & Nz([SpotSealBack],0)"
    Alias ="Runsize"
    Expression ="[PaperXInch] & \" x \" & [PaperYInch]"
    Alias ="Finalsize"
    Expression ="[SizeXInch] & \" x \" & [SizeYInch]"
    Alias ="DueDate"
    Expression ="DateValue(IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],Nz([assignedduedate]"
        ",Date()+90)))"
    Alias ="ReadyToPrint"
    Expression ="IIf(([PROOFAPPROVEDDATE] Is Not Null Or [StPrepress]=\"NOT REQ'D\" Or [StPrepres"
        "s]=\"NOT REQD\") And ((viewProjectComponentPressLiveOnly.[ARRIVALDATE] Is Not Nu"
        "ll) Or (viewProjectComponentPressLiveOnly.[OrderOption]=3) Or (Nz(viewProjectCom"
        "ponentPressLiveOnly.[ORDEROPTION],0)=0)),True,False)"
    Alias ="myPriority"
    Expression ="Nz([Priority],99)"
    Alias ="Stock"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="viewProjectComponentPressLiveOnly.PrintRunPreReq"
    Alias ="PrintRunPreReqStatus"
    Expression ="qryPrintRunPreReqStatus.PrintJobStatus"
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
End
Begin Joins
    LeftTable ="viewProjectComponentPressLiveOnly"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="viewProjectComponentPressLiveOnly.ImpositionID = dbo_ProjectComponentStock.Impos"
        "itionID"
    Flag =2
    LeftTable ="viewProjectComponentPressLiveOnly"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="viewProjectComponentPressLiveOnly.ProjectComponentID = dbo_ProjectComponentStock"
        ".ProjectComponentID"
    Flag =2
    LeftTable ="viewProjectComponentPressLiveOnly"
    RightTable ="qryPrintRunPreReqStatus"
    Expression ="viewProjectComponentPressLiveOnly.PrintRunPreReq = qryPrintRunPreReqStatus.ID"
    Flag =2
    LeftTable ="viewProjectComponentPressLiveOnly"
    RightTable ="dbo_ProjectHeader"
    Expression ="viewProjectComponentPressLiveOnly.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyLocation"
    Expression ="dbo_ProjectHeader.CompanyLocationID = dbo_CompanyLocation.ID"
    Flag =2
End
Begin OrderBy
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],#12/31/2099#)"
    Flag =0
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
    0x0acc0e5500000000d3bae183f0d577449b453baf42b8bfe0000000008c46b411 ,
    0xcfe0e44000000000000000007600690065007700500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073004c00 ,
    0x6900760065004f006e006c00790000000000000089466ecffa47f64d8a430cca ,
    0xf9e274af00000000bf7d440ecfe0e4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x530074006f0063006b00000000000000e2fe8414d143644ba22c81472779d226 ,
    0x00000000530f8394d3e0e4400000000000000000710072007900500072006900 ,
    0x6e007400520075006e0050007200650052006500710053007400610074007500 ,
    0x730000000000000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000f0a07a545f8a6448b11bd6a1 ,
    0x031b20d10000000049290f0dcfe0e4400000000000000000640062006f005f00 ,
    0x43006f006d00700061006e0079004c006f0063006100740069006f006e000000 ,
    0x0000000034cf5a3d286a934297dc8f506f1860ba07000000a39b17c429c10945 ,
    0xb6bb9d585d71e9206d0079005000720065007300730044006100740065000000 ,
    0x00000000186f55d19e10764e8467fcfd7a9db3e607000000a39b17c429c10945 ,
    0xb6bb9d585d71e9205000610070006500720044006900730070006c0061007900 ,
    0x000000000000bf73e77c02eb4540bd914c0266a1733507000000a39b17c429c1 ,
    0x0945b6bb9d585d71e920500072006f006f00660044006900730070006c006100 ,
    0x79000000000000009ea633740e575a42a63f8be1e315413a07000000a39b17c4 ,
    0x29c10945b6bb9d585d71e92043004d0059004b0043006f006c006f0072007300 ,
    0x000000000000ec9609ca6b97414dbbbe7a5efca8cba307000000a39b17c429c1 ,
    0x0945b6bb9d585d71e92050004d00530043006f006c006f007200730000000000 ,
    0x000078cee97672efca4f8b237709906e2a9207000000a39b17c429c10945b6bb ,
    0x9d585d71e9204d006500740061006c006c006900630043006f006c006f007200 ,
    0x730000000000000057fc1a568a1f754eaf3dcbfbf50cb4b207000000a39b17c4 ,
    0x29c10945b6bb9d585d71e9205300530043006f006c006f007200730000000000 ,
    0x0000448dc9d44bc27541a970d1c220cb162007000000a39b17c429c10945b6bb ,
    0x9d585d71e920520075006e00730069007a0065000000000000006d8e47f022df ,
    0x0044b651a0f4a9a055bb07000000a39b17c429c10945b6bb9d585d71e9204600 ,
    0x69006e0061006c00730069007a006500000000000000f33e5f131ba3b44ca0b2 ,
    0x34bafead9eee07000000a39b17c429c10945b6bb9d585d71e920440075006500 ,
    0x440061007400650000000000000030523e717d4e81478ebd8939aa6678730700 ,
    0x0000a39b17c429c10945b6bb9d585d71e9205200650061006400790054006f00 ,
    0x5000720069006e007400000000000000c4edb241e262e84fbd78ac5eaf699112 ,
    0x07000000a39b17c429c10945b6bb9d585d71e9206d0079005000720069006f00 ,
    0x72006900740079000000000000004ae79019c30048408455184829b6cbaf0700 ,
    0x0000a39b17c429c10945b6bb9d585d71e920530074006f0063006b0000000000 ,
    0x000013fbadbbd70d3d4ebb54a86e36930cb107000000a39b17c429c10945b6bb ,
    0x9d585d71e9205000720069006e007400520075006e0050007200650052006500 ,
    0x7100530074006100740075007300000000000000c0efb264c558414199dfadd4 ,
    0x8c0723d607000000d3bae183f0d577449b453baf42b8bfe07000720065007300 ,
    0x73006400610074006500650078007000000000000000a867b6ca93a58f4d8cf8 ,
    0x22ee36642abe07000000d3bae183f0d577449b453baf42b8bfe04f0072006400 ,
    0x650072004f007000740069006f006e00000000000000c86837adebdf8949b4e4 ,
    0x9cb32f4da27307000000d3bae183f0d577449b453baf42b8bfe0410072007200 ,
    0x6900760061006c004400610074006500000000000000a05bc610644f7e4fbbb0 ,
    0xa5a49551515a07000000d3bae183f0d577449b453baf42b8bfe0450078007000 ,
    0x650063007400650064004400610074006500000000000000fa819d57a0848345 ,
    0xbdbec28b4e9a656307000000d3bae183f0d577449b453baf42b8bfe048006100 ,
    0x72006400500072006f006f006600530065006e00740044006100740065000000 ,
    0x00000000d1e6169618390545a29a293e4751d0ba07000000d3bae183f0d57744 ,
    0x9b453baf42b8bfe04800610072006400500072006f006f006600410070007000 ,
    0x72006f0076006500640044006100740065000000000000007bd8dd7b33041143 ,
    0xa70f84608bd3fcbd07000000d3bae183f0d577449b453baf42b8bfe050007200 ,
    0x6f006f00660041007000700072006f0076006500640044006100740065000000 ,
    0x000000008170035dd2eafd43821c470abc3187ca07000000d3bae183f0d57744 ,
    0x9b453baf42b8bfe0500072006f006f006600530065006e007400440061007400 ,
    0x65000000000000006fdcf3fce989fd40a87b56785a309ac807000000d3bae183 ,
    0xf0d577449b453baf42b8bfe0430059004d004b00460072006f006e0074000000 ,
    0x0000000019a94af7b404304ca889da44ed6ec97907000000d3bae183f0d57744 ,
    0x9b453baf42b8bfe0430059004d004b004200610063006b000000000000009711 ,
    0x46188a2a994dbe9036091fc0265307000000d3bae183f0d577449b453baf42b8 ,
    0xbfe050004d005300460072006f006e007400000000000000154374514837204f ,
    0x83b4416379ace3b107000000d3bae183f0d577449b453baf42b8bfe050004d00 ,
    0x53004200610063006b000000000000007a80421693102a4b861df72bfbe4a8e8 ,
    0x07000000d3bae183f0d577449b453baf42b8bfe04d006500740061006c006c00 ,
    0x69006300460072006f006e007400000000000000a6f34cea2ae7684f85216938 ,
    0xf814c02f07000000d3bae183f0d577449b453baf42b8bfe04d00650074006100 ,
    0x6c006c00690063004200610063006b000000000000000df2655e26a9cb42b97c ,
    0x2f8dae742f7707000000d3bae183f0d577449b453baf42b8bfe0530070006f00 ,
    0x74005300650061006c00460072006f006e00740000000000000091944c390d9e ,
    0x71418d10cdbe03d6ffbc07000000d3bae183f0d577449b453baf42b8bfe05300 ,
    0x70006f0074005300650061006c004200610063006b00000000000000a3580e7d ,
    0x56979b48831ab258adce7afa07000000d3bae183f0d577449b453baf42b8bfe0 ,
    0x50006100700065007200580049006e0063006800000000000000a9520f90efda ,
    0xd440a2c05f4d2685907407000000d3bae183f0d577449b453baf42b8bfe05000 ,
    0x6100700065007200590049006e00630068000000000000002d9a73a54d68394d ,
    0x8de877605336928407000000d3bae183f0d577449b453baf42b8bfe053006900 ,
    0x7a006500580049006e0063006800000000000000867201ff6a9ab64dac60c8dd ,
    0x81326d6607000000d3bae183f0d577449b453baf42b8bfe0530069007a006500 ,
    0x590049006e0063006800000000000000ad6f3254e37fdd4db9828b153ce6788e ,
    0x07000000d3bae183f0d577449b453baf42b8bfe0530070006500630069006600 ,
    0x6900650064004400750065004400610074006500000000000000f55f925ef781 ,
    0xbb4e907a232aaad674a207000000d3bae183f0d577449b453baf42b8bfe06100 ,
    0x73007300690067006e0065006400640075006500640061007400650000000000 ,
    0x0000ef4b2a4b7310e0438a8f588deae8ba4b07000000d3bae183f0d577449b45 ,
    0x3baf42b8bfe05300740050007200650070007200650073007300000000000000 ,
    0x814f8033fc04ee41b7400b2e63a2ca7d07000000d3bae183f0d577449b453baf ,
    0x42b8bfe05000720069006f007200690074007900000000000000e9d4a493b1e3 ,
    0x504b863faa0fba8186c00700000089466ecffa47f64d8a430ccaf9e274af4400 ,
    0x650073006300720069007000740069006f006e00000000000000d72429fd8670 ,
    0xec4a8e8aaf8915669fac07000000d3bae183f0d577449b453baf42b8bfe05000 ,
    0x720069006e007400520075006e00500072006500520065007100000000000000 ,
    0x0355a3ec75e6414ca4e7705b023a1cd807000000e2fe8414d143644ba22c8147 ,
    0x2779d2265000720069006e0074004a006f006200530074006100740075007300 ,
    0x00000000000097f4d916639123478b4d0c4170d61ffb0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8043006f006d00700061006e0079004c006f0063006100 ,
    0x740069006f006e004900440000000000000001d2b706cee7ea48b9f4af0b27f2 ,
    0x548007000000f0a07a545f8a6448b11bd6a1031b20d15200650070006f007200 ,
    0x740043006f006c006f007200000000000000a5eb562ed4173a4d86c78c46c63f ,
    0x2b1d07000000d3bae183f0d577449b453baf42b8bfe049006d0070006f007300 ,
    0x6900740069006f006e00490044000000000000002a54f7c80904684686ba4bcc ,
    0x7a12379b0700000089466ecffa47f64d8a430ccaf9e274af49006d0070006f00 ,
    0x73006900740069006f006e00490044000000000000004a662d03d4bd914d861a ,
    0xbffa9cfc29f907000000d3bae183f0d577449b453baf42b8bfe0500072006f00 ,
    0x6a0065006300740043006f006d0070006f006e0065006e007400490044000000 ,
    0x00000000fe371115569a08478b428437714db9f90700000089466ecffa47f64d ,
    0x8a430ccaf9e274af500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e00740049004400000000000000222a6f24b2607a418ddbb2875d60 ,
    0x3d8107000000e2fe8414d143644ba22c81472779d22649004400000000000000 ,
    0x32cacbf12cbd4b438e27896610f6f33507000000d3bae183f0d577449b453baf ,
    0x42b8bfe0500072006f006a006500630074004800650061006400650072004900 ,
    0x440000000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8049004400000000000000cfcb0f694dd678469d74 ,
    0x5c2d3c9b453407000000f0a07a545f8a6448b11bd6a1031b20d1490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
dbBinary "GUID" = Begin
    0xa39b17c429c10945b6bb9d585d71e920
End
Begin
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PaperSupplied"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SpotSealBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Varnish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PressDateExp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Diecut"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DieNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.LithoPerf"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.LithoScore"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.CountRun"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.CountSpoilage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.TotalGrossSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SizeXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SizeYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PrintingMethod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Press"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PressCheck"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.NumberingEnd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PressHrs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.IsImposed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PressNotes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SpotSealFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PaperIsEnvelope"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PaperYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PMSColours"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.MatchSample"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.FormName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Aqueous"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PrintJobStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PrintRunNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.MetallicBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.TotalNetSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.NetPlates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Bleeds"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PaperXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.IsBlackOnly"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.NumberingStart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Matrix"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PassCount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PrioritySelect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SectionName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PMSFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PMSBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.CYMKFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.CYMKBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.MetallicFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PDQMachineName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.MachineModel"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.StPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.OrderOption"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ArrivalDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PaperDisplay"
        dbInteger "ColumnWidth" ="3120"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x186f55d19e10764e8467fcfd7a9db3e6
        End
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.RunArea"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.FinalArea"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbf73e77c02eb4540bd914c0266a17335
        End
        dbInteger "ColumnWidth" ="3780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CMYKColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ea633740e575a42a63f8be1e315413a
        End
    End
    Begin
        dbText "Name" ="PMSColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xec9609ca6b97414dbbbe7a5efca8cba3
        End
    End
    Begin
        dbText "Name" ="MetallicColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x78cee97672efca4f8b237709906e2a92
        End
    End
    Begin
        dbText "Name" ="SSColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57fc1a568a1f754eaf3dcbfbf50cb4b2
        End
    End
    Begin
        dbText "Name" ="Runsize"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x448dc9d44bc27541a970d1c220cb1620
        End
    End
    Begin
        dbText "Name" ="Finalsize"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d8e47f022df0044b651a0f4a9a055bb
        End
    End
    Begin
        dbText "Name" ="myPressDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x34cf5a3d286a934297dc8f506f1860ba
        End
        dbInteger "ColumnWidth" ="5010"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf33e5f131ba3b44ca0b234bafead9eee
        End
    End
    Begin
        dbText "Name" ="ReadyToPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30523e717d4e81478ebd8939aa667873
        End
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DYBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPriority"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4edb241e262e84fbd78ac5eaf699112
        End
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ImpositionID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.HardProofSentDate"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.HardProofApprovedDate"
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DataExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ProjectNotes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.DYPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Stock"
        dbInteger "ColumnWidth" ="4395"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4ae79019c30048408455184829b6cbaf
        End
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.FriendlyDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.PrintRunPreReq"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PrintRunPreReqStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x13fbadbbd70d3d4ebb54a86e36930cb1
        End
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.AqFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.AqBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.UvFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.UvBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.VrFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewProjectComponentPressLiveOnly.VrBack"
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
    Left =75
    Top =10
    Right =1467
    Bottom =810
    Left =-1
    Top =-1
    Right =1360
    Bottom =375
    Left =365
    Top =0
    ColumnsShown =539
    Begin
        Left =18
        Top =0
        Right =406
        Bottom =399
        Top =0
        Name ="viewProjectComponentPressLiveOnly"
        Name =""
    End
    Begin
        Left =457
        Top =-4
        Right =738
        Bottom =357
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =891
        Top =62
        Right =1035
        Bottom =206
        Top =0
        Name ="qryPrintRunPreReqStatus"
        Name =""
    End
    Begin
        Left =1083
        Top =12
        Right =1227
        Bottom =156
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1180
        Top =196
        Right =1324
        Bottom =340
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
