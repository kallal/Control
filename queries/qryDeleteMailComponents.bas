Operation =1
Option =0
Where ="(((dbo_ProjectComponentHeader.MailComponentYN)=True))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.MailComponentYN"
    Expression ="dbo_ProjectComponentHeader.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x3cea8b8d10ccfb4daec57a42a931ad2b
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x00000000000093c3de37d7eef74ebc52fafdc0b6bba5070000000e7a128852f4 ,
    0x1a47b128e4f3b41e4fb44d00610069006c0043006f006d0070006f006e006500 ,
    0x6e00740059004e00000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SortOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6de58862341bbd40b049e22b4ab7f18f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa8b60db2b1cf194aaf2ca2b288963b14
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe65747ce0f60b94d95e3b1270b5b8f98
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6578317ef35c6744ae9a80a3f16f6acc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd4f39321e0298f48bf9e8ab9f355e050
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd35375b21279b74f8816c4723d22bd93
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x352092f800f4f242b5549578825813de
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3fabd99b7aece045bbcd73174b1ee370
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteNumDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f6e20448249af4ea2e02407483c6ef2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc560dcb7c4e81942b56d95f24378859a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8dbd33920cff78419ee4f61acae77425
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1670b6684ddd2b49bbb3a75f95292a11
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb456c9242bea2442aba449e9a6e35dd0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe3ade544a80a4f46a13e8e8fdac5f52a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x11c9923a767004498c25c4ee5e05c7f0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8d1243eb54a9cb4d8474b2930a92134e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xae1944a718c1e549801a364273159f77
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a5676ca2a0414429064f52f4676033c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbd7ed81a90f01e4facca511d513c4d16
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb15d3fd6c706a43815aa94e3f81930c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1389bdf7abd68041bf291e732508ff54
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2061613d2b6cb64391077df3e98b9a51
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac484f836ca38e43bd509ca3f72a407f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7888cd4e87f616459dde387a55f9f841
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x48f9e409ec92b4439c178a47379ce690
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd2b632a8ae8cc48ac5c4e48cb34fa24
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43a6db19cc99304195fbe4579870ca42
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x08d89aec7a0dcf4c84e919fcdb849fef
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd6944b2523fb54f80f2ff9d10a7d1d1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf74fd48bd3eb4a44a6abe132b85ee905
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailComponentYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FinalQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39f70933b8d18d4b926c430929fd5442
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc0f217cedb867645b63e368fb0ae1e47
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShippedWaybill"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d73a13f212f79428f7cae40d2fdad79
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb27fb9eda4e5994ba08e880446586871
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5f2e531c7f45994dac5029d972440626
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6e06bc91752e484787b6d4ab98c909df
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5f3ac75fd558ed45be021c9a6e288c24
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x075c0e7fabedc24fb887e6cd9656103f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa749cabb5227594b98b0f1f8b30be9f3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ff0790065766845bcf26c5ae5960cdb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x96f6bc7f07155c4cbbd4f438d7ba6a33
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4c28940b27f8bc418cbf52117e1e6dbc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PricingSetByID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5a97d6882241f40a129106feddaee5f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ImpositionDetail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1b3d93eac78a20428d32b0e8a8d35218
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PrevDocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaacaeebbe80c284d88a53060b3aa4978
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb0ee8c5023d1f54e8f295a79e1525ed7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56ef001de2fa54439f96c087ff7c7cd3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1911d8dd6609db46a83059d4d8a4158d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x912082358969934ea4fc84c04e57c4e2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a0e1a0521693044ace801421a0cc36a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x242e8b6a88f5e946887dcea7e914ee19
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xad73b9d72faefd459542f319b4b58634
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe650046183de98469e7e78c8f9574816
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x673a2fe6048c524e967d3eedb49d54f8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x458713d24a35cf41954919379f8921d6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7006134f843004c87203d183075cfab
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x76c3be06cf6a2a4589db0a97d977893d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cd170f6056f1b4a9f92f7e333899244
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShipDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x144d8bbef1580c43a68b781edc4e30bf
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShippedVia"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19b2a754d3290e43a94855ebd2706949
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb761200711b6344c9b60e85d8eed5127
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ecfd81f79f48243a51647d2e6e36b6a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x180744b61fbb4e4aa521eb2cc7727eb8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSell1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x331c4946ff6aeb4ba3c8a370349451d3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x607aacfe131004429443bdfb8b55db4a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa4a05d2cf5e42d4ab9461f4a404d5c56
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8964aa33ded2e04aa1a086cce202e54e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x164f17822c66084c9dd8cb94ff9680c2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7b1ed42c930f794881046d97efda1c9f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x698521ffab204f4e953002ea237d9640
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1441e2f624714640aeb9f06d1f5e55b6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PrevDocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7402e5330164514390880584cb9bab26
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DECreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3cfadee083708f4b9af8b2af49eaa7d6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7db4bd09bcd8ed4db0f3158c33cc85b8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DELFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfca4c696650f1c45879f1c35320ac75a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03d20f6134629e49b1023aec674cbb38
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0f41ee2b4db5b346a71f9e1e7c6115a4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x81bc9e85cb086147850784dc4e0c7d3f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe2ad042ca30c6c40bc23eb0ed58821e5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x274e31a7542efb44a33cfd25cd476cc8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x40723233555bf047ab697f5fd4bb974e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d563523ee452a45b89907525b5773b8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteSelect1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4124ebc07515ff4798f39791252eb5bc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6f37ba8fb49bc94480c063625dc91107
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.Prerequisite"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x31f9937d07267d499229f5859942feca
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ShipFlag"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7cc6f2701522ef4783e40266190cb2fb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FriendlyDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa32f02270a96c49974ec1d0e9c10a0e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.VendorPackingListNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf683db2902c3b249b1b826a7becf262b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ReceivedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97374e6deb5c894c8353fc04bc2ad9f3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf8501890bfc1904a98b566f58500ea83
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a931fbbba9aea42958e86490cabdb51
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FirstProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ca2e6b916e0bf4ab68e37effb750d7f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30e880fdfce5db43b3d5806e8fda4cfe
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x203bbb194f10384b8d6f24e4dc0e152d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteDisc1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea43c5584828a9499d489e4a6e1f9a1d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xafff47422bcfbe41b8b67e67b8cb9741
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x014698dbf67bbc49a061a000fc02f90e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb255d1a3ffa9a45848b10be29c493d6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc26df18d3355614f90822806c983f042
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.PricingSetByDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09d5e303bbc04c4b9faaebcc4418f475
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.InPlanning"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdfadc6bc211b074585468e4e11d745f6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6ea61e03988cef47b70eca8c0f647abc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf81d06b69337bb4bb023e60e7a6cea0b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DEStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xecb3218d17114a438632adaf3b1212e6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb57cffadbab6954c8260b628871037f5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6123b86f6396bf40af847643c5db1257
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DSLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3728e2e4e6041b47804d77e0071c3f9f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea8b3867f986f64090a07cbdf5b6fef7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb670f29738eea47a9218a3eb42158c6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66a3840514e8404d83dbee358a513989
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExtQuoteQty5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9cf19cb4c53f044593305b74097650b7
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1793
    Bottom =980
    Left =-1
    Top =-1
    Right =1685
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =122
        Top =55
        Right =633
        Bottom =452
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
End
