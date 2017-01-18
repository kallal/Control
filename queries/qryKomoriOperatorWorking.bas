Operation =1
Option =0
Begin InputTables
    Name ="dbo_T_TeamWorking"
    Name ="dbo_M_WorkTeam"
End
Begin OutputColumns
    Expression ="dbo_M_WorkTeam.TeamName"
    Expression ="dbo_T_TeamWorking.StartDate"
End
Begin Joins
    LeftTable ="dbo_T_TeamWorking"
    RightTable ="dbo_M_WorkTeam"
    Expression ="dbo_T_TeamWorking.TeamID = dbo_M_WorkTeam.TeamID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x99cc9f2c21078840a063a1b6090824dd
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000cc3f53e60d816547bd2898c5aa630fdc00000000bc974ac1 ,
    0xea62e4400000000000000000640062006f005f0054005f005400650061006d00 ,
    0x57006f0072006b0069006e0067000000000000003efc8a48f227334a9c9ac117 ,
    0x1f99a32000000000f57f35c1ea62e4400000000000000000640062006f005f00 ,
    0x4d005f0057006f0072006b005400650061006d000000000000007de3ce008f12 ,
    0xa44592b6afa6b0acd48d070000003efc8a48f227334a9c9ac1171f99a3205400 ,
    0x650061006d004e0061006d006500000000000000a346c5067d42ea4b953d0b42 ,
    0x99c0133507000000cc3f53e60d816547bd2898c5aa630fdc5300740061007200 ,
    0x74004400610074006500000000000000180006877451bc48aa4cf01bfc274551 ,
    0x07000000cc3f53e60d816547bd2898c5aa630fdc5400650061006d0049004400 ,
    0x000000000000564d26eef6ad7b478ea8265be70af050070000003efc8a48f227 ,
    0x334a9c9ac1171f99a3205400650061006d004900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_M_WorkTeam.TeamName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_T_TeamWorking.StartDate"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =1001
    Left =-1
    Top =-1
    Right =1501
    Bottom =518
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =96
        Top =64
        Right =436
        Bottom =422
        Top =0
        Name ="dbo_T_TeamWorking"
        Name =""
    End
    Begin
        Left =633
        Top =92
        Right =978
        Bottom =367
        Top =0
        Name ="dbo_M_WorkTeam"
        Name =""
    End
End
