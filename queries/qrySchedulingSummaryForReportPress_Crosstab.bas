Operation =6
Option =0
Where ="(((qrySchedulingSummaryForReportPress.MachineModel) Is Not Null))"
Begin InputTables
    Name ="qrySchedulingSummaryForReportPress"
End
Begin OutputColumns
    Expression ="qrySchedulingSummaryForReportPress.ID"
    GroupLevel =2
    Expression ="qrySchedulingSummaryForReportPress.Press"
    GroupLevel =1
    Alias ="Status"
    Expression ="Max(qrySchedulingSummaryForReportPress.PrintJobStatus)"
End
Begin Groups
    Expression ="qrySchedulingSummaryForReportPress.ID"
    GroupLevel =2
    Expression ="qrySchedulingSummaryForReportPress.Press"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000017bba5657bdc0145a59442f84551cef40000000066761705 ,
    0x708fe44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d0061007200790046006f007200520065007000 ,
    0x6f00720074005000720065007300730000000000000043c302c996cc83488e7a ,
    0x295f9963cc0e07000000ba4d1da72ce2b449aaacedb3331a9d1b530074006100 ,
    0x740075007300000000000000c2e02397abf4434a9f1dc645654fa84b07000000 ,
    0x17bba5657bdc0145a59442f84551cef4490044000000000000007ad7a9d58988 ,
    0x424bb574ff1c4acdc0a40700000017bba5657bdc0145a59442f84551cef45000 ,
    0x72006500730073000000000000000355a3ec75e6414ca4e7705b023a1cd80700 ,
    0x000017bba5657bdc0145a59442f84551cef45000720069006e0074004a006f00 ,
    0x62005300740061007400750073000000000000001a1e73440dc1224fa9eb00f6 ,
    0xe07434dd0700000017bba5657bdc0145a59442f84551cef44d00610063006800 ,
    0x69006e0065004d006f00640065006c0000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
dbBinary "GUID" = Begin
    0xba4d1da72ce2b449aaacedb3331a9d1b
End
Begin
    Begin
        dbText "Name" ="[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="<>"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2475"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Application"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc57b0953013bb44a89f71bd363668841
        End
    End
    Begin
        dbText "Name" ="Edge Print"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29624c103057c44c8d207a7929b0a4b5
        End
    End
    Begin
        dbText "Name" ="Paint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x04f102b698189f46a8fce10d89d6d35c
        End
    End
    Begin
        dbText "Name" ="Router"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8181838d44ee20489713db7cdb8e1918
        End
    End
    Begin
        dbText "Name" ="Vinyl"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x57d6009e975e1044b34bc091e2395c76
        End
    End
    Begin
        dbText "Name" ="AvgOfPress"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PIVOT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43c302c996cc83488e7a295f9963cc0e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryForReportPress.[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryForReportPress.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AvgOfPrintJobStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x41d911c8a5d6824ba20a202655d93185
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryForReportPress.PrintJobStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxOfPrintJobStatus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfPrintJobStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x006b4c0faccb340098cb34007c144409
        End
    End
    Begin
        dbText "Name" ="Status"
        dbBinary "GUID" = Begin
            0x43c302c996cc83488e7a295f9963cc0e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummaryForReportPress.Press"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfeeb3c3bf5b5fa47b37c75806c4bc855
        End
    End
    Begin
        dbText "Name" ="2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x167b6b064646ee43be339e29ccd24ba4
        End
    End
    Begin
        dbText "Name" ="1002"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b1724b40474bf42a13399b86c619f2c
        End
    End
    Begin
        dbText "Name" ="1003"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x87db3439b7a4a0449aac86ac374811d8
        End
    End
    Begin
        dbText "Name" ="1006"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f9d55a954853b4692bda1a8b357d433
        End
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1589
    Bottom =916
    Left =-1
    Top =-1
    Right =1557
    Bottom =186
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qrySchedulingSummaryForReportPress"
        Name =""
    End
End
