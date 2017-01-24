Version =20
VersionRequired =20
PublishOption =1
Checksum =2010657035
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =9240
    DatasheetFontHeight =11
    ItemSuffix =6
    Left =2100
    Top =600
    Right =16560
    Bottom =9990
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0xe6082d13cb96e440
    End
    GUID = Begin
        0xa215ea6943e2af48ad2eeec1e7b43288
    End
    NameMap = Begin
        0x0acc0e550000000066cd9be06bdb5e46bc9df263ddfd68510000000033c216b5 ,
        0x8c97e440000000000000000071007200790043006f006d00700061006e007900 ,
        0x45006d0070006c006f0079006500650000000000000000000000000000000000 ,
        0x0000000000000c000000050000000000000000000000000000000000
    End
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
                0x9e0cfb7b4b4b2e488aa9de988b8a0fa7
            End
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =240
                    Top =240
                    Width =2985
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label0"
                    Caption ="UPDATE CONTACT DEFAULT CSR"
                    GUID = Begin
                        0xa4f2a754a1e6e943a971ddff9bc81f44
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =240
                    LayoutCachedWidth =3225
                    LayoutCachedHeight =525
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2880
                    Top =1320
                    Width =4320
                    Height =315
                    BorderColor =10921638
                    ForeColor =2302755
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"0\""
                    GUID = Begin
                        0xa2d87ab3e3aa7e4ea72b86a45325fd31
                    End
                    Name ="cboSalesRep"
                    RowSourceType ="Table/Query"
                    RowSource ="qryCompanyEmployee"
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    BaseInfo ="\"qryCompanyEmployee\";\"dbo_CompanyEmployee\";\"\";\"ID\";\"FN] & \"\" \"\" & ["
                        "LN\";\"dbo_CompanyEmployee$PrimaryKey\""
                    GridlineColor =10921638

                    LayoutCachedLeft =2880
                    LayoutCachedTop =1320
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =1635
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1740
                            Top =1320
                            Width =1020
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Sales Rep:"
                            GUID = Begin
                                0x3b514a16ea681a42ad67b6e680a7974e
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1740
                            LayoutCachedTop =1320
                            LayoutCachedWidth =2760
                            LayoutCachedHeight =1635
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2880
                    Top =2520
                    Width =4320
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =2302755
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"0\""
                    GUID = Begin
                        0x75aac1828ab9cd4f9460654051dab54d
                    End
                    Name ="cboNewCSR"
                    RowSourceType ="Table/Query"
                    RowSource ="qryCompanyEmployee"
                    ColumnWidths ="0;1440"
                    BaseInfo ="\"qryCompanyEmployee\";\"dbo_CompanyEmployee\";\"\";\"ID\";\"FN] & \"\" \"\" & ["
                        "LN\";\"dbo_CompanyEmployee$PrimaryKey\""
                    GridlineColor =10921638

                    LayoutCachedLeft =2880
                    LayoutCachedTop =2520
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =2835
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1740
                            Top =2520
                            Width =1020
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label4"
                            Caption ="New CSR:"
                            GUID = Begin
                                0xb306fa6fde3a504d874ae68c74173689
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1740
                            LayoutCachedTop =2520
                            LayoutCachedWidth =2760
                            LayoutCachedHeight =2835
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3000
                    Top =3900
                    Width =2760
                    Height =600
                    TabIndex =2
                    ForeColor =4210752
                    Name ="cmdUpdate"
                    Caption ="UPDATE"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0xbc09e0da9135774e8481ac80c7cb0b6b
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =3000
                    LayoutCachedTop =3900
                    LayoutCachedWidth =5760
                    LayoutCachedHeight =4500
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
Option Explicit


Private Sub cboSalesRep_AfterUpdate()
Dim mysql As String
Dim myrs As Recordset
If Nz(Me.cboSalesRep, 0) > 0 Then
    mysql = "SELECT * FROM dbo_ContactGeneral WHERE SalesRepID = " & Me.cboSalesRep
    Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)
    myrs.MoveLast
    MsgBox "Sales Rep ID: " & Me.cboSalesRep & " - Number of Clients: " & myrs.RecordCount
End If

End Sub

Private Sub cmdUpdate_Click()
Dim myResponse As Integer
Dim myrs As Recordset
Dim mysql As String

myResponse = vbNo
myResponse = MsgBox("About to change all of " & Me.cboSalesRep.Column(1) & " (" & Me.cboSalesRep & ")" & "'s Clients to be serviced by " & Me.cboNewCSR.Column(1) & " (" & Me.cboNewCSR & ")" & " as their CSR. Are you sure?", vbYesNo, ProgramName)
If myResponse = vbYes Then
    mysql = "SELECT * FROM dbo_ContactGeneral WHERE SalesRepID = " & Me.cboSalesRep
    Set myrs = CurrentDb.OpenRecordset(mysql, dbOpenDynaset, dbSeeChanges)

    
    myrs.MoveFirst
    Do Until myrs.EOF
        myrs.Edit
        myrs!CsrID = Me.cboNewCSR
        myrs.Update
        myrs.MoveNext
    Loop
Else
    MsgBox "No changes made."

End If

End Sub