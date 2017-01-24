Operation =1
Option =0
Begin InputTables
    Name ="dbo_MailItem"
    Name ="qryTaskCategory"
End
Begin OutputColumns
    Expression ="dbo_MailItem.*"
    Expression ="qryTaskCategory.TaskCategory"
End
Begin Joins
    LeftTable ="dbo_MailItem"
    RightTable ="qryTaskCategory"
    Expression ="dbo_MailItem.CategoryID = qryTaskCategory.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x42f3a3289ef5bf4a86eaaa2c8f106eb0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000033d12d2bc9276542837dba200232433800000000cfcd38da ,
    0x0dd8e4400000000000000000640062006f005f004d00610069006c0049007400 ,
    0x65006d00000000000000c48983360b8a474a9b40f8c4b3054ac5000000008cb3 ,
    0xc1320fd8e44000000000000000007100720079005400610073006b0043006100 ,
    0x7400650067006f0072007900000000000000d2f1a09f98f39147bd88f13c6baf ,
    0xc21107000000c48983360b8a474a9b40f8c4b3054ac55400610073006b004300 ,
    0x61007400650067006f00720079000000000000009262c6e455c0df448b8ff1ad ,
    0x1160bac40700000033d12d2bc9276542837dba20023243384300610074006500 ,
    0x67006f00720079004900440000000000000046298f9267a8544db8d6ff79106e ,
    0x114007000000c48983360b8a474a9b40f8c4b3054ac549004400000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="qryTaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =114
    Top =178
    Right =1607
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
    Bottom =502
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =292
        Bottom =369
        Top =0
        Name ="dbo_MailItem"
        Name =""
    End
    Begin
        Left =476
        Top =45
        Right =620
        Bottom =189
        Top =0
        Name ="qryTaskCategory"
        Name =""
    End
End
