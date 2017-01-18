Operation =1
Option =0
Where ="(((Left([stOutsideSrv],4))<>\"COMP\"))"
Begin InputTables
    Name ="viewWIPOutsideServices"
End
Begin OutputColumns
    Expression ="viewWIPOutsideServices.*"
    Alias ="duedate"
    Expression ="IIf(Nz([specifiedduedate],0)>0,DateValue([specifiedduedate]),DateValue([assigned"
        "duedate]))"
    Alias ="vendor"
    Expression ="DLookUp(\"[compname]\",\"dbo_contactgeneral\",\"[ID] = \" & [vendoriD])"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xed956df6e031f24cb0f89afb32e68e65
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000008770680dd8c540873fbcbaed7f3c5700000000bd1220c3 ,
    0x78c6e440000000000000000076006900650077005700490050004f0075007400 ,
    0x730069006400650053006500720076006900630065007300000000000000fab8 ,
    0x3380893ef243b6048d77c737282607000000ed956df6e031f24cb0f89afb32e6 ,
    0x8e65640075006500640061007400650000000000000069029aa97bdd25419138 ,
    0x02cc14871b7c07000000ed956df6e031f24cb0f89afb32e68e65760065006e00 ,
    0x64006f007200000000000000274b21e86aec684a990e8252082f914107000000 ,
    0x008770680dd8c540873fbcbaed7f3c5773007000650063006900660069006500 ,
    0x64006400750065006400610074006500000000000000546cc21d13d94f4e8fd3 ,
    0x55f245e01bcc07000000008770680dd8c540873fbcbaed7f3c57610073007300 ,
    0x690067006e00650064006400750065006400610074006500000000000000e182 ,
    0xa6ddca0fd749a6a31e5bbf3caa9907000000008770680dd8c540873fbcbaed7f ,
    0x3c57760065006e0064006f0072006900440000000000000056a154ea1b5e3b4b ,
    0xa4bf5acb6361471d07000000008770680dd8c540873fbcbaed7f3c5773007400 ,
    0x4f00750074007300690064006500530072007600000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x42f675efea105444bdd90749e4576a70
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.VendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4e49c08d1e2e78419c94f2bef2191e5d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xabb5e37d9868a245b5ae69951fbddd95
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.Service"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x257db3a445b6b14abd7a84c71c9c8599
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.Description"
        dbInteger "ColumnWidth" ="3450"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d3ecb9c103d1b4db9bb069ccaa139ee
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.VendorNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0dd03fbf44273e4cb4e43d2f19786c2d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.OutToVendorExpected"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe1619aa2c9a7f046b8700d18b287b68a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.OutToVendorActual"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb3c433436481e4cb7abf69f91abe533
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ExpectedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfe1e608ddd9e764d91bb554831696c7f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ArrivedOn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d9aec86a8e85c41ae9ec5277416d982
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.QuoteAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfdf3a1abadd94649b32c2ebce2cba5d0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0755ac57be424c4e96e96f9d8ef152ba
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe1841d0ccf971c4f9810935405c91393
        End
    End
    Begin
        dbText "Name" ="duedate"
        dbInteger "ColumnWidth" ="3030"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfab83380893ef243b6048d77c7372826
        End
    End
    Begin
        dbText "Name" ="vendor"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x69029aa97bdd2541913802cc14871b7c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5582e448b35d8b4aaf1e07061892d3d9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d279e0e3be7804799330d298b19b1d2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentOutsideService.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.VendorNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OutToVendorActual"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.IsEnabled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.IsComplete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StOutsideSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Service"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ArrivedOn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.QuoteAmt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.PricePerM"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.HardProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ExpectedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Expr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OrderByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OrderDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OutToVendorExpected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Location"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SupplierPackingListNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SupplierOrderNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.QtyReceived"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProofApprovedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.CompletionDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.HardProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =31
    Top =62
    Right =1524
    Bottom =910
    Left =-1
    Top =-1
    Right =1461
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =66
        Top =8
        Right =210
        Bottom =152
        Top =0
        Name ="viewWIPOutsideServices"
        Name =""
    End
End
