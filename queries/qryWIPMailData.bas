Operation =1
Option =0
Where ="(((dbo_ProjectHeader.DocketNum) Is Not Null) AND ((dbo_ProjectHeader.InvoiceNum)"
    " Is Null) AND ((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectComponentMailData"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentMailData.*"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectComponentHeader.StMailData"
    Expression ="dbo_ProjectComponentHeader.StMailShop"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.ExpectedQty"
    Expression ="dbo_ProjectComponentHeader.DataArrivedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectComponentHeader.MHMailData"
    Expression ="dbo_ProjectComponentHeader.DYMailData"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,[specifiedduedate],[assignedduedate])"
    Expression ="dbo_ProjectHeader.IsRush"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentMailData"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentMailData.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
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
    0x3c275df0c388fa4498ab243e104257f6
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006ced668afa96884f9da8afa671c569e800000000912fb5dd ,
    0x748ae4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e0074004d00610069006c0044006100 ,
    0x74006100000000000000d2d381ba93398a4283a6a9ed80a7b4be00000000e44a ,
    0xb3dd748ae4400000000000000000640062006f005f00500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740048006500610064006500 ,
    0x720000000000000035f87d9f0b136040ad3c2851f16d2a8000000000edd9c2dd ,
    0x748ae4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a100000000fc0e93dd748ae4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x00001f66a93ab2e7d746bc298b37fd98fb12070000003c275df0c388fa4498ab ,
    0x243e104257f64400750065004400610074006500000000000000749d4175d9cb ,
    0xb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c2851f16d2a804400 ,
    0x6f0063006b00650074004e0075006d00000000000000fde2928bbc55824d8e33 ,
    0xfcf8a8e7c2e107000000bb4ee421343f624db77659eef5e022a143006f006d00 ,
    0x70004e0061006d00650000000000000040de5e7aec65a745aa86e7e9e8cb5578 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a80530061006c00650073005200 ,
    0x6500700049004400000000000000ce73341489752f42bffad7debac543a60700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a804300730072004900440000000000 ,
    0x00002042568302f48b4d89eb4ba2abddca7307000000d2d381ba93398a4283a6 ,
    0xa9ed80a7b4be500072006f006a00650063007400480065006100640065007200 ,
    0x490044000000000000008265226ce5165f4597f9cda188898d960700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8043006f006e00740061006300740047006500 ,
    0x6e006500720061006c00490044000000000000000b86554b86a00744973b8362 ,
    0xa48bed1007000000d2d381ba93398a4283a6a9ed80a7b4be530074004d006100 ,
    0x69006c00440061007400610000000000000070fa57b523cbbd40a137dbadc276 ,
    0xa46e07000000d2d381ba93398a4283a6a9ed80a7b4be530074004d0061006900 ,
    0x6c00530068006f007000000000000000a21dc4fed47c244fa08fb5209ebbfbc7 ,
    0x07000000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e00 ,
    0x65006e0074004e0061006d0065000000000000007857d2ada5ee1a42ae465940 ,
    0x5dc8fd6b07000000d2d381ba93398a4283a6a9ed80a7b4be4500780070006500 ,
    0x63007400650064005100740079000000000000008063cea60c7baf4dbe23035a ,
    0x943a986307000000d2d381ba93398a4283a6a9ed80a7b4be4400610074006100 ,
    0x4100720072006900760065006400440061007400650000000000000064165789 ,
    0x5895584f819ed540e3d01c5507000000d2d381ba93398a4283a6a9ed80a7b4be ,
    0x4400610074006100450078007000650063007400650064004400610074006500 ,
    0x000000000000a084f8da1e4f1342b1fae6042c102b9a07000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be410073007300690067006e0065006400440075006500 ,
    0x4400610074006500000000000000d9c1524eae16e7439791b1c28f640d810700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be5300700065006300690066006900 ,
    0x65006400440075006500440061007400650000000000000014c9ca3be8d13c4e ,
    0x94b6b4c56e803aee07000000d2d381ba93398a4283a6a9ed80a7b4be4d004800 ,
    0x4d00610069006c0044006100740061000000000000007d52299ec8bc48419328 ,
    0x40a9a071ecb307000000d2d381ba93398a4283a6a9ed80a7b4be440059004d00 ,
    0x610069006c0044006100740061000000000000007da6a641b3cf604b95c0700a ,
    0x612b45850700000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00 ,
    0x6900630065004e0075006d00000000000000e04379333b12ce4eb39eba2d3978 ,
    0x3d1f0700000035f87d9f0b136040ad3c2851f16d2a8056006f00690064000000 ,
    0x000000005c90b798aa47ab459c1716da6c77396207000000d2d381ba93398a42 ,
    0x83a6a9ed80a7b4be500072006f006f006600530065006e007400440061007400 ,
    0x650000000000000078a4ab78684be74a86eca6bbeda30d6807000000d2d381ba ,
    0x93398a4283a6a9ed80a7b4be500072006f006f00660041007000700072006f00 ,
    0x760065006400440061007400650000000000000093ba397e75759745b39991ab ,
    0xbd4894170700000035f87d9f0b136040ad3c2851f16d2a804900730052007500 ,
    0x730068000000000000002496ba6f1286cb47be6e7560d4777b0e070000006ced ,
    0x668afa96884f9da8afa671c569e8500072006f006a0065006300740043006f00 ,
    0x6d0070006f006e0065006e0074004900440000000000000029556c4fcc6de941 ,
    0x8049e37cebcb8ed307000000d2d381ba93398a4283a6a9ed80a7b4be49004400 ,
    0x00000000000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b13 ,
    0x6040ad3c2851f16d2a80490044000000000000001fc238e447652546a47f3ca6 ,
    0xa0d889e407000000bb4ee421343f624db77659eef5e022a14900440000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailData"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.CPHouseAcctApproval"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.AddListQtyExpected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.DataNotes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.HoursEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.HoursActual"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.KillListQtyReceived"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.CPHouseAcct"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.FSASource"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.FSAList"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.FSAListFile"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.AddListQtyReceived"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.SalesNotes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.KillListCriteria"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.AVC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.TextFormat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.ProjectComponentID"
        dbInteger "ColumnWidth" ="2565"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.CPAccount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.CPContract"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.FileReturn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.IsEnabled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.IsComplete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.MergePurgeCriteria"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.NCOA"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.Segmentation"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.MailResults"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.MailType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.CPAccountID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.DataOutput"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.DaysEst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.DaysActual"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.KillListQtyExpected"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.CMADoNotMail"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.GiftMatrix"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f66a93ab2e7d746bc298b37fd98fb12
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentMailData.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =25
    Top =104
    Right =1462
    Bottom =904
    Left =-1
    Top =-1
    Right =1405
    Bottom =265
    Left =365
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =296
        Bottom =311
        Top =0
        Name ="dbo_ProjectComponentMailData"
        Name =""
    End
    Begin
        Left =344
        Top =12
        Right =497
        Bottom =282
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =536
        Top =12
        Right =881
        Bottom =270
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =929
        Top =12
        Right =1166
        Bottom =240
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
