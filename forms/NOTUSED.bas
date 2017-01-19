Version =20
VersionRequired =20
PublishOption =1
Checksum =1475157360
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =12840
    DatasheetFontHeight =11
    Left =1710
    Top =2670
    Right =16920
    Bottom =12285
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x9306dffb744de440
    End
    GUID = Begin
        0x3790d697970909439dfbba7c733237d1
    End
    NameMap = Begin
        0x0acc0e55000000008cddc3d95003244c8de299486663e57200000000d2ea826d ,
        0xec62e4400000000000000000780072006500660055006e006900740000000000 ,
        0x00002b86abf390fa654dace1d0d29b033bb5060000003790d697970909439dfb ,
        0xba7c733237d142006100730065005000720069006300650000000000000045d4 ,
        0xc7711bd7cd48837837702b3dddc4060000003790d697970909439dfbba7c7332 ,
        0x37d1510074007900000000000000f4ccc1561e632f45a2605aadd562909e0600 ,
        0x00003790d697970909439dfbba7c733237d1530065006c006c00500072006900 ,
        0x63006500000000000000d51b47adb0bd4c4dac2983d719d6d6d1060000003790 ,
        0xd697970909439dfbba7c733237d155006e006900740000000000000000000000 ,
        0x0000000000000000000000000000000000000000000000000000000000000000 ,
        0x7100720079004900740065006d00440061007400610000000000000000000000 ,
        0x0000000000000000000000000c00000005000000000000000000000000000000 ,
        0x0000
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
    Begin
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
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
        Begin ComboBox
            AddColon = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            CanGrow = NotDefault
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x31e81e63ef3a0549a1db1a99d6313e21
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    SpecialEffect =0
                    BackStyle =1
                    OldBorderStyle =0
                    OverlapFlags =93
                    Left =11280
                    Width =240
                    Height =300
                    BackColor =12632256
                    BorderColor =6697728
                    Name ="Box9"
                    GUID = Begin
                        0x7b4515116d32f84da1ebd99ae7f3600e
                    End
                    LayoutCachedLeft =11280
                    LayoutCachedWidth =11520
                    LayoutCachedHeight =300
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =223
                    BackStyle =0
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =10320
                    Width =1320
                    FontSize =8
                    BorderColor =13056
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"120\""
                    GUID = Begin
                        0xd51b47adb0bd4c4dac2983d719d6d6d1
                    End
                    Name ="Unit"
                    ControlSource ="Unit"
                    RowSourceType ="Table/Query"
                    RowSource ="xrefUnit"
                    ColumnWidths ="0;1440"
                    FontName ="Tahoma"
                    BaseInfo ="\"xrefUnit\";\"xrefUnit\";\"\";\"id\";\"Unit\";\"PrimaryKey\""
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =10320
                    LayoutCachedWidth =11640
                    LayoutCachedHeight =240
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeThemeColorIndex =-1
                    ForeShade =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =255
                    TextAlign =3
                    IMESentenceMode =3
                    Left =11340
                    Width =1500
                    FontSize =8
                    TabIndex =1
                    BorderColor =8421504
                    Name ="ExtPrice"
                    ControlSource ="=[BasePrice]+(([qty]*[SellPrice])/IIf([unit]=1,1,1000))"
                    Format ="Fixed"
                    FontName ="Tahoma"
                    GUID = Begin
                        0xc81bea1483f8fc488991ef7dcdb802cc
                    End

                    LayoutCachedLeft =11340
                    LayoutCachedWidth =12840
                    LayoutCachedHeight =240
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2040
                    Width =900
                    FontSize =8
                    TabIndex =2
                    BorderColor =8421504
                    Name ="Qty"
                    ControlSource ="Qty"
                    DefaultValue ="[parent].[quoteqty]"
                    FontName ="Tahoma"
                    GUID = Begin
                        0x45d4c7711bd7cd48837837702b3dddc4
                    End

                    LayoutCachedLeft =2040
                    LayoutCachedWidth =2940
                    LayoutCachedHeight =240
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    TabStop = NotDefault
                    OverlapFlags =95
                    IMESentenceMode =3
                    Left =2940
                    Width =5100
                    FontSize =8
                    TabIndex =3
                    BorderColor =8421504
                    Name ="ShortDesc"
                    ControlSource ="ShortDesc"
                    FontName ="Tahoma"
                    GUID = Begin
                        0xed12105ababa6a4eaa49f40ab370baa0
                    End

                    LayoutCachedLeft =2940
                    LayoutCachedWidth =8040
                    LayoutCachedHeight =240
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    FontItalic = NotDefault
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OldBorderStyle =0
                    OverlapFlags =255
                    BackStyle =0
                    IMESentenceMode =3
                    Left =300
                    Top =240
                    Width =11040
                    Height =243
                    FontSize =8
                    TabIndex =4
                    ForeColor =3355443
                    Name ="LongDesc"
                    ControlSource ="LongDesc"
                    FontName ="Tahoma"
                    GUID = Begin
                        0x7b11a43ef158f0409164ca6feb271623
                    End

                    LayoutCachedLeft =300
                    LayoutCachedTop =240
                    LayoutCachedWidth =11340
                    LayoutCachedHeight =483
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =127
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8040
                    Width =1080
                    FontSize =8
                    TabIndex =5
                    BorderColor =8421504
                    Name ="BasePrice"
                    ControlSource ="BasePrice"
                    Format ="Fixed"
                    FontName ="Tahoma"
                    GUID = Begin
                        0x2b86abf390fa654dace1d0d29b033bb5
                    End

                    LayoutCachedLeft =8040
                    LayoutCachedWidth =9120
                    LayoutCachedHeight =240
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =119
                    TextAlign =3
                    IMESentenceMode =3
                    Left =9120
                    Width =1140
                    FontSize =8
                    TabIndex =6
                    BorderColor =8421504
                    Name ="SellPrice"
                    ControlSource ="SellPrice"
                    Format ="Fixed"
                    FontName ="Tahoma"
                    GUID = Begin
                        0xf4ccc1561e632f45a2605aadd562909e
                    End

                    LayoutCachedLeft =9120
                    LayoutCachedWidth =10260
                    LayoutCachedHeight =240
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =2220
                    TabIndex =7
                    BorderColor =8421504
                    Name ="UseFinalQty"
                    ControlSource ="UseFinalQty"
                    StatusBarText ="Use qty from header"
                    DefaultValue ="Yes"
                    GUID = Begin
                        0x0dfc037b00ab5e48ac24a9dde3e9ba4f
                    End

                    LayoutCachedLeft =2220
                    LayoutCachedWidth =2480
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin TextBox
                    Visible = NotDefault
                    SpecialEffect =2
                    OldBorderStyle =0
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =5160
                    FontSize =8
                    TabIndex =8
                    Name ="CategoryID"
                    ControlSource ="CategoryID"
                    FontName ="Tahoma"
                    GUID = Begin
                        0xee9bb9c70e05f6408685dd2cf69a59d8
                    End

                    LayoutCachedLeft =5160
                    LayoutCachedWidth =6600
                    LayoutCachedHeight =240
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =119
                    IMESentenceMode =3
                    ColumnCount =99
                    Width =2040
                    FontSize =8
                    TabIndex =9
                    BorderColor =8421504
                    GUID = Begin
                        0x5112e104339cf344bdf970ab314e31c7
                    End
                    Name ="ItemID"
                    ControlSource ="ItemID"
                    RowSourceType ="Table/Query"
                    RowSource ="qryItemData"
                    ColumnWidths ="0;0;0;4320"
                    FontName ="Tahoma"
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedWidth =2040
                    LayoutCachedHeight =240
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeThemeColorIndex =-1
                    ForeShade =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                End
            End
        End
    End
End