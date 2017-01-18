Operation =1
Option =0
Where ="(((dbo_ContactName.ContactGeneralID)=[forms]![frmProjectComponentHeader].[Vendor"
    "ID]))"
Begin InputTables
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.ID"
    Alias ="fullname"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Expression ="dbo_ContactName.IsActive"
    Expression ="dbo_ContactName.ContactGeneralID"
    Expression ="dbo_ContactName.ContactLocationID"
    Expression ="dbo_ContactName.Prefix"
    Expression ="dbo_ContactName.FN"
    Expression ="dbo_ContactName.MN"
    Expression ="dbo_ContactName.LN"
    Expression ="dbo_ContactName.Suffix"
    Expression ="dbo_ContactName.PreferredName"
    Expression ="dbo_ContactName.Title"
    Expression ="dbo_ContactName.Department"
    Expression ="dbo_ContactName.PhDirect"
    Expression ="dbo_ContactName.PhExt"
    Expression ="dbo_ContactName.PhFax"
    Expression ="dbo_ContactName.PhMobile"
    Expression ="dbo_ContactName.PhRes"
    Expression ="dbo_ContactName.Birthday"
    Expression ="dbo_ContactName.Anniversary"
    Expression ="dbo_ContactName.WithCompanySince"
    Expression ="dbo_ContactName.Gender"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactName.SpName"
    Expression ="dbo_ContactName.SpBirthday"
    Expression ="dbo_ContactName.ChName"
    Expression ="dbo_ContactName.EmailRes"
    Expression ="dbo_ContactName.Notes"
    Expression ="dbo_ContactName.ResAdd1"
    Expression ="dbo_ContactName.ResAdd2"
    Expression ="dbo_ContactName.ResCity"
    Expression ="dbo_ContactName.ResProv"
    Expression ="dbo_ContactName.ResPC"
    Expression ="dbo_ContactName.ResCountry"
    Expression ="dbo_ContactName.SendEmail"
    Expression ="dbo_ContactName.SendMail"
    Expression ="dbo_ContactName.LastEdited"
    Expression ="dbo_ContactName.LastEditedBy"
End
Begin OrderBy
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x9fda5686ddc5f54f988bd04c7c208161
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004e0061006d0065000000000000002b0a85d682a32a41b72dd716becc2c0e ,
    0x0700000000000000000000000000000000000000660075006c006c006e006100 ,
    0x6d006500000000000000e0b7aa1a6ad58345865216cdf3cbec4e07000000b1df ,
    0xd77f67641a4a8c10df9ef7c359634900440000000000000008ae9e11739f3544 ,
    0xa2d99be00a23adf107000000b1dfd77f67641a4a8c10df9ef7c3596366006e00 ,
    0x00000000000008374dd34b155c49be4fe6c2125378e407000000b1dfd77f6764 ,
    0x1a4a8c10df9ef7c359636c006e000000000000005ebeb34792c1554a8c940abd ,
    0xd7f404f207000000b1dfd77f67641a4a8c10df9ef7c359634900730041006300 ,
    0x740069007600650000000000000043f6e7679eba6741ad8592a856384d9e0700 ,
    0x0000b1dfd77f67641a4a8c10df9ef7c3596343006f006e007400610063007400 ,
    0x470065006e006500720061006c004900440000000000000097679ead79f3524f ,
    0x9bc291a71cea14a807000000b1dfd77f67641a4a8c10df9ef7c3596343006f00 ,
    0x6e0074006100630074004c006f0063006100740069006f006e00490044000000 ,
    0x0000000056484264f646b9498b92b726870c949d07000000b1dfd77f67641a4a ,
    0x8c10df9ef7c359635000720065006600690078000000000000004347a351c259 ,
    0x4343834bc498175702c207000000b1dfd77f67641a4a8c10df9ef7c359634d00 ,
    0x4e00000000000000ba9ac9c870e7d9449b1513798c8ceab807000000b1dfd77f ,
    0x67641a4a8c10df9ef7c35963530075006600660069007800000000000000fead ,
    0x2a127dbd2041bc901ee03a80d10c07000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x59635000720065006600650072007200650064004e0061006d00650000000000 ,
    0x0000a5f16584c741a047891ec89cc76b6c5707000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c359635400690074006c006500000000000000f9e278512c532b42bd09 ,
    0x96e60dcef70107000000b1dfd77f67641a4a8c10df9ef7c35963440065007000 ,
    0x6100720074006d0065006e00740000000000000008a34d34695a5d4c8d9e55b7 ,
    0xd6ce6a1d07000000b1dfd77f67641a4a8c10df9ef7c359635000680044006900 ,
    0x7200650063007400000000000000f940a5be3faa9c4d9c9fb9fc2c1463c40700 ,
    0x0000b1dfd77f67641a4a8c10df9ef7c359635000680045007800740000000000 ,
    0x00008d1519722e0ae547b58fd773269702dc07000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c3596350006800460061007800000000000000b17fcbbf3c560544a7d8 ,
    0x872bb2a7454b07000000b1dfd77f67641a4a8c10df9ef7c35963500068004d00 ,
    0x6f00620069006c006500000000000000d3bd39380431ae4daedd7fe50f08c4af ,
    0x07000000b1dfd77f67641a4a8c10df9ef7c35963500068005200650073000000 ,
    0x0000000064ee49d57bb35e4f93cb1800083db3a107000000b1dfd77f67641a4a ,
    0x8c10df9ef7c3596342006900720074006800640061007900000000000000c744 ,
    0x126aa5686249bb0a953f3f9c9add07000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x596341006e006e0069007600650072007300610072007900000000000000186c ,
    0x9ab32240864d9cb3dfd4c701129e07000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x5963570069007400680043006f006d00700061006e007900530069006e006300 ,
    0x6500000000000000058b50a066e7fc41a6f55925dbbb090307000000b1dfd77f ,
    0x67641a4a8c10df9ef7c35963470065006e0064006500720000000000000022d2 ,
    0x565f36f8c84b9b24820401a2dee107000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x596345006d00610069006c000000000000000122c7855f828141b250671d9c18 ,
    0x717107000000b1dfd77f67641a4a8c10df9ef7c35963530070004e0061006d00 ,
    0x6500000000000000f4f10c5af09c594dbf06c4ecfafa0b3a07000000b1dfd77f ,
    0x67641a4a8c10df9ef7c359635300700042006900720074006800640061007900 ,
    0x00000000000081cd4d720614e14e8e841509c92b86b707000000b1dfd77f6764 ,
    0x1a4a8c10df9ef7c35963430068004e0061006d006500000000000000a25f103c ,
    0x6506aa4bb645d64efdd5032c07000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x45006d00610069006c005200650073000000000000001e2ebfd12bb6b34783ad ,
    0xfda81bd60d2307000000b1dfd77f67641a4a8c10df9ef7c359634e006f007400 ,
    0x6500730000000000000046fb7e1c1d8e1c4b992d2abb6452726f07000000b1df ,
    0xd77f67641a4a8c10df9ef7c35963520065007300410064006400310000000000 ,
    0x00004ef4c82ba975c840a646dd657e802add07000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c359635200650073004100640064003200000000000000a7a12cbb8b3f ,
    0xd542865ca85b04b57b9d07000000b1dfd77f67641a4a8c10df9ef7c359635200 ,
    0x6500730043006900740079000000000000005bf22a65bf1e9f41a5ad94356749 ,
    0x4d4b07000000b1dfd77f67641a4a8c10df9ef7c3596352006500730050007200 ,
    0x6f007600000000000000e5e71fb71040e442a25e9eaf2d7a40aa07000000b1df ,
    0xd77f67641a4a8c10df9ef7c3596352006500730050004300000000000000b9c0 ,
    0x03dd930c61419a471a5624e945d807000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x596352006500730043006f0075006e007400720079000000000000003fbd139a ,
    0xb3817c4bb02f5f60d596ef8e07000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x530065006e00640045006d00610069006c00000000000000ef215b79b21f3049 ,
    0xb48a84e7713d13e607000000b1dfd77f67641a4a8c10df9ef7c3596353006500 ,
    0x6e0064004d00610069006c000000000000007fabdb762cdae84188a01293fd6a ,
    0x043e07000000b1dfd77f67641a4a8c10df9ef7c359634c006100730074004500 ,
    0x640069007400650064000000000000002c47f101acf461409ab853e0f69104f6 ,
    0x07000000b1dfd77f67641a4a8c10df9ef7c359634c0061007300740045006400 ,
    0x690074006500640042007900000000000000f74b2e0d66363c429fc0c7e18218 ,
    0x502d010000002427c442ec62e4400000000000000000660072006d0050007200 ,
    0x6f006a0065006300740043006f006d0070006f006e0065006e00740048006500 ,
    0x6100640065007200000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe00224c3309b1a469f9ef8d263f7101c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe111e347b0dd68458969fbfbee2a3e4e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x04a0a956cb5da8478d025ff0d1e6e7f6
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Prefix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf7ae4d34840b584fadc2d01b8599454d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa77e3623f70bf94d93bcf0acabd607cb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhMobile"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x205ae26d6996454c9667abc283430390
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhRes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5600c81b0af2fd4d8a4aabdc3a59ce01
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.WithCompanySince"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe52ad3b038eefb42862f68863364702c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResCountry"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3fa16aad3f28e445ab71c85c5374a3ed
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.MN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x915910ca13bec24c9190bb1f34d0fe3d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Birthday"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1789281365261e44a0933f1d3dabe116
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Anniversary"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdec5b1b0300d2641bc108a2184e50948
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc3cb21c74971db48a2f70bf4f0e73953
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x254e68b53ea2e9428d1951491edeb8b7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2efe5db9a548b64791bfb2ed675faf2a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhDirect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0a7bb64210eb19459ca2b2b49c3951df
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhExt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e8b8ecaf11d3643a4e64b07c9c84456
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Gender"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6add6e15320cd243b5ecd720cb28590c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7f8f0f9ca9d9d841bdb8ad057af58a69
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ChName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x274f7fa58048d246b9718a9b67602d32
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.EmailRes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd6c9300e0a7674b9a4b73d357b1db8f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ee405615f69ab428b14b71dbf5552d2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xedd0b6646b9e5d4689587936c4d235dd
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Suffix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3fe2f17b12b21447bbaf73c4a7ea62e2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PreferredName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1855a0ecd8e8cd4c83cf4c621c8ab231
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68826966a778de4789b191f6ab66433c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb03147474139ff419d17ddf58e7791e5
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SpName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb54520dd4871ce45b6aaa6e5cf41d74a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SpBirthday"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x647a6d1cc31b4642b00620ed5c5af7b9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResAdd1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2e64317236993541899289ca27cebed9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResAdd2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa64b771dbd6a244f9d0c71264a4fda15
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResCity"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x41353887428107438a7b74f3616dceb2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResProv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa828ef07caeeb84daeba5ad4083f2133
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResPC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd755332cfdf5f4db71d690b3b2e4a28
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x24d009f669ddd345ac80ba78733ad9cb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd8083733e25d74d8664473d5ff57224
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbc55fc35b3b7b846a2c80ad68a3a78c1
        End
    End
    Begin
        dbText "Name" ="fullname"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2b0a85d682a32a41b72dd716becc2c0e
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1593
    Bottom =860
    Left =-1
    Top =-1
    Right =1485
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =483
        Bottom =359
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
