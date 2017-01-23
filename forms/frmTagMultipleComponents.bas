Version =20
VersionRequired =20
PublishOption =1
Checksum =719917788
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =13440
    DatasheetFontHeight =11
    ItemSuffix =19
    Left =1140
    Top =1980
    Right =16425
    Bottom =11595
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x81f35947ac34e440
    End
    GUID = Begin
        0x6afb5ff43a43214cb65b1cf7a609c210
    End
    NameMap = Begin
        0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
        0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
        0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
        0x0000000000006844dea308e20645809682e688c9e8ea00000000527f336dec62 ,
        0xe44000000000000000006c006f0063005f00500072006f006a00650063007400 ,
        0x43006f006d0070006f006e0065006e0074004800650061006400650072005400 ,
        0x61006700000000000000118be950d66974438268ddc04c06af1a070000000e7a ,
        0x128852f41a47b128e4f3b41e4fb449004400000000000000873fed1bdd4daf46 ,
        0xb59105d9e5c28c31070000000e7a128852f41a47b128e4f3b41e4fb450007200 ,
        0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
        0x3c3a0e9cef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47b128e4f3 ,
        0xb41e4fb443006f006d0070006f006e0065006e0074004e0061006d0065000000 ,
        0x00000000717e39111eca6347b57209c2ea15cddc070000000e7a128852f41a47 ,
        0xb128e4f3b41e4fb4410072007400450078007000650063007400650064004400 ,
        0x610074006500000000000000510e420f3ce318458e4a83187ceafcd507000000 ,
        0x0e7a128852f41a47b128e4f3b41e4fb441007200740041007200720069007600 ,
        0x650064004400610074006500000000000000634027e63b69c14c8d8a18cfebb3 ,
        0x40f0070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006f006600 ,
        0x530065006e00740044006100740065000000000000009663a2b3f469e74384b7 ,
        0xfdcf57d349e8070000000e7a128852f41a47b128e4f3b41e4fb4500072006f00 ,
        0x6f00660041007000700072006f00760065006400440061007400650000000000 ,
        0x00002b65fd8db5abd949aead0dff337742f2070000000e7a128852f41a47b128 ,
        0xe4f3b41e4fb44400610074006100450078007000650063007400650064004400 ,
        0x61007400650000000000000074e1da1886b7f044af38cd52c4a502c807000000 ,
        0x0e7a128852f41a47b128e4f3b41e4fb444006100740061004100720072006900 ,
        0x7600650064004400610074006500000000000000c3ea6b18e169d5439e955b74 ,
        0x0f1012ed070000006844dea308e20645809682e688c9e8ea5400610067000000 ,
        0x00000000c06d7265f7d08b4faeffa2779cf0c4aa070000006844dea308e20645 ,
        0x809682e688c9e8ea490044000000000000000000000000000000000000000000 ,
        0x00000c000000050000000000000000000000000000000000
    End
    RecordSource ="SELECT dbo_ProjectComponentHeader.ID, dbo_ProjectComponentHeader.ProjectHeaderID"
        ", dbo_ProjectComponentHeader.ComponentName, dbo_ProjectComponentHeader.ArtExpect"
        "edDate, dbo_ProjectComponentHeader.ArtArrivedDate, dbo_ProjectComponentHeader.Pr"
        "oofSentDate, dbo_ProjectComponentHeader.ProofApprovedDate, dbo_ProjectComponentH"
        "eader.DataExpectedDate, dbo_ProjectComponentHeader.DataArrivedDate, loc_ProjectC"
        "omponentHeaderTag.Tag FROM dbo_ProjectComponentHeader LEFT JOIN loc_ProjectCompo"
        "nentHeaderTag ON dbo_ProjectComponentHeader.ID = loc_ProjectComponentHeaderTag.I"
        "D; "
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    ShowPageMargins =0
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
    NoSaveCTIWhenDisabled =1
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
        Begin CommandButton
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
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
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =1665
            BackColor =14342874
            Name ="FormHeader"
            GUID = Begin
                0x319e2ce945b5c842b07f00a9bb038438
            End
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =180
                    Top =120
                    Width =8880
                    Height =555
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label0"
                    Caption ="This project has a number of components... Please indicate which components this"
                        " applies to:"
                    GUID = Begin
                        0x45dda2a46b3cf44d962ba1f6256eddde
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =120
                    LayoutCachedWidth =9060
                    LayoutCachedHeight =675
                End
                Begin Label
                    OverlapFlags =85
                    Top =1380
                    Width =450
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label10"
                    Caption ="TAG"
                    GUID = Begin
                        0x473571445265da42af29d15c15f287e8
                    End
                    GridlineColor =10921638
                    LayoutCachedTop =1380
                    LayoutCachedWidth =450
                    LayoutCachedHeight =1665
                End
                Begin Label
                    OverlapFlags =93
                    Left =2880
                    Top =960
                    Width =1440
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label11"
                    Caption ="ART EXPECTED"
                    GUID = Begin
                        0x4349a2e4fd4a26438ef38b4636ef74b1
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =2880
                    LayoutCachedTop =960
                    LayoutCachedWidth =4320
                    LayoutCachedHeight =1245
                End
                Begin Label
                    OverlapFlags =85
                    Left =660
                    Top =1365
                    Width =1920
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label12"
                    Caption ="COMPONENT NAME"
                    GUID = Begin
                        0xdd542d1596db8f4aa397aded971e5473
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =660
                    LayoutCachedTop =1365
                    LayoutCachedWidth =2580
                    LayoutCachedHeight =1650
                End
                Begin Label
                    OverlapFlags =95
                    Left =4320
                    Top =960
                    Width =1440
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label13"
                    Caption ="ART ARRIVED"
                    GUID = Begin
                        0x2839f06b1be2bb4a9b9d7d812e1803ab
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4320
                    LayoutCachedTop =960
                    LayoutCachedWidth =5760
                    LayoutCachedHeight =1245
                End
                Begin Label
                    OverlapFlags =95
                    Left =5760
                    Top =960
                    Width =1440
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label14"
                    Caption ="PROOF SENT"
                    GUID = Begin
                        0xa952a31051a6ea46bc98fc27bfe2409c
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =5760
                    LayoutCachedTop =960
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =1245
                End
                Begin Label
                    OverlapFlags =95
                    Left =7200
                    Top =960
                    Width =1440
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label15"
                    Caption ="PROOF APPR"
                    GUID = Begin
                        0xb18c2520c72cb342a7019ab950a29357
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =7200
                    LayoutCachedTop =960
                    LayoutCachedWidth =8640
                    LayoutCachedHeight =1245
                End
                Begin Label
                    OverlapFlags =95
                    Left =8640
                    Top =960
                    Width =1440
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label16"
                    Caption ="DATA EXP"
                    GUID = Begin
                        0xa7bd79cf7b14904483f2db33991c314b
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =8640
                    LayoutCachedTop =960
                    LayoutCachedWidth =10080
                    LayoutCachedHeight =1245
                End
                Begin Label
                    OverlapFlags =87
                    Left =10080
                    Top =960
                    Width =1440
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label17"
                    Caption ="DATA ARRIVED"
                    GUID = Begin
                        0x5e587770743f244291294c005a0555c6
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =10080
                    LayoutCachedTop =960
                    LayoutCachedWidth =11520
                    LayoutCachedHeight =1245
                End
                Begin CommandButton
                    OverlapFlags =85
                    Top =840
                    ForeColor =4210752
                    Name ="Command18"
                    Caption ="Select ALL"
                    GUID = Begin
                        0xc771fca17ac75d4d994eabbdce3832a8
                    End
                    GridlineColor =10921638
                    LayoutCachedTop =840
                    LayoutCachedWidth =1440
                    LayoutCachedHeight =1200
                    BackColor =14732154
                    BorderColor =14732154
                    HoverColor =15392166
                    PressedColor =9402914
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                End
            End
        End
        Begin Section
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x966b9ff3cbcf4b4f8806cbfff997f67e
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =12720
                    Width =540
                    Height =315
                    ColumnWidth =2670
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ProjectHeaderID"
                    ControlSource ="ProjectHeaderID"
                    StatusBarText ="Link to dbo_ProjectHeader"
                    GUID = Begin
                        0x113ca41214807248b00c8ecb169608f1
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =12720
                    LayoutCachedWidth =13260
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =660
                    Width =2580
                    Height =315
                    ColumnWidth =6780
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ComponentName"
                    ControlSource ="ComponentName"
                    StatusBarText ="Name of this portion of the job"
                    GUID = Begin
                        0x43f5e0a2719cb445a6dbff03b75fbe72
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =660
                    LayoutCachedWidth =3240
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =3300
                    Height =315
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ArtExpectedDate"
                    ControlSource ="ArtExpectedDate"
                    StatusBarText ="Date artwork is fully expected to be here"
                    GUID = Begin
                        0x14b67bc367c4d94daf65d7d2a6203f25
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3300
                    LayoutCachedWidth =4740
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =95
                    IMESentenceMode =3
                    Left =4740
                    Height =315
                    FontSize =10
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ArtArrivedDate"
                    ControlSource ="ArtArrivedDate"
                    StatusBarText ="Date that all artwork is in"
                    GUID = Begin
                        0xd28db5545833d247adb98f0d4bceed7d
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4740
                    LayoutCachedWidth =6180
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =95
                    IMESentenceMode =3
                    Left =6180
                    Height =315
                    FontSize =10
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ProofSentDate"
                    ControlSource ="ProofSentDate"
                    StatusBarText ="Date / Time that proof was sent."
                    GUID = Begin
                        0x22f9158130c11d46aa0ffb39a0bf4e24
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6180
                    LayoutCachedWidth =7620
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =95
                    IMESentenceMode =3
                    Left =7620
                    Height =315
                    FontSize =10
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ProofApprovedDate"
                    ControlSource ="ProofApprovedDate"
                    StatusBarText ="Date of proof OK"
                    GUID = Begin
                        0xacc14ba3e4082548839a7ed91b9d0e87
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =7620
                    LayoutCachedWidth =9060
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =95
                    IMESentenceMode =3
                    Left =9060
                    Height =315
                    FontSize =10
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="DataExpectedDate"
                    ControlSource ="DataExpectedDate"
                    StatusBarText ="Date Mailing data is fully expected to be here"
                    GUID = Begin
                        0x73c8745097529149b71fd32c9a817069
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =9060
                    LayoutCachedWidth =10500
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =10500
                    Height =315
                    FontSize =10
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="DataArrivedDate"
                    ControlSource ="DataArrivedDate"
                    StatusBarText ="Date that all data is in"
                    GUID = Begin
                        0x01888c8f74c17e4abf58866f057bbee4
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =10500
                    LayoutCachedWidth =11940
                    LayoutCachedHeight =315
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =120
                    Top =60
                    TabIndex =8
                    BorderColor =10921638
                    Name ="Tag"
                    ControlSource ="Tag"
                    GUID = Begin
                        0x4f26d2dd91985c4a89a6e25820a56e94
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =120
                    LayoutCachedTop =60
                    LayoutCachedWidth =380
                    LayoutCachedHeight =300
                End
            End
        End
        Begin FormFooter
            Height =360
            Name ="FormFooter"
            GUID = Begin
                0xd9bc1a475dae9049b6307b1e8c774c2d
            End
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End