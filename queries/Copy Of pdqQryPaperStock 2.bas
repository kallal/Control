Operation =1
Option =0
Begin InputTables
    Name ="pdqQuote"
    Name ="pdqPrintingMethod"
    Name ="pdqPaperDetails"
    Name ="pdqImposition"
    Name ="pdqSection"
    Name ="pdqColours"
    Name ="pdqLayout"
End
Begin OutputColumns
    Expression ="pdqPaperDetails.SectionName"
    Expression ="pdqSection.Type"
    Expression ="pdqPaperDetails.PaperDescription"
    Expression ="pdqPaperDetails.SheetFinish"
    Expression ="pdqSection.lbs"
    Expression ="pdqSection.LbsCover"
    Expression ="pdqSection.LbsText"
    Expression ="pdqPaperDetails.PaperIsEnvelope"
    Expression ="pdqPaperDetails.SheetFinishId"
    Expression ="pdqPaperDetails.PaperSupplied"
    Expression ="pdqPaperDetails.TonnePrice"
    Expression ="pdqPaperDetails.PricePer1000"
    Expression ="pdqPaperDetails.PaperId"
    Expression ="pdqImposition.TotalNetSheets"
    Expression ="pdqImposition.TotalGrossSheets"
    Expression ="pdqLayout.Plates"
    Expression ="pdqImposition.Bleed"
    Expression ="pdqImposition.GripFront"
    Expression ="pdqImposition.BackEdge"
    Expression ="pdqImposition.SideLayLeft"
    Expression ="pdqImposition.SideLayRight"
    Expression ="pdqImposition.PaperXInch"
    Expression ="pdqImposition.PaperYInch"
    Expression ="pdqImposition.MasterX"
    Expression ="pdqImposition.MasterXInch"
    Expression ="pdqImposition.MasterY"
    Expression ="pdqImposition.MasterYinch"
    Expression ="pdqSection.SizeXInch"
    Expression ="pdqSection.SizeYInch"
    Expression ="pdqSection.Kinds"
    Expression ="pdqSection.Orientation"
    Expression ="pdqSection.PlatesRequired"
    Expression ="pdqPrintingMethod.PrintingMethod"
    Expression ="pdqPrintingMethod.Name"
    Alias ="NumUp"
    Expression ="Round([pdqquote].[jobqty]/[pdqimposition].[totalnetsheets])"
    Expression ="pdqColours.PMSFront"
    Expression ="pdqColours.PMSBack"
    Expression ="pdqColours.PMSCoverage"
    Expression ="pdqColours.CYMKFront"
    Expression ="pdqColours.CYMKBack"
    Expression ="pdqColours.CYMKCoverage"
    Expression ="pdqColours.MetallicFront"
    Expression ="pdqColours.MetallicBack"
    Expression ="pdqColours.MetallicCoverage"
    Expression ="pdqColours.SpotSealFront"
    Expression ="pdqColours.SpotSealBack"
    Expression ="pdqColours.SpotSealCoverage"
    Expression ="pdqColours.SortQty"
    Expression ="pdqSection.Pages"
    Expression ="pdqQuote.FriendlyTextProcesses"
    Alias ="SumOfMasterSheets"
    Expression ="Sum(pdqLayout.MasterSheets)"
    Expression ="pdqLayout.NumberOutMaster"
    Alias ="SumOfGrossSheets"
    Expression ="Sum(pdqLayout.GrossSheets)"
    Alias ="SumOfNetSheets"
    Expression ="Sum(pdqLayout.NetSheets)"
    Expression ="pdqImposition.PaperCost"
    Alias ="PaperCostPerM"
    Expression ="[pdqImposition].[papercost]/[pdqimposition].[totalGrossSheets]*1000"
    Expression ="pdqSection.FlapX"
    Expression ="pdqSection.FlapY"
    Expression ="pdqLayout.numberUp"
    Expression ="pdqLayout.NumberOfBlocks"
    Expression ="pdqLayout.WastedBlocks"
    Expression ="pdqLayout.ImpositionID"
    Expression ="pdqLayout.NumberOfSheetTypes"
    Expression ="pdqLayout.PrintMethod"
    Expression ="pdqLayout.KindsOnPage"
    Expression ="pdqLayout.FoldX"
    Expression ="pdqLayout.FoldY"
    Expression ="pdqLayout.Stonehenging"
End
Begin Joins
    LeftTable ="pdqPaperDetails"
    RightTable ="pdqImposition"
    Expression ="pdqPaperDetails.SectionName = pdqImposition.SectionName"
    Flag =1
    LeftTable ="pdqPaperDetails"
    RightTable ="pdqSection"
    Expression ="pdqPaperDetails.SectionName = pdqSection.Name"
    Flag =1
    LeftTable ="pdqPrintingMethod"
    RightTable ="pdqPaperDetails"
    Expression ="pdqPrintingMethod.SectionName = pdqPaperDetails.SectionName"
    Flag =1
    LeftTable ="pdqPaperDetails"
    RightTable ="pdqColours"
    Expression ="pdqPaperDetails.SectionName = pdqColours.SectionName"
    Flag =1
    LeftTable ="pdqImposition"
    RightTable ="pdqLayout"
    Expression ="pdqImposition.SectionName = pdqLayout.SectionName"
    Flag =1
    LeftTable ="pdqPaperDetails"
    RightTable ="pdqLayout"
    Expression ="pdqPaperDetails.QuoteID = pdqLayout.QuoteID"
    Flag =1
End
Begin Groups
    Expression ="pdqPaperDetails.SectionName"
    GroupLevel =0
    Expression ="pdqSection.Type"
    GroupLevel =0
    Expression ="pdqPaperDetails.PaperDescription"
    GroupLevel =0
    Expression ="pdqPaperDetails.SheetFinish"
    GroupLevel =0
    Expression ="pdqSection.lbs"
    GroupLevel =0
    Expression ="pdqSection.LbsCover"
    GroupLevel =0
    Expression ="pdqSection.LbsText"
    GroupLevel =0
    Expression ="pdqPaperDetails.PaperIsEnvelope"
    GroupLevel =0
    Expression ="pdqPaperDetails.SheetFinishId"
    GroupLevel =0
    Expression ="pdqPaperDetails.PaperSupplied"
    GroupLevel =0
    Expression ="pdqPaperDetails.TonnePrice"
    GroupLevel =0
    Expression ="pdqPaperDetails.PricePer1000"
    GroupLevel =0
    Expression ="pdqPaperDetails.PaperId"
    GroupLevel =0
    Expression ="pdqImposition.TotalNetSheets"
    GroupLevel =0
    Expression ="pdqImposition.TotalGrossSheets"
    GroupLevel =0
    Expression ="pdqLayout.Plates"
    GroupLevel =0
    Expression ="pdqImposition.Bleed"
    GroupLevel =0
    Expression ="pdqImposition.GripFront"
    GroupLevel =0
    Expression ="pdqImposition.BackEdge"
    GroupLevel =0
    Expression ="pdqImposition.SideLayLeft"
    GroupLevel =0
    Expression ="pdqImposition.SideLayRight"
    GroupLevel =0
    Expression ="pdqImposition.PaperXInch"
    GroupLevel =0
    Expression ="pdqImposition.PaperYInch"
    GroupLevel =0
    Expression ="pdqImposition.MasterX"
    GroupLevel =0
    Expression ="pdqImposition.MasterXInch"
    GroupLevel =0
    Expression ="pdqImposition.MasterY"
    GroupLevel =0
    Expression ="pdqImposition.MasterYinch"
    GroupLevel =0
    Expression ="pdqSection.SizeXInch"
    GroupLevel =0
    Expression ="pdqSection.SizeYInch"
    GroupLevel =0
    Expression ="pdqSection.Kinds"
    GroupLevel =0
    Expression ="pdqSection.Orientation"
    GroupLevel =0
    Expression ="pdqSection.PlatesRequired"
    GroupLevel =0
    Expression ="pdqPrintingMethod.PrintingMethod"
    GroupLevel =0
    Expression ="pdqPrintingMethod.Name"
    GroupLevel =0
    Expression ="Round([pdqquote].[jobqty]/[pdqimposition].[totalnetsheets])"
    GroupLevel =0
    Expression ="pdqColours.PMSFront"
    GroupLevel =0
    Expression ="pdqColours.PMSBack"
    GroupLevel =0
    Expression ="pdqColours.PMSCoverage"
    GroupLevel =0
    Expression ="pdqColours.CYMKFront"
    GroupLevel =0
    Expression ="pdqColours.CYMKBack"
    GroupLevel =0
    Expression ="pdqColours.CYMKCoverage"
    GroupLevel =0
    Expression ="pdqColours.MetallicFront"
    GroupLevel =0
    Expression ="pdqColours.MetallicBack"
    GroupLevel =0
    Expression ="pdqColours.MetallicCoverage"
    GroupLevel =0
    Expression ="pdqColours.SpotSealFront"
    GroupLevel =0
    Expression ="pdqColours.SpotSealBack"
    GroupLevel =0
    Expression ="pdqColours.SpotSealCoverage"
    GroupLevel =0
    Expression ="pdqColours.SortQty"
    GroupLevel =0
    Expression ="pdqSection.Pages"
    GroupLevel =0
    Expression ="pdqQuote.FriendlyTextProcesses"
    GroupLevel =0
    Expression ="pdqLayout.NumberOutMaster"
    GroupLevel =0
    Expression ="pdqImposition.PaperCost"
    GroupLevel =0
    Expression ="[pdqImposition].[papercost]/[pdqimposition].[totalGrossSheets]*1000"
    GroupLevel =0
    Expression ="pdqSection.FlapX"
    GroupLevel =0
    Expression ="pdqSection.FlapY"
    GroupLevel =0
    Expression ="pdqLayout.numberUp"
    GroupLevel =0
    Expression ="pdqLayout.NumberOfBlocks"
    GroupLevel =0
    Expression ="pdqLayout.WastedBlocks"
    GroupLevel =0
    Expression ="pdqLayout.ImpositionID"
    GroupLevel =0
    Expression ="pdqLayout.NumberOfSheetTypes"
    GroupLevel =0
    Expression ="pdqLayout.PrintMethod"
    GroupLevel =0
    Expression ="pdqLayout.KindsOnPage"
    GroupLevel =0
    Expression ="pdqLayout.FoldX"
    GroupLevel =0
    Expression ="pdqLayout.FoldY"
    GroupLevel =0
    Expression ="pdqLayout.Stonehenging"
    GroupLevel =0
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
    0x0acc0e5500000000cc5dfd99a39e37418b4bc2bdb88445c800000000045e536d ,
    0xec62e4400000000000000000700064007100510075006f007400650000000000 ,
    0x0000816007970e8e144d85e42ba0ceae8a5b000000008e74b7b9ed70e4400000 ,
    0x0000000000007000640071005000720069006e00740069006e0067004d006500 ,
    0x740068006f0064000000000000007784b7f01893714fab968f7809a7416e0000 ,
    0x0000f3344c6dec62e44000000000000000007000640071005000610070006500 ,
    0x7200440065007400610069006c0073000000000000004d9e8ba2d9e52642aeda ,
    0x04ef7bb0470e0000000017ee486dec62e4400000000000000000700064007100 ,
    0x49006d0070006f0073006900740069006f006e000000000000006654ff39c88c ,
    0x7f499dbdbc07cc6350b100000000af99556dec62e44000000000000000007000 ,
    0x64007100530065006300740069006f006e00000000000000e48854e241e4ab4e ,
    0x9a17f8a616a77678000000000dee436dec62e440000000000000000070006400 ,
    0x710043006f006c006f00750072007300000000000000747a9fd92e37e34faffa ,
    0xac3e4eb3d43b000000006c374a6dec62e4400000000000000000700064007100 ,
    0x4c00610079006f00750074000000000000001bed2ef724dc3d43850be7a31366 ,
    0x4c2707000000000000000000000000000000000000004e0075006d0055007000 ,
    0x00000000000074c0cda012d6da47954bad39da71752407000000000000000000 ,
    0x00000000000000000000530075006d004f0066004d0061007300740065007200 ,
    0x530068006500650074007300000000000000ff8ba68fd9ac244aae9cc37db6cd ,
    0x43480700000000000000000000000000000000000000530075006d004f006600 ,
    0x470072006f007300730053006800650065007400730000000000000021752de9 ,
    0x1742e3409c5ce14b98cc5a410700000000000000000000000000000000000000 ,
    0x530075006d004f0066004e006500740053006800650065007400730000000000 ,
    0x000051a0aca37664f843a943feb45c9ac78d0700000000000000000000000000 ,
    0x0000000000005000610070006500720043006f00730074005000650072004d00 ,
    0x00000000000049b008e7ef508640bf75c20c1d6536dc070000007784b7f01893 ,
    0x714fab968f7809a7416e530065006300740069006f006e004e0061006d006500 ,
    0x000000000000b81ece3c08c9fc45ab1b7cf3edbfddf5070000006654ff39c88c ,
    0x7f499dbdbc07cc6350b15400790070006500000000000000289ba81cdf16de47 ,
    0x93becb81e0aac261070000007784b7f01893714fab968f7809a7416e50006100 ,
    0x7000650072004400650073006300720069007000740069006f006e0000000000 ,
    0x000003d10867781405458b4246347358143f070000007784b7f01893714fab96 ,
    0x8f7809a7416e53006800650065007400460069006e0069007300680000000000 ,
    0x0000345ebdc752a3f046bc992d4e3eee8545070000006654ff39c88c7f499dbd ,
    0xbc07cc6350b16c006200730000000000000026ebe9289615fc4cbeecfb2f0f71 ,
    0x893b070000006654ff39c88c7f499dbdbc07cc6350b14c006200730043006f00 ,
    0x76006500720000000000000048f663781911374f9694ff195db4c22f07000000 ,
    0x6654ff39c88c7f499dbdbc07cc6350b14c006200730054006500780074000000 ,
    0x00000000b2fe9fac5f89b74cb0e24ab9b9087a78070000007784b7f01893714f ,
    0xab968f7809a7416e500061007000650072004900730045006e00760065006c00 ,
    0x6f007000650000000000000016bf9b6d3895ce4c991d3b205b9e975207000000 ,
    0x7784b7f01893714fab968f7809a7416e53006800650065007400460069006e00 ,
    0x69007300680049006400000000000000d922f8f988752149967041e4e143922b ,
    0x070000007784b7f01893714fab968f7809a7416e500061007000650072005300 ,
    0x7500700070006c006900650064000000000000009d8789ff21bee5429236194b ,
    0xa42e6235070000007784b7f01893714fab968f7809a7416e54006f006e006e00 ,
    0x650050007200690063006500000000000000cf3282397c60a547ab04aa09d0b8 ,
    0xdea3070000007784b7f01893714fab968f7809a7416e50007200690063006500 ,
    0x5000650072003100300030003000000000000000d6004eaf6f86224e9b5cd018 ,
    0xe64ad94f070000007784b7f01893714fab968f7809a7416e5000610070006500 ,
    0x720049006400000000000000dd90457ab7b4424aa97e9d4fd164e9d307000000 ,
    0x4d9e8ba2d9e52642aeda04ef7bb0470e54006f00740061006c004e0065007400 ,
    0x530068006500650074007300000000000000601c64e9307f614898ce7a0c1e30 ,
    0xc820070000004d9e8ba2d9e52642aeda04ef7bb0470e54006f00740061006c00 ,
    0x470072006f0073007300530068006500650074007300000000000000d19c9c04 ,
    0x03f7894bae84748501496db607000000747a9fd92e37e34faffaac3e4eb3d43b ,
    0x50006c006100740065007300000000000000d8c6586fef23d842b34c57aabea3 ,
    0x0d16070000004d9e8ba2d9e52642aeda04ef7bb0470e42006c00650065006400 ,
    0x0000000000001a6958b38a7cc043b453c49737124a30070000004d9e8ba2d9e5 ,
    0x2642aeda04ef7bb0470e4700720069007000460072006f006e00740000000000 ,
    0x000025d6a706fd35bf4cb785853230c957e0070000004d9e8ba2d9e52642aeda ,
    0x04ef7bb0470e4200610063006b00450064006700650000000000000050f8e1a4 ,
    0x8d1d694e86cbb2960f869c26070000004d9e8ba2d9e52642aeda04ef7bb0470e ,
    0x53006900640065004c00610079004c00650066007400000000000000b81c5c49 ,
    0x747fe841a1e8f9b79ebc12e0070000004d9e8ba2d9e52642aeda04ef7bb0470e ,
    0x53006900640065004c006100790052006900670068007400000000000000abcc ,
    0x647b01b2754990c4d7955a7bc9f7070000004d9e8ba2d9e52642aeda04ef7bb0 ,
    0x470e50006100700065007200580049006e0063006800000000000000021753e6 ,
    0x7cd7d7428c844b89b8974909070000004d9e8ba2d9e52642aeda04ef7bb0470e ,
    0x50006100700065007200590049006e0063006800000000000000a737a59dbd77 ,
    0x03479afcc6c74608b0c9070000004d9e8ba2d9e52642aeda04ef7bb0470e4d00 ,
    0x610073007400650072005800000000000000ff48fdbdc5557e4db328dbf9f659 ,
    0x8a30070000004d9e8ba2d9e52642aeda04ef7bb0470e4d006100730074006500 ,
    0x7200580049006e006300680000000000000098c79b8c3d6bb648bd8ae87762ca ,
    0xd1e4070000004d9e8ba2d9e52642aeda04ef7bb0470e4d006100730074006500 ,
    0x720059000000000000000860897da5e4634a943ff4e3b6435a3a070000004d9e ,
    0x8ba2d9e52642aeda04ef7bb0470e4d0061007300740065007200590069006e00 ,
    0x63006800000000000000c29d6f0fe76ad6419389e60aad03b95a070000006654 ,
    0xff39c88c7f499dbdbc07cc6350b1530069007a006500580049006e0063006800 ,
    0x000000000000d131f0b2b1bab94ca2dea7a1bc36239f070000006654ff39c88c ,
    0x7f499dbdbc07cc6350b1530069007a006500590049006e006300680000000000 ,
    0x00004369cb5e262af140a15bb33b75450b57070000006654ff39c88c7f499dbd ,
    0xbc07cc6350b14b0069006e00640073000000000000007314bae5d22d4741b3a5 ,
    0xcf958031be05070000006654ff39c88c7f499dbdbc07cc6350b14f0072006900 ,
    0x65006e0074006100740069006f006e00000000000000f73503bdf0594a48bd19 ,
    0x9228e8ff7cae070000006654ff39c88c7f499dbdbc07cc6350b150006c006100 ,
    0x74006500730052006500710075006900720065006400000000000000c5d7682c ,
    0x4c427f41bddab2915065d0fb07000000816007970e8e144d85e42ba0ceae8a5b ,
    0x5000720069006e00740069006e0067004d006500740068006f00640000000000 ,
    0x0000013c6057411b0244a5b592158df887cf07000000816007970e8e144d85e4 ,
    0x2ba0ceae8a5b4e0061006d0065000000000000003ffc11d10e9a23478e605cde ,
    0x5819ba3307000000cc5dfd99a39e37418b4bc2bdb88445c86a006f0062007100 ,
    0x74007900000000000000b90ef4ee1ed09c4fb4bdd8258b06bc0b07000000e488 ,
    0x54e241e4ab4e9a17f8a616a7767850004d005300460072006f006e0074000000 ,
    0x00000000b768bc8b3db0b14883c94c84da81b0b607000000e48854e241e4ab4e ,
    0x9a17f8a616a7767850004d0053004200610063006b0000000000000089e270bc ,
    0x6236854fbf1f9dfd5c14f80707000000e48854e241e4ab4e9a17f8a616a77678 ,
    0x50004d00530043006f00760065007200610067006500000000000000e77052cc ,
    0xf699e749a95130326489b08107000000e48854e241e4ab4e9a17f8a616a77678 ,
    0x430059004d004b00460072006f006e007400000000000000cc3994eed9890a49 ,
    0x90b6ec4dedd69cbe07000000e48854e241e4ab4e9a17f8a616a7767843005900 ,
    0x4d004b004200610063006b000000000000008ccff04dae774a49b2bbcafa3dc5 ,
    0x1d0407000000e48854e241e4ab4e9a17f8a616a77678430059004d004b004300 ,
    0x6f0076006500720061006700650000000000000047565f24141b844eb94d276d ,
    0xdfb5140807000000e48854e241e4ab4e9a17f8a616a776784d00650074006100 ,
    0x6c006c0069006300460072006f006e0074000000000000006b34ba2ea8323c4c ,
    0xb420b11399cc5ed407000000e48854e241e4ab4e9a17f8a616a776784d006500 ,
    0x740061006c006c00690063004200610063006b0000000000000043a66d016da6 ,
    0xb34cadf71aa097c762db07000000e48854e241e4ab4e9a17f8a616a776784d00 ,
    0x6500740061006c006c006900630043006f007600650072006100670065000000 ,
    0x00000000d54346d95bf43a4f8c9d278ace4bc57007000000e48854e241e4ab4e ,
    0x9a17f8a616a77678530070006f0074005300650061006c00460072006f006e00 ,
    0x74000000000000007db56c040e03ec43a0b2e41e20d0793207000000e48854e2 ,
    0x41e4ab4e9a17f8a616a77678530070006f0074005300650061006c0042006100 ,
    0x63006b000000000000007414220becfd784b9bd6423cea92380407000000e488 ,
    0x54e241e4ab4e9a17f8a616a77678530070006f0074005300650061006c004300 ,
    0x6f0076006500720061006700650000000000000092c81129be2ea047b506cebf ,
    0xfa88237307000000e48854e241e4ab4e9a17f8a616a7767853006f0072007400 ,
    0x51007400790000000000000035e1de236eaffd4fbce28ff3a88ad14107000000 ,
    0x6654ff39c88c7f499dbdbc07cc6350b150006100670065007300000000000000 ,
    0x1d7da1c9a0443c409cec7e240d372ae507000000cc5dfd99a39e37418b4bc2bd ,
    0xb88445c846007200690065006e0064006c007900540065007800740050007200 ,
    0x6f00630065007300730065007300000000000000e62dcf86728bcf498232c369 ,
    0x96acf95007000000747a9fd92e37e34faffaac3e4eb3d43b4d00610073007400 ,
    0x6500720053006800650065007400730000000000000039c58e15538bba42815c ,
    0x684b67ee0fe607000000747a9fd92e37e34faffaac3e4eb3d43b4e0075006d00 ,
    0x6200650072004f00750074004d00610073007400650072000000000000001bfd ,
    0xe8995407f245a6efdc39de017b5607000000747a9fd92e37e34faffaac3e4eb3 ,
    0xd43b470072006f00730073005300680065006500740073000000000000008429 ,
    0x21cb450ecf409b54a8172dd2ccac07000000747a9fd92e37e34faffaac3e4eb3 ,
    0xd43b4e0065007400530068006500650074007300000000000000fb036d79c35b ,
    0x204f9a1416dae050263e070000004d9e8ba2d9e52642aeda04ef7bb0470e5000 ,
    0x610070006500720043006f0073007400000000000000b686118f7d12bb4db439 ,
    0xefff3af54470070000006654ff39c88c7f499dbdbc07cc6350b146006c006100 ,
    0x70005800000000000000bcd3039c53b5e54f85abb3d57932a754070000006654 ,
    0xff39c88c7f499dbdbc07cc6350b146006c006100700059000000000000004160 ,
    0x5912c2e7b0499fe9b67b3e9553e707000000747a9fd92e37e34faffaac3e4eb3 ,
    0xd43b6e0075006d0062006500720055007000000000000000c4a9b8e2dd160640 ,
    0x886442568db3f8a207000000747a9fd92e37e34faffaac3e4eb3d43b4e007500 ,
    0x6d006200650072004f00660042006c006f0063006b007300000000000000ea98 ,
    0x46dd625b4040a38114f05999c38507000000747a9fd92e37e34faffaac3e4eb3 ,
    0xd43b57006100730074006500640042006c006f0063006b007300000000000000 ,
    0x8e8d3d651a85dc49b65dc56c94ec865607000000747a9fd92e37e34faffaac3e ,
    0x4eb3d43b49006d0070006f0073006900740069006f006e004900440000000000 ,
    0x0000fab5a6d77bc9c846a189f564d845a22b07000000747a9fd92e37e34faffa ,
    0xac3e4eb3d43b4e0075006d006200650072004f00660053006800650065007400 ,
    0x5400790070006500730000000000000048ebe5bd461ff2469e506cca5b90b251 ,
    0x07000000747a9fd92e37e34faffaac3e4eb3d43b5000720069006e0074004d00 ,
    0x6500740068006f006400000000000000ad7263f3438bd74ab73c30bc9f6b5d08 ,
    0x07000000747a9fd92e37e34faffaac3e4eb3d43b4b0069006e00640073004f00 ,
    0x6e005000610067006500000000000000ca47568bf43b334aaad7a72363373f50 ,
    0x07000000747a9fd92e37e34faffaac3e4eb3d43b46006f006c00640058000000 ,
    0x00000000b0d6b7671875664c8c11ea4fc599d59007000000747a9fd92e37e34f ,
    0xaffaac3e4eb3d43b46006f006c0064005900000000000000d2a29c3a7f0c8644 ,
    0xaed7f1f1b1fe574007000000747a9fd92e37e34faffaac3e4eb3d43b53007400 ,
    0x6f006e006500680065006e00670069006e0067000000000000005f6fcf7909ef ,
    0xaa489f2d30ba2b96e0c3070000004d9e8ba2d9e52642aeda04ef7bb0470e5300 ,
    0x65006300740069006f006e004e0061006d00650000000000000052644fe0f078 ,
    0x5e498fa34a25aa3319c2070000006654ff39c88c7f499dbdbc07cc6350b14e00 ,
    0x61006d006500000000000000de06d251d7a85b47a615d54fcd0275a607000000 ,
    0x816007970e8e144d85e42ba0ceae8a5b530065006300740069006f006e004e00 ,
    0x61006d006500000000000000783b73cab8488747bc35a62e7733ba5407000000 ,
    0xe48854e241e4ab4e9a17f8a616a77678530065006300740069006f006e004e00 ,
    0x61006d00650000000000000022002a554877b144903b2dae2008253007000000 ,
    0x747a9fd92e37e34faffaac3e4eb3d43b530065006300740069006f006e004e00 ,
    0x61006d00650000000000000024fcd242fdc66048a247b0c136c115a507000000 ,
    0x7784b7f01893714fab968f7809a7416e510075006f0074006500490044000000 ,
    0x0000000020a1bfac8853794f90f828b524dc6ad807000000747a9fd92e37e34f ,
    0xaffaac3e4eb3d43b510075006f00740065004900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
dbBinary "GUID" = Begin
    0x48deff441bf1184381a4a0ec125e9503
End
Begin
    Begin
        dbText "Name" ="pdqPaperDetails.PaperId"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa510b50b1804a240807075e305dae580
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.SectionName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3117cedb6633b94e9ad517918cfdd7c2
        End
        dbInteger "ColumnWidth" ="3780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqPaperDetails.PaperDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x28742a7be98e6f4889c19885040b04f8
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.PaperIsEnvelope"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ddb7ae12173ca4c94212dd4e692b770
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.SheetFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a4c0b3711a9a54aaebed009e33d52a5
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.SheetFinishId"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6f18df770e02d44ab11ed318e40a69d6
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.PaperSupplied"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe7cc624e8496db46857dbc7e1d30f1d8
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.TonnePrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43f4895e2cfa8a4390cb01d49ee396e1
        End
    End
    Begin
        dbText "Name" ="pdqPaperDetails.PricePer1000"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x85f32b856f30fa49addd5b21121db88c
        End
    End
    Begin
        dbText "Name" ="pdqImposition.PaperYInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xda944bf089573a4f9bbe741f79b948d1
        End
    End
    Begin
        dbText "Name" ="pdqImposition.TotalNetSheets"
        dbInteger "ColumnWidth" ="2220"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x14b8a33a4359814b9f459ab4ecd29ee9
        End
    End
    Begin
        dbText "Name" ="pdqImposition.TotalGrossSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x72552defc397ef40b2da7cbc38e1cd48
        End
        dbInteger "ColumnWidth" ="2130"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqImposition.Bleed"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb302064269555a4fb069868c741feb66
        End
    End
    Begin
        dbText "Name" ="pdqImposition.GripFront"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7f43e823ce74574391b1929f70944246
        End
    End
    Begin
        dbText "Name" ="pdqImposition.BackEdge"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1503749ce51952499d205e9461347dd0
        End
    End
    Begin
        dbText "Name" ="pdqSection.PlatesRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29f7ea94d17a0948b40435c38ead40da
        End
    End
    Begin
        dbText "Name" ="pdqImposition.SideLayLeft"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8c759844613b9f43b3dd95419e23c82e
        End
    End
    Begin
        dbText "Name" ="pdqImposition.SideLayRight"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x10f71cdf5bdefa4a8c3e65d14edc3276
        End
    End
    Begin
        dbText "Name" ="pdqImposition.PaperXInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x73a2cbbe4e453d46a2a26ac9dc4bd088
        End
    End
    Begin
        dbText "Name" ="pdqSection.SizeXInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x55077d645ec45a48807964e6cf1afb62
        End
    End
    Begin
        dbText "Name" ="pdqSection.SizeYInch"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2d0b0fc3cb5a9848810e141a09f3501a
        End
    End
    Begin
        dbText "Name" ="pdqSection.Kinds"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2b1713da9f77594da095c5f061f08f83
        End
    End
    Begin
        dbText "Name" ="pdqSection.Orientation"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x81f57cd50ee7134a96df8f41873a5098
        End
    End
    Begin
        dbText "Name" ="pdqPrintingMethod.PrintingMethod"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3390"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqPrintingMethod.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.LbsText"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.LbsCover"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NumUp"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1bed2ef724dc3d43850be7a313664c27
        End
    End
    Begin
        dbText "Name" ="pdqColours.PMSFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.PMSBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.PMSCoverage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.MetallicCoverage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.SpotSealCoverage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.MetallicBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.SpotSealBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.SortQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.MetallicFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.SpotSealFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.CYMKFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.CYMKBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqColours.CYMKCoverage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.Pages"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqQuote.FriendlyTextProcesses"
        dbInteger "ColumnWidth" ="11970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqImposition.MasterY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.NumberOutMaster"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfGrossSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff8ba68fd9ac244aae9cc37db6cd4348
        End
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfNetSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21752de91742e3409c5ce14b98cc5a41
        End
        dbInteger "ColumnWidth" ="3120"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqImposition.MasterYinch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqImposition.MasterX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqImposition.MasterXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfMasterSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x74c0cda012d6da47954bad39da717524
        End
        dbInteger "ColumnWidth" ="4515"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqImposition.PaperCost"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.[lbs]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.lbs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.Type"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4095"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqSection.FlapX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqSection.FlapY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.numberUp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.WastedBlocks"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2565"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="pdqLayout.NumberOfBlocks"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.Plates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.ImpositionID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.NumberOfSheetTypes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.PrintMethod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.KindsOnPage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.FoldX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.FoldY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="pdqLayout.Stonehenging"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PaperCostPerM"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x51a0aca37664f843a943feb45c9ac78d
        End
    End
End
Begin
    State =0
    Left =81
    Top =5
    Right =1362
    Bottom =853
    Left =-1
    Top =-1
    Right =1249
    Bottom =486
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =1502
        Top =195
        Right =1708
        Bottom =502
        Top =0
        Name ="pdqQuote"
        Name =""
    End
    Begin
        Left =1532
        Top =27
        Right =1676
        Bottom =171
        Top =0
        Name ="pdqPrintingMethod"
        Name =""
    End
    Begin
        Left =67
        Top =19
        Right =304
        Bottom =344
        Top =0
        Name ="pdqPaperDetails"
        Name =""
    End
    Begin
        Left =390
        Top =7
        Right =734
        Bottom =423
        Top =0
        Name ="pdqImposition"
        Name =""
    End
    Begin
        Left =1084
        Top =21
        Right =1447
        Bottom =514
        Top =0
        Name ="pdqSection"
        Name =""
    End
    Begin
        Left =836
        Top =32
        Right =980
        Bottom =176
        Top =0
        Name ="pdqColours"
        Name =""
    End
    Begin
        Left =801
        Top =100
        Right =1036
        Bottom =323
        Top =0
        Name ="pdqLayout"
        Name =""
    End
End
