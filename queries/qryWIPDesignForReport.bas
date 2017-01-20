Operation =1
Option =1
Where ="NZ([DocketNum],0) > 0    AND ([DueDate] >= #01/01/1900#) AND ([DueDate] <= #12/3"
    "1/2199#) AND nz([completiondate],0) = 0"
Begin InputTables
    Name ="qryWIPDesign"
End
Begin OutputColumns
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000009bf706aec4233d4082232b16c7de599800000000954f2d16 ,
    0x50e0e44000000000000000007100720079005700490050004400650073006900 ,
    0x67006e00000000000000749d4175d9cbb541b77414bf76f2aa9c070000009bf7 ,
    0x06aec4233d4082232b16c7de599844006f0063006b00650074004e0075006d00 ,
    0x0000000000001f66a93ab2e7d746bc298b37fd98fb12070000009bf706aec423 ,
    0x3d4082232b16c7de599844007500650044006100740065000000000000009059 ,
    0x1afcca33cc4a8f11af1822f3c849070000009bf706aec4233d4082232b16c7de ,
    0x599863006f006d0070006c006500740069006f006e0064006100740065000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
dbBinary "GUID" = Begin
    0x637ffd9356d80942b82c7419d929e50c
End
Begin
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.HoursEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.HoursAct"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.DaysEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.DaysAct"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.IsEnabled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.IsComplete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.DueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.ProjectNotes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.Mail_PrintReadyYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.Mail_Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.DesignDue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.DesignDueSortOrder"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.SalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.CompletedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.myPriority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentCreative.ProductType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.MailComponentYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.Mail_Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectComponentHeader.FriendlyDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryWIPDesign.dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DesignDueSortOrder"
        dbBinary "GUID" = Begin
            0x78bf2e5fba71724cb929bb0cc6becccf
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbBinary "GUID" = Begin
            0x5c36fb1d89cda7488ae26bda470bd190
        End
    End
    Begin
        dbText "Name" ="CompletedDate"
        dbBinary "GUID" = Begin
            0x07825d743d0a414bba03d9b17eba1945
        End
    End
    Begin
        dbText "Name" ="myPriority"
        dbBinary "GUID" = Begin
            0xa6421ec1c8ab1242878f571a5479364f
        End
    End
    Begin
        dbText "Name" ="Mail_Status"
        dbBinary "GUID" = Begin
            0x326c557b2648544d808e79ec1c6d8f2e
        End
    End
    Begin
        dbText "Name" ="DesignDue"
        dbBinary "GUID" = Begin
            0x92016cc2bc88b04bb53e9c92f42c72f2
        End
    End
End
Begin
    State =0
    Left =-415
    Top =42
    Right =1339
    Bottom =842
    Left =-1
    Top =-1
    Right =1722
    Bottom =346
    Left =365
    Top =0
    ColumnsShown =539
    Begin
        Left =147
        Top =74
        Right =291
        Bottom =218
        Top =0
        Name ="qryWIPDesign"
        Name =""
    End
End
