Operation =1
Option =0
Where ="(((dbo_ProjectHeader.void)=False) AND ((dbo_ProjectHeader.DocketNum) Is Null))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.QuoteDate"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.void"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Expression ="dbo_ProjectHeader.EstimatorID"
    Expression ="dbo_ProjectHeader.EstimateSentByID"
    Expression ="dbo_ProjectHeader.EstimateSent"
    Expression ="dbo_ProjectHeader.EstimateTo"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.LastContact"
    Expression ="dbo_ProjectHeader.LastContactByID"
    Expression ="dbo_ProjectHeader.LastContactMethod"
    Expression ="dbo_ProjectHeader.LostEstimateReason"
    Alias ="OrderedBy"
    Expression ="[fn] & \" \" & [ln]"
    Alias ="Amt"
    Expression ="0"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectHeader.ContactNameID = dbo_ContactName.ID"
    Flag =1
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
    0x713fdd3aa631dc42bad899446d68e022
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b900000000bad9a96dec62e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000b1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0ea62e4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d006500000000000000b442e147d07032438ae06e0f86ac40d4070000000000 ,
    0x00000000000000000000000000004f0072006400650072006500640042007900 ,
    0x000000000000e4f06c40d7c0d844b7d90cbc5920298a07000000000000000000 ,
    0x0000000000000000000041006d0074000000000000006f7f02ef6df8574092ee ,
    0xeafb278f50ec07000000fe926418f32ed843874a57f371c555c7490044000000 ,
    0x0000000069785be96a31f94d959e3e736aa5db0207000000fe926418f32ed843 ,
    0x874a57f371c555c7510075006f00740065004e0075006d00000000000000d9cb ,
    0x95bb9ff0b84fa39eeda5976282d607000000fe926418f32ed843874a57f371c5 ,
    0x55c744006f0063006b00650074004e0075006d00000000000000124b02a694dd ,
    0x0e4c96264abff258312707000000d7c549c33168bc4ab70151c855c0b6b94300 ,
    0x6f006d0070004e0061006d006500000000000000ab2bd0a18191ef46b6c770f2 ,
    0xb1812fa607000000fe926418f32ed843874a57f371c555c7500072006f006a00 ,
    0x6500630074004e0061006d00650000000000000023f6fcc77666d448823b90b1 ,
    0x1d10e84007000000fe926418f32ed843874a57f371c555c7530061006c006500 ,
    0x730052006500700049004400000000000000f1ee1b4eb71bed44b484e51d9518 ,
    0x382207000000fe926418f32ed843874a57f371c555c743007300720049004400 ,
    0x000000000000cde5f4b6e9709a48a8d65c21a2340cb607000000fe926418f32e ,
    0xd843874a57f371c555c7510075006f0074006500440061007400650000000000 ,
    0x00004ee447eaa662274b8e491ce7343d32c707000000fe926418f32ed843874a ,
    0x57f371c555c744006f0063006b00650074004400610074006500000000000000 ,
    0xa4ded50498588c4e9f474307ea76385807000000fe926418f32ed843874a57f3 ,
    0x71c555c749006e0076006f006900630065004400610074006500000000000000 ,
    0x81751aaa23f69a40a072b77523cc41aa07000000fe926418f32ed843874a57f3 ,
    0x71c555c776006f0069006400000000000000673d52f2b5bccc4d948b1dfe92c9 ,
    0x04e007000000fe926418f32ed843874a57f371c555c7500072006f006a006500 ,
    0x63007400530074006100740075007300490044000000000000006f42bff3756e ,
    0xb548a8c4fd33dc98a34307000000fe926418f32ed843874a57f371c555c74500 ,
    0x7300740069006d00610074006f00720049004400000000000000b6f28ef5e0a5 ,
    0xb343a9589da6fd8daf0c07000000fe926418f32ed843874a57f371c555c74500 ,
    0x7300740069006d00610074006500530065006e00740042007900490044000000 ,
    0x0000000079209ccfc017b94f93d455f174ee683f07000000fe926418f32ed843 ,
    0x874a57f371c555c745007300740069006d00610074006500530065006e007400 ,
    0x000000000000222d4a9c197dc34780cf86b3d416f07507000000fe926418f32e ,
    0xd843874a57f371c555c745007300740069006d0061007400650054006f000000 ,
    0x00000000bb0ae340649d1049aae8ec4ebde6085c07000000fe926418f32ed843 ,
    0x874a57f371c555c749006e0076006f006900630065004e0075006d0000000000 ,
    0x0000248001bbe8f30c4c9409208e6668f8e107000000fe926418f32ed843874a ,
    0x57f371c555c74c0061007300740043006f006e00740061006300740000000000 ,
    0x0000197053317055eb4eb0366522186955c007000000fe926418f32ed843874a ,
    0x57f371c555c74c0061007300740043006f006e00740061006300740042007900 ,
    0x4900440000000000000081d4bef49a4f294ea3dafca72dd5ba3207000000fe92 ,
    0x6418f32ed843874a57f371c555c74c0061007300740043006f006e0074006100 ,
    0x630074004d006500740068006f0064000000000000008b82ad923ee56c4fa099 ,
    0x2c84f106cb5907000000fe926418f32ed843874a57f371c555c74c006f007300 ,
    0x740045007300740069006d0061007400650052006500610073006f006e000000 ,
    0x0000000008ae9e11739f3544a2d99be00a23adf107000000b1dfd77f67641a4a ,
    0x8c10df9ef7c3596366006e0000000000000008374dd34b155c49be4fe6c21253 ,
    0x78e407000000b1dfd77f67641a4a8c10df9ef7c359636c006e00000000000000 ,
    0x89ff919c8c2cb04795bac03adb54784507000000fe926418f32ed843874a57f3 ,
    0x71c555c743006f006e007400610063007400470065006e006500720061006c00 ,
    0x4900440000000000000003933b4b9f324445a82e368651b1052b07000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b9490044000000000000007f8a79b53835fb46 ,
    0x84ba535067e6481007000000fe926418f32ed843874a57f371c555c743006f00 ,
    0x6e0074006100630074004e0061006d00650049004400000000000000e0b7aa1a ,
    0x6ad58345865216cdf3cbec4e07000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="OrderedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb442e147d07032438ae06e0f86ac40d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimateTo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimatorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimateSentByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimateSent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1002"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastContactMethod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LostEstimateReason"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastContact"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastContactByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Amt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe4f06c40d7c0d844b7d90cbc5920298a
        End
    End
End
Begin
    State =0
    Left =-44
    Top =88
    Right =1469
    Bottom =816
    Left =-1
    Top =-1
    Right =1481
    Bottom =315
    Left =96
    Top =0
    ColumnsShown =539
    Begin
        Left =-48
        Top =12
        Right =298
        Bottom =377
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =364
        Top =88
        Right =508
        Bottom =232
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =672
        Top =91
        Right =1033
        Bottom =319
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
