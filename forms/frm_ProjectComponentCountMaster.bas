Version =20
VersionRequired =20
PublishOption =1
Checksum =1254676651
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    OrderByOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =19800
    DatasheetFontHeight =11
    ItemSuffix =9
    Top =495
    Right =20055
    Bottom =8400
    DatasheetGridlinesColor =16446942
    Filter ="[ID] = 20419"
    OrderBy ="[dbo_ProjectComponentHeader].[ProjectHeaderID] DESC, [dbo_ProjectComponentHeader"
        "].[ID] DESC, [dbo_ProjectComponentHeader].[ComponentName], [dbo_ProjectComponent"
        "Header].[ExpectedQty]"
    RecSrcDt = Begin
        0xd7197de04d5ce440
    End
    GUID = Begin
        0x2d3f4e6ae4286349945917780b2a7b34
    End
    NameMap = Begin
        0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
        0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
        0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
        0x000000000000118be950d66974438268ddc04c06af1a070000000e7a128852f4 ,
        0x1a47b128e4f3b41e4fb449004400000000000000873fed1bdd4daf46b59105d9 ,
        0xe5c28c31070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006a00 ,
        0x650063007400480065006100640065007200490044000000000000003c3a0e9c ,
        0xef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb4 ,
        0x43006f006d0070006f006e0065006e0074004e0061006d006500000000000000 ,
        0xb04f8d260a13f3428c8e9ff1b197c202070000000e7a128852f41a47b128e4f3 ,
        0xb41e4fb445007800700065006300740065006400510074007900000000000000 ,
        0xbfc199c9740a7b4bb4f16fc4e9fb3577010000003faad7d1ae5ce44000000000 ,
        0x00000000660072006d005f00500072006f006a0065006300740043006f006d00 ,
        0x70006f006e0065006e00740043006f0075006e00740050007200650073007300 ,
        0x000000000000276392ee6ecd5a4dac1e206cc72e288500000000e910d672ec62 ,
        0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
        0x43006f006d0070006f006e0065006e00740043006f0075006e00740073000000 ,
        0x0000000046b705e7fe6fdd4786aacd7ea4a2d92707000000276392ee6ecd5a4d ,
        0xac1e206cc72e28855400610073006b00430061007400650067006f0072007900 ,
        0x49004400000000000000774e42d01cb8ba439aab54722d9b3255010000008a56 ,
        0xda72ec62e4400000000000000000660072006d005f00500072006f006a006500 ,
        0x6300740043006f006d0070006f006e0065006e00740043006f0075006e007400 ,
        0x4c007200670046006f0072006d006100740032000000000000007cde01aebb24 ,
        0xee45b963779ab5c9c9c6010000003ea01eaeb25ce44000000000000000006600 ,
        0x72006d005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
        0x65006e00740043006f0075006e007400420069006e0064006500720079003200 ,
        0x000000000000000000000000000000000000000000000c000000050000000000 ,
        0x000000000000000000000000
    End
    RecordSource ="dbo_ProjectComponentHeader"
    Caption ="RUN COUNTS"
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
        Begin Subform
            BorderLineStyle =0
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin Section
            CanGrow = NotDefault
            Height =7920
            BackColor =9732411
            Name ="Detail"
            GUID = Begin
                0x7bc33e837c862741a7dd372e3ce2c3cc
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Subform
                    OverlapFlags =215
                    OldBorderStyle =0
                    Left =120
                    Top =480
                    Width =19560
                    Height =3360
                    BorderColor =10921638
                    Name ="frm_ProjectComponentCountPress"
                    SourceObject ="Form.frm_ProjectComponentCountPress"
                    LinkChildFields ="ProjectComponentID"
                    LinkMasterFields ="ID"
                    GUID = Begin
                        0x285712f320bb6f4a90d49c435ad5a604
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedTop =480
                    LayoutCachedWidth =19680
                    LayoutCachedHeight =3840
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =120
                            Top =120
                            Width =3375
                            Height =435
                            FontSize =14
                            FontWeight =700
                            BorderColor =8355711
                            ForeColor =16777215
                            Name ="Label6"
                            Caption ="PRESS"
                            GUID = Begin
                                0x9ea4ad16a6ed9f4389bce38d6957a53d
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =120
                            LayoutCachedWidth =3495
                            LayoutCachedHeight =555
                            ForeThemeColorIndex =1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    OldBorderStyle =0
                    Left =120
                    Top =4320
                    Width =19560
                    Height =1500
                    TabIndex =1
                    BorderColor =10921638
                    Name ="frm_ProjectComponentCountLrgFormat"
                    SourceObject ="Form.frm_ProjectComponentCountLrgFormat2"
                    LinkChildFields ="ProjectComponentID"
                    LinkMasterFields ="ID"
                    GUID = Begin
                        0xb64c8b8f1f537a439dbe1a850e05604d
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedTop =4320
                    LayoutCachedWidth =19680
                    LayoutCachedHeight =5820
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =120
                            Top =3960
                            Width =3810
                            Height =435
                            FontSize =14
                            FontWeight =700
                            BorderColor =8355711
                            ForeColor =16777215
                            Name ="Label7"
                            Caption ="LARGE FORMAT"
                            GUID = Begin
                                0x114aa53f03ce3245a8eb839eda61b8f6
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =3960
                            LayoutCachedWidth =3930
                            LayoutCachedHeight =4395
                            ForeThemeColorIndex =1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    OldBorderStyle =0
                    Left =120
                    Top =6300
                    Width =19560
                    Height =1500
                    TabIndex =2
                    BorderColor =10921638
                    Name ="frm_ProjectComponentCountBindery"
                    SourceObject ="Form.frm_ProjectComponentCountBindery2"
                    LinkChildFields ="ProjectComponentID"
                    LinkMasterFields ="ID"
                    GUID = Begin
                        0x9935e633f9cbda4a934b37f3f9507e94
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedTop =6300
                    LayoutCachedWidth =19680
                    LayoutCachedHeight =7800
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =120
                            Top =5940
                            Width =3600
                            Height =435
                            FontSize =14
                            FontWeight =700
                            BorderColor =8355711
                            ForeColor =16777215
                            Name ="Label8"
                            Caption ="BINDERY"
                            GUID = Begin
                                0x35da22faf46def4a85cbeecb5fa7d1c7
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =5940
                            LayoutCachedWidth =3720
                            LayoutCachedHeight =6375
                            ForeThemeColorIndex =1
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
    End
End