Operation =2
Name ="tmp_Claude_ClientNamesWithQuotes"
Option =0
Having ="(((dbo_ContactGeneral.IsClient)=True))"
Begin InputTables
    Name ="dbo_ContactGeneral"
    Name ="dbo_ProjectHeader"
End
Begin OutputColumns
    Expression ="dbo_ContactGeneral.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ContactGeneral.OperatingAs"
    Expression ="dbo_ContactGeneral.IsClient"
    Expression ="dbo_ContactGeneral.OperatingAs"
End
Begin Joins
    LeftTable ="dbo_ContactGeneral"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ContactGeneral.ID = dbo_ProjectHeader.ContactGeneralID"
    Flag =1
End
Begin Groups
    Expression ="dbo_ContactGeneral.ID"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.CompName"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.IsClient"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.OperatingAs"
    GroupLevel =0
    Expression ="dbo_ContactGeneral.OperatingAs"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0xe6de36452e62d243957986ba538542e1
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000d7c549c33168bc4ab70151c855c0b6b900000000bad9a96d ,
    0xec62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00000000000000fe926418f32ed843874a ,
    0x57f371c555c7000000009b2fba6dec62e4400000000000000000640062006f00 ,
    0x5f00500072006f006a0065006300740048006500610064006500720000000000 ,
    0x000003933b4b9f324445a82e368651b1052b07000000d7c549c33168bc4ab701 ,
    0x51c855c0b6b949004400000000000000124b02a694dd0e4c96264abff2583127 ,
    0x07000000d7c549c33168bc4ab70151c855c0b6b943006f006d0070004e006100 ,
    0x6d006500000000000000eeeaa2c1e5c5674396cce069d7db400307000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b94f007000650072006100740069006e006700 ,
    0x4100730000000000000017c69993fefe48429e58f91ca567f01a07000000d7c5 ,
    0x49c33168bc4ab70151c855c0b6b94900730043006c00690065006e0074000000 ,
    0x0000000089ff919c8c2cb04795bac03adb54784507000000fe926418f32ed843 ,
    0x874a57f371c555c743006f006e007400610063007400470065006e0065007200 ,
    0x61006c0049004400000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd68c16174782194eba912059101e07af
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.OperatingAs"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xebfc208b0b63dd4281bae2d44fb0bd2e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.ADD2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.CITY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.PROV"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.IsActive"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.IsClient"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfdd7da744dc55c4a9bc5f1b0178c02bd
        End
    End
    Begin
        dbText "Name" ="Expr1001"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x78703496abf3134e9e66d12c84e6da1d
        End
    End
    Begin
        dbText "Name" ="Expr1002"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cc3eccef978c54799fcbc50393ae547
        End
    End
End
Begin
    State =0
    Left =44
    Top =57
    Right =1464
    Bottom =859
    Left =-1
    Top =-1
    Right =1388
    Bottom =485
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =227
        Bottom =409
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =727
        Top =33
        Right =1124
        Bottom =520
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
End
