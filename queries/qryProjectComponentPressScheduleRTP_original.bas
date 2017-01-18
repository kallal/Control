Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False) AND ((dbo_ProjectComponentHeader."
    "ProofApprovedDate) Is Not Null) AND ((dbo_ProjectHeader.projectstatusid)<=30) AN"
    "D ((IIf(([PROOFAPPROVEDDATE] Is Not Null) And (([ARRIVALDATE] Is Not Null) Or (["
    "OrderOption]=3) Or (Nz([ORDEROPTION],0)=0)),True,False))=True) AND ((dbo_Project"
    "ComponentPress.PrintJobStatus)<3))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_Machine"
    Name ="dbo_ProjectComponentStock"
End
Begin OutputColumns
    Alias ="myPressDate"
    Expression ="IIf(Nz([pressdateexp],0)<>0,[pressdateexp],fncWorkday([duedate],-Nz([dyBindery],"
        "0)))"
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    Expression ="dbo_ProjectComponentPress.PaperYInch"
    Expression ="dbo_ProjectComponentPress.Priority"
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
    Expression ="dbo_ProjectComponentPress.PassCount"
    Expression ="dbo_ProjectComponentPress.PressHrs"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Alias ="SumOfTotalTime"
    Expression ="DLookUp(\"sumoftotaltime\",\"qryProjectComponentPressScheduleHoursSoFar\",\"[Pro"
        "jectComponentHeaderID] = \" & [dbo_projectComponentPress].[projectComponentid])"
    Expression ="dbo_ProjectComponentStock.ExpectedDate"
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
    Expression ="dbo_ProjectComponentStock.OrderOption"
    Expression ="dbo_ProjectComponentHeader.StPrint"
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
    Expression ="dbo_ProjectComponentStock.ArrivalDate"
    Alias ="PrioritySort"
    Expression ="Nz([priority],99)"
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
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentStock.Project"
        "ComponentID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="dbo_ProjectComponentPress.SectionName = dbo_ProjectComponentStock.PressRunName"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    Flag =0
    Expression ="dbo_ProjectComponentPress.PaperYInch"
    Flag =0
    Expression ="dbo_ProjectComponentPress.Priority"
    Flag =0
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
    0x5ac7708c258e494f8ffc811793264fa0
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000aa4d4a3d82683542a64491e1b0dcc8ce00000000b941156e ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6dec62e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000fe926418f32ed843874a57f371c555c7000000009b2fba6dec62e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000d7c549c33168bc4ab70151c855c0b6b90000 ,
    0x0000bad9a96dec62e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c00000000000000dcc151d8 ,
    0xb1dcde44b713313a2508ade100000000c04ab5c0ea62e4400000000000000000 ,
    0x640062006f005f004d0061006300680069006e0065000000000000006f672735 ,
    0x91c9bc4a96e5e29a333a483d00000000236addc0ea62e4400000000000000000 ,
    0x640062006f005f00500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e007400530074006f0063006b00000000000000a5ea4086f3292d43 ,
    0xadbd959045448fe207000000000000000000000000000000000000006d007900 ,
    0x500072006500730073004400610074006500000000000000ac494118f15eca41 ,
    0xbd7c10b287c64f4a070000000000000000000000000000000000000053007500 ,
    0x6d004f00660054006f00740061006c00540069006d006500000000000000e7c5 ,
    0x403147537d4a84fcdc5eb1ec7baa070000000000000000000000000000000000 ,
    0x000044007500650044006100740065000000000000000158d929d218ba4fa856 ,
    0x65302e9227c7070000000000000000000000000000000000000043004d005900 ,
    0x4b0043006f006c006f00720073000000000000006afd3ea267a12f4495111e13 ,
    0x5ca2e717070000000000000000000000000000000000000050004d0053004300 ,
    0x6f006c006f00720073000000000000008c13893e96bd7c49b007f5591886a5d7 ,
    0x07000000000000000000000000000000000000004d006500740061006c006c00 ,
    0x6900630043006f006c006f0072007300000000000000fb03fb2dbaf18d458f71 ,
    0x068dc8bedffd0700000000000000000000000000000000000000530053004300 ,
    0x6f006c006f0072007300000000000000d2afadf12bd60f4fabe6a05f9db7ab71 ,
    0x0700000000000000000000000000000000000000520075006e00730069007a00 ,
    0x650000000000000060c51a5e5b31804fb33045f440be80320700000000000000 ,
    0x000000000000000000000000460069006e0061006c00730069007a0065000000 ,
    0x0000000094b307c1371a564ab009f95d0350b0b9070000000000000000000000 ,
    0x00000000000000005200650061006400790054006f005000720069006e007400 ,
    0x0000000000006fe6ba314ad86e47a96136308af8cb0407000000000000000000 ,
    0x000000000000000000004900730052007500730068000000000000003554a30f ,
    0x8d05624b95ac4b5365bea9870700000000000000000000000000000000000000 ,
    0x5000720069006f00720069007400790053006f0072007400000000000000ea02 ,
    0xe61de3aa224abf473b3b69213d7907000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce700072006500730073006400610074006500650078007000000000000000 ,
    0x83aa5106ca80a442a2bc29b1488f06b2070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb464007900420069006e00640065007200790000000000000079517bd8 ,
    0x54529e4a8ec67b1f8f41ad4d07000000aa4d4a3d82683542a64491e1b0dcc8ce ,
    0x50006100700065007200580049006e0063006800000000000000773bb4d9b830 ,
    0xb443a91f4320ac56d04c07000000aa4d4a3d82683542a64491e1b0dcc8ce5000 ,
    0x6100700065007200590049006e006300680000000000000015fc52137048344b ,
    0x8cb5b095dce05f4907000000aa4d4a3d82683542a64491e1b0dcc8ce50007200 ,
    0x69006f007200690074007900000000000000b14c94a8a3d9394db1aaf6ace8a3 ,
    0x8c8707000000aa4d4a3d82683542a64491e1b0dcc8ce49004400000000000000 ,
    0x71e323a4bb368e4da3132c08218e7d3607000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e00740049004400000000000000873fed1bdd4daf46b59105d9e5c28c310700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4500072006f006a00650063007400 ,
    0x480065006100640065007200490044000000000000003c3a0e9cef0ad74dbd10 ,
    0x42d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb443006f006d00 ,
    0x70006f006e0065006e0074004e0061006d006500000000000000ab2bd0a18191 ,
    0xef46b6c770f2b1812fa607000000fe926418f32ed843874a57f371c555c75000 ,
    0x72006f006a006500630074004e0061006d006500000000000000124b02a694dd ,
    0x0e4c96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b94300 ,
    0x6f006d0070004e0061006d006500000000000000d9cb95bb9ff0b84fa39eeda5 ,
    0x976282d607000000fe926418f32ed843874a57f371c555c744006f0063006b00 ,
    0x650074004e0075006d00000000000000bb0ae340649d1049aae8ec4ebde6085c ,
    0x07000000fe926418f32ed843874a57f371c555c749006e0076006f0069006300 ,
    0x65004e0075006d0000000000000081751aaa23f69a40a072b77523cc41aa0700 ,
    0x0000fe926418f32ed843874a57f371c555c756006f0069006400000000000000 ,
    0x5d987f7b6393b74694613896c992600207000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce530065006300740069006f006e004e0061006d006500000000000000 ,
    0x629486249c2f5f43be9418ffffe018f507000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce500061007000650072004900730045006e00760065006c006f007000 ,
    0x6500000000000000fd737f70dbf46041b994737f85910bd307000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce5000610070006500720053007500700070006c00 ,
    0x690065006400000000000000c046be8b6c2c484cab19d76e4848398607000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce54006f00740061006c004e0065007400 ,
    0x5300680065006500740073000000000000007f0c1c8eb6ff914e91dc3f2e6c09 ,
    0xf92107000000aa4d4a3d82683542a64491e1b0dcc8ce54006f00740061006c00 ,
    0x470072006f00730073005300680065006500740073000000000000009b6481e5 ,
    0x3c8dad4d9e02d4a59f4a65b707000000aa4d4a3d82683542a64491e1b0dcc8ce ,
    0x4e006500740050006c00610074006500730000000000000076d7329e12bb544a ,
    0x888c8e52d9f6fd0e07000000aa4d4a3d82683542a64491e1b0dcc8ce42006c00 ,
    0x6500650064007300000000000000dfd8e0440b8c314787e55c51593b2b330700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce530069007a006500580049006e00 ,
    0x6300680000000000000043e1bb04a7f43b42a3bd0c778d01bfa807000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce530069007a006500590049006e0063006800 ,
    0x000000000000f624c47823232f49ab0dfb52196f5dbe07000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce5000720069006e00740069006e0067004d0065007400 ,
    0x68006f006400000000000000db5966a72e84fe438fb95102c24dc6d007000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce50004d005300460072006f006e007400 ,
    0x000000000000751e6da11b9aa04aac1711c8eefe530207000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce50004d0053004200610063006b00000000000000a607 ,
    0xe6fddbbf53408a7f1bc0e07d397e07000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce430059004d004b00460072006f006e007400000000000000b82b28fbac71 ,
    0x8b46a2138703ea6aeb5407000000aa4d4a3d82683542a64491e1b0dcc8ce4300 ,
    0x59004d004b004200610063006b000000000000004746bca5b9f66d4386f6374c ,
    0x4e02d50507000000aa4d4a3d82683542a64491e1b0dcc8ce4d00650074006100 ,
    0x6c006c0069006300460072006f006e0074000000000000003e1966f8e1774b41 ,
    0x94f8891dfb41490c07000000aa4d4a3d82683542a64491e1b0dcc8ce4d006500 ,
    0x740061006c006c00690063004200610063006b00000000000000a27dd3779f6c ,
    0x634baa306dc9865ee58f07000000aa4d4a3d82683542a64491e1b0dcc8ce5300 ,
    0x70006f0074005300650061006c00460072006f006e007400000000000000c378 ,
    0x335aa8f2064e85f1facd9c163a0b07000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce530070006f0074005300650061006c004200610063006b00000000000000 ,
    0x76e590be5021d04db4abcef175554d6707000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce4900730042006c00610063006b004f006e006c007900000000000000 ,
    0x7aa98770ff7b164aa4d3c93cbf64da1f07000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce50004d00530043006f006c006f00750072007300000000000000e9d0 ,
    0x677522e2ad44aabb87878d9f2baa07000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce50007200650073007300000000000000506a48b1f2ef2148a7b8fb777d4c ,
    0x355907000000aa4d4a3d82683542a64491e1b0dcc8ce4d006100740063006800 ,
    0x530061006d0070006c006500000000000000124f8c598730d74a9d55876459da ,
    0x0cc207000000aa4d4a3d82683542a64491e1b0dcc8ce50007200650073007300 ,
    0x43006800650063006b00000000000000a635a2388b3e4e46897928144b7ccaac ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce5600610072006e0069007300 ,
    0x680000000000000001a90ba49f5a0a4696bf3a18284314f107000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce4e0075006d0062006500720069006e0067005300 ,
    0x7400610072007400000000000000de1b21757758fa4392a45769bda57bb80700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce4e0075006d006200650072006900 ,
    0x6e00670045006e0064000000000000009124781409590a4cb09e9c27f53650e9 ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce440069006500630075007400 ,
    0x00000000000068790605801c534691531de6a869568007000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce4400690065004e0075006d0062006500720000000000 ,
    0x0000929063ee4e372a468167ec2e41b805c107000000aa4d4a3d82683542a644 ,
    0x91e1b0dcc8ce4c006900740068006f00500065007200660000000000000086c8 ,
    0x540ac3ddd54eb93ead07be8a5ce607000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce4c006900740068006f00530063006f0072006500000000000000f4a206b0 ,
    0x5ee2bf4c8dbf77b42530cf5907000000aa4d4a3d82683542a64491e1b0dcc8ce ,
    0x4d0061007400720069007800000000000000cf7a2a86c47b0144b21dfd7bc7cf ,
    0xf81f07000000aa4d4a3d82683542a64491e1b0dcc8ce50006100730073004300 ,
    0x6f0075006e007400000000000000b3fe9b546c133b48ae697b8dfcbe1eec0700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce5000720065007300730048007200 ,
    0x730000000000000089ff919c8c2cb04795bac03adb54784507000000fe926418 ,
    0xf32ed843874a57f371c555c743006f006e007400610063007400470065006e00 ,
    0x6500720061006c0049004400000000000000015b4fdcf24e5c49acdf0bbce794 ,
    0x5cd9070000006f67273591c9bc4a96e5e29a333a483d45007800700065006300 ,
    0x74006500640044006100740065000000000000005db44ec31b9074409a8175eb ,
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
    0x6400610074006500000000000000411a944c12269b48910abaf1d57965e40700 ,
    0x00006f67273591c9bc4a96e5e29a333a483d4f0072006400650072004f007000 ,
    0x740069006f006e0000000000000023ee24ea3dc79c4bbb4696b91b02fc070700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4530074005000720069006e007400 ,
    0x000000000000b999e8244742b34492bc22d3c418341807000000dcc151d8b1dc ,
    0xde44b713313a2508ade14d0061006300680069006e0065004d006f0064006500 ,
    0x6c00000000000000673d52f2b5bccc4d948b1dfe92c904e007000000fe926418 ,
    0xf32ed843874a57f371c555c7700072006f006a00650063007400730074006100 ,
    0x74007500730069006400000000000000a4c2d0a53a015c4cbaacad5b25ce9436 ,
    0x070000006f67273591c9bc4a96e5e29a333a483d410052005200490056004100 ,
    0x4c004400410054004500000000000000c1876f97fff14c42aa536b9f96f3acbd ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb4530074005000720065007000 ,
    0x7200650073007300000000000000825dbf065daf564ca54caffcd34cfde10700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce5000720069006e0074004a006f00 ,
    0x620053007400610074007500730000000000000080fd890ee7705e4aa539c744 ,
    0x01c6bc1007000000aa4d4a3d82683542a64491e1b0dcc8ce46006f0072006d00 ,
    0x4e0061006d006500000000000000118be950d66974438268ddc04c06af1a0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4490044000000000000006f7f02ef ,
    0x6df8574092eeeafb278f50ec07000000fe926418f32ed843874a57f371c555c7 ,
    0x4900440000000000000003933b4b9f324445a82e368651b1052b07000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b949004400000000000000dddea009f88a474b ,
    0xa0e62dd08ff0499f07000000dcc151d8b1dcde44b713313a2508ade149004400 ,
    0x0000000000008a78109159af564499df6242c38f60dc070000006f67273591c9 ,
    0xbc4a96e5e29a333a483d500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e007400490044000000000000000a7243bbd8418844a86ab554 ,
    0x26ae5748070000006f67273591c9bc4a96e5e29a333a483d5000720065007300 ,
    0x7300520075006e004e0061006d00650000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
        dbText "Name" ="Expr1027"
        dbLong "AggregateType" ="-1"
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
        dbInteger "ColumnWidth" ="4185"
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
        dbText "Name" ="Expr1072"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.OrderOption"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ArrivalDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1006"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1029"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1030"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1036"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1026"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1025"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1071"
        dbLong "AggregateType" ="-1"
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
        dbText "Name" ="PrioritySort"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3554a30f8d05624b95ac4b5365bea987
        End
    End
End
Begin
    State =0
    Left =82
    Top =59
    Right =1333
    Bottom =805
    Left =-1
    Top =-1
    Right =1219
    Bottom =243
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =212
        Top =25
        Right =575
        Bottom =498
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =776
        Top =-2
        Right =1063
        Bottom =354
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1120
        Top =20
        Right =1264
        Bottom =406
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1437
        Top =44
        Right =1613
        Bottom =293
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =623
        Top =394
        Right =926
        Bottom =634
        Top =0
        Name ="dbo_Machine"
        Name =""
    End
    Begin
        Left =695
        Top =98
        Right =1048
        Bottom =386
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
End
