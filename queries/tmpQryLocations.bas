Operation =3
Name ="dbo_ContactName"
Option =0
Begin InputTables
    Name ="Active with Addresses"
End
Begin OutputColumns
    Name ="ContactGeneralID"
    Expression ="[Active with Addresses].AccessID"
    Name ="FN"
    Expression ="[Active with Addresses].Contact"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0xd80e673d0214b64292687cb6f5847cc6
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000b1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0 ,
    0xea62e4400000000000000000640062006f005f0043006f006e00740061006300 ,
    0x74004e0061006d0065000000000000008e5e2316b3d2e04597f755051515568e ,
    0x000000004b386a71ec62e4400000000000000000410063007400690076006500 ,
    0x2000770069007400680020004100640064007200650073007300650073000000 ,
    0x000000008ee6f410fc5cd24488657766cb574134070000008e5e2316b3d2e045 ,
    0x97f755051515568e4100630063006500730073004900440000000000000043f6 ,
    0xe7679eba6741ad8592a856384d9e07000000b1dfd77f67641a4a8c10df9ef7c3 ,
    0x596343006f006e007400610063007400470065006e006500720061006c004900 ,
    0x4400000000000000b978ccca8aecb64dbbc0deebb2dfcdd4070000008e5e2316 ,
    0xb3d2e04597f755051515568e43006f006e007400610063007400000000000000 ,
    0x08ae9e11739f3544a2d99be00a23adf107000000b1dfd77f67641a4a8c10df9e ,
    0xf7c3596346004e00000000000000000000000000000000000000000000000c00 ,
    0x0000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="[Active with Addresses].AccessID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5973031ee2fd9b4ba5ba171c66fe8e3a
        End
    End
    Begin
        dbText "Name" ="[Active with Addresses].Company"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x527ce54c9c4bc44184e9ca784ee5d310
        End
    End
    Begin
        dbText "Name" ="[Active with Addresses].Reps"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1001"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb99c07c1f0787d4ebfa0889e919d28b3
        End
    End
    Begin
        dbText "Name" ="[Active with Addresses].PC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Active with Addresses].Add"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Location"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa24c6c0a20e3b4ab975796593712e0f
        End
    End
    Begin
        dbText "Name" ="isactive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Active with Addresses].Contact"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1583
    Bottom =860
    Left =-1
    Top =-1
    Right =1475
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =48
        Top =12
        Right =791
        Bottom =417
        Top =0
        Name ="Active with Addresses"
        Name =""
    End
End
