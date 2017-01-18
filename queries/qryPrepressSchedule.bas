Operation =1
Option =0
Begin InputTables
    Name ="viewWIPPrepress"
End
Begin OutputColumns
    Expression ="viewWIPPrepress.*"
    Alias ="IsRush"
    Expression ="IIf(Nz([specifiedduedate],0)>0 And [specifiedduedate]<=[assignedduedate],True,Fa"
        "lse)"
    Alias ="SumOfTotalHours"
    Expression ="DLookUp(\"sumoftotaltime\",\"qryPrepressScheduleHoursSoFar\",\"[ProjectComponent"
        "HeaderID] = \" & [projectComponentid])"
    Alias ="PlatedBy"
    Expression ="Format(fncWorkday([ArtArrivedDate],[DYPrepress]),\"mmm d\")"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Alias ="myPrePressDate"
    Expression ="fncWorkday(IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz("
        "[dyBindery],0)+Nz([dyOutsideSrv],0)))),-1)"
    Alias ="myPressDate"
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz([dyBindery]"
        ",0)+Nz([dyOutsideSrv],0))))"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xfa99ba84b6e6d24e9b7316872e0c65fb
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000052840366f6f848458ff3074ad8f738c1000000000a90a22b ,
    0xacd7e44000000000000000007600690065007700570049005000500072006500 ,
    0x70007200650073007300000000000000d9c9a9d2480a634d8a42f103de9e2af7 ,
    0x07000000fa99ba84b6e6d24e9b7316872e0c65fb490073005200750073006800 ,
    0x000000000000778be358c2d07f429df161ba06e3402d07000000fa99ba84b6e6 ,
    0xd24e9b7316872e0c65fb530075006d004f00660054006f00740061006c004800 ,
    0x6f007500720073000000000000003d9e8c1a2541a34e85a6419a23b86efc0700 ,
    0x0000fa99ba84b6e6d24e9b7316872e0c65fb50006c0061007400650064004200 ,
    0x79000000000000006cd034e12542534194915d1347fcaec607000000fa99ba84 ,
    0xb6e6d24e9b7316872e0c65fb4400750065004400610074006500000000000000 ,
    0x30adda0273cfdb499ca4292586827ba307000000fa99ba84b6e6d24e9b731687 ,
    0x2e0c65fb6d007900500072006500500072006500730073004400610074006500 ,
    0x0000000000001e8d8a77ff02664398b43fbcd4b7a06907000000fa99ba84b6e6 ,
    0xd24e9b7316872e0c65fb6d007900500072006500730073004400610074006500 ,
    0x00000000000043a602bda487304ebe5aeb4211d2d4980700000052840366f6f8 ,
    0x48458ff3074ad8f738c173007000650063006900660069006500640064007500 ,
    0x650064006100740065000000000000004ba73cf0984e414d86446b73dd5b9b53 ,
    0x0700000052840366f6f848458ff3074ad8f738c1610073007300690067006e00 ,
    0x650064006400750065006400610074006500000000000000144cebad10fbab44 ,
    0x9b7013204f8132200700000052840366f6f848458ff3074ad8f738c170007200 ,
    0x6f006a0065006300740043006f006d0070006f006e0065006e00740069006400 ,
    0x000000000000cc01ec270b450e4a9c4d5275842d582b0700000052840366f6f8 ,
    0x48458ff3074ad8f738c141007200740041007200720069007600650064004400 ,
    0x6100740065000000000000006d2bc107343f9f459e89181a8e8b440d07000000 ,
    0x52840366f6f848458ff3074ad8f738c144005900500072006500700072006500 ,
    0x7300730000000000000039e3623db6af5e468a735abb007f8c89070000005284 ,
    0x0366f6f848458ff3074ad8f738c1700072006500730073006400610074006500 ,
    0x65007800700000000000000013d6945cff38ee48bda67b3926c63a9e07000000 ,
    0x52840366f6f848458ff3074ad8f738c164007900420069006e00640065007200 ,
    0x79000000000000003de18992f1103d4cbd11321bb471441f0700000052840366 ,
    0xf6f848458ff3074ad8f738c1640079004f007500740073006900640065005300 ,
    0x72007600000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
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
        Left =117
        Top =51
        Right =563
        Bottom =393
        Top =0
        Name ="viewWIPPrepress"
        Name =""
    End
End
