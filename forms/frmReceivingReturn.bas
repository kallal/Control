Version =20
VersionRequired =20
PublishOption =1
Checksum =1706580503
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridX =24
    GridY =24
    Width =20880
    DatasheetFontHeight =11
    ItemSuffix =17
    Left =2325
    Top =1560
    Right =23205
    Bottom =11445
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x82fabdaf942de440
    End
    GUID = Begin
        0x3643b1349d34a349a9a2a6d9365fcfbc
    End
    NameMap = Begin
        0x0acc0e55000000005839504d0fc34342a7b1462e2a2aa3ea010000007b8b9b72 ,
        0xec62e4400000000000000000660072006d005200650063006500690076006900 ,
        0x6e006700520065007400750072006e00530074006f0063006b00000000000000 ,
        0x3445a15d4200ae4ebe406fa6d49e800b00000000042b39faefc8e44000000000 ,
        0x000000007100720079004d005400430062006f00560065006e0064006f007200 ,
        0x000000000000000000000000000000000000000000000c000000050000000000 ,
        0x000000000000000000000000
    End
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
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
            Height =9900
            BackColor =15592953
            Name ="Detail"
            GUID = Begin
                0x0509af326f69694181918d410b1df564
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =120
                    Top =1020
                    Width =20640
                    Height =8760
                    TabIndex =4
                    BorderColor =10921638
                    Name ="frmReceivingStock"
                    SourceObject ="Form.frmReceivingReturnStock"
                    GUID = Begin
                        0xb5dfd885338fc4439354a58313d2461a
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =120
                    LayoutCachedTop =1020
                    LayoutCachedWidth =20760
                    LayoutCachedHeight =9780
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =4020
                    Top =420
                    Width =3660
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =2302755
                    GUID = Begin
                        0xc53975187c5a0c4bb69fc9f179e74754
                    End
                    Name ="txtFindVendor"
                    RowSourceType ="Table/Query"
                    RowSource ="qryMTCboVendor"
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638
                    LayoutCachedLeft =4020
                    LayoutCachedTop =420
                    LayoutCachedWidth =7680
                    LayoutCachedHeight =735
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3120
                            Top =420
                            Width =840
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Vendor:"
                            GUID = Begin
                                0x023ab265dfb1014683684624d796fd8b
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =3120
                            LayoutCachedTop =420
                            LayoutCachedWidth =3960
                            LayoutCachedHeight =735
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1620
                    Top =420
                    Width =1260
                    Height =315
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtFindDocket"
                    AfterUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    GUID = Begin
                        0xa312ea6d6370d140aaf8ebd4afba68d7
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =1620
                    LayoutCachedTop =420
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =735
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =300
                            Top =420
                            Width =1245
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label4"
                            Caption ="Docket (PO):"
                            GUID = Begin
                                0x4bae0bb55a193944b0bf9c9286adeed9
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =300
                            LayoutCachedTop =420
                            LayoutCachedWidth =1545
                            LayoutCachedHeight =735
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =18660
                    Top =300
                    Width =1740
                    FontSize =14
                    FontWeight =700
                    TabIndex =5
                    ForeColor =4210752
                    Name ="cmdReturn"
                    Caption ="RETURN"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x89d55d81750f064ba8adb9cc5049f697
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =18660
                    LayoutCachedTop =300
                    LayoutCachedWidth =20400
                    LayoutCachedHeight =660
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
                Begin Label
                    FontItalic = NotDefault
                    OverlapFlags =85
                    Left =120
                    Top =60
                    Width =1200
                    Height =240
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label9"
                    Caption ="SHOW ONLY..."
                    GUID = Begin
                        0x69c3de6fb8b821488ffc707c13a7b146
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =120
                    LayoutCachedTop =60
                    LayoutCachedWidth =1320
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =13440
                    Top =300
                    Width =5040
                    Height =360
                    FontSize =14
                    FontWeight =700
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtReturnReason"
                    GUID = Begin
                        0x5c2afe15d5132144850bd243a147e753
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =13440
                    LayoutCachedTop =300
                    LayoutCachedWidth =18480
                    LayoutCachedHeight =660
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =10440
                            Top =300
                            Width =2880
                            Height =480
                            FontSize =14
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label13"
                            Caption ="Reason for Return:"
                            GUID = Begin
                                0x5b30bed574fd3e40841b1cd61097afe7
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =10440
                            LayoutCachedTop =300
                            LayoutCachedWidth =13320
                            LayoutCachedHeight =780
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7800
                    Top =420
                    Height =300
                    TabIndex =6
                    ForeColor =4210752
                    Name ="Command16"
                    Caption ="SHOW ALL"
                    OnClick ="[Event Procedure]"
                    GUID = Begin
                        0x6f058a18a87a874b8c83560d39c8556c
                    End
                    GridlineColor =10921638
                    LayoutCachedLeft =7800
                    LayoutCachedTop =420
                    LayoutCachedWidth =9240
                    LayoutCachedHeight =720
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
                Begin ComboBox
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1380
                    Top =60
                    Width =3420
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =2302755
                    GUID = Begin
                        0x1f624a332340a94b9940e66fd66c26fb
                    End
                    Name ="cboShowOnly"
                    RowSourceType ="Value List"
                    RowSource ="\"RECEIVED\""
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"RECEIVED\""
                    GridlineColor =10921638
                    LayoutCachedLeft =1380
                    LayoutCachedTop =60
                    LayoutCachedWidth =4800
                    LayoutCachedHeight =300
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

Private Sub cboShowOnly_AfterUpdate()
Dim myfilter As String

Select Case cboShowOnly
        
    Case "RECEIVED" 'HAS EXPECTED DATE AND ARRIVAL DATE BUT NOT INVOICED (INVOICED DON'T COME THROUGH TO THIS QUERY)
        myfilter = "NZ(ArrivalDate, 0) <> 0"


End Select

If Nz(Me.txtFindDocket, 0) > 0 Then
    myfilter = myfilter & " AND [DOCKETNUM] = " & Me.txtFindDocket
End If

If Nz(Me.txtFindVendor, 0) <> 0 Then
    myfilter = myfilter & " AND [VENDORID] = " & Me.txtFindVendor
End If


Me.frmReceivingStock.Form.Filter = myfilter
Me.frmReceivingStock.Form.FilterOn = True
If Me.Dirty Then Me.Dirty = False
End Sub



Private Sub cmdReturn_Click()
'Validation of data...
Dim myRST As Recordset
Set myRST = Me.frmReceivingStock.Form.RecordsetClone

myRST.FindFirst ("nz([QtyToReceive],0) > 0") 'Is there any QtyIn at all?
If myRST.NoMatch Then
    MsgBox "None of the items in the list have been tagged to be received. Please select the lines and quantities to receive and try again.", vbCritical, ProgramName
    Exit Sub
End If

tmpDocketNum = myRST!DocketNum
done = False
myMultipleDockets = False


Do Until done = True
    myRST.FindNext ("nz([QtyToReceive],0) > 0")
    If myRST.NoMatch Then
        done = True
    Else
        If myRST!DocketNum <> tmpDocketNum Then
            myMultipleDockets = True
        End If
    End If
Loop

If myMultipleDockets Then 'Is there a mix of purchase orders on one packing slip - need to ok this.
    myResponse = vbNo
    myResponse = MsgBox("You have indicated that you want to receive items on this Packing Slip from multiple purchase orders. Is that correct?", vbYesNo, ProgramName)
    If myResponse = vbNo Then
        Exit Sub
    End If
End If







'Then, process the receipt of goods.
'Add the QtyToReceive to the QtyReceived in each line, and clear the selected and tags.
myRST.MoveFirst
Do Until myRST.EOF
    If Nz(myRST!qtyToReceive, 0) > 0 Then
        myRST.Edit
        myRST!QtyReceived = myRST!QtyReceived + myRST!qtyToReceive
        myRST!ArrivalDate = Now()
        myRST!ReceivedBy = cLoginID
        
        AddContactHistory myRST!ContactGeneralID, , , myRST!ProjectHeaderID, 1, "Received " & myRST!qtyToReceive & " of " & myRST!Description 'add a history line to the docket showing how much of each line was received

        DoCmd.OpenReport "rptReceivingLabels", acViewNormal, , "[ID] = " & myRST!ID
        myRST!qtyToReceive = Null
        
        myRST.Update
    End If
    myRST.MoveNext
Loop


'Print or offer to print receiving paperwork or labels.

'myresponse = 1
'myresponse = InputBox("How many labels do you want for this shipment?", ProgramName)
'If myresponse <> 0 Then
'    MsgBox "Print Labels"
'End If


'requery the screen and get ready for the next receipt

myRST.Close



If Me.Dirty Then Me.Dirty = False
Me.Repaint
End Sub

Private Sub Command16_Click()
Me.txtFindDocket = Null
Me.txtFindVendor = Null
Call cboShowOnly_AfterUpdate
If Me.Dirty Then Me.Dirty = False
End Sub

Private Sub Form_Load()
Call cboShowOnly_AfterUpdate
If Me.Dirty Then Me.Dirty = False
End Sub

Private Sub txtFindDocket_AfterUpdate()
If (Nz(Me.txtFindDocket, 0) <= 99999) And (Nz(Me.txtFindDocket, 0) <> 0) Then ' 5 or less digits, add 300000 to it.
    Me.txtFindDocket = Me.txtFindDocket + 300000
End If

Call cboShowOnly_AfterUpdate
If Me.Dirty Then Me.Dirty = False

End Sub

Private Sub txtFindDocket_DblClick(Cancel As Integer)
Me.txtFindDocket = Null
Call cboShowOnly_AfterUpdate
If Me.Dirty Then Me.Dirty = False

End Sub

Private Sub txtFindVendor_AfterUpdate()
Call cboShowOnly_AfterUpdate
If Me.Dirty Then Me.Dirty = False
End Sub

Private Sub txtFindVendor_DblClick(Cancel As Integer)
Me.txtFindVendor = Null

Call cboShowOnly_AfterUpdate
If Me.Dirty Then Me.Dirty = False
End Sub