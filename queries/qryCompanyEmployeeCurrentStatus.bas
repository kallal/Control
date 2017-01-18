Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployeeCurrentStatus"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployeeCurrentStatus.*"
    Alias ="EmployeeName"
    Expression ="Trim([ln]) & \", \" & Trim([fn])"
    Alias ="ElapsedTime"
    Expression ="Format((Now()-[shift_start])*24,\"Fixed\")"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployeeCurrentStatus"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_CompanyEmployeeCurrentStatus.CompanyEmployeeID = dbo_CompanyEmployee.ID"
    Flag =2
End
Begin OrderBy
    Expression ="Trim([ln]) & \", \" & Trim([fn])"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x6db0d53a48b494488945486428d54a91
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000f55e70197b2cb741916f85e272086b40000000009920382b ,
    0xacd7e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500430075007200720065006e007400 ,
    0x53007400610074007500730000000000000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa000000006815372bacd7e4400000000000000000640062006f005f004300 ,
    0x6f006d00700061006e00790045006d0070006c006f0079006500650000000000 ,
    0x0000529a0115833ad34fac23554960799fd1070000006db0d53a48b494488945 ,
    0x486428d54a9145006d0070006c006f007900650065004e0061006d0065000000 ,
    0x00000000fa3db597b728a84fa7b43195fb33a89c070000006db0d53a48b49448 ,
    0x8945486428d54a9145006c0061007000730065006400540069006d0065000000 ,
    0x0000000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa6c006e00000000000000238a70cc04f1b542bd79b3363391 ,
    0x5bc60700000039a4960a0ccbe542ab18e42cf68884fa66006e00000000000000 ,
    0x041f3378c98cff4f98f4be57469b1a7b07000000f55e70197b2cb741916f85e2 ,
    0x72086b40730068006900660074005f0073007400610072007400000000000000 ,
    0xb26a99a5395e1e49a39841d73a4ee48807000000f55e70197b2cb741916f85e2 ,
    0x72086b4043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x650049004400000000000000836b4761bb445b46b7a949192117f87007000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa49004400000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="EmployeeName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x529a0115833ad34fac23554960799fd1
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x042a22b2d11f7e4a9224751fffb03bef
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf9fc67a3d8f85949a92d89723940e9ae
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Shift_Start"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29ce91141f3dad44a54f4288be8e9334
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Shift_End"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa60dfd1eed59c841ad256e7c76537f72
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.NumBreak"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c082aaccababe4baee765af30d49897
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Login_MachineID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1267648387292a4e81703eb15633fa5a
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.CurrentStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf2642ccc6c9dbd429778b5ea341f1d66
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Break_Start"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe27a87ac7e277e44b769a7c1d24b65cb
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Break_End"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb36c1b6a8727b4b8b0584507a0be577
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Break_Mins"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaae24e68ff774347a75eae79c44211c3
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeCurrentStatus.Break_Time"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc9beccb339ce7047bcc2a44a89ba6a4a
        End
    End
    Begin
        dbText "Name" ="ElapsedTime"
        dbInteger "ColumnWidth" ="3720"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa3db597b728a84fa7b43195fb33a89c
        End
    End
End
Begin
    State =0
    Left =117
    Top =184
    Right =1561
    Bottom =859
    Left =-1
    Top =-1
    Right =1412
    Bottom =357
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =120
        Top =34
        Right =381
        Bottom =306
        Top =0
        Name ="dbo_CompanyEmployeeCurrentStatus"
        Name =""
    End
    Begin
        Left =460
        Top =78
        Right =604
        Bottom =222
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
