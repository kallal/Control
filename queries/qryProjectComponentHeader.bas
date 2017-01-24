Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.SortOrder"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectComponentHeader.FinalQty"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ComponentType"
    Expression ="dbo_ProjectComponentHeader.StartDate"
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
    Expression ="dbo_ProjectComponentHeader.ArtExpectedDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.FirstProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
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
    Expression ="dbo_ProjectComponentHeader.ExtQuoteDisc1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteDisc2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteDisc3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteDisc4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteAmt5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQty5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteDisc5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSell5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect5"
    Expression ="dbo_ProjectComponentHeader.StStock"
    Expression ="dbo_ProjectComponentHeader.MHStock"
    Expression ="dbo_ProjectComponentHeader.DYStock"
    Expression ="dbo_ProjectComponentHeader.StCreative"
    Expression ="dbo_ProjectComponentHeader.MHCreative"
    Expression ="dbo_ProjectComponentHeader.DYCreative"
    Expression ="dbo_ProjectComponentHeader.StPrepress"
    Expression ="dbo_ProjectComponentHeader.MHPrepress"
    Expression ="dbo_ProjectComponentHeader.DYPrepress"
    Expression ="dbo_ProjectComponentHeader.StMailData"
    Expression ="dbo_ProjectComponentHeader.MHMailData"
    Expression ="dbo_ProjectComponentHeader.DYMailData"
    Expression ="dbo_ProjectComponentHeader.StPrint"
    Expression ="dbo_ProjectComponentHeader.MHPrint"
    Expression ="dbo_ProjectComponentHeader.DYPrint"
    Expression ="dbo_ProjectComponentHeader.StOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.MHOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.DYOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.StLFFinish"
    Expression ="dbo_ProjectComponentHeader.MHLFFinish"
    Expression ="dbo_ProjectComponentHeader.DYLFFinish"
    Expression ="dbo_ProjectComponentHeader.StBindery"
    Expression ="dbo_ProjectComponentHeader.MHBindery"
    Expression ="dbo_ProjectComponentHeader.DYBindery"
    Expression ="dbo_ProjectComponentHeader.StMailShop"
    Expression ="dbo_ProjectComponentHeader.MHMailShop"
    Expression ="dbo_ProjectComponentHeader.DYMailShop"
    Expression ="dbo_ProjectComponentHeader.PricingSetByID"
    Expression ="dbo_ProjectComponentHeader.PricingSetByDate"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteSelect"
    Expression ="dbo_ProjectComponentHeader.ImpositionDetail"
    Expression ="dbo_ProjectComponentHeader.InPlanning"
    Expression ="dbo_ProjectComponentHeader.PrevDocketNum"
    Expression ="dbo_ProjectComponentHeader.PrevDocketDate"
    Alias ="DueDate"
    Expression ="IIf(Nz([specifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectComponentHeader.SellForFinal"
    Expression ="dbo_ProjectComponentHeader.SellQtyFinal"
    Expression ="dbo_ProjectComponentHeader.PDQAmtFinal"
    Expression ="dbo_ProjectComponentHeader.PDQSellingPrice"
    Expression ="dbo_ProjectComponentHeader.PDQGrossProfit"
    Expression ="dbo_ProjectComponentHeader.PDQOverallMarkup"
    Expression ="dbo_ProjectComponentHeader.PDQAddedValue"
    Alias ="DaysRequired"
    Expression ="Nz([DYBindery],0)+Nz([DYCreative],0)+Nz([DYLFFinish],0)+Nz([DYMailData])+Nz([DYM"
        "ailShop])+Nz([DYOutsideSrv])+Nz([DYPrepress])+Nz([DYPrint])+Nz([DYStock])"
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
End
Begin OrderBy
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Flag =1
    Expression ="dbo_ProjectComponentHeader.ID"
    Flag =0
    Expression ="dbo_ProjectComponentHeader.SortOrder"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x56852d8feb7a8e4d9c7df2b85c976d92
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a1000000006f48190dcfe0e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x6dcf2ba3c934454d87edbc6c1b88e7820700000056852d8feb7a8e4d9c7df2b8 ,
    0x5c976d924400750065004400610074006500000000000000e23f197204905247 ,
    0x9dee38ed1a380d0e0700000056852d8feb7a8e4d9c7df2b85c976d9244006100 ,
    0x7900730052006500710075006900720065006400000000000000c59643644848 ,
    0x454d997b09a1342a123207000000d2d381ba93398a4283a6a9ed80a7b4be4d00 ,
    0x610069006c0043006f006d0070006f006e0065006e00740059004e0000000000 ,
    0x000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4900440000000000000092f3a3fed2b0734280ec42fae4658f36 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be53006f00720074004f007200 ,
    0x6400650072000000000000002042568302f48b4d89eb4ba2abddca7307000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be500072006f006a006500630074004800 ,
    0x65006100640065007200490044000000000000007857d2ada5ee1a42ae465940 ,
    0x5dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be4500780070006500 ,
    0x6300740065006400510074007900000000000000b4b63a69c96c6a4fabdbcca6 ,
    0xdd7ea99f07000000d2d381ba93398a4283a6a9ed80a7b4be460069006e006100 ,
    0x6c00510074007900000000000000a21dc4fed47c244fa08fb5209ebbfbc70700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e006500 ,
    0x6e0074004e0061006d0065000000000000006fd6a0db73569d40be5b9dc1732f ,
    0x147607000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f00 ,
    0x6e0065006e0074005400790070006500000000000000e2c8a89ab8615244b74e ,
    0xaa52746e113507000000d2d381ba93398a4283a6a9ed80a7b4be530074006100 ,
    0x720074004400610074006500000000000000061591c71da67544a9c8dc1e2559 ,
    0x4fef07000000d2d381ba93398a4283a6a9ed80a7b4be50007200650072006500 ,
    0x71007500690073006900740065000000000000008369de8a22548c4095661621 ,
    0x16d7156007000000d2d381ba93398a4283a6a9ed80a7b4be5300680069007000 ,
    0x4400610074006500000000000000b47accf36adaea48b4e4cf6b36149f410700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5300680069007000700065006400 ,
    0x560069006100000000000000dad90d1d3c37e1448dacf0c8b262807c07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53006800690070007000650064005700 ,
    0x61007900620069006c006c00000000000000511c9c289c00f243a3ee9fac591d ,
    0x6ee207000000d2d381ba93398a4283a6a9ed80a7b4be53006800690070004600 ,
    0x6c006100670000000000000021329ae9ef05b746a74d95b8db3ec6de07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be46007200690065006e0064006c007900 ,
    0x4400650073006300720069007000740069006f006e000000000000005357194b ,
    0x8fb38849adf1ce3fa70bd87d07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x560065006e0064006f007200490044000000000000002dd834926d7399479b1f ,
    0xb40c3b22208b07000000d2d381ba93398a4283a6a9ed80a7b4be560065006e00 ,
    0x64006f0072004e0061006d0065004900440000000000000090b0575cb031ee42 ,
    0x9218f30bdcda948707000000d2d381ba93398a4283a6a9ed80a7b4be56006500 ,
    0x6e0064006f0072005000610063006b0069006e0067004c006900730074004e00 ,
    0x75006d0062006500720000000000000097e06d29c9a11d4ebf2138f35fc58fe0 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be520065006300650069007600 ,
    0x6500640042007900000000000000771121a4347414418b9b62e40b04077c0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4e006f0074006500730000000000 ,
    0x0000d6c60e3e1c864e4c91229495e3751c7107000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4100720074004500780070006500630074006500640044006100 ,
    0x74006500000000000000a0733058dc273a468b1af7e6c66c844607000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be410072007400410072007200690076006500 ,
    0x64004400610074006500000000000000234c81be736bce4ea253b6338fec9b95 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be460069007200730074005000 ,
    0x72006f006f006600530065006e00740044006100740065000000000000005c90 ,
    0xb798aa47ab459c1716da6c77396207000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006f006f006600530065006e007400440061007400650000000000 ,
    0x000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006f006f00660041007000700072006f00760065006400 ,
    0x4400610074006500000000000000641657895895584f819ed540e3d01c550700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4400610074006100450078007000 ,
    0x6500630074006500640044006100740065000000000000008063cea60c7baf4d ,
    0xbe23035a943a986307000000d2d381ba93398a4283a6a9ed80a7b4be44006100 ,
    0x7400610041007200720069007600650064004400610074006500000000000000 ,
    0xd7bd2e8ab9d669409c2cb1dd1044133407000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4d00610069006c00500072006f006f00660041007000700072006f00 ,
    0x7600650064004400610074006500000000000000a084f8da1e4f1342b1fae604 ,
    0x2c102b9a07000000d2d381ba93398a4283a6a9ed80a7b4be4100730073006900 ,
    0x67006e00650064004400750065004400610074006500000000000000d9c1524e ,
    0xae16e7439791b1c28f640d8107000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x5300700065006300690066006900650064004400750065004400610074006500 ,
    0x00000000000090591afcca33cc4a8f11af1822f3c84907000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be43006f006d0070006c006500740069006f006e004400 ,
    0x610074006500000000000000c4583128db72324389f00cb2ee7b136907000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be4d00610069006c004100700070007200 ,
    0x6f00760061006c0052006500710075006900720065006400000000000000378e ,
    0xe4cea8023744a84338cb4f34554507000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f00740065004e0075006d000000000000008da2 ,
    0x1df2a52c304c9ceb8aa4e463609e07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f00740065004e0075006d004400690073007000 ,
    0x6c00610079000000000000004c7cc044f37d714ca4af682c91d41ae007000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x41006d00740031000000000000002bbc476e300c73438d1525ae377665770700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x65005100740079003100000000000000ff79c090f89bb04e9d6c3d551df1f398 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x74006500440069007300630031000000000000004a068060220a094c96a87ac3 ,
    0xaedc171a07000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f0074006500530065006c006c00310000000000000004b5c1e5a7c02c40 ,
    0xbc4ad5c08b8aec0a07000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f007400650041006d00740032000000000000000ac9e111cf62 ,
    0x1d4f81f4d4472f14249107000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f00740065005100740079003200000000000000b1131959 ,
    0x1a621147897512fce4284d3e07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f007400650044006900730063003200000000000000 ,
    0x95876e66f0a19947a5ae51e28c4d153307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500530065006c006c0032000000 ,
    0x000000005a7965dbefa58c4fab0e7662f8c6881507000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f007400650041006d0074003300 ,
    0x0000000000009eb73e1880b89d49b663947c234f256707000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500510074007900 ,
    0x3300000000000000068339bd1572cb498c6afea3fe42690307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650044006900 ,
    0x730063003300000000000000375589a6fd3aa24695413ee56877914207000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x530065006c006c003300000000000000dfb110d9a3c72345af752bd243cb3e4a ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x7400650041006d007400340000000000000050dae1734aa4c747970917503327 ,
    0xb70207000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f007400650051007400790034000000000000006249bec369aad24084612e77 ,
    0x9f381ada07000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f007400650044006900730063003400000000000000d711831e173fa344 ,
    0xbec8d4feb8ebac6807000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f0074006500530065006c006c003400000000000000f215dd61 ,
    0xbe0e6644a44b361f8e53b2db07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f007400650041006d0074003500000000000000e315 ,
    0xd99a8dcc5649b9b5e0758db0dfba07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f00740065005100740079003500000000000000 ,
    0xd659c095fc987a44915a9935afc5fbf607000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500440069007300630035000000 ,
    0x0000000008cecaeea7635e46a9b59e7552e0556307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f0074006500530065006c006c00 ,
    0x35000000000000007aae092db9abf341939e82bfc3bf27f207000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650053006500 ,
    0x6c006500630074003100000000000000ff757f9d2f8b9e4d84feeb09ea527962 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x74006500530065006c006500630074003200000000000000b1c60060f4a7db49 ,
    0x91c48ccb087a5f3607000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f0074006500530065006c006500630074003300000000000000 ,
    0x9cf0d06b378b8e48b6f3c283f190089c07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500530065006c00650063007400 ,
    0x3400000000000000bafaa26fc3d45c4fafd4a6da2d6e53a407000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650053006500 ,
    0x6c006500630074003500000000000000d78c97c321bdff4cb11f574e44afadc0 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be53007400530074006f006300 ,
    0x6b000000000000005b63f08258032d45aa322ba8d518aba307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4d004800530074006f0063006b00000000000000 ,
    0x231cee74f0e24045a242f54aabe005d707000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be44005900530074006f0063006b000000000000007c008cc95de9b14a ,
    0x996e6fabba6e66e107000000d2d381ba93398a4283a6a9ed80a7b4be53007400 ,
    0x43007200650061007400690076006500000000000000ddd164036eb01f449feb ,
    0xd79de5e8458b07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004300 ,
    0x7200650061007400690076006500000000000000785008cac45854429c2d7a0f ,
    0xd550ce6707000000d2d381ba93398a4283a6a9ed80a7b4be4400590043007200 ,
    0x650061007400690076006500000000000000a50f2c519c3b6341a4a9c550ee3d ,
    0x1f3907000000d2d381ba93398a4283a6a9ed80a7b4be53007400500072006500 ,
    0x70007200650073007300000000000000e84040dfa768474680a2782dc10e186f ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048005000720065007000 ,
    0x720065007300730000000000000036c416abbe03c14ba648e2d2a6710c0d0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4400590050007200650070007200 ,
    0x6500730073000000000000000b86554b86a00744973b8362a48bed1007000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be530074004d00610069006c0044006100 ,
    0x7400610000000000000014c9ca3be8d13c4e94b6b4c56e803aee07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be4d0048004d00610069006c00440061007400 ,
    0x61000000000000007d52299ec8bc4841932840a9a071ecb307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be440059004d00610069006c004400610074006100 ,
    0x000000000000b7c36995fcfafa45ad69b32c6b3b9b9e07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be530074005000720069006e007400000000000000a26a ,
    0xeb2ec4b4ad4eb2821496c8e6e15d07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d0048005000720069006e0074000000000000007a43c6b5c60276428b85 ,
    0xa21703ea6f7c07000000d2d381ba93398a4283a6a9ed80a7b4be440059005000 ,
    0x720069006e007400000000000000ddbb1d730996f742992b6250f5318bb00700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be530074004f007500740073006900 ,
    0x640065005300720076000000000000000939731ddb4b184faea5ccebf5f3bfe0 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004f00750074007300 ,
    0x690064006500530072007600000000000000fb7f59af3141d84d8ecd1e922c02 ,
    0xfcee07000000d2d381ba93398a4283a6a9ed80a7b4be440059004f0075007400 ,
    0x7300690064006500530072007600000000000000b57d49568e0a0748b3bcda76 ,
    0xabcd850f07000000d2d381ba93398a4283a6a9ed80a7b4be530074004c004600 ,
    0x460069006e0069007300680000000000000034e96cce7623ef419098596b394b ,
    0x016e07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004c0046004600 ,
    0x69006e00690073006800000000000000fd0ed26d4a6bd649b28cc16ee730e063 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440059004c00460046006900 ,
    0x6e00690073006800000000000000dd6fcd94378b0c49b622eb3d0714ca020700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be53007400420069006e0064006500 ,
    0x72007900000000000000f08b0b99aeca0d42a7931b2d3d02df1907000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be4d004800420069006e006400650072007900 ,
    0x0000000000005de3afceffee604bb48d2533e48439fd07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be44005900420069006e00640065007200790000000000 ,
    0x000070fa57b523cbbd40a137dbadc276a46e07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be530074004d00610069006c00530068006f007000000000000000 ,
    0xb316bc55c21f3943aad1106e34437f4a07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4d0048004d00610069006c00530068006f0070000000000000009d1f ,
    0x63407a9b8a46a8d0c329acc9fec507000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be440059004d00610069006c00530068006f00700000000000000030a18eca ,
    0xf8bd5b469fbb10a424e3022207000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x500072006900630069006e006700530065007400420079004900440000000000 ,
    0x0000769d193c065cc141bfe20aa586b8bb6e07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006900630069006e006700530065007400420079004400 ,
    0x610074006500000000000000d08b4937f088e7428ae717547dec70aa07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x530065006c006500630074000000000000002618059b0d152245a169e20592a8 ,
    0x099207000000d2d381ba93398a4283a6a9ed80a7b4be49006d0070006f007300 ,
    0x6900740069006f006e00440065007400610069006c00000000000000b19777ae ,
    0x0f57ea4293cb5332053705e107000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x49006e0050006c0061006e006e0069006e006700000000000000b42f106d4ffb ,
    0xa24aadc2bc39425dbc2207000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x72006500760044006f0063006b00650074004e0075006d000000000000005c05 ,
    0xbe01d9bfcf498302b64a0ad917a707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be500072006500760044006f0063006b006500740044006100740065000000 ,
    0x000000001c9b84855b8f264abd34a504e56b05af0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80500072006f006a006500630074004e0061006d0065000000 ,
    0x00000000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8044006f0063006b00650074004e0075006d00000000000000 ,
    0xfde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659ee ,
    0xf5e022a143006f006d0070004e0061006d0065000000000000008265226ce516 ,
    0x5f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x00000000295dd08fa5fdd842b45759b74bd1aab007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530065006c006c0046006f007200460069006e0061006c00 ,
    0x000000000000ed1798185848c04c993f9b79d746c8e007000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be530065006c006c00510074007900460069006e006100 ,
    0x6c0000000000000008e398ef1796b9449476fedb66098b6b07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be50004400510041006d007400460069006e006100 ,
    0x6c000000000000003f7399254f01f34db26555c0ae0e557007000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500044005100530065006c006c0069006e006700 ,
    0x50007200690063006500000000000000ceb9e6b7c6726e4ba44196458c499bd0 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be500044005100470072006f00 ,
    0x73007300500072006f00660069007400000000000000d62a92a953f0d04f97ac ,
    0x9050ccf6ac3c07000000d2d381ba93398a4283a6a9ed80a7b4be500044005100 ,
    0x4f0076006500720061006c006c004d00610072006b0075007000000000000000 ,
    0x3747aa8249bff741999ea42bfa7b36bd07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be50004400510041006400640065006400560061006c00750065000000 ,
    0x0000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80490044000000000000001fc238e447652546a47f3ca6a0d8 ,
    0x89e407000000bb4ee421343f624db77659eef5e022a149004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
dbMemo "Filter" ="([qryProjectComponentHeader].[ID]=54679)"
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
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
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
        dbInteger "ColumnWidth" ="2325"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PricingSetByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PricingSetByDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc5"
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
        dbText "Name" ="dbo_ProjectComponentHeader.MHStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StCreative"
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
        dbText "Name" ="dbo_ProjectComponentHeader.StLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty4"
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
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYBindery"
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
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt5"
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
        dbText "Name" ="dbo_ProjectComponentHeader.DYCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailData"
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
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
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
        dbText "Name" ="dbo_ProjectComponentHeader.StOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ImpositionDetail"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StartDate"
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
        dbText "Name" ="dbo_ProjectComponentHeader.PrevDocketDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6dcf2ba3c934454d87edbc6c1b88e782
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FirstProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PrevDocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailComponentYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1008"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQAmtFinal"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQAddedValue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DaysRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe23f1972049052479dee38ed1a380d0e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SellQtyFinal"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQGrossProfit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SellForFinal"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQSellingPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQOverallMarkup"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-126
    Top =135
    Right =1391
    Bottom =903
    Left =-1
    Top =-1
    Right =1485
    Bottom =201
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =125
        Top =-12
        Right =558
        Bottom =350
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =606
        Top =12
        Right =1019
        Bottom =273
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1067
        Top =12
        Right =1211
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
