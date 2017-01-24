dbMemo "SQL" ="SELECT dbo_CompanyEmployee.ID, dbo_CompanyEmployee.IsActive, dbo_CompanyEmployee"
    ".Password, Trim([fn]) & \" \" & Trim([ln]) AS fullname, dbo_CompanyEmployee.FN, "
    "dbo_CompanyEmployee.LN\015\012FROM dbo_CompanyEmployee\015\012WHERE (((dbo_Compa"
    "nyEmployee.IsActive)=True))\015\012ORDER BY Trim([fn]) & \" \" & Trim([ln]);\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xada0a2d968501d40995b3a723428ba15
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40c ,
    0xcfe0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f0079006500650000000000000071ad36b41e73b64b ,
    0xa2dc0abb7fc39e6a07000000ada0a2d968501d40995b3a723428ba1566007500 ,
    0x6c006c006e0061006d006500000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x65634c04fc14254c9348cee3d3ff40f00700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa49007300410063007400690076006500000000000000c0e049db2b12 ,
    0xa143a3f275a62081c66e0700000039a4960a0ccbe542ab18e42cf68884fa5000 ,
    0x61007300730077006f0072006400000000000000238a70cc04f1b542bd79b336 ,
    0x33915bc60700000039a4960a0ccbe542ab18e42cf68884fa66006e0000000000 ,
    0x000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa6c006e0000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd05b49329f52934abe67929dd5569f38
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7a707de32f53434e808bd987f4c807df
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x744908abe2e49c4f907a44a5f4ed8b82
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdea0110599abbc47af37a4d92f448c0a
        End
    End
    Begin
        dbText "Name" ="fullname"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x71ad36b41e73b64ba2dc0abb7fc39e6a
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Password"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe87ccb1cc0f91541b466effd751f64ad
        End
    End
End
