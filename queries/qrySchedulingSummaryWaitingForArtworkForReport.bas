Operation =1
Option =1
Where ="(NZ([DocketNum],0) > 0 AND NZ([InvoiceNum],0) = 0)  AND ([DueDate] >= #01/01/190"
    "0#) AND ([DueDate] <= #12/31/2199#)"
Begin InputTables
    Name ="qrySchedulingSummaryWaitingForArtwork"
End
Begin OutputColumns
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x9607b34e91e92d48aab7e007e0bd308e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000009de5890153fda140b54e448a4d75d26400000000732f7f17 ,
    0x50e0e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d00610072007900570061006900740069006e00 ,
    0x670046006f00720041007200740077006f0072006b00000000000000749d4175 ,
    0xd9cbb541b77414bf76f2aa9c070000009de5890153fda140b54e448a4d75d264 ,
    0x44006f0063006b00650074004e0075006d000000000000007da6a641b3cf604b ,
    0x95c0700a612b4585070000009de5890153fda140b54e448a4d75d26449006e00 ,
    0x76006f006900630065004e0075006d000000000000005ba2247b30523747bea5 ,
    0xebc1b157cfba070000009de5890153fda140b54e448a4d75d264440075006500 ,
    0x4400610074006500000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.VendorPackingLi"
            "stNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.SortOrder"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.Prerequisite"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ShipFlag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.FriendlyDescrip"
            "tion"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteSelect1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteSelect3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteSelect5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.invoicenum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.CSRInit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.Hrs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.DueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.qryProjectComponentPressMinPressDate.MinOf"
            "PressDateExp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.VendorNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ComponentType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.SpecifiedDueDat"
            "e"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MailApprovalReq"
            "uired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteNumDisp"
            "lay"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteQty5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.SalesRepInit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.myPressDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ProofApprovedDa"
            "te"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MailProofApprov"
            "edDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.CompNamewQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ShippedWaybill"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteAmt5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteSelect2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteSelect4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.Expr1050"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.Expr1051"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ArtYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DataExpectedDat"
            "e"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.FinalQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.Expr1013"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ShipDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ShippedVia"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.ExtQuoteQty4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.ActualMHOutsidesrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.StLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.DYLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.MHMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectComponentHeader.InPlanning"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryWaitingForArtwork.dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1579
    Bottom =980
    Left =-1
    Top =-1
    Right =1471
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =768
        Bottom =527
        Top =0
        Name ="qrySchedulingSummaryWaitingForArtwork"
        Name =""
    End
End
