Operation =1
Option =0
Begin InputTables
    Name ="dbo_CriticalPath"
End
Begin OutputColumns
    Alias ="Expr1"
    Expression ="dbo_CriticalPath.ProjectHeaderID"
    Alias ="SumOfDaysReqd"
    Expression ="Sum(dbo_CriticalPath.DaysReqd)"
    Alias ="MinOfStartDate"
    Expression ="Min(dbo_CriticalPath.StartDate)"
    Alias ="MaxOfEndDate"
    Expression ="Max([startdate]+CDate([daysreqd]-1))"
    Alias ="MaxOfProjectServiceID"
    Expression ="Max(dbo_CriticalPath.ProjectServiceID)"
End
Begin Groups
    Expression ="dbo_CriticalPath.ProjectHeaderID"
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
dbBinary "GUID" = Begin
    0x8036db03e27a2142b4ca22fd8c5d810e
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000640062006f005f00430072006900740069006300 ,
    0x61006c00500061007400680000000000000004f58332bec85d46935b7e55e6ce ,
    0x3067070000000000000000000000000000000000000045007800700072003100 ,
    0x000000000000b69559374bea9a478656986fb887451907000000000000000000 ,
    0x00000000000000000000530075006d004f006600440061007900730052006500 ,
    0x71006400000000000000e583473150755e42ae5624e231d8dfca070000000000 ,
    0x00000000000000000000000000004d0069006e004f0066005300740061007200 ,
    0x74004400610074006500000000000000cd57a1ad3ce90542889c52b18ea173ca ,
    0x07000000000000000000000000000000000000004d00610078004f0066004500 ,
    0x6e0064004400610074006500000000000000ffcf92fd5ec71f44a1f18517e042 ,
    0xbef707000000000000000000000000000000000000004d00610078004f006600 ,
    0x500072006f006a00650063007400530065007200760069006300650049004400 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_CriticalPath.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2160"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfDaysReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb69559374bea9a478656986fb8874519
        End
    End
    Begin
        dbText "Name" ="MinOfStartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe583473150755e42ae5624e231d8dfca
        End
    End
    Begin
        dbText "Name" ="MaxOfEndDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcd57a1ad3ce90542889c52b18ea173ca
        End
    End
    Begin
        dbText "Name" ="MaxOfProjectServiceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xffcf92fd5ec71f44a1f18517e042bef7
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbBinary "GUID" = Begin
            0x04f58332bec85d46935b7e55e6ce3067
        End
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =936
    Bottom =810
    Left =-1
    Top =-1
    Right =904
    Bottom =378
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =470
        Bottom =334
        Top =0
        Name ="dbo_CriticalPath"
        Name =""
    End
End
