Version =20
VersionRequired =20
PublishOption =1
Checksum =-721760441
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =8884
    DatasheetFontHeight =11
    ItemSuffix =1
    Left =9915
    Top =2505
    Right =18795
    Bottom =10050
    TimerInterval =30000
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x443f5427910be440
    End
    GUID = Begin
        0x8f3392a06c3480419b48d2afa2c5a283
    End
    NameMap = Begin
        0x0acc0e5500000000000000000000000000000000000000000c00000005000000 ,
        0x0000000000000000000000000000
    End
    Caption ="Automated Shutdown"
    DatasheetFontName ="Calibri"
    OnTimer ="[Event Procedure]"
    Moveable =0
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
        Begin Section
            Height =7560
            BackColor =2629594
            Name ="Detail"
            GUID = Begin
                0x10cb3ed6d86f3742a455a1c4e8e4d0d8
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =5
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =1080
                    Top =1800
                    Width =6840
                    Height =3975
                    FontSize =20
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Label0"
                    Caption ="Axis MIS will automatically shut down in 30 seconds for maintenance.\015\012\015"
                        "\012\015\012Axis MIS shuts down every day for updating and backup purposes. The "
                        "system will also shutdown if requested by the Administrator."
                    GUID = Begin
                        0x4808d4289f30d74989c9711691dc95c4
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1080
                    LayoutCachedTop =1800
                    LayoutCachedWidth =7920
                    LayoutCachedHeight =5775
                    ForeThemeColorIndex =1
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

Private Sub Form_Timer()

DoCmd.Close acForm, "navMaster"
DoCmd.Close acForm, "frmLogin"
DoCmd.Close acForm, "frmShutdown"
    
Application.Quit acQuitSaveAll
End Sub