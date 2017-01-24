Operation =1
Option =0
Where ="(((dbo_Machine.DepartmentID)<=3))"
Begin InputTables
    Name ="dbo_Machine"
End
Begin OutputColumns
    Expression ="dbo_Machine.ID"
    Expression ="dbo_Machine.DepartmentID"
    Expression ="dbo_Machine.MachineTypeID"
    Expression ="dbo_Machine.MachineBrand"
    Expression ="dbo_Machine.MachineModel"
    Expression ="dbo_Machine.CompanyLocationID"
    Expression ="dbo_Machine.OperatorNumReqd"
    Expression ="dbo_Machine.OperatorLevelReqd"
    Expression ="dbo_Machine.CyclesPerHour"
    Expression ="dbo_Machine.SqFtReqd"
    Expression ="dbo_Machine.PowerReqd"
    Expression ="dbo_Machine.MakeReadyTimeReqd"
    Expression ="dbo_Machine.CleanUpTimeReqd"
    Expression ="dbo_Machine.ServiceVendorID"
    Expression ="dbo_Machine.ServiceHistory"
    Expression ="dbo_Machine.LastEdited"
    Expression ="dbo_Machine.LastEditedBy"
End
Begin OrderBy
    Expression ="dbo_Machine.DepartmentID"
    Flag =0
    Expression ="dbo_Machine.MachineTypeID"
    Flag =0
    Expression ="dbo_Machine.MachineModel"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd39ac3f5639aa348ae38bada19e6e19e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000657f653545447543a70db61cc8fc06fc00000000843e1c6d ,
    0xcedae4400000000000000000640062006f005f004d0061006300680069006e00 ,
    0x65000000000000008bb0fb76cef6a144a050ef38f896b3f907000000657f6535 ,
    0x45447543a70db61cc8fc06fc4900440000000000000098e86e8724423a40a7d7 ,
    0x8c102af45e8107000000657f653545447543a70db61cc8fc06fc440065007000 ,
    0x6100720074006d0065006e007400490044000000000000005174b0b2148f724d ,
    0x94b2042bcfb5bba907000000657f653545447543a70db61cc8fc06fc4d006100 ,
    0x6300680069006e006500540079007000650049004400000000000000e89aceb1 ,
    0x35f7914c8fd11bb6059061fc07000000657f653545447543a70db61cc8fc06fc ,
    0x4d0061006300680069006e0065004200720061006e0064000000000000001052 ,
    0x5034e9fc5c4db54aaa12e9031a8e07000000657f653545447543a70db61cc8fc ,
    0x06fc4d0061006300680069006e0065004d006f00640065006c00000000000000 ,
    0x5ce63b67111d3240bb3b6d50e746a08007000000657f653545447543a70db61c ,
    0xc8fc06fc43006f006d00700061006e0079004c006f0063006100740069006f00 ,
    0x6e004900440000000000000062339cf78310e14ebd7e7199efad9f2607000000 ,
    0x657f653545447543a70db61cc8fc06fc4f00700065007200610074006f007200 ,
    0x4e0075006d005200650071006400000000000000de87626d2d7a5c44bd9f010d ,
    0xa35f4b2007000000657f653545447543a70db61cc8fc06fc4f00700065007200 ,
    0x610074006f0072004c006500760065006c005200650071006400000000000000 ,
    0x33447b9a9cca3e499da93e7da4a0242307000000657f653545447543a70db61c ,
    0xc8fc06fc4300790063006c006500730050006500720048006f00750072000000 ,
    0x000000001dad1af2dd37d64d97bc91bd54e74d5b07000000657f653545447543 ,
    0xa70db61cc8fc06fc53007100460074005200650071006400000000000000a51b ,
    0x032a978be741836b6f6957d2bc8e07000000657f653545447543a70db61cc8fc ,
    0x06fc50006f007700650072005200650071006400000000000000f157daf50fec ,
    0x17409301eb308b6c253d07000000657f653545447543a70db61cc8fc06fc4d00 ,
    0x61006b00650052006500610064007900540069006d0065005200650071006400 ,
    0x00000000000069b16e03a0590e4b8521d793d23a3d4507000000657f65354544 ,
    0x7543a70db61cc8fc06fc43006c00650061006e0055007000540069006d006500 ,
    0x5200650071006400000000000000674ddc8786e96b45a38e38616f2482bf0700 ,
    0x0000657f653545447543a70db61cc8fc06fc5300650072007600690063006500 ,
    0x560065006e0064006f007200490044000000000000001835c08e3fd0a448952f ,
    0xba90d8bed42607000000657f653545447543a70db61cc8fc06fc530065007200 ,
    0x760069006300650048006900730074006f00720079000000000000005867bc39 ,
    0x07ecc246b0618c9a5b1a694907000000657f653545447543a70db61cc8fc06fc ,
    0x4c0061007300740045006400690074006500640000000000000025f40645b8e8 ,
    0x7e4b93fa29615620f94307000000657f653545447543a70db61cc8fc06fc4c00 ,
    0x6100730074004500640069007400650064004200790000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_Machine.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1000db8e0972274d88f291ad05cda96e
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.DepartmentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x400fbd32b5479b4996ce9697a6762406
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MachineTypeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3388ee86b3a23a488da0e0b7b4947d6e
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd721653b9214964ba569759c6aebba01
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MachineBrand"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x46756e22e090e64381c67742531405ac
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MachineModel"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e2c51d50b5ff34fbf974b5782bbc652
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.CompanyLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x742dbae6bdf5d5419324e9ee1a736ada
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.OperatorLevelReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a519fb80019804aa2cb5f0a9815fada
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.CyclesPerHour"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x70e35ca58596184bb650c89c4664edbc
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.SqFtReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa247e10cc78d664fa5ff49ca550102b4
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.PowerReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x49ccca274fc53c498e0a18a48dc957db
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.MakeReadyTimeReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7c2f5a09bf631e4baa6159fd8393e979
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.CleanUpTimeReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x715ac35bb1e33d40a919632e1f4e8cdb
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.ServiceVendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x74a2396678e10d4d972ad8b6672ec13a
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.ServiceHistory"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7bef89e38c05ac42a4d5fe4edf93eba2
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5441416d7bdcb746a2749ac4031165c1
        End
    End
    Begin
        dbText "Name" ="dbo_Machine.OperatorNumReqd"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc0c93e907650b64bb5d5617d68871c8b
        End
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1595
    Bottom =860
    Left =-1
    Top =-1
    Right =1487
    Bottom =394
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =753
        Bottom =446
        Top =0
        Name ="dbo_Machine"
        Name =""
    End
End
