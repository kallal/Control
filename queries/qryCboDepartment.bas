Operation =1
Option =0
Begin InputTables
    Name ="qryTaskCategory"
End
Begin OutputColumns
    Expression ="qryTaskCategory.ID"
    Expression ="qryTaskCategory.TaskCategory"
End
Begin OrderBy
    Expression ="qryTaskCategory.ID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x86a22cd16036784f9c7a9abbf909c2a1
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c48983360b8a474a9b40f8c4b3054ac5000000008cb3c132 ,
    0x0fd8e44000000000000000007100720079005400610073006b00430061007400 ,
    0x650067006f007200790000000000000046298f9267a8544db8d6ff79106e1140 ,
    0x07000000c48983360b8a474a9b40f8c4b3054ac549004400000000000000d2f1 ,
    0xa09f98f39147bd88f13c6bafc21107000000c48983360b8a474a9b40f8c4b305 ,
    0x4ac55400610073006b00430061007400650067006f0072007900000000000000 ,
    0x000000000000000000000000000000000c000000050000000000000000000000 ,
    0x000000000000
End
Begin
    Begin
        dbText "Name" ="qryTaskCategory.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryTaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1628
    Bottom =860
    Left =-1
    Top =-1
    Right =1558
    Bottom =440
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =498
        Top =159
        Right =642
        Bottom =303
        Top =0
        Name ="qryTaskCategory"
        Name =""
    End
End
