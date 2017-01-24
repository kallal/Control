Operation =4
Option =0
Where ="(((rptLastContactDate.LastOfDateStamp)<#1/1/2014#))"
Begin InputTables
    Name ="rptLastContactDate"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Name ="dbo_ContactGeneral.SalesRepID"
    Expression ="88"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="rptLastContactDate"
    Expression ="dbo_ContactGeneral.ID = rptLastContactDate.ContactGeneralID"
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
dbLongBinary "DOL" = Begin
    0x0acc0e55000000003810298087283c4eae989a77b2c9032a00000000cbbd4aca ,
    0x3484e44000000000000000007200700074004c0061007300740043006f006e00 ,
    0x74006100630074004400610074006500000000000000bb4ee421343f624db776 ,
    0x59eef5e022a100000000582ae4493384e4400000000000000000640062006f00 ,
    0x5f0043006f006e007400610063007400470065006e006500720061006c000000 ,
    0x0000000011b96ad6e2992845a5955d6e4851e02107000000bb4ee421343f624d ,
    0xb77659eef5e022a1530061006c00650073005200650070004900440000000000 ,
    0x00001fc238e447652546a47f3ca6a0d889e407000000bb4ee421343f624db776 ,
    0x59eef5e022a149004400000000000000b4b565b6b16c6141aae902cca2f02813 ,
    0x070000003810298087283c4eae989a77b2c9032a43006f006e00740061006300 ,
    0x7400470065006e006500720061006c004900440000000000000068b6e50a9eb9 ,
    0x4d4c8d80fa739a88c988070000003810298087283c4eae989a77b2c9032a4c00 ,
    0x6100730074004f00660044006100740065005300740061006d00700000000000 ,
    0x0000000000000000000000000000000000000c00000005000000000000000000 ,
    0x0000000000000000
End
dbBinary "GUID" = Begin
    0x37246c9502e0a743a984b099bf0e64f5
End
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="SalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x25fed8b029f4f24a91ece5ce576f333c
        End
    End
    Begin
        dbText "Name" ="CSR"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b445d29546c0c4fab0097c78f25e7e2
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4f9a503bcbb72e46860c1690f9fc5add
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3cfec65f2f05ff46803071e32f55bb89
        End
        dbInteger "ColumnWidth" ="3600"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xed04de2cfb544d4cb2527963e999d7a6
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x35574dcfc59e514cb768d2832d4a4f32
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4e7ef726d525114ba7eabaec0ba9f61e
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x06f6f34e25fab64599d6ee6bc96e657b
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.QuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa14497bf9f963a44952bab7b571b9a70
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.QuoteDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff05a4a82cec824792c2acc6faa6d4b6
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x416b3d435f9fe943851fd5382aad5355
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe1a996a585cf244999df9f41632c208e
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd1fb5c0d4f228438f910bdca960e885
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1cda07d1b6f88941bf4788a454d59b96
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.SalesMgrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x41b00d127eb5884fbf93ef95e1800520
        End
    End
    Begin
        dbText "Name" ="viewFindMostRecentProjects.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x15149b68b087ea44ac8e07b9d5a3a3a7
        End
    End
    Begin
        dbText "Name" ="rptLastContactDate.LastOfDateStamp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =26
    Top =375
    Right =1625
    Bottom =1098
    Left =-1
    Top =-1
    Right =1567
    Bottom =337
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =646
        Top =54
        Right =790
        Bottom =198
        Top =0
        Name ="rptLastContactDate"
        Name =""
    End
    Begin
        Left =255
        Top =67
        Right =532
        Bottom =307
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
