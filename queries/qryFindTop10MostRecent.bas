Operation =1
Option =0
Having ="(((DateDiff(\"d\",[datestamp],Now()))<=60) AND ((dbo_ContactHistory.ProjectHeade"
    "rID)>0))"
Begin InputTables
    Name ="dbo_ContactHistory"
    Name ="loc_SearchSettings"
End
Begin OutputColumns
    Expression ="dbo_ContactHistory.CompanyEmployeeID"
    Expression ="dbo_ContactHistory.ProjectHeaderID"
End
Begin Joins
    LeftTable ="loc_SearchSettings"
    RightTable ="dbo_ContactHistory"
    Expression ="loc_SearchSettings.LoginID = dbo_ContactHistory.CompanyEmployeeID"
    Flag =1
End
Begin OrderBy
    Expression ="DateDiff(\"d\",[datestamp],Now())"
    Flag =0
    Expression ="dbo_ContactHistory.ProjectHeaderID"
    Flag =1
End
Begin Groups
    Expression ="dbo_ContactHistory.CompanyEmployeeID"
    GroupLevel =0
    Expression ="dbo_ContactHistory.ProjectHeaderID"
    GroupLevel =0
    Expression ="DateDiff(\"d\",[datestamp],Now())"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd489615088b0d14b980d716f4d17f875
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "PublishToWeb" ="1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008faaeb84fb561a409c4104d89a2db26e000000002acf1f4c ,
    0x2de0e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x740048006900730074006f007200790000000000000016999775ea3c7a419b96 ,
    0x3e2011f902df0000000020f9356dec62e44000000000000000006c006f006300 ,
    0x5f00530065006100720063006800530065007400740069006e00670073000000 ,
    0x0000000043e167582335ed478acdf58b3715295a070000008faaeb84fb561a40 ,
    0x9c4104d89a2db26e43006f006d00700061006e00790045006d0070006c006f00 ,
    0x79006500650049004400000000000000a146cc5300b1804caf4616a9c582a9bb ,
    0x070000008faaeb84fb561a409c4104d89a2db26e500072006f006a0065006300 ,
    0x74004800650061006400650072004900440000000000000019bc9feaefa59546 ,
    0x88499eb4cc410b5d0700000016999775ea3c7a419b963e2011f902df4c006f00 ,
    0x670069006e00490044000000000000009f5682b3e0c0674781fb1b7666c2f7b6 ,
    0x070000008faaeb84fb561a409c4104d89a2db26e640061007400650073007400 ,
    0x61006d007000000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactHistory.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa148c940c4648246980e58bb560208d6
        End
        dbInteger "ColumnWidth" ="2910"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="myid"
        dbInteger "ColumnWidth" ="5310"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00381604cca18200b8a18200305c1604
        End
    End
    Begin
        dbText "Name" ="myDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="myDiff"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80bf0f0414be820000be8200fc41e202
        End
    End
    Begin
        dbText "Name" ="FirstOfProjectHeaderID"
        dbInteger "ColumnWidth" ="5310"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DateDiff(\"d\",[datestamp],Now())"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactHistory.ProjectHeaderID"
        dbInteger "ColumnWidth" ="5310"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaba2a3c025eb57409e50139c8d15561b
        End
    End
    Begin
        dbText "Name" ="loc_SearchSettings.LoginID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =47
    Top =42
    Right =1576
    Bottom =765
    Left =-1
    Top =-1
    Right =1497
    Bottom =277
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =448
        Top =11
        Right =901
        Bottom =333
        Top =0
        Name ="dbo_ContactHistory"
        Name =""
    End
    Begin
        Left =91
        Top =22
        Right =325
        Bottom =233
        Top =0
        Name ="loc_SearchSettings"
        Name =""
    End
End
