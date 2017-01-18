Operation =1
Option =0
Where ="(((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ProjectHeader.DocketDate"
    Expression ="dbo_ProjectHeader.InvoiceDate"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.SalesRepID"
    Expression ="dbo_ProjectHeader.CsrID"
    Expression ="dbo_ProjectHeader.IsRush"
    Expression ="dbo_ContactGeneral.CompName"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x4812428e8ec74745bf50fd22eea32c5f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000035f87d9f0b136040ad3c2851f16d2a80000000004579f980 ,
    0x0dc1e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000bb4ee421343f624db77659ee ,
    0xf5e022a10000000090afc8800dc1e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8049004400000000000000749d4175d9cbb541b77414bf76f2aa9c ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b0065007400 ,
    0x4e0075006d000000000000007da6a641b3cf604b95c0700a612b458507000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8049006e0076006f006900630065004e00 ,
    0x75006d00000000000000e04379333b12ce4eb39eba2d39783d1f0700000035f8 ,
    0x7d9f0b136040ad3c2851f16d2a8056006f0069006400000000000000c310a93c ,
    0x2fe0c4488706f21ce736cf3a0700000035f87d9f0b136040ad3c2851f16d2a80 ,
    0x44006f0063006b0065007400440061007400650000000000000077a5524b02fa ,
    0xf248a18587169cb2874b0700000035f87d9f0b136040ad3c2851f16d2a804900 ,
    0x6e0076006f0069006300650044006100740065000000000000001c9b84855b8f ,
    0x264abd34a504e56b05af0700000035f87d9f0b136040ad3c2851f16d2a805000 ,
    0x72006f006a006500630074004e0061006d0065000000000000008265226ce516 ,
    0x5f4597f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a804300 ,
    0x6f006e007400610063007400470065006e006500720061006c00490044000000 ,
    0x0000000040de5e7aec65a745aa86e7e9e8cb55780700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80530061006c00650073005200650070004900440000000000 ,
    0x0000ce73341489752f42bffad7debac543a60700000035f87d9f0b136040ad3c ,
    0x2851f16d2a804300730072004900440000000000000093ba397e75759745b399 ,
    0x91abbd4894170700000035f87d9f0b136040ad3c2851f16d2a80490073005200 ,
    0x750073006800000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000 ,
    0xbb4ee421343f624db77659eef5e022a143006f006d0070004e0061006d006500 ,
    0x0000000000001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f ,
    0x624db77659eef5e022a149004400000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8055507bcbaa5742bc556b3a412be754
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca085da09509fc4c832edd791ddc35c3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x668975333e1b294283d3702171f6e1d6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa3f22ce9678c4541816d106941473713
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x11813f9d259763428b94b35b502acca3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3377cfa46f0abd488dbf6f9806f5f605
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x474bd3b72c36554eac4c4c14c0fe08fd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d9cd85b91f3d34881defd4600227430
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6e2b9c3e209ffd42b287844730d052f7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcb4c612a2a0fab4db710c5a155f507ab
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43ffe2c55f11b4458120b6d23556eb3c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6e2fa0cb1368b42b39f06908131ccfd
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1579
    Bottom =859
    Left =-1
    Top =-1
    Right =1469
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =564
        Bottom =337
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =612
        Top =12
        Right =876
        Bottom =287
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
