Operation =1
Option =0
Begin InputTables
    Name ="qry_EmailListForClaudeSurvey_OneOnlyEmail"
    Name ="qry_EmailListForClaudeSurvey"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="qry_EmailListForClaudeSurvey.FN"
    Expression ="qry_EmailListForClaudeSurvey.MN"
    Expression ="qry_EmailListForClaudeSurvey.LN"
    Expression ="qry_EmailListForClaudeSurvey.PreferredName"
    Expression ="qry_EmailListForClaudeSurvey.Email"
    Expression ="qry_EmailListForClaudeSurvey.CompName"
    Expression ="qry_EmailListForClaudeSurvey.IsClient"
    Expression ="qry_EmailListForClaudeSurvey.IsVendor"
    Expression ="qry_EmailListForClaudeSurvey.IsCompetitor"
    Expression ="qry_EmailListForClaudeSurvey.SalesRepID"
    Expression ="qry_EmailListForClaudeSurvey.DeleteMeYN"
    Expression ="qry_EmailListForClaudeSurvey.VerifiedOn"
    Expression ="qry_EmailListForClaudeSurvey.VerifiedBy"
    Expression ="qry_EmailListForClaudeSurvey.SendEmail"
    Expression ="qry_EmailListForClaudeSurvey.IsActive"
    Alias ="SalesRep"
    Expression ="IIf([SalesRepID]=32 Or [salesrepid]=33,\"\",[dbo_CompanyEmployee].[FN] & \" \" &"
        " [dbo_CompanyEmployee].[ln])"
End
Begin Joins
    LeftTable ="qry_EmailListForClaudeSurvey_OneOnlyEmail"
    RightTable ="qry_EmailListForClaudeSurvey"
    Expression ="qry_EmailListForClaudeSurvey_OneOnlyEmail.FirstOfID = qry_EmailListForClaudeSurv"
        "ey.ID"
    Flag =1
    LeftTable ="qry_EmailListForClaudeSurvey"
    RightTable ="dbo_CompanyEmployee"
    Expression ="qry_EmailListForClaudeSurvey.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xe80c75255a8a2247a11e01743cfc562d
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbMemo "OrderBy" ="[qry_EmailListForClaudeWithRep-Final].[PreferredName], [qry_EmailListForClaudeWi"
    "thRep-Final].[LN], [qry_EmailListForClaudeWithRep-Final].[FN]"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c169cbc6d35e854ea3d930eb3459432a00000000841d006e ,
    0xec62e44000000000000000007100720079005f0045006d00610069006c004c00 ,
    0x69007300740046006f00720043006c0061007500640065005300750072007600 ,
    0x650079005f004f006e0065004f006e006c00790045006d00610069006c000000 ,
    0x0000000001037df9fa3d6340a67493df1073380a00000000f57bff6dec62e440 ,
    0x00000000000000007100720079005f0045006d00610069006c004c0069007300 ,
    0x740046006f00720043006c006100750064006500530075007200760065007900 ,
    0x000000000000431c785ce507fd4487a1822c7cd25c6600000000412096c0ea62 ,
    0xe4400000000000000000640062006f005f0043006f006d00700061006e007900 ,
    0x45006d0070006c006f00790065006500000000000000f65ec4f4aac4bc45aea2 ,
    0x6a7f8e44ce9c0700000000000000000000000000000000000000530061006c00 ,
    0x65007300520065007000000000000000e2ccc9832c750142902dd48b09b8a456 ,
    0x0700000001037df9fa3d6340a67493df1073380a46004e0000000000000038ea ,
    0xa2343b75f4498f90a257cf28a4a80700000001037df9fa3d6340a67493df1073 ,
    0x380a4d004e00000000000000948478514760fb42ad51ba4cad8c4fea07000000 ,
    0x01037df9fa3d6340a67493df1073380a4c004e00000000000000fea708a22436 ,
    0x8a4f90b993ae55fc26ba0700000001037df9fa3d6340a67493df1073380a5000 ,
    0x720065006600650072007200650064004e0061006d00650000000000000012d8 ,
    0xb6090273774da264dd2a742ea41d0700000001037df9fa3d6340a67493df1073 ,
    0x380a45006d00610069006c00000000000000f097196ae0a50d46a69e14ef0c5f ,
    0xb83d0700000001037df9fa3d6340a67493df1073380a43006f006d0070004e00 ,
    0x61006d00650000000000000089f350e8679a04459c13e1e6cd43df7e07000000 ,
    0x01037df9fa3d6340a67493df1073380a4900730043006c00690065006e007400 ,
    0x000000000000a4100bdf78ae2245bc2c06fa3b73e2be0700000001037df9fa3d ,
    0x6340a67493df1073380a49007300560065006e0064006f007200000000000000 ,
    0x58a020251640114a99329e2f045884f10700000001037df9fa3d6340a67493df ,
    0x1073380a4900730043006f006d00700065007400690074006f00720000000000 ,
    0x0000ff4fbc594cce0a4aabb94a92b484a2340700000001037df9fa3d6340a674 ,
    0x93df1073380a530061006c006500730052006500700049004400000000000000 ,
    0x8825e64b9b48884b8ca56ceb6859c4830700000001037df9fa3d6340a67493df ,
    0x1073380a440065006c006500740065004d00650059004e0000000000000077f5 ,
    0xdfe664bde04eb8fbc529066fe4110700000001037df9fa3d6340a67493df1073 ,
    0x380a560065007200690066006900650064004f006e000000000000000740a008 ,
    0xf007ee4b9acd955b3ea533760700000001037df9fa3d6340a67493df1073380a ,
    0x56006500720069006600690065006400420079000000000000000eed880ea923 ,
    0x9d44be21b68f1e102da00700000001037df9fa3d6340a67493df1073380a5300 ,
    0x65006e00640045006d00610069006c000000000000005ebeb34792c1554a8c94 ,
    0x0abdd7f404f20700000001037df9fa3d6340a67493df1073380a490073004100 ,
    0x630074006900760065000000000000002b42c8be7cfa534a8515b53e50209ccf ,
    0x07000000431c785ce507fd4487a1822c7cd25c6646004e000000000000006ee7 ,
    0x053a7af8f44c9a585dba8febe06007000000431c785ce507fd4487a1822c7cd2 ,
    0x5c666c006e000000000000004593cbaa128f0e4cbc95b0c6d6cca6d307000000 ,
    0xc169cbc6d35e854ea3d930eb3459432a460069007200730074004f0066004900 ,
    0x4400000000000000e0b7aa1a6ad58345865216cdf3cbec4e0700000001037df9 ,
    0xfa3d6340a67493df1073380a49004400000000000000c6c54d8e9dff594db3e1 ,
    0x9de4c2b573f507000000431c785ce507fd4487a1822c7cd25c66490044000000 ,
    0x00000000e80c75255a8a2247a11e01743cfc562d0000000039d4036eec62e440 ,
    0x00000000000000007100720079005f0045006d00610069006c004c0069007300 ,
    0x740046006f00720043006c006100750064006500570069007400680052006500 ,
    0x70002d00460069006e0061006c000000000000003622d812209c4442921c3d45 ,
    0x9757d28207000000e80c75255a8a2247a11e01743cfc562d5000720065006600 ,
    0x650072007200650064004e0061006d0065000000000000009e57106590ef7a44 ,
    0x9f3c29bcd45668fe07000000e80c75255a8a2247a11e01743cfc562d4c004e00 ,
    0x0000000000002bf0e5167b8f0f418eb164d80f1b3c4d07000000e80c75255a8a ,
    0x2247a11e01743cfc562d46004e00000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc81c69bc74769e43a09fbb6ac5008f1a
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2bf0e5167b8f0f418eb164d80f1b3c4d
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.MN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2032e7cd838e444c96e8571587f8d202
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e57106590ef7a449f3c29bcd45668fe
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.PreferredName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3622d812209c4442921c3d459757d282
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.Email"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x91377b8ed6a45b47bca2af976378e7d3
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xef85f2b9050917468b7d49a523454690
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a04cb487aecb041a8d175f8e6bacb63
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc4aa2cee7dc6db4c8119be8617cfeb5b
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb698e5ece4d3804bb0f8ab13a51c00bb
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa48ffb1c9c85d4889ae033f3b3fe1b3
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.DeleteMeYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6daae3d7d9c40d4b931b4a63f5d8a1e4
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.VerifiedOn"
        dbInteger "ColumnWidth" ="2775"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x24449fa3fe21f248884913e52a412cbf
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.VerifiedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc9db4568fb5ee64f8feb87ed6b480d08
        End
    End
    Begin
        dbText "Name" ="qry_EmailListForClaudeSurvey.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ce28bfb5540104c92f822e2dde9ea82
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbInteger "ColumnWidth" ="4050"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf65ec4f4aac4bc45aea26a7f8e44ce9c
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
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qry_EmailListForClaudeSurvey_OneOnlyEmail"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =760
        Bottom =230
        Top =0
        Name ="qry_EmailListForClaudeSurvey"
        Name =""
    End
    Begin
        Left =808
        Top =12
        Right =1048
        Bottom =293
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
