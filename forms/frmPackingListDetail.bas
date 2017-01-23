Version =20
VersionRequired =20
PublishOption =1
Checksum =-1953405568
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =8820
    DatasheetFontHeight =11
    ItemSuffix =7
    Top =600
    Right =10665
    Bottom =10215
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x597fad773316e440
    End
    GUID = Begin
        0x4ab18c822748aa47ba82ad49106396c8
    End
    NameMap = Begin
        0x0acc0e55000000009c701e5ff077024da67702bbedd629a60000000057c8bec0 ,
        0xea62e4400000000000000000640062006f005f005000610063006b0069006e00 ,
        0x67004c00690073007400440065007400610069006c00000000000000f09d5a38 ,
        0x470a334a89f027150bcbfac8070000009c701e5ff077024da67702bbedd629a6 ,
        0x49004400000000000000267422225f7c8a469294c8a10fed1769070000009c70 ,
        0x1e5ff077024da67702bbedd629a65000610063006b0069006e0067004c006900 ,
        0x7300740048006500610064006500720049004400000000000000ebacb606be7a ,
        0x114a892f20096c449d18070000009c701e5ff077024da67702bbedd629a65000 ,
        0x72006f006a0065006300740043006f006d0070006f006e0065006e0074004800 ,
        0x650061006400650072004900440000000000000079b7ffc95c71824eaa8dbbb6 ,
        0xe4285abb070000009c701e5ff077024da67702bbedd629a65100740079000000 ,
        0x000000004132620f9a2d0a49880db32db0209df9070000009c701e5ff077024d ,
        0xa67702bbedd629a64400650073006300720069007000740069006f006e000000 ,
        0x00000000000000000000000000000000000000000c0000000500000000000000 ,
        0x00000000000000000000
    End
    RecordSource ="dbo_PackingListDetail"
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
            Height =285
            BackColor =14342874
            Name ="FormHeader"
            GUID = Begin
                0xa6767c59d8f3774caaa23dfae3a1091a
            End
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Width =435
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label5"
                    Caption ="QTY"
                    GUID = Begin
                        0x9bf7ebb6d66eac4bb56e6baad2002e80
                    End
                    GridlineColor =10921638
                    LayoutCachedWidth =435
                    LayoutCachedHeight =285
                End
                Begin Label
                    OverlapFlags =85
                    Left =1560
                    Width =1305
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label6"
                    Caption ="DESCRIPTION"
                    GUID = Begin
                        0x1bc4a0a6e980e14fb627d166fcede892
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1560
                    LayoutCachedWidth =2865
                    LayoutCachedHeight =285
                End
            End
        End
        Begin Section
            Height =315
            Name ="Detail"
            GUID = Begin
                0x5c8b7860ee3f8649ae8f295e65654495
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =3960
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ID"
                    ControlSource ="ID"
                    GUID = Begin
                        0x46fc37f90d7beb4585c9b591cbef129a
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3960
                    LayoutCachedWidth =5400
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =5460
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="PackingListHeaderID"
                    ControlSource ="PackingListHeaderID"
                    StatusBarText ="Link to PackingListHeader"
                    GUID = Begin
                        0x1fd91291b529c941943b4e95b2a85089
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =5460
                    LayoutCachedWidth =6900
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =6960
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ProjectComponentHeaderID"
                    ControlSource ="ProjectComponentHeaderID"
                    StatusBarText ="Link to which component was shipped"
                    GUID = Begin
                        0x6724201654c79a4db749da6a208157a5
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6960
                    LayoutCachedWidth =8400
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Qty"
                    ControlSource ="Qty"
                    GUID = Begin
                        0xff3d1b3407c6d744ba52cd8a05313d4e
                    End
                    GridlineColor =10921638
                    LayoutCachedWidth =1440
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =1560
                    Width =7080
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Description"
                    ControlSource ="Description"
                    GUID = Begin
                        0x06fa242e7cd7ca4cb658f06114394a43
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1560
                    LayoutCachedWidth =8640
                    LayoutCachedHeight =315
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            GUID = Begin
                0xb83cab3edc284844a5c3cf98aa0bb574
            End
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End