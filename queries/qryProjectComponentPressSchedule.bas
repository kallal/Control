Operation =1
Option =0
Begin InputTables
    Name ="viewProjectComponentPressLiveOnly"
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_CompanyLocation"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
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
    Alias ="myPressDate"
    Expression ="IIf(IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz([dyBind"
        "ery],0)+Nz([dyPrint],0)-1+Nz([dyOutsideSrv],0))))<Date() And Nz([pressdateexp],\""
        "\")=\"\",Null,IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-("
        "Nz([dyBindery],0)+Nz([dyPrint],0)-1+Nz([dyOutsideSrv],0)))))"
    Alias ="ReadyToPrint"
    Expression ="IIf(([PROOFAPPROVEDDATE] Is Not Null Or [StPrepress]=\"NOT REQ'D\" Or [StPrepres"
        "s]=\"NOT REQD\") And ((viewProjectComponentPressLiveOnly.[ARRIVALDATE] Is Not Nu"
        "ll) Or (viewProjectComponentPressLiveOnly.[OrderOption]=3) Or (Nz(viewProjectCom"
        "ponentPressLiveOnly.[ORDEROPTION],0)=0)),True,False)"
    Alias ="myPriority"
    Expression ="Nz([Priority],99)"
    Alias ="Stock"
    Expression ="dbo_ProjectComponentStock.Description"
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
    RightTable ="dbo_ProjectHeader"
    Expression ="viewProjectComponentPressLiveOnly.ProjectHeaderID = dbo_ProjectHeader.ID"
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
    0x569cf94a6f280748a276fa1bc0fd0821
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d3bae183f0d577449b453baf42b8bfe000000000cb0c91c7 ,
    0x12dae44000000000000000007600690065007700500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073004c00 ,
    0x6900760065004f006e006c00790000000000000089466ecffa47f64d8a430cca ,
    0xf9e274af00000000434a3cc712dae4400000000000000000640062006f005f00 ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x530074006f0063006b00000000000000f0a07a545f8a6448b11bd6a1031b20d1 ,
    0x00000000515109c712dae4400000000000000000640062006f005f0043006f00 ,
    0x6d00700061006e0079004c006f0063006100740069006f006e00000000000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a800000000099c140c712dae44000000000 ,
    0x00000000640062006f005f00500072006f006a00650063007400480065006100 ,
    0x640065007200000000000000186f55d19e10764e8467fcfd7a9db3e607000000 ,
    0x569cf94a6f280748a276fa1bc0fd082150006100700065007200440069007300 ,
    0x70006c0061007900000000000000bf73e77c02eb4540bd914c0266a173350700 ,
    0x0000569cf94a6f280748a276fa1bc0fd0821500072006f006f00660044006900 ,
    0x730070006c00610079000000000000009ea633740e575a42a63f8be1e315413a ,
    0x07000000569cf94a6f280748a276fa1bc0fd082143004d0059004b0043006f00 ,
    0x6c006f0072007300000000000000ec9609ca6b97414dbbbe7a5efca8cba30700 ,
    0x0000569cf94a6f280748a276fa1bc0fd082150004d00530043006f006c006f00 ,
    0x7200730000000000000078cee97672efca4f8b237709906e2a9207000000569c ,
    0xf94a6f280748a276fa1bc0fd08214d006500740061006c006c00690063004300 ,
    0x6f006c006f007200730000000000000057fc1a568a1f754eaf3dcbfbf50cb4b2 ,
    0x07000000569cf94a6f280748a276fa1bc0fd08215300530043006f006c006f00 ,
    0x72007300000000000000448dc9d44bc27541a970d1c220cb162007000000569c ,
    0xf94a6f280748a276fa1bc0fd0821520075006e00730069007a00650000000000 ,
    0x00006d8e47f022df0044b651a0f4a9a055bb07000000569cf94a6f280748a276 ,
    0xfa1bc0fd0821460069006e0061006c00730069007a006500000000000000f33e ,
    0x5f131ba3b44ca0b234bafead9eee07000000569cf94a6f280748a276fa1bc0fd ,
    0x0821440075006500440061007400650000000000000034cf5a3d286a934297dc ,
    0x8f506f1860ba07000000569cf94a6f280748a276fa1bc0fd08216d0079005000 ,
    0x7200650073007300440061007400650000000000000030523e717d4e81478ebd ,
    0x8939aa66787307000000569cf94a6f280748a276fa1bc0fd0821520065006100 ,
    0x6400790054006f005000720069006e007400000000000000c4edb241e262e84f ,
    0xbd78ac5eaf69911207000000569cf94a6f280748a276fa1bc0fd08216d007900 ,
    0x5000720069006f0072006900740079000000000000004ae79019c30048408455 ,
    0x184829b6cbaf07000000569cf94a6f280748a276fa1bc0fd0821530074006f00 ,
    0x63006b00000000000000a867b6ca93a58f4d8cf822ee36642abe07000000d3ba ,
    0xe183f0d577449b453baf42b8bfe04f0072006400650072004f00700074006900 ,
    0x6f006e00000000000000c86837adebdf8949b4e49cb32f4da27307000000d3ba ,
    0xe183f0d577449b453baf42b8bfe04100720072006900760061006c0044006100 ,
    0x74006500000000000000a05bc610644f7e4fbbb0a5a49551515a07000000d3ba ,
    0xe183f0d577449b453baf42b8bfe0450078007000650063007400650064004400 ,
    0x610074006500000000000000fa819d57a0848345bdbec28b4e9a656307000000 ,
    0xd3bae183f0d577449b453baf42b8bfe04800610072006400500072006f006f00 ,
    0x6600530065006e0074004400610074006500000000000000d1e6169618390545 ,
    0xa29a293e4751d0ba07000000d3bae183f0d577449b453baf42b8bfe048006100 ,
    0x72006400500072006f006f00660041007000700072006f007600650064004400 ,
    0x6100740065000000000000007bd8dd7b33041143a70f84608bd3fcbd07000000 ,
    0xd3bae183f0d577449b453baf42b8bfe0500072006f006f006600410070007000 ,
    0x72006f0076006500640044006100740065000000000000008170035dd2eafd43 ,
    0x821c470abc3187ca07000000d3bae183f0d577449b453baf42b8bfe050007200 ,
    0x6f006f006600530065006e00740044006100740065000000000000006fdcf3fc ,
    0xe989fd40a87b56785a309ac807000000d3bae183f0d577449b453baf42b8bfe0 ,
    0x430059004d004b00460072006f006e00740000000000000019a94af7b404304c ,
    0xa889da44ed6ec97907000000d3bae183f0d577449b453baf42b8bfe043005900 ,
    0x4d004b004200610063006b00000000000000971146188a2a994dbe9036091fc0 ,
    0x265307000000d3bae183f0d577449b453baf42b8bfe050004d00530046007200 ,
    0x6f006e007400000000000000154374514837204f83b4416379ace3b107000000 ,
    0xd3bae183f0d577449b453baf42b8bfe050004d0053004200610063006b000000 ,
    0x000000007a80421693102a4b861df72bfbe4a8e807000000d3bae183f0d57744 ,
    0x9b453baf42b8bfe04d006500740061006c006c0069006300460072006f006e00 ,
    0x7400000000000000a6f34cea2ae7684f85216938f814c02f07000000d3bae183 ,
    0xf0d577449b453baf42b8bfe04d006500740061006c006c006900630042006100 ,
    0x63006b000000000000000df2655e26a9cb42b97c2f8dae742f7707000000d3ba ,
    0xe183f0d577449b453baf42b8bfe0530070006f0074005300650061006c004600 ,
    0x72006f006e00740000000000000091944c390d9e71418d10cdbe03d6ffbc0700 ,
    0x0000d3bae183f0d577449b453baf42b8bfe0530070006f007400530065006100 ,
    0x6c004200610063006b00000000000000a3580e7d56979b48831ab258adce7afa ,
    0x07000000d3bae183f0d577449b453baf42b8bfe0500061007000650072005800 ,
    0x49006e0063006800000000000000a9520f90efdad440a2c05f4d268590740700 ,
    0x0000d3bae183f0d577449b453baf42b8bfe05000610070006500720059004900 ,
    0x6e00630068000000000000002d9a73a54d68394d8de877605336928407000000 ,
    0xd3bae183f0d577449b453baf42b8bfe0530069007a006500580049006e006300 ,
    0x6800000000000000867201ff6a9ab64dac60c8dd81326d6607000000d3bae183 ,
    0xf0d577449b453baf42b8bfe0530069007a006500590049006e00630068000000 ,
    0x00000000ad6f3254e37fdd4db9828b153ce6788e07000000d3bae183f0d57744 ,
    0x9b453baf42b8bfe0530070006500630069006600690065006400440075006500 ,
    0x4400610074006500000000000000f55f925ef781bb4e907a232aaad674a20700 ,
    0x0000d3bae183f0d577449b453baf42b8bfe0610073007300690067006e006500 ,
    0x64006400750065006400610074006500000000000000c0efb264c558414199df ,
    0xadd48c0723d607000000d3bae183f0d577449b453baf42b8bfe0700072006500 ,
    0x730073006400610074006500650078007000000000000000194e99f95c4df44e ,
    0xbbdbd507b7fa061707000000d3bae183f0d577449b453baf42b8bfe064007900 ,
    0x420069006e006400650072007900000000000000975b3ea75e5a3748a0322a00 ,
    0x9963d12b07000000d3bae183f0d577449b453baf42b8bfe06400790050007200 ,
    0x69006e007400000000000000d27ac2efe838e244a8f110624ab0503b07000000 ,
    0xd3bae183f0d577449b453baf42b8bfe0640079004f0075007400730069006400 ,
    0x6500530072007600000000000000ef4b2a4b7310e0438a8f588deae8ba4b0700 ,
    0x0000d3bae183f0d577449b453baf42b8bfe05300740050007200650070007200 ,
    0x650073007300000000000000814f8033fc04ee41b7400b2e63a2ca7d07000000 ,
    0xd3bae183f0d577449b453baf42b8bfe05000720069006f007200690074007900 ,
    0x000000000000e9d4a493b1e3504b863faa0fba8186c00700000089466ecffa47 ,
    0xf64d8a430ccaf9e274af4400650073006300720069007000740069006f006e00 ,
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
    0x6e0065006e0074004900440000000000000032cacbf12cbd4b438e27896610f6 ,
    0xf33507000000d3bae183f0d577449b453baf42b8bfe0500072006f006a006500 ,
    0x630074004800650061006400650072004900440000000000000004aeb2718000 ,
    0xd24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x4400000000000000cfcb0f694dd678469d745c2d3c9b453407000000f0a07a54 ,
    0x5f8a6448b11bd6a1031b20d14900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
    Left =27
    Top =49
    Right =1464
    Bottom =849
    Left =-1
    Top =-1
    Right =1405
    Bottom =475
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
        Left =502
        Top =2
        Right =1099
        Bottom =363
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =1197
        Top =198
        Right =1341
        Bottom =342
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
    Begin
        Left =1154
        Top =13
        Right =1348
        Bottom =157
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
