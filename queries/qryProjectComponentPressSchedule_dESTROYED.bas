Operation =1
Option =1
Where ="(((Nz([DocketNum],0))>0) And ((Nz([InvoiceNum],0))=0) And ((qrySchedulingSummary"
    ".DueDate)>=#9/19/2013# And (qrySchedulingSummary.DueDate)<=#12/31/2199#))"
Begin InputTables
    Name ="qrySchedulingSummary"
End
Begin OutputColumns
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
    0x2551c7bea18d8d49831a287ad437702b
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000378b567b67bd9d4e8c31dcd94b2ab1e10000000069ffb46f ,
    0xec62e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d00610072007900000000000000be5c0255f4c8 ,
    0xf84bb3828d7faa4f3f5607000000378b567b67bd9d4e8c31dcd94b2ab1e14400 ,
    0x6f0063006b00650074004e0075006d00000000000000dfdd8dbdd1b614478bec ,
    0x63e507c6c8b707000000378b567b67bd9d4e8c31dcd94b2ab1e149006e007600 ,
    0x6f006900630065004e0075006d00000000000000ac4185937736794784d99071 ,
    0xad671c2d07000000378b567b67bd9d4e8c31dcd94b2ab1e14400750065004400 ,
    0x610074006500000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Matrix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc5ba3fc14b7f8246a29144674afb7260
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Bleeds"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2907ef99aac74a4a83ee9f6909fc71f8
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.IsBlackOnly"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2d9facc8efcea4ba9b7f81957712611
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e14bc745ae214780af98649a57c483
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressCheck"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3662f17fb0a60244bf6101f901d8ed3f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingStart"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa873ff7ded62254fa1cb9db5eb6cf14b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoPerf"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc85d0b930d7b04458e9a3ccdea86d27c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.LithoScore"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb4822fdefe492c4f895e408c21c517f7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MatchSample"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x263e369029a96349b97999de3c079b16
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressDateExp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6e7c69900879a449bf2f739853bf81e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Diecut"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaa50ec622fef3e45bb593d2d9d2f9b1e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.DieNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd8a227fd007da64982947be64dd10b61
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x746e97c2943d994b9979ae410da3fd6b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NumberingEnd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb822fe25320c3742a0b18bedd71f13d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSColours"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a40154f30581b45bc6b389ace779603
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x53a4784282a8294597129472dc346aa1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Varnish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0662fad8a64fd140a7c8286300579585
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Priority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SizeYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintingMethod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SpotSealFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalGrossSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperYInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MetallicBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperIsEnvelope"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.MetallicFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SectionName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.TotalNetSheets"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.NetPlates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SpotSealBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperSupplied"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PassCount"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PressHrs"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1026"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1027"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1025"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArrivalDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x485b62f6a1136e4391e0d06344d717b2
        End
    End
    Begin
        dbText "Name" ="ExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80d5060348bb3d0034bb3d002045aa0e
        End
    End
    Begin
        dbText "Name" ="SumOfTotalTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac494118f15eca41bd7c10b287c64f4a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MHPrint"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe7c5403147537d4a84fcdc5eb1ec7baa
        End
        dbInteger "ColumnWidth" ="3840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="OrderOption"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80385b0658a52f0044a52f0034af0f12
        End
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrint"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myPressDate"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa5ea4086f3292d43adbd959045448fe2
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MachineModel"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CMYKColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0158d929d218ba4fa85665302e9227c7
        End
    End
    Begin
        dbText "Name" ="PMSColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6afd3ea267a12f4495111e135ca2e717
        End
    End
    Begin
        dbText "Name" ="MetallicColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8c13893e96bd7c49b007f5591886a5d7
        End
    End
    Begin
        dbText "Name" ="SSColors"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb03fb2dbaf18d458f71068dc8bedffd
        End
    End
    Begin
        dbText "Name" ="Runsize"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2afadf12bd60f4fabe6a05f9db7ab71
        End
    End
    Begin
        dbText "Name" ="Finalsize"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x60c51a5e5b31804fb33045f440be8032
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.projectstatusid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ReadyToPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94b307c1371a564ab009f95d0350b0b9
        End
    End
    Begin
        dbText "Name" ="IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6fe6ba314ad86e47a96136308af8cb04
        End
    End
    Begin
        dbText "Name" ="Expr1034"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1002"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1028"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StPrepress"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2250"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Expr1061"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintJobStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.FormName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =7
    Top =155
    Right =1783
    Bottom =901
    Left =-1
    Top =-1
    Right =1744
    Bottom =276
    Left =167
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qrySchedulingSummary"
        Name =""
    End
End
