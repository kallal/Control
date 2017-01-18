Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum)>0) AND ((dbo_ProjectHeader.void)=False) AND ((db"
    "o_ProjectHeader.invoicenum) Is Null) AND ((dbo_ProjectHeader.ProjectStatusID)<=3"
    "0))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="qryStaffInit"
    Alias ="qrySalesRepInit"
    Name ="qryStaffInit"
    Alias ="qryCSRInit"
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
        "Date],0)>0,DateValue([assignedduedate]),Null))"
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
End
Begin OrderBy
    Expression ="dbo_ProjectComponentHeader.SortOrder"
    Flag =0
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,DateValue([specifiedduedate]),IIf(Nz([AssignedDue"
        "Date],0)>0,DateValue([assignedduedate]),Null))"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x290232ee4188ec4a83319c6bbab8a34c
End
dbMemo "OrderBy" ="[qrySchedulingSummary].[DueDate] DESC"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000fe926418f32ed843874a57f371c555c7000000009b2fba6dec62 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b900000000bad9a96dec62e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x09fe4a3617bfd54fb88424c81dc727b300000000cc1a80f68f5ae44000000000 ,
    0x000000007100720079005300740061006600660049006e006900740000000000 ,
    0x00009ed5b9f9418d2c469c71ddf0450107e50700000000000000000000000000 ,
    0x00000000000043006f006d0070004e0061006d00650077005100740079000000 ,
    0x000000003be76144c8722340a7d4de08b30e5d1a070000000000000000000000 ,
    0x0000000000000000410063007400750061006c004d004800530074006f006300 ,
    0x6b00000000000000d29e035e8e042647aeac9d56c37ab6f10700000000000000 ,
    0x000000000000000000000000410063007400750061006c004d00480043007200 ,
    0x650061007400690076006500000000000000f4b34e835a353545ad170183fe0c ,
    0xc017070000000000000000000000000000000000000041006300740075006100 ,
    0x6c004d004800500072006500700072006500730073000000000000001e6dad8d ,
    0xc981c14cb4acad70e925fcad0700000000000000000000000000000000000000 ,
    0x410063007400750061006c004d0048004d00610069006c004400610074006100 ,
    0x0000000000002ce3c81839354f4e96523cf66e580f9a07000000000000000000 ,
    0x00000000000000000000410063007400750061006c004d004800500072006900 ,
    0x6e00740000000000000035ce55431ce2f7479e02532d79c3dc1f070000000000 ,
    0x0000000000000000000000000000410063007400750061006c004d0048004f00 ,
    0x7500740073006900640065007300720076000000000000006d13feca73159741 ,
    0xb789b4850818f561070000000000000000000000000000000000000041006300 ,
    0x7400750061006c004d0048004c004600460069006e0069007300680000000000 ,
    0x0000a6162e3ff66c3646be56a6f639dbb2a80700000000000000000000000000 ,
    0x000000000000410063007400750061006c004d004800420069006e0064006500 ,
    0x72007900000000000000d8904dfef1ad824bbe566e2ecd8e0756070000000000 ,
    0x0000000000000000000000000000410063007400750061006c004d0048004d00 ,
    0x610069006c00530068006f0070000000000000005ba2247b30523747bea5ebc1 ,
    0xb157cfba07000000000000000000000000000000000000004400750065004400 ,
    0x6100740065000000000000007c1bf31be9c09844bb222ae427ad2f0007000000 ,
    0x0000000000000000000000000000000049007300520075007300680000000000 ,
    0x0000f8f70ff89892924eaa49e56387e60e390700000000000000000000000000 ,
    0x00000000000041007200740059004e000000000000000c56acf0e9bb0e45bc6d ,
    0x7f0f668f0d2c0700000000000000000000000000000000000000530061006c00 ,
    0x6500730052006500700049006e0069007400000000000000b8cc4f0ec947504a ,
    0xa623809935ab2b97070000000000000000000000000000000000000043005300 ,
    0x520049006e0069007400000000000000118be950d66974438268ddc04c06af1a ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb449004400000000000000d9cb ,
    0x95bb9ff0b84fa39eeda5976282d607000000fe926418f32ed843874a57f371c5 ,
    0x55c744006f0063006b00650074004e0075006d00000000000000124b02a694dd ,
    0x0e4c96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b94300 ,
    0x6f006d0070004e0061006d006500000000000000ab2bd0a18191ef46b6c770f2 ,
    0xb1812fa607000000fe926418f32ed843874a57f371c555c7500072006f006a00 ,
    0x6500630074004e0061006d0065000000000000002d3a184dd7f6624b97fd4b14 ,
    0xb3f5c0ca070000000e7a128852f41a47b128e4f3b41e4fb453006f0072007400 ,
    0x4f007200640065007200000000000000873fed1bdd4daf46b59105d9e5c28c31 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006a0065006300 ,
    0x740048006500610064006500720049004400000000000000b04f8d260a13f342 ,
    0x8c8e9ff1b197c202070000000e7a128852f41a47b128e4f3b41e4fb445007800 ,
    0x70006500630074006500640051007400790000000000000089ff919c8c2cb047 ,
    0x95bac03adb54784507000000fe926418f32ed843874a57f371c555c743006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x000043a9080a40b39b4398f2497ff8672674070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4460069006e0061006c005100740079000000000000003c3a0e9c ,
    0xef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x43006f006d0070006f006e0065006e0074004e0061006d006500000000000000 ,
    0x2c0cb3926442ce40bbd03c5a057afc43070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb443006f006d0070006f006e0065006e00740054007900700065000000 ,
    0x000000006acbb3b826c2784591a3527463d0a9c8070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4500072006500720065007100750069007300690074006500 ,
    0x000000000000bb526c362e3766439077c29ed7f6e54a070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb453006800690070004400610074006500000000000000 ,
    0x69b3c136dec79b4e8eaf06deb65a71c6070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb453006800690070007000650064005600690061000000000000006ba9 ,
    0xa6a23be8a04ba6458aba4cff3cc2070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb45300680069007000700065006400570061007900620069006c006c000000 ,
    0x00000000b2b5a47da0251e4e9152e7339af304c2070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4530068006900700046006c0061006700000000000000e866 ,
    0x6705bfc7214597e800ebbb65fa07070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb446007200690065006e0064006c0079004400650073006300720069007000 ,
    0x740069006f006e000000000000002440b51063f0a347b5f46d313b83079c0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4560065006e0064006f0072004900 ,
    0x4400000000000000389c04c648cc8b4cbde86e73bb06cfc6070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4560065006e0064006f0072004e0061006d006500 ,
    0x49004400000000000000117346749bcb1845b7240084af35385d070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4560065006e0064006f007200500061006300 ,
    0x6b0069006e0067004c006900730074004e0075006d0062006500720000000000 ,
    0x0000a52d60eea46b42498bb7b1ace6870e64070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb45200650063006500690076006500640042007900000000000000 ,
    0x43baa47ce5485d4894130f46c2cf084c070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb44e006f007400650073000000000000001edb9f9337189f49ac90c581 ,
    0x3c5dab4c070000000e7a128852f41a47b128e4f3b41e4fb45300740061007200 ,
    0x74004400610074006500000000000000510e420f3ce318458e4a83187ceafcd5 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb4410072007400410072007200 ,
    0x690076006500640044006100740065000000000000009663a2b3f469e74384b7 ,
    0xfdcf57d349e8070000000e7a128852f41a47b128e4f3b41e4fb4500072006f00 ,
    0x6f00660041007000700072006f00760065006400440061007400650000000000 ,
    0x000074e1da1886b7f044af38cd52c4a502c8070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb44400610074006100410072007200690076006500640044006100 ,
    0x740065000000000000001e1a4cfa6161a047bf0d693c307b0362070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb44d00610069006c00500072006f006f006600 ,
    0x41007000700072006f0076006500640044006100740065000000000000009034 ,
    0xf5093d684d4493441af67c602460070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4410073007300690067006e00650064004400750065004400610074006500 ,
    0x000000000000e41b349e809836428a33efa5925ec82d070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb453007000650063006900660069006500640044007500 ,
    0x650044006100740065000000000000000ec7380e261b054eafff47cb435e98ab ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb443006f006d0070006c006500 ,
    0x740069006f006e004400610074006500000000000000ce60f0117b1f14459b7c ,
    0x2040684ea798070000000e7a128852f41a47b128e4f3b41e4fb44d0061006900 ,
    0x6c0041007000700072006f00760061006c005200650071007500690072006500 ,
    0x6400000000000000e390174379724b4c8c16d8f17f03dc67070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4450078007400510075006f00740065004e007500 ,
    0x6d00000000000000b030e585228f9147ac2a3182f20b8ff9070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4450078007400510075006f00740065004e007500 ,
    0x6d0044006900730070006c00610079000000000000006697c5f92befb746a7f6 ,
    0x08739b193afb070000000e7a128852f41a47b128e4f3b41e4fb4450078007400 ,
    0x510075006f007400650041006d007400310000000000000014208e479d4b594a ,
    0x81de954645afe56f070000000e7a128852f41a47b128e4f3b41e4fb445007800 ,
    0x7400510075006f007400650051007400790031000000000000009254de797d47 ,
    0x1b4d932ce89814142e85070000000e7a128852f41a47b128e4f3b41e4fb44500 ,
    0x78007400510075006f007400650041006d007400320000000000000003d4f4ad ,
    0x64ec7b4e82bc811b44943a67070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x450078007400510075006f00740065005100740079003200000000000000bc03 ,
    0xd51e0b6dc443a0e1e12588fdca2e070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4450078007400510075006f007400650041006d0074003300000000000000 ,
    0x970b16a25ab3d04db6e1e18007017041070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4450078007400510075006f0074006500510074007900330000000000 ,
    0x00004d86f4421d40ad42a423d29ff88a8e4e070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4450078007400510075006f007400650041006d00740034000000 ,
    0x00000000965fff198641774e86b6a9f9dd306bf0070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4450078007400510075006f00740065005100740079003400 ,
    0x00000000000091e02627b993fa4787632baa52db9782070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4450078007400510075006f007400650041006d007400 ,
    0x350000000000000043f5d7d905a09446b04553332ffbd549070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4450078007400510075006f007400650051007400 ,
    0x79003500000000000000461ea1e8a6ee524e93c8d4d5894998e3070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4450078007400510075006f00740065005300 ,
    0x65006c00650063007400310000000000000087b7e5b49cee0840bd2254223db5 ,
    0xfedb070000000e7a128852f41a47b128e4f3b41e4fb445007800740051007500 ,
    0x6f0074006500530065006c0065006300740032000000000000007e98adcf612f ,
    0xf646958f86dfc1878169070000000e7a128852f41a47b128e4f3b41e4fb44500 ,
    0x78007400510075006f0074006500530065006c00650063007400330000000000 ,
    0x0000723e4181510ab542aa4fcc3949b6bd95070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4450078007400510075006f0074006500530065006c0065006300 ,
    0x74003400000000000000e26dc1415f53e04ab623930aa5c624fa070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4450078007400510075006f00740065005300 ,
    0x65006c00650063007400350000000000000081751aaa23f69a40a072b77523cc ,
    0x41aa07000000fe926418f32ed843874a57f371c555c776006f00690064000000 ,
    0x00000000bb0ae340649d1049aae8ec4ebde6085c07000000fe926418f32ed843 ,
    0x874a57f371c555c769006e0076006f006900630065006e0075006d0000000000 ,
    0x00001ebba2150c013742aa56bff89bda9179070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb453007400530074006f0063006b000000000000005a44b87f4a5a ,
    0xed4ebd40f032fa9d6362070000000e7a128852f41a47b128e4f3b41e4fb44d00 ,
    0x4800530074006f0063006b000000000000000706a505e780334e9e1a0bf7ad97 ,
    0x59c1070000000e7a128852f41a47b128e4f3b41e4fb444005900530074006f00 ,
    0x63006b000000000000007b9a413f3387ce479a058fc3f300a38f070000000e7a ,
    0x128852f41a47b128e4f3b41e4fb4530074004300720065006100740069007600 ,
    0x65000000000000003ea1804818aace48aa1e0331bd223643070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb44d00480043007200650061007400690076006500 ,
    0x00000000000033cbf9bd2df2984f903eb9e2e778660d070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb444005900430072006500610074006900760065000000 ,
    0x00000000c1876f97fff14c42aa536b9f96f3acbd070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4530074005000720065007000720065007300730000000000 ,
    0x0000e777fa7319e13f4fb4f07cf2fa595a9d070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb44d00480050007200650070007200650073007300000000000000 ,
    0xf77b44268d16cf4bb68a24a27d5f27c8070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4440059005000720065007000720065007300730000000000000042c1 ,
    0xd74a6fb8b74394c4ae0e81bf474f070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4530074004d00610069006c004400610074006100000000000000d13656fe ,
    0x78a79f4d8ee03849670b2b6c070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x4d0048004d00610069006c0044006100740061000000000000000aa156485730 ,
    0x2f409348776382cb283f070000000e7a128852f41a47b128e4f3b41e4fb44400 ,
    0x59004d00610069006c00440061007400610000000000000023ee24ea3dc79c4b ,
    0xbb4696b91b02fc07070000000e7a128852f41a47b128e4f3b41e4fb453007400 ,
    0x5000720069006e0074000000000000005db44ec31b9074409a8175eb47137bc3 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb44d0048005000720069006e00 ,
    0x74000000000000006d8392d3effbe64386cc737511f29304070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb4440059005000720069006e007400000000000000 ,
    0xc522fbae11ca22468e394a44d3995e6e070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4530074004f0075007400730069006400650053007200760000000000 ,
    0x00001acdeb95298c8c46a0b4981b6fc81be1070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb44d0048004f007500740073006900640065005300720076000000 ,
    0x00000000f2f8e384332a3e4db2b4f3a9845b265a070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4440059004f00750074007300690064006500530072007600 ,
    0x00000000000091f06793f78a8b40b737147041222f3b070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb4530074004c004600460069006e006900730068000000 ,
    0x00000000015be6d754fdde40917ca47e36983a13070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb44d0048004c004600460069006e0069007300680000000000 ,
    0x000098b0252434d676458632e695de515bdd070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb4440059004c004600460069006e00690073006800000000000000 ,
    0x64c1fab9d44c7546b6eaf2ded1c19411070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb453007400420069006e006400650072007900000000000000265917a8 ,
    0xaaaacd49a06b849319a7b872070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x4d004800420069006e00640065007200790000000000000083aa5106ca80a442 ,
    0xa2bc29b1488f06b2070000000e7a128852f41a47b128e4f3b41e4fb444005900 ,
    0x420069006e00640065007200790000000000000055abbd6fd5e6d24097801260 ,
    0x7e1b4c67070000000e7a128852f41a47b128e4f3b41e4fb4530074004d006100 ,
    0x69006c00530068006f0070000000000000000bbbb84413b215409fdd9e2e8bdf ,
    0x433f070000000e7a128852f41a47b128e4f3b41e4fb44d0048004d0061006900 ,
    0x6c00530068006f007000000000000000e483d6032d1b194299a43d77f45694c5 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb4440059004d00610069006c00 ,
    0x530068006f00700000000000000023f6fcc77666d448823b90b11d10e8400700 ,
    0x0000fe926418f32ed843874a57f371c555c7530061006c006500730052006500 ,
    0x700049004400000000000000f1ee1b4eb71bed44b484e51d9518382207000000 ,
    0xfe926418f32ed843874a57f371c555c743007300720049004400000000000000 ,
    0x9a24b4536fc29149b186802afdd4673f070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb449006e0050006c0061006e006e0069006e006700000000000000673d ,
    0x52f2b5bccc4d948b1dfe92c904e007000000fe926418f32ed843874a57f371c5 ,
    0x55c7500072006f006a0065006300740053007400610074007500730049004400 ,
    0x0000000000006f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32e ,
    0xd843874a57f371c555c74900440000000000000003933b4b9f324445a82e3686 ,
    0x51b1052b07000000d7c549c33168bc4ab70151c855c0b6b94900440000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x000000000000710072007900530061006c006500730052006500700049006e00 ,
    0x6900740000000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000000071007200790043005300520049006e006900 ,
    0x7400000000000000378b567b67bd9d4e8c31dcd94b2ab1e10000000069ffb46f ,
    0xec62e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d00610072007900000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
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
        dbText "Name" ="Expr1049"
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
    Bottom =428
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
End
