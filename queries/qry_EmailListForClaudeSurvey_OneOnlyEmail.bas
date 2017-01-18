Operation =1
Option =0
Begin InputTables
    Name ="qry_EmailListForClaudeSurvey"
End
Begin OutputColumns
    Expression ="qry_EmailListForClaudeSurvey.Email"
    Alias ="FirstOfID"
    Expression ="First(qry_EmailListForClaudeSurvey.ID)"
End
Begin Groups
    Expression ="qry_EmailListForClaudeSurvey.Email"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xc169cbc6d35e854ea3d930eb3459432a
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000001037df9fa3d6340a67493df1073380a00000000b4fafd6d ,
    0xec62e44000000000000000007100720079005f0045006d00610069006c004c00 ,
    0x69007300740046006f00720043006c0061007500640065005300750072007600 ,
    0x650079000000000000004593cbaa128f0e4cbc95b0c6d6cca6d3070000000000 ,
    0x0000000000000000000000000000460069007200730074004f00660049004400 ,
    0x00000000000012d8b6090273774da264dd2a742ea41d0700000001037df9fa3d ,
    0x6340a67493df1073380a45006d00610069006c00000000000000e0b7aa1a6ad5 ,
    0x8345865216cdf3cbec4e0700000001037df9fa3d6340a67493df1073380a4900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.Email"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xace1c6672d9ec943a2aaee8b6e2a222b
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4593cbaa128f0e4cbc95b0c6d6cca6d3
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =980
    Left =-1
    Top =-1
    Right =1501
    Bottom =514
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qry_EmailListForClaudeSurvey"
        Name =""
    End
End
