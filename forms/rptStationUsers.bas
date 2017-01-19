Version =20
VersionRequired =20
PublishOption =1
Checksum =-2085642271
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =8884
    DatasheetFontHeight =11
    Left =1140
    Top =1980
    Right =11805
    Bottom =11595
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0xa5d18173ec62e440
    End
    GUID = Begin
        0xcb6abbd372140b4886f54a2f07cd11be
    End
    NameMap = Begin
        0x0acc0e550000000087af00118af6fd47a54e96c7e9b06ee900000000e8fb8273 ,
        0xec62e4400000000000000000710072007900530074006100740069006f006e00 ,
        0x550073006500720073000000000000002b42c8be7cfa534a8515b53e50209ccf ,
        0x0700000087af00118af6fd47a54e96c7e9b06ee966006e000000000000006ee7 ,
        0x053a7af8f44c9a585dba8febe0600700000087af00118af6fd47a54e96c7e9b0 ,
        0x6ee94c004e00000000000000f2e2c2a86e0f754db4dcc3924582490507000000 ,
        0x87af00118af6fd47a54e96c7e9b06ee969006400000000000000000000000000 ,
        0x000000000000000000000c000000050000000000000000000000000000000000
    End
    RecordSource ="qryStationUsers"
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
    Begin
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
        Begin Section
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x38e3460bfc94f0419b8129706c278e31
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =93
                    TextAlign =2
                    IMESentenceMode =3
                    Width =2760
                    Height =420
                    FontSize =14
                    FontWeight =700
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txt_Fullname"
                    ControlSource ="=[fn] & \" \" & [LN]"
                    GUID = Begin
                        0x44c4ee262b6b734899deae1a2d18de50
                    End
                    GridlineColor =10921638
                    ShowDatePicker =0

                    LayoutCachedWidth =2760
                    LayoutCachedHeight =420
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =95
                    TextAlign =2
                    TextFontFamily =82
                    IMESentenceMode =3
                    Top =420
                    Width =2760
                    Height =420
                    FontSize =22
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txt_Barcode"
                    ControlSource ="=\"*EMP\" & Trim(Format([id],\"0000\")) & \"*\""
                    FontName ="3 of 9 Barcode"
                    GUID = Begin
                        0xfeae8bd084e7c94d9595cadfd292f9b3
                    End
                    GridlineColor =10921638
                    ShowDatePicker =0

                    LayoutCachedTop =420
                    LayoutCachedWidth =2760
                    LayoutCachedHeight =840
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =247
                    TextAlign =2
                    IMESentenceMode =3
                    Top =780
                    Width =2760
                    Height =300
                    FontSize =12
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text11"
                    ControlSource ="=\"EMP\" & Trim(Format([id],\"0000\"))"
                    GUID = Begin
                        0x63350587bf0ff04fae6cc23290314473
                    End
                    GridlineColor =10921638
                    ShowDatePicker =0

                    LayoutCachedTop =780
                    LayoutCachedWidth =2760
                    LayoutCachedHeight =1080
                End
            End
        End
    End
End