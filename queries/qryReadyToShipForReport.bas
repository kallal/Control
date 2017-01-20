Operation =1
Option =1
Where ="(NZ([DocketNum],0) > 0 AND NZ([InvoiceNum],0) = 0)  AND ([DueDate] >= #01/01/190"
    "0#) AND ([DueDate] <= #12/31/2199#)"
Begin InputTables
    Name ="qryReadyToShip"
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
    0xf5fcb276b8be8d4092ea453b0f67c056
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000091833fcd8fa2924abacbe208152ac46100000000e4554d11 ,
    0x50e0e44000000000000000007100720079005200650061006400790054006f00 ,
    0x5300680069007000000000000000749d4175d9cbb541b77414bf76f2aa9c0700 ,
    0x000091833fcd8fa2924abacbe208152ac46144006f0063006b00650074004e00 ,
    0x75006d000000000000007da6a641b3cf604b95c0700a612b4585070000009183 ,
    0x3fcd8fa2924abacbe208152ac46149006e0076006f006900630065004e007500 ,
    0x6d000000000000005ba2247b30523747bea5ebc1b157cfba0700000091833fcd ,
    0x8fa2924abacbe208152ac4614400750065004400610074006500000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="qryReadyToShip.Expr1051"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.SortOrder"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.Prerequisite"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ShipFlag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.FriendlyDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.VendorPackingListNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteAmt5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteSelect2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteSelect4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.Expr1050"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.DueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ArtYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.ShipVia"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4005"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ComponentType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.VendorNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteQty4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.InPlanning"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHOutsidesrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.CompNamewQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ShippedWaybill"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteSelect1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteSelect3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteSelect5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.invoicenum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.CSRInit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.ShipInstruction"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectHeader.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MHOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYBindery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.FinalQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.Expr1013"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ShipDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ShippedVia"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.Expr1031"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteNumDisplay"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.ExtQuoteQty5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYStock"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYCreative"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.SalesRepInit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.DYPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.dbo_ProjectComponentHeader.StOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryReadyToShip.ActualMHLFFinish"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =43
    Top =114
    Right =1498
    Bottom =772
    Left =-1
    Top =-1
    Right =1423
    Bottom =341
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qryReadyToShip"
        Name =""
    End
End
