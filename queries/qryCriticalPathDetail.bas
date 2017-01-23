Operation =1
Option =0
Begin InputTables
    Name ="z_dbo_CriticalPath"
End
Begin OutputColumns
    Expression ="z_dbo_CriticalPath.ID"
    Expression ="z_dbo_CriticalPath.ProjectHeaderID"
    Expression ="z_dbo_CriticalPath.ProjectServiceID"
    Expression ="z_dbo_CriticalPath.ServiceDescription"
    Expression ="z_dbo_CriticalPath.StartDate"
    Alias ="Expr1"
    Expression ="[z_dbo_CriticalPath].DaysReqd"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xdacd434c79262348aec37ecf19c1b7d0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000007f5a392d6d2de64f90148e177446634d00000000592abd3b ,
    0x3369e44000000000000000007a005f00640062006f005f004300720069007400 ,
    0x6900630061006c0050006100740068000000000000003b77ce8337389b4c96dd ,
    0x0bc7375fb40507000000dacd434c79262348aec37ecf19c1b7d0450078007000 ,
    0x720031000000000000009f5a65522a9bc04a9ef5eb1faaee0755070000007f5a ,
    0x392d6d2de64f90148e177446634d49004400000000000000d2f49153b7c2af49 ,
    0xaf404ef296b89a95070000007f5a392d6d2de64f90148e177446634d50007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0x02984028eea553459897b303de94fce7070000007f5a392d6d2de64f90148e17 ,
    0x7446634d500072006f006a006500630074005300650072007600690063006500 ,
    0x4900440000000000000008dbc45e751146408d08d3bf1ae5c248070000007f5a ,
    0x392d6d2de64f90148e177446634d530065007200760069006300650044006500 ,
    0x73006300720069007000740069006f006e00000000000000db4013e69bfd0e4b ,
    0xa104c4eb8c2a0a70070000007f5a392d6d2de64f90148e177446634d53007400 ,
    0x6100720074004400610074006500000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_CriticalPath.DaysReqd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CriticalPath.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CriticalPath.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CriticalPath.ProjectServiceID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CriticalPath.ServiceDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CriticalPath.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DaysReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeeab302091c12542be1b57b17dd7f4ff
        End
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3b77ce8337389b4c96dd0bc7375fb405
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
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="z_dbo_CriticalPath"
        Name =""
    End
End
