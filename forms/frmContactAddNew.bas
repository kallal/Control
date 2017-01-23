Version =20
VersionRequired =20
PublishOption =1
Checksum =336717629
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =14295
    DatasheetFontHeight =11
    ItemSuffix =10
    Left =2325
    Top =1755
    Right =22710
    Bottom =11910
    DatasheetGridlinesColor =16446942
    Filter ="1=0"
    RecSrcDt = Begin
        0x1f6df5c24c0de440
    End
    GUID = Begin
        0x21b92cecb836414ba282eb817ee2081c
    End
    NameMap = Begin
        0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
        0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
        0x7400470065006e006500720061006c00000000000000124b02a694dd0e4c9626 ,
        0x4abff258312707000000d7c549c33168bc4ab70151c855c0b6b943006f006d00 ,
        0x70004e0061006d006500000000000000eeeaa2c1e5c5674396cce069d7db4003 ,
        0x07000000d7c549c33168bc4ab70151c855c0b6b94f0070006500720061007400 ,
        0x69006e006700410073000000000000006acc3e7c3f74f448bc552aa448b2ffb9 ,
        0x07000000d7c549c33168bc4ab70151c855c0b6b943006c00690065006e007400 ,
        0x530069006e0063006500000000000000371508649edb43438249d34f3ca45539 ,
        0x07000000d7c549c33168bc4ab70151c855c0b6b9430072006500640069007400 ,
        0x4f0072006400650072004f004b00000000000000b4e75f8445a4e64dad7ec271 ,
        0x5bd5d53607000000d7c549c33168bc4ab70151c855c0b6b94300720065006400 ,
        0x6900740053006800690070004f004b0000000000000017c69993fefe48429e58 ,
        0xf91ca567f01a07000000d7c549c33168bc4ab70151c855c0b6b9490073004300 ,
        0x6c00690065006e007400000000000000bac2913d74c3424685c5e8362c316111 ,
        0x07000000d7c549c33168bc4ab70151c855c0b6b9530065006e00640045006d00 ,
        0x610069006c00000000000000630b1a1eb010ac40ba9e9106dd052be507000000 ,
        0xd7c549c33168bc4ab70151c855c0b6b9530065006e0064004d00610069006c00 ,
        0x000000000000dec394f6def19b4e9ff118bf6e3abb3e07000000d7c549c33168 ,
        0xbc4ab70151c855c0b6b9530065006e00640049006e0076006f00690063006500 ,
        0x56006900610053006e00610069006c004d00610069006c000000000000000000 ,
        0x00000000000000000000000000000c0000000500000000000000000000000000 ,
        0x00000000
    End
    RecordSource ="dbo_ContactGeneral"
    OnOpen ="[Event Procedure]"
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
        Begin Section
            Height =7560
            Name ="Detail"
            GUID = Begin
                0x1018fcfaee1fd2469ad79c595a7610eb
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =660
                    Top =360
                    Width =13635
                    Height =1395
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label0"
                    Caption ="Please ensure you have checked the search function to see if the client you are "
                        "adding already exists. \015\012\015\012New companies can only be added by author"
                        "ized users. See your system administrator."
                    GUID = Begin
                        0xdaabc36545cd0b4fa0ba31cf1c962801
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =660
                    LayoutCachedTop =360
                    LayoutCachedWidth =14295
                    LayoutCachedHeight =1755
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4980
                    Top =2760
                    Width =6300
                    Height =420
                    ColumnWidth =4380
                    FontSize =12
                    FontWeight =700
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CompName"
                    ControlSource ="CompName"
                    AfterUpdate ="[Event Procedure]"
                    GUID = Begin
                        0xc0c00431b3737c4cb9cced8a4f42046b
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4980
                    LayoutCachedTop =2760
                    LayoutCachedWidth =11280
                    LayoutCachedHeight =3180
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3180
                            Top =2760
                            Width =1605
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Company Name:"
                            GUID = Begin
                                0x763057b1dd3c13429e00505d2e01a77a
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =3180
                            LayoutCachedTop =2760
                            LayoutCachedWidth =4785
                            LayoutCachedHeight =3075
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11280
                    Top =4200
                    Width =2580
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="OperatingAs"
                    ControlSource ="OperatingAs"
                    GUID = Begin
                        0xb5d49d12ea4cd741b2f96824a85cba6a
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =11280
                    LayoutCachedTop =4200
                    LayoutCachedWidth =13860
                    LayoutCachedHeight =4515
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =9480
                            Top =4200
                            Width =1230
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="OperatingAs"
                            GUID = Begin
                                0x237d540601b13e4e837be465ba08f425
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =9480
                            LayoutCachedTop =4200
                            LayoutCachedWidth =10710
                            LayoutCachedHeight =4515
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11160
                    Top =4920
                    Width =2580
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ClientSince"
                    ControlSource ="ClientSince"
                    DefaultValue ="Date()"
                    GUID = Begin
                        0x4304dfebc61be144ba862569289ffd47
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =11160
                    LayoutCachedTop =4920
                    LayoutCachedWidth =13740
                    LayoutCachedHeight =5235
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =9360
                            Top =4920
                            Width =1125
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="ClientSince"
                            GUID = Begin
                                0x5413f88f6d160d429537d4b6b3ffe947
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =9360
                            LayoutCachedTop =4920
                            LayoutCachedWidth =10485
                            LayoutCachedHeight =5235
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11220
                    Top =5460
                    Width =2580
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CreditOrderOK"
                    ControlSource ="CreditOrderOK"
                    Format ="True/False"
                    StatusBarText ="Client is allowed to order"
                    DefaultValue ="True"
                    GUID = Begin
                        0x7236e366a8accc4db6ff9ca69b5256f6
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =11220
                    LayoutCachedTop =5460
                    LayoutCachedWidth =13800
                    LayoutCachedHeight =5775
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =9420
                            Top =5460
                            Width =1455
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label4"
                            Caption ="CreditOrderOK"
                            GUID = Begin
                                0x86ea61f67cc8584e9e0cf61d53af2a69
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =9420
                            LayoutCachedTop =5460
                            LayoutCachedWidth =10875
                            LayoutCachedHeight =5775
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11220
                    Top =5940
                    Width =2580
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CreditShipOK"
                    ControlSource ="CreditShipOK"
                    Format ="True/False"
                    StatusBarText ="Client is allowed to be sent shipments"
                    DefaultValue ="True"
                    GUID = Begin
                        0x91e46677c1f7374788897947388e2896
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =11220
                    LayoutCachedTop =5940
                    LayoutCachedWidth =13800
                    LayoutCachedHeight =6255
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =9420
                            Top =5940
                            Width =1320
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label5"
                            Caption ="CreditShipOK"
                            GUID = Begin
                                0xb1edfb29ff99224caba3f9bfdc334cce
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =9420
                            LayoutCachedTop =5940
                            LayoutCachedWidth =10740
                            LayoutCachedHeight =6255
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3780
                    Top =4800
                    Height =315
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="IsClient"
                    ControlSource ="IsClient"
                    Format ="True/False"
                    DefaultValue ="True"
                    GUID = Begin
                        0xe7d8f26ee93016459185e06b5ae9d79e
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3780
                    LayoutCachedTop =4800
                    LayoutCachedWidth =5220
                    LayoutCachedHeight =5115
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1980
                            Top =4800
                            Width =780
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label6"
                            Caption ="IsClient"
                            GUID = Begin
                                0x015081fdb7a3f249b90cee8f70223b8b
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1980
                            LayoutCachedTop =4800
                            LayoutCachedWidth =2760
                            LayoutCachedHeight =5115
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3780
                    Top =5460
                    Height =315
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="SendEmail"
                    ControlSource ="SendEmail"
                    Format ="True/False"
                    StatusBarText ="Client Companywide to send email blasts"
                    DefaultValue ="True"
                    GUID = Begin
                        0xf21d200a926c8344b6b6ed5af5ac50cf
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3780
                    LayoutCachedTop =5460
                    LayoutCachedWidth =5220
                    LayoutCachedHeight =5775
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1980
                            Top =5460
                            Width =1050
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label7"
                            Caption ="SendEmail"
                            GUID = Begin
                                0xabd6e5b26c6bd24db907224117a0c1e4
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1980
                            LayoutCachedTop =5460
                            LayoutCachedWidth =3030
                            LayoutCachedHeight =5775
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4080
                    Top =6060
                    Height =315
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="SendMail"
                    ControlSource ="SendMail"
                    Format ="True/False"
                    StatusBarText ="Client Companywide to send mailings"
                    DefaultValue ="True"
                    GUID = Begin
                        0xefa7858a45cb1341a214396788d858b7
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =4080
                    LayoutCachedTop =6060
                    LayoutCachedWidth =5520
                    LayoutCachedHeight =6375
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2280
                            Top =6060
                            Width =945
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label8"
                            Caption ="SendMail"
                            GUID = Begin
                                0x865024fceeb46843a6ff76b9f6dc85d2
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =2280
                            LayoutCachedTop =6060
                            LayoutCachedWidth =3225
                            LayoutCachedHeight =6375
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3780
                    Top =3960
                    TabIndex =8
                    BorderColor =10921638
                    Name ="SendInvoiceViaSnailMail"
                    ControlSource ="SendInvoiceViaSnailMail"
                    StatusBarText ="See above"
                    DefaultValue ="True"
                    GUID = Begin
                        0x91a4cdb5f55f684ba73a13fb358e0118
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3780
                    LayoutCachedTop =3960
                    LayoutCachedWidth =4040
                    LayoutCachedHeight =4200
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =4010
                            Top =3930
                            Width =2370
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label9"
                            Caption ="SendInvoiceViaSnailMail"
                            GUID = Begin
                                0xbd8d219d5e29c44d97a48a3ad25003c6
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =4010
                            LayoutCachedTop =3930
                            LayoutCachedWidth =6380
                            LayoutCachedHeight =4245
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

Private Sub CompName_AfterUpdate()

Me.Refresh

If DLookup("[CanAddContactGeneralYN]", "dbo_CompanyEmployee", "[ID] = " & cLoginID) = False Then

    MsgBox "Only users with rights to add Company Names can perform this task... See your supervisor.", vbCritical, ProgramName
    Exit Sub
End If



Me.OperatingAs = Me.CompName

tmpCompanyID = Me.ID


    
    For i = 10 To 2 Step -1
        strcontrolname1 = "navContact" & Format(i, "00")
        strcontrolname2 = "navContact" & Format(i - 1, "00")
        
        Forms!navmaster(strcontrolname1).visible = Forms!navmaster(strcontrolname2).visible
        Forms!navmaster(strcontrolname1).tag = Forms!navmaster(strcontrolname2).tag
        Forms!navmaster(strcontrolname1).caption = Forms!navmaster(strcontrolname2).caption
        Forms!navmaster(strcontrolname1).NavigationWhereClause = Forms!navmaster(strcontrolname2).NavigationWhereClause
        
    Next


tmpControlNum = 1
strcontrolname = "navContact" & Format(tmpControlNum, "00")
Forms!navmaster(strcontrolname).visible = True
Forms!navmaster(strcontrolname).caption = Trim(Left(Me.CompName, 15)) & IIf(Len(Me.CompName) > 15, "...", "")
Forms!navmaster(strcontrolname).tag = tmpCompanyID

tmpWhereClause = "[id] = " & Val(tmpCompanyID)
Forms!navmaster(strcontrolname).NavigationWhereClause = tmpWhereClause ' SET THE LEFT SIDE TAB TO THE CONTACTGENERALID


'MsgBox Screen.ActiveControl.Name

AddContactHistory Me.ID, , , , 1, "Added New Company"



    DoCmd.BrowseTo acBrowseToForm, "navContact", , tmpWhereClause
End Sub


Private Sub Form_Open(Cancel As Integer)

Cancel = False
If DLookup("[CanAddContactGeneralYN]", "dbo_CompanyEmployee", "[ID] = " & cLoginID) = False Then

    MsgBox "Only users with rights to add Company Names can perform this task... See your supervisor.", vbCritical, ProgramName
    Cancel = True
    
    Exit Sub
End If


End Sub