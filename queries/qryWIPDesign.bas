Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) And ((dbo_ProjectHeader.ProjectStat"
    "usID)<29) And ((dbo_ProjectHeader.Void)=False) And ((dbo_ProjectComponentHeader."
    "MailComponentYN)=False) And ((Nz(dbo_ProjectComponentHeader.completiondate,0))=0"
    ") And ((dbo_ProjectComponentHeader.StCreative)<>\"NOT REQ'D\") And (((Nz(dbo_Pro"
    "jectHeader.invoicenum,0)=0) Or (dbo_ProjectHeader.KeepInProductionYN=True))<>Fal"
    "se) And ((Left([StCreative],4))<>\"COMP\"))"
Begin InputTables
    Name ="dbo_ProjectComponentCreative"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Alias ="DesignDueSortOrder"
    Expression ="CVDate(IIf([DesignDue],[DesignDue],#1/1/1900#))"
    Expression ="dbo_ProjectComponentCreative.ID"
    Expression ="dbo_ProjectComponentCreative.ProductType"
    Expression ="dbo_ProjectComponentCreative.Description"
    Expression ="dbo_ProjectComponentCreative.HoursEst"
    Expression ="dbo_ProjectComponentCreative.HoursAct"
    Expression ="dbo_ProjectComponentCreative.DaysEst"
    Expression ="dbo_ProjectComponentCreative.DaysAct"
    Expression ="dbo_ProjectComponentCreative.IsEnabled"
    Expression ="dbo_ProjectComponentCreative.IsComplete"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectComponentHeader.StMailData"
    Expression ="dbo_ProjectComponentHeader.StMailShop"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectComponentHeader.DataArrivedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.MHMailData"
    Expression ="dbo_ProjectComponentHeader.DYMailData"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="DueDate"
    Expression ="IIf(Nz([specifiedDueDate],0)=0 And Nz([assignedduedate],0)=0,#1/1/1900#,IIf(Nz(["
        "SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate]))"
    Expression ="dbo_ProjectHeader.IsRush"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty1"
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Expression ="dbo_ProjectHeader.ProjectNotes"
    Expression ="dbo_ProjectComponentHeader.FriendlyDescription"
    Alias ="ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Alias ="SalesRep"
    Expression ="[dbo_CompanyEmployee].[fn] & \" \" & [dbo_companyemployee].[ln]"
    Expression ="dbo_ProjectHeader.DeliveryCutoffTime"
    Expression ="dbo_ProjectHeader.FirmDueDate"
    Alias ="CompletedDate"
    Expression ="Nz([dbo_ProjectComponentHeader].[completiondate],0)"
    Expression ="dbo_ProjectComponentHeader.Mail_PrintReadyYN"
    Expression ="dbo_ProjectComponentHeader.Mail_Priority"
    Alias ="myPriority"
    Expression ="Nz([dbo_projectcomponentheader].[mail_priority],99)"
    Alias ="Mail_Status"
    Expression ="Nz([dbo_ProjectComponentHeader].[Mail_Status],1)"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.CompletionDate"
    Alias ="DesignDue"
    Expression ="fncWorkday([DueDate],-(Nz([DYMailShop])+Nz([DYBindery])+Nz([DYLFFinish])+Nz([DYO"
        "utsideSrv])+Nz([DYPrint])+Nz([DYMailData])+Nz([DYPrepress])))"
    Expression ="dbo_ProjectComponentHeader.StCreative"
    Expression ="dbo_ProjectComponentHeader.MHCreative"
    Expression ="dbo_ProjectComponentHeader.DYCreative"
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_ProjectHeader.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentCreative"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentCreative.ProjectComponentID = dbo_ProjectComponentHeader.ID"
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
dbLongBinary "DOL" = Begin
    0x0acc0e550000000028432c4c2b117b45b2969d4c04c522fe000000004056532b ,
    0xacd7e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400430072006500610074006900 ,
    0x76006500000000000000d2d381ba93398a4283a6a9ed80a7b4be00000000d477 ,
    0x562bacd7e4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720000000000000035f87d9f0b136040ad3c2851f16d2a80000000009fd7632b ,
    0xacd7e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a1000000006c1a3d2bacd7e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa000000006815372bacd7e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790045006d00 ,
    0x70006c006f00790065006500000000000000f0a07a545f8a6448b11bd6a1031b ,
    0x20d100000000ac6d3b2bacd7e4400000000000000000640062006f005f004300 ,
    0x6f006d00700061006e0079004c006f0063006100740069006f006e0000000000 ,
    0x0000801f370358c35d0044c35d00d8035608070000009bf706aec4233d408223 ,
    0x2b16c7de5998440065007300690067006e0044007500650053006f0072007400 ,
    0x4f0072006400650072000000000000001f66a93ab2e7d746bc298b37fd98fb12 ,
    0x070000009bf706aec4233d4082232b16c7de5998440075006500440061007400 ,
    0x650000000000000021a012afc0564b42b3047fe6122df268070000009bf706ae ,
    0xc4233d4082232b16c7de5998500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e007400490044000000000000005dec0abbc7b3e74c996d ,
    0x63c8b0e80682070000009bf706aec4233d4082232b16c7de5998530061006c00 ,
    0x65007300520065007000000000000000007c0a0404aa7000f0a9700068df0a04 ,
    0x070000009bf706aec4233d4082232b16c7de599843006f006d0070006c006500 ,
    0x7400650064004400610074006500000000000000a3cfa4d222b1d1489a45b77e ,
    0x403f5b62070000009bf706aec4233d4082232b16c7de59986d00790050007200 ,
    0x69006f007200690074007900000000000000005672050caa8f00f8a98f009480 ,
    0x050d070000009bf706aec4233d4082232b16c7de59984d00610069006c005f00 ,
    0x530074006100740075007300000000000000b0a483953cc9f043acaa1a48a0a7 ,
    0x059c070000009bf706aec4233d4082232b16c7de599844006500730069006700 ,
    0x6e004400750065000000000000007178fba22da91240b12e10acddcb92050700 ,
    0x000028432c4c2b117b45b2969d4c04c522fe4900440000000000000095dd0f36 ,
    0xc022924db77bd9f017af95f30700000028432c4c2b117b45b2969d4c04c522fe ,
    0x500072006f0064007500630074005400790070006500000000000000cedc3209 ,
    0xf2a2e948845617e9086c98950700000028432c4c2b117b45b2969d4c04c522fe ,
    0x4400650073006300720069007000740069006f006e000000000000005b541c13 ,
    0xc9d43e49928de905f2906af80700000028432c4c2b117b45b2969d4c04c522fe ,
    0x48006f00750072007300450073007400000000000000b91542b11e64a342a3ef ,
    0x3d7dff1904000700000028432c4c2b117b45b2969d4c04c522fe48006f007500 ,
    0x7200730041006300740000000000000044beb9c35566cd46b64c97b9d4de91ec ,
    0x0700000028432c4c2b117b45b2969d4c04c522fe440061007900730045007300 ,
    0x740000000000000048e6ac98bceecc459c4b04d603763c6e0700000028432c4c ,
    0x2b117b45b2969d4c04c522fe4400610079007300410063007400000000000000 ,
    0x9b66a39d8ce8d6409ae87e26f03bba140700000028432c4c2b117b45b2969d4c ,
    0x04c522fe4900730045006e00610062006c00650064000000000000002e8f9718 ,
    0xe7684e498b033e6c1868e8c80700000028432c4c2b117b45b2969d4c04c522fe ,
    0x4900730043006f006d0070006c00650074006500000000000000749d4175d9cb ,
    0xb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a804400 ,
    0x6f0063006b00650074004e0075006d000000000000006b8100b18f7ba34aa3c5 ,
    0x9fda19a111ed0700000035f87d9f0b136040ad3c2851f16d2a80500072006f00 ,
    0x6a00650063007400530074006100740075007300490044000000000000007da6 ,
    0xa641b3cf604b95c0700a612b45850700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8049006e0076006f006900630065004e0075006d00000000000000fde2928b ,
    0xbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a1 ,
    0x43006f006d0070004e0061006d00650000000000000040de5e7aec65a745aa86 ,
    0xe7e9e8cb55780700000035f87d9f0b136040ad3c2851f16d2a80530061006c00 ,
    0x6500730052006500700049004400000000000000ce73341489752f42bffad7de ,
    0xbac543a60700000035f87d9f0b136040ad3c2851f16d2a804300730072004900 ,
    0x44000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006a00650063007400480065006100 ,
    0x640065007200490044000000000000008265226ce5165f4597f9cda188898d96 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00490044000000000000000b86554b86a0 ,
    0x0744973b8362a48bed1007000000d2d381ba93398a4283a6a9ed80a7b4be5300 ,
    0x74004d00610069006c00440061007400610000000000000070fa57b523cbbd40 ,
    0xa137dbadc276a46e07000000d2d381ba93398a4283a6a9ed80a7b4be53007400 ,
    0x4d00610069006c00530068006f007000000000000000a21dc4fed47c244fa08f ,
    0xb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d00 ,
    0x70006f006e0065006e0074004e0061006d0065000000000000007857d2ada5ee ,
    0x1a42ae4659405dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007000650063007400650064005100740079000000000000008063cea60c7b ,
    0xaf4dbe23035a943a986307000000d2d381ba93398a4283a6a9ed80a7b4be4400 ,
    0x6100740061004100720072006900760065006400440061007400650000000000 ,
    0x0000641657895895584f819ed540e3d01c5507000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4400610074006100450078007000650063007400650064004400 ,
    0x610074006500000000000000a084f8da1e4f1342b1fae6042c102b9a07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be410073007300690067006e0065006400 ,
    0x4400750065004400610074006500000000000000d9c1524eae16e7439791b1c2 ,
    0x8f640d8107000000d2d381ba93398a4283a6a9ed80a7b4be5300700065006300 ,
    0x69006600690065006400440075006500440061007400650000000000000014c9 ,
    0xca3be8d13c4e94b6b4c56e803aee07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d0048004d00610069006c0044006100740061000000000000007d52299e ,
    0xc8bc4841932840a9a071ecb307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x440059004d00610069006c004400610074006100000000000000e04379333b12 ,
    0xce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d2a805600 ,
    0x6f00690064000000000000005c90b798aa47ab459c1716da6c77396207000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be500072006f006f006600530065006e00 ,
    0x7400440061007400650000000000000078a4ab78684be74a86eca6bbeda30d68 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006f0066004100 ,
    0x7000700072006f00760065006400440061007400650000000000000093ba397e ,
    0x75759745b39991abbd4894170700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x4900730052007500730068000000000000004c7cc044f37d714ca4af682c91d4 ,
    0x1ae007000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f007400650041006d00740031000000000000002bbc476e300c73438d1525ae ,
    0x3776657707000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f00740065005100740079003100000000000000c59643644848454d997b ,
    0x09a1342a123207000000d2d381ba93398a4283a6a9ed80a7b4be4d0061006900 ,
    0x6c0043006f006d0070006f006e0065006e00740059004e000000000000007dec ,
    0x387b9203b34d9e6fdb41398b65cd0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a80500072006f006a006500630074004e006f00740065007300000000000000 ,
    0x21329ae9ef05b746a74d95b8db3ec6de07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be46007200690065006e0064006c007900440065007300630072006900 ,
    0x7000740069006f006e0000000000000029556c4fcc6de9418049e37cebcb8ed3 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be49004400000000000000238a ,
    0x70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa66006e0000000000000027afc0ba5db60e409636470e73e1fc4307000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa6c006e0000000000000078fe3e064e1f ,
    0xef458d83017ec118ee560700000035f87d9f0b136040ad3c2851f16d2a804400 ,
    0x65006c00690076006500720079004300750074006f0066006600540069006d00 ,
    0x650000000000000047b1ba89889f994aa5a5b0ab4f547da30700000035f87d9f ,
    0x0b136040ad3c2851f16d2a804600690072006d00440075006500440061007400 ,
    0x650000000000000090591afcca33cc4a8f11af1822f3c84907000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be63006f006d0070006c006500740069006f006e00 ,
    0x6400610074006500000000000000cd1aa36b5130b249aa917c77bc3e4df50700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c005f0050007200 ,
    0x69006e0074005200650061006400790059004e000000000000006422abaaaed4 ,
    0x8c469b771c000425f54407000000d2d381ba93398a4283a6a9ed80a7b4be4d00 ,
    0x610069006c005f005000720069006f0072006900740079000000000000005904 ,
    0x6d215487f24cac9486591bda8b4107000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d00610069006c005f005300740061007400750073000000000000001c9b ,
    0x84855b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a80500072006f006a006500630074004e0061006d0065000000000000009d1f ,
    0x63407a9b8a46a8d0c329acc9fec507000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be440059004d00610069006c00530068006f0070000000000000005de3afce ,
    0xffee604bb48d2533e48439fd07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x44005900420069006e006400650072007900000000000000fd0ed26d4a6bd649 ,
    0xb28cc16ee730e06307000000d2d381ba93398a4283a6a9ed80a7b4be44005900 ,
    0x4c004600460069006e00690073006800000000000000fb7f59af3141d84d8ecd ,
    0x1e922c02fcee07000000d2d381ba93398a4283a6a9ed80a7b4be440059004f00 ,
    0x7500740073006900640065005300720076000000000000007a43c6b5c6027642 ,
    0x8b85a21703ea6f7c07000000d2d381ba93398a4283a6a9ed80a7b4be44005900 ,
    0x5000720069006e00740000000000000036c416abbe03c14ba648e2d2a6710c0d ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440059005000720065007000 ,
    0x72006500730073000000000000007c008cc95de9b14a996e6fabba6e66e10700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5300740043007200650061007400 ,
    0x690076006500000000000000ddd164036eb01f449febd79de5e8458b07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d004800430072006500610074006900 ,
    0x76006500000000000000785008cac45854429c2d7a0fd550ce6707000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be440059004300720065006100740069007600 ,
    0x650000000000000097f4d916639123478b4d0c4170d61ffb0700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006d00700061006e0079004c006f006300 ,
    0x6100740069006f006e004900440000000000000001d2b706cee7ea48b9f4af0b ,
    0x27f2548007000000f0a07a545f8a6448b11bd6a1031b20d15200650070006f00 ,
    0x7200740043006f006c006f00720000000000000004aeb2718000d24bb73b562a ,
    0x737994cb0700000035f87d9f0b136040ad3c2851f16d2a804900440000000000 ,
    0x00001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db776 ,
    0x59eef5e022a149004400000000000000836b4761bb445b46b7a949192117f870 ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa490044000000000000009db5 ,
    0xc04e1e7c524d885da8dbba3b8b040700000028432c4c2b117b45b2969d4c04c5 ,
    0x22fe500072006f006a0065006300740043006f006d0070006f006e0065006e00 ,
    0x740049004400000000000000cfcb0f694dd678469d745c2d3c9b453407000000 ,
    0xf0a07a545f8a6448b11bd6a1031b20d1490044000000000000007398ac066926 ,
    0x1c43a6ab19abf6ccf39d0700000035f87d9f0b136040ad3c2851f16d2a804b00 ,
    0x65006500700049006e00500072006f00640075006300740069006f006e005900 ,
    0x4e00000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
dbBinary "GUID" = Begin
    0x9bf706aec4233d4082232b16c7de5998
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
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
        dbText "Name" ="dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f66a93ab2e7d746bc298b37fd98fb12
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailComponentYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectNotes"
        dbInteger "ColumnWidth" ="6330"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FriendlyDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21a012afc0564b42b3047fe6122df268
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5dec0abbc7b3e74c996d63c8b0e80682
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CompletedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x007c0a0404aa7000f0a9700068df0a04
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Mail_PrintReadyYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Mail_Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPriority"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa3cfa4d222b1d1489a45b77e403f5b62
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mail_Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x005672050caa8f00f8a98f009480050d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.HoursEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.HoursAct"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.DaysEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.ProductType"
        dbInteger "ColumnWidth" ="2595"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.Description"
        dbInteger "ColumnWidth" ="4710"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.DaysAct"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.IsEnabled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentCreative.IsComplete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DesignDue"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb0a483953cc9f043acaa1a48a0a7059c
        End
    End
    Begin
        dbText "Name" ="DesignDueSortOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x801f370358c35d0044c35d00d8035608
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StCreative"
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1012"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1011"
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
    Left =11
    Top =2
    Right =1354
    Bottom =802
    Left =-1
    Top =-1
    Right =1311
    Bottom =416
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =171
        Top =43
        Right =345
        Bottom =343
        Top =0
        Name ="dbo_ProjectComponentCreative"
        Name =""
    End
    Begin
        Left =403
        Top =54
        Right =716
        Bottom =324
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =793
        Top =57
        Right =1138
        Bottom =315
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1316
        Top =6
        Right =1553
        Bottom =234
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1764
        Top =36
        Right =1908
        Bottom =180
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =1012
        Top =33
        Right =1156
        Bottom =177
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
