Operation =1
Option =0
Where ="(((dbo_ToDo.CompletedWhen) Is Null))"
Begin InputTables
    Name ="dbo_ToDo"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ToDo.ID"
    Expression ="dbo_ToDo.CreatedByID"
    Expression ="dbo_ToDo.CreatedWhen"
    Expression ="dbo_ToDo.CreatedForID"
    Expression ="dbo_ToDo.DueWhen"
    Expression ="dbo_ToDo.CreatedForGroupID"
    Expression ="dbo_ToDo.Priority"
    Expression ="dbo_ToDo.ToDo"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ToDo.CompletedWhen"
End
Begin Joins
    LeftTable ="dbo_ToDo"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ToDo.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_ToDo.DueWhen"
    Flag =0
    Expression ="dbo_ToDo.Priority"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x7d37be6254dec84181ac77add47c6109
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b5885c3f5404be4cb1d619a30d1a63910000000034bf736d ,
    0xcedae4400000000000000000640062006f005f0054006f0044006f0000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000ba0a506dcedae4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x6100640065007200000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x00001814076dcedae4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c000000000000002253911e ,
    0xf7921044b7bbdaeed968570c07000000b5885c3f5404be4cb1d619a30d1a6391 ,
    0x49004400000000000000355f8b993e2d4c4fb42fa8420a0dceea07000000b588 ,
    0x5c3f5404be4cb1d619a30d1a6391430072006500610074006500640042007900 ,
    0x4900440000000000000049f371bec9d1b0448680110231177a9807000000b588 ,
    0x5c3f5404be4cb1d619a30d1a6391430072006500610074006500640057006800 ,
    0x65006e000000000000007c1ecfb0f801924ab6298088af35954a07000000b588 ,
    0x5c3f5404be4cb1d619a30d1a6391430072006500610074006500640046006f00 ,
    0x72004900440000000000000025a6923fe8d34b428cee960897f1b83107000000 ,
    0xb5885c3f5404be4cb1d619a30d1a63914400750065005700680065006e000000 ,
    0x00000000d3a49c9301cc9d408513293674b3dd4e07000000b5885c3f5404be4c ,
    0xb1d619a30d1a6391430072006500610074006500640046006f00720047007200 ,
    0x6f00750070004900440000000000000012aec1acb8c41f4fa7c8d1af77fcd403 ,
    0x07000000b5885c3f5404be4cb1d619a30d1a63915000720069006f0072006900 ,
    0x7400790000000000000008807612d80c3942a691a01ea987806907000000b588 ,
    0x5c3f5404be4cb1d619a30d1a639154006f0044006f000000000000001c9b8485 ,
    0x5b8f264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x500072006f006a006500630074004e0061006d006500000000000000fde2928b ,
    0xbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a1 ,
    0x43006f006d0070004e0061006d0065000000000000002bbb4bafea51974b84bb ,
    0x7c3336fabe3b07000000b5885c3f5404be4cb1d619a30d1a639143006f006d00 ,
    0x70006c0065007400650064005700680065006e00000000000000504acdd61b8d ,
    0x8b4fbe0344ef89f6acf607000000b5885c3f5404be4cb1d619a30d1a63915000 ,
    0x72006f006a006500630074004800650061006400650072004900440000000000 ,
    0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a80490044000000000000008265226ce5165f4597f9cda188898d96 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00490044000000000000001fc238e44765 ,
    0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ToDo.ToDo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.CreatedForID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.DueWhen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.CompletedWhen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.CreatedByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.CreatedWhen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ToDo.CreatedForGroupID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =70
    Top =63
    Right =1543
    Bottom =865
    Left =-1
    Top =-1
    Right =1441
    Bottom =434
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =370
        Bottom =462
        Top =0
        Name ="dbo_ToDo"
        Name =""
    End
    Begin
        Left =418
        Top =12
        Right =833
        Bottom =392
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =881
        Top =12
        Right =1323
        Bottom =419
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
