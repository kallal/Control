Version =20
VersionRequired =20
PublishOption =1
Checksum =-1576742121
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    OrderByOn = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =5040
    DatasheetFontHeight =11
    ItemSuffix =1
    Left =18585
    Top =8175
    Right =22950
    Bottom =12405
    DatasheetGridlinesColor =16446942
    OrderBy ="FORMID"
    RecSrcDt = Begin
        0x6f3459d97834e440
    End
    GUID = Begin
        0x238620ad43d187418bd46164b46165b9
    End
    NameMap = Begin
        0x0acc0e5500000000c6feefd030eb464abe21d27211e6b6de0000000027f19155 ,
        0x0da8e4400000000000000000640062006f005f00480065006c00700054006500 ,
        0x78007400000000000000235437622bb2e7449b94231bf1f4a05207000000c6fe ,
        0xefd030eb464abe21d27211e6b6de46004f0052004d0049004400000000000000 ,
        0x558afdd4d2b1b74e9faa1d9cad3d150707000000c6feefd030eb464abe21d272 ,
        0x11e6b6de480065006c0070005400690074006c00650000000000000000000000 ,
        0x0000000000000000000000000c00000005000000000000000000000000000000 ,
        0x0000
    End
    RecordSource ="dbo_HelpText"
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
        Begin Section
            Height =420
            Name ="Detail"
            GUID = Begin
                0x611c91b9500fa043b33f8cd619b6d88c
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Width =5040
                    Height =420
                    ColumnWidth =4005
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="HelpTitle"
                    ControlSource ="HelpTitle"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0xd1eb123c8cf8a444b29518cf1df4880c
                    End
                    GridlineColor =10921638

                    LayoutCachedWidth =5040
                    LayoutCachedHeight =420
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

Private Sub HelpTitle_Click()
DoCmd.OpenReport "rptHelpText", acViewReport, , "[ID] = " & Me.ID
End Sub