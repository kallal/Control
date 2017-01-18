Operation =1
Option =0
Where ="(((ssQryOrderDetails.ShippingStatusID)=195))"
Begin InputTables
    Name ="ssQryOrderDetails"
    Name ="ssd_Orders"
End
Begin OutputColumns
    Expression ="ssd_Orders.*"
    Expression ="ssQryOrderDetails.ShippingStatusID"
End
Begin Joins
    LeftTable ="ssQryOrderDetails"
    RightTable ="ssd_Orders"
    Expression ="ssQryOrderDetails.OrderID = ssd_Orders.OrderID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x9ccbd0e5d8a70e4abacf090a53e3da83
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7de00d33cbda5408b19a2c22eefc05d00000000c236a720 ,
    0x0b5be4400000000000000000730073005100720079004f007200640065007200 ,
    0x440065007400610069006c0073000000000000009de67af8997ceb4982bbfa02 ,
    0x6b3f2322000000006f8e39c2ea62e44000000000000000007300730064005f00 ,
    0x4f00720064006500720073000000000000009fd49a36f51e5b4193740c70cf2c ,
    0xedae07000000d7de00d33cbda5408b19a2c22eefc05d53006800690070007000 ,
    0x69006e006700530074006100740075007300490044000000000000008f781fe1 ,
    0x30166244bcba3075cbbff20f07000000d7de00d33cbda5408b19a2c22eefc05d ,
    0x4f00720064006500720049004400000000000000d5ab509d912562469e80fca7 ,
    0xb615e9c6070000009de67af8997ceb4982bbfa026b3f23224f00720064006500 ,
    0x720049004400000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.OrderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.ShippingStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.ShippedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.ProductType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.CreationDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.ProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.StatusDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.Copies"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.CustomerPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.Path"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.RefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.OutputDeviceName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.QueueID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.StatusInQueue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.QueueName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.TrackingCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.dbo_viewSSQryOrderDetails.PrintedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.RefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.ExpirationDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CustomerNote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.IsPointOfSale"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.ResultMatrixID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CurrencyExchangeRateID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Tax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.TotalPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.IsPaid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PaymentMethodID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CSR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.NextFollowUp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.InternalNote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.RefQuoteID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PONumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Numerator"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PaymentTransactionID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.SalesPerson"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.ExternalApprovalSystemID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.billingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.UrgencyPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.ShippingPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.InvoiceID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.Revision"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CustomerRefCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.LastFollowUp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.ReceivedAs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.LostToPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.AccountManager"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField10"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.DiscountPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.RequiredDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.SubtotalPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.LostTo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderField8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.QuoteDeliveryDefined"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.UserID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.OrderStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.IP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Orders.PaymentTerms"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.StatusInQueue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.OrderedProductStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssQryOrderDetails.ShippingStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x22ab67f227eaf3409f008af5bab82b69
        End
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1607
    Bottom =980
    Left =-1
    Top =-1
    Right =1537
    Bottom =543
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =582
        Top =41
        Right =950
        Bottom =543
        Top =0
        Name ="ssQryOrderDetails"
        Name =""
    End
    Begin
        Left =120
        Top =41
        Right =493
        Bottom =416
        Top =0
        Name ="ssd_Orders"
        Name =""
    End
End
