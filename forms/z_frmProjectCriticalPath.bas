Version =20
VersionRequired =20
Checksum =281274192
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =25455
    DatasheetFontHeight =11
    ItemSuffix =27
    Right =25320
    Bottom =11895
    DatasheetGridlinesColor =15062992
    RecSrcDt = Begin
        0x5aa216b4b4a7e340
    End
    GUID = Begin
        0xd2a85f35d6308a40bfbf65c60421b47a
    End
    NameMap = Begin
        0x0acc0e5500000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
        0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
        0x74004800650061006400650072000000000000003c09e8d1a2d5524681db7682 ,
        0x79cda863010000008492524f114ce4400000000000000000660072006d005000 ,
        0x72006f006a0065006300740043007200690074006900630061006c0050006100 ,
        0x74006800440065007400610069006c0000000000000056852d8feb7a8e4d9c7d ,
        0xf2b85c976d9200000000f2137e72ec62e4400000000000000000710072007900 ,
        0x500072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
        0x480065006100640065007200000000000000873fed1bdd4daf46b59105d9e5c2 ,
        0x8c310700000056852d8feb7a8e4d9c7df2b85c976d92500072006f006a006500 ,
        0x63007400480065006100640065007200490044000000000000006f7f02ef6df8 ,
        0x574092eeeafb278f50ec07000000fe926418f32ed843874a57f371c555c74900 ,
        0x4400000000000000c732e45b7f2d9144934298be1633ce7e06000000d2a85f35 ,
        0xd6308a40bfbf65c60421b47a500072006f006a0065006300740045006e006400 ,
        0x4400610074006500000000000000d506dfdfc2a4c54d948124b6c37e1c260600 ,
        0x0000d2a85f35d6308a40bfbf65c60421b47a500072006f006a00650063007400 ,
        0x5300740061007200740044006100740065000000000000003dac0047d3113342 ,
        0xab825d63a065d2b507000000fe926418f32ed843874a57f371c555c743006f00 ,
        0x6d00700061006e00790049004400000000000000fd79ac6ea6e1c346b936b17f ,
        0x2008772f06000000d2a85f35d6308a40bfbf65c60421b47a4900440000000000 ,
        0x0000000000000000000000000000000000000c00000005000000000000000000 ,
        0x0000000000000000
    End
    RecordSource ="dbo_ProjectHeader"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    AllowPivotTableView =0
    AllowPivotChartView =0
    AllowPivotChartView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =16053492
    DatasheetGridlinesColor12 =15062992
    FitToScreen =1
    NoSaveCTIWhenDisabled =1
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
        End
        Begin TextBox
            FELineBreak = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            BorderColor =12632256
            FontName ="Calibri"
            AsianLineBreak =1
        End
        Begin Subform
            BorderLineStyle =0
            BorderColor =12632256
        End
        Begin FormHeader
            Height =2760
            Name ="FormHeader"
            GUID = Begin
                0x0c02db76ea966e47ac64ab8c9816795e
            End
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11700
                    Top =180
                    Height =315
                    Name ="TotalDaysReqd"
                    ControlSource ="=[projectenddate]-[projectstartdate]+1"
                    GUID = Begin
                        0x5502867a0947b047b23b001e6d800043
                    End

                    LayoutCachedLeft =11700
                    LayoutCachedTop =180
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =495
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9420
                            Top =180
                            Width =2160
                            Height =315
                            Name ="Label12"
                            Caption ="Total WorkDays Req'd:"
                            GUID = Begin
                                0x739f9ff32d6cd6408889c90b6ef7da04
                            End
                            LayoutCachedLeft =9420
                            LayoutCachedTop =180
                            LayoutCachedWidth =11580
                            LayoutCachedHeight =495
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =3
                    Left =13500
                    Top =120
                    Width =5100
                    Height =360
                    FontWeight =700
                    Name ="Label0"
                    Caption ="SCHEDULING -CRITICAL PATH"
                    GUID = Begin
                        0xa48653e13d42d94a8f80bc408800b889
                    End
                    LayoutCachedLeft =13500
                    LayoutCachedTop =120
                    LayoutCachedWidth =18600
                    LayoutCachedHeight =480
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =420
                    Top =120
                    Width =1260
                    Height =420
                    FontSize =14
                    FontWeight =700
                    ForeColor =1643706
                    Name ="Label13"
                    Caption ="RUSH JOB"
                    GUID = Begin
                        0x839fa780fbb0164f96ca1b4d2ebbe7a3
                    End
                    LayoutCachedLeft =420
                    LayoutCachedTop =120
                    LayoutCachedWidth =1680
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =15600
                    Top =780
                    Height =315
                    TabIndex =1
                    Name ="CompanyID"
                    ControlSource ="CompanyID"
                    GUID = Begin
                        0xeed2a2f24160e84eb7f10d29131985b2
                    End

                    LayoutCachedLeft =15600
                    LayoutCachedTop =780
                    LayoutCachedWidth =17040
                    LayoutCachedHeight =1095
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =13800
                            Top =780
                            Width =1200
                            Height =315
                            Name ="Label15"
                            Caption ="CompanyID:"
                            GUID = Begin
                                0x2e83862f3cfb0546ad5aa8f534dec853
                            End
                            LayoutCachedLeft =13800
                            LayoutCachedTop =780
                            LayoutCachedWidth =15000
                            LayoutCachedHeight =1095
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =300
                    Top =1080
                    Width =1065
                    Height =240
                    FontSize =9
                    Name ="Label1"
                    Caption ="SERVICE "
                    GUID = Begin
                        0x44b836cf6361184584145cc475027ed5
                    End
                    LayoutCachedLeft =300
                    LayoutCachedTop =1080
                    LayoutCachedWidth =1365
                    LayoutCachedHeight =1320
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1800
                    Top =1080
                    Width =1305
                    Height =240
                    FontSize =9
                    Name ="Label2"
                    Caption ="DESCRIPTION"
                    GUID = Begin
                        0x1c43df660d0baa4abad5d5989b66e7b0
                    End
                    LayoutCachedLeft =1800
                    LayoutCachedTop =1080
                    LayoutCachedWidth =3105
                    LayoutCachedHeight =1320
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =3900
                    Top =1080
                    Width =1305
                    Height =240
                    FontSize =9
                    Name ="Label3"
                    Caption ="START DATE"
                    GUID = Begin
                        0xd6ebde790eeca74ca15979ae624dd618
                    End
                    LayoutCachedLeft =3900
                    LayoutCachedTop =1080
                    LayoutCachedWidth =5205
                    LayoutCachedHeight =1320
                End
                Begin Label
                    OverlapFlags =93
                    TextFontCharSet =186
                    Left =5220
                    Top =1080
                    Width =1500
                    Height =240
                    FontSize =9
                    Name ="Label5"
                    Caption ="EST DAYS REQ'D"
                    GUID = Begin
                        0x73d4e3106d80cf45895b29b29adcce0f
                    End
                    LayoutCachedLeft =5220
                    LayoutCachedTop =1080
                    LayoutCachedWidth =6720
                    LayoutCachedHeight =1320
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11700
                    Top =615
                    Height =315
                    TabIndex =2
                    Name ="ProjectStartDate"
                    ControlSource ="=DLookUp(\"[minofstartdate]\",\"qryCriticalPathDetailSum\",\"[ProjectHeaderID] ="
                        " \" & [ID])"
                    GUID = Begin
                        0xd506dfdfc2a4c54d948124b6c37e1c26
                    End

                    LayoutCachedLeft =11700
                    LayoutCachedTop =615
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =930
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9600
                            Top =615
                            Width =1980
                            Height =315
                            Name ="Label18"
                            Caption ="Project Start Date:"
                            GUID = Begin
                                0xb9263f62a1105d47b00870ca2759bd94
                            End
                            LayoutCachedLeft =9600
                            LayoutCachedTop =615
                            LayoutCachedWidth =11580
                            LayoutCachedHeight =930
                        End
                    End
                End
                Begin Label
                    OverlapFlags =215
                    TextFontCharSet =186
                    Left =6660
                    Top =1080
                    Width =1335
                    Height =240
                    FontSize =9
                    Name ="Label19"
                    Caption ="EST COMP. DATE"
                    GUID = Begin
                        0x469013f7be843148859a48510f5655aa
                    End
                    LayoutCachedLeft =6660
                    LayoutCachedTop =1080
                    LayoutCachedWidth =7995
                    LayoutCachedHeight =1320
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11700
                    Top =1050
                    Height =315
                    TabIndex =3
                    Name ="ProjectEndDate"
                    ControlSource ="=DLookUp(\"[maxofenddate]\",\"qryCriticalPathDetailSum\",\"[ProjectHeaderID] = \""
                        " & [ID])"
                    GUID = Begin
                        0xc732e45b7f2d9144934298be1633ce7e
                    End

                    LayoutCachedLeft =11700
                    LayoutCachedTop =1050
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =1365
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9600
                            Top =1050
                            Width =1980
                            Height =315
                            Name ="Label21"
                            Caption ="Project End Date:"
                            GUID = Begin
                                0x23c6726075567043a82d452b563a9be3
                            End
                            LayoutCachedLeft =9600
                            LayoutCachedTop =1050
                            LayoutCachedWidth =11580
                            LayoutCachedHeight =1365
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6180
                    Top =360
                    Height =315
                    TabIndex =4
                    Name ="ID"
                    ControlSource ="ID"
                    GUID = Begin
                        0xfd79ac6ea6e1c346b936b17f2008772f
                    End

                    LayoutCachedLeft =6180
                    LayoutCachedTop =360
                    LayoutCachedWidth =7620
                    LayoutCachedHeight =675
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4380
                            Top =360
                            Width =330
                            Height =315
                            Name ="Label22"
                            Caption ="ID:"
                            GUID = Begin
                                0xf87a96d1a37dfa4587a5545607b30baf
                            End
                            LayoutCachedLeft =4380
                            LayoutCachedTop =360
                            LayoutCachedWidth =4710
                            LayoutCachedHeight =675
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11700
                    Top =1485
                    Height =315
                    TabIndex =5
                    Name ="NextStartDate"
                    ControlSource ="=(DLookUp(\"[maxofenddate]\",\"qryCriticalPathDetailSum\",\"[ProjectHeaderID] = "
                        "\" & [ID]))+1"
                    GUID = Begin
                        0x6f3d6ddd5df8a7409f70bc8c66020cc0
                    End

                    LayoutCachedLeft =11700
                    LayoutCachedTop =1485
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =1800
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9600
                            Top =1485
                            Width =1980
                            Height =315
                            Name ="Label24"
                            Caption ="NextStartDate:"
                            GUID = Begin
                                0xa30fca2a8fcf644ea2d8b0ad8c19c226
                            End
                            LayoutCachedLeft =9600
                            LayoutCachedTop =1485
                            LayoutCachedWidth =11580
                            LayoutCachedHeight =1800
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11700
                    Top =1920
                    Height =315
                    TabIndex =6
                    Name ="NextProjectServiceID"
                    ControlSource ="=(DLookUp(\"[maxofprojectserviceid]\",\"qryCriticalPathDetailSum\",\"[ProjectHea"
                        "derID] = \" & [ID])+1)"
                    GUID = Begin
                        0x339761651831b047b262a2d024e872b2
                    End

                    LayoutCachedLeft =11700
                    LayoutCachedTop =1920
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =2235
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9465
                            Top =1920
                            Width =2115
                            Height =315
                            Name ="Label26"
                            Caption ="NextProjectServiceID:"
                            GUID = Begin
                                0x6823dc93ef49da47b1c3ab98d447c6a8
                            End
                            LayoutCachedLeft =9465
                            LayoutCachedTop =1920
                            LayoutCachedWidth =11580
                            LayoutCachedHeight =2235
                        End
                    End
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x16fecc3f807a484194d5168df499439a
            End
            Begin
                Begin Subform
                    OverlapFlags =85
                    Width =23520
                    Height =7560
                    Name ="frmCriticalPathDetail"
                    SourceObject ="Form.frmProjectCriticalPathDetail"
                    LinkChildFields ="ProjectHeaderID"
                    LinkMasterFields ="ID"
                    GUID = Begin
                        0x69408b480464a948aa0690d8b12f41d5
                    End

                    LayoutCachedWidth =23520
                    LayoutCachedHeight =7560
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            GUID = Begin
                0xd147e13dbe820b44bbbd0f59e63184f1
            End
        End
    End
End