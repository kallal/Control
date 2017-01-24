Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectHeader.projectst"
    "atusid)<=30) AND ((dbo_ProjectComponentPress.PrintJobStatus)<3))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_Machine"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.ID"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentPress.SectionName"
    Expression ="dbo_ProjectComponentPress.PaperIsEnvelope"
    Expression ="dbo_ProjectComponentPress.PaperSupplied"
    Expression ="dbo_ProjectComponentPress.TotalNetSheets"
    Expression ="dbo_ProjectComponentPress.TotalGrossSheets"
    Expression ="dbo_ProjectComponentPress.NetPlates"
    Expression ="dbo_ProjectComponentPress.Bleeds"
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    Expression ="dbo_ProjectComponentPress.PaperYInch"
    Expression ="dbo_ProjectComponentPress.SizeXInch"
    Expression ="dbo_ProjectComponentPress.SizeYInch"
    Expression ="dbo_ProjectComponentPress.PrintingMethod"
    Expression ="dbo_ProjectComponentPress.PMSFront"
    Expression ="dbo_ProjectComponentPress.PMSBack"
    Expression ="dbo_ProjectComponentPress.CYMKFront"
    Expression ="dbo_ProjectComponentPress.CYMKBack"
    Expression ="dbo_ProjectComponentPress.MetallicFront"
    Expression ="dbo_ProjectComponentPress.MetallicBack"
    Expression ="dbo_ProjectComponentPress.SpotSealFront"
    Expression ="dbo_ProjectComponentPress.SpotSealBack"
    Expression ="dbo_ProjectComponentPress.IsBlackOnly"
    Expression ="dbo_ProjectComponentPress.PMSColours"
    Expression ="dbo_ProjectComponentPress.Press"
    Expression ="dbo_ProjectComponentPress.MatchSample"
    Expression ="dbo_ProjectComponentPress.PressCheck"
    Expression ="dbo_ProjectComponentPress.Varnish"
    Expression ="dbo_ProjectComponentPress.PressDateExp"
    Expression ="dbo_ProjectComponentPress.NumberingStart"
    Expression ="dbo_ProjectComponentPress.NumberingEnd"
    Expression ="dbo_ProjectComponentPress.Diecut"
    Expression ="dbo_ProjectComponentPress.DieNumber"
    Expression ="dbo_ProjectComponentPress.LithoPerf"
    Expression ="dbo_ProjectComponentPress.LithoScore"
    Expression ="dbo_ProjectComponentPress.Matrix"
    Expression ="dbo_ProjectComponentPress.Priority"
    Alias ="PrioritySort"
    Expression ="Nz([priority],99)"
    Expression ="dbo_ProjectComponentPress.PassCount"
    Expression ="dbo_ProjectComponentPress.PressHrs"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Alias ="SumOfTotalTime"
    Expression ="DLookUp(\"sumoftotaltime\",\"qryProjectComponentPressScheduleHoursSoFar\",\"[Pro"
        "jectComponentHeaderID] = \" & [dbo_projectComponentPress].[projectComponentid])"
    Alias ="ExpectedDate"
    Expression ="DLookUp(\"[ExpectedDate]\",\"dbo_ProjectComponentStock\",\"[ProjectComponentID] "
        "= \" & [projectComponentID] & \" AND [PressRunName] = \" & Chr(34) & [SectionNam"
        "e] & Chr(34))"
    Alias ="ArrivalDate"
    Expression ="DLookUp(\"[ArrivalDate]\",\"dbo_ProjectComponentStock\",\"[ProjectComponentID] ="
        " \" & [projectComponentID] & \" AND [PressRunName] = \" & Chr(34) & [SectionName"
        "] & Chr(34))"
    Expression ="dbo_ProjectComponentPress.MetallicFront"
    Expression ="dbo_ProjectComponentPress.MetallicBack"
    Expression ="dbo_ProjectComponentPress.SpotSealFront"
    Expression ="dbo_ProjectComponentPress.SpotSealBack"
    Expression ="dbo_ProjectComponentPress.Varnish"
    Expression ="dbo_ProjectComponentHeader.MHPrint"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Alias ="DueDate"
    Expression ="DateValue(IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],Nz([assignedduedate]"
        ",Date()+90)))"
    Alias ="OrderOption"
    Expression ="DLookUp(\"[OrderOption]\",\"dbo_ProjectComponentStock\",\"[ProjectComponentID] ="
        " \" & [projectComponentID] & \" AND [PressRunName] = \" & Chr(34) & [SectionName"
        "] & Chr(34))"
    Expression ="dbo_ProjectComponentHeader.StPrint"
    Alias ="myPressDate"
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-(Nz([dyBindery]"
        ",0)+Nz([dyOutsideSrv],0))))"
    Expression ="dbo_Machine.MachineModel"
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
    Expression ="dbo_ProjectHeader.projectstatusid"
    Alias ="ReadyToPrint"
    Expression ="IIf(([PROOFAPPROVEDDATE] Is Not Null) And (([ARRIVALDATE] Is Not Null) Or ([Orde"
        "rOption]=3) Or (Nz([ORDEROPTION],0)=0)),True,False)"
    Alias ="IsRush"
    Expression ="IIf(Nz([specifiedduedate],0)>0 And [specifiedduedate]<=[assignedduedate],True,Fa"
        "lse)"
    Expression ="dbo_ProjectComponentHeader.StPrepress"
    Expression ="dbo_ProjectComponentPress.PrintJobStatus"
    Expression ="dbo_ProjectComponentPress.FormName"
    Expression ="dbo_ProjectComponentHeader.StPrepress"
    Expression ="dbo_ProjectComponentPress.Aqueous"
    Alias ="RunArea"
    Expression ="[PaperXInch]*[PaperYInch]"
    Alias ="FinalArea"
    Expression ="[SizeXInch]*[SizeYinch]"
    Alias ="ProofDisplay"
    Expression ="Format(IIf([ProofApprovedDate],[ProofApprovedDate],[ProofSentDate]),\"Medium Dat"
        "e\")"
    Alias ="PaperDisplay"
    Expression ="IIf(Nz([OrderOption],0)=0,\"UNKNOWN\",IIf([OrderOption]=3,\"INVENTORY\",Format(I"
        "If([ArrivalDate],[ArrivalDate],[ExpectedDate]),\"Medium Date\")))"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_Machine"
    Expression ="dbo_ProjectComponentPress.Press = dbo_Machine.ID"
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
    0x0709aa7273f254448f0e3b4c90a3efed
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000aa4d4a3d82683542a64491e1b0dcc8ce000000006d6b1ee2 ,
    0xb16de4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x000000000e7a128852f41a47b128e4f3b41e4fb400000000055016e2b16de440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000fe926418f32ed843874a57f371c555c70000000022a725e2b16de4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000d7c549c33168bc4ab70151c855c0b6b90000 ,
    0x00008fedf1e1b16de4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000dcc151d8 ,
    0xb1dcde44b713313a2508ade100000000207a03e2b16de4400000000000000000 ,
    0x640062006f005f004d0061006300680069006e0065000000000000002be28b13 ,
    0x2a91334e90c854536168a418070000000709aa7273f254448f0e3b4c90a3efed ,
    0x5000720069006f00720069007400790053006f0072007400000000000000ac49 ,
    0x4118f15eca41bd7c10b287c64f4a070000000709aa7273f254448f0e3b4c90a3 ,
    0xefed530075006d004f00660054006f00740061006c00540069006d0065000000 ,
    0x0000000080d5060348bb3d0034bb3d002045aa0e070000000709aa7273f25444 ,
    0x8f0e3b4c90a3efed450078007000650063007400650064004400610074006500 ,
    0x000000000000485b62f6a1136e4391e0d06344d717b2070000000709aa7273f2 ,
    0x54448f0e3b4c90a3efed4100720072006900760061006c004400610074006500 ,
    0x000000000000e7c5403147537d4a84fcdc5eb1ec7baa070000000709aa7273f2 ,
    0x54448f0e3b4c90a3efed44007500650044006100740065000000000000008038 ,
    0x5b0658a52f0044a52f0034af0f12070000000709aa7273f254448f0e3b4c90a3 ,
    0xefed4f0072006400650072004f007000740069006f006e00000000000000a5ea ,
    0x4086f3292d43adbd959045448fe2070000000709aa7273f254448f0e3b4c90a3 ,
    0xefed6d0079005000720065007300730044006100740065000000000000000158 ,
    0xd929d218ba4fa85665302e9227c7070000000709aa7273f254448f0e3b4c90a3 ,
    0xefed43004d0059004b0043006f006c006f00720073000000000000006afd3ea2 ,
    0x67a12f4495111e135ca2e717070000000709aa7273f254448f0e3b4c90a3efed ,
    0x50004d00530043006f006c006f00720073000000000000008c13893e96bd7c49 ,
    0xb007f5591886a5d7070000000709aa7273f254448f0e3b4c90a3efed4d006500 ,
    0x740061006c006c006900630043006f006c006f0072007300000000000000fb03 ,
    0xfb2dbaf18d458f71068dc8bedffd070000000709aa7273f254448f0e3b4c90a3 ,
    0xefed5300530043006f006c006f0072007300000000000000d2afadf12bd60f4f ,
    0xabe6a05f9db7ab71070000000709aa7273f254448f0e3b4c90a3efed52007500 ,
    0x6e00730069007a00650000000000000060c51a5e5b31804fb33045f440be8032 ,
    0x070000000709aa7273f254448f0e3b4c90a3efed460069006e0061006c007300 ,
    0x69007a00650000000000000094b307c1371a564ab009f95d0350b0b907000000 ,
    0x0709aa7273f254448f0e3b4c90a3efed5200650061006400790054006f005000 ,
    0x720069006e0074000000000000006fe6ba314ad86e47a96136308af8cb040700 ,
    0x00000709aa7273f254448f0e3b4c90a3efed4900730052007500730068000000 ,
    0x00000000008dda0c58ac350044ac35009877770d070000000709aa7273f25444 ,
    0x8f0e3b4c90a3efed520075006e0041007200650061000000000000001d31635c ,
    0xff78044c9badaa4036a7e787070000000709aa7273f254448f0e3b4c90a3efed ,
    0x460069006e0061006c004100720065006100000000000000f5ec478da3cb2242 ,
    0xab6e611e63c6a980070000000709aa7273f254448f0e3b4c90a3efed50007200 ,
    0x6f006f00660044006900730070006c0061007900000000000000c18c3dc4bd76 ,
    0x6d4aa0aca85601f1d8c4070000000709aa7273f254448f0e3b4c90a3efed5000 ,
    0x610070006500720044006900730070006c0061007900000000000000b14c94a8 ,
    0xa3d9394db1aaf6ace8a38c8707000000aa4d4a3d82683542a64491e1b0dcc8ce ,
    0x4900440000000000000071e323a4bb368e4da3132c08218e7d3607000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e00740049004400000000000000873fed1bdd4daf46 ,
    0xb59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb450007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x3c3a0e9cef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb443006f006d0070006f006e0065006e0074004e0061006d0065000000 ,
    0x00000000ab2bd0a18191ef46b6c770f2b1812fa607000000fe926418f32ed843 ,
    0x874a57f371c555c7500072006f006a006500630074004e0061006d0065000000 ,
    0x00000000124b02a694dd0e4c96264abff258312707000000d7c549c33168bc4a ,
    0xb70151c855c0b6b943006f006d0070004e0061006d006500000000000000d9cb ,
    0x95bb9ff0b84fa39eeda5976282d607000000fe926418f32ed843874a57f371c5 ,
    0x55c744006f0063006b00650074004e0075006d00000000000000bb0ae340649d ,
    0x1049aae8ec4ebde6085c07000000fe926418f32ed843874a57f371c555c74900 ,
    0x6e0076006f006900630065004e0075006d0000000000000081751aaa23f69a40 ,
    0xa072b77523cc41aa07000000fe926418f32ed843874a57f371c555c756006f00 ,
    0x690064000000000000005d987f7b6393b74694613896c992600207000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce530065006300740069006f006e004e006100 ,
    0x6d006500000000000000629486249c2f5f43be9418ffffe018f507000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce500061007000650072004900730045006e00 ,
    0x760065006c006f0070006500000000000000fd737f70dbf46041b994737f8591 ,
    0x0bd307000000aa4d4a3d82683542a64491e1b0dcc8ce50006100700065007200 ,
    0x53007500700070006c00690065006400000000000000c046be8b6c2c484cab19 ,
    0xd76e4848398607000000aa4d4a3d82683542a64491e1b0dcc8ce54006f007400 ,
    0x61006c004e00650074005300680065006500740073000000000000007f0c1c8e ,
    0xb6ff914e91dc3f2e6c09f92107000000aa4d4a3d82683542a64491e1b0dcc8ce ,
    0x54006f00740061006c00470072006f0073007300530068006500650074007300 ,
    0x0000000000009b6481e53c8dad4d9e02d4a59f4a65b707000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce4e006500740050006c00610074006500730000000000 ,
    0x000076d7329e12bb544a888c8e52d9f6fd0e07000000aa4d4a3d82683542a644 ,
    0x91e1b0dcc8ce42006c00650065006400730000000000000079517bd854529e4a ,
    0x8ec67b1f8f41ad4d07000000aa4d4a3d82683542a64491e1b0dcc8ce50006100 ,
    0x700065007200580049006e0063006800000000000000773bb4d9b830b443a91f ,
    0x4320ac56d04c07000000aa4d4a3d82683542a64491e1b0dcc8ce500061007000 ,
    0x65007200590049006e0063006800000000000000dfd8e0440b8c314787e55c51 ,
    0x593b2b3307000000aa4d4a3d82683542a64491e1b0dcc8ce530069007a006500 ,
    0x580049006e006300680000000000000043e1bb04a7f43b42a3bd0c778d01bfa8 ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce530069007a00650059004900 ,
    0x6e0063006800000000000000f624c47823232f49ab0dfb52196f5dbe07000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce5000720069006e00740069006e006700 ,
    0x4d006500740068006f006400000000000000db5966a72e84fe438fb95102c24d ,
    0xc6d007000000aa4d4a3d82683542a64491e1b0dcc8ce50004d00530046007200 ,
    0x6f006e007400000000000000751e6da11b9aa04aac1711c8eefe530207000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce50004d0053004200610063006b000000 ,
    0x00000000a607e6fddbbf53408a7f1bc0e07d397e07000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce430059004d004b00460072006f006e007400000000000000 ,
    0xb82b28fbac718b46a2138703ea6aeb5407000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce430059004d004b004200610063006b000000000000004746bca5b9f6 ,
    0x6d4386f6374c4e02d50507000000aa4d4a3d82683542a64491e1b0dcc8ce4d00 ,
    0x6500740061006c006c0069006300460072006f006e0074000000000000003e19 ,
    0x66f8e1774b4194f8891dfb41490c07000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce4d006500740061006c006c00690063004200610063006b00000000000000 ,
    0xa27dd3779f6c634baa306dc9865ee58f07000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce530070006f0074005300650061006c00460072006f006e0074000000 ,
    0x00000000c378335aa8f2064e85f1facd9c163a0b07000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce530070006f0074005300650061006c004200610063006b00 ,
    0x00000000000076e590be5021d04db4abcef175554d6707000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce4900730042006c00610063006b004f006e006c007900 ,
    0x0000000000007aa98770ff7b164aa4d3c93cbf64da1f07000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce50004d00530043006f006c006f007500720073000000 ,
    0x00000000e9d0677522e2ad44aabb87878d9f2baa07000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce50007200650073007300000000000000506a48b1f2ef2148 ,
    0xa7b8fb777d4c355907000000aa4d4a3d82683542a64491e1b0dcc8ce4d006100 ,
    0x740063006800530061006d0070006c006500000000000000124f8c598730d74a ,
    0x9d55876459da0cc207000000aa4d4a3d82683542a64491e1b0dcc8ce50007200 ,
    0x65007300730043006800650063006b00000000000000a635a2388b3e4e468979 ,
    0x28144b7ccaac07000000aa4d4a3d82683542a64491e1b0dcc8ce560061007200 ,
    0x6e00690073006800000000000000ea02e61de3aa224abf473b3b69213d790700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce5000720065007300730044006100 ,
    0x7400650045007800700000000000000001a90ba49f5a0a4696bf3a18284314f1 ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce4e0075006d00620065007200 ,
    0x69006e00670053007400610072007400000000000000de1b21757758fa4392a4 ,
    0x5769bda57bb807000000aa4d4a3d82683542a64491e1b0dcc8ce4e0075006d00 ,
    0x62006500720069006e00670045006e0064000000000000009124781409590a4c ,
    0xb09e9c27f53650e907000000aa4d4a3d82683542a64491e1b0dcc8ce44006900 ,
    0x650063007500740000000000000068790605801c534691531de6a86956800700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce4400690065004e0075006d006200 ,
    0x65007200000000000000929063ee4e372a468167ec2e41b805c107000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce4c006900740068006f005000650072006600 ,
    0x00000000000086c8540ac3ddd54eb93ead07be8a5ce607000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce4c006900740068006f00530063006f00720065000000 ,
    0x00000000f4a206b05ee2bf4c8dbf77b42530cf5907000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce4d006100740072006900780000000000000015fc52137048 ,
    0x344b8cb5b095dce05f4907000000aa4d4a3d82683542a64491e1b0dcc8ce5000 ,
    0x720069006f007200690074007900000000000000cf7a2a86c47b0144b21dfd7b ,
    0xc7cff81f07000000aa4d4a3d82683542a64491e1b0dcc8ce5000610073007300 ,
    0x43006f0075006e007400000000000000b3fe9b546c133b48ae697b8dfcbe1eec ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce500072006500730073004800 ,
    0x7200730000000000000089ff919c8c2cb04795bac03adb54784507000000fe92 ,
    0x6418f32ed843874a57f371c555c743006f006e00740061006300740047006500 ,
    0x6e006500720061006c00490044000000000000005db44ec31b9074409a8175eb ,
    0x47137bc3070000000e7a128852f41a47b128e4f3b41e4fb44d00480050007200 ,
    0x69006e0074000000000000009663a2b3f469e74384b7fdcf57d349e807000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb4500072006f006f006600410070007000 ,
    0x72006f007600650064004400610074006500000000000000634027e63b69c14c ,
    0x8d8a18cfebb340f0070000000e7a128852f41a47b128e4f3b41e4fb450007200 ,
    0x6f006f006600530065006e0074004400610074006500000000000000e41b349e ,
    0x809836428a33efa5925ec82d070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x5300700065006300690066006900650064004400750065004400610074006500 ,
    0x0000000000009034f5093d684d4493441af67c602460070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4610073007300690067006e0065006400640075006500 ,
    0x640061007400650000000000000023ee24ea3dc79c4bbb4696b91b02fc070700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4530074005000720069006e007400 ,
    0x00000000000083aa5106ca80a442a2bc29b1488f06b2070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb464007900420069006e00640065007200790000000000 ,
    0x0000f2f8e384332a3e4db2b4f3a9845b265a070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4640079004f007500740073006900640065005300720076000000 ,
    0x00000000b999e8244742b34492bc22d3c418341807000000dcc151d8b1dcde44 ,
    0xb713313a2508ade14d0061006300680069006e0065004d006f00640065006c00 ,
    0x000000000000673d52f2b5bccc4d948b1dfe92c904e007000000fe926418f32e ,
    0xd843874a57f371c555c7700072006f006a006500630074007300740061007400 ,
    0x7500730069006400000000000000c1876f97fff14c42aa536b9f96f3acbd0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb45300740050007200650070007200 ,
    0x650073007300000000000000825dbf065daf564ca54caffcd34cfde107000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce5000720069006e0074004a006f006200 ,
    0x53007400610074007500730000000000000080fd890ee7705e4aa539c74401c6 ,
    0xbc1007000000aa4d4a3d82683542a64491e1b0dcc8ce46006f0072006d004e00 ,
    0x61006d00650000000000000032070e9579bc5b4ea878874fc2462d4707000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce41007100750065006f00750073000000 ,
    0x00000000118be950d66974438268ddc04c06af1a070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4490044000000000000006f7f02ef6df8574092eeeafb278f ,
    0x50ec07000000fe926418f32ed843874a57f371c555c749004400000000000000 ,
    0x03933b4b9f324445a82e368651b1052b07000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b949004400000000000000dddea009f88a474ba0e62dd08ff0499f0700 ,
    0x0000dcc151d8b1dcde44b713313a2508ade14900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Matrix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5ba3fc14b7f8246a29144674afb7260
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Bleeds"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2907ef99aac74a4a83ee9f6909fc71f8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.IsBlackOnly"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2d9facc8efcea4ba9b7f81957712611
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e14bc745ae214780af98649a57c483
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressCheck"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3662f17fb0a60244bf6101f901d8ed3f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingStart"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa873ff7ded62254fa1cb9db5eb6cf14b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoPerf"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc85d0b930d7b04458e9a3ccdea86d27c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoScore"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4822fdefe492c4f895e408c21c517f7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MatchSample"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x263e369029a96349b97999de3c079b16
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6e7c69900879a449bf2f739853bf81e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Diecut"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa50ec622fef3e45bb593d2d9d2f9b1e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.DieNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd8a227fd007da64982947be64dd10b61
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x746e97c2943d994b9979ae410da3fd6b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingEnd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb822fe25320c3742a0b18bedd71f13d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSColours"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a40154f30581b45bc6b389ace779603
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x53a4784282a8294597129472dc346aa1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Varnish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0662fad8a64fd140a7c8286300579585
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintingMethod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SpotSealFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalGrossSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MetallicBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperIsEnvelope"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MetallicFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SectionName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalNetSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NetPlates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SpotSealBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperSupplied"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PassCount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressHrs"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1026"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1027"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1025"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArrivalDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x485b62f6a1136e4391e0d06344d717b2
        End
    End
    Begin
        dbText "Name" ="ExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80d5060348bb3d0034bb3d002045aa0e
        End
    End
    Begin
        dbText "Name" ="SumOfTotalTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac494118f15eca41bd7c10b287c64f4a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrint"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe7c5403147537d4a84fcdc5eb1ec7baa
        End
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="OrderOption"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80385b0658a52f0044a52f0034af0f12
        End
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPressDate"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa5ea4086f3292d43adbd959045448fe2
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MachineModel"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CMYKColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0158d929d218ba4fa85665302e9227c7
        End
    End
    Begin
        dbText "Name" ="PMSColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6afd3ea267a12f4495111e135ca2e717
        End
    End
    Begin
        dbText "Name" ="MetallicColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8c13893e96bd7c49b007f5591886a5d7
        End
    End
    Begin
        dbText "Name" ="SSColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb03fb2dbaf18d458f71068dc8bedffd
        End
    End
    Begin
        dbText "Name" ="Runsize"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2afadf12bd60f4fabe6a05f9db7ab71
        End
    End
    Begin
        dbText "Name" ="Finalsize"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x60c51a5e5b31804fb33045f440be8032
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.projectstatusid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ReadyToPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94b307c1371a564ab009f95d0350b0b9
        End
    End
    Begin
        dbText "Name" ="IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6fe6ba314ad86e47a96136308af8cb04
        End
    End
    Begin
        dbText "Name" ="Expr1034"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1002"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1028"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintJobStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.FormName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PrioritySort"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2be28b132a91334e90c854536168a418
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Aqueous"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RunArea"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x008dda0c58ac350044ac35009877770d
        End
    End
    Begin
        dbText "Name" ="FinalArea"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1d31635cff78044c9badaa4036a7e787
        End
    End
    Begin
        dbText "Name" ="Expr1074"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf5ec478da3cb2242ab6e611e63c6a980
        End
    End
    Begin
        dbText "Name" ="PaperDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc18c3dc4bd766d4aa0aca85601f1d8c4
        End
    End
End
Begin
    State =0
    Left =179
    Top =108
    Right =1864
    Bottom =914
    Left =-1
    Top =-1
    Right =1653
    Bottom =297
    Left =167
    Top =0
    ColumnsShown =539
    Begin
        Left =157
        Top =14
        Right =520
        Bottom =487
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =655
        Top =3
        Right =942
        Bottom =359
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =953
        Top =20
        Right =1097
        Bottom =406
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1517
        Top =27
        Right =1693
        Bottom =276
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =635
        Top =120
        Right =938
        Bottom =360
        Top =0
        Name ="dbo_Machine"
        Name =""
    End
End
