Operation =2
Name ="tblCboProjectNameContactName"
Option =0
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeader.ID"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.docketnum"
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
dbBinary "GUID" = Begin
    0xc3fda8dc0ee48f4a80a4aed3301120b3
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000fe926418f32ed843874a ,
    0x57f371c555c7000000009b2fba6dec62e4400000000000000000640062006f00 ,
    0x5f00500072006f006a0065006300740048006500610064006500720000000000 ,
    0x00006f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843874a ,
    0x57f371c555c749004400000000000000ab2bd0a18191ef46b6c770f2b1812fa6 ,
    0x07000000fe926418f32ed843874a57f371c555c7500072006f006a0065006300 ,
    0x74004e0061006d006500000000000000124b02a694dd0e4c96264abff2583127 ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b943006f006d0070004e006100 ,
    0x6d006500000000000000d9cb95bb9ff0b84fa39eeda5976282d607000000fe92 ,
    0x6418f32ed843874a57f371c555c764006f0063006b00650074006e0075006d00 ,
    0x00000000000089ff919c8c2cb04795bac03adb54784507000000fe926418f32e ,
    0xd843874a57f371c555c743006f006e007400610063007400470065006e006500 ,
    0x720061006c004900440000000000000003933b4b9f324445a82e368651b1052b ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b9490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
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
        dbText "Name" ="dbo_ProjectHeader.docketnum"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =6
    Top =72
    Right =1566
    Bottom =983
    Left =-1
    Top =-1
    Right =1528
    Bottom =560
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =403
        Top =28
        Right =858
        Bottom =564
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =289
        Bottom =505
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
