Operation =1
Option =0
Having ="(((dbo_CompanyEmployeeTask.Category)=5))"
Begin InputTables
    Name ="dbo_CompanyEmployeeTask"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    Expression ="dbo_CompanyEmployeeTask.Category"
    Alias ="SumOfTotalTime"
    Expression ="Sum(dbo_CompanyEmployeeTask.TotalTime)"
End
Begin Groups
    Expression ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
    GroupLevel =0
    Expression ="dbo_CompanyEmployeeTask.Category"
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
    0x2b45fb8659ca15428247f002a2372b1c
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000900d20bed9064f418a1ed9af6e63076200000000aa5f9ac0 ,
    0xea62e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065005400610073006b00000000000000 ,
    0x96d914fbb79ffd48b88db669fffe4efb07000000000000000000000000000000 ,
    0x00000000530075006d004f00660054006f00740061006c00540069006d006500 ,
    0x00000000000049e2ef5965da7745bd959d2f0b07654007000000900d20bed906 ,
    0x4f418a1ed9af6e630762500072006f006a0065006300740043006f006d007000 ,
    0x6f006e0065006e00740048006500610064006500720049004400000000000000 ,
    0x2295bf48054d484c913bafd1058231aa07000000900d20bed9064f418a1ed9af ,
    0x6e630762430061007400650067006f007200790000000000000035bff03a348e ,
    0x164c9d955e921e074b7c07000000900d20bed9064f418a1ed9af6e6307625400 ,
    0x6f00740061006c00540069006d00650000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x763db813d0adf6478c6b1c6df8758eb9
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Category"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xadedeef822764d439c36ba2fd4086f2b
        End
    End
    Begin
        dbText "Name" ="SumOfTotalTime"
        dbInteger "ColumnWidth" ="3510"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x96d914fbb79ffd48b88db669fffe4efb
        End
    End
End
Begin
    State =0
    Left =152
    Top =224
    Right =1534
    Bottom =980
    Left =-1
    Top =-1
    Right =1350
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =647
        Bottom =364
        Top =0
        Name ="dbo_CompanyEmployeeTask"
        Name =""
    End
End
