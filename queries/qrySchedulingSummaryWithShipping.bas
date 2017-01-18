Operation =1
Option =0
Begin InputTables
    Name ="qrySchedulingSummary"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ShippingMethod"
    Name ="dbo_CompanyLocation"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="qrySchedulingSummary.*"
    Expression ="dbo_ShippingMethod.ShipMethod"
    Alias ="ShipSortOrder"
    Expression ="dbo_ShippingMethod.SortOrder"
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
    Expression ="dbo_ProjectHeader.DocketPrintedDate"
    Expression ="dbo_ProjectHeader.DocketPrintedBy"
    Expression ="dbo_ProjectHeader.CODProjectYN"
    Expression ="dbo_ProjectHeader.CODPaidYN"
    Expression ="dbo_ProjectHeader.CODOKToReleaseYN"
    Expression ="dbo_ContactGeneral.InvoiceTermsID"
    Expression ="dbo_ProjectHeader.CODOKToProduceYN"
End
Begin Joins
    LeftTable ="qrySchedulingSummary"
    RightTable ="dbo_ProjectHeader"
    Expression ="qrySchedulingSummary.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ShippingMethod"
    Expression ="dbo_ProjectHeader.ShipVia = dbo_ShippingMethod.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyLocation"
    Expression ="dbo_ProjectHeader.CompanyLocationID = dbo_CompanyLocation.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x7e10d0d429f88c459d8ef99a7cfc94d2
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000004bf9bff4c0d08946a5b965d2d1dc220900000000bf5f7dda ,
    0x0dd8e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d0061007200790000000000000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80000000005331592d0fd8e44000000000000000006400 ,
    0x62006f005f00500072006f006a00650063007400480065006100640065007200 ,
    0x0000000000000fbd6402704abf48b31288af6007ef1d00000000627d65da0dd8 ,
    0xe4400000000000000000640062006f005f005300680069007000700069006e00 ,
    0x67004d006500740068006f006400000000000000f0a07a545f8a6448b11bd6a1 ,
    0x031b20d100000000379321da0dd8e4400000000000000000640062006f005f00 ,
    0x43006f006d00700061006e0079004c006f0063006100740069006f006e000000 ,
    0x00000000bb4ee421343f624db77659eef5e022a100000000294b24da0dd8e440 ,
    0x0000000000000000640062006f005f0043006f006e0074006100630074004700 ,
    0x65006e006500720061006c00000000000000db0df03d887b864e99346265f88c ,
    0xe19d070000007e10d0d429f88c459d8ef99a7cfc94d253006800690070005300 ,
    0x6f00720074004f007200640065007200000000000000d5df2d611a55d74b9b3a ,
    0xaa0906450e9d070000000fbd6402704abf48b31288af6007ef1d530068006900 ,
    0x70004d006500740068006f006400000000000000f5e5653557ac524fa7a4b960 ,
    0x152d81fe070000000fbd6402704abf48b31288af6007ef1d53006f0072007400 ,
    0x4f00720064006500720000000000000097f4d916639123478b4d0c4170d61ffb ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006d00700061006e00 ,
    0x79004c006f0063006100740069006f006e004900440000000000000001d2b706 ,
    0xcee7ea48b9f4af0b27f2548007000000f0a07a545f8a6448b11bd6a1031b20d1 ,
    0x5200650070006f007200740043006f006c006f00720000000000000050ba0291 ,
    0xc05a0647bd2c3ad2e20173560700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x44006f0063006b00650074005000720069006e00740065006400440061007400 ,
    0x6500000000000000be9ae7191eda864d9d2f1fe73a2626240700000035f87d9f ,
    0x0b136040ad3c2851f16d2a8044006f0063006b00650074005000720069006e00 ,
    0x74006500640042007900000000000000dc3a0646bfac6f49b55bb6198a4d87f0 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043004f004400500072006f00 ,
    0x6a0065006300740059004e00000000000000f55210910b97584bb851d51ef208 ,
    0x15f80700000035f87d9f0b136040ad3c2851f16d2a8043004f00440050006100 ,
    0x6900640059004e00000000000000eb2970b5515b104d9de2f3f6808b3aeb0700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8043004f0044004f004b0054006f00 ,
    0x520065006c00650061007300650059004e00000000000000130c6e97c784c548 ,
    0x992577f430d55dc007000000bb4ee421343f624db77659eef5e022a149006e00 ,
    0x76006f006900630065005400650072006d0073004900440000000000000093d0 ,
    0xc4653174e54383bbb089730b52a30700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8043004f0044004f004b0054006f00500072006f0064007500630065005900 ,
    0x4e00000000000000369e7b728bb57a489c7a7d6685518df1070000004bf9bff4 ,
    0xc0d08946a5b965d2d1dc2209500072006f006a00650063007400480065006100 ,
    0x6400650072004900440000000000000004aeb2718000d24bb73b562a737994cb ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a804900440000000000000041a9 ,
    0x4196ea762b4fa1200977e7f87d6b0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8053006800690070005600690061000000000000005eb7d68b16022e429504 ,
    0x3f0c1295ec5c070000000fbd6402704abf48b31288af6007ef1d490044000000 ,
    0x00000000cfcb0f694dd678469d745c2d3c9b453407000000f0a07a545f8a6448 ,
    0xb11bd6a1031b20d1490044000000000000008265226ce5165f4597f9cda18889 ,
    0x8d960700000035f87d9f0b136040ad3c2851f16d2a8043006f006e0074006100 ,
    0x63007400470065006e006500720061006c00490044000000000000001fc238e4 ,
    0x47652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="qrySchedulingSummary.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc3db0aded7da164e9f10ed5901ccd7bf
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DataArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x53581f56ad33f6438ed351a38c03bedd
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x736a113f1257824fb78fe8938f008d19
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0fe66a00f4c5e642b34d976027117841
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd9406b87dd9a37438783257182e704ed
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShipDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x187f1fd8b8a64d488eca3b811a082a41
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShippedVia"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1b33f9b29e71584fa3d50a56f9d0c3fb
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xacd05993c1eed644a314adf7d72b3d51
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x932a186f99a0a94c96f84df00efba287
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6ee06e5476f9a84b82240223cfcd622e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39d585625aa37e49aed59f46f61946e9
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xedf659a9bb4dda4da8102103366f9ec0
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc97ee7e7ff55b24c8fbd3090146fb44d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x661ee12c30e2e745a95acf0f3d47a53c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3706456d81633e4f91e1c55efb56e8d4
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xec12b5ae632fb943bbf4d08ab94bc7bb
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbec75f18f0945b40b3754a32d27a809a
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9f88c689b0f2504bb120b9aa4bbefaae
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbc3467c5a9c3414da05b5f98cc6d8ef4
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x542d7eb54de16340b1d3b318381089f6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0fa672f9e61c084dbda507c737bc33ad
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ee6b22b5eb3904297cf9b6de4cdfa5b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0b57cb46d0bc0d4dae55bc583dc26e36
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3de1e992c3a92b4da9732095b56986c9
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbc830ec91c06e542ac2bb427aaaea54d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ArtYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x73f7dfc9de8c9c4ea5d23f08c4251fed
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x745eebb9fccf8a4f8b58fc22a08c1ae1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0157011ab5baf740a25c660ff46b03ec
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5e76fa27c5910a40b3e9234358019096
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x781beee3f5d1d54fa0569f8de4935d3d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43865c137f7d7c42ae3233aa3c59cfb2
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteNumDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6e21ba5525140b40a894d3a238de1889
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ee6575ffd722343bc6055469b49786d
        End
    End
    Begin
        dbText "Name" ="dbo_ShippingMethod.ShipMethod"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbf9f22b0c0fe3c469cf5d80060a0a9e1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0cd4d2cdf67ed24c85ec586e7951fb0c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x801bfe5de97b2e4dbcb36fdcfb0b1cc9
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SortOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1b9364f2557d4c43b11237520e7bd7cc
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x894c57e163272948a8068ddfce43ccdc
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.Prerequisite"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03b6d10f1881a043988ec5fd7e043dea
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7bf24b21d0d40c428bb294424b18fcda
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4ac6cd0a4a4f674cbfc1adc15545535e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x562d17af4189334695a1320ad6e70ce2
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d112ef155f7914e88c7f248abf2f961
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0cc3dc8b1a4159488ed165467c325965
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a58b01b977c704da8fede6ef7b2c40a
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00b057ac9cd5d54395048824aa549264
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab48f4ab8d7bde418a738e473c9548d2
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc1406f52fa1e5444a06a377a783ce983
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb946b2d444f9b4380ee56c4d055592c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x701f3bf52849934b889914cf854166a1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa98b556c3671548804f429d5591c05d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97c676b5c3c2ed489977b8e8e5c23068
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd777f1647dd62840877105cef70e0482
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.InPlanning"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5eab7d30ac2a334ca8650c6ab8ee8649
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProjectStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x48e49807c5888e428998c0f072b69d5b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CSRInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x96db0a0097e38a44a87dbcc4fdea57b5
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SalesRepInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x24a1d92f88828645bc20a81900bb35a8
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xebc3c8a0e6a84c43b41a37e8c714855c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe7a5110f302215459cb0cd45961e0434
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.FriendlyDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe79e0231250cee4e9ebe58c5092b17f4
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.VendorPackingListNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa1129cec4877fd499cb60dff20be21a6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ReceivedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa1380e9a5d0f954aa02f4d219ad51169
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc598f9a8342af544b15fadad03ee62d6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf7823a6594827c45a97ca16345d5bd35
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb51cf0a52e67144a8b9d3c6016fc5dff
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0a6eb457273c854d80fc2dbb0a48e1ff
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x601c2d91b4eae84696a3b553a8db1941
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe68417b45c41974fbc1a808d4677175a
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa7a0254e593f3342a1681ef88ee97d3e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ComponentType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a22f3fa56998b44a918ce9b76e4dbc7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShipFlag"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x134c72ebe262e344ad0e5d56108a713b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.VendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3040e58c44e6149b18db7c976be55bb
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbc91cc374a345f49adaf0635b13ce285
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x571a5aae217b0241b93dac2fc2233cd7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf68598be028cfd408419d0adf2b8b81c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SaleAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x25befc4f65035446b77b69db6d6805bc
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x436e1287a902e645b5e71c7654378bec
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3c7aa257903c643b50161b8e6440a4b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf454f29405b0f9479c1c43191578815e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe329f985b7ec434b80c250723bea27d1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ed64413ef86fe42af1a25eb65ae8b98
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x107dff48f72f2b408bdb6cfe936766eb
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe57eca96115c8244beb9ff1a915b5662
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8a5b190327d05040b2b17a431d95aee6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x35098719a9c72b448723c390dff2c1df
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e57de4fb38794e8af53c04555256a7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x468ea86631fac24ebe1633545045b86b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6be8f56b340e4943b6b50e48cfe5b5c3
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57ddf77853edb843b2a31672ddd25b0d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd079f9d8ee8d2e46850ce983095ac7ea
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.VendorNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94e8b99a7e62e34d8576c5f687cb3d29
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd30b90ec7f25c64f87901b16b7c1d7d1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x08224341ce87b44f84bd5d577b637c08
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CompNamewQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2a20588e4a2aed4fbfbbc4780fbb9b66
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShippedWaybill"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x921c6e990654834d879e6ed592aeeb2e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x853030662663834197f5ffdd7299af45
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CompletionDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2f54cc64c3bf564bbba48554d1c9f836
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x75472c9851917e4795381d3faf5b892c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DiscPercent"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x38e4a16f9502594dab47efdf6f05202e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2dd2b7ba4332044b914dde5384a2ca1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb8c9526493179445ba765826e8ee9eb5
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd13e952f131e9a4b8086a1479321930b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7b6f12a6872c3045aba9f41b87a71fc8
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa69efc8ee20f04c850d7761211886ca
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x48df2821a1b6ee45b03e9d442322235f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.FirmDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f923fdae773a945b551249416619c4b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2f5f90db2cd5b41ae4ad8ea9bf0bb7f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHOutsidesrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6bafaa43fdd03440b1ff0572b00240ff
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x38cb9f74ecc220498e04c3c3563a0a68
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc1b72a8da5c04548be55f2620b6b0276
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe8bf6dc67e07b945980c03b49dd43fb7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc115bf8ec60f5f4f9938d5d5f9b3608c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SalesRepInitBad"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6e42d3137dc5b0418a3fbc9a7c79bcf6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.LastContactMethod"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf4d60a7cc558624fa795e6ce63bc9fad
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe4fcb593df3a2a4f8d4e9a5c9afc03ec
        End
    End
    Begin
        dbText "Name" ="ShipSortOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb0df03d887b864e99346265f88ce19d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.ReportColor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketPrintedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketPrintedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODProjectYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODPaidYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODOKToReleaseYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.InvoiceTermsID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODOKToProduceYN"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1374
    Bottom =407
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =56
        Top =21
        Right =460
        Bottom =433
        Top =0
        Name ="qrySchedulingSummary"
        Name =""
    End
    Begin
        Left =581
        Top =12
        Right =824
        Bottom =301
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =890
        Top =6
        Right =1034
        Bottom =150
        Top =0
        Name ="dbo_ShippingMethod"
        Name =""
    End
    Begin
        Left =1067
        Top =61
        Right =1211
        Bottom =205
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
    Begin
        Left =980
        Top =231
        Right =1124
        Bottom =375
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
