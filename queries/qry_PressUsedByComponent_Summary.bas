Operation =1
Option =0
Begin InputTables
    Name ="qry_PressUsedByComponent"
End
Begin OutputColumns
    Expression ="qry_PressUsedByComponent.ProjectHeaderID"
    Alias ="FirstOfPress"
    Expression ="First(qry_PressUsedByComponent.Press)"
End
Begin Groups
    Expression ="qry_PressUsedByComponent.ProjectHeaderID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000006956b366c79f344fa105d887fe17813700000000e2d9e49b ,
    0xd3e0e44000000000000000007100720079005f00500072006500730073005500 ,
    0x7300650064004200790043006f006d0070006f006e0065006e00740000000000 ,
    0x00000eeab2ec001d5f4a8d480e2b096d11750700000089680d98abf8314cb539 ,
    0xd89f7b105a69460069007200730074004f006600500072006500730073000000 ,
    0x000000002042568302f48b4d89eb4ba2abddca73070000006956b366c79f344f ,
    0xa105d887fe178137500072006f006a0065006300740048006500610064006500 ,
    0x7200490044000000000000003f09a22c331f6b4ca9319b06f8197f3c07000000 ,
    0x6956b366c79f344fa105d887fe17813750007200650073007300000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x89680d98abf8314cb539d89f7b105a69
End
dbMemo "OrderBy" ="[qry_PressUsedByComponent_Summary].[ProjectHeaderID] DESC"
Begin
    Begin
        dbText "Name" ="qry_PressUsedByComponent.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfPress"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0eeab2ec001d5f4a8d480e2b096d1175
        End
    End
End
Begin
    State =0
    Left =208
    Top =219
    Right =1683
    Bottom =942
    Left =-1
    Top =-1
    Right =1443
    Bottom =337
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =102
        Top =13
        Right =246
        Bottom =157
        Top =0
        Name ="qry_PressUsedByComponent"
        Name =""
    End
End
