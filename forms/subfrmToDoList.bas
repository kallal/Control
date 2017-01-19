Version =20
VersionRequired =20
PublishOption =1
Checksum =668916353
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    FilterOn = NotDefault
    OrderByOn = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =4080
    DatasheetFontHeight =11
    ItemSuffix =21
    Left =24300
    Top =1110
    Right =28365
    Bottom =8835
    DatasheetGridlinesColor =16446942
    Filter ="[CreatedForID] = 70"
    OrderBy ="priority, duewhen DESC"
    RecSrcDt = Begin
        0xb0055b283123e440
    End
    GUID = Begin
        0x4e1e02db46a2744b9894498b593cbf27
    End
    NameMap = Begin
        0x0acc0e55000000007d37be6254dec84181ac77add47c61090000000018baff0d ,
        0x54c1e440000000000000000071007200790054006f0044006f004c0069007300 ,
        0x74000000000000007c1ecfb0f801924ab6298088af35954a070000007d37be62 ,
        0x54dec84181ac77add47c6109430072006500610074006500640046006f007200 ,
        0x49004400000000000000068c643747ec4446bffa1440d3df3406060000004e1e ,
        0x02db46a2744b9894498b593cbf275000720069006f0072006900740079000000 ,
        0x0000000049be6c4090c1a0448826b0d1c5e6584d060000004e1e02db46a2744b ,
        0x9894498b593cbf274400750065005700680065006e00000000000000001ec3bb ,
        0xeb559141b722a6158463794800000000bf0576c352c1e4400000000000000000 ,
        0x640062006f005f0054006f0044006f00470072006f0075007000000000000000 ,
        0x25a6923fe8d34b428cee960897f1b831070000007d37be6254dec84181ac77ad ,
        0xd47c61094400750065005700680065006e0000000000000012aec1acb8c41f4f ,
        0xa7c8d1af77fcd403070000007d37be6254dec84181ac77add47c610950007200 ,
        0x69006f00720069007400790000000000000008807612d80c3942a691a01ea987 ,
        0x8069070000007d37be6254dec84181ac77add47c610954006f0044006f000000 ,
        0x000000002253911ef7921044b7bbdaeed968570c070000007d37be6254dec841 ,
        0x81ac77add47c6109490044000000000000001c9b84855b8f264abd34a504e56b ,
        0x05af070000007d37be6254dec84181ac77add47c6109500072006f006a006500 ,
        0x630074004e0061006d006500000000000000fde2928bbc55824d8e33fcf8a8e7 ,
        0xc2e1070000007d37be6254dec84181ac77add47c610943006f006d0070004e00 ,
        0x61006d006500000000000000000000000000000000000000000000000c000000 ,
        0x050000000000000000000000000000000000
    End
    RecordSource ="qryToDoList"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
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
        Begin OptionButton
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
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
        Begin FormHeader
            Height =600
            BackColor =14342874
            Name ="FormHeader"
            GUID = Begin
                0x3dda3f693e18da419b16aa8b9333cd77
            End
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =180
                    Top =420
                    Width =555
                    Height =180
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label6"
                    Caption ="TASK"
                    GUID = Begin
                        0x295563bf4c87354a919d4e93412b0af5
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =420
                    LayoutCachedWidth =735
                    LayoutCachedHeight =600
                End
                Begin Label
                    OverlapFlags =85
                    Left =3060
                    Top =420
                    Width =945
                    Height =180
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label7"
                    Caption ="DUE"
                    GUID = Begin
                        0xb4e49a52871e0d4094a74aab79c3056a
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3060
                    LayoutCachedTop =420
                    LayoutCachedWidth =4005
                    LayoutCachedHeight =600
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =60
                    Top =90
                    ColumnOrder =0
                    BorderColor =10921638
                    Name ="optShowMe"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="True"
                    GUID = Begin
                        0xbacb0f1e36e21c4ca5034ce42aa6f5b9
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =60
                    LayoutCachedTop =90
                    LayoutCachedWidth =320
                    LayoutCachedHeight =330
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =285
                            Top =60
                            Width =1350
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label25"
                            Caption ="Me, or Group:"
                            GUID = Begin
                                0x85889d99daeaf24daf5c79d3012ebff5
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =285
                            LayoutCachedTop =60
                            LayoutCachedWidth =1635
                            LayoutCachedHeight =375
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1680
                    Top =60
                    Width =2400
                    Height =315
                    ColumnOrder =1
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =2302755
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    GUID = Begin
                        0x9ed535f00ebca748aac97abcdeff313c
                    End
                    Name ="cboGroupSelect"
                    RowSourceType ="Table/Query"
                    RowSource ="dbo_ToDoGroup"
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    BaseInfo ="\"dbo_ToDoGroup\";\"dbo_ToDoGroup\";\"\";\"ID\";\"ToDoGroupName\";\"dbo_ToDoGrou"
                        "p$PrimaryKey\""
                    GridlineColor =10921638

                    LayoutCachedLeft =1680
                    LayoutCachedTop =60
                    LayoutCachedWidth =4080
                    LayoutCachedHeight =375
                End
            End
        End
        Begin Section
            Height =540
            BackColor =15788753
            Name ="Detail"
            GUID = Begin
                0xf1c49715dccb534eb496a22fe0700a7a
            End
            AlternateBackColor =15788753
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =93
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3060
                    Width =960
                    FontSize =9
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="DueWhen"
                    ControlSource ="DueWhen"
                    Format ="Medium Date"
                    StatusBarText ="When is this due for"
                    GUID = Begin
                        0x49be6c4090c1a0448826b0d1c5e6584d
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =3060
                    LayoutCachedWidth =4020
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =2
                    IMESentenceMode =3
                    Width =180
                    Height =540
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Priority"
                    ControlSource ="Priority"
                    StatusBarText ="Priority 1 (Urgent) - 3 (Normal) - 5 (Sometime)"
                    ConditionalFormat = Begin
                        0x0100000072000000030000000000000002000000000000000200000001000000 ,
                        0x00000000ff000000000000000200000003000000050000000100000000000000 ,
                        0xff660000000000000200000006000000080000000100000000000000ffc20e00 ,
                        0x310000000000320000000000330000000000
                    End
                    GUID = Begin
                        0x068c643747ec4446bffa1440d3df3406
                    End
                    GridlineColor =10921638

                    LayoutCachedWidth =180
                    LayoutCachedHeight =540
                    ConditionalFormat14 = Begin
                        0x01000500000000000000020000000100000000000000ff000000010000003100 ,
                        0x0000000000000000000000000000000000000000000000000002000000010000 ,
                        0x0000000000ff6600000100000032000000000000000000000000000000000000 ,
                        0x0000000000000000020000000100000000000000ffc20e000100000033000000 ,
                        0x0000000000000000000000000000000000000000000000020000000100000000 ,
                        0x000000fff2000001000000340000000000000000000000000000000000000000 ,
                        0x000000000000020000000100000000000000ffff990001000000350000000000 ,
                        0x0000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    BackStyle =0
                    IMESentenceMode =3
                    Left =180
                    Width =2880
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ToDo"
                    ControlSource ="ToDo"
                    StatusBarText ="What to do"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0xc5a867fe89889848a77c0121eef5c14a
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =180
                    LayoutCachedWidth =3060
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1800
                    Top =300
                    Width =300
                    FontSize =9
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ID"
                    ControlSource ="ID"
                    GUID = Begin
                        0x3c2a2c975a90014fa05c7f2276fbb284
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =1800
                    LayoutCachedTop =300
                    LayoutCachedWidth =2100
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2460
                    Top =300
                    Width =1560
                    FontSize =9
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ProjectName"
                    ControlSource ="ProjectName"
                    GUID = Begin
                        0x225b6d5f361f7c42b47ce3398c9a6894
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2460
                    LayoutCachedTop =300
                    LayoutCachedWidth =4020
                    LayoutCachedHeight =540
                    Begin
                        Begin Label
                            FontItalic = NotDefault
                            OverlapFlags =255
                            TextAlign =3
                            Left =1740
                            Top =300
                            Width =660
                            Height =240
                            FontSize =9
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label19"
                            Caption ="Project:"
                            GUID = Begin
                                0x8dc5abd653b62a4cb14d463ff2dcae85
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1740
                            LayoutCachedTop =300
                            LayoutCachedWidth =2400
                            LayoutCachedHeight =540
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =247
                    BackStyle =0
                    IMESentenceMode =3
                    Left =720
                    Top =300
                    Width =1080
                    ColumnWidth =4380
                    FontSize =9
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CompName"
                    ControlSource ="CompName"
                    GUID = Begin
                        0x0c851685ba901147a6a11ecb57be4f5d
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =720
                    LayoutCachedTop =300
                    LayoutCachedWidth =1800
                    LayoutCachedHeight =540
                    Begin
                        Begin Label
                            FontItalic = NotDefault
                            OverlapFlags =87
                            TextAlign =3
                            Left =180
                            Top =300
                            Width =480
                            Height =240
                            FontSize =9
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label20"
                            Caption ="Client:"
                            GUID = Begin
                                0xc7e25a1e2a1841458a1471b461a4d6e8
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =180
                            LayoutCachedTop =300
                            LayoutCachedWidth =660
                            LayoutCachedHeight =540
                        End
                    End
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            GUID = Begin
                0xac2cdc881c6f114292d389d6ebf70fa4
            End
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub cboGroupSelect_AfterUpdate()
If Nz(Me.cboGroupSelect, 0) = 0 Then
    Me.optShowMe = True
Else
    Me.optShowMe = False
End If
Call optShowMe_AfterUpdate
End Sub

Private Sub Form_Load()
If cControlCompanyCode = "KS" Then

'Me.FormHeader.BackColor = mybackcolor
Me.FormHeader.BackColor = cMyBackColor
Me.Detail.BackColor = cMyBackColor
End If

Call optShowMe_AfterUpdate
End Sub

Private Sub optShowMe_AfterUpdate()
If Me.optShowMe = True Then
    Me.Filter = "[CreatedForID] = " & cLoginID
    Me.cboGroupSelect = ""
Else
    If Me.cboGroupSelect = "" Then
        MsgBox "If you want to view a group, select it from the DropBox.", vbInformation, ProgramName
        Me.optShowMe = True
    Else
        Me.Filter = "[CreatedForGroupID] = " & Me.cboGroupSelect
    End If
End If
    
Me.FilterOn = True

    
End Sub

Private Sub ToDo_Click()
'MsgBox Me.ID

'Open ToDo form for editing
DoCmd.OpenForm "frmToDo", acNormal, , "[id] = " & Me.ID, , acDialog


End Sub