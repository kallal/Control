Operation =1
Option =0
Where ="(((qryRptManagementEmployeeTask.StartDate)>=Date()))"
Begin InputTables
    Name ="qryRptManagementEmployeeTask"
End
Begin OutputColumns
    Expression ="qryRptManagementEmployeeTask.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xfbe6505770018b4eba32dfe158ab9275
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000ad9d3b404650604c9d59e847df2fa9580000000028d4845b ,
    0x12d5e44000000000000000007100720079005200700074004d0061006e006100 ,
    0x670065006d0065006e00740045006d0070006c006f0079006500650054006100 ,
    0x73006b000000000000004d410e42c75d7841b1169971fc537adf07000000ad9d ,
    0x3b404650604c9d59e847df2fa958530074006100720074004400610074006500 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x72a35ef847453b4ea4c9a50701bdcb3a
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x549e8209d647bc4d97fc304be8b21b8d
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.FullName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3c3bbf546dac6d41b49d03a2ce1774d7
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xafb0a3c5edae2048923b4f9699e4dbf8
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf4a802a80060e945823affb38fcd0609
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ca0ef136bb6cf4dafcd99ea728623e5
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x828dc0f404aae149934c5e244c54fa4b
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.EndDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa2404aadd1ccb44bbe2b8f82b6af19da
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.EndTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x05185d617b000b478450545483311a32
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.TotalTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1ea156f3326039498dc6d9c85ea66177
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.Description"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xebe32c7d6121cd48b617458061940513
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_TaskList.TaskCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d17fdf119b3df4ba1b3e1edc5219e6b
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_TaskList.TaskDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x038eee83ee50d14fba3ba6ecc28501a7
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xea6b6bd26bbc9c43aeaa5466d4792798
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a467455640e1b408d13876e99166119
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.CATEGORY"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x061ca181e863964ea23a813a9ac62a7a
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_TaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe015b0ff7cd9c047ac612593c2c9d905
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4d1dd124bca394bb7681d9892fffdad
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x05baa4ef65352044b7694c2e73972794
        End
    End
    Begin
        dbText "Name" ="qryRptManagementEmployeeTask.dbo_CompanyEmployeeTask.StartTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe14d8b6f2b79e243a1a241539be9876a
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1553
    Bottom =859
    Left =-1
    Top =-1
    Right =1443
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =41
        Top =77
        Right =855
        Bottom =440
        Top =0
        Name ="qryRptManagementEmployeeTask"
        Name =""
    End
End
