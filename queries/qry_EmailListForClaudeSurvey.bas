Operation =1
Option =0
Where ="(((dbo_ContactName.Email) Is Not Null And (dbo_ContactName.Email)<>\"\") AND ((d"
    "bo_ContactGeneral.IsClient)=True) AND ((dbo_ContactGeneral.IsCompetitor)=False) "
    "AND ((dbo_ContactName.DeleteMeYN)=False) AND ((dbo_ContactName.IsActive)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.ID"
    Expression ="dbo_ContactName.FN"
    Expression ="dbo_ContactName.MN"
    Expression ="dbo_ContactName.LN"
    Expression ="dbo_ContactName.PreferredName"
    Expression ="dbo_ContactName.Email"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.IsVendor"
    Expression ="dbo_ContactGeneral.IsCompetitor"
    Expression ="dbo_ContactGeneral.SalesRepID"
    Expression ="dbo_ContactName.DeleteMeYN"
    Expression ="dbo_ContactName.VerifiedOn"
    Expression ="dbo_ContactName.VerifiedBy"
    Expression ="dbo_ContactName.SendEmail"
    Expression ="dbo_ContactName.IsActive"
End
Begin Joins
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactName.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x01037df9fa3d6340a67493df1073380a
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000b1dfd77f67641a4a8c10 ,
    0xdf9ef7c35963000000008ffda2c0ea62e4400000000000000000640062006f00 ,
    0x5f0043006f006e0074006100630074004e0061006d006500000000000000e0b7 ,
    0xaa1a6ad58345865216cdf3cbec4e07000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x59634900440000000000000008ae9e11739f3544a2d99be00a23adf107000000 ,
    0xb1dfd77f67641a4a8c10df9ef7c3596346004e000000000000004347a351c259 ,
    0x4343834bc498175702c207000000b1dfd77f67641a4a8c10df9ef7c359634d00 ,
    0x4e0000000000000008374dd34b155c49be4fe6c2125378e407000000b1dfd77f ,
    0x67641a4a8c10df9ef7c359634c004e00000000000000fead2a127dbd2041bc90 ,
    0x1ee03a80d10c07000000b1dfd77f67641a4a8c10df9ef7c35963500072006500 ,
    0x6600650072007200650064004e0061006d00650000000000000022d2565f36f8 ,
    0xc84b9b24820401a2dee107000000b1dfd77f67641a4a8c10df9ef7c359634500 ,
    0x6d00610069006c00000000000000124b02a694dd0e4c96264abff25831270700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b943006f006d0070004e0061006d00 ,
    0x650000000000000017c69993fefe48429e58f91ca567f01a07000000d7c549c3 ,
    0x3168bc4ab70151c855c0b6b94900730043006c00690065006e00740000000000 ,
    0x0000af4d474e244fef4b831c16707b00dd9007000000d7c549c33168bc4ab701 ,
    0x51c855c0b6b949007300560065006e0064006f00720000000000000072135043 ,
    0xf1c5534594c399467e5e4d5f07000000d7c549c33168bc4ab70151c855c0b6b9 ,
    0x4900730043006f006d00700065007400690074006f00720000000000000057fa ,
    0xb0ed9f451a4ab512137d4cabc63007000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b9530061006c006500730052006500700049004400000000000000138715d2 ,
    0x12ba6b418621857e87fb0bce07000000b1dfd77f67641a4a8c10df9ef7c35963 ,
    0x440065006c006500740065004d00650059004e0000000000000059fa9c4cd236 ,
    0x8448a7826a675905c76d07000000b1dfd77f67641a4a8c10df9ef7c359635600 ,
    0x65007200690066006900650064004f006e000000000000004ae0b27bd6f9e640 ,
    0x80e6d260711778bc07000000b1dfd77f67641a4a8c10df9ef7c3596356006500 ,
    0x720069006600690065006400420079000000000000003fbd139ab3817c4bb02f ,
    0x5f60d596ef8e07000000b1dfd77f67641a4a8c10df9ef7c35963530065006e00 ,
    0x640045006d00610069006c000000000000005ebeb34792c1554a8c940abdd7f4 ,
    0x04f207000000b1dfd77f67641a4a8c10df9ef7c3596349007300410063007400 ,
    0x69007600650000000000000043f6e7679eba6741ad8592a856384d9e07000000 ,
    0xb1dfd77f67641a4a8c10df9ef7c3596343006f006e0074006100630074004700 ,
    0x65006e006500720061006c004900440000000000000003933b4b9f324445a82e ,
    0x368651b1052b07000000d7c549c33168bc4ab70151c855c0b6b9490044000000 ,
    0x00000000000000000000000000000000000000000c0000000500000000000000 ,
    0x00000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x948478514760fb42ad51ba4cad8c4fea
        End
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PreferredName"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfea708a224368a4f90b993ae55fc26ba
        End
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf097196ae0a50d46a69e14ef0c5fb83d
        End
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbInteger "ColumnWidth" ="4755"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x12d8b6090273774da264dd2a742ea41d
        End
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0eed880ea9239d44be21b68f1e102da0
        End
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe2ccc9832c750142902dd48b09b8a456
        End
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.MN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x38eaa2343b75f4498f90a257cf28a4a8
        End
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x89f350e8679a04459c13e1e6cd43df7e
        End
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsVendor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa4100bdf78ae2245bc2c06fa3b73e2be
        End
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsCompetitor"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x58a020251640114a99329e2f045884f1
        End
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff4fbc594cce0a4aabb94a92b484a234
        End
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="dbo_ContactName.DeleteMeYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8825e64b9b48884b8ca56ceb6859c483
        End
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="dbo_ContactName.VerifiedOn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x77f5dfe664bde04eb8fbc529066fe411
        End
        dbInteger "ColumnWidth" ="3060"
        dbInteger "ColumnOrder" ="8"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ContactName.VerifiedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0740a008f007ee4b9acd955b3ea53376
        End
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="dbo_ContactName.IsActive"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.MailListYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2bbac8c9f220ad43b510c1a599bfacb4
        End
    End
    Begin
        dbText "Name" ="Expr1005"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8db4f2e81a9fce49862ca80ada092e94
        End
    End
    Begin
        dbText "Name" ="Expr1006"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7c62bb6511c74e4e9e4a480f146173c2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =125
    Top =49
    Right =1778
    Bottom =980
    Left =-1
    Top =-1
    Right =1621
    Bottom =463
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =565
        Top =46
        Right =942
        Bottom =527
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =83
        Top =-1
        Right =359
        Bottom =468
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
