Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum)>0) AND ((dbo_ProjectHeader.void)=False) AND ((db"
    "o_ProjectHeader.invoicenum) Is Null) AND ((dbo_ProjectHeader.ProjectStatusID)=35"
    "))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="qryStaffInit"
    Alias ="qrySalesRepInit"
    Name ="qryStaffInit"
    Alias ="qryCSRInit"
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
    Expression ="dbo_ProjectHeader.ShipInstruction"
    Expression ="dbo_ProjectHeader.ShipVia"
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
    0x54998de269cb434c97f89560bcb28bc1
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be00000000d477562b ,
    0xacd7e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a80000000009fd7632bacd7 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a1000000006c1a3d2bacd7e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x09fe4a3617bfd54fb88424c81dc727b30000000049872531b3d7e44000000000 ,
    0x000000007100720079005300740061006600660049006e006900740000000000 ,
    0x0000f0a07a545f8a6448b11bd6a1031b20d100000000ac6d3b2bacd7e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e0079004c006f00 ,
    0x63006100740069006f006e000000000000009ed5b9f9418d2c469c71ddf04501 ,
    0x07e50700000054998de269cb434c97f89560bcb28bc143006f006d0070004e00 ,
    0x61006d00650077005100740079000000000000003be76144c8722340a7d4de08 ,
    0xb30e5d1a0700000054998de269cb434c97f89560bcb28bc14100630074007500 ,
    0x61006c004d004800530074006f0063006b00000000000000d29e035e8e042647 ,
    0xaeac9d56c37ab6f10700000054998de269cb434c97f89560bcb28bc141006300 ,
    0x7400750061006c004d0048004300720065006100740069007600650000000000 ,
    0x0000f4b34e835a353545ad170183fe0cc0170700000054998de269cb434c97f8 ,
    0x9560bcb28bc1410063007400750061006c004d00480050007200650070007200 ,
    0x6500730073000000000000001e6dad8dc981c14cb4acad70e925fcad07000000 ,
    0x54998de269cb434c97f89560bcb28bc1410063007400750061006c004d004800 ,
    0x4d00610069006c0044006100740061000000000000002ce3c81839354f4e9652 ,
    0x3cf66e580f9a0700000054998de269cb434c97f89560bcb28bc1410063007400 ,
    0x750061006c004d0048005000720069006e00740000000000000035ce55431ce2 ,
    0xf7479e02532d79c3dc1f0700000054998de269cb434c97f89560bcb28bc14100 ,
    0x63007400750061006c004d0048004f0075007400730069006400650073007200 ,
    0x76000000000000006d13feca73159741b789b4850818f5610700000054998de2 ,
    0x69cb434c97f89560bcb28bc1410063007400750061006c004d0048004c004600 ,
    0x460069006e00690073006800000000000000a6162e3ff66c3646be56a6f639db ,
    0xb2a80700000054998de269cb434c97f89560bcb28bc141006300740075006100 ,
    0x6c004d004800420069006e006400650072007900000000000000d8904dfef1ad ,
    0x824bbe566e2ecd8e07560700000054998de269cb434c97f89560bcb28bc14100 ,
    0x63007400750061006c004d0048004d00610069006c00530068006f0070000000 ,
    0x000000005ba2247b30523747bea5ebc1b157cfba0700000054998de269cb434c ,
    0x97f89560bcb28bc144007500650044006100740065000000000000007c1bf31b ,
    0xe9c09844bb222ae427ad2f000700000054998de269cb434c97f89560bcb28bc1 ,
    0x490073005200750073006800000000000000f8f70ff89892924eaa49e56387e6 ,
    0x0e390700000054998de269cb434c97f89560bcb28bc141007200740059004e00 ,
    0x0000000000000c56acf0e9bb0e45bc6d7f0f668f0d2c0700000054998de269cb ,
    0x434c97f89560bcb28bc1530061006c006500730052006500700049006e006900 ,
    0x7400000000000000b8cc4f0ec947504aa623809935ab2b970700000054998de2 ,
    0x69cb434c97f89560bcb28bc143005300520049006e0069007400000000000000 ,
    0x29556c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be49004400000000000000749d4175d9cbb541b77414bf76f2aa9c0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004e00 ,
    0x75006d00000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4e ,
    0xe421343f624db77659eef5e022a143006f006d0070004e0061006d0065000000 ,
    0x000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80500072006f006a006500630074004e0061006d0065000000 ,
    0x0000000092f3a3fed2b0734280ec42fae4658f3607000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be53006f00720074004f007200640065007200000000000000 ,
    0x2042568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006f006a006500630074004800650061006400650072004900 ,
    0x44000000000000007857d2ada5ee1a42ae4659405dc8fd6b07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4500780070006500630074006500640051007400 ,
    0x79000000000000008265226ce5165f4597f9cda188898d960700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8043006f006e007400610063007400470065006e00 ,
    0x6500720061006c0049004400000000000000b4b63a69c96c6a4fabdbcca6dd7e ,
    0xa99f07000000d2d381ba93398a4283a6a9ed80a7b4be460069006e0061006c00 ,
    0x510074007900000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e00 ,
    0x74004e0061006d0065000000000000006fd6a0db73569d40be5b9dc1732f1476 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e00 ,
    0x65006e0074005400790070006500000000000000061591c71da67544a9c8dc1e ,
    0x25594fef07000000d2d381ba93398a4283a6a9ed80a7b4be5000720065007200 ,
    0x65007100750069007300690074006500000000000000e2c8a89ab8615244b74e ,
    0xaa52746e113507000000d2d381ba93398a4283a6a9ed80a7b4be530074006100 ,
    0x7200740044006100740065000000000000008369de8a22548c409566162116d7 ,
    0x156007000000d2d381ba93398a4283a6a9ed80a7b4be53006800690070004400 ,
    0x610074006500000000000000b47accf36adaea48b4e4cf6b36149f4107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53006800690070007000650064005600 ,
    0x69006100000000000000dad90d1d3c37e1448dacf0c8b262807c07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be530068006900700070006500640057006100 ,
    0x7900620069006c006c00000000000000511c9c289c00f243a3ee9fac591d6ee2 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be530068006900700046006c00 ,
    0x6100670000000000000021329ae9ef05b746a74d95b8db3ec6de07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be46007200690065006e0064006c0079004400 ,
    0x650073006300720069007000740069006f006e000000000000005357194b8fb3 ,
    0x8849adf1ce3fa70bd87d07000000d2d381ba93398a4283a6a9ed80a7b4be5600 ,
    0x65006e0064006f007200490044000000000000002dd834926d7399479b1fb40c ,
    0x3b22208b07000000d2d381ba93398a4283a6a9ed80a7b4be560065006e006400 ,
    0x6f0072004e0061006d0065004900440000000000000090b0575cb031ee429218 ,
    0xf30bdcda948707000000d2d381ba93398a4283a6a9ed80a7b4be560065006e00 ,
    0x64006f0072005000610063006b0069006e0067004c006900730074004e007500 ,
    0x6d0062006500720000000000000097e06d29c9a11d4ebf2138f35fc58fe00700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5200650063006500690076006500 ,
    0x640042007900000000000000771121a4347414418b9b62e40b04077c07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4e006f00740065007300000000000000 ,
    0xa0733058dc273a468b1af7e6c66c844607000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be41007200740041007200720069007600650064004400610074006500 ,
    0x00000000000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be500072006f006f00660041007000700072006f007600 ,
    0x6500640044006100740065000000000000008063cea60c7baf4dbe23035a943a ,
    0x986307000000d2d381ba93398a4283a6a9ed80a7b4be44006100740061004100 ,
    0x7200720069007600650064004400610074006500000000000000d7bd2e8ab9d6 ,
    0x69409c2cb1dd1044133407000000d2d381ba93398a4283a6a9ed80a7b4be4d00 ,
    0x610069006c00500072006f006f00660041007000700072006f00760065006400 ,
    0x4400610074006500000000000000a084f8da1e4f1342b1fae6042c102b9a0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be410073007300690067006e006500 ,
    0x64004400750065004400610074006500000000000000d9c1524eae16e7439791 ,
    0xb1c28f640d8107000000d2d381ba93398a4283a6a9ed80a7b4be530070006500 ,
    0x6300690066006900650064004400750065004400610074006500000000000000 ,
    0x90591afcca33cc4a8f11af1822f3c84907000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be43006f006d0070006c006500740069006f006e004400610074006500 ,
    0x000000000000c4583128db72324389f00cb2ee7b136907000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4d00610069006c0041007000700072006f0076006100 ,
    0x6c0052006500710075006900720065006400000000000000378ee4cea8023744 ,
    0xa84338cb4f34554507000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f00740065004e0075006d000000000000008da21df2a52c304c ,
    0x9ceb8aa4e463609e07000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f00740065004e0075006d0044006900730070006c0061007900 ,
    0x0000000000004c7cc044f37d714ca4af682c91d41ae007000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f007400650041006d007400 ,
    0x31000000000000002bbc476e300c73438d1525ae3776657707000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650051007400 ,
    0x7900310000000000000004b5c1e5a7c02c40bc4ad5c08b8aec0a07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065004100 ,
    0x6d00740032000000000000000ac9e111cf621d4f81f4d4472f14249107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x51007400790032000000000000005a7965dbefa58c4fab0e7662f8c688150700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x650041006d00740033000000000000009eb73e1880b89d49b663947c234f2567 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x740065005100740079003300000000000000dfb110d9a3c72345af752bd243cb ,
    0x3e4a07000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f007400650041006d007400340000000000000050dae1734aa4c74797091750 ,
    0x3327b70207000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f00740065005100740079003400000000000000f215dd61be0e6644a44b ,
    0x361f8e53b2db07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f007400650041006d0074003500000000000000e315d99a8dcc5649 ,
    0xb9b5e0758db0dfba07000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f007400650051007400790035000000000000007aae092db9ab ,
    0xf341939e82bfc3bf27f207000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f0074006500530065006c00650063007400310000000000 ,
    0x0000ff757f9d2f8b9e4d84feeb09ea52796207000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f0074006500530065006c0065006300 ,
    0x74003200000000000000b1c60060f4a7db4991c48ccb087a5f3607000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065005300 ,
    0x65006c0065006300740033000000000000009cf0d06b378b8e48b6f3c283f190 ,
    0x089c07000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f0074006500530065006c006500630074003400000000000000bafaa26fc3d4 ,
    0x5c4fafd4a6da2d6e53a407000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f0074006500530065006c00650063007400350000000000 ,
    0x0000e04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8076006f00690064000000000000007da6a641b3cf604b95c0700a ,
    0x612b45850700000035f87d9f0b136040ad3c2851f16d2a8069006e0076006f00 ,
    0x6900630065006e0075006d00000000000000d78c97c321bdff4cb11f574e44af ,
    0xadc007000000d2d381ba93398a4283a6a9ed80a7b4be53007400530074006f00 ,
    0x63006b000000000000005b63f08258032d45aa322ba8d518aba307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be4d004800530074006f0063006b0000000000 ,
    0x0000231cee74f0e24045a242f54aabe005d707000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be44005900530074006f0063006b000000000000007c008cc95de9 ,
    0xb14a996e6fabba6e66e107000000d2d381ba93398a4283a6a9ed80a7b4be5300 ,
    0x740043007200650061007400690076006500000000000000ddd164036eb01f44 ,
    0x9febd79de5e8458b07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800 ,
    0x43007200650061007400690076006500000000000000785008cac45854429c2d ,
    0x7a0fd550ce6707000000d2d381ba93398a4283a6a9ed80a7b4be440059004300 ,
    0x7200650061007400690076006500000000000000a50f2c519c3b6341a4a9c550 ,
    0xee3d1f3907000000d2d381ba93398a4283a6a9ed80a7b4be5300740050007200 ,
    0x650070007200650073007300000000000000e84040dfa768474680a2782dc10e ,
    0x186f07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800500072006500 ,
    0x7000720065007300730000000000000036c416abbe03c14ba648e2d2a6710c0d ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440059005000720065007000 ,
    0x72006500730073000000000000000b86554b86a00744973b8362a48bed100700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be530074004d00610069006c004400 ,
    0x61007400610000000000000014c9ca3be8d13c4e94b6b4c56e803aee07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d0048004d00610069006c0044006100 ,
    0x740061000000000000007d52299ec8bc4841932840a9a071ecb307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be440059004d00610069006c00440061007400 ,
    0x6100000000000000b7c36995fcfafa45ad69b32c6b3b9b9e07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be530074005000720069006e007400000000000000 ,
    0xa26aeb2ec4b4ad4eb2821496c8e6e15d07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4d0048005000720069006e0074000000000000007a43c6b5c6027642 ,
    0x8b85a21703ea6f7c07000000d2d381ba93398a4283a6a9ed80a7b4be44005900 ,
    0x5000720069006e007400000000000000ddbb1d730996f742992b6250f5318bb0 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be530074004f00750074007300 ,
    0x6900640065005300720076000000000000000939731ddb4b184faea5ccebf5f3 ,
    0xbfe007000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004f0075007400 ,
    0x7300690064006500530072007600000000000000fb7f59af3141d84d8ecd1e92 ,
    0x2c02fcee07000000d2d381ba93398a4283a6a9ed80a7b4be440059004f007500 ,
    0x74007300690064006500530072007600000000000000b57d49568e0a0748b3bc ,
    0xda76abcd850f07000000d2d381ba93398a4283a6a9ed80a7b4be530074004c00 ,
    0x4600460069006e0069007300680000000000000034e96cce7623ef419098596b ,
    0x394b016e07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004c004600 ,
    0x460069006e00690073006800000000000000fd0ed26d4a6bd649b28cc16ee730 ,
    0xe06307000000d2d381ba93398a4283a6a9ed80a7b4be440059004c0046004600 ,
    0x69006e00690073006800000000000000dd6fcd94378b0c49b622eb3d0714ca02 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be53007400420069006e006400 ,
    0x650072007900000000000000f08b0b99aeca0d42a7931b2d3d02df1907000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d004800420069006e00640065007200 ,
    0x79000000000000005de3afceffee604bb48d2533e48439fd07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be44005900420069006e0064006500720079000000 ,
    0x0000000070fa57b523cbbd40a137dbadc276a46e07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530074004d00610069006c00530068006f00700000000000 ,
    0x0000b316bc55c21f3943aad1106e34437f4a07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4d0048004d00610069006c00530068006f007000000000000000 ,
    0x9d1f63407a9b8a46a8d0c329acc9fec507000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be440059004d00610069006c00530068006f00700000000000000040de ,
    0x5e7aec65a745aa86e7e9e8cb55780700000035f87d9f0b136040ad3c2851f16d ,
    0x2a80530061006c006500730052006500700049004400000000000000ce733414 ,
    0x89752f42bffad7debac543a60700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x43007300720049004400000000000000b19777ae0f57ea4293cb5332053705e1 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be49006e0050006c0061006e00 ,
    0x6e0069006e0067000000000000006b8100b18f7ba34aa3c59fda19a111ed0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80500072006f006a00650063007400 ,
    0x5300740061007400750073004900440000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000710072007900 ,
    0x530061006c006500730052006500700049006e0069007400000000000000a810 ,
    0xfc2ea07b024bbfc77ac9f31c7a8d0700000009fe4a3617bfd54fb88424c81dc7 ,
    0x27b349006e006900740000000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000710072007900430053005200 ,
    0x49006e0069007400000000000000897a455e3fce6c43841aaa453a86d60b0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80530068006900700049006e007300 ,
    0x7400720075006300740069006f006e0000000000000041a94196ea762b4fa120 ,
    0x0977e7f87d6b0700000035f87d9f0b136040ad3c2851f16d2a80530068006900 ,
    0x700056006900610000000000000097f4d916639123478b4d0c4170d61ffb0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8043006f006d00700061006e007900 ,
    0x4c006f0063006100740069006f006e004900440000000000000001d2b706cee7 ,
    0xea48b9f4af0b27f2548007000000f0a07a545f8a6448b11bd6a1031b20d15200 ,
    0x650070006f007200740043006f006c006f00720000000000000004aeb2718000 ,
    0xd24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x44000000000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421 ,
    0x343f624db77659eef5e022a149004400000000000000cfcb0f694dd678469d74 ,
    0x5c2d3c9b453407000000f0a07a545f8a6448b11bd6a1031b20d1490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
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
        dbText "Name" ="dbo_ProjectHeader.ShipInstruction"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipVia"
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
    Bottom =343
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
        Left =1014
        Top =12
        Right =1158
        Bottom =156
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
