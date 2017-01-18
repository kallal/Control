Operation =1
Option =0
Where ="(((dbo_ProjectHeader.ProjectStatusID)=35))"
Begin InputTables
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Alias ="ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.ProjectStatusID"
    Alias ="Duedate"
    Expression ="IIf(Nz([specifieddocketduedate],0)<>0,[specifieddocketduedate],[assigneddocketdu"
        "edate])"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ShipInstruction"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
End
Begin Joins
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
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
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x306a1a1195586f4ebd7ed1a421ef8597
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b900000000bad9a96dec62e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x0000fb2c2f058b8aab4f9af66427841c5f6d0700000000000000000000000000 ,
    0x000000000000500072006f006a00650063007400480065006100640065007200 ,
    0x49004400000000000000d7fb3da46a6660449fe6d5f10012313a070000000000 ,
    0x0000000000000000000000000000440075006500640061007400650000000000 ,
    0x00006f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843874a ,
    0x57f371c555c749004400000000000000673d52f2b5bccc4d948b1dfe92c904e0 ,
    0x07000000fe926418f32ed843874a57f371c555c7500072006f006a0065006300 ,
    0x7400530074006100740075007300490044000000000000007e722a4b66287149 ,
    0x95d6709d9b16e96c07000000fe926418f32ed843874a57f371c555c773007000 ,
    0x650063006900660069006500640064006f0063006b0065007400640075006500 ,
    0x64006100740065000000000000004d96453ae8154647b2e5e15ac183b16d0700 ,
    0x0000fe926418f32ed843874a57f371c555c7610073007300690067006e006500 ,
    0x640064006f0063006b0065007400640075006500640061007400650000000000 ,
    0x0000124b02a694dd0e4c96264abff258312707000000d7c549c33168bc4ab701 ,
    0x51c855c0b6b943006f006d0070004e0061006d006500000000000000203b6972 ,
    0x758bc04dba9e762a7713461907000000fe926418f32ed843874a57f371c555c7 ,
    0x530068006900700049006e0073007400720075006300740069006f006e000000 ,
    0x00000000d9cb95bb9ff0b84fa39eeda5976282d607000000fe926418f32ed843 ,
    0x874a57f371c555c744006f0063006b00650074004e0075006d00000000000000 ,
    0x89ff919c8c2cb04795bac03adb54784507000000fe926418f32ed843874a57f3 ,
    0x71c555c743006f006e007400610063007400470065006e006500720061006c00 ,
    0x4900440000000000000003933b4b9f324445a82e368651b1052b07000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b9490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56f232fb1db5bf479bbb0f761b564d1f
        End
    End
    Begin
        dbText "Name" ="Duedate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7fb3da46a6660449fe6d5f10012313a
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde921dd01bbf1e4eb6ddb6259e061145
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipInstruction"
        dbInteger "ColumnWidth" ="9510"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcac43b2f9d18ad41a1ab796517debc85
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProjectHeaderID"
        dbInteger "ColumnWidth" ="1665"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb2c2f058b8aab4f9af66427841c5f6d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1569
    Bottom =980
    Left =-1
    Top =-1
    Right =1461
    Bottom =446
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =454
        Bottom =519
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =581
        Top =-1
        Right =941
        Bottom =290
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
