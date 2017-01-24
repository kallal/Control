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
    Alias ="Amt"
    Expression ="DSum(\"[SaleAmt]\",\"qrySchedulingSummary\",\"[ProjectHeaderID] = \" & [dbo_proj"
        "ectHeader].[id])"
    Alias ="DiscAvg"
    Expression ="DAvg(\"[DiscPercent]\",\"qrySchedulingSummary\",\"[ProjectHeaderID] = \" & [dbo_"
        "projectHeader].[id])"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.LastContact"
    Expression ="dbo_ProjectHeader.LastContactByID"
    Expression ="dbo_ProjectHeader.LastContactMethod"
    Expression ="dbo_ProjectHeader.LostEstimateReason"
    Alias ="OrderedBy"
    Expression ="[fn] & \" \" & [ln]"
    Alias ="myComponentName"
    Expression ="getcomponentnames([dbo_ProjectHeader].[id])"
    Expression ="dbo_ProjectHeader.PlannerID"
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
    0x4f27e4fe5f829845857b507d900e3d09
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a80000000005331592d ,
    0x0fd8e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a100000000294b24da0dd8e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46000000006da328da0dd8e4400000 ,
    0x000000000000640062006f005f0043006f006e0074006100630074004e006100 ,
    0x6d006500000000000000acdf3605ba9d0d4f81ea5847a1f42fe4070000004f27 ,
    0xe4fe5f829845857b507d900e3d0941006d0074000000000000004880f79cd9de ,
    0x1a478fd7051fb4fae252070000004f27e4fe5f829845857b507d900e3d094400 ,
    0x690073006300410076006700000000000000b442e147d07032438ae06e0f86ac ,
    0x40d4070000004f27e4fe5f829845857b507d900e3d094f007200640065007200 ,
    0x650064004200790000000000000037159dfe57b4f240bbce2f02e43c457c0700 ,
    0x00004f27e4fe5f829845857b507d900e3d096d00790043006f006d0070006f00 ,
    0x6e0065006e0074004e0061006d00650000000000000004aeb2718000d24bb73b ,
    0x562a737994cb0700000035f87d9f0b136040ad3c2851f16d2a80490044000000 ,
    0x00000000d0b1539c9f7bfc439d9435b3dda929d50700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80510075006f00740065004e0075006d00000000000000749d ,
    0x4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8044006f0063006b00650074004e0075006d00000000000000fde2928bbc55 ,
    0x824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a14300 ,
    0x6f006d0070004e0061006d0065000000000000001c9b84855b8f264abd34a504 ,
    0xe56b05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a00 ,
    0x6500630074004e0061006d00650000000000000040de5e7aec65a745aa86e7e9 ,
    0xe8cb55780700000035f87d9f0b136040ad3c2851f16d2a80530061006c006500 ,
    0x730052006500700049004400000000000000ce73341489752f42bffad7debac5 ,
    0x43a60700000035f87d9f0b136040ad3c2851f16d2a8043007300720049004400 ,
    0x0000000000009d63ea70f7ac1e44aa26234fcf0001210700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80510075006f0074006500440061007400650000000000 ,
    0x0000c310a93c2fe0c4488706f21ce736cf3a0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8044006f0063006b00650074004400610074006500000000000000 ,
    0x77a5524b02faf248a18587169cb2874b0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8049006e0076006f006900630065004400610074006500000000000000 ,
    0xe04379333b12ce4eb39eba2d39783d1f0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8076006f00690064000000000000006b8100b18f7ba34aa3c59fda19a1 ,
    0x11ed0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a006500 ,
    0x63007400530074006100740075007300490044000000000000005e19c4e34481 ,
    0x1a439ced36cf310053790700000035f87d9f0b136040ad3c2851f16d2a804500 ,
    0x7300740069006d00610074006f00720049004400000000000000c1532289661b ,
    0x7244b3826ca41441cec00700000035f87d9f0b136040ad3c2851f16d2a804500 ,
    0x7300740069006d00610074006500530065006e00740042007900490044000000 ,
    0x000000007e273daaaf9ff541a224d262810861600700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8045007300740069006d00610074006500530065006e007400 ,
    0x000000000000277c54f1551d264e84f0cc4337463f100700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a8045007300740069006d0061007400650054006f000000 ,
    0x000000007da6a641b3cf604b95c0700a612b45850700000035f87d9f0b136040 ,
    0xad3c2851f16d2a8049006e0076006f006900630065004e0075006d0000000000 ,
    0x00001b32d8ceff8be14faed6b90087c4154e0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a804c0061007300740043006f006e00740061006300740000000000 ,
    0x00003d5b0bae9e4f3744a57109df47771ed70700000035f87d9f0b136040ad3c ,
    0x2851f16d2a804c0061007300740043006f006e00740061006300740042007900 ,
    0x490044000000000000004ed5ec9bd0d8f64cbc2fd10e5703dc370700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a804c0061007300740043006f006e0074006100 ,
    0x630074004d006500740068006f0064000000000000008a5749fa63b81e4a83ad ,
    0x8ad778d563720700000035f87d9f0b136040ad3c2851f16d2a804c006f007300 ,
    0x740045007300740069006d0061007400650052006500610073006f006e000000 ,
    0x0000000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a18cfc44f ,
    0x845c77c762d61a4666006e0000000000000096debff91f1ff043bcf0998107c8 ,
    0x713e07000000abd7a13a18cfc44f845c77c762d61a466c006e00000000000000 ,
    0x68034c9480f93242aa20b3b0d9c322cc0700000035f87d9f0b136040ad3c2851 ,
    0xf16d2a8050006c0061006e006e0065007200490044000000000000008265226c ,
    0xe5165f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x43006f006e007400610063007400470065006e006500720061006c0049004400 ,
    0x0000000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f ,
    0x624db77659eef5e022a149004400000000000000ec0b724301a5a646ae4fd759 ,
    0xd8d39c9c0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e007400 ,
    0x6100630074004e0061006d0065004900440000000000000055214613b67cb94e ,
    0xaac4189bee61392c07000000abd7a13a18cfc44f845c77c762d61a4649004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
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
        dbText "Name" ="Amt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xacdf3605ba9d0d4f81ea5847a1f42fe4
        End
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
        dbText "Name" ="DiscAvg"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4880f79cd9de1a478fd7051fb4fae252
        End
    End
    Begin
        dbText "Name" ="myComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x37159dfe57b4f240bbce2f02e43c457c
        End
        dbInteger "ColumnWidth" ="5700"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PlannerID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =6
    Top =91
    Right =1519
    Bottom =819
    Left =-1
    Top =-1
    Right =1481
    Bottom =281
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
        Left =460
        Top =88
        Right =604
        Bottom =232
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =712
        Top =32
        Right =1073
        Bottom =260
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
