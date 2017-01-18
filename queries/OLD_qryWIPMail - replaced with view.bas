Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.ProjectStat"
    "usID)<29) AND ((dbo_ProjectHeader.InvoiceNum) Is Null) AND ((dbo_ProjectHeader.V"
    "oid)=False) AND ((dbo_ProjectComponentHeader.MailComponentYN)=True) AND ((Nz([db"
    "o_ProjectComponentHeader].[completiondate],0))=0)) OR (((dbo_ProjectHeader.Docke"
    "tNum) Is Not Null) AND ((dbo_ProjectHeader.ProjectStatusID)<29) AND ((dbo_Projec"
    "tHeader.Void)=False) AND ((dbo_ProjectComponentHeader.MailComponentYN)=True) AND"
    " ((Nz([dbo_ProjectComponentHeader].[completiondate],0))=0) AND ((dbo_ProjectHead"
    "er.KeepInProductionYN)=True) AND ((Nz([InvoiceNum],0))>0))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
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
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
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
    Expression ="dbo_ProjectHeader.KeepInProductionYN"
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
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be00000000e9fa7add ,
    0xcfcfe4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a8000000000623f8addcfcf ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a100000000d9855bddcfcfe4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa0000000082e053ddcfcfe44000000000 ,
    0x00000000640062006f005f0043006f006d00700061006e00790045006d007000 ,
    0x6c006f007900650065000000000000001f66a93ab2e7d746bc298b37fd98fb12 ,
    0x07000000a011df55424c174f8d365a2a045ef677440075006500440061007400 ,
    0x650000000000000021a012afc0564b42b3047fe6122df26807000000a011df55 ,
    0x424c174f8d365a2a045ef677500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e007400490044000000000000005dec0abbc7b3e74c996d ,
    0x63c8b0e8068207000000a011df55424c174f8d365a2a045ef677530061006c00 ,
    0x65007300520065007000000000000000007c0a0404aa7000f0a9700068df0a04 ,
    0x07000000a011df55424c174f8d365a2a045ef67743006f006d0070006c006500 ,
    0x7400650064004400610074006500000000000000a3cfa4d222b1d1489a45b77e ,
    0x403f5b6207000000a011df55424c174f8d365a2a045ef6776d00790050007200 ,
    0x69006f007200690074007900000000000000005672050caa8f00f8a98f009480 ,
    0x050d07000000a011df55424c174f8d365a2a045ef6774d00610069006c005f00 ,
    0x530074006100740075007300000000000000749d4175d9cbb541b77414bf76f2 ,
    0xaa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b006500 ,
    0x74004e0075006d000000000000006b8100b18f7ba34aa3c59fda19a111ed0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80500072006f006a00650063007400 ,
    0x530074006100740075007300490044000000000000007da6a641b3cf604b95c0 ,
    0x700a612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e007600 ,
    0x6f006900630065004e0075006d00000000000000fde2928bbc55824d8e33fcf8 ,
    0xa8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d007000 ,
    0x4e0061006d00650000000000000040de5e7aec65a745aa86e7e9e8cb55780700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80530061006c006500730052006500 ,
    0x700049004400000000000000ce73341489752f42bffad7debac543a607000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8043007300720049004400000000000000 ,
    0x2042568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006f006a006500630074004800650061006400650072004900 ,
    0x44000000000000008265226ce5165f4597f9cda188898d960700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006e007400610063007400470065006e00 ,
    0x6500720061006c00490044000000000000000b86554b86a00744973b8362a48b ,
    0xed1007000000d2d381ba93398a4283a6a9ed80a7b4be530074004d0061006900 ,
    0x6c00440061007400610000000000000070fa57b523cbbd40a137dbadc276a46e ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be530074004d00610069006c00 ,
    0x530068006f007000000000000000a21dc4fed47c244fa08fb5209ebbfbc70700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e006500 ,
    0x6e0074004e0061006d0065000000000000007857d2ada5ee1a42ae4659405dc8 ,
    0xfd6b07000000d2d381ba93398a4283a6a9ed80a7b4be45007800700065006300 ,
    0x7400650064005100740079000000000000008063cea60c7baf4dbe23035a943a ,
    0x986307000000d2d381ba93398a4283a6a9ed80a7b4be44006100740061004100 ,
    0x7200720069007600650064004400610074006500000000000000641657895895 ,
    0x584f819ed540e3d01c5507000000d2d381ba93398a4283a6a9ed80a7b4be4400 ,
    0x6100740061004500780070006500630074006500640044006100740065000000 ,
    0x00000000a084f8da1e4f1342b1fae6042c102b9a07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be410073007300690067006e00650064004400750065004400 ,
    0x610074006500000000000000d9c1524eae16e7439791b1c28f640d8107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53007000650063006900660069006500 ,
    0x6400440075006500440061007400650000000000000014c9ca3be8d13c4e94b6 ,
    0xb4c56e803aee07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004d00 ,
    0x610069006c0044006100740061000000000000007d52299ec8bc4841932840a9 ,
    0xa071ecb307000000d2d381ba93398a4283a6a9ed80a7b4be440059004d006100 ,
    0x69006c004400610074006100000000000000e04379333b12ce4eb39eba2d3978 ,
    0x3d1f0700000035f87d9f0b136040ad3c2851f16d2a8056006f00690064000000 ,
    0x000000005c90b798aa47ab459c1716da6c77396207000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006f006f006600530065006e007400440061007400 ,
    0x650000000000000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006f00660041007000700072006f00 ,
    0x760065006400440061007400650000000000000093ba397e75759745b39991ab ,
    0xbd4894170700000035f87d9f0b136040ad3c2851f16d2a804900730052007500 ,
    0x730068000000000000004c7cc044f37d714ca4af682c91d41ae007000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065004100 ,
    0x6d00740031000000000000002bbc476e300c73438d1525ae3776657707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x5100740079003100000000000000c59643644848454d997b09a1342a12320700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c0043006f006d00 ,
    0x70006f006e0065006e00740059004e000000000000007dec387b9203b34d9e6f ,
    0xdb41398b65cd0700000035f87d9f0b136040ad3c2851f16d2a80500072006f00 ,
    0x6a006500630074004e006f0074006500730000000000000021329ae9ef05b746 ,
    0xa74d95b8db3ec6de07000000d2d381ba93398a4283a6a9ed80a7b4be46007200 ,
    0x690065006e0064006c0079004400650073006300720069007000740069006f00 ,
    0x6e0000000000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be49004400000000000000238a70cc04f1b542bd79 ,
    0xb33633915bc60700000039a4960a0ccbe542ab18e42cf68884fa66006e000000 ,
    0x0000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa6c006e0000000000000078fe3e064e1fef458d83017ec118 ,
    0xee560700000035f87d9f0b136040ad3c2851f16d2a80440065006c0069007600 ,
    0x6500720079004300750074006f0066006600540069006d006500000000000000 ,
    0x47b1ba89889f994aa5a5b0ab4f547da30700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a804600690072006d004400750065004400610074006500000000000000 ,
    0x90591afcca33cc4a8f11af1822f3c84907000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be63006f006d0070006c006500740069006f006e006400610074006500 ,
    0x000000000000cd1aa36b5130b249aa917c77bc3e4df507000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4d00610069006c005f005000720069006e0074005200 ,
    0x650061006400790059004e000000000000006422abaaaed48c469b771c000425 ,
    0xf54407000000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c005f00 ,
    0x5000720069006f00720069007400790000000000000059046d215487f24cac94 ,
    0x86591bda8b4107000000d2d381ba93398a4283a6a9ed80a7b4be4d0061006900 ,
    0x6c005f005300740061007400750073000000000000001c9b84855b8f264abd34 ,
    0xa504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f00 ,
    0x6a006500630074004e0061006d0065000000000000007398ac0669261c43a6ab ,
    0x19abf6ccf39d0700000035f87d9f0b136040ad3c2851f16d2a804b0065006500 ,
    0x700049006e00500072006f00640075006300740069006f006e0059004e000000 ,
    0x0000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80490044000000000000001fc238e447652546a47f3ca6a0d8 ,
    0x89e407000000bb4ee421343f624db77659eef5e022a149004400000000000000 ,
    0x836b4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa49004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
dbBinary "GUID" = Begin
    0xa011df55424c174f8d365a2a045ef677
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
        dbText "Name" ="Expr1002"
        dbLong "AggregateType" ="-1"
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
        dbText "Name" ="dbo_ProjectHeader.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-320
    Top =79
    Right =1434
    Bottom =879
    Left =-1
    Top =-1
    Right =1722
    Bottom =363
    Left =365
    Top =0
    ColumnsShown =539
    Begin
        Left =37
        Top =12
        Right =350
        Bottom =282
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =421
        Top =6
        Right =766
        Bottom =264
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =833
        Top =6
        Right =1070
        Bottom =234
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =1118
        Top =12
        Right =1262
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
