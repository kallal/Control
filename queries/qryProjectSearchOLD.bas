Operation =1
Option =0
Where ="(((dbo_ProjectHeader.void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Alias ="OrderedBy"
    Expression ="[fn] & \" \" & [ln]"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.QuoteDate"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.void"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Expression ="dbo_ProjectHeader.PONumber"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactName"
    Expression ="dbo_ProjectHeader.BillOrderedBy = dbo_ContactName.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x420e301cec27f94b893c722e0f4d0915
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
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
    0x0000000000006f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32e ,
    0xd843874a57f371c555c74900440000000000000069785be96a31f94d959e3e73 ,
    0x6aa5db0207000000fe926418f32ed843874a57f371c555c7510075006f007400 ,
    0x65004e0075006d00000000000000d9cb95bb9ff0b84fa39eeda5976282d60700 ,
    0x0000fe926418f32ed843874a57f371c555c744006f0063006b00650074004e00 ,
    0x75006d00000000000000bb0ae340649d1049aae8ec4ebde6085c07000000fe92 ,
    0x6418f32ed843874a57f371c555c749006e0076006f006900630065004e007500 ,
    0x6d00000000000000124b02a694dd0e4c96264abff258312707000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b943006f006d0070004e0061006d00650000000000 ,
    0x0000ab2bd0a18191ef46b6c770f2b1812fa607000000fe926418f32ed843874a ,
    0x57f371c555c7500072006f006a006500630074004e0061006d00650000000000 ,
    0x000008ae9e11739f3544a2d99be00a23adf107000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c3596366006e0000000000000008374dd34b155c49be4fe6c2125378e4 ,
    0x07000000b1dfd77f67641a4a8c10df9ef7c359636c006e0000000000000023f6 ,
    0xfcc77666d448823b90b11d10e84007000000fe926418f32ed843874a57f371c5 ,
    0x55c7530061006c006500730052006500700049004400000000000000f1ee1b4e ,
    0xb71bed44b484e51d9518382207000000fe926418f32ed843874a57f371c555c7 ,
    0x43007300720049004400000000000000cde5f4b6e9709a48a8d65c21a2340cb6 ,
    0x07000000fe926418f32ed843874a57f371c555c7510075006f00740065004400 ,
    0x6100740065000000000000004ee447eaa662274b8e491ce7343d32c707000000 ,
    0xfe926418f32ed843874a57f371c555c744006f0063006b006500740044006100 ,
    0x74006500000000000000a4ded50498588c4e9f474307ea76385807000000fe92 ,
    0x6418f32ed843874a57f371c555c749006e0076006f0069006300650044006100 ,
    0x7400650000000000000081751aaa23f69a40a072b77523cc41aa07000000fe92 ,
    0x6418f32ed843874a57f371c555c776006f0069006400000000000000673d52f2 ,
    0xb5bccc4d948b1dfe92c904e007000000fe926418f32ed843874a57f371c555c7 ,
    0x500072006f006a00650063007400530074006100740075007300490044000000 ,
    0x000000007c454e2a33cb914f983955a5b8ad9c9e07000000fe926418f32ed843 ,
    0x874a57f371c555c750004f004e0075006d0062006500720000000000000089ff ,
    0x919c8c2cb04795bac03adb54784507000000fe926418f32ed843874a57f371c5 ,
    0x55c743006f006e007400610063007400470065006e006500720061006c004900 ,
    0x440000000000000003933b4b9f324445a82e368651b1052b07000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b94900440000000000000098ce3c49ba274b45a47e ,
    0xeabb9f7250ee07000000fe926418f32ed843874a57f371c555c7420069006c00 ,
    0x6c004f0072006400650072006500640042007900000000000000e0b7aa1a6ad5 ,
    0x8345865216cdf3cbec4e07000000b1dfd77f67641a4a8c10df9ef7c359634900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
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
        dbText "Name" ="dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =35
    Top =213
    Right =1548
    Bottom =941
    Left =-1
    Top =-1
    Right =1481
    Bottom =309
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =394
        Bottom =377
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =535
        Top =24
        Right =679
        Bottom =168
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =673
        Top =222
        Right =817
        Bottom =366
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
