Version =20
VersionRequired =20
PublishOption =1
Checksum =-1659946336
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
        0x1c90217e6b2fe440
    End
    GUID = Begin
        0xff9a12bfb6113f4f86d09d197a235c29
    End
    NameMap = Begin
        0x0acc0e5500000000000000000000000000000000000000000c00000005000000 ,
        0x0000000000000000000000000000
    End
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
                0xfabdfb57cdcd4748827af8ac2a356c27
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
                        0x97b931c3b841534f82c471947a963f3e
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
                        0xa258d17b1737f1468dc4d1b5aa20a1bf
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
                        0xba78889e5582184884a4d7d6b9648abc
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