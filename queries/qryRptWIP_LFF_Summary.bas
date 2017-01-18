Operation =1
Option =0
Begin InputTables
    Name ="qryRptWIP_LFF_Detail"
    Name ="dbo_ProjectComponentLFFinish"
End
Begin OutputColumns
    Expression ="qryRptWIP_LFF_Detail.ProjectComponentID"
    Expression ="qryRptWIP_LFF_Detail.CompName"
    Expression ="qryRptWIP_LFF_Detail.ProjectName"
    Expression ="qryRptWIP_LFF_Detail.ComponentName"
    Expression ="qryRptWIP_LFF_Detail.SectionName"
    Expression ="qryRptWIP_LFF_Detail.DocketNum"
    Alias ="MinOfHasCutter"
    Expression ="Min(qryRptWIP_LFF_Detail.HasCutter)"
    Alias ="MinOfHasRollCutter"
    Expression ="Min(qryRptWIP_LFF_Detail.HasRollCutter)"
    Alias ="MinOfHasRouter"
    Expression ="Min(qryRptWIP_LFF_Detail.HasRouter)"
    Alias ="MinOfHasLaminate"
    Expression ="Min(qryRptWIP_LFF_Detail.HasLaminate)"
    Alias ="MinOfHasDrill"
    Expression ="Min(qryRptWIP_LFF_Detail.HasDrill)"
    Alias ="MinOfHasTaping"
    Expression ="Min(qryRptWIP_LFF_Detail.HasTaping)"
    Alias ="MinOfHasKitting"
    Expression ="Min(qryRptWIP_LFF_Detail.HasKitting)"
    Alias ="MinOfHasSewnHem"
    Expression ="Min(qryRptWIP_LFF_Detail.HasSewnHem)"
    Alias ="MinOfHasOtherSrv"
    Expression ="Min(qryRptWIP_LFF_Detail.HasOtherSrv)"
    Expression ="qryRptWIP_LFF_Detail.Status"
    Expression ="qryRptWIP_LFF_Detail.InvoiceNum"
    Expression ="qryRptWIP_LFF_Detail.KeepInProductionYN"
    Expression ="dbo_ProjectComponentLFFinish.Priority"
    Expression ="qryRptWIP_LFF_Detail.StPrint"
    Expression ="qryRptWIP_LFF_Detail.StLFFinish"
    Expression ="qryRptWIP_LFF_Detail.MHLFFinish"
    Expression ="qryRptWIP_LFF_Detail.DueDate"
    Expression ="qryRptWIP_LFF_Detail.KeepInProductionYN"
    Expression ="qryRptWIP_LFF_Detail.InvoiceNum"
    Expression ="qryRptWIP_LFF_Detail.ProofDisplay"
    Expression ="qryRptWIP_LFF_Detail.ProjectStatusID"
    Expression ="qryRptWIP_LFF_Detail.DueDate"
    Expression ="qryRptWIP_LFF_Detail.ProjectStatusID"
    Expression ="qryRptWIP_LFF_Detail.ProofDisplay"
    Expression ="qryRptWIP_LFF_Detail.DeliveryCutoffTime"
    Expression ="qryRptWIP_LFF_Detail.ExpectedQty"
    Expression ="qryRptWIP_LFF_Detail.IsRush"
    Expression ="qryRptWIP_LFF_Detail.ContactGeneralID"
    Expression ="qryRptWIP_LFF_Detail.DYLFFinish"
    Expression ="qryRptWIP_LFF_Detail.FirmDueDate"
    Alias ="myPriority"
    Expression ="Nz([dbo_projectComponentLFFinish].[Priority],99)"
    Expression ="qryRptWIP_LFF_Detail.ProjectComponentID"
    Expression ="qryRptWIP_LFF_Detail.ProjectHeaderID"
    Alias ="LFFinishID"
    Expression ="dbo_ProjectComponentLFFinish.ID"
    Expression ="qryRptWIP_LFF_Detail.CompanyLocationID"
    Expression ="qryRptWIP_LFF_Detail.ReportColor"
End
Begin Joins
    LeftTable ="qryRptWIP_LFF_Detail"
    RightTable ="dbo_ProjectComponentLFFinish"
    Expression ="qryRptWIP_LFF_Detail.ProjectComponentID = dbo_ProjectComponentLFFinish.ProjectCo"
        "mponentID"
    Flag =2
End
Begin Groups
    Expression ="qryRptWIP_LFF_Detail.CompName"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProjectName"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ComponentName"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.SectionName"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.DocketNum"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.Status"
    GroupLevel =0
    Expression ="dbo_ProjectComponentLFFinish.Priority"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.StPrint"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.StLFFinish"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.MHLFFinish"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.KeepInProductionYN"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.InvoiceNum"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.DueDate"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProjectStatusID"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProofDisplay"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.DeliveryCutoffTime"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ExpectedQty"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.IsRush"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ContactGeneralID"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.DYLFFinish"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.FirmDueDate"
    GroupLevel =0
    Expression ="Nz([dbo_projectComponentLFFinish].[Priority],99)"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProjectComponentID"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProjectHeaderID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentLFFinish.ID"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.KeepInProductionYN"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.InvoiceNum"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.DueDate"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProjectStatusID"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ProofDisplay"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.CompanyLocationID"
    GroupLevel =0
    Expression ="qryRptWIP_LFF_Detail.ReportColor"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe0644a061c4f00408bf31afbd2f3c0d5
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000614bcc4f284baa4cadb9f55c8a32432300000000e1e58685 ,
    0xb3d7e44000000000000000007100720079005200700074005700490050005f00 ,
    0x4c00460046005f00440065007400610069006c000000000000003bfc63cd91e5 ,
    0x23448c4341ce25ac7f42000000007438572bacd7e44000000000000000006400 ,
    0x62006f005f00500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e0074004c004600460069006e00690073006800000000000000949c2a95 ,
    0x2721f144b4935c50efed961207000000e0644a061c4f00408bf31afbd2f3c0d5 ,
    0x4d0069006e004f00660048006100730043007500740074006500720000000000 ,
    0x00002e46c237e9be6e4387cbce3546addf3907000000e0644a061c4f00408bf3 ,
    0x1afbd2f3c0d54d0069006e004f00660048006100730052006f006c006c004300 ,
    0x75007400740065007200000000000000687be1562e9f584ebd8a431fb0dac79e ,
    0x07000000e0644a061c4f00408bf31afbd2f3c0d54d0069006e004f0066004800 ,
    0x6100730052006f007500740065007200000000000000044d9065f3918f4b942d ,
    0x9ac7fd59c33f07000000e0644a061c4f00408bf31afbd2f3c0d54d0069006e00 ,
    0x4f0066004800610073004c0061006d0069006e00610074006500000000000000 ,
    0x314c0e06b55082439d6eae2c73a578ad07000000e0644a061c4f00408bf31afb ,
    0xd2f3c0d54d0069006e004f0066004800610073004400720069006c006c000000 ,
    0x00000000d2aad2db85aa99449b5345d33a2f59cd07000000e0644a061c4f0040 ,
    0x8bf31afbd2f3c0d54d0069006e004f0066004800610073005400610070006900 ,
    0x6e006700000000000000091ea7bcfd0f734aa9e7b617dad4399207000000e064 ,
    0x4a061c4f00408bf31afbd2f3c0d54d0069006e004f0066004800610073004b00 ,
    0x69007400740069006e006700000000000000ae3f91e524a18d4e8b62378efec0 ,
    0x2ac107000000e0644a061c4f00408bf31afbd2f3c0d54d0069006e004f006600 ,
    0x4800610073005300650077006e00480065006d00000000000000ba6e75b53833 ,
    0x29479c9bda34a9984da407000000e0644a061c4f00408bf31afbd2f3c0d54d00 ,
    0x69006e004f0066004800610073004f0074006800650072005300720076000000 ,
    0x00000000ebac54d9610e344eaa51f5d51bf722e907000000e0644a061c4f0040 ,
    0x8bf31afbd2f3c0d56d0079005000720069006f00720069007400790000000000 ,
    0x00007e39c8b3041aae4a8a75ed3056d8757907000000e0644a061c4f00408bf3 ,
    0x1afbd2f3c0d54c004600460069006e0069007300680049004400000000000000 ,
    0x1e40657114655c4397fc4838a9a13d2507000000614bcc4f284baa4cadb9f55c ,
    0x8a324323500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e00740049004400000000000000da5b718935ed4143b9c647680df595f10700 ,
    0x0000614bcc4f284baa4cadb9f55c8a32432343006f006d0070004e0061006d00 ,
    0x65000000000000001c9b84855b8f264abd34a504e56b05af07000000614bcc4f ,
    0x284baa4cadb9f55c8a324323500072006f006a006500630074004e0061006d00 ,
    0x6500000000000000a21dc4fed47c244fa08fb5209ebbfbc707000000614bcc4f ,
    0x284baa4cadb9f55c8a32432343006f006d0070006f006e0065006e0074004e00 ,
    0x61006d006500000000000000e9109248176610449a9283fb025cfefd07000000 ,
    0x614bcc4f284baa4cadb9f55c8a324323530065006300740069006f006e004e00 ,
    0x61006d00650000000000000095f4e4e94221bf4cb264d8f2bcaa5f4a07000000 ,
    0x614bcc4f284baa4cadb9f55c8a32432344006f0063006b00650074004e007500 ,
    0x6d000000000000001b420ba99e70424782f5e01ec3c5157e07000000614bcc4f ,
    0x284baa4cadb9f55c8a3243234800610073004300750074007400650072000000 ,
    0x000000007445d7793732e946b9c9a9c0b828504807000000614bcc4f284baa4c ,
    0xadb9f55c8a32432348006100730052006f006c006c0043007500740074006500 ,
    0x720000000000000062878ec8fedc484d85115c3ba8f8250c07000000614bcc4f ,
    0x284baa4cadb9f55c8a32432348006100730052006f0075007400650072000000 ,
    0x000000000403edd95e096148b9f904b1a7120f0e07000000614bcc4f284baa4c ,
    0xadb9f55c8a3243234800610073004c0061006d0069006e006100740065000000 ,
    0x00000000bf415f8d37d9c845b2e86d12a05c951307000000614bcc4f284baa4c ,
    0xadb9f55c8a3243234800610073004400720069006c006c000000000000008668 ,
    0x125fd1bf9d48b3190313ff17f1a507000000614bcc4f284baa4cadb9f55c8a32 ,
    0x432348006100730054006100700069006e006700000000000000a473e003de09 ,
    0xd540b06e8007d5854ba607000000614bcc4f284baa4cadb9f55c8a3243234800 ,
    0x610073004b0069007400740069006e006700000000000000d9bfbe4b140cca4e ,
    0x96783149bc2ec91607000000614bcc4f284baa4cadb9f55c8a32432348006100 ,
    0x73005300650077006e00480065006d00000000000000f1e532df9ae7d84e95e0 ,
    0x8a34bd0dba5607000000614bcc4f284baa4cadb9f55c8a324323480061007300 ,
    0x4f007400680065007200530072007600000000000000404d31817d65844a8da6 ,
    0xa72b740b671e07000000614bcc4f284baa4cadb9f55c8a324323530074006100 ,
    0x740075007300000000000000e888f07c5e51cb46a64537e533d89f7207000000 ,
    0x614bcc4f284baa4cadb9f55c8a32432349006e0076006f006900630065004e00 ,
    0x75006d000000000000000d45eb16938f0a458de9e1a323bb5dd507000000614b ,
    0xcc4f284baa4cadb9f55c8a3243234b0065006500700049006e00500072006f00 ,
    0x640075006300740069006f006e0059004e0000000000000018b37c8aab5ad04c ,
    0xbcb51575a3486135070000003bfc63cd91e523448c4341ce25ac7f4250007200 ,
    0x69006f007200690074007900000000000000b7c36995fcfafa45ad69b32c6b3b ,
    0x9b9e07000000614bcc4f284baa4cadb9f55c8a32432353007400500072006900 ,
    0x6e007400000000000000b57d49568e0a0748b3bcda76abcd850f07000000614b ,
    0xcc4f284baa4cadb9f55c8a324323530074004c004600460069006e0069007300 ,
    0x680000000000000034e96cce7623ef419098596b394b016e07000000614bcc4f ,
    0x284baa4cadb9f55c8a3243234d0048004c004600460069006e00690073006800 ,
    0x000000000000c4e49d975864f94698cb4f0614c3ec7a07000000614bcc4f284b ,
    0xaa4cadb9f55c8a324323440075006500440061007400650000000000000097bf ,
    0x7db54a399948baa43dcb82c1345507000000614bcc4f284baa4cadb9f55c8a32 ,
    0x4323500072006f006f00660044006900730070006c0061007900000000000000 ,
    0x6b8100b18f7ba34aa3c59fda19a111ed07000000614bcc4f284baa4cadb9f55c ,
    0x8a324323500072006f006a006500630074005300740061007400750073004900 ,
    0x440000000000000078fe3e064e1fef458d83017ec118ee5607000000614bcc4f ,
    0x284baa4cadb9f55c8a324323440065006c006900760065007200790043007500 ,
    0x74006f0066006600540069006d0065000000000000007857d2ada5ee1a42ae46 ,
    0x59405dc8fd6b07000000614bcc4f284baa4cadb9f55c8a324323450078007000 ,
    0x6500630074006500640051007400790000000000000093ba397e75759745b399 ,
    0x91abbd48941707000000614bcc4f284baa4cadb9f55c8a324323490073005200 ,
    0x7500730068000000000000008265226ce5165f4597f9cda188898d9607000000 ,
    0x614bcc4f284baa4cadb9f55c8a32432343006f006e0074006100630074004700 ,
    0x65006e006500720061006c0049004400000000000000fd0ed26d4a6bd649b28c ,
    0xc16ee730e06307000000614bcc4f284baa4cadb9f55c8a324323440059004c00 ,
    0x4600460069006e0069007300680000000000000047b1ba89889f994aa5a5b0ab ,
    0x4f547da307000000614bcc4f284baa4cadb9f55c8a3243234600690072006d00 ,
    0x44007500650044006100740065000000000000002042568302f48b4d89eb4ba2 ,
    0xabddca7307000000614bcc4f284baa4cadb9f55c8a324323500072006f006a00 ,
    0x650063007400480065006100640065007200490044000000000000007f148fff ,
    0x9d821d459a2b7339d86cf4c0070000003bfc63cd91e523448c4341ce25ac7f42 ,
    0x4900440000000000000097f4d916639123478b4d0c4170d61ffb07000000614b ,
    0xcc4f284baa4cadb9f55c8a32432343006f006d00700061006e0079004c006f00 ,
    0x63006100740069006f006e004900440000000000000001d2b706cee7ea48b9f4 ,
    0xaf0b27f2548007000000614bcc4f284baa4cadb9f55c8a324323520065007000 ,
    0x6f007200740043006f006c006f007200000000000000874aba554fb1af45af1a ,
    0x3c746507790c070000003bfc63cd91e523448c4341ce25ac7f42500072006f00 ,
    0x6a0065006300740043006f006d0070006f006e0065006e007400490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="MinOfHasLaminate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x044d9065f3918f4b942d9ac7fd59c33f
        End
    End
    Begin
        dbText "Name" ="MinOfHasDrill"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x314c0e06b55082439d6eae2c73a578ad
        End
    End
    Begin
        dbText "Name" ="MinOfHasTaping"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2aad2db85aa99449b5345d33a2f59cd
        End
    End
    Begin
        dbText "Name" ="MinOfHasKitting"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x091ea7bcfd0f734aa9e7b617dad43992
        End
    End
    Begin
        dbText "Name" ="MinOfHasSewnHem"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xae3f91e524a18d4e8b62378efec02ac1
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.Status"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5beacdbcca55b9448d41287ec017d455
        End
    End
    Begin
        dbText "Name" ="MinOfHasCutter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x949c2a952721f144b4935c50efed9612
        End
    End
    Begin
        dbText "Name" ="MinOfHasRollCutter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2e46c237e9be6e4387cbce3546addf39
        End
    End
    Begin
        dbText "Name" ="MinOfHasRouter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x687be1562e9f584ebd8a431fb0dac79e
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x886ccda6f985cc45872036ea029fbe7e
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x765d0599ba58cc4db230218755a382e7
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x50776f48d5af6447b8458ccf361794cb
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.SectionName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x50a94456e5284a47ad8ddb4317694537
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1518af31c7243841a286056651be349e
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb3671245c0c6ce408fc67354e39aeb88
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinish.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.StLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.MHLFFinish"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.DueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ProjectStatusID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1016"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1017"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1022"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc32b0a5fe245824daacb118e1a20ef95
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ProofDisplay"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ExpectedQty"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.IsRush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1025"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x464f389c2aacf04a903b125baaee4345
        End
    End
    Begin
        dbText "Name" ="Expr1026"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.DYLFFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.FirmDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPriority"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xebac54d9610e344eaa51f5d51bf722e9
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LFFinishID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7e39c8b3041aae4a8a75ed3056d87579
        End
    End
    Begin
        dbText "Name" ="Expr1000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinOfHasOtherSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xba6e75b5383329479c9bda34a9984da4
        End
    End
    Begin
        dbText "Name" ="ProofDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa0270a5ec56b094eb6bbfd51c8981884
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.CompanyLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.ReportColor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb2c81fc7b5d981419119eb8176654e61
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentLFFinish.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HasOtherSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ea8e9cf1d04bb41aa6c08eef64e523e
        End
    End
    Begin
        dbText "Name" ="qryRptWIP_LFF_Detail.HasOtherSrv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Priority"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x07f75cde63426349ad8d1d78cd17d8ad
        End
    End
End
Begin
    State =0
    Left =32
    Top =127
    Right =1562
    Bottom =850
    Left =-1
    Top =-1
    Right =1498
    Bottom =359
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =92
        Top =5
        Right =448
        Bottom =348
        Top =0
        Name ="qryRptWIP_LFF_Detail"
        Name =""
    End
    Begin
        Left =479
        Top =15
        Right =731
        Bottom =322
        Top =0
        Name ="dbo_ProjectComponentLFFinish"
        Name =""
    End
End
