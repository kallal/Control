Operation =1
Option =0
Begin InputTables
    Name ="qryCompanyEmployeeTaskSummary"
End
Begin OutputColumns
    Expression ="qryCompanyEmployeeTaskSummary.ProjectHeaderID"
    Alias ="SumOfNetCost"
    Expression ="Sum(qryCompanyEmployeeTaskSummary.NetCost)"
End
Begin Groups
    Expression ="qryCompanyEmployeeTaskSummary.ProjectHeaderID"
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
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qryCompanyEmployeeTaskSummarySUM].[ProjectHeaderID] DESC"
dbBinary "GUID" = Begin
    0x672beb9716914e43ad281bb1314c4255
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000075798f6d5420ec4d9b4257135afeb60e00000000a9cb148e ,
    0x6fe0e440000000000000000071007200790043006f006d00700061006e007900 ,
    0x45006d0070006c006f007900650065005400610073006b00530075006d006d00 ,
    0x610072007900000000000000c146f2dc70dc5a47abccf6d8e53232a207000000 ,
    0x672beb9716914e43ad281bb1314c4255530075006d004f0066004e0065007400 ,
    0x43006f0073007400000000000000006a9a68bf819947b96bb425e85d41300700 ,
    0x000075798f6d5420ec4d9b4257135afeb60e500072006f006a00650063007400 ,
    0x48006500610064006500720049004400000000000000ce205427018da54cbbe2 ,
    0xff94ac25bac00700000075798f6d5420ec4d9b4257135afeb60e4e0065007400 ,
    0x43006f0073007400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.DefaultCostPerHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskList.CostPerHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NetCost"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0xce205427018da54cbbe2ff94ac25bac0
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.ProjectComponentHeaderID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeTask.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="rATE"
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd95262d4b5d3d141b489e992c31c0c21
        End
    End
    Begin
        dbText "Name" ="dbo_TaskList.TaskCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfTotalTime"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbBinary "GUID" = Begin
            0x47d75b3dbd9bc248b9e4708446469758
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.Rate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.NetCost"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfNetCost"
        dbInteger "ColumnWidth" ="4080"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc146f2dc70dc5a47abccf6d8e53232a2
        End
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.TaskCode"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.ProjectComponentHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.SumOfTotalTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.Description"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.Category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.DefaultCostPerHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryCompanyEmployeeTaskSummary.CostPerHour"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =169
    Top =-12
    Right =1473
    Bottom =797
    Left =-1
    Top =-1
    Right =1272
    Bottom =419
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =274
        Top =24
        Right =944
        Bottom =380
        Top =0
        Name ="qryCompanyEmployeeTaskSummary"
        Name =""
    End
End
