Operation =1
Option =16
RowCount ="100"
Begin InputTables
    Name ="dbo_viewContactHistory"
End
Begin OutputColumns
    Expression ="dbo_viewContactHistory.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x8b70668e9f5c894f80ecf04619a56567
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000640062006f005f00760069006500770043006f00 ,
    0x6e00740061006300740048006900730074006f00720079000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_viewContactHistory.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ContactLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ContactNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.Employee"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.LocationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ContactName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.QuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viewContactHistory.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1607
    Bottom =859
    Left =-1
    Top =-1
    Right =1497
    Bottom =388
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =102
        Top =27
        Right =246
        Bottom =171
        Top =0
        Name ="dbo_viewContactHistory"
        Name =""
    End
End
