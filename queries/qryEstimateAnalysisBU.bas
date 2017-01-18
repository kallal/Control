Operation =1
Option =0
Where ="(((dbo_viewTotalEstimateAmounts.QuoteDate)>=#1/1/2013# And (dbo_viewTotalEstimat"
    "eAmounts.QuoteDate)<=#12/31/2013#))"
Having ="(((dbo_viewTotalEstimateAmounts.SalesRepID) Is Not Null))"
Begin InputTables
    Name ="dbo_viewTotalEstimateAmounts"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_viewTotalEstimateAmounts.SalesRepID"
    Alias ="SalesRep"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Alias ="SumOfTotal11"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total11)"
    Alias ="SumOfTotal12"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total12)"
    Alias ="SumOfTotal13"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total13)"
    Alias ="SumOfTotal14"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total14)"
    Alias ="SumOfTotal15"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total15)"
    Alias ="SumOfTotal16"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total16)"
    Alias ="SumOfTotal17"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total17)"
    Alias ="SumOfTotal18"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total18)"
    Alias ="SumOfTotal19"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.Total19)"
    Alias ="SumOfTotalDockets"
    Expression ="Sum(dbo_viewTotalEstimateAmounts.TotalDockets)"
    Alias ="TotalLive"
    Expression ="Sum(Nz([Total11],0)+Nz([Total12],0))"
    Alias ="TotalLost"
    Expression ="Sum(Nz([Total14],0)+Nz([Total15],0)+Nz([total16],0)+Nz([total18],0)+Nz([total19]"
        ",0))"
End
Begin Joins
    LeftTable ="dbo_viewTotalEstimateAmounts"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_viewTotalEstimateAmounts.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
End
Begin OrderBy
    Expression ="Sum(dbo_viewTotalEstimateAmounts.TotalDockets)"
    Flag =1
End
Begin Groups
    Expression ="dbo_viewTotalEstimateAmounts.SalesRepID"
    GroupLevel =0
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    GroupLevel =0
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
    0x1fbf817174264540acb0be71c43b5cfc
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c47071132338224abba13c7583ba84cc0000000048f2be6e ,
    0xec62e4400000000000000000640062006f005f00760069006500770054006f00 ,
    0x740061006c0045007300740069006d0061007400650041006d006f0075006e00 ,
    0x74007300000000000000431c785ce507fd4487a1822c7cd25c66000000004120 ,
    0x96c0ea62e4400000000000000000640062006f005f0043006f006d0070006100 ,
    0x6e00790045006d0070006c006f00790065006500000000000000257ba100460c ,
    0xc141b95ffb9ab1eb0cf707000000000000000000000000000000000000005300 ,
    0x61006c0065007300520065007000000000000000d4fce2e0b886a44ea87f854a ,
    0xa59225f80700000000000000000000000000000000000000530075006d004f00 ,
    0x660054006f00740061006c0031003100000000000000636a29fe03276f4bafd4 ,
    0xffee4170eab90700000000000000000000000000000000000000530075006d00 ,
    0x4f00660054006f00740061006c00310032000000000000009e4dea7a5060104e ,
    0x8b2a7ca523d5ca5c070000000000000000000000000000000000000053007500 ,
    0x6d004f00660054006f00740061006c0031003300000000000000ee2d89af981b ,
    0xa848a85d9246e28d948a07000000000000000000000000000000000000005300 ,
    0x75006d004f00660054006f00740061006c0031003400000000000000218bc1ff ,
    0x29d766408b71d854308c3d370700000000000000000000000000000000000000 ,
    0x530075006d004f00660054006f00740061006c00310035000000000000005c9c ,
    0x92a9e09b0f40af34f15182c1215b070000000000000000000000000000000000 ,
    0x0000530075006d004f00660054006f00740061006c0031003600000000000000 ,
    0x39055c7907330643a742c40c576ec45d07000000000000000000000000000000 ,
    0x00000000530075006d004f00660054006f00740061006c003100370000000000 ,
    0x000030abb55e23dfb54aaf121246e6b3e2020700000000000000000000000000 ,
    0x000000000000530075006d004f00660054006f00740061006c00310038000000 ,
    0x00000000710b1b832c69c243a0f9685be1949258070000000000000000000000 ,
    0x0000000000000000530075006d004f00660054006f00740061006c0031003900 ,
    0x00000000000087f0144ced89874cb8b5181cc6e2946807000000000000000000 ,
    0x00000000000000000000530075006d004f00660054006f00740061006c004400 ,
    0x6f0063006b0065007400730000000000000000890a0304a76000f0a660007838 ,
    0x090b070000000000000000000000000000000000000054006f00740061006c00 ,
    0x4c0069007600650000000000000067b26f7a532e73458b9c000aa5bf92470700 ,
    0x00000000000000000000000000000000000054006f00740061006c004c006f00 ,
    0x7300740000000000000089802b7a60b46645aaad881d83c7cc6607000000c470 ,
    0x71132338224abba13c7583ba84cc530061006c00650073005200650070004900 ,
    0x44000000000000002b42c8be7cfa534a8515b53e50209ccf07000000431c785c ,
    0xe507fd4487a1822c7cd25c6666006e000000000000006ee7053a7af8f44c9a58 ,
    0x5dba8febe06007000000431c785ce507fd4487a1822c7cd25c666c006e000000 ,
    0x00000000a43e8a188d76dd4ead565e32e32ca3f207000000c47071132338224a ,
    0xbba13c7583ba84cc54006f00740061006c0031003100000000000000260469a9 ,
    0x0d30c04e997c905ef86adb8807000000c47071132338224abba13c7583ba84cc ,
    0x54006f00740061006c00310032000000000000003af372b393b0b540bbbf455c ,
    0x47a9050a07000000c47071132338224abba13c7583ba84cc54006f0074006100 ,
    0x6c00310033000000000000006943bfc155845d4ba6643b0b3bde129a07000000 ,
    0xc47071132338224abba13c7583ba84cc54006f00740061006c00310034000000 ,
    0x00000000a0701830a3aa494a8bfa5f55dfc0fc7a07000000c47071132338224a ,
    0xbba13c7583ba84cc54006f00740061006c003100350000000000000064f38574 ,
    0x36bf7147b0cc2754eeb15a4607000000c47071132338224abba13c7583ba84cc ,
    0x54006f00740061006c0031003600000000000000f1ccd9513f31b04f8c0bdf4d ,
    0x42a44fe807000000c47071132338224abba13c7583ba84cc54006f0074006100 ,
    0x6c0031003700000000000000c9aae0f30df05f4f8401acb99fc966da07000000 ,
    0xc47071132338224abba13c7583ba84cc54006f00740061006c00310038000000 ,
    0x00000000ab8e029a3daaf54db04ab7c92d8113ae07000000c47071132338224a ,
    0xbba13c7583ba84cc54006f00740061006c00310039000000000000009f150ef1 ,
    0xe52a1f4da7ca1e73a029225c07000000c47071132338224abba13c7583ba84cc ,
    0x54006f00740061006c0044006f0063006b00650074007300000000000000c6c5 ,
    0x4d8e9dff594db3e19de4c2b573f507000000431c785ce507fd4487a1822c7cd2 ,
    0x5c66490044000000000000000148d1037cd9a2468904656071860d2107000000 ,
    0xc47071132338224abba13c7583ba84cc510075006f0074006500440061007400 ,
    0x6500000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_viewTotalEstimateAmounts.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x46759a19fe57434eb6367783f1ef911e
        End
    End
    Begin
        dbText "Name" ="SumOfTotal11"
        dbInteger "ColumnWidth" ="2010"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd4fce2e0b886a44ea87f854aa59225f8
        End
    End
    Begin
        dbText "Name" ="SumOfTotal12"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x636a29fe03276f4bafd4ffee4170eab9
        End
    End
    Begin
        dbText "Name" ="SumOfTotal13"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e4dea7a5060104e8b2a7ca523d5ca5c
        End
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfTotal14"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee2d89af981ba848a85d9246e28d948a
        End
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfTotal15"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x218bc1ff29d766408b71d854308c3d37
        End
    End
    Begin
        dbText "Name" ="SumOfTotal16"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c9c92a9e09b0f40af34f15182c1215b
        End
    End
    Begin
        dbText "Name" ="SumOfTotal17"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39055c7907330643a742c40c576ec45d
        End
    End
    Begin
        dbText "Name" ="SumOfTotal18"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30abb55e23dfb54aaf121246e6b3e202
        End
    End
    Begin
        dbText "Name" ="SumOfTotal19"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x710b1b832c69c243a0f9685be1949258
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbInteger "ColumnWidth" ="2745"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x257ba100460cc141b95ffb9ab1eb0cf7
        End
    End
    Begin
        dbText "Name" ="TotalLive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00890a0304a76000f0a660007838090b
        End
    End
    Begin
        dbText "Name" ="TotalLost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x67b26f7a532e73458b9c000aa5bf9247
        End
    End
    Begin
        dbText "Name" ="SumOfTotalDockets"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x87f0144ced89874cb8b5181cc6e29468
        End
    End
End
Begin
    State =0
    Left =62
    Top =54
    Right =1804
    Bottom =729
    Left =-1
    Top =-1
    Right =1710
    Bottom =255
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =29
        Top =16
        Right =223
        Bottom =352
        Top =0
        Name ="dbo_viewTotalEstimateAmounts"
        Name =""
    End
    Begin
        Left =271
        Top =12
        Right =550
        Bottom =264
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
