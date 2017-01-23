Version =20
VersionRequired =20
PublishOption =1
Checksum =-1230258699
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
    ItemSuffix =5
    Left =2325
    Top =1560
    Right =23400
    Bottom =12060
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0xc22515fa1433e440
    End
    GUID = Begin
        0xaf7ce3e7d554344fbf586f0a9749b682
    End
    NameMap = Begin
        0x0acc0e5500000000000000000000000000000000000000000c00000005000000 ,
        0x0000000000000000000000000000
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
                0x000872fca5a33f4aa94bc125e78beb66
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
                    Left =3600
                    Top =600
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtStartInvoice"
                    GUID = Begin
                        0x567f227f45ea3347bb0d0d00c2a4c7fa
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3600
                    LayoutCachedTop =600
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =915
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1800
                            Top =600
                            Width =1665
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Starting Invoice #"
                            GUID = Begin
                                0x26ef87cb0328ed44857c735846900cda
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1800
                            LayoutCachedTop =600
                            LayoutCachedWidth =3465
                            LayoutCachedHeight =915
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3600
                    Top =1035
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtEndInvoice"
                    GUID = Begin
                        0xad95906447642949ba370a8b35dd3d03
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =3600
                    LayoutCachedTop =1035
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =1350
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1800
                            Top =1035
                            Width =1665
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Ending Invoice #"
                            GUID = Begin
                                0x4b1509378c9d4b4b997a282f6885d3c7
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1800
                            LayoutCachedTop =1035
                            LayoutCachedWidth =3465
                            LayoutCachedHeight =1350
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5760
                    Top =720
                    Width =2580
                    TabIndex =2
                    ForeColor =4210752
                    Name ="cmdPrintEnvelopes"
                    Caption ="Print Envelopes"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x231ea2f747b7c44f8a32e60b813b1349
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =5760
                    LayoutCachedTop =720
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =1080
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

Private Sub cmdPrintEnvelopes_Click()
myinvoice = Val(Me.txtStartInvoice)
myEndInvoice = Val(Me.txtEndInvoice)

Dim myRST As Recordset
Set myRST = CurrentDb.OpenRecordset("dbo_projectHeader", dbOpenDynaset, dbSeeChanges)


done = False

Do Until done = True

    myRST.FindFirst "[InvoiceNum] = " & myinvoice
    If myRST.NoMatch = False Then
    
        DoCmd.OpenReport "rptDocketEnvelope", acViewNormal, , "[InvoiceNum] = " & myinvoice
    End If
    
    myinvoice = myinvoice + 1
    
    If myinvoice > myEndInvoice Then
        done = True
    End If
    
Loop

End Sub