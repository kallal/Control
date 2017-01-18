Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.MailComponentYN)=True))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
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
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Alias ="DaysRequired"
    Expression ="Nz([DYBindery],0)+Nz([DYCreative],0)+Nz([DYLFFinish],0)+Nz([DYMailData])+Nz([DYM"
        "ailShop])+Nz([DYOutsideSrv])+Nz([DYPrepress])+Nz([DYPrint])+Nz([DYStock])"
    Alias ="calcDueDate"
    Expression ="IIf([specifiedDueDate],[specifiedDueDate],[assignedDuedate])"
    Expression ="dbo_ProjectComponentHeader.Mail_PrintReadyYN"
    Expression ="dbo_ProjectComponentHeader.Mail_Status"
    Expression ="dbo_ProjectComponentHeader.Mail_Priority"
    Expression ="dbo_ProjectComponentHeader.Mail_ClientDescription"
    Expression ="dbo_ProjectComponentHeader.CommissionLevelSelected"
    Expression ="dbo_ProjectComponentHeader.CommissionRate"
    Expression ="dbo_ProjectHeader.SalesRepID"
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
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0xa296d143fd590b44842e1f57b73e1b76
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
    0x6dcf2ba3c934454d87edbc6c1b88e78207000000a296d143fd590b44842e1f57 ,
    0xb73e1b7644007500650044006100740065000000000000000c6a53f37dfd1248 ,
    0xb5c9804426a525be07000000a296d143fd590b44842e1f57b73e1b7644006100 ,
    0x7900730052006500710075006900720065006400000000000000034294bec7ff ,
    0x534e99e5d0367376882c07000000a296d143fd590b44842e1f57b73e1b766300 ,
    0x61006c006300440075006500440061007400650000000000000029556c4fcc6d ,
    0xe9418049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be4900 ,
    0x440000000000000092f3a3fed2b0734280ec42fae4658f3607000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be53006f00720074004f0072006400650072000000 ,
    0x000000002042568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006f006a0065006300740048006500610064006500 ,
    0x7200490044000000000000007857d2ada5ee1a42ae4659405dc8fd6b07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be45007800700065006300740065006400 ,
    0x510074007900000000000000b4b63a69c96c6a4fabdbcca6dd7ea99f07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be460069006e0061006c00510074007900 ,
    0x000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e0074004e006100 ,
    0x6d0065000000000000006fd6a0db73569d40be5b9dc1732f147607000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e0065006e007400 ,
    0x5400790070006500000000000000e2c8a89ab8615244b74eaa52746e11350700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5300740061007200740044006100 ,
    0x74006500000000000000061591c71da67544a9c8dc1e25594fef07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500072006500720065007100750069007300 ,
    0x6900740065000000000000008369de8a22548c409566162116d7156007000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53006800690070004400610074006500 ,
    0x000000000000b47accf36adaea48b4e4cf6b36149f4107000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be53006800690070007000650064005600690061000000 ,
    0x00000000dad90d1d3c37e1448dacf0c8b262807c07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530068006900700070006500640057006100790062006900 ,
    0x6c006c00000000000000511c9c289c00f243a3ee9fac591d6ee207000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be530068006900700046006c00610067000000 ,
    0x0000000021329ae9ef05b746a74d95b8db3ec6de07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be46007200690065006e0064006c0079004400650073006300 ,
    0x720069007000740069006f006e000000000000005357194b8fb38849adf1ce3f ,
    0xa70bd87d07000000d2d381ba93398a4283a6a9ed80a7b4be560065006e006400 ,
    0x6f007200490044000000000000002dd834926d7399479b1fb40c3b22208b0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be560065006e0064006f0072004e00 ,
    0x61006d0065004900440000000000000090b0575cb031ee429218f30bdcda9487 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be560065006e0064006f007200 ,
    0x5000610063006b0069006e0067004c006900730074004e0075006d0062006500 ,
    0x720000000000000097e06d29c9a11d4ebf2138f35fc58fe007000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be5200650063006500690076006500640042007900 ,
    0x000000000000771121a4347414418b9b62e40b04077c07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4e006f00740065007300000000000000d6c60e3e1c86 ,
    0x4e4c91229495e3751c7107000000d2d381ba93398a4283a6a9ed80a7b4be4100 ,
    0x7200740045007800700065006300740065006400440061007400650000000000 ,
    0x0000a0733058dc273a468b1af7e6c66c844607000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4100720074004100720072006900760065006400440061007400 ,
    0x6500000000000000234c81be736bce4ea253b6338fec9b9507000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be46006900720073007400500072006f006f006600 ,
    0x530065006e00740044006100740065000000000000005c90b798aa47ab459c17 ,
    0x16da6c77396207000000d2d381ba93398a4283a6a9ed80a7b4be500072006f00 ,
    0x6f006600530065006e007400440061007400650000000000000078a4ab78684b ,
    0xe74a86eca6bbeda30d6807000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x72006f006f00660041007000700072006f007600650064004400610074006500 ,
    0x000000000000641657895895584f819ed540e3d01c5507000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be44006100740061004500780070006500630074006500 ,
    0x640044006100740065000000000000008063cea60c7baf4dbe23035a943a9863 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be440061007400610041007200 ,
    0x720069007600650064004400610074006500000000000000d7bd2e8ab9d66940 ,
    0x9c2cb1dd1044133407000000d2d381ba93398a4283a6a9ed80a7b4be4d006100 ,
    0x69006c00500072006f006f00660041007000700072006f007600650064004400 ,
    0x610074006500000000000000a084f8da1e4f1342b1fae6042c102b9a07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be410073007300690067006e0065006400 ,
    0x4400750065004400610074006500000000000000d9c1524eae16e7439791b1c2 ,
    0x8f640d8107000000d2d381ba93398a4283a6a9ed80a7b4be5300700065006300 ,
    0x6900660069006500640044007500650044006100740065000000000000009059 ,
    0x1afcca33cc4a8f11af1822f3c84907000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be43006f006d0070006c006500740069006f006e0044006100740065000000 ,
    0x00000000c4583128db72324389f00cb2ee7b136907000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4d00610069006c0041007000700072006f00760061006c00 ,
    0x52006500710075006900720065006400000000000000378ee4cea8023744a843 ,
    0x38cb4f34554507000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f00740065004e0075006d000000000000008da21df2a52c304c9ceb ,
    0x8aa4e463609e07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f00740065004e0075006d0044006900730070006c00610079000000 ,
    0x000000004c7cc044f37d714ca4af682c91d41ae007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f007400650041006d0074003100 ,
    0x0000000000002bbc476e300c73438d1525ae3776657707000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500510074007900 ,
    0x3100000000000000ff79c090f89bb04e9d6c3d551df1f39807000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650044006900 ,
    0x7300630031000000000000004a068060220a094c96a87ac3aedc171a07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x530065006c006c00310000000000000004b5c1e5a7c02c40bc4ad5c08b8aec0a ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x7400650041006d00740032000000000000000ac9e111cf621d4f81f4d4472f14 ,
    0x249107000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f00740065005100740079003200000000000000b11319591a621147897512fc ,
    0xe4284d3e07000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f00740065004400690073006300320000000000000095876e66f0a19947 ,
    0xa5ae51e28c4d153307000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f0074006500530065006c006c0032000000000000005a7965db ,
    0xefa58c4fab0e7662f8c6881507000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f007400650041006d00740033000000000000009eb7 ,
    0x3e1880b89d49b663947c234f256707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f00740065005100740079003300000000000000 ,
    0x068339bd1572cb498c6afea3fe42690307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500440069007300630033000000 ,
    0x00000000375589a6fd3aa24695413ee56877914207000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f0074006500530065006c006c00 ,
    0x3300000000000000dfb110d9a3c72345af752bd243cb3e4a07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650041006d00 ,
    0x7400340000000000000050dae1734aa4c747970917503327b70207000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065005100 ,
    0x7400790034000000000000006249bec369aad24084612e779f381ada07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x44006900730063003400000000000000d711831e173fa344bec8d4feb8ebac68 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x74006500530065006c006c003400000000000000f215dd61be0e6644a44b361f ,
    0x8e53b2db07000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f007400650041006d0074003500000000000000e315d99a8dcc5649b9b5 ,
    0xe0758db0dfba07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f00740065005100740079003500000000000000d659c095fc987a44 ,
    0x915a9935afc5fbf607000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f00740065004400690073006300350000000000000008cecaee ,
    0xa7635e46a9b59e7552e0556307000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x450078007400510075006f0074006500530065006c006c003500000000000000 ,
    0x7aae092db9abf341939e82bfc3bf27f207000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500530065006c00650063007400 ,
    0x3100000000000000ff757f9d2f8b9e4d84feeb09ea52796207000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be450078007400510075006f007400650053006500 ,
    0x6c006500630074003200000000000000b1c60060f4a7db4991c48ccb087a5f36 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x74006500530065006c0065006300740033000000000000009cf0d06b378b8e48 ,
    0xb6f3c283f190089c07000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f0074006500530065006c006500630074003400000000000000 ,
    0xbafaa26fc3d45c4fafd4a6da2d6e53a407000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500530065006c00650063007400 ,
    0x3500000000000000d78c97c321bdff4cb11f574e44afadc007000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be53007400530074006f0063006b00000000000000 ,
    0x5b63f08258032d45aa322ba8d518aba307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be4d004800530074006f0063006b00000000000000231cee74f0e24045 ,
    0xa242f54aabe005d707000000d2d381ba93398a4283a6a9ed80a7b4be44005900 ,
    0x530074006f0063006b000000000000007c008cc95de9b14a996e6fabba6e66e1 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be530074004300720065006100 ,
    0x7400690076006500000000000000ddd164036eb01f449febd79de5e8458b0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d00480043007200650061007400 ,
    0x690076006500000000000000785008cac45854429c2d7a0fd550ce6707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be44005900430072006500610074006900 ,
    0x76006500000000000000a50f2c519c3b6341a4a9c550ee3d1f3907000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be530074005000720065007000720065007300 ,
    0x7300000000000000e84040dfa768474680a2782dc10e186f07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4d00480050007200650070007200650073007300 ,
    0x00000000000036c416abbe03c14ba648e2d2a6710c0d07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be44005900500072006500700072006500730073000000 ,
    0x000000000b86554b86a00744973b8362a48bed1007000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be530074004d00610069006c00440061007400610000000000 ,
    0x000014c9ca3be8d13c4e94b6b4c56e803aee07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4d0048004d00610069006c004400610074006100000000000000 ,
    0x7d52299ec8bc4841932840a9a071ecb307000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be440059004d00610069006c004400610074006100000000000000b7c3 ,
    0x6995fcfafa45ad69b32c6b3b9b9e07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be530074005000720069006e007400000000000000a26aeb2ec4b4ad4eb282 ,
    0x1496c8e6e15d07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048005000 ,
    0x720069006e0074000000000000007a43c6b5c60276428b85a21703ea6f7c0700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be440059005000720069006e007400 ,
    0x000000000000ddbb1d730996f742992b6250f5318bb007000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be530074004f0075007400730069006400650053007200 ,
    0x76000000000000000939731ddb4b184faea5ccebf5f3bfe007000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4d0048004f007500740073006900640065005300 ,
    0x72007600000000000000fb7f59af3141d84d8ecd1e922c02fcee07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be440059004f00750074007300690064006500 ,
    0x530072007600000000000000b57d49568e0a0748b3bcda76abcd850f07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be530074004c004600460069006e006900 ,
    0x7300680000000000000034e96cce7623ef419098596b394b016e07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be4d0048004c004600460069006e0069007300 ,
    0x6800000000000000fd0ed26d4a6bd649b28cc16ee730e06307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be440059004c004600460069006e00690073006800 ,
    0x000000000000dd6fcd94378b0c49b622eb3d0714ca0207000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be53007400420069006e00640065007200790000000000 ,
    0x0000f08b0b99aeca0d42a7931b2d3d02df1907000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4d004800420069006e0064006500720079000000000000005de3 ,
    0xafceffee604bb48d2533e48439fd07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be44005900420069006e00640065007200790000000000000070fa57b523cb ,
    0xbd40a137dbadc276a46e07000000d2d381ba93398a4283a6a9ed80a7b4be5300 ,
    0x74004d00610069006c00530068006f007000000000000000b316bc55c21f3943 ,
    0xaad1106e34437f4a07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800 ,
    0x4d00610069006c00530068006f0070000000000000009d1f63407a9b8a46a8d0 ,
    0xc329acc9fec507000000d2d381ba93398a4283a6a9ed80a7b4be440059004d00 ,
    0x610069006c00530068006f00700000000000000030a18ecaf8bd5b469fbb10a4 ,
    0x24e3022207000000d2d381ba93398a4283a6a9ed80a7b4be5000720069006300 ,
    0x69006e0067005300650074004200790049004400000000000000769d193c065c ,
    0xc141bfe20aa586b8bb6e07000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x72006900630069006e0067005300650074004200790044006100740065000000 ,
    0x00000000d08b4937f088e7428ae717547dec70aa07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f0074006500530065006c006500 ,
    0x630074000000000000002618059b0d152245a169e20592a8099207000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be49006d0070006f0073006900740069006f00 ,
    0x6e00440065007400610069006c00000000000000b19777ae0f57ea4293cb5332 ,
    0x053705e107000000d2d381ba93398a4283a6a9ed80a7b4be49006e0050006c00 ,
    0x61006e006e0069006e006700000000000000b42f106d4ffba24aadc2bc39425d ,
    0xbc2207000000d2d381ba93398a4283a6a9ed80a7b4be50007200650076004400 ,
    0x6f0063006b00650074004e0075006d000000000000005c05be01d9bfcf498302 ,
    0xb64a0ad917a707000000d2d381ba93398a4283a6a9ed80a7b4be500072006500 ,
    0x760044006f0063006b006500740044006100740065000000000000001c9b8485 ,
    0x5b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x500072006f006a006500630074004e0061006d006500000000000000749d4175 ,
    0xd9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x44006f0063006b00650074004e0075006d00000000000000fde2928bbc55824d ,
    0x8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f00 ,
    0x6d0070004e0061006d0065000000000000008265226ce5165f4597f9cda18889 ,
    0x8d960700000035f87d9f0b136040ad3c2851f16d2a8043006f006e0074006100 ,
    0x63007400470065006e006500720061006c0049004400000000000000c5964364 ,
    0x4848454d997b09a1342a123207000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4d00610069006c0043006f006d0070006f006e0065006e00740059004e000000 ,
    0x00000000cd1aa36b5130b249aa917c77bc3e4df507000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4d00610069006c005f005000720069006e00740052006500 ,
    0x61006400790059004e0000000000000059046d215487f24cac9486591bda8b41 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c005f005300 ,
    0x740061007400750073000000000000006422abaaaed48c469b771c000425f544 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c005f005000 ,
    0x720069006f007200690074007900000000000000772940760096a941bf355624 ,
    0xd9350b2307000000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c00 ,
    0x5f0043006c00690065006e007400440065007300630072006900700074006900 ,
    0x6f006e00000000000000a154ae78be8dea46b2c87d680cc7939607000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be43006f006d006d0069007300730069006f00 ,
    0x6e004c006500760065006c00530065006c006500630074006500640000000000 ,
    0x0000a1aa6b11e15a124f976086e30f4bb33e07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be43006f006d006d0069007300730069006f006e00520061007400 ,
    0x650000000000000040de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f ,
    0x0b136040ad3c2851f16d2a80530061006c006500730052006500700049004400 ,
    0x00000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80490044000000000000001fc238e447652546a47f3ca6 ,
    0xa0d889e407000000bb4ee421343f624db77659eef5e022a14900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
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
        dbText "Name" ="Expr1007"
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
        dbText "Name" ="DaysRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0c6a53f37dfd1248b5c9804426a525be
        End
    End
    Begin
        dbText "Name" ="calcDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x034294bec7ff534e99e5d0367376882c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Mail_PrintReadyYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Mail_Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Mail_Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Mail_ClientDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CommissionLevelSelected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CommissionRate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =26
    Top =78
    Right =1543
    Bottom =806
    Left =-1
    Top =-1
    Right =1485
    Bottom =345
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
