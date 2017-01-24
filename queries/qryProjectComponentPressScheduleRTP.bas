Operation =1
Option =0
Where ="(((IIf(([PROOFAPPROVEDDATE] Is Not Null) And (([ARRIVALDATE] Is Not Null) Or ([O"
    "rderOption]=3) Or (Nz([ORDEROPTION],0)=0)),True,False))=True))"
Begin InputTables
    Name ="viewProjectComponentPressLiveOnly"
End
Begin OutputColumns
    Expression ="viewProjectComponentPressLiveOnly.*"
    Alias ="PaperDisplay"
    Expression ="IIf(Nz([OrderOption],0)=0,\"UNKNOWN\",IIf([OrderOption]=3,\"INVENTORY\",Format(I"
        "If([ArrivalDate],[ArrivalDate],[ExpectedDate]),\"Medium Date\")))"
    Alias ="ProofDisplay"
    Expression ="Format(IIf([ProofApprovedDate],[ProofApprovedDate],[ProofSentDate]),\"Medium Dat"
        "e\")"
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
    Alias ="OrderOption"
    Expression ="DLookUp(\"[OrderOption]\",\"dbo_ProjectComponentStock\",\"[ProjectComponentID] ="
        " \" & [projectComponentID] & \" AND [PressRunName] = \" & Chr(34) & [SectionName"
        "] & Chr(34))"
    Alias ="myPressDate"
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz([dyBindery]"
        ",0)+Nz([dyOutsideSrv],0))))"
    Alias ="ReadyToPrint"
    Expression ="IIf(([PROOFAPPROVEDDATE] Is Not Null) And (([ARRIVALDATE] Is Not Null) Or ([Orde"
        "rOption]=3) Or (Nz([ORDEROPTION],0)=0)),True,False)"
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
    0x405aa1404db9a447a2a614ec07ba99eb
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000ef7433b1a816524ba127cefeac48191000000000bf34a86f ,
    0xec62e44000000000000000007600690065007700500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073004c00 ,
    0x6900760065004f006e006c007900000000000000186f55d19e10764e8467fcfd ,
    0x7a9db3e607000000000000000000000000000000000000005000610070006500 ,
    0x720044006900730070006c0061007900000000000000bf73e77c02eb4540bd91 ,
    0x4c0266a173350700000000000000000000000000000000000000500072006f00 ,
    0x6f00660044006900730070006c00610079000000000000009ea633740e575a42 ,
    0xa63f8be1e315413a070000000000000000000000000000000000000043004d00 ,
    0x59004b0043006f006c006f0072007300000000000000ec9609ca6b97414dbbbe ,
    0x7a5efca8cba3070000000000000000000000000000000000000050004d005300 ,
    0x43006f006c006f007200730000000000000078cee97672efca4f8b237709906e ,
    0x2a9207000000000000000000000000000000000000004d006500740061006c00 ,
    0x6c006900630043006f006c006f007200730000000000000057fc1a568a1f754e ,
    0xaf3dcbfbf50cb4b2070000000000000000000000000000000000000053005300 ,
    0x43006f006c006f0072007300000000000000448dc9d44bc27541a970d1c220cb ,
    0x16200700000000000000000000000000000000000000520075006e0073006900 ,
    0x7a0065000000000000006d8e47f022df0044b651a0f4a9a055bb070000000000 ,
    0x0000000000000000000000000000460069006e0061006c00730069007a006500 ,
    0x000000000000f33e5f131ba3b44ca0b234bafead9eee07000000000000000000 ,
    0x000000000000000000004400750065004400610074006500000000000000fbd6 ,
    0xdbe5f2785f4c8b03947b465f7f34070000000000000000000000000000000000 ,
    0x00004f0072006400650072004f007000740069006f006e0000000000000034cf ,
    0x5a3d286a934297dc8f506f1860ba070000000000000000000000000000000000 ,
    0x00006d0079005000720065007300730044006100740065000000000000003052 ,
    0x3e717d4e81478ebd8939aa667873070000000000000000000000000000000000 ,
    0x00005200650061006400790054006f005000720069006e007400000000000000 ,
    0x2fdbe5306f45b2488e3bcef4408e43a107000000ef7433b1a816524ba127cefe ,
    0xac4819104100720072006900760061006c004400610074006500000000000000 ,
    0x74e07f35a0cc634a8b73757a5b0015b007000000ef7433b1a816524ba127cefe ,
    0xac48191045007800700065006300740065006400440061007400650000000000 ,
    0x0000083537ca951fd4409fbc53000433576b07000000ef7433b1a816524ba127 ,
    0xcefeac481910500072006f006f00660041007000700072006f00760065006400 ,
    0x4400610074006500000000000000f6e731a463cd5c4d857bec672cba44970700 ,
    0x0000ef7433b1a816524ba127cefeac481910500072006f006f00660053006500 ,
    0x6e0074004400610074006500000000000000b9fced1719989f4f8768a9ad1e64 ,
    0x0aee07000000ef7433b1a816524ba127cefeac481910430059004d004b004600 ,
    0x72006f006e00740000000000000093a858ab24e4f649a032d18d45e9b9060700 ,
    0x0000ef7433b1a816524ba127cefeac481910430059004d004b00420061006300 ,
    0x6b00000000000000692c89ec3d31ad4fa134c54079f9b15407000000ef7433b1 ,
    0xa816524ba127cefeac48191050004d005300460072006f006e00740000000000 ,
    0x0000fd51859dd1a5fe4fa94466984fbe0b0f07000000ef7433b1a816524ba127 ,
    0xcefeac48191050004d0053004200610063006b0000000000000050ce8ddbc0cd ,
    0x334e84bb14cbb4ca748c07000000ef7433b1a816524ba127cefeac4819104d00 ,
    0x6500740061006c006c0069006300460072006f006e007400000000000000bed6 ,
    0xf46e431a4e41b95b40bd38b9dc4207000000ef7433b1a816524ba127cefeac48 ,
    0x19104d006500740061006c006c00690063004200610063006b00000000000000 ,
    0xb18a8c6ebec9ef40b075edbb2b49454707000000ef7433b1a816524ba127cefe ,
    0xac481910530070006f0074005300650061006c00460072006f006e0074000000 ,
    0x000000006e17697085cd61408a6187aeaeae956707000000ef7433b1a816524b ,
    0xa127cefeac481910530070006f0074005300650061006c004200610063006b00 ,
    0x0000000000002545e939bcbd1646a9c1538cae355c8507000000ef7433b1a816 ,
    0x524ba127cefeac48191050006100700065007200580049006e00630068000000 ,
    0x00000000924b1187b119364db4f75a3cd400964507000000ef7433b1a816524b ,
    0xa127cefeac48191050006100700065007200590049006e006300680000000000 ,
    0x00003c999be36d58984088ff46336fe07cea07000000ef7433b1a816524ba127 ,
    0xcefeac481910530069007a006500580049006e0063006800000000000000dff1 ,
    0xde9f51b87f4aa0b658523f199be107000000ef7433b1a816524ba127cefeac48 ,
    0x1910530069007a006500590049006e00630068000000000000001b1e527b8605 ,
    0xa44e88a54f3edff2c10c07000000ef7433b1a816524ba127cefeac4819105300 ,
    0x7000650063006900660069006500640044007500650044006100740065000000 ,
    0x000000004108202865e59e4ab94e6b4bd808d04f07000000ef7433b1a816524b ,
    0xa127cefeac481910610073007300690067006e00650064006400750065006400 ,
    0x610074006500000000000000c1f42398089e1a46a2be180caa8e143307000000 ,
    0xef7433b1a816524ba127cefeac481910700072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e0074004900440000000000000034ae8b02ef80 ,
    0x5b4a866d0bb66b9e1fbb07000000ef7433b1a816524ba127cefeac4819105300 ,
    0x65006300740069006f006e004e0061006d00650000000000000050fbae08ec3c ,
    0x4e40b6bb30b9efc90bb407000000ef7433b1a816524ba127cefeac4819107000 ,
    0x72006500730073006400610074006500650078007000000000000000cde4d9f1 ,
    0x44fa674eb4cdbe4f638f32ab07000000ef7433b1a816524ba127cefeac481910 ,
    0x64007900420069006e006400650072007900000000000000273158dfcea03446 ,
    0xb2a727a7a5fec4b407000000ef7433b1a816524ba127cefeac48191064007900 ,
    0x4f00750074007300690064006500530072007600000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
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
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf33e5f131ba3b44ca0b234bafead9eee
        End
    End
    Begin
        dbText "Name" ="OrderOption"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfbd6dbe5f2785f4c8b03947b465f7f34
        End
    End
    Begin
        dbText "Name" ="ReadyToPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30523e717d4e81478ebd8939aa667873
        End
    End
End
Begin
    State =0
    Left =49
    Top =374
    Right =1486
    Bottom =1180
    Left =-1
    Top =-1
    Right =1405
    Bottom =212
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
End
