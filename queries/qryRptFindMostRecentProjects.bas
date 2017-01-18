Operation =1
Option =0
Begin InputTables
    Name ="viewFindMostRecentProjects"
    Name ="dbo_CompanyEmployee"
    Alias ="SalesRep"
    Name ="dbo_CompanyEmployee"
    Alias ="CSR"
    Name ="rptLastContactDate"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="viewFindMostRecentProjects.*"
    Alias ="SalesRep"
    Expression ="Trim([salesrep].[fn]) & \" \" & Trim([salesrep].[ln])"
    Alias ="CSR"
    Expression ="Trim([csr].[fn]) & \" \" & Trim([csr].[ln])"
    Expression ="rptLastContactDate.LastOfDateStamp"
    Expression ="dbo_ContactGeneral.Notes"
End
Begin Joins
    LeftTable ="viewFindMostRecentProjects"
    RightTable ="SalesRep"
    Expression ="viewFindMostRecentProjects.SalesRepID = SalesRep.ID"
    Flag =2
    LeftTable ="viewFindMostRecentProjects"
    RightTable ="CSR"
    Expression ="viewFindMostRecentProjects.CsrID = CSR.ID"
    Flag =2
    LeftTable ="viewFindMostRecentProjects"
    RightTable ="rptLastContactDate"
    Expression ="viewFindMostRecentProjects.ID = rptLastContactDate.ContactGeneralID"
    Flag =2
    LeftTable ="viewFindMostRecentProjects"
    RightTable ="dbo_ContactGeneral"
    Expression ="viewFindMostRecentProjects.ID = dbo_ContactGeneral.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x783be4a01f56b74db35d180f826ac839
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000487d1cb8b11a234aaf5c461023406c3300000000527962e0 ,
    0xd4a8e44000000000000000007600690065007700460069006e0064004d006f00 ,
    0x7300740052006500630065006e007400500072006f006a006500630074007300 ,
    0x00000000000039a4960a0ccbe542ab18e42cf68884fa000000009bc501e0d4a8 ,
    0xe4400000000000000000640062006f005f0043006f006d00700061006e007900 ,
    0x45006d0070006c006f007900650065000000000000003810298087283c4eae98 ,
    0x9a77b2c9032a0000000077c5035bd5a8e4400000000000000000720070007400 ,
    0x4c0061007300740043006f006e00740061006300740044006100740065000000 ,
    0x00000000bb4ee421343f624db77659eef5e022a100000000cb1833e1d4a8e440 ,
    0x0000000000000000640062006f005f0043006f006e0074006100630074004700 ,
    0x65006e006500720061006c0000000000000025fed8b029f4f24a91ece5ce576f ,
    0x333c07000000783be4a01f56b74db35d180f826ac839530061006c0065007300 ,
    0x5200650070000000000000006b445d29546c0c4fab0097c78f25e7e207000000 ,
    0x783be4a01f56b74db35d180f826ac83943005300520000000000000068b6e50a ,
    0x9eb94d4c8d80fa739a88c988070000003810298087283c4eae989a77b2c9032a ,
    0x4c006100730074004f00660044006100740065005300740061006d0070000000 ,
    0x00000000371dfe71b92f37458fb52158c94a365407000000bb4ee421343f624d ,
    0xb77659eef5e022a14e006f007400650073000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000053006100 ,
    0x6c00650073005200650070000000000000003bdeb47575ae414485ff69e7fdb2 ,
    0x862207000000487d1cb8b11a234aaf5c461023406c33530061006c0065007300 ,
    0x5200650070004900440000000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000430053005200000000000000 ,
    0x08dfafa06e922e41b8774c95a3e5eb6707000000487d1cb8b11a234aaf5c4610 ,
    0x23406c3343007300720049004400000000000000aba84b91ba26a8438d2cfdb0 ,
    0xe0abf29b07000000487d1cb8b11a234aaf5c461023406c334900440000000000 ,
    0x0000b4b565b6b16c6141aae902cca2f02813070000003810298087283c4eae98 ,
    0x9a77b2c9032a43006f006e007400610063007400470065006e00650072006100 ,
    0x6c00490044000000000000001fc238e447652546a47f3ca6a0d889e407000000 ,
    0xbb4ee421343f624db77659eef5e022a149004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
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
End
Begin
    State =0
    Left =201
    Top =21
    Right =1800
    Bottom =744
    Left =-1
    Top =-1
    Right =1567
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =58
        Top =39
        Right =371
        Bottom =384
        Top =0
        Name ="viewFindMostRecentProjects"
        Name =""
    End
    Begin
        Left =419
        Top =12
        Right =694
        Bottom =156
        Top =0
        Name ="SalesRep"
        Name =""
    End
    Begin
        Left =482
        Top =100
        Right =854
        Bottom =419
        Top =0
        Name ="CSR"
        Name =""
    End
    Begin
        Left =902
        Top =12
        Right =1046
        Bottom =156
        Top =0
        Name ="rptLastContactDate"
        Name =""
    End
    Begin
        Left =1132
        Top =195
        Right =1316
        Bottom =359
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
