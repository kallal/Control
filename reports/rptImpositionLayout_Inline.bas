Version =20
VersionRequired =20
PublishOption =1
Checksum =966303482
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =10755
    DatasheetFontHeight =11
    ItemSuffix =46
    Left =2055
    Top =-31741
    Right =2055
    Bottom =-31741
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x0410ee2f49ade440
    End
    GUID = Begin
        0x672c5745d4e1924e89ba934f26f458c7
    End
    NameMap = Begin
        0x0acc0e55000000001ff48b4b7bbd39459517fa849aa37704000000006b20350e ,
        0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
        0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
        0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050ecfe0e440 ,
        0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
        0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
        0x000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0e4400000 ,
        0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
        0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
        0x00006f48190dcfe0e4400000000000000000640062006f005f0043006f006e00 ,
        0x7400610063007400470065006e006500720061006c00000000000000e19fd78d ,
        0x6de8f042912e16a0f4718a30070000001ff48b4b7bbd39459517fa849aa37704 ,
        0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
        0x490044000000000000002042568302f48b4d89eb4ba2abddca7307000000d2d3 ,
        0x81ba93398a4283a6a9ed80a7b4be500072006f006a0065006300740048006500 ,
        0x610064006500720049004400000000000000a21dc4fed47c244fa08fb5209ebb ,
        0xfbc707000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f00 ,
        0x6e0065006e0074004e0061006d0065000000000000001c9b84855b8f264abd34 ,
        0xa504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f00 ,
        0x6a006500630074004e0061006d006500000000000000fde2928bbc55824d8e33 ,
        0xfcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d00 ,
        0x70004e0061006d006500000000000000a7556a0f2a5d8e41a7fbe057f7163a68 ,
        0x070000001ff48b4b7bbd39459517fa849aa377044c00610079006f0075007400 ,
        0x460069006c0065006e0061006d006500000000000000749d4175d9cbb541b774 ,
        0x14bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f006300 ,
        0x6b00650074004e0075006d00000000000000ffd475da9c35f547ad76cf08e4db ,
        0xfd4e070000001ff48b4b7bbd39459517fa849aa3770453006500630074006900 ,
        0x6f006e004e0061006d00650000000000000031b4c21ebf76a44cb590ac0ced35 ,
        0x92bb070000001ff48b4b7bbd39459517fa849aa3770449006d0070006f007300 ,
        0x6900740069006f006e004900440000000000000029556c4fcc6de9418049e37c ,
        0xebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be4900440000000000 ,
        0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
        0x2851f16d2a80490044000000000000008265226ce5165f4597f9cda188898d96 ,
        0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00740061006300 ,
        0x7400470065006e006500720061006c00490044000000000000001fc238e44765 ,
        0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
        0x4400000000000000000000000000000000000000000000000c00000005000000 ,
        0x0000000000000000000000000000
    End
    RecordSource ="SELECT dbo_ProjectComponentPress.ProjectComponentID, dbo_ProjectComponentHeader."
        "ProjectHeaderID, dbo_ProjectComponentHeader.ComponentName, dbo_ProjectHeader.Pro"
        "jectName, dbo_ContactGeneral.CompName, dbo_ProjectComponentPress.LayoutFilename,"
        " dbo_ProjectHeader.DocketNum, dbo_ProjectComponentPress.ProjectComponentID, dbo_"
        "ProjectComponentPress.SectionName, dbo_ProjectComponentPress.ImpositionID FROM ("
        "(dbo_ProjectComponentPress LEFT JOIN dbo_ProjectComponentHeader ON dbo_ProjectCo"
        "mponentPress.ProjectComponentID = dbo_ProjectComponentHeader.ID) LEFT JOIN dbo_P"
        "rojectHeader ON dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.I"
        "D) LEFT JOIN dbo_ContactGeneral ON dbo_ProjectHeader.ContactGeneralID = dbo_Cont"
        "actGeneral.ID GROUP BY dbo_ProjectComponentHeader.ProjectHeaderID, dbo_ProjectCo"
        "mponentHeader.ComponentName, dbo_ProjectHeader.ProjectName, dbo_ContactGeneral.C"
        "ompName, dbo_ProjectComponentPress.LayoutFilename, dbo_ProjectHeader.DocketNum, "
        "dbo_ProjectComponentPress.ProjectComponentID, dbo_ProjectComponentPress.SectionN"
        "ame, dbo_ProjectComponentPress.ImpositionID; "
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x0000000000000000000000000000000000000000032a00008016000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    PrtDevMode = Begin
        0x00ef4d0040e74d001472cb2fffffffff2ce0c12f25caf7738db95facf8f54d00 ,
        0x010464009c004c0b53ef800101000100ea0a6f08640001000f00b00402000100 ,
        0xb004030000004c6574746572000000003cd0f7736db95fac44f2d02ff8f54d00 ,
        0x10f2d02f10ef0000000000000000000000000000000000000000000002000000 ,
        0x0000000000000000000000000000000000000000000000000000000001000000 ,
        0x3c003c00e803e803070000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000445043410000000000000000 ,
        0x0000000000000000000000007777772e3b687474703a2f2f3b66696c653a2f2f ,
        0x3b6d61696c746f3a3b68747470733a2f2f3b6674703a2f2f0000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000080000000000000000000000000000 ,
        0x0000000000000000000000006400000001000100000000000000000000000000 ,
        0x0000000093120000
    End
    PrtDevNames = Begin
        0x080026003a000100000000000000000000000000000000000000000000000000 ,
        0x00000000000000000000000000000000000000000000000000004c5054313a00
    End
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    PrtDevModeW = Begin
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x3400300030000000650072007400650072002000340030003000000000000000 ,
        0x01046400dc004c0b53ef800101000100ea0a6f08640001000f00b00402000100 ,
        0xb004030000004c00650074007400650072000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000002000000 ,
        0x0000000000000000000000000000000000000000000000000000000001000000 ,
        0x3c003c00e803e803070000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000445043410000000000000000 ,
        0x0000000000000000000000007777772e3b687474703a2f2f3b66696c653a2f2f ,
        0x3b6d61696c746f3a3b68747470733a2f2f3b6674703a2f2f0000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000080000000000000000000000000000 ,
        0x0000000000000000000000006400000001000100000000000000000000000000 ,
        0x0000000093120000
    End
    PrtDevNamesW = Begin
        0x0400220036000100000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x0000000000000000000000004c005000540031003a000000
    End
    NoSaveCTIWhenDisabled =1
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            BorderColor =16777215
            GridlineColor =16777215
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            KeepTogether = NotDefault
            Height =5760
            OnFormat ="[Event Procedure]"
            Name ="Detail"
            GUID = Begin
                0xcb8ab1228f42944b8cf2eddec4ea4096
            End
            AlternateBackColor =16777215
            AlternateBackThemeColorIndex =1
            BackThemeColorIndex =1
            Begin
                Begin Image
                    Left =120
                    Top =420
                    Width =2640
                    Height =3660
                    BorderColor =0
                    Name ="Layout1"
                    GUID = Begin
                        0xc3f096594c49964e86396b9ebd0179e7
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedTop =420
                    LayoutCachedWidth =2760
                    LayoutCachedHeight =4080
                    TabIndex =6
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin Image
                    Left =2760
                    Top =420
                    Width =2640
                    Height =3660
                    BorderColor =0
                    Name ="Layout2"
                    GUID = Begin
                        0x4e52b1543754d240bebb28bdd72d8375
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2760
                    LayoutCachedTop =420
                    LayoutCachedWidth =5400
                    LayoutCachedHeight =4080
                    TabIndex =7
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin Image
                    Left =5400
                    Top =420
                    Width =2640
                    Height =3660
                    BorderColor =10921638
                    Name ="Layout3"
                    GUID = Begin
                        0xf7e9ace5f1e53b4aa4e2d470bd7fdf65
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =5400
                    LayoutCachedTop =420
                    LayoutCachedWidth =8040
                    LayoutCachedHeight =4080
                    TabIndex =8
                End
                Begin Image
                    Left =7980
                    Top =420
                    Width =2640
                    Height =3660
                    BorderColor =10921638
                    Name ="Layout4"
                    GUID = Begin
                        0x204b3fafda54e24992353304fb32ae3b
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =7980
                    LayoutCachedTop =420
                    LayoutCachedWidth =10620
                    LayoutCachedHeight =4080
                    TabIndex =9
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =60
                    Top =4860
                    Width =3000
                    Height =420
                    ColumnOrder =0
                    FontSize =16
                    FontWeight =700
                    BorderColor =10921638
                    Name ="txtQuoteNum"
                    ControlSource ="=\"D-\" & [DocketNum]"
                    GUID = Begin
                        0xd742f35b6e6e0f4ea134d7e2bce14582
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =60
                    LayoutCachedTop =4860
                    LayoutCachedWidth =3060
                    LayoutCachedHeight =5280
                    ForeTint =100.0
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =900
                    Top =840
                    Width =4020
                    Height =315
                    ColumnOrder =1
                    TabIndex =1
                    ForeColor =4210752
                    Name ="Text0"
                    ControlSource ="ProjectName"
                    GUID = Begin
                        0xa69ca1446a27c94da669ba64978596eb
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =900
                    LayoutCachedTop =840
                    LayoutCachedWidth =4920
                    LayoutCachedHeight =1155
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin Label
                            Visible = NotDefault
                            Top =840
                            Width =795
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Project:"
                            GUID = Begin
                                0x667efe4378e24d408e656366665f61fe
                            End
                            GridlineColor =10921638
                            LayoutCachedTop =840
                            LayoutCachedWidth =795
                            LayoutCachedHeight =1155
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =6420
                    Top =840
                    Width =4260
                    Height =315
                    ColumnOrder =2
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text2"
                    ControlSource ="ComponentName"
                    GUID = Begin
                        0x25848af72fc4124a87c3e9c1e0d73e7f
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =6420
                    LayoutCachedTop =840
                    LayoutCachedWidth =10680
                    LayoutCachedHeight =1155
                    Begin
                        Begin Label
                            Visible = NotDefault
                            Left =5100
                            Top =840
                            Width =1230
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label4"
                            Caption ="Component:"
                            GUID = Begin
                                0xfc368df9b818a347918378393d317a54
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =5100
                            LayoutCachedTop =840
                            LayoutCachedWidth =6330
                            LayoutCachedHeight =1155
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =240
                    Top =420
                    Width =7740
                    Height =315
                    ColumnOrder =3
                    TabIndex =3
                    ForeColor =4210752
                    Name ="LayoutFilename"
                    ControlSource ="LayoutFilename"
                    GUID = Begin
                        0xd42c1e54f070a148ab6c4d05a8472790
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =240
                    LayoutCachedTop =420
                    LayoutCachedWidth =7980
                    LayoutCachedHeight =735
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin Label
                            Visible = NotDefault
                            Left =4740
                            Top =420
                            Width =1485
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label10"
                            Caption ="LayoutFilename"
                            GUID = Begin
                                0x1d58470427c3c2409927d149a9e164c2
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =4740
                            LayoutCachedTop =420
                            LayoutCachedWidth =6225
                            LayoutCachedHeight =735
                        End
                    End
                End
                Begin Label
                    TextAlign =3
                    Left =60
                    Top =4560
                    Width =1680
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label11"
                    Caption ="PRESS COUNTS:"
                    GUID = Begin
                        0x4b179a2562acc347a5b4ad312700ec76
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =4560
                    LayoutCachedWidth =1740
                    LayoutCachedHeight =4845
                End
                Begin Label
                    TextAlign =3
                    Top =5280
                    Width =1740
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label12"
                    Caption ="BINDERY COUNTS:"
                    GUID = Begin
                        0x070d881346b0ad48be12df7625b02a36
                    End
                    GridlineColor =10921638
                    LayoutCachedTop =5280
                    LayoutCachedWidth =1740
                    LayoutCachedHeight =5565
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =2
                    Left =3435
                    Top =4140
                    Width =1380
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label13"
                    Caption ="GROSS"
                    GUID = Begin
                        0xa8d51f0095f83e44b701f9673f652d21
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3435
                    LayoutCachedTop =4140
                    LayoutCachedWidth =4815
                    LayoutCachedHeight =4425
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =2
                    Left =4995
                    Top =4140
                    Width =1320
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label14"
                    Caption ="NET"
                    GUID = Begin
                        0x0a957c0ace0b954c8085f3259b6d9ced
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4995
                    LayoutCachedTop =4140
                    LayoutCachedWidth =6315
                    LayoutCachedHeight =4425
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =2
                    Left =6435
                    Top =4140
                    Width =2760
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label15"
                    Caption ="OPERATOR"
                    GUID = Begin
                        0xdfd83715ad2946428946ef8d1badb3aa
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6435
                    LayoutCachedTop =4140
                    LayoutCachedWidth =9195
                    LayoutCachedHeight =4425
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =2
                    Left =9315
                    Top =4140
                    Width =1320
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label16"
                    Caption ="DATE"
                    GUID = Begin
                        0x68f3cf6b35c00f43b9e9ec9c9bc74ece
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =9315
                    LayoutCachedTop =4140
                    LayoutCachedWidth =10635
                    LayoutCachedHeight =4425
                End
                Begin Line
                    Left =3435
                    Top =4800
                    Width =1380
                    Name ="Line17"
                    GUID = Begin
                        0xc52d008f5b15224baa6b4f5825712782
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3435
                    LayoutCachedTop =4800
                    LayoutCachedWidth =4815
                    LayoutCachedHeight =4800
                End
                Begin Line
                    Left =4935
                    Top =4800
                    Width =1380
                    Name ="Line18"
                    GUID = Begin
                        0x5d7328d59086cd4d9dedcd99cdb15421
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =4800
                    LayoutCachedWidth =6315
                    LayoutCachedHeight =4800
                End
                Begin Line
                    Left =6435
                    Top =4800
                    Width =2760
                    Name ="Line19"
                    GUID = Begin
                        0x1b732f871b3a2b4e9ac82784c6121253
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6435
                    LayoutCachedTop =4800
                    LayoutCachedWidth =9195
                    LayoutCachedHeight =4800
                End
                Begin Line
                    Left =9315
                    Top =4800
                    Width =1380
                    Name ="Line20"
                    GUID = Begin
                        0x8e962749e387d74699b90e38541495fa
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =9315
                    LayoutCachedTop =4800
                    LayoutCachedWidth =10695
                    LayoutCachedHeight =4800
                End
                Begin Line
                    Left =3435
                    Top =5100
                    Width =1380
                    Name ="Line21"
                    GUID = Begin
                        0xa9f8cbbc3cb55c4abbd603f8956681c8
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3435
                    LayoutCachedTop =5100
                    LayoutCachedWidth =4815
                    LayoutCachedHeight =5100
                End
                Begin Line
                    Left =4935
                    Top =5100
                    Width =1380
                    Name ="Line22"
                    GUID = Begin
                        0x615451ac3c7f5348b456a6ebfffe1d07
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =5100
                    LayoutCachedWidth =6315
                    LayoutCachedHeight =5100
                End
                Begin Line
                    Left =6435
                    Top =5100
                    Width =2760
                    Name ="Line23"
                    GUID = Begin
                        0xc3b1578103d12c48bb0c6a8970e879c3
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6435
                    LayoutCachedTop =5100
                    LayoutCachedWidth =9195
                    LayoutCachedHeight =5100
                End
                Begin Line
                    Left =9315
                    Top =5100
                    Width =1380
                    Name ="Line24"
                    GUID = Begin
                        0xa27fe0950198a548a20a5868e3bfda25
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =9315
                    LayoutCachedTop =5100
                    LayoutCachedWidth =10695
                    LayoutCachedHeight =5100
                End
                Begin Line
                    Left =3435
                    Top =5580
                    Width =1380
                    Name ="Line29"
                    GUID = Begin
                        0xc68aae451d40e64fa89db594541aa9e9
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3435
                    LayoutCachedTop =5580
                    LayoutCachedWidth =4815
                    LayoutCachedHeight =5580
                End
                Begin Line
                    Left =4935
                    Top =5580
                    Width =1380
                    Name ="Line30"
                    GUID = Begin
                        0xc3b0e8afcbf3cf47bb45117127334267
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =5580
                    LayoutCachedWidth =6315
                    LayoutCachedHeight =5580
                End
                Begin Line
                    Left =6435
                    Top =5580
                    Width =2760
                    Name ="Line31"
                    GUID = Begin
                        0x4e03f848edf6e746975d37e7b1b43240
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6435
                    LayoutCachedTop =5580
                    LayoutCachedWidth =9195
                    LayoutCachedHeight =5580
                End
                Begin Line
                    Left =9315
                    Top =5580
                    Width =1380
                    Name ="Line32"
                    GUID = Begin
                        0xeca13aa083c8ef48bb16366af50b73a3
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =9315
                    LayoutCachedTop =5580
                    LayoutCachedWidth =10695
                    LayoutCachedHeight =5580
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =2
                    Left =1920
                    Top =4140
                    Width =1380
                    Height =300
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label33"
                    Caption ="FORM"
                    GUID = Begin
                        0xa6f0548aff912f438a988254c8f68509
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1920
                    LayoutCachedTop =4140
                    LayoutCachedWidth =3300
                    LayoutCachedHeight =4440
                End
                Begin Line
                    Left =1920
                    Top =4800
                    Width =1380
                    Name ="Line34"
                    GUID = Begin
                        0x17989fefdb23d848b47ee45a13d4274e
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1920
                    LayoutCachedTop =4800
                    LayoutCachedWidth =3300
                    LayoutCachedHeight =4800
                End
                Begin Line
                    Left =1920
                    Top =5100
                    Width =1380
                    Name ="Line35"
                    GUID = Begin
                        0xbec2c85b0fc0df4d9276e5ff89af26c4
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1920
                    LayoutCachedTop =5100
                    LayoutCachedWidth =3300
                    LayoutCachedHeight =5100
                End
                Begin Line
                    Left =1920
                    Top =5580
                    Width =1380
                    Name ="Line37"
                    GUID = Begin
                        0x482d08975cc30242b39b0a88fb212c71
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1920
                    LayoutCachedTop =5580
                    LayoutCachedWidth =3300
                    LayoutCachedHeight =5580
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =1620
                    Width =5580
                    Height =315
                    FontWeight =700
                    TabIndex =4
                    Name ="txtSectionName"
                    ControlSource ="SectionName"
                    GUID = Begin
                        0x1d5bb4fa1a75f44ca1023d57b841b180
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =1620
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =315
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeTint =100.0
                    Begin
                        Begin Label
                            Left =4680
                            Width =1545
                            Height =315
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Label39"
                            Caption ="LayoutFilename"
                            GUID = Begin
                                0x3dd4504f413ff647aba23046c22ea560
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =4680
                            LayoutCachedWidth =6225
                            LayoutCachedHeight =315
                            ForeTint =100.0
                        End
                    End
                End
                Begin Label
                    Left =120
                    Width =1485
                    Height =285
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Label40"
                    Caption ="Section Name:"
                    GUID = Begin
                        0x254fb79ba09a594a836c9f2eb510713d
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =120
                    LayoutCachedWidth =1605
                    LayoutCachedHeight =285
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =8040
                    Width =2715
                    Height =300
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Label41"
                    Caption ="LAYOUT SHEET"
                    GUID = Begin
                        0x7a3f86577ff9cf4d90504a4751ebf55e
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =8040
                    LayoutCachedWidth =10755
                    LayoutCachedHeight =300
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =5700
                    Width =10680
                    Name ="Line42"
                    GUID = Begin
                        0xfac7920412185b4db267357cd8b0fd41
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =5700
                    LayoutCachedWidth =10740
                    LayoutCachedHeight =5700
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =8160
                    Width =660
                    Height =315
                    FontWeight =700
                    TabIndex =5
                    Name ="Text43"
                    ControlSource ="ImpositionID"
                    GUID = Begin
                        0x5cbae2baaf46374ba6fbe2571fdffc5a
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =8160
                    LayoutCachedWidth =8820
                    LayoutCachedHeight =315
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeTint =100.0
                    Begin
                        Begin Label
                            Visible = NotDefault
                            Left =120
                            Top =4140
                            Width =1545
                            Height =315
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Label44"
                            Caption ="LayoutFilename"
                            GUID = Begin
                                0xe96603be8748b443809363e619553adf
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =4140
                            LayoutCachedWidth =1665
                            LayoutCachedHeight =4455
                            ForeTint =100.0
                        End
                    End
                End
                Begin Label
                    Left =7380
                    Width =780
                    Height =285
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Label45"
                    Caption ="Form #:"
                    GUID = Begin
                        0x25710243b0313e468fd24076e5244f7d
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =7380
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =285
                    ForeTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Detail_Format(Cancel As Integer, FormatCount As Integer)
On Error Resume Next

myfile2 = Left(LayoutFilename, Len(LayoutFilename) - 5) & "2.png"
myfile3 = Left(LayoutFilename, Len(LayoutFilename) - 5) & "3.png"
myfile4 = Left(LayoutFilename, Len(LayoutFilename) - 5) & "4.png"




'Me.Layout1.Picture = LayoutFilename
If Dir(LayoutFilename) <> "" Then
    Me.Layout1.Picture = LayoutFilename
Else
    Me.Layout1.Picture = ""
End If


If Dir(myfile2) <> "" Then
    Me.Layout2.Picture = myfile2
Else
    Me.Layout2.Picture = ""
End If


If Dir(myfile3) <> "" Then
    Me.Layout3.Picture = myfile3
Else
    Me.Layout3.Picture = ""
End If


If Dir(myfile4) <> "" Then
    Me.Layout4.Picture = myfile4
Else
    Me.Layout4.Picture = ""
End If
 
'Stop

End Sub