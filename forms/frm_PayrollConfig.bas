Version =20
VersionRequired =20
PublishOption =1
Checksum =-344069287
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =11460
    DatasheetFontHeight =11
    ItemSuffix =3
    Left =6570
    Top =2400
    Right =19035
    Bottom =9975
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x1ef21f792f92e440
    End
    GUID = Begin
        0x46ff77e47a1a374aa264e11f8b608f06
    End
    NameMap = Begin
        0x0acc0e5500000000bd19239aa7c4d74881190b41795349a3000000001ef21f79 ,
        0x2f92e4400000000000000000640062006f005f0050006100790072006f006c00 ,
        0x6c0043006f006e0066006900670000000000000039ee56af09891543b3d56bdf ,
        0x29decf2c07000000bd19239aa7c4d74881190b41795349a34300750074006f00 ,
        0x660066005f0044006100790073004200650066006f0072006500500061007900 ,
        0x6400610079000000000000003ffa3a38d4921c43b7277d310fed6de607000000 ,
        0xbd19239aa7c4d74881190b41795349a343006f006d00700061006e0079004900 ,
        0x44000000000000003c4bc222a1fcf5468c440abb7390324907000000bd19239a ,
        0xa7c4d74881190b41795349a350006500720069006f00640043006f006e006600 ,
        0x69006700000000000000000000000000000000000000000000000c0000000500 ,
        0x00000000000000000000000000000000
    End
    RecordSource ="dbo_PayrollConfig"
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
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x3611bb645669f54897eb0eb31c0bbce0
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
                    Left =4980
                    Top =2100
                    Width =3120
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Cutoff_DaysBeforePayday"
                    ControlSource ="Cutoff_DaysBeforePayday"
                    GUID = Begin
                        0x22737ab3ca35d04bb8b200982de467ab
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4980
                    LayoutCachedTop =2100
                    LayoutCachedWidth =8100
                    LayoutCachedHeight =2415
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1800
                            Top =2100
                            Width =3000
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Cutoff - Days Before Payday"
                            GUID = Begin
                                0x647c3ecaf273d24f8f05174e3fdb4287
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1800
                            LayoutCachedTop =2100
                            LayoutCachedWidth =4800
                            LayoutCachedHeight =2415
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10020
                    Top =120
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CompanyID"
                    ControlSource ="CompanyID"
                    GUID = Begin
                        0x0349be21ee29c34994f5a6e704834de6
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =10020
                    LayoutCachedTop =120
                    LayoutCachedWidth =11460
                    LayoutCachedHeight =435
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =8220
                            Top =120
                            Width =1140
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="CompanyID"
                            GUID = Begin
                                0x9b1ad419fcc80841afba82d4ba78c825
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =8220
                            LayoutCachedTop =120
                            LayoutCachedWidth =9360
                            LayoutCachedHeight =435
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3660
                    Top =1260
                    Width =4440
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    GUID = Begin
                        0xe806dea924e1e548a72613a8f60c1b19
                    End
                    Name ="PeriodConfig"
                    ControlSource ="PeriodConfig"
                    RowSourceType ="Value List"
                    RowSource ="\"1\";\"Daily\";\"2\";\"Weekly\";\"3\";\"Bi-Weekly\";\"4\";\"Semi-Monthly\";\"5\""
                        ";\"Monthly\""
                    ColumnWidths ="0;1440"
                    GridlineColor =10921638
                    LayoutCachedLeft =3660
                    LayoutCachedTop =1260
                    LayoutCachedWidth =8100
                    LayoutCachedHeight =1575
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1800
                            Top =1260
                            Width =1500
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label0"
                            Caption ="Payroll Period:"
                            GUID = Begin
                                0x0c953daa5b6ae84ab138558fe532e5fb
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1800
                            LayoutCachedTop =1260
                            LayoutCachedWidth =3300
                            LayoutCachedHeight =1575
                        End
                    End
                End
            End
        End
    End
End