Version =20
VersionRequired =20
PublishOption =1
Checksum =-383470092
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
    ItemSuffix =18
    Left =1980
    Top =1560
    Right =23775
    Bottom =12345
    DatasheetGridlinesColor =16446942
    RecSrcDt = Begin
        0x82fabdaf942de440
    End
    GUID = Begin
        0x58cdd04e2815dc49a57529feb7e016d0
    End
    NameMap = Begin
        0x0acc0e55000000004a28c276f65b5b4a981e3186a2e2e0620100000026231975 ,
        0xec62e4400000000000000000660072006d005200650063006500690076006900 ,
        0x6e0067004f007500740073006900640065005300720076000000000000003445 ,
        0xa15d4200ae4ebe406fa6d49e800b00000000f224e9a24ecce440000000000000 ,
        0x00007100720079004d005400430062006f00560065006e0064006f0072000000 ,
        0x00000000000000000000000000000000000000000c0000000500000000000000 ,
        0x00000000000000000000
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
            Name ="Detail"
            GUID = Begin
                0x0509af326f69694181918d410b1df564
            End
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
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
                    TabIndex =4
                    ForeColor =4210752
                    Name ="cmdReceive"
                    Caption ="RECEIVE"
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
                    Left =15240
                    Top =300
                    Width =3240
                    Height =360
                    FontSize =14
                    FontWeight =700
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtVendorOrder"
                    GUID = Begin
                        0x5c2afe15d5132144850bd243a147e753
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =15240
                    LayoutCachedTop =300
                    LayoutCachedWidth =18480
                    LayoutCachedHeight =660
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =10440
                            Top =300
                            Width =4710
                            Height =480
                            FontSize =14
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label13"
                            Caption ="Vendor Order Number (Packing Slip):"
                            GUID = Begin
                                0x5b30bed574fd3e40841b1cd61097afe7
                            End
                            GridlineColor =10921638
                            LayoutCachedLeft =10440
                            LayoutCachedTop =300
                            LayoutCachedWidth =15150
                            LayoutCachedHeight =780
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7800
                    Top =420
                    Height =300
                    TabIndex =5
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
                    RowSource ="\"ORDERED, AT VENDOR\";\"ORDERED, NOT YET SHIPPED TO VENDOR\";\"NOT ORDERED\";\""
                        "RECEIVED (BUT NOT INVOICED)\";\"SHOW ALL\""
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"ORDERED, AT VENDOR\""
                    GridlineColor =10921638

                    LayoutCachedLeft =1380
                    LayoutCachedTop =60
                    LayoutCachedWidth =4800
                    LayoutCachedHeight =300
                End
                Begin Subform
                    OverlapFlags =85
                    Left =120
                    Top =1020
                    Width =20580
                    Height =8820
                    TabIndex =6
                    BorderColor =10921638
                    Name ="frmReceivingOutsideSrv"
                    SourceObject ="Form.frmReceivingOutsideSrv"
                    GUID = Begin
                        0x5be04a39acbfe349879dadfa7344c70d
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedTop =1020
                    LayoutCachedWidth =20700
                    LayoutCachedHeight =9840
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

    Case "ORDERED, AT VENDOR"
        myfilter = "nz(OutToVendorActual,0) > 0 and nz(QtyReceived,0) < nz(qtyOrdered,0)"
        
    Case "ORDERED, NOT YET SHIPPED TO VENDOR"
        myfilter = "nz(OutToVendorActual,0) = 0 and nz(QtyReceived,0) < nz(qtyOrdered,0)"
        
    Case "NOT ORDERED" 'no vendor listed
        myfilter = "NZ(VendName,'') = ''"
        
    Case "RECEIVED (BUT NOT INVOICED)" 'HAS EXPECTED DATE AND ARRIVAL DATE BUT NOT INVOICED (INVOICED DON'T COME THROUGH TO THIS QUERY)
        myfilter = "nz(QtyReceived,0) = nz(qtyOrdered,0)"
    
    Case "SHOW ALL"
        myfilter = "true = true"
    
End Select

If Nz(Me.txtFindDocket, 0) > 0 Then
    myfilter = myfilter & " AND [DOCKETNUM] = " & Me.txtFindDocket
End If

If Nz(Me.txtFindVendor, 0) <> 0 Then
    myfilter = myfilter & " AND [VENDORID] = " & Me.txtFindVendor
End If


Me.frmReceivingOutsideSrv.Form.Filter = myfilter
Me.frmReceivingOutsideSrv.Form.FilterOn = True
'If Me.Dirty Then Me.Dirty = False

End Sub

Private Sub cmdReceive_Click()
'Validation of data...
Dim myRST As Recordset
Set myRST = Me.frmReceivingOutsideSrv.Form.RecordsetClone

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

'Is there a Vendor Packing Slip number

If Nz(Me.txtVendorOrder, "") = "" Then
    MsgBox "You need to enter a Vendor Order Number (Packing Slip) before receiving these items. Please try again.", vbCritical, ProgramName
    Exit Sub
End If



'Then, process the receipt of goods.
'Add the QtyToReceive to the QtyReceived in each line, and clear the selected and tags.
myRST.MoveFirst
Do Until myRST.EOF
    If Nz(myRST!qtyToReceive, 0) > 0 Then
        myRST.Edit
        myRST!QtyReceived = Nz(myRST!QtyReceived, 0) + myRST!qtyToReceive
        myRST!ArrivedOn = Now()
        myRST!ReceivedBy = cLoginID
        
        AddContactHistory myRST!ContactGeneralID, , , myRST!ProjectHeaderID, 1, "Received " & myRST!qtyToReceive  'add a history line to the docket showing how much of each line was received

        'DoCmd.OpenReport "rptReceivingLabels2", acViewNormal, , "[ID] = " & myRst!ID 'Label not yet working...
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
Me.txtVendorOrder = Null

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