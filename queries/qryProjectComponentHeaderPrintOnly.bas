Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.MailComponentYN)=False))"
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
    Alias ="ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.HardProofSentDate"
    Expression ="dbo_ProjectComponentHeader.HardProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.FormsRunOrder"
    Expression ="dbo_ProjectComponentHeader.FSCProofSentDate"
    Expression ="dbo_ProjectComponentHeader.FSCProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.PDQSellingPrice"
    Expression ="dbo_ProjectComponentHeader.PDQGrossProfit"
    Expression ="dbo_ProjectComponentHeader.PDQOverallMarkup"
    Expression ="dbo_ProjectComponentHeader.PDQAddedValue"
    Alias ="DaysRequired"
    Expression ="Nz([DYBindery],0)+Nz([DYCreative],0)+Nz([DYLFFinish],0)+Nz([DYMailData])+Nz([DYM"
        "ailShop])+Nz([DYOutsideSrv])+Nz([DYPrepress])+Nz([DYPrint])+Nz([DYStock])"
    Alias ="calcDueDate"
    Expression ="IIf([specifiedDueDate],[specifiedDueDate],[assignedDuedate])"
    Expression ="dbo_ProjectComponentHeader.CommissionLevelSelected"
    Expression ="dbo_ProjectComponentHeader.DTPYN"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyTax1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyTax2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyTax3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyTax4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyTax5"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyNonTax1"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyNonTax2"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyNonTax3"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyNonTax4"
    Expression ="dbo_ProjectComponentHeader.ExtQuoteQtyNonTax5"
    Expression ="dbo_ProjectComponentHeader.CommissionRate"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectComponentHeader.PDQ_ProductCategory"
    Expression ="dbo_ProjectComponentHeader.PDQ_ProductTypeName"
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
    0xd31dec57c2bf7940b8e39e12a453493f
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
    0x6dcf2ba3c934454d87edbc6c1b88e78207000000d31dec57c2bf7940b8e39e12 ,
    0xa453493f44007500650044006100740065000000000000008671cb89325cc543 ,
    0x8d706ae66eda8fbb07000000d31dec57c2bf7940b8e39e12a453493f50007200 ,
    0x6f006a0065006300740043006f006d0070006f006e0065006e00740049004400 ,
    0x00000000000066fa468e2ae605448934d534504bf02c07000000d31dec57c2bf ,
    0x7940b8e39e12a453493f44006100790073005200650071007500690072006500 ,
    0x640000000000000097755227a7482b4491ddde46aaca9b4007000000d31dec57 ,
    0xc2bf7940b8e39e12a453493f630061006c006300440075006500440061007400 ,
    0x650000000000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4900440000000000000092f3a3fed2b0734280ec ,
    0x42fae4658f3607000000d2d381ba93398a4283a6a9ed80a7b4be53006f007200 ,
    0x74004f0072006400650072000000000000002042568302f48b4d89eb4ba2abdd ,
    0xca7307000000d2d381ba93398a4283a6a9ed80a7b4be500072006f006a006500 ,
    0x63007400480065006100640065007200490044000000000000007857d2ada5ee ,
    0x1a42ae4659405dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x7800700065006300740065006400510074007900000000000000b4b63a69c96c ,
    0x6a4fabdbcca6dd7ea99f07000000d2d381ba93398a4283a6a9ed80a7b4be4600 ,
    0x69006e0061006c00510074007900000000000000a21dc4fed47c244fa08fb520 ,
    0x9ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d007000 ,
    0x6f006e0065006e0074004e0061006d0065000000000000006fd6a0db73569d40 ,
    0xbe5b9dc1732f147607000000d2d381ba93398a4283a6a9ed80a7b4be43006f00 ,
    0x6d0070006f006e0065006e0074005400790070006500000000000000e2c8a89a ,
    0xb8615244b74eaa52746e113507000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x530074006100720074004400610074006500000000000000061591c71da67544 ,
    0xa9c8dc1e25594fef07000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x65007200650071007500690073006900740065000000000000008369de8a2254 ,
    0x8c409566162116d7156007000000d2d381ba93398a4283a6a9ed80a7b4be5300 ,
    0x6800690070004400610074006500000000000000b47accf36adaea48b4e4cf6b ,
    0x36149f4107000000d2d381ba93398a4283a6a9ed80a7b4be5300680069007000 ,
    0x700065006400560069006100000000000000dad90d1d3c37e1448dacf0c8b262 ,
    0x807c07000000d2d381ba93398a4283a6a9ed80a7b4be53006800690070007000 ,
    0x65006400570061007900620069006c006c00000000000000511c9c289c00f243 ,
    0xa3ee9fac591d6ee207000000d2d381ba93398a4283a6a9ed80a7b4be53006800 ,
    0x6900700046006c006100670000000000000021329ae9ef05b746a74d95b8db3e ,
    0xc6de07000000d2d381ba93398a4283a6a9ed80a7b4be46007200690065006e00 ,
    0x64006c0079004400650073006300720069007000740069006f006e0000000000 ,
    0x00005357194b8fb38849adf1ce3fa70bd87d07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be560065006e0064006f007200490044000000000000002dd83492 ,
    0x6d7399479b1fb40c3b22208b07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x560065006e0064006f0072004e0061006d0065004900440000000000000090b0 ,
    0x575cb031ee429218f30bdcda948707000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be560065006e0064006f0072005000610063006b0069006e0067004c006900 ,
    0x730074004e0075006d0062006500720000000000000097e06d29c9a11d4ebf21 ,
    0x38f35fc58fe007000000d2d381ba93398a4283a6a9ed80a7b4be520065006300 ,
    0x6500690076006500640042007900000000000000771121a4347414418b9b62e4 ,
    0x0b04077c07000000d2d381ba93398a4283a6a9ed80a7b4be4e006f0074006500 ,
    0x7300000000000000d6c60e3e1c864e4c91229495e3751c7107000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4100720074004500780070006500630074006500 ,
    0x64004400610074006500000000000000a0733058dc273a468b1af7e6c66c8446 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be410072007400410072007200 ,
    0x69007600650064004400610074006500000000000000234c81be736bce4ea253 ,
    0xb6338fec9b9507000000d2d381ba93398a4283a6a9ed80a7b4be460069007200 ,
    0x73007400500072006f006f006600530065006e00740044006100740065000000 ,
    0x000000005c90b798aa47ab459c1716da6c77396207000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006f006f006600530065006e007400440061007400 ,
    0x650000000000000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006f00660041007000700072006f00 ,
    0x7600650064004400610074006500000000000000641657895895584f819ed540 ,
    0xe3d01c5507000000d2d381ba93398a4283a6a9ed80a7b4be4400610074006100 ,
    0x4500780070006500630074006500640044006100740065000000000000008063 ,
    0xcea60c7baf4dbe23035a943a986307000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be440061007400610041007200720069007600650064004400610074006500 ,
    0x000000000000d7bd2e8ab9d669409c2cb1dd1044133407000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4d00610069006c00500072006f006f00660041007000 ,
    0x700072006f007600650064004400610074006500000000000000a084f8da1e4f ,
    0x1342b1fae6042c102b9a07000000d2d381ba93398a4283a6a9ed80a7b4be4100 ,
    0x73007300690067006e0065006400440075006500440061007400650000000000 ,
    0x0000d9c1524eae16e7439791b1c28f640d8107000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be5300700065006300690066006900650064004400750065004400 ,
    0x61007400650000000000000090591afcca33cc4a8f11af1822f3c84907000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006c00650074006900 ,
    0x6f006e004400610074006500000000000000c4583128db72324389f00cb2ee7b ,
    0x136907000000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c004100 ,
    0x7000700072006f00760061006c00520065007100750069007200650064000000 ,
    0x00000000378ee4cea8023744a84338cb4f34554507000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f00740065004e0075006d000000 ,
    0x000000008da21df2a52c304c9ceb8aa4e463609e07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f00740065004e0075006d004400 ,
    0x6900730070006c00610079000000000000004c7cc044f37d714ca4af682c91d4 ,
    0x1ae007000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f007400650041006d00740031000000000000002bbc476e300c73438d1525ae ,
    0x3776657707000000d2d381ba93398a4283a6a9ed80a7b4be4500780074005100 ,
    0x75006f00740065005100740079003100000000000000ff79c090f89bb04e9d6c ,
    0x3d551df1f39807000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f0074006500440069007300630031000000000000004a068060220a ,
    0x094c96a87ac3aedc171a07000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f0074006500530065006c006c00310000000000000004b5 ,
    0xc1e5a7c02c40bc4ad5c08b8aec0a07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f007400650041006d0074003200000000000000 ,
    0x0ac9e111cf621d4f81f4d4472f14249107000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be450078007400510075006f0074006500510074007900320000000000 ,
    0x0000b11319591a621147897512fce4284d3e07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f007400650044006900730063003200 ,
    0x00000000000095876e66f0a19947a5ae51e28c4d153307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500530065006c00 ,
    0x6c0032000000000000005a7965dbefa58c4fab0e7662f8c6881507000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065004100 ,
    0x6d00740033000000000000009eb73e1880b89d49b663947c234f256707000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x5100740079003300000000000000068339bd1572cb498c6afea3fe4269030700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x650044006900730063003300000000000000375589a6fd3aa24695413ee56877 ,
    0x914207000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f0074006500530065006c006c003300000000000000dfb110d9a3c72345af75 ,
    0x2bd243cb3e4a07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f007400650041006d007400340000000000000050dae1734aa4c747 ,
    0x970917503327b70207000000d2d381ba93398a4283a6a9ed80a7b4be45007800 ,
    0x7400510075006f007400650051007400790034000000000000006249bec369aa ,
    0xd24084612e779f381ada07000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f007400650044006900730063003400000000000000d711 ,
    0x831e173fa344bec8d4feb8ebac6807000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f0074006500530065006c006c00340000000000 ,
    0x0000f215dd61be0e6644a44b361f8e53b2db07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f007400650041006d00740035000000 ,
    0x00000000e315d99a8dcc5649b9b5e0758db0dfba07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be450078007400510075006f00740065005100740079003500 ,
    0x000000000000d659c095fc987a44915a9935afc5fbf607000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500440069007300 ,
    0x6300350000000000000008cecaeea7635e46a9b59e7552e0556307000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065005300 ,
    0x65006c006c0035000000000000007aae092db9abf341939e82bfc3bf27f20700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x6500530065006c006500630074003100000000000000ff757f9d2f8b9e4d84fe ,
    0xeb09ea52796207000000d2d381ba93398a4283a6a9ed80a7b4be450078007400 ,
    0x510075006f0074006500530065006c006500630074003200000000000000b1c6 ,
    0x0060f4a7db4991c48ccb087a5f3607000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f0074006500530065006c006500630074003300 ,
    0x0000000000009cf0d06b378b8e48b6f3c283f190089c07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be450078007400510075006f0074006500530065006c00 ,
    0x6500630074003400000000000000bafaa26fc3d45c4fafd4a6da2d6e53a40700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f007400 ,
    0x6500530065006c006500630074003500000000000000d78c97c321bdff4cb11f ,
    0x574e44afadc007000000d2d381ba93398a4283a6a9ed80a7b4be530074005300 ,
    0x74006f0063006b000000000000005b63f08258032d45aa322ba8d518aba30700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4d004800530074006f0063006b00 ,
    0x000000000000231cee74f0e24045a242f54aabe005d707000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be44005900530074006f0063006b000000000000007c00 ,
    0x8cc95de9b14a996e6fabba6e66e107000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be5300740043007200650061007400690076006500000000000000ddd16403 ,
    0x6eb01f449febd79de5e8458b07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4d00480043007200650061007400690076006500000000000000785008cac458 ,
    0x54429c2d7a0fd550ce6707000000d2d381ba93398a4283a6a9ed80a7b4be4400 ,
    0x590043007200650061007400690076006500000000000000a50f2c519c3b6341 ,
    0xa4a9c550ee3d1f3907000000d2d381ba93398a4283a6a9ed80a7b4be53007400 ,
    0x50007200650070007200650073007300000000000000e84040dfa768474680a2 ,
    0x782dc10e186f07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048005000 ,
    0x720065007000720065007300730000000000000036c416abbe03c14ba648e2d2 ,
    0xa6710c0d07000000d2d381ba93398a4283a6a9ed80a7b4be4400590050007200 ,
    0x6500700072006500730073000000000000000b86554b86a00744973b8362a48b ,
    0xed1007000000d2d381ba93398a4283a6a9ed80a7b4be530074004d0061006900 ,
    0x6c00440061007400610000000000000014c9ca3be8d13c4e94b6b4c56e803aee ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004d00610069006c00 ,
    0x44006100740061000000000000007d52299ec8bc4841932840a9a071ecb30700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be440059004d00610069006c004400 ,
    0x610074006100000000000000b7c36995fcfafa45ad69b32c6b3b9b9e07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be530074005000720069006e0074000000 ,
    0x00000000a26aeb2ec4b4ad4eb2821496c8e6e15d07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be4d0048005000720069006e0074000000000000007a43c6b5 ,
    0xc60276428b85a21703ea6f7c07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x440059005000720069006e007400000000000000ddbb1d730996f742992b6250 ,
    0xf5318bb007000000d2d381ba93398a4283a6a9ed80a7b4be530074004f007500 ,
    0x740073006900640065005300720076000000000000000939731ddb4b184faea5 ,
    0xccebf5f3bfe007000000d2d381ba93398a4283a6a9ed80a7b4be4d0048004f00 ,
    0x750074007300690064006500530072007600000000000000fb7f59af3141d84d ,
    0x8ecd1e922c02fcee07000000d2d381ba93398a4283a6a9ed80a7b4be44005900 ,
    0x4f00750074007300690064006500530072007600000000000000b57d49568e0a ,
    0x0748b3bcda76abcd850f07000000d2d381ba93398a4283a6a9ed80a7b4be5300 ,
    0x74004c004600460069006e0069007300680000000000000034e96cce7623ef41 ,
    0x9098596b394b016e07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800 ,
    0x4c004600460069006e00690073006800000000000000fd0ed26d4a6bd649b28c ,
    0xc16ee730e06307000000d2d381ba93398a4283a6a9ed80a7b4be440059004c00 ,
    0x4600460069006e00690073006800000000000000dd6fcd94378b0c49b622eb3d ,
    0x0714ca0207000000d2d381ba93398a4283a6a9ed80a7b4be5300740042006900 ,
    0x6e006400650072007900000000000000f08b0b99aeca0d42a7931b2d3d02df19 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800420069006e006400 ,
    0x6500720079000000000000005de3afceffee604bb48d2533e48439fd07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be44005900420069006e00640065007200 ,
    0x790000000000000070fa57b523cbbd40a137dbadc276a46e07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be530074004d00610069006c00530068006f007000 ,
    0x000000000000b316bc55c21f3943aad1106e34437f4a07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4d0048004d00610069006c00530068006f0070000000 ,
    0x000000009d1f63407a9b8a46a8d0c329acc9fec507000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be440059004d00610069006c00530068006f00700000000000 ,
    0x000030a18ecaf8bd5b469fbb10a424e3022207000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006900630069006e006700530065007400420079004900 ,
    0x4400000000000000769d193c065cc141bfe20aa586b8bb6e07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006900630069006e006700530065007400 ,
    0x420079004400610074006500000000000000d08b4937f088e7428ae717547dec ,
    0x70aa07000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f0074006500530065006c006500630074000000000000002618059b0d152245 ,
    0xa169e20592a8099207000000d2d381ba93398a4283a6a9ed80a7b4be49006d00 ,
    0x70006f0073006900740069006f006e00440065007400610069006c0000000000 ,
    0x0000b19777ae0f57ea4293cb5332053705e107000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be49006e0050006c0061006e006e0069006e006700000000000000 ,
    0xb42f106d4ffba24aadc2bc39425dbc2207000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006500760044006f0063006b00650074004e0075006d000000 ,
    0x000000005c05be01d9bfcf498302b64a0ad917a707000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006500760044006f0063006b006500740044006100 ,
    0x740065000000000000001c9b84855b8f264abd34a504e56b05af0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a80500072006f006a006500630074004e006100 ,
    0x6d006500000000000000749d4175d9cbb541b77414bf76f2aa9c0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8044006f0063006b00650074004e0075006d00 ,
    0x000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f ,
    0x624db77659eef5e022a143006f006d0070004e0061006d006500000000000000 ,
    0x8265226ce5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8043006f006e007400610063007400470065006e006500720061006c00 ,
    0x49004400000000000000c59643644848454d997b09a1342a123207000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be4d00610069006c0043006f006d0070006f00 ,
    0x6e0065006e00740059004e000000000000009775c709b2c3384bb07837caae48 ,
    0x63b007000000d2d381ba93398a4283a6a9ed80a7b4be48006100720064005000 ,
    0x72006f006f006600530065006e00740044006100740065000000000000005bc2 ,
    0xafaa308a944d853680cee4b2efba07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4800610072006400500072006f006f00660041007000700072006f007600 ,
    0x650064004400610074006500000000000000d20e296111a9874b844a1817af84 ,
    0x57cd07000000d2d381ba93398a4283a6a9ed80a7b4be46006f0072006d007300 ,
    0x520075006e004f007200640065007200000000000000698912b6571b544e9855 ,
    0x36263e4aaa9d07000000d2d381ba93398a4283a6a9ed80a7b4be460053004300 ,
    0x500072006f006f006600530065006e0074004400610074006500000000000000 ,
    0x6876e3e53fde43479512a7195bcab50207000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be460053004300500072006f006f00660041007000700072006f007600 ,
    0x6500640044006100740065000000000000003f7399254f01f34db26555c0ae0e ,
    0x557007000000d2d381ba93398a4283a6a9ed80a7b4be50004400510053006500 ,
    0x6c006c0069006e00670050007200690063006500000000000000ceb9e6b7c672 ,
    0x6e4ba44196458c499bd007000000d2d381ba93398a4283a6a9ed80a7b4be5000 ,
    0x44005100470072006f0073007300500072006f00660069007400000000000000 ,
    0xd62a92a953f0d04f97ac9050ccf6ac3c07000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be5000440051004f0076006500720061006c006c004d00610072006b00 ,
    0x750070000000000000003747aa8249bff741999ea42bfa7b36bd07000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be500044005100410064006400650064005600 ,
    0x61006c0075006500000000000000a154ae78be8dea46b2c87d680cc793960700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be43006f006d006d00690073007300 ,
    0x69006f006e004c006500760065006c00530065006c0065006300740065006400 ,
    0x00000000000040a8e051060d37479f14a735a2e9bcea07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be44005400500059004e000000000000001dbffdb60687 ,
    0xa348a111a931cdaefa1007000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f0074006500510074007900540061007800310000000000 ,
    0x0000951c964767116f469386d02e9f35842f07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f007400650051007400790054006100 ,
    0x780032000000000000009c23579cdcfb5c4d9ac21522a5d9a1c207000000d2d3 ,
    0x81ba93398a4283a6a9ed80a7b4be450078007400510075006f00740065005100 ,
    0x740079005400610078003300000000000000c0c77d6050f6ba489537537d841f ,
    0xa5c007000000d2d381ba93398a4283a6a9ed80a7b4be45007800740051007500 ,
    0x6f00740065005100740079005400610078003400000000000000d790f8735b5a ,
    0xc44ea16f7dd746c5563607000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f0074006500510074007900540061007800350000000000 ,
    0x00006f600d9b24afde4db071ba37d14ab0c407000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be450078007400510075006f00740065005100740079004e006f00 ,
    0x6e005400610078003100000000000000aec39da9eaa6894cb2b15f6ea1df3364 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f00 ,
    0x740065005100740079004e006f006e0054006100780032000000000000001142 ,
    0xbd307967f044bf6c9b0f58a7042d07000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be450078007400510075006f00740065005100740079004e006f006e005400 ,
    0x610078003300000000000000a29dfca018a43c4db2f9eedfd32d9b3f07000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be450078007400510075006f0074006500 ,
    0x5100740079004e006f006e005400610078003400000000000000985d00d5aaec ,
    0xcc488efaf75ee80390d507000000d2d381ba93398a4283a6a9ed80a7b4be4500 ,
    0x78007400510075006f00740065005100740079004e006f006e00540061007800 ,
    0x3500000000000000a1aa6b11e15a124f976086e30f4bb33e07000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be43006f006d006d0069007300730069006f006e00 ,
    0x520061007400650000000000000040de5e7aec65a745aa86e7e9e8cb55780700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a80530061006c006500730052006500 ,
    0x70004900440000000000000075c229dd95f508469bb382094fa74a5507000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be5000440051005f00500072006f006400 ,
    0x750063007400430061007400650067006f0072007900000000000000b9035709 ,
    0x99d7c84fbc6abd5e857f310a07000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x5000440051005f00500072006f00640075006300740054007900700065004e00 ,
    0x61006d00650000000000000004aeb2718000d24bb73b562a737994cb07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a80490044000000000000001fc238e44765 ,
    0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
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
        dbText "Name" ="ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8671cb89325cc5438d706ae66eda8fbb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.HardProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FormsRunOrder"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FSCProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FSCProofApprovedDate"
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
            0x66fa468e2ae605448934d534504bf02c
        End
    End
    Begin
        dbText "Name" ="calcDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97755227a7482b4491ddde46aaca9b40
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CommissionLevelSelected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DTPYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQtyNonTax5"
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
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQ_ProductTypeName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PDQ_ProductCategory"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =385
    Top =55
    Right =1902
    Bottom =783
    Left =-1
    Top =-1
    Right =1485
    Bottom =355
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
