Version =20
VersionRequired =20
PublishOption =1
Checksum =-758976877
Begin Form
    AllowFilters = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridX =24
    GridY =24
    Width =8884
    DatasheetFontHeight =11
    ItemSuffix =4
    Left =1710
    Top =2670
    Right =12375
    Bottom =12285
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x7cd765e6702fe440
    End
    GUID = Begin
        0x9f735eb369814742b1a3b08e04dc8a3e
    End
    NameMap = Begin
        0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
        0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
        0x7400470065006e006500720061006c00000000000000124b02a694dd0e4c9626 ,
        0x4abff258312707000000d7c549c33168bc4ab70151c855c0b6b943006f006d00 ,
        0x70004e0061006d006500000000000000c09f94eff54d3747b249cd87c341bfbc ,
        0x07000000d7c549c33168bc4ab70151c855c0b6b9500072006500700072006500 ,
        0x730073004e006f00740065007300000000000000000000000000000000000000 ,
        0x000000000c000000050000000000000000000000000000000000
    End
    RecordSource ="dbo_ContactGeneral"
    Caption ="Prepress Notes"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    OrderByOnLoad =0
    OrderByOnLoad =0
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
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x765f2b94b35b3e4a881e7e92d4a06fb4
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =300
                    Top =240
                    Width =5460
                    Height =420
                    ColumnWidth =4380
                    FontSize =14
                    FontWeight =700
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CompName"
                    ControlSource ="CompName"
                    GUID = Begin
                        0x22758dcf50f78844827a6f07dfb44254
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =300
                    LayoutCachedTop =240
                    LayoutCachedWidth =5760
                    LayoutCachedHeight =660
                End
                Begin TextBox
                    Enabled = NotDefault
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =300
                    Top =960
                    Width =8220
                    Height =6303
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="PrepressNotes"
                    ControlSource ="PrepressNotes"
                    StatusBarText ="Free form prepress notes"
                    GUID = Begin
                        0x20bba29b624d7a4ba87252dc3ee1c914
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =300
                    LayoutCachedTop =960
                    LayoutCachedWidth =8520
                    LayoutCachedHeight =7263
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6960
                    Top =240
                    Width =1560
                    Height =480
                    FontWeight =700
                    TabIndex =2
                    ForeColor =4210752
                    Name ="cmdEdit"
                    Caption ="EDIT"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0xde34c0d5cb91ed45a952366a15951178
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =6960
                    LayoutCachedTop =240
                    LayoutCachedWidth =8520
                    LayoutCachedHeight =720
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
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub cmdEdit_Click()
Me.AllowEdits = True
Me.PrepressNotes.enabled = True

Me.cmdEdit.caption = "EDITABLE"
End Sub