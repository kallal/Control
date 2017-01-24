Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum)>0) AND ((dbo_ProjectComponentHeader.ProofApprove"
    "dDate) Is Null) AND ((dbo_ProjectHeader.void)=False) AND ((dbo_ProjectHeader.inv"
    "oicenum) Is Null) AND ((dbo_ProjectHeader.ProjectStatusID)<=30) AND ((dbo_Projec"
    "tComponentHeader.ProofSentDate) Is Not Null))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="qryStaffInit"
    Alias ="qrySalesRepInit"
    Name ="qryStaffInit"
    Alias ="qryCSRInit"
    Name ="qryProjectComponentPressMinPressDate"
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentHeader.SortOrder"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectComponentHeader.FinalQty"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Alias ="CompNamewQty"
    Expression ="[dbo_projectComponentHeader]![ExpectedQty] & \" x \" & [componentname]"
    Expression ="dbo_ProjectComponentHeader.ComponentType"
    Expression ="dbo_ProjectComponentHeader.Prerequisite"
    Expression ="dbo_ProjectComponentHeader.StartDate"
    Expression ="dbo_ProjectComponentHeader.ShipDate"
    Expression ="dbo_ProjectComponentHeader.ShippedVia"
    Expression ="dbo_ProjectComponentHeader.ShippedWaybill"
    Expression ="dbo_ProjectComponentHeader.ShipFlag"
    Expression ="dbo_ProjectComponentHeader.FriendlyDescription"
    Expression ="dbo_ProjectComponentHeader.VendorID"
    Expression ="dbo_ProjectComponentHeader.VendorNameID"
    Expression ="dbo_ProjectComponentHeader.VendorPackingListNumber"
    Expression ="dbo_ProjectComponentHeader.ReceivedBy"
    Expression ="dbo_ProjectComponentHeader.Notes"
    Expression ="dbo_ProjectComponentHeader.StartDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.DataArrivedDate"
    Expression ="dbo_ProjectComponentHeader.MailProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.CompletionDate"
    Expression ="dbo_ProjectComponentHeader.MailApprovalRequired"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteNum"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteNumDisplay"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect5"
    Expression ="dbo_ProjectHeader.void"
    Expression ="dbo_ProjectHeader.invoicenum"
    Expression ="dbo_ProjectComponentHeader.StStock"
    Expression ="dbo_ProjectComponentHeader.MHStock"
    Alias ="ActualMHStock"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=1\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYStock"
    Expression ="dbo_ProjectComponentHeader.StCreative"
    Expression ="dbo_ProjectComponentHeader.MHCreative"
    Alias ="ActualMHCreative"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=2\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYCreative"
    Expression ="dbo_ProjectComponentHeader.StPrepress"
    Expression ="dbo_ProjectComponentHeader.MHPrepress"
    Alias ="ActualMHPrepress"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=3\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYPrepress"
    Expression ="dbo_ProjectComponentHeader.StMailData"
    Expression ="dbo_ProjectComponentHeader.MHMailData"
    Alias ="ActualMHMailData"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=4\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYMailData"
    Expression ="dbo_ProjectComponentHeader.StPrint"
    Expression ="dbo_ProjectComponentHeader.MHPrint"
    Alias ="ActualMHPrint"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=5\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYPrint"
    Expression ="dbo_ProjectComponentHeader.StOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.MHOutsideSrv"
    Alias ="ActualMHOutsidesrv"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=6\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.StLFFinish"
    Expression ="dbo_ProjectComponentHeader.MHLFFinish"
    Alias ="ActualMHLFFinish"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=7\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYLFFinish"
    Expression ="dbo_ProjectComponentHeader.StBindery"
    Expression ="dbo_ProjectComponentHeader.MHBindery"
    Alias ="ActualMHBindery"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=8\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYBindery"
    Expression ="dbo_ProjectComponentHeader.StMailShop"
    Expression ="dbo_ProjectComponentHeader.MHMailShop"
    Alias ="ActualMHMailShop"
    Expression ="Nz(DSum(\"[TotalTime]\",\"dbo_CompanyEmployeeTask\",\"[ProjectComponentHeaderID]"
        " = \" & [dbo_ProjectComponentHeader].[id] & \" and [Category]=9\"),0)"
    Expression ="dbo_ProjectComponentHeader.DYMailShop"
    Expression ="dbo_ProjectHeader.void"
    Expression ="dbo_ProjectHeader.invoicenum"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectComponentHeader.InPlanning"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,DateValue([specifiedduedate]),IIf(Nz([AssignedDue"
        "Date],0)>0,DateValue([assignedduedate]),\"UNKNOWN\"))"
    Alias ="IsRush"
    Expression ="IIf(Nz([specifiedduedate],0)>0 And [specifiedduedate]<=[assignedduedate],True,Fa"
        "lse)"
    Alias ="ArtYN"
    Expression ="IIf(Nz([artarriveddate],0)>0,True,False)"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Alias ="SalesRepInit"
    Expression ="qrySalesRepInit.Init"
    Alias ="CSRInit"
    Expression ="qryCSRInit.Init"
    Expression ="dbo_ProjectComponentHeader.ArtExpectedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Alias ="myPressDate"
    Expression ="IIf(Nz([minofpressdateexp],0)<>0,[minofpressdateexp],fncWorkday([duedate],-(Nz(["
        "dyBindery],0)+Nz([dyOutsideSrv],0))))"
    Expression ="qryProjectComponentPressMinPressDate.MinOfPressDateExp"
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
    RightTable ="qrySalesRepInit"
    Expression ="dbo_ProjectHeader.SalesRepID = qrySalesRepInit.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryCSRInit"
    Expression ="dbo_ProjectHeader.CsrID = qryCSRInit.ID"
    Flag =2
    LeftTable ="qryProjectComponentPressMinPressDate"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="qryProjectComponentPressMinPressDate.ProjectComponentID = dbo_ProjectComponentHe"
        "ader.ID"
    Flag =3
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyLocation"
    Expression ="dbo_ProjectHeader.CompanyLocationID = dbo_CompanyLocation.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ProjectComponentHeader.SortOrder"
    Flag =0
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,DateValue([specifiedduedate]),IIf(Nz([AssignedDue"
        "Date],0)>0,DateValue([assignedduedate]),\"UNKNOWN\"))"
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
    0x6ef000af9122e8499f52bfdba5f5f04b
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a1000000006f48190dcfe0e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x09fe4a3617bfd54fb88424c81dc727b300000000b3b26995d3e0e44000000000 ,
    0x000000007100720079005300740061006600660049006e006900740000000000 ,
    0x0000bb54366bb2c4fc46855dc74e6bdedf4b00000000a6cacf9ed3e0e4400000 ,
    0x000000000000710072007900500072006f006a0065006300740043006f006d00 ,
    0x70006f006e0065006e007400500072006500730073004d0069006e0050007200 ,
    0x6500730073004400610074006500000000000000f0a07a545f8a6448b11bd6a1 ,
    0x031b20d10000000049290f0dcfe0e4400000000000000000640062006f005f00 ,
    0x43006f006d00700061006e0079004c006f0063006100740069006f006e000000 ,
    0x000000009ed5b9f9418d2c469c71ddf0450107e5070000006ef000af9122e849 ,
    0x9f52bfdba5f5f04b43006f006d0070004e0061006d0065007700510074007900 ,
    0x0000000000003be76144c8722340a7d4de08b30e5d1a070000006ef000af9122 ,
    0xe8499f52bfdba5f5f04b410063007400750061006c004d004800530074006f00 ,
    0x63006b00000000000000d29e035e8e042647aeac9d56c37ab6f1070000006ef0 ,
    0x00af9122e8499f52bfdba5f5f04b410063007400750061006c004d0048004300 ,
    0x7200650061007400690076006500000000000000f4b34e835a353545ad170183 ,
    0xfe0cc017070000006ef000af9122e8499f52bfdba5f5f04b4100630074007500 ,
    0x61006c004d004800500072006500700072006500730073000000000000001e6d ,
    0xad8dc981c14cb4acad70e925fcad070000006ef000af9122e8499f52bfdba5f5 ,
    0xf04b410063007400750061006c004d0048004d00610069006c00440061007400 ,
    0x61000000000000002ce3c81839354f4e96523cf66e580f9a070000006ef000af ,
    0x9122e8499f52bfdba5f5f04b410063007400750061006c004d00480050007200 ,
    0x69006e00740000000000000035ce55431ce2f7479e02532d79c3dc1f07000000 ,
    0x6ef000af9122e8499f52bfdba5f5f04b410063007400750061006c004d004800 ,
    0x4f007500740073006900640065007300720076000000000000006d13feca7315 ,
    0x9741b789b4850818f561070000006ef000af9122e8499f52bfdba5f5f04b4100 ,
    0x63007400750061006c004d0048004c004600460069006e006900730068000000 ,
    0x00000000a6162e3ff66c3646be56a6f639dbb2a8070000006ef000af9122e849 ,
    0x9f52bfdba5f5f04b410063007400750061006c004d004800420069006e006400 ,
    0x650072007900000000000000d8904dfef1ad824bbe566e2ecd8e075607000000 ,
    0x6ef000af9122e8499f52bfdba5f5f04b410063007400750061006c004d004800 ,
    0x4d00610069006c00530068006f0070000000000000005ba2247b30523747bea5 ,
    0xebc1b157cfba070000006ef000af9122e8499f52bfdba5f5f04b440075006500 ,
    0x44006100740065000000000000007c1bf31be9c09844bb222ae427ad2f000700 ,
    0x00006ef000af9122e8499f52bfdba5f5f04b4900730052007500730068000000 ,
    0x00000000f8f70ff89892924eaa49e56387e60e39070000006ef000af9122e849 ,
    0x9f52bfdba5f5f04b41007200740059004e000000000000000c56acf0e9bb0e45 ,
    0xbc6d7f0f668f0d2c070000006ef000af9122e8499f52bfdba5f5f04b53006100 ,
    0x6c006500730052006500700049006e0069007400000000000000b8cc4f0ec947 ,
    0x504aa623809935ab2b97070000006ef000af9122e8499f52bfdba5f5f04b4300 ,
    0x5300520049006e0069007400000000000000bb4027e9f0390f48a43efce9af91 ,
    0x9cf5070000006ef000af9122e8499f52bfdba5f5f04b6d007900500072006500 ,
    0x73007300440061007400650000000000000029556c4fcc6de9418049e37cebcb ,
    0x8ed307000000d2d381ba93398a4283a6a9ed80a7b4be49004400000000000000 ,
    0x749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8044006f0063006b00650074004e0075006d00000000000000fde2928b ,
    0xbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a1 ,
    0x43006f006d0070004e0061006d0065000000000000001c9b84855b8f264abd34 ,
    0xa504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f00 ,
    0x6a006500630074004e0061006d00650000000000000092f3a3fed2b0734280ec ,
    0x42fae4658f3607000000d2d381ba93398a4283a6a9ed80a7b4be53006f007200 ,
    0x74004f0072006400650072000000000000002042568302f48b4d89eb4ba2abdd ,
    0xca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a006500 ,
    0x63007400480065006100640065007200490044000000000000007857d2ada5ee ,
    0x1a42ae4659405dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007000650063007400650064005100740079000000000000008265226ce516 ,
    0x5f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x00000000b4b63a69c96c6a4fabdbcca6dd7ea99f07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be460069006e0061006c00510074007900000000000000a21d ,
    0xc4fed47c244fa08fb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be43006f006d0070006f006e0065006e0074004e0061006d00650000000000 ,
    0x00006fd6a0db73569d40be5b9dc1732f147607000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be43006f006d0070006f006e0065006e0074005400790070006500 ,
    0x000000000000061591c71da67544a9c8dc1e25594fef07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be50007200650072006500710075006900730069007400 ,
    0x6500000000000000e2c8a89ab8615244b74eaa52746e113507000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be5300740061007200740044006100740065000000 ,
    0x000000008369de8a22548c409566162116d7156007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be53006800690070004400610074006500000000000000b47a ,
    0xccf36adaea48b4e4cf6b36149f4107000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be5300680069007000700065006400560069006100000000000000dad90d1d ,
    0x3c37e1448dacf0c8b262807c07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x5300680069007000700065006400570061007900620069006c006c0000000000 ,
    0x0000511c9c289c00f243a3ee9fac591d6ee207000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be530068006900700046006c006100670000000000000021329ae9 ,
    0xef05b746a74d95b8db3ec6de07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x46007200690065006e0064006c00790044006500730063007200690070007400 ,
    0x69006f006e000000000000005357194b8fb38849adf1ce3fa70bd87d07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be560065006e0064006f00720049004400 ,
    0x0000000000002dd834926d7399479b1fb40c3b22208b07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be560065006e0064006f0072004e0061006d0065004900 ,
    0x440000000000000090b0575cb031ee429218f30bdcda948707000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be560065006e0064006f0072005000610063006b00 ,
    0x69006e0067004c006900730074004e0075006d00620065007200000000000000 ,
    0x97e06d29c9a11d4ebf2138f35fc58fe007000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be52006500630065006900760065006400420079000000000000007711 ,
    0x21a4347414418b9b62e40b04077c07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4e006f00740065007300000000000000a0733058dc273a468b1af7e6c66c ,
    0x844607000000d2d381ba93398a4283a6a9ed80a7b4be41007200740041007200 ,
    0x72006900760065006400440061007400650000000000000078a4ab78684be74a ,
    0x86eca6bbeda30d6807000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006f00660041007000700072006f0076006500640044006100740065000000 ,
    0x000000008063cea60c7baf4dbe23035a943a986307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be440061007400610041007200720069007600650064004400 ,
    0x610074006500000000000000d7bd2e8ab9d669409c2cb1dd1044133407000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d00610069006c00500072006f006f00 ,
    0x660041007000700072006f007600650064004400610074006500000000000000 ,
    0xa084f8da1e4f1342b1fae6042c102b9a07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be410073007300690067006e0065006400440075006500440061007400 ,
    0x6500000000000000d9c1524eae16e7439791b1c28f640d8107000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be5300700065006300690066006900650064004400 ,
    0x75006500440061007400650000000000000090591afcca33cc4a8f11af1822f3 ,
    0xc84907000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006c00 ,
    0x6500740069006f006e004400610074006500000000000000c4583128db723243 ,
    0x89f00cb2ee7b136907000000d2d381ba93398a4283a6a9ed80a7b4be4d006100 ,
    0x69006c0041007000700072006f00760061006c00520065007100750069007200 ,
    0x65006400000000000000378ee4cea8023744a84338cb4f34554507000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065004e00 ,
    0x75006d000000000000008da21df2a52c304c9ceb8aa4e463609e07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065004e00 ,
    0x75006d0044006900730070006c00610079000000000000004c7cc044f37d714c ,
    0xa4af682c91d41ae007000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f007400650041006d00740031000000000000002bbc476e300c ,
    0x73438d1525ae3776657707000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f0074006500510074007900310000000000000004b5c1e5 ,
    0xa7c02c40bc4ad5c08b8aec0a07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f007400650041006d00740032000000000000000ac9 ,
    0xe111cf621d4f81f4d4472f14249107000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f00740065005100740079003200000000000000 ,
    0x5a7965dbefa58c4fab0e7662f8c6881507000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f007400650041006d007400330000000000 ,
    0x00009eb73e1880b89d49b663947c234f256707000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f007400650051007400790033000000 ,
    0x00000000dfb110d9a3c72345af752bd243cb3e4a07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f007400650041006d0074003400 ,
    0x00000000000050dae1734aa4c747970917503327b70207000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500510074007900 ,
    0x3400000000000000f215dd61be0e6644a44b361f8e53b2db07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650041006d00 ,
    0x74003500000000000000e315d99a8dcc5649b9b5e0758db0dfba07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065005100 ,
    0x7400790035000000000000007aae092db9abf341939e82bfc3bf27f207000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x530065006c006500630074003100000000000000ff757f9d2f8b9e4d84feeb09 ,
    0xea52796207000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f0074006500530065006c006500630074003200000000000000b1c60060 ,
    0xf4a7db4991c48ccb087a5f3607000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f0074006500530065006c0065006300740033000000 ,
    0x000000009cf0d06b378b8e48b6f3c283f190089c07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f0074006500530065006c006500 ,
    0x630074003400000000000000bafaa26fc3d45c4fafd4a6da2d6e53a407000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x530065006c006500630074003500000000000000e04379333b12ce4eb39eba2d ,
    0x39783d1f0700000035f87d9f0b136040ad3c2851f16d2a8076006f0069006400 ,
    0x0000000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8069006e0076006f006900630065006e0075006d000000 ,
    0x00000000d78c97c321bdff4cb11f574e44afadc007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be53007400530074006f0063006b000000000000005b63f082 ,
    0x58032d45aa322ba8d518aba307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4d004800530074006f0063006b00000000000000231cee74f0e24045a242f54a ,
    0xabe005d707000000d2d381ba93398a4283a6a9ed80a7b4be4400590053007400 ,
    0x6f0063006b000000000000007c008cc95de9b14a996e6fabba6e66e107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53007400430072006500610074006900 ,
    0x76006500000000000000ddd164036eb01f449febd79de5e8458b07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be4d0048004300720065006100740069007600 ,
    0x6500000000000000785008cac45854429c2d7a0fd550ce6707000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4400590043007200650061007400690076006500 ,
    0x000000000000a50f2c519c3b6341a4a9c550ee3d1f3907000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be53007400500072006500700072006500730073000000 ,
    0x00000000e84040dfa768474680a2782dc10e186f07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4d0048005000720065007000720065007300730000000000 ,
    0x000036c416abbe03c14ba648e2d2a6710c0d07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4400590050007200650070007200650073007300000000000000 ,
    0x0b86554b86a00744973b8362a48bed1007000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be530074004d00610069006c00440061007400610000000000000014c9 ,
    0xca3be8d13c4e94b6b4c56e803aee07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d0048004d00610069006c0044006100740061000000000000007d52299e ,
    0xc8bc4841932840a9a071ecb307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x440059004d00610069006c004400610074006100000000000000b7c36995fcfa ,
    0xfa45ad69b32c6b3b9b9e07000000d2d381ba93398a4283a6a9ed80a7b4be5300 ,
    0x74005000720069006e007400000000000000a26aeb2ec4b4ad4eb2821496c8e6 ,
    0xe15d07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800500072006900 ,
    0x6e0074000000000000007a43c6b5c60276428b85a21703ea6f7c07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be440059005000720069006e00740000000000 ,
    0x0000ddbb1d730996f742992b6250f5318bb007000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be530074004f007500740073006900640065005300720076000000 ,
    0x000000000939731ddb4b184faea5ccebf5f3bfe007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4d0048004f00750074007300690064006500530072007600 ,
    0x000000000000fb7f59af3141d84d8ecd1e922c02fcee07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be440059004f0075007400730069006400650053007200 ,
    0x7600000000000000b57d49568e0a0748b3bcda76abcd850f07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be530074004c004600460069006e00690073006800 ,
    0x00000000000034e96cce7623ef419098596b394b016e07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4d0048004c004600460069006e006900730068000000 ,
    0x00000000fd0ed26d4a6bd649b28cc16ee730e06307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be440059004c004600460069006e0069007300680000000000 ,
    0x0000dd6fcd94378b0c49b622eb3d0714ca0207000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be53007400420069006e006400650072007900000000000000f08b ,
    0x0b99aeca0d42a7931b2d3d02df1907000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d004800420069006e0064006500720079000000000000005de3afceffee ,
    0x604bb48d2533e48439fd07000000d2d381ba93398a4283a6a9ed80a7b4be4400 ,
    0x5900420069006e00640065007200790000000000000070fa57b523cbbd40a137 ,
    0xdbadc276a46e07000000d2d381ba93398a4283a6a9ed80a7b4be530074004d00 ,
    0x610069006c00530068006f007000000000000000b316bc55c21f3943aad1106e ,
    0x34437f4a07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004d006100 ,
    0x69006c00530068006f0070000000000000009d1f63407a9b8a46a8d0c329acc9 ,
    0xfec507000000d2d381ba93398a4283a6a9ed80a7b4be440059004d0061006900 ,
    0x6c00530068006f00700000000000000040de5e7aec65a745aa86e7e9e8cb5578 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80530061006c00650073005200 ,
    0x6500700049004400000000000000ce73341489752f42bffad7debac543a60700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a804300730072004900440000000000 ,
    0x0000b19777ae0f57ea4293cb5332053705e107000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be49006e0050006c0061006e006e0069006e006700000000000000 ,
    0x6b8100b18f7ba34aa3c59fda19a111ed0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80500072006f006a006500630074005300740061007400750073004900 ,
    0x4400000000000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000710072007900530061006c006500730052006500 ,
    0x700049006e0069007400000000000000a810fc2ea07b024bbfc77ac9f31c7a8d ,
    0x0700000009fe4a3617bfd54fb88424c81dc727b349006e006900740000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x00000000000071007200790043005300520049006e0069007400000000000000 ,
    0xd6c60e3e1c864e4c91229495e3751c7107000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be41007200740045007800700065006300740065006400440061007400 ,
    0x6500000000000000641657895895584f819ed540e3d01c5507000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4400610074006100450078007000650063007400 ,
    0x6500640044006100740065000000000000005c90b798aa47ab459c1716da6c77 ,
    0x396207000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006f006600 ,
    0x530065006e0074004400610074006500000000000000a437b70e8cc5084a8e28 ,
    0xfd23c7c4d9bd07000000bb54366bb2c4fc46855dc74e6bdedf4b6d0069006e00 ,
    0x6f00660070007200650073007300640061007400650065007800700000000000 ,
    0x000097f4d916639123478b4d0c4170d61ffb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8043006f006d00700061006e0079004c006f006300610074006900 ,
    0x6f006e004900440000000000000001d2b706cee7ea48b9f4af0b27f254800700 ,
    0x0000f0a07a545f8a6448b11bd6a1031b20d15200650070006f00720074004300 ,
    0x6f006c006f00720000000000000004aeb2718000d24bb73b562a737994cb0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80490044000000000000001fc238e4 ,
    0x47652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1 ,
    0x4900440000000000000097ed1cf65892374fabbfa680907c65c007000000bb54 ,
    0x366bb2c4fc46855dc74e6bdedf4b500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e00740049004400000000000000cfcb0f694dd67846 ,
    0x9d745c2d3c9b453407000000f0a07a545f8a6448b11bd6a1031b20d149004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SortOrder"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FinalQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Prerequisite"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorPackingListNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShipDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FriendlyDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteNumDisplay"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShippedWaybill"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShipFlag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShippedVia"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbInteger "ColumnWidth" ="3195"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.invoicenum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ActualMHStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3be76144c8722340a7d4de08b30e5d1a
        End
    End
    Begin
        dbText "Name" ="ActualMHCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd29e035e8e042647aeac9d56c37ab6f1
        End
    End
    Begin
        dbText "Name" ="ActualMHPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf4b34e835a353545ad170183fe0cc017
        End
    End
    Begin
        dbText "Name" ="ActualMHMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e6dad8dc981c14cb4acad70e925fcad
        End
    End
    Begin
        dbText "Name" ="ActualMHPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ce3c81839354f4e96523cf66e580f9a
        End
    End
    Begin
        dbText "Name" ="ActualMHOutsidesrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x35ce55431ce2f7479e02532d79c3dc1f
        End
    End
    Begin
        dbText "Name" ="ActualMHLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d13feca73159741b789b4850818f561
        End
    End
    Begin
        dbText "Name" ="ActualMHBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6162e3ff66c3646be56a6f639dbb2a8
        End
    End
    Begin
        dbText "Name" ="ActualMHMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd8904dfef1ad824bbe566e2ecd8e0756
        End
    End
    Begin
        dbText "Name" ="CompNamewQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ed5b9f9418d2c469c71ddf0450107e5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StartDate"
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
        dbText "Name" ="Expr1013"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1050"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1051"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ba2247b30523747bea5ebc1b157cfba
        End
        dbInteger "ColumnWidth" ="3045"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7c1bf31be9c09844bb222ae427ad2f00
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArtYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf8f70ff89892924eaa49e56387e60e39
        End
    End
    Begin
        dbText "Name" ="SalesRepInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0c56acf0e9bb0e45bc6d7f0f668f0d2c
        End
    End
    Begin
        dbText "Name" ="CSRInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb8cc4f0ec947504aa623809935ab2b97
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPressDate"
        dbInteger "ColumnWidth" ="2310"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb4027e9f0390f48a43efce9af919cf5
        End
    End
    Begin
        dbText "Name" ="qryProjectComponentPressMinPressDate.MinOfPressDateExp"
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
    Left =68
    Top =109
    Right =1498
    Bottom =837
    Left =-1
    Top =-1
    Right =1398
    Bottom =309
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =125
        Top =-12
        Right =562
        Bottom =350
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =610
        Top =12
        Right =980
        Bottom =175
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1047
        Top =12
        Right =1191
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =775
        Top =185
        Right =919
        Bottom =329
        Top =0
        Name ="qrySalesRepInit"
        Name =""
    End
    Begin
        Left =1028
        Top =156
        Right =1172
        Bottom =300
        Top =0
        Name ="qryCSRInit"
        Name =""
    End
    Begin
        Left =1195
        Top =29
        Right =1498
        Bottom =173
        Top =0
        Name ="qryProjectComponentPressMinPressDate"
        Name =""
    End
    Begin
        Left =581
        Top =62
        Right =725
        Bottom =206
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
