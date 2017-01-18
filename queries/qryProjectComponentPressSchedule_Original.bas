Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectComponentStock"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.ID"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentPress.SectionName"
    Expression ="dbo_ProjectComponentPress.PaperIsEnvelope"
    Expression ="dbo_ProjectComponentPress.PaperSupplied"
    Expression ="dbo_ProjectComponentPress.TotalNetSheets"
    Expression ="dbo_ProjectComponentPress.TotalGrossSheets"
    Expression ="dbo_ProjectComponentPress.NetPlates"
    Expression ="dbo_ProjectComponentPress.Bleeds"
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    Expression ="dbo_ProjectComponentPress.PaperYInch"
    Expression ="dbo_ProjectComponentPress.SizeXInch"
    Expression ="dbo_ProjectComponentPress.SizeYInch"
    Expression ="dbo_ProjectComponentPress.PrintingMethod"
    Expression ="dbo_ProjectComponentPress.PMSFront"
    Expression ="dbo_ProjectComponentPress.PMSBack"
    Expression ="dbo_ProjectComponentPress.CYMKFront"
    Expression ="dbo_ProjectComponentPress.CYMKBack"
    Expression ="dbo_ProjectComponentPress.MetallicFront"
    Expression ="dbo_ProjectComponentPress.MetallicBack"
    Expression ="dbo_ProjectComponentPress.SpotSealFront"
    Expression ="dbo_ProjectComponentPress.SpotSealBack"
    Expression ="dbo_ProjectComponentPress.IsBlackOnly"
    Expression ="dbo_ProjectComponentPress.PMSColours"
    Expression ="dbo_ProjectComponentPress.Press"
    Expression ="dbo_ProjectComponentPress.MatchSample"
    Expression ="dbo_ProjectComponentPress.PressCheck"
    Expression ="dbo_ProjectComponentPress.Varnish"
    Expression ="dbo_ProjectComponentPress.PressDateExp"
    Expression ="dbo_ProjectComponentPress.NumberingStart"
    Expression ="dbo_ProjectComponentPress.NumberingEnd"
    Expression ="dbo_ProjectComponentPress.Diecut"
    Expression ="dbo_ProjectComponentPress.DieNumber"
    Expression ="dbo_ProjectComponentPress.LithoPerf"
    Expression ="dbo_ProjectComponentPress.LithoScore"
    Expression ="dbo_ProjectComponentPress.Matrix"
    Expression ="dbo_ProjectComponentPress.Priority"
    Expression ="dbo_ProjectComponentPress.PassCount"
    Expression ="dbo_ProjectComponentPress.PressHrs"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectComponentStock.ExpectedDate"
    Expression ="dbo_ProjectComponentStock.ArrivalDate"
    Expression ="dbo_ProjectComponentPress.MetallicFront"
    Expression ="dbo_ProjectComponentPress.MetallicBack"
    Expression ="dbo_ProjectComponentPress.SpotSealFront"
    Expression ="dbo_ProjectComponentPress.SpotSealBack"
    Expression ="dbo_ProjectComponentPress.Varnish"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="dbo_ProjectComponentPress.ProjectComponentID = dbo_ProjectComponentStock.Project"
        "ComponentID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_ProjectComponentStock"
    Expression ="dbo_ProjectComponentPress.SectionName = dbo_ProjectComponentStock.PressRunName"
    Flag =2
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
    0x0fec8a06aa4437409462c2fcdb8039d1
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000aa4d4a3d82683542a64491e1b0dcc8ce00000000b941156e ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6dec62e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x0000fe926418f32ed843874a57f371c555c7000000009b2fba6dec62e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000d7c549c33168bc4ab70151c855c0b6b90000 ,
    0x0000bad9a96dec62e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c000000000000006f672735 ,
    0x91c9bc4a96e5e29a333a483d00000000236addc0ea62e4400000000000000000 ,
    0x640062006f005f00500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e007400530074006f0063006b00000000000000b14c94a8a3d9394d ,
    0xb1aaf6ace8a38c8707000000aa4d4a3d82683542a64491e1b0dcc8ce49004400 ,
    0x00000000000071e323a4bb368e4da3132c08218e7d3607000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e007400490044000000000000003c3a0e9cef0ad74dbd1042d7 ,
    0xc3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb443006f006d007000 ,
    0x6f006e0065006e0074004e0061006d006500000000000000ab2bd0a18191ef46 ,
    0xb6c770f2b1812fa607000000fe926418f32ed843874a57f371c555c750007200 ,
    0x6f006a006500630074004e0061006d006500000000000000124b02a694dd0e4c ,
    0x96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b943006f00 ,
    0x6d0070004e0061006d006500000000000000d9cb95bb9ff0b84fa39eeda59762 ,
    0x82d607000000fe926418f32ed843874a57f371c555c744006f0063006b006500 ,
    0x74004e0075006d00000000000000bb0ae340649d1049aae8ec4ebde6085c0700 ,
    0x0000fe926418f32ed843874a57f371c555c749006e0076006f00690063006500 ,
    0x4e0075006d0000000000000081751aaa23f69a40a072b77523cc41aa07000000 ,
    0xfe926418f32ed843874a57f371c555c756006f00690064000000000000005d98 ,
    0x7f7b6393b74694613896c992600207000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce530065006300740069006f006e004e0061006d0065000000000000006294 ,
    0x86249c2f5f43be9418ffffe018f507000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce500061007000650072004900730045006e00760065006c006f0070006500 ,
    0x000000000000fd737f70dbf46041b994737f85910bd307000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce5000610070006500720053007500700070006c006900 ,
    0x65006400000000000000c046be8b6c2c484cab19d76e4848398607000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce54006f00740061006c004e00650074005300 ,
    0x680065006500740073000000000000007f0c1c8eb6ff914e91dc3f2e6c09f921 ,
    0x07000000aa4d4a3d82683542a64491e1b0dcc8ce54006f00740061006c004700 ,
    0x72006f00730073005300680065006500740073000000000000009b6481e53c8d ,
    0xad4d9e02d4a59f4a65b707000000aa4d4a3d82683542a64491e1b0dcc8ce4e00 ,
    0x6500740050006c00610074006500730000000000000076d7329e12bb544a888c ,
    0x8e52d9f6fd0e07000000aa4d4a3d82683542a64491e1b0dcc8ce42006c006500 ,
    0x65006400730000000000000079517bd854529e4a8ec67b1f8f41ad4d07000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce50006100700065007200580049006e00 ,
    0x63006800000000000000773bb4d9b830b443a91f4320ac56d04c07000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce50006100700065007200590049006e006300 ,
    0x6800000000000000dfd8e0440b8c314787e55c51593b2b3307000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce530069007a006500580049006e00630068000000 ,
    0x0000000043e1bb04a7f43b42a3bd0c778d01bfa807000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce530069007a006500590049006e0063006800000000000000 ,
    0xf624c47823232f49ab0dfb52196f5dbe07000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce5000720069006e00740069006e0067004d006500740068006f006400 ,
    0x000000000000db5966a72e84fe438fb95102c24dc6d007000000aa4d4a3d8268 ,
    0x3542a64491e1b0dcc8ce50004d005300460072006f006e007400000000000000 ,
    0x751e6da11b9aa04aac1711c8eefe530207000000aa4d4a3d82683542a64491e1 ,
    0xb0dcc8ce50004d0053004200610063006b00000000000000a607e6fddbbf5340 ,
    0x8a7f1bc0e07d397e07000000aa4d4a3d82683542a64491e1b0dcc8ce43005900 ,
    0x4d004b00460072006f006e007400000000000000b82b28fbac718b46a2138703 ,
    0xea6aeb5407000000aa4d4a3d82683542a64491e1b0dcc8ce430059004d004b00 ,
    0x4200610063006b000000000000004746bca5b9f66d4386f6374c4e02d5050700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce4d006500740061006c006c006900 ,
    0x6300460072006f006e0074000000000000003e1966f8e1774b4194f8891dfb41 ,
    0x490c07000000aa4d4a3d82683542a64491e1b0dcc8ce4d006500740061006c00 ,
    0x6c00690063004200610063006b00000000000000a27dd3779f6c634baa306dc9 ,
    0x865ee58f07000000aa4d4a3d82683542a64491e1b0dcc8ce530070006f007400 ,
    0x5300650061006c00460072006f006e007400000000000000c378335aa8f2064e ,
    0x85f1facd9c163a0b07000000aa4d4a3d82683542a64491e1b0dcc8ce53007000 ,
    0x6f0074005300650061006c004200610063006b0000000000000076e590be5021 ,
    0xd04db4abcef175554d6707000000aa4d4a3d82683542a64491e1b0dcc8ce4900 ,
    0x730042006c00610063006b004f006e006c0079000000000000007aa98770ff7b ,
    0x164aa4d3c93cbf64da1f07000000aa4d4a3d82683542a64491e1b0dcc8ce5000 ,
    0x4d00530043006f006c006f00750072007300000000000000e9d0677522e2ad44 ,
    0xaabb87878d9f2baa07000000aa4d4a3d82683542a64491e1b0dcc8ce50007200 ,
    0x650073007300000000000000506a48b1f2ef2148a7b8fb777d4c355907000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce4d006100740063006800530061006d00 ,
    0x70006c006500000000000000124f8c598730d74a9d55876459da0cc207000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce50007200650073007300430068006500 ,
    0x63006b00000000000000a635a2388b3e4e46897928144b7ccaac07000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce5600610072006e0069007300680000000000 ,
    0x0000ea02e61de3aa224abf473b3b69213d7907000000aa4d4a3d82683542a644 ,
    0x91e1b0dcc8ce5000720065007300730044006100740065004500780070000000 ,
    0x0000000001a90ba49f5a0a4696bf3a18284314f107000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce4e0075006d0062006500720069006e006700530074006100 ,
    0x72007400000000000000de1b21757758fa4392a45769bda57bb807000000aa4d ,
    0x4a3d82683542a64491e1b0dcc8ce4e0075006d0062006500720069006e006700 ,
    0x45006e0064000000000000009124781409590a4cb09e9c27f53650e907000000 ,
    0xaa4d4a3d82683542a64491e1b0dcc8ce44006900650063007500740000000000 ,
    0x000068790605801c534691531de6a869568007000000aa4d4a3d82683542a644 ,
    0x91e1b0dcc8ce4400690065004e0075006d006200650072000000000000009290 ,
    0x63ee4e372a468167ec2e41b805c107000000aa4d4a3d82683542a64491e1b0dc ,
    0xc8ce4c006900740068006f00500065007200660000000000000086c8540ac3dd ,
    0xd54eb93ead07be8a5ce607000000aa4d4a3d82683542a64491e1b0dcc8ce4c00 ,
    0x6900740068006f00530063006f0072006500000000000000f4a206b05ee2bf4c ,
    0x8dbf77b42530cf5907000000aa4d4a3d82683542a64491e1b0dcc8ce4d006100 ,
    0x740072006900780000000000000015fc52137048344b8cb5b095dce05f490700 ,
    0x0000aa4d4a3d82683542a64491e1b0dcc8ce5000720069006f00720069007400 ,
    0x7900000000000000cf7a2a86c47b0144b21dfd7bc7cff81f07000000aa4d4a3d ,
    0x82683542a64491e1b0dcc8ce500061007300730043006f0075006e0074000000 ,
    0x00000000b3fe9b546c133b48ae697b8dfcbe1eec07000000aa4d4a3d82683542 ,
    0xa64491e1b0dcc8ce50007200650073007300480072007300000000000000873f ,
    0xed1bdd4daf46b59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4500072006f006a0065006300740048006500610064006500720049004400 ,
    0x00000000000089ff919c8c2cb04795bac03adb54784507000000fe926418f32e ,
    0xd843874a57f371c555c743006f006e007400610063007400470065006e006500 ,
    0x720061006c0049004400000000000000015b4fdcf24e5c49acdf0bbce7945cd9 ,
    0x070000006f67273591c9bc4a96e5e29a333a483d450078007000650063007400 ,
    0x650064004400610074006500000000000000a4c2d0a53a015c4cbaacad5b25ce ,
    0x9436070000006f67273591c9bc4a96e5e29a333a483d41007200720069007600 ,
    0x61006c004400610074006500000000000000118be950d66974438268ddc04c06 ,
    0xaf1a070000000e7a128852f41a47b128e4f3b41e4fb449004400000000000000 ,
    0x6f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843874a57f3 ,
    0x71c555c74900440000000000000003933b4b9f324445a82e368651b1052b0700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b9490044000000000000008a781091 ,
    0x59af564499df6242c38f60dc070000006f67273591c9bc4a96e5e29a333a483d ,
    0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x490044000000000000000a7243bbd8418844a86ab55426ae5748070000006f67 ,
    0x273591c9bc4a96e5e29a333a483d50007200650073007300520075006e004e00 ,
    0x61006d006500000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Matrix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5ba3fc14b7f8246a29144674afb7260
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Bleeds"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2907ef99aac74a4a83ee9f6909fc71f8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.IsBlackOnly"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2d9facc8efcea4ba9b7f81957712611
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e14bc745ae214780af98649a57c483
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressCheck"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3662f17fb0a60244bf6101f901d8ed3f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingStart"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa873ff7ded62254fa1cb9db5eb6cf14b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoPerf"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc85d0b930d7b04458e9a3ccdea86d27c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoScore"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4822fdefe492c4f895e408c21c517f7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MatchSample"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x263e369029a96349b97999de3c079b16
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6e7c69900879a449bf2f739853bf81e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Diecut"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa50ec622fef3e45bb593d2d9d2f9b1e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.DieNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd8a227fd007da64982947be64dd10b61
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x746e97c2943d994b9979ae410da3fd6b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingEnd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb822fe25320c3742a0b18bedd71f13d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSColours"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a40154f30581b45bc6b389ace779603
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x53a4784282a8294597129472dc346aa1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Varnish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0662fad8a64fd140a7c8286300579585
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintingMethod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SpotSealFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalGrossSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MetallicBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperIsEnvelope"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MetallicFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SectionName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalNetSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NetPlates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SpotSealBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperSupplied"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PassCount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressHrs"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ArrivalDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1026"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1027"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1024"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1025"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1033"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfTotalTime"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4cd7caa7e4fe714b8762b128e9944068
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.TotalTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryProjectComponentPressScheduleHoursSoFar.SumOfTotalTime"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =19
    Top =74
    Right =1795
    Bottom =820
    Left =-1
    Top =-1
    Right =1744
    Bottom =370
    Left =167
    Top =0
    ColumnsShown =539
    Begin
        Left =45
        Top =25
        Right =408
        Bottom =498
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =953
        Top =47
        Right =1240
        Bottom =403
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1303
        Top =8
        Right =1447
        Bottom =394
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1517
        Top =27
        Right =1693
        Bottom =276
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =572
        Top =88
        Right =829
        Bottom =382
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
End
