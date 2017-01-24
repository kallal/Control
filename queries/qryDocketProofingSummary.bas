Operation =1
Option =0
Where ="(((dbo_ProjectHeader.ID)=21265))"
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectComponentProof"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Alias ="ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ArtExpectedDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.FirstProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
    Expression ="dbo_ProjectComponentHeader.DataArrivedDate"
    Expression ="dbo_ProjectComponentHeader.MailApprovalRequired"
    Expression ="dbo_ProjectComponentHeader.MailProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.HardProofSentDate"
    Expression ="dbo_ProjectComponentHeader.HardProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.FSCProofSentDate"
    Expression ="dbo_ProjectComponentHeader.FSCProofApprovedDate"
    Expression ="dbo_ProjectComponentProof.Description"
    Expression ="dbo_ProjectComponentProof.FriendlyName"
    Expression ="dbo_ProjectComponentProof.FileName"
    Expression ="dbo_ProjectComponentProof.ProofRevision"
    Expression ="dbo_ProjectComponentProof.Created"
    Expression ="dbo_ProjectComponentProof.CreatedBy"
    Expression ="dbo_ProjectComponentProof.Sent"
    Expression ="dbo_ProjectComponentProof.SentBy"
    Expression ="dbo_ProjectComponentProof.Notes"
    Expression ="dbo_ProjectComponentProof.Status"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =3
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectComponentProof"
    Expression ="dbo_ProjectComponentHeader.ID = dbo_ProjectComponentProof.ProjectComponentID"
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
    0x46a17b6a4d27994a9ca4112831c95c2c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d2d381ba93398a4283a6a9ed80a7b4be0000000096f8534c ,
    0x2de0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000566d36c052aa824f863086441c0829a100000000a759654c2de0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x43006f006d0070006f006e0065006e007400500072006f006f00660000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000f6b16e4c2de0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x000076461f4c2de0e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c0000000000000005b34f2e ,
    0x5bc9c94bb507c17447eba4130700000046a17b6a4d27994a9ca4112831c95c2c ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x4900440000000000000004aeb2718000d24bb73b562a737994cb0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8049004400000000000000fde2928bbc55824d ,
    0x8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f00 ,
    0x6d0070004e0061006d006500000000000000749d4175d9cbb541b77414bf76f2 ,
    0xaa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b006500 ,
    0x74004e0075006d0000000000000029556c4fcc6de9418049e37cebcb8ed30700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be49004400000000000000a21dc4fe ,
    0xd47c244fa08fb5209ebbfbc707000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x43006f006d0070006f006e0065006e0074004e0061006d006500000000000000 ,
    0xd6c60e3e1c864e4c91229495e3751c7107000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be41007200740045007800700065006300740065006400440061007400 ,
    0x6500000000000000a0733058dc273a468b1af7e6c66c844607000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be4100720074004100720072006900760065006400 ,
    0x4400610074006500000000000000234c81be736bce4ea253b6338fec9b950700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be4600690072007300740050007200 ,
    0x6f006f006600530065006e00740044006100740065000000000000005c90b798 ,
    0xaa47ab459c1716da6c77396207000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x500072006f006f006600530065006e0074004400610074006500000000000000 ,
    0x78a4ab78684be74a86eca6bbeda30d6807000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be500072006f006f00660041007000700072006f007600650064004400 ,
    0x610074006500000000000000641657895895584f819ed540e3d01c5507000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be44006100740061004500780070006500 ,
    0x630074006500640044006100740065000000000000008063cea60c7baf4dbe23 ,
    0x035a943a986307000000d2d381ba93398a4283a6a9ed80a7b4be440061007400 ,
    0x610041007200720069007600650064004400610074006500000000000000c458 ,
    0x3128db72324389f00cb2ee7b136907000000d2d381ba93398a4283a6a9ed80a7 ,
    0xb4be4d00610069006c0041007000700072006f00760061006c00520065007100 ,
    0x75006900720065006400000000000000d7bd2e8ab9d669409c2cb1dd10441334 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be4d00610069006c0050007200 ,
    0x6f006f00660041007000700072006f0076006500640044006100740065000000 ,
    0x00000000a084f8da1e4f1342b1fae6042c102b9a07000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be410073007300690067006e00650064004400750065004400 ,
    0x610074006500000000000000d9c1524eae16e7439791b1c28f640d8107000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be53007000650063006900660069006500 ,
    0x640044007500650044006100740065000000000000009775c709b2c3384bb078 ,
    0x37caae4863b007000000d2d381ba93398a4283a6a9ed80a7b4be480061007200 ,
    0x6400500072006f006f006600530065006e007400440061007400650000000000 ,
    0x00005bc2afaa308a944d853680cee4b2efba07000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be4800610072006400500072006f006f0066004100700070007200 ,
    0x6f007600650064004400610074006500000000000000698912b6571b544e9855 ,
    0x36263e4aaa9d07000000d2d381ba93398a4283a6a9ed80a7b4be460053004300 ,
    0x500072006f006f006600530065006e0074004400610074006500000000000000 ,
    0x6876e3e53fde43479512a7195bcab50207000000d2d381ba93398a4283a6a9ed ,
    0x80a7b4be460053004300500072006f006f00660041007000700072006f007600 ,
    0x65006400440061007400650000000000000023f05f74181f8e4e925ac419e51f ,
    0x0f9507000000566d36c052aa824f863086441c0829a144006500730063007200 ,
    0x69007000740069006f006e0000000000000059f0c0d0d3e0e34b96c7ef8dc930 ,
    0xb60d07000000566d36c052aa824f863086441c0829a146007200690065006e00 ,
    0x64006c0079004e0061006d006500000000000000ccb6aeab7da08047b558722f ,
    0xf54b16d407000000566d36c052aa824f863086441c0829a1460069006c006500 ,
    0x4e0061006d006500000000000000bd5e823cfb83bd428c2c02a84b9e6cc00700 ,
    0x0000566d36c052aa824f863086441c0829a1500072006f006f00660052006500 ,
    0x76006900730069006f006e0000000000000047c289b964b2bd4aa55bed7f08ec ,
    0x915607000000566d36c052aa824f863086441c0829a143007200650061007400 ,
    0x65006400000000000000a98cf97198e33941a736ec6bd57aefd307000000566d ,
    0x36c052aa824f863086441c0829a1430072006500610074006500640042007900 ,
    0x0000000000000518d37d51542e48a24a5f73f7191a1307000000566d36c052aa ,
    0x824f863086441c0829a1530065006e007400000000000000c283e85d4a881842 ,
    0xa486f4bef64d2dd707000000566d36c052aa824f863086441c0829a153006500 ,
    0x6e00740042007900000000000000ba45c65ce5bf7f439eb7157c4c082cd60700 ,
    0x0000566d36c052aa824f863086441c0829a14e006f0074006500730000000000 ,
    0x0000be3e87ee292af34d8a23e7c1b04a01a407000000566d36c052aa824f8630 ,
    0x86441c0829a15300740061007400750073000000000000002042568302f48b4d ,
    0x89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0xadc686191e9eee4b865c681053aa29be07000000566d36c052aa824f86308644 ,
    0x1c0829a1500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e007400490044000000000000008265226ce5165f4597f9cda188898d960700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8043006f006e007400610063007400 ,
    0x470065006e006500720061006c00490044000000000000001fc238e447652546 ,
    0xa47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a149004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15a7360fd1cd024dbf9372798d6172bd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.ProjectComponentID"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c3c1bdd74677a48aa18287135ab039c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf5575fb09ad4d04faaf7e1b0882be1d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d125cf362080d4a8cd47f832b3bcd28
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProjectComponentID"
        dbInteger "ColumnWidth" ="2760"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x05b34f2e5bc9c94bb507c17447eba413
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x83c65203f719064e8a326516f63eed51
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1056ba3abb14ac43aee660df6f1ea991
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7d8c596eac9c454d848d34a51caa784b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb2fe38459672004e9bd7734607c211e7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.HardProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa5116cc4242d0f4c9dc054cde8e6d036
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FSCProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x416ccd4ae5fbef45bdc56cb1b904981e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.FriendlyName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x87f1300f29ab7542922c7de9a5b1e7a8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x24f64059e828ed428a5f23f8d0e4c05e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FirstProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x802a8ec566ca374797b4bc32c5709e7f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x224756f2e2649a42adee94c36dea7560
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0af9c673258a084890b1b6b9790d4c2b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94896aced71a854cbf46ef651bbc1306
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea59ffe7777b364785afaeb5fd6324c0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe3e723f6de09844cb54f820e888de91c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.HardProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbcfe698334985b48ac753ff1f31500f9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.FSCProofSentDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x77e27d4c1c24ea4e901d121351c96987
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x76f491c7e6c2e640933b596b7de6ccb3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ad15e8a521d9c4ca8135f60c99eb84c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.FileName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfad24a976faa814298f492886712df99
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.ProofRevision"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4daa02dbe97834bbd6b408795e653c9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Created"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4c03ec00a5679740a65749ad3f30ef1d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.CreatedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xad42674eee85c647811a409202fa4cc2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Sent"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2e7314230e8a647a2893b24188fe0a3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.SentBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8af2a80f96069f43a760129dac18bc58
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentProof.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1dfe9855896663439dcfcc77c3ae5264
        End
    End
End
Begin
    State =0
    Left =55
    Top =52
    Right =1446
    Bottom =775
    Left =-1
    Top =-1
    Right =1359
    Bottom =439
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =350
        Top =16
        Right =577
        Bottom =334
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =635
        Top =4
        Right =951
        Bottom =330
        Top =0
        Name ="dbo_ProjectComponentProof"
        Name =""
    End
    Begin
        Left =37
        Top =18
        Right =313
        Bottom =324
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =999
        Top =12
        Right =1143
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
