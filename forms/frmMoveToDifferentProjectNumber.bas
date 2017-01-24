Version =20
VersionRequired =20
PublishOption =1
Checksum =-181402566
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
    ItemSuffix =10
    Left =1140
    Top =1980
    Right =10560
    Bottom =9525
    DatasheetGridlinesColor =16446942
    Filter ="[id] = 101"
    RecSrcDt = Begin
        0x2b2765232c33e440
    End
    GUID = Begin
        0x68c47c1919c9b24885bda98d735f665c
    End
    NameMap = Begin
        0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb4000000001c04ba6d ,
        0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
        0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
        0x000000000000fe926418f32ed843874a57f371c555c7000000009b2fba6dec62 ,
        0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
        0x480065006100640065007200000000000000d7c549c33168bc4ab70151c855c0 ,
        0xb6b900000000bad9a96dec62e4400000000000000000640062006f005f004300 ,
        0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
        0x118be950d66974438268ddc04c06af1a070000000e7a128852f41a47b128e4f3 ,
        0xb41e4fb449004400000000000000873fed1bdd4daf46b59105d9e5c28c310700 ,
        0x00000e7a128852f41a47b128e4f3b41e4fb4500072006f006a00650063007400 ,
        0x480065006100640065007200490044000000000000003c3a0e9cef0ad74dbd10 ,
        0x42d7c3a3d51d070000000e7a128852f41a47b128e4f3b41e4fb443006f006d00 ,
        0x70006f006e0065006e0074004e0061006d00650000000000000081751aaa23f6 ,
        0x9a40a072b77523cc41aa07000000fe926418f32ed843874a57f371c555c75600 ,
        0x6f0069006400000000000000bb0ae340649d1049aae8ec4ebde6085c07000000 ,
        0xfe926418f32ed843874a57f371c555c769006e0076006f006900630065006e00 ,
        0x75006d00000000000000124b02a694dd0e4c96264abff258312707000000d7c5 ,
        0x49c33168bc4ab70151c855c0b6b943006f006d0070004e0061006d0065000000 ,
        0x000000006f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843 ,
        0x874a57f371c555c74900440000000000000089ff919c8c2cb04795bac03adb54 ,
        0x784507000000fe926418f32ed843874a57f371c555c743006f006e0074006100 ,
        0x63007400470065006e006500720061006c004900440000000000000003933b4b ,
        0x9f324445a82e368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b9 ,
        0x49004400000000000000000000000000000000000000000000000c0000000500 ,
        0x00000000000000000000000000000000
    End
    RecordSource ="SELECT dbo_ProjectComponentHeader.ID, dbo_ProjectComponentHeader.ProjectHeaderID"
        ", dbo_ProjectComponentHeader.ComponentName, dbo_ProjectHeader.Void, dbo_ProjectH"
        "eader.invoicenum, dbo_ContactGeneral.CompName FROM (dbo_ProjectComponentHeader L"
        "EFT JOIN dbo_ProjectHeader ON dbo_ProjectComponentHeader.ProjectHeaderID = dbo_P"
        "rojectHeader.ID) LEFT JOIN dbo_ContactGeneral ON dbo_ProjectHeader.ContactGenera"
        "lID = dbo_ContactGeneral.ID WHERE (((dbo_ProjectHeader.Void)=False) AND ((dbo_Pr"
        "ojectHeader.invoicenum) Is Null)); "
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
                0xd9eac3afeedd5f40a481c63999924bfc
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
                    Left =1920
                    Top =180
                    Width =2340
                    Height =315
                    ColumnWidth =6780
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ComponentName"
                    ControlSource ="ComponentName"
                    StatusBarText ="Name of this portion of the job"
                    GUID = Begin
                        0xbb7936d64f13384491003981f6d3b247
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =1920
                    LayoutCachedTop =180
                    LayoutCachedWidth =4260
                    LayoutCachedHeight =495
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =180
                            Width =1725
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label0"
                            Caption ="ComponentName"
                            GUID = Begin
                                0xffff96e6240aa8468208a2afeea8897f
                            End
                            GridlineColor =10921638
                            LayoutCachedTop =180
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =495
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6360
                    Top =180
                    Width =2280
                    Height =315
                    ColumnWidth =4380
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CompName"
                    ControlSource ="CompName"
                    GUID = Begin
                        0xfc173565c570a2409ebe7160d6dca94f
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =6360
                    LayoutCachedTop =180
                    LayoutCachedWidth =8640
                    LayoutCachedHeight =495
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4740
                            Top =180
                            Width =1545
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Company Name"
                            GUID = Begin
                                0x5612ccb36c591b42a30b3ab017a74204
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =4740
                            LayoutCachedTop =180
                            LayoutCachedWidth =6285
                            LayoutCachedHeight =495
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2880
                    Top =1680
                    Width =2880
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtChangeToNumber"
                    GUID = Begin
                        0x4eeaedc4bacd6c44ad075e76b16f9087
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2880
                    LayoutCachedTop =1680
                    LayoutCachedWidth =5760
                    LayoutCachedHeight =1995
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1080
                            Top =1680
                            Width =1755
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Move to Estimate:"
                            GUID = Begin
                                0x18dbddbb3a0e6c4cb4d5414cf6c66292
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =1080
                            LayoutCachedTop =1680
                            LayoutCachedWidth =2835
                            LayoutCachedHeight =1995
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2880
                    Top =2160
                    Width =2880
                    FontSize =9
                    TabIndex =3
                    ForeColor =4210752
                    Name ="cmdChangeEstimate"
                    Caption ="CHANGE ESTIMATE AND CLOSE"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x6b30ba013e141040a8db9cff435e5989
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2880
                    LayoutCachedTop =2160
                    LayoutCachedWidth =5760
                    LayoutCachedHeight =2520
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
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4200
                    Top =3600
                    Height =315
                    ColumnWidth =2670
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ProjectHeaderID"
                    ControlSource ="ProjectHeaderID"
                    StatusBarText ="Link to dbo_ProjectHeader"
                    GUID = Begin
                        0x023b80c9ad5d9b40a8fcf0f7ea566abf
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =4200
                    LayoutCachedTop =3600
                    LayoutCachedWidth =5640
                    LayoutCachedHeight =3915
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2400
                            Top =3600
                            Width =1605
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label9"
                            Caption ="ProjectHeaderID"
                            GUID = Begin
                                0x33563560ffd2824f9f12f6316a7cce70
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =2400
                            LayoutCachedTop =3600
                            LayoutCachedWidth =4005
                            LayoutCachedHeight =3915
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

Private Sub cmdChangeEstimate_Click()
'Validate input number
If Val(Me.txtChangeToNumber) <= 499999 Or Me.txtChangeToNumber >= 599999 Then
    MsgBox "Estimate numbers begin with a 5....", vbCritical, ProgramName
    Exit Sub
End If

Dim myRST As Recordset

Set myRST = CurrentDb.OpenRecordset("dbo_projectHeader", dbOpenDynaset, dbSeeChanges)

myRST.FindFirst "[QuoteNum] = " & Me.txtChangeToNumber

If myRST.NoMatch Then
    MsgBox "Estimate number is invalid. Try again.", vbCritical, ProgramName
    Exit Sub
End If

mynewprojectid = myRST!ID


myRST.Close

Me.ProjectHeaderID = mynewprojectid

DoCmd.Close

End Sub