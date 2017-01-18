Operation =1
Option =0
Having ="(((dbo_ProjectHeader.void)=False) AND ((Format([invoicedate],\"mm\"))<>\"\"))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_ProjectHeader"
    Name ="qryRptSalesHeader_SellforSum"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Alias ="SumOfsellfor"
    Expression ="Sum(qryRptSalesHeader_SellforSum.sellfor)"
    Expression ="dbo_ProjectHeader.void"
    Alias ="InvMOnth"
    Expression ="Format([invoicedate],\"mm\")"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_CompanyEmployee.ID = dbo_ProjectHeader.SalesRepID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="qryRptSalesHeader_SellforSum"
    Expression ="dbo_ProjectHeader.ID = qryRptSalesHeader_SellforSum.ProjectHeaderID"
    Flag =2
End
Begin Groups
    Expression ="dbo_CompanyEmployee.ID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.FN"
    GroupLevel =0
    Expression ="dbo_CompanyEmployee.LN"
    GroupLevel =0
    Expression ="dbo_ProjectHeader.void"
    GroupLevel =0
    Expression ="Format([invoicedate],\"mm\")"
    GroupLevel =0
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
dbBinary "GUID" = Begin
    0x8a90249cb3f4c74684ea50d888540acd
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000431c785ce507fd4487a1822c7cd25c6600000000412096c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000fe926418f32ed843 ,
    0x874a57f371c555c7000000009b2fba6dec62e440000000000000000064006200 ,
    0x6f005f00500072006f006a006500630074004800650061006400650072000000 ,
    0x000000005b083f7056ff724f87556f9a4773200e000000005e2b8d70ec62e440 ,
    0x0000000000000000710072007900520070007400530061006c00650073004800 ,
    0x650061006400650072005f00530065006c006c0066006f007200530075006d00 ,
    0x0000000000004deb041a8bb4db43a25851bc3e57e03d07000000000000000000 ,
    0x00000000000000000000530075006d004f006600730065006c006c0066006f00 ,
    0x7200000000000000b1c8debde0f66b4f85f3398688fc30860700000000000000 ,
    0x00000000000000000000000049006e0076004d004f006e007400680000000000 ,
    0x0000c6c54d8e9dff594db3e19de4c2b573f507000000431c785ce507fd4487a1 ,
    0x822c7cd25c66490044000000000000002b42c8be7cfa534a8515b53e50209ccf ,
    0x07000000431c785ce507fd4487a1822c7cd25c6646004e000000000000006ee7 ,
    0x053a7af8f44c9a585dba8febe06007000000431c785ce507fd4487a1822c7cd2 ,
    0x5c664c004e00000000000000b0bd0eeaaff55740a5eb393481fda4f407000000 ,
    0x5b083f7056ff724f87556f9a4773200e730065006c006c0066006f0072000000 ,
    0x0000000081751aaa23f69a40a072b77523cc41aa07000000fe926418f32ed843 ,
    0x874a57f371c555c776006f0069006400000000000000a4ded50498588c4e9f47 ,
    0x4307ea76385807000000fe926418f32ed843874a57f371c555c769006e007600 ,
    0x6f00690063006500640061007400650000000000000023f6fcc77666d448823b ,
    0x90b11d10e84007000000fe926418f32ed843874a57f371c555c7530061006c00 ,
    0x65007300520065007000490044000000000000006f7f02ef6df8574092eeeafb ,
    0x278f50ec07000000fe926418f32ed843874a57f371c555c74900440000000000 ,
    0x00004a5eec03f45e6e4997b2fc833d2a0514070000005b083f7056ff724f8755 ,
    0x6f9a4773200e500072006f006a00650063007400480065006100640065007200 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfsellfor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4deb041a8bb4db43a25851bc3e57e03d
        End
    End
    Begin
        dbText "Name" ="InvMOnth"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb1c8debde0f66b4f85f3398688fc3086
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =980
    Left =-1
    Top =-1
    Right =1501
    Bottom =344
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =375
        Bottom =343
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =633
        Bottom =387
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =785
        Top =83
        Right =929
        Bottom =227
        Top =0
        Name ="qryRptSalesHeader_SellforSum"
        Name =""
    End
End
