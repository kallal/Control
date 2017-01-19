Version =20
VersionRequired =20
PublishOption =1
Checksum =-884140405
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
    ItemSuffix =2
    Left =1140
    Top =1980
    Right =10305
    Bottom =9495
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0xf52cb958555ae440
    End
    GUID = Begin
        0x1b112b6438163d488e8d9ff9b57c3620
    End
    NameMap = Begin
        0x0acc0e5500000000000000000000000000000000000000000c00000005000000 ,
        0x0000000000000000000000000000
    End
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    AllowPivotTableView =0
    AllowPivotChartView =0
    AllowPivotChartView =0
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
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x7a6b493de8ebd049a7602382d0059263
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
                    Left =2880
                    Top =1380
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text0"
                    AfterUpdate ="[Event Procedure]"
                    GUID = Begin
                        0x06e8fc136f000c48b12764efc3e7de58
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2880
                    LayoutCachedTop =1380
                    LayoutCachedWidth =4320
                    LayoutCachedHeight =1695
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1080
                            Top =1380
                            Width =585
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Text0"
                            GUID = Begin
                                0x5c14fb075b84b54aadf44a943fa96820
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1080
                            LayoutCachedTop =1380
                            LayoutCachedWidth =1665
                            LayoutCachedHeight =1695
                        End
                    End
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

Private Sub Text0_AfterUpdate()
    Dim myrs As Recordset
    mysql = "select * from ssd_Products WHERE ProductID = " & Me.Text0
    
    Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)
    
    myrs.Edit
    myrs!ProductStatusID = 3
    myrs.Update
    Set myrs = Nothing
    
    Me.Text0 = ""
    
End Sub