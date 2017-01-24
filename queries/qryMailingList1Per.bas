Operation =1
Option =0
Begin InputTables
    Name ="qryMailingList"
End
Begin OutputColumns
    Expression ="qryMailingList.CompName"
    Expression ="qryMailingList.dbo_ContactGeneral.ID"
    Expression ="qryMailingList.Location"
    Expression ="qryMailingList.ADD1"
    Expression ="qryMailingList.ADD2"
    Expression ="qryMailingList.CITY"
    Expression ="qryMailingList.PROV"
    Expression ="qryMailingList.PC"
    Expression ="qryMailingList.[Sales Rep]"
End
Begin Groups
    Expression ="qryMailingList.CompName"
    GroupLevel =0
    Expression ="qryMailingList.dbo_ContactGeneral.ID"
    GroupLevel =0
    Expression ="qryMailingList.Location"
    GroupLevel =0
    Expression ="qryMailingList.ADD1"
    GroupLevel =0
    Expression ="qryMailingList.ADD2"
    GroupLevel =0
    Expression ="qryMailingList.CITY"
    GroupLevel =0
    Expression ="qryMailingList.PROV"
    GroupLevel =0
    Expression ="qryMailingList.PC"
    GroupLevel =0
    Expression ="qryMailingList.[Sales Rep]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x98f9e96fa00ebe41b97fb3deef5b672e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000077d6350563a9df4592d2b343abf5bb5400000000cefc6a3e ,
    0xafb8e44000000000000000007100720079004d00610069006c0069006e006700 ,
    0x4c00690073007400000000000000e39b34410d653248b9315ad036ded2f80700 ,
    0x000077d6350563a9df4592d2b343abf5bb5443006f006d0070004e0061006d00 ,
    0x6500000000000000bb4ee421343f624db77659eef5e022a100000000d1204088 ,
    0x2cb8e44092d2b343abf5bb54640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c000000000000001fc238e447652546a47f ,
    0x3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1490044000000 ,
    0x00000000a51dc23796fbcf478344066436a09e720700000077d6350563a9df45 ,
    0x92d2b343abf5bb544c006f0063006100740069006f006e000000000000008ebb ,
    0x9f62d4eaa044b1a4e6229208587a0700000077d6350563a9df4592d2b343abf5 ,
    0xbb544100440044003100000000000000d24746d29ac6d74cb70c7a9ec3fcaf9f ,
    0x0700000077d6350563a9df4592d2b343abf5bb54410044004400320000000000 ,
    0x00006cfd66ef3f4ee849b2ccf8f7d65d6de20700000077d6350563a9df4592d2 ,
    0xb343abf5bb5443004900540059000000000000006bbf34115bed8c4582703236 ,
    0x007104160700000077d6350563a9df4592d2b343abf5bb54500052004f005600 ,
    0x000000000000b6ebe4692859c84488ae6e3284d716290700000077d6350563a9 ,
    0xdf4592d2b343abf5bb5450004300000000000000d452469956208744a3820cd3 ,
    0x2b2f4c5e0700000077d6350563a9df4592d2b343abf5bb54530061006c006500 ,
    0x7300200052006500700000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="qryMailingList.CompName"
        dbInteger "ColumnWidth" ="5805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x12d6f8e5c259c4448219c178a1767e8f
        End
    End
    Begin
        dbText "Name" ="qryMailingList.dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.Location"
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.PC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.[Sales Rep]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.ADD1"
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.ADD2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.CITY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryMailingList.PROV"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =10
    Top =16
    Right =1653
    Bottom =973
    Left =-1
    Top =-1
    Right =1611
    Bottom =555
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =253
        Top =182
        Right =687
        Bottom =498
        Top =0
        Name ="qryMailingList"
        Name =""
    End
End
