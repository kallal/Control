Operation =1
Option =0
Begin InputTables
    Name ="qrySchedulingSummaryForReport"
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_Machine"
End
Begin OutputColumns
    Expression ="qrySchedulingSummaryForReport.ID"
    Expression ="dbo_ProjectComponentPress.Press"
    Expression ="dbo_Machine.MachineModel"
    Expression ="dbo_ProjectComponentPress.PrintJobStatus"
End
Begin Joins
    LeftTable ="qrySchedulingSummaryForReport"
    RightTable ="dbo_ProjectComponentPress"
    Expression ="qrySchedulingSummaryForReport.ID = dbo_ProjectComponentPress.ProjectComponentID"
    Flag =2
    LeftTable ="dbo_ProjectComponentPress"
    RightTable ="dbo_Machine"
    Expression ="dbo_ProjectComponentPress.Press = dbo_Machine.ID"
    Flag =2
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
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000f03e2677b23ab24c8df5720bd003054600000000db8e0cdb ,
    0xeec8e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d0061007200790046006f007200520065007000 ,
    0x6f00720074000000000000001ff48b4b7bbd39459517fa849aa3770400000000 ,
    0xffae4567eec8e4400000000000000000640062006f005f00500072006f006a00 ,
    0x65006300740043006f006d0070006f006e0065006e0074005000720065007300 ,
    0x7300000000000000657f653545447543a70db61cc8fc06fc00000000469d1c67 ,
    0xeec8e4400000000000000000640062006f005f004d0061006300680069006e00 ,
    0x6500000000000000ba162141743b8a4a8bf3cb8ccabb21d307000000f03e2677 ,
    0xb23ab24c8df5720bd0030546490044000000000000006ea354afae85c6419eff ,
    0xcf1967fdb2b4070000001ff48b4b7bbd39459517fa849aa37704500072006500 ,
    0x7300730000000000000010525034e9fc5c4db54aaa12e9031a8e07000000657f ,
    0x653545447543a70db61cc8fc06fc4d0061006300680069006e0065004d006f00 ,
    0x640065006c000000000000000355a3ec75e6414ca4e7705b023a1cd807000000 ,
    0x1ff48b4b7bbd39459517fa849aa377045000720069006e0074004a006f006200 ,
    0x530074006100740075007300000000000000e19fd78d6de8f042912e16a0f471 ,
    0x8a30070000001ff48b4b7bbd39459517fa849aa37704500072006f006a006500 ,
    0x6300740043006f006d0070006f006e0065006e00740049004400000000000000 ,
    0x8bb0fb76cef6a144a050ef38f896b3f907000000657f653545447543a70db61c ,
    0xc8fc06fc49004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x17bba5657bdc0145a59442f84551cef4
End
Begin
    Begin
        dbText "Name" ="qrySchedulingSummaryForReport.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2e02397abf4434a9f1dc645654fa84b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.Press"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ad7a9d58988424bb574ff1c4acdc0a4
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MachineModel"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a1e73440dc1224fa9eb00f6e07434dd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PrintJobStatus"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =122
    Right =1591
    Bottom =952
    Left =-1
    Top =-1
    Right =1519
    Bottom =394
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =478
        Bottom =467
        Top =0
        Name ="qrySchedulingSummaryForReport"
        Name =""
    End
    Begin
        Left =526
        Top =12
        Right =975
        Bottom =432
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =1087
        Top =19
        Right =1493
        Bottom =416
        Top =0
        Name ="dbo_Machine"
        Name =""
    End
End
