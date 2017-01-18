Operation =1
Option =0
Begin InputTables
    Name ="dbo_ReportList"
End
Begin OutputColumns
    Expression ="dbo_ReportList.ID"
    Expression ="dbo_ReportList.Department"
    Expression ="dbo_ReportList.FriendlyName"
    Expression ="dbo_ReportList.ReportName"
    Expression ="dbo_ReportList.OrderedBy"
    Expression ="dbo_ReportList.DateField"
    Expression ="dbo_ReportList.HasDate"
    Expression ="dbo_ReportList.HasClient"
    Expression ="dbo_ReportList.HasVendor"
    Expression ="dbo_ReportList.HasEmployee"
    Expression ="dbo_ReportList.HasEstimateNum"
    Expression ="dbo_ReportList.HasDocketNum"
    Expression ="dbo_ReportList.HasInvoiceNum"
    Expression ="dbo_ReportList.Preview"
    Expression ="dbo_ReportList.RequiredFields"
End
Begin OrderBy
    Expression ="dbo_ReportList.Department"
    Flag =0
    Expression ="dbo_ReportList.ReportName"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x5f0898521434b347944a44ea8df7c386
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000005ef5065b8eafc84b87cd0b8f72a6de0a00000000f4accc93 ,
    0x30b5e4400000000000000000640062006f005f005200650070006f0072007400 ,
    0x4c00690073007400000000000000264d6f6b7524a5429a56e1a23fb9bf350700 ,
    0x00005ef5065b8eafc84b87cd0b8f72a6de0a49004400000000000000a3181830 ,
    0xd96ccc478ae299cf101c4cd9070000005ef5065b8eafc84b87cd0b8f72a6de0a ,
    0x4400650070006100720074006d0065006e00740000000000000051efe461f85d ,
    0xf44e9806129c41ca99fe070000005ef5065b8eafc84b87cd0b8f72a6de0a4600 ,
    0x7200690065006e0064006c0079004e0061006d006500000000000000cd9d1263 ,
    0xc6e2d14ebabe39f7598db0aa070000005ef5065b8eafc84b87cd0b8f72a6de0a ,
    0x5200650070006f00720074004e0061006d006500000000000000216d045030f4 ,
    0x014f92ce8d5156878a08070000005ef5065b8eafc84b87cd0b8f72a6de0a4f00 ,
    0x720064006500720065006400420079000000000000000110b5e22ce71742889b ,
    0x34d0a1f4f8ac070000005ef5065b8eafc84b87cd0b8f72a6de0a440061007400 ,
    0x65004600690065006c006400000000000000f9fd4bf09c70474fb32c61fc7633 ,
    0x1f57070000005ef5065b8eafc84b87cd0b8f72a6de0a48006100730044006100 ,
    0x74006500000000000000b29f311d32124a4a8b1582119f8ec65d070000005ef5 ,
    0x065b8eafc84b87cd0b8f72a6de0a48006100730043006c00690065006e007400 ,
    0x0000000000004242fb96b69660418925779ddf545737070000005ef5065b8eaf ,
    0xc84b87cd0b8f72a6de0a480061007300560065006e0064006f00720000000000 ,
    0x00008407c81749686343b1a06ec132174e89070000005ef5065b8eafc84b87cd ,
    0x0b8f72a6de0a48006100730045006d0070006c006f0079006500650000000000 ,
    0x000054fbb8121d4d24429f694aa2e1347fee070000005ef5065b8eafc84b87cd ,
    0x0b8f72a6de0a48006100730045007300740069006d006100740065004e007500 ,
    0x6d000000000000000977a2ed0a958346890a624972cf2821070000005ef5065b ,
    0x8eafc84b87cd0b8f72a6de0a48006100730044006f0063006b00650074004e00 ,
    0x75006d0000000000000050693cc1c2f79c4992ffa9675777551d070000005ef5 ,
    0x065b8eafc84b87cd0b8f72a6de0a48006100730049006e0076006f0069006300 ,
    0x65004e0075006d00000000000000cfde4b1b18869e41bfd5012f8cae1ac10700 ,
    0x00005ef5065b8eafc84b87cd0b8f72a6de0a5000720065007600690065007700 ,
    0x000000000000a00e5bcbef50854385fac243ed4afebb070000005ef5065b8eaf ,
    0xc84b87cd0b8f72a6de0a52006500710075006900720065006400460069006500 ,
    0x6c0064007300000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ReportList.RequiredFields"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.Department"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.FriendlyName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.ReportName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.OrderedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.DateField"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasClient"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasVendor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasEmployee"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasEstimateNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasDocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.HasInvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ReportList.Preview"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =57
    Top =143
    Right =1514
    Bottom =1012
    Left =-1
    Top =-1
    Right =1425
    Bottom =535
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =73
        Top =19
        Right =455
        Bottom =415
        Top =0
        Name ="dbo_ReportList"
        Name =""
    End
End
