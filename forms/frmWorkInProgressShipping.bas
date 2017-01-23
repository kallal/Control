Version =20
VersionRequired =20
PublishOption =1
Checksum =-173848833
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =20100
    DatasheetFontHeight =11
    ItemSuffix =10
    Left =2820
    Top =2925
    Right =23250
    Bottom =13455
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0xba1a01dcd631e440
    End
    GUID = Begin
        0xad62227c27aadd468e7f55eaf3391c84
    End
    NameMap = Begin
        0x0acc0e550000000003928a990689fe44a71d1079ec2add4d0000000065db0674 ,
        0xec62e440000000000000000071007200790057006f0072006b0049006e005000 ,
        0x72006f00670072006500730073005300680069007000700069006e0067000000 ,
        0x00000000d7fb3da46a6660449fe6d5f10012313a0700000003928a990689fe44 ,
        0xa71d1079ec2add4d4400750065006400610074006500000000000000de921dd0 ,
        0x1bbf1e4eb6ddb6259e0611450700000003928a990689fe44a71d1079ec2add4d ,
        0x43006f006d0070004e0061006d006500000000000000cac43b2f9d18ad41a1ab ,
        0x796517debc850700000003928a990689fe44a71d1079ec2add4d530068006900 ,
        0x700049006e0073007400720075006300740069006f006e00000000000000d9cb ,
        0x95bb9ff0b84fa39eeda5976282d60700000003928a990689fe44a71d1079ec2a ,
        0xdd4d44006f0063006b00650074004e0075006d00000000000000000000000000 ,
        0x000000000000000000000c000000050000000000000000000000000000000000
    End
    RecordSource ="qryWorkInProgressShipping"
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
        Begin FormHeader
            Height =240
            BackColor =14342874
            Name ="FormHeader"
            GUID = Begin
                0xed4ffa00c1a6a045ab2e33aeaa6ebe66
            End
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =93
                    TextAlign =2
                    Width =1440
                    Height =240
                    FontSize =10
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblSortDocket"
                    Caption ="DOCKET"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x11798b26f04ed648a502c86b5c2b3a31
                    End
                    GridlineColor =10921638
                    LayoutCachedWidth =1440
                    LayoutCachedHeight =240
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =95
                    TextAlign =2
                    Left =1440
                    Width =1440
                    Height =240
                    FontSize =10
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblSortDueDate"
                    Caption ="DUE DATE"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x8f08b6e26333a5479d3af8777d2059a5
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1440
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =240
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =95
                    TextAlign =2
                    Left =2880
                    Width =3240
                    Height =240
                    FontSize =10
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblSortClient"
                    Caption ="CLIENT"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0xe4f1ac6824ee2541854279590a40cdf9
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =2880
                    LayoutCachedWidth =6120
                    LayoutCachedHeight =240
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =2
                    Left =6120
                    Width =13980
                    Height =240
                    FontSize =10
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="lblSortShipInst"
                    Caption ="SPECIAL SHIPPING INSTRUCTIONS"
                    GUID = Begin
                        0xf49d0bad39788c45ac3d34e39aaf8c5b
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6120
                    LayoutCachedWidth =20100
                    LayoutCachedHeight =240
                End
            End
        End
        Begin Section
            Height =300
            Name ="Detail"
            GUID = Begin
                0x73a78179358daf42996c8334e098814a
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =2
                    IMESentenceMode =3
                    Left =1440
                    Height =300
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Duedate"
                    ControlSource ="Duedate"
                    Format ="mmm d"
                    GUID = Begin
                        0x539d7a5fefd8794ab52a0c0d97ed109f
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1440
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =95
                    IMESentenceMode =3
                    Left =2880
                    Width =3240
                    Height =300
                    ColumnWidth =4380
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CompName"
                    ControlSource ="CompName"
                    GUID = Begin
                        0xc46cf89835c1d64abd7f8861bcb633d3
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =2880
                    LayoutCachedWidth =6120
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =6120
                    Width =13980
                    Height =300
                    ColumnWidth =9510
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ShipInstruction"
                    ControlSource ="ShipInstruction"
                    StatusBarText ="Any special shipping instructions"
                    GUID = Begin
                        0x53ab2901dd241c4aa9b015b9c4572333
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =6120
                    LayoutCachedWidth =20100
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    TextAlign =2
                    IMESentenceMode =3
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="DocketNum"
                    ControlSource ="DocketNum"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x31d0b887d0b8df428b05465a6edecc11
                    End
                    GridlineColor =10921638
                    LayoutCachedWidth =1440
                    LayoutCachedHeight =300
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            GUID = Begin
                0x1dc51d40630d3344850e2ebdad1251f4
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

Private Sub DocketNum_Click()
'GRAB Project ID ' This is the RIGHT code to go straight to component.
tmpProjectID = Me!ProjectHeaderID

tmpControlNum = 0
tmpcontrolnumavail = 0


tmpInvoiceNum = DLookup("[InvoiceNum]", "dbo_projectHeader", "[ID] = " & Me!ProjectHeaderID)
tmpDocketNum = DLookup("[DocketNum]", "dbo_projectHeader", "[ID] = " & Me!ProjectHeaderID)
tmpQuoteNum = DLookup("[QuoteNum]", "dbo_projectHeader", "[ID] = " & Me!ProjectHeaderID)
tmpProjectName = DLookup("[ProjectName]", "dbo_projectHeader", "[ID] = " & Me!ProjectHeaderID)
tmpCompName = DLookup("[CompName]", "dbo_contactgeneral", "[ID] = " & Me!ContactGeneralID)

'FIND OUT IF project IS ALREADY OPEN - IF IT IS, KILL IT, so it will reappear at top.


mytab = "" 'set up the tab information.
If tmpInvoiceNum > 0 Then
    mytab = "INV " & tmpInvoiceNum
    Else
        If tmpDocketNum > 0 Then
            mytab = "DKT " & tmpDocketNum
        Else
            mytab = "EST " & tmpQuoteNum
    End If
End If
mytab = mytab & vbCrLf
mytab = mytab & Trim(Left(tmpCompName, 15)) & IIf(Len(tmpCompName) > 15, "...", "") & vbCrLf
mytab = mytab & Trim(Left(tmpProjectName, 15)) & IIf(Len(tmpProjectName) > 15, "...", "")




' go to the first tab and turn it on.

tmpControlNum = 1
strcontrolname = "navProject" & Format(tmpControlNum, "00")
Forms!navmaster(strcontrolname).visible = True
Forms!navmaster(strcontrolname).caption = mytab
Forms!navmaster(strcontrolname).tag = tmpProjectID


tmpWhereClause = "[id] = " & Val(tmpProjectID)
'myComponentID = "[ID] = " & Me!ID

Forms!navmaster(strcontrolname).NavigationWhereClause = tmpWhereClause






Forms!navmaster.SetFocus                'These two setfocus commands are NEEDED to browse properly
Forms!navmaster.NavProject01.SetFocus


DoCmd.BrowseTo acBrowseToForm, "navProject", "navMaster.navSubform", tmpWhereClause


        
'then move to the critical path for shipping. Not working

'DoCmd.BrowseTo acBrowseToForm, "frmProjectCriticalPath", "navMaster.navSubform>navProject.navProject"

End Sub

Private Sub lblSortClient_Click()
Call RESETLABELS

mylabel = "CLIENT"
mycriteria = "COMPNAME"
myLabelCaption = "LBLSORTCLIENT"

myresult = fncSortByLabel(Me.OrderBy, mycriteria, mylabel)
Me.OrderBy = Left(myresult, InStr(myresult, "|") - 1)
Me(myLabelCaption).caption = Right(myresult, Len(myresult) - InStr(myresult, "|"))

Me.OrderByOn = True


End Sub

Private Sub lblSortDocket_Click()
Call RESETLABELS

mylabel = "DOCKET"
mycriteria = "DOCKETNUM"
myLabelCaption = "LBLSORTDOCKET"

myresult = fncSortByLabel(Me.OrderBy, mycriteria, mylabel)
Me.OrderBy = Left(myresult, InStr(myresult, "|") - 1)
Me(myLabelCaption).caption = Right(myresult, Len(myresult) - InStr(myresult, "|"))

Me.OrderByOn = True


End Sub

Private Sub lblSortDueDate_Click()
Call RESETLABELS

mylabel = "DUE DATE"
mycriteria = "DUEDATE"
myLabelCaption = "LBLSORTDUEDATE"

myresult = fncSortByLabel(Me.OrderBy, mycriteria, mylabel)
Me.OrderBy = Left(myresult, InStr(myresult, "|") - 1)
Me(myLabelCaption).caption = Right(myresult, Len(myresult) - InStr(myresult, "|"))

Me.OrderByOn = True

End Sub

Private Sub RESETLABELS()
    Me.lblSortDocket.caption = "DOCKET"
    Me.lblSortClient.caption = "CLIENT"
    Me.lblSortDueDate.caption = "DUE DATE"

End Sub