Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum)>0) AND ((dbo_ProjectHeader.void)=False) AND ((db"
    "o_ProjectHeader.invoicenum) Is Null) AND ((dbo_ProjectHeader.ProjectStatusID)<=3"
    "0) AND ((dbo_ProjectComponentStock.OrderOption)<=2))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="qryStaffInit"
    Alias ="qrySalesRepInit"
    Name ="qryStaffInit"
    Alias ="qryCSRInit"
    Name ="dbo_ProjectComponentStock"
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
    Expression ="dbo_ProjectComponentStock.OrderOption"
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
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="dbo_ProjectComponentHeader.ID = dbo_ProjectComponentStock.ProjectComponentID"
    Flag =2
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
    0xc19d6790316dfe419f1feae283d8234b
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c2de0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a10000000076461f4c2de0e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x09fe4a3617bfd54fb88424c81dc727b300000000df6d2d9d6fe0e44000000000 ,
    0x000000007100720079005300740061006600660049006e006900740000000000 ,
    0x000089466ecffa47f64d8a430ccaf9e274af00000000fdd0694c2de0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e007400530074006f0063006b00000000000000f0a0 ,
    0x7a545f8a6448b11bd6a1031b20d10000000074181c4c2de0e440000000000000 ,
    0x0000640062006f005f0043006f006d00700061006e0079004c006f0063006100 ,
    0x740069006f006e000000000000009ed5b9f9418d2c469c71ddf0450107e50700 ,
    0x0000c19d6790316dfe419f1feae283d8234b43006f006d0070004e0061006d00 ,
    0x650077005100740079000000000000003be76144c8722340a7d4de08b30e5d1a ,
    0x07000000c19d6790316dfe419f1feae283d8234b410063007400750061006c00 ,
    0x4d004800530074006f0063006b00000000000000d29e035e8e042647aeac9d56 ,
    0xc37ab6f107000000c19d6790316dfe419f1feae283d8234b4100630074007500 ,
    0x61006c004d00480043007200650061007400690076006500000000000000f4b3 ,
    0x4e835a353545ad170183fe0cc01707000000c19d6790316dfe419f1feae283d8 ,
    0x234b410063007400750061006c004d0048005000720065007000720065007300 ,
    0x73000000000000001e6dad8dc981c14cb4acad70e925fcad07000000c19d6790 ,
    0x316dfe419f1feae283d8234b410063007400750061006c004d0048004d006100 ,
    0x69006c0044006100740061000000000000002ce3c81839354f4e96523cf66e58 ,
    0x0f9a07000000c19d6790316dfe419f1feae283d8234b41006300740075006100 ,
    0x6c004d0048005000720069006e00740000000000000035ce55431ce2f7479e02 ,
    0x532d79c3dc1f07000000c19d6790316dfe419f1feae283d8234b410063007400 ,
    0x750061006c004d0048004f007500740073006900640065007300720076000000 ,
    0x000000006d13feca73159741b789b4850818f56107000000c19d6790316dfe41 ,
    0x9f1feae283d8234b410063007400750061006c004d0048004c00460046006900 ,
    0x6e00690073006800000000000000a6162e3ff66c3646be56a6f639dbb2a80700 ,
    0x0000c19d6790316dfe419f1feae283d8234b410063007400750061006c004d00 ,
    0x4800420069006e006400650072007900000000000000d8904dfef1ad824bbe56 ,
    0x6e2ecd8e075607000000c19d6790316dfe419f1feae283d8234b410063007400 ,
    0x750061006c004d0048004d00610069006c00530068006f007000000000000000 ,
    0x5ba2247b30523747bea5ebc1b157cfba07000000c19d6790316dfe419f1feae2 ,
    0x83d8234b44007500650044006100740065000000000000007c1bf31be9c09844 ,
    0xbb222ae427ad2f0007000000c19d6790316dfe419f1feae283d8234b49007300 ,
    0x5200750073006800000000000000f8f70ff89892924eaa49e56387e60e390700 ,
    0x0000c19d6790316dfe419f1feae283d8234b41007200740059004e0000000000 ,
    0x00000c56acf0e9bb0e45bc6d7f0f668f0d2c07000000c19d6790316dfe419f1f ,
    0xeae283d8234b530061006c006500730052006500700049006e00690074000000 ,
    0x00000000b8cc4f0ec947504aa623809935ab2b9707000000c19d6790316dfe41 ,
    0x9f1feae283d8234b43005300520049006e006900740000000000000029556c4f ,
    0xcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x49004400000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004e0075006d00 ,
    0x000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f ,
    0x624db77659eef5e022a143006f006d0070004e0061006d006500000000000000 ,
    0x1c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a80500072006f006a006500630074004e0061006d006500000000000000 ,
    0x92f3a3fed2b0734280ec42fae4658f3607000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be53006f00720074004f00720064006500720000000000000020425683 ,
    0x02f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x500072006f006a00650063007400480065006100640065007200490044000000 ,
    0x000000007857d2ada5ee1a42ae4659405dc8fd6b07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007000650063007400650064005100740079000000 ,
    0x000000008265226ce5165f4597f9cda188898d960700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8043006f006e007400610063007400470065006e0065007200 ,
    0x61006c0049004400000000000000b4b63a69c96c6a4fabdbcca6dd7ea99f0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be460069006e0061006c0051007400 ,
    0x7900000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e0074004e00 ,
    0x61006d0065000000000000006fd6a0db73569d40be5b9dc1732f147607000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e00 ,
    0x74005400790070006500000000000000061591c71da67544a9c8dc1e25594fef ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500072006500720065007100 ,
    0x750069007300690074006500000000000000e2c8a89ab8615244b74eaa52746e ,
    0x113507000000d2d381ba93398a4283a6a9ed80a7b4be53007400610072007400 ,
    0x44006100740065000000000000008369de8a22548c409566162116d715600700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5300680069007000440061007400 ,
    0x6500000000000000b47accf36adaea48b4e4cf6b36149f4107000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be5300680069007000700065006400560069006100 ,
    0x000000000000dad90d1d3c37e1448dacf0c8b262807c07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be53006800690070007000650064005700610079006200 ,
    0x69006c006c00000000000000511c9c289c00f243a3ee9fac591d6ee207000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be530068006900700046006c0061006700 ,
    0x00000000000021329ae9ef05b746a74d95b8db3ec6de07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be46007200690065006e0064006c007900440065007300 ,
    0x6300720069007000740069006f006e000000000000005357194b8fb38849adf1 ,
    0xce3fa70bd87d07000000d2d381ba93398a4283a6a9ed80a7b4be560065006e00 ,
    0x64006f007200490044000000000000002dd834926d7399479b1fb40c3b22208b ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be560065006e0064006f007200 ,
    0x4e0061006d0065004900440000000000000090b0575cb031ee429218f30bdcda ,
    0x948707000000d2d381ba93398a4283a6a9ed80a7b4be560065006e0064006f00 ,
    0x72005000610063006b0069006e0067004c006900730074004e0075006d006200 ,
    0x6500720000000000000097e06d29c9a11d4ebf2138f35fc58fe007000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be520065006300650069007600650064004200 ,
    0x7900000000000000771121a4347414418b9b62e40b04077c07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4e006f00740065007300000000000000a0733058 ,
    0xdc273a468b1af7e6c66c844607000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4100720074004100720072006900760065006400440061007400650000000000 ,
    0x000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006f006f00660041007000700072006f00760065006400 ,
    0x44006100740065000000000000008063cea60c7baf4dbe23035a943a98630700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4400610074006100410072007200 ,
    0x69007600650064004400610074006500000000000000d7bd2e8ab9d669409c2c ,
    0xb1dd1044133407000000d2d381ba93398a4283a6a9ed80a7b4be4d0061006900 ,
    0x6c00500072006f006f00660041007000700072006f0076006500640044006100 ,
    0x74006500000000000000a084f8da1e4f1342b1fae6042c102b9a07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be410073007300690067006e00650064004400 ,
    0x750065004400610074006500000000000000d9c1524eae16e7439791b1c28f64 ,
    0x0d8107000000d2d381ba93398a4283a6a9ed80a7b4be53007000650063006900 ,
    0x6600690065006400440075006500440061007400650000000000000090591afc ,
    0xca33cc4a8f11af1822f3c84907000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x43006f006d0070006c006500740069006f006e00440061007400650000000000 ,
    0x0000c4583128db72324389f00cb2ee7b136907000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4d00610069006c0041007000700072006f00760061006c005200 ,
    0x6500710075006900720065006400000000000000378ee4cea8023744a84338cb ,
    0x4f34554507000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f00740065004e0075006d000000000000008da21df2a52c304c9ceb8aa4 ,
    0xe463609e07000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f00740065004e0075006d0044006900730070006c006100790000000000 ,
    0x00004c7cc044f37d714ca4af682c91d41ae007000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f007400650041006d00740031000000 ,
    0x000000002bbc476e300c73438d1525ae3776657707000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f00740065005100740079003100 ,
    0x00000000000004b5c1e5a7c02c40bc4ad5c08b8aec0a07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f007400650041006d007400 ,
    0x32000000000000000ac9e111cf621d4f81f4d4472f14249107000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650051007400 ,
    0x790032000000000000005a7965dbefa58c4fab0e7662f8c6881507000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065004100 ,
    0x6d00740033000000000000009eb73e1880b89d49b663947c234f256707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x5100740079003300000000000000dfb110d9a3c72345af752bd243cb3e4a0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x650041006d007400340000000000000050dae1734aa4c747970917503327b702 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x740065005100740079003400000000000000f215dd61be0e6644a44b361f8e53 ,
    0xb2db07000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f007400650041006d0074003500000000000000e315d99a8dcc5649b9b5e075 ,
    0x8db0dfba07000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f007400650051007400790035000000000000007aae092db9abf341939e ,
    0x82bfc3bf27f207000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f0074006500530065006c006500630074003100000000000000ff75 ,
    0x7f9d2f8b9e4d84feeb09ea52796207000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f0074006500530065006c006500630074003200 ,
    0x000000000000b1c60060f4a7db4991c48ccb087a5f3607000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500530065006c00 ,
    0x65006300740033000000000000009cf0d06b378b8e48b6f3c283f190089c0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x6500530065006c006500630074003400000000000000bafaa26fc3d45c4fafd4 ,
    0xa6da2d6e53a407000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f0074006500530065006c006500630074003500000000000000e043 ,
    0x79333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8076006f00690064000000000000007da6a641b3cf604b95c0700a612b4585 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8069006e0076006f0069006300 ,
    0x65006e0075006d00000000000000d78c97c321bdff4cb11f574e44afadc00700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be53007400530074006f0063006b00 ,
    0x0000000000005b63f08258032d45aa322ba8d518aba307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4d004800530074006f0063006b00000000000000231c ,
    0xee74f0e24045a242f54aabe005d707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be44005900530074006f0063006b000000000000007c008cc95de9b14a996e ,
    0x6fabba6e66e107000000d2d381ba93398a4283a6a9ed80a7b4be530074004300 ,
    0x7200650061007400690076006500000000000000ddd164036eb01f449febd79d ,
    0xe5e8458b07000000d2d381ba93398a4283a6a9ed80a7b4be4d00480043007200 ,
    0x650061007400690076006500000000000000785008cac45854429c2d7a0fd550 ,
    0xce6707000000d2d381ba93398a4283a6a9ed80a7b4be44005900430072006500 ,
    0x61007400690076006500000000000000a50f2c519c3b6341a4a9c550ee3d1f39 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be530074005000720065007000 ,
    0x7200650073007300000000000000e84040dfa768474680a2782dc10e186f0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d00480050007200650070007200 ,
    0x65007300730000000000000036c416abbe03c14ba648e2d2a6710c0d07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be44005900500072006500700072006500 ,
    0x730073000000000000000b86554b86a00744973b8362a48bed1007000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be530074004d00610069006c00440061007400 ,
    0x610000000000000014c9ca3be8d13c4e94b6b4c56e803aee07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4d0048004d00610069006c004400610074006100 ,
    0x0000000000007d52299ec8bc4841932840a9a071ecb307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be440059004d00610069006c0044006100740061000000 ,
    0x00000000b7c36995fcfafa45ad69b32c6b3b9b9e07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530074005000720069006e007400000000000000a26aeb2e ,
    0xc4b4ad4eb2821496c8e6e15d07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4d0048005000720069006e0074000000000000007a43c6b5c60276428b85a217 ,
    0x03ea6f7c07000000d2d381ba93398a4283a6a9ed80a7b4be4400590050007200 ,
    0x69006e007400000000000000ddbb1d730996f742992b6250f5318bb007000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be530074004f0075007400730069006400 ,
    0x65005300720076000000000000000939731ddb4b184faea5ccebf5f3bfe00700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d0048004f007500740073006900 ,
    0x64006500530072007600000000000000fb7f59af3141d84d8ecd1e922c02fcee ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440059004f00750074007300 ,
    0x690064006500530072007600000000000000b57d49568e0a0748b3bcda76abcd ,
    0x850f07000000d2d381ba93398a4283a6a9ed80a7b4be530074004c0046004600 ,
    0x69006e0069007300680000000000000034e96cce7623ef419098596b394b016e ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004c00460046006900 ,
    0x6e00690073006800000000000000fd0ed26d4a6bd649b28cc16ee730e0630700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be440059004c004600460069006e00 ,
    0x690073006800000000000000dd6fcd94378b0c49b622eb3d0714ca0207000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53007400420069006e00640065007200 ,
    0x7900000000000000f08b0b99aeca0d42a7931b2d3d02df1907000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4d004800420069006e0064006500720079000000 ,
    0x000000005de3afceffee604bb48d2533e48439fd07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be44005900420069006e006400650072007900000000000000 ,
    0x70fa57b523cbbd40a137dbadc276a46e07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be530074004d00610069006c00530068006f007000000000000000b316 ,
    0xbc55c21f3943aad1106e34437f4a07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d0048004d00610069006c00530068006f0070000000000000009d1f6340 ,
    0x7a9b8a46a8d0c329acc9fec507000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x440059004d00610069006c00530068006f00700000000000000040de5e7aec65 ,
    0xa745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851f16d2a805300 ,
    0x61006c006500730052006500700049004400000000000000ce73341489752f42 ,
    0xbffad7debac543a60700000035f87d9f0b136040ad3c2851f16d2a8043007300 ,
    0x720049004400000000000000b19777ae0f57ea4293cb5332053705e107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be49006e0050006c0061006e006e006900 ,
    0x6e0067000000000000006b8100b18f7ba34aa3c59fda19a111ed0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80500072006f006a0065006300740053007400 ,
    0x6100740075007300490044000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000071007200790053006100 ,
    0x6c006500730052006500700049006e0069007400000000000000a810fc2ea07b ,
    0x024bbfc77ac9f31c7a8d0700000009fe4a3617bfd54fb88424c81dc727b34900 ,
    0x6e00690074000000000000000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000071007200790043005300520049006e00 ,
    0x690074000000000000009c74acf32f7cb14392c64da1255e2492070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af4f0072006400650072004f00700074006900 ,
    0x6f006e0000000000000097f4d916639123478b4d0c4170d61ffb0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8043006f006d00700061006e0079004c006f00 ,
    0x63006100740069006f006e004900440000000000000001d2b706cee7ea48b9f4 ,
    0xaf0b27f2548007000000f0a07a545f8a6448b11bd6a1031b20d1520065007000 ,
    0x6f007200740043006f006c006f00720000000000000004aeb2718000d24bb73b ,
    0x562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80490044000000 ,
    0x000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624d ,
    0xb77659eef5e022a149004400000000000000fe371115569a08478b428437714d ,
    0xb9f90700000089466ecffa47f64d8a430ccaf9e274af500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740049004400000000000000 ,
    0xcfcb0f694dd678469d745c2d3c9b453407000000f0a07a545f8a6448b11bd6a1 ,
    0x031b20d149004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
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
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="dbo_ProjectComponentStock.OrderOption"
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
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =31
        Top =27
        Right =468
        Bottom =389
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =521
        Top =15
        Right =891
        Bottom =178
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
        Left =866
        Top =230
        Right =1010
        Bottom =374
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
        Left =1131
        Top =248
        Right =1393
        Bottom =392
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =667
        Top =248
        Right =811
        Bottom =392
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
