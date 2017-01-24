Operation =1
Option =0
Where ="(((Left([COMPNAME],13))=\"AB GOVERNMENT\"))"
Begin InputTables
    Name ="viewFindMostRecentProjects"
    Name ="dbo_CompanyEmployee"
    Alias ="SalesRep"
    Name ="dbo_CompanyEmployee"
    Alias ="CSR"
End
Begin OutputColumns
    Expression ="viewFindMostRecentProjects.*"
    Alias ="SalesRep"
    Expression ="Trim([salesrep].[fn]) & \" \" & Trim([salesrep].[ln])"
    Alias ="CSR"
    Expression ="Trim([csr].[fn]) & \" \" & Trim([csr].[ln])"
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
    0x3aca096a091d144386d638b51edd4dd8
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000487d1cb8b11a234aaf5c461023406c3300000000473ba911 ,
    0xcfe0e44000000000000000007600690065007700460069006e0064004d006f00 ,
    0x7300740052006500630065006e007400500072006f006a006500630074007300 ,
    0x00000000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40ccfe0 ,
    0xe4400000000000000000640062006f005f0043006f006d00700061006e007900 ,
    0x45006d0070006c006f0079006500650000000000000025fed8b029f4f24a91ec ,
    0xe5ce576f333c070000003aca096a091d144386d638b51edd4dd8530061006c00 ,
    0x650073005200650070000000000000006b445d29546c0c4fab0097c78f25e7e2 ,
    0x070000003aca096a091d144386d638b51edd4dd8430053005200000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x00000000530061006c00650073005200650070000000000000003bdeb47575ae ,
    0x414485ff69e7fdb2862207000000487d1cb8b11a234aaf5c461023406c335300 ,
    0x61006c0065007300520065007000490044000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000043005300 ,
    0x520000000000000008dfafa06e922e41b8774c95a3e5eb6707000000487d1cb8 ,
    0xb11a234aaf5c461023406c33430073007200490044000000000000004a03ac1a ,
    0xb79cbf459d55f15e7d87dbbd07000000487d1cb8b11a234aaf5c461023406c33 ,
    0x43004f004d0050004e0041004d00450000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
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
End
Begin
    State =0
    Left =78
    Top =136
    Right =1607
    Bottom =859
    Left =-1
    Top =-1
    Right =1497
    Bottom =405
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
End
