Version =20
VersionRequired =20
PublishOption =1
Checksum =647740369
Begin Form
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =6300
    DatasheetFontHeight =11
    ItemSuffix =2
    Left =8985
    Top =2145
    Right =15285
    Bottom =10290
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x82af86dfab4fe440
    End
    GUID = Begin
        0xd3e8cd14215a5c40b0383eacab305ba4
    End
    NameMap = Begin
        0x0acc0e5500000000000000000000000000000000000000000c00000005000000 ,
        0x0000000000000000000000000000
    End
    Caption ="Layout"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
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
        Begin Image
            BackStyle =0
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
            Height =8160
            BackColor =16050613
            Name ="Detail"
            GUID = Begin
                0xbe62a928eee09841956785a9889abfb9
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =3
            BackShade =90.0
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1200
                    Top =7620
                    Width =4440
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="LayoutFilename"
                    ControlSource ="LayoutFilename"
                    GUID = Begin
                        0x5352d64c3406504bb8fdc9d3da69752f
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1200
                    LayoutCachedTop =7620
                    LayoutCachedWidth =5640
                    LayoutCachedHeight =7935
                End
                Begin Image
                    BackStyle =1
                    SizeMode =1
                    Width =6300
                    Height =8160
                    BorderColor =10921638
                    Name ="LayoutPage"
                    GUID = Begin
                        0x3db3486b2d5b5d41a3c98e55cfb97b98
                    End
                    GridlineColor =10921638
                    LayoutCachedWidth =6300
                    LayoutCachedHeight =8160
                    TabIndex =1
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

Private Sub cmdClose_Click()
DoCmd.Close

End Sub