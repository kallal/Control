Operation =1
Option =0
Where ="(((dbo_CompanyEmployee.IsSalesRep)=True))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyEmployeeSalesTarget"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Expression ="dbo_CompanyEmployeeSalesTarget.Year"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt01"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt01"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt02"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt02"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt03"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt03"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt04"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt04"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt05"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt05"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt06"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt06"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt07"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt07"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt08"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt08"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt09"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt09"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt10"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt10"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt11"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt11"
    Expression ="dbo_CompanyEmployeeSalesTarget.EstAmt12"
    Expression ="dbo_CompanyEmployeeSalesTarget.NewClt12"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyEmployeeSalesTarget"
    Expression ="dbo_CompanyEmployee.ID = dbo_CompanyEmployeeSalesTarget.CompanyEmployeeID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x01ed029c47ece8499e932698cca7c3e6
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa00000000a054fb6c ,
    0xcedae4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000b7dbdae76666ae4a ,
    0xb7c16c77901ca00300000000c16eff6ccedae440000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e00790045006d0070006c006f0079006500 ,
    0x6500530061006c0065007300540061007200670065007400000000000000836b ,
    0x4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa49004400000000000000238a70cc04f1b542bd79b33633915bc607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa46004e0000000000000027afc0ba5db6 ,
    0x0e409636470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa4c00 ,
    0x4e000000000000003643c3eb337ba84280e3540342d9e3170700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa49007300530061006c0065007300520065007000 ,
    0x00000000000010c3b483e5f5684ab3cbb1492ed0df0c07000000b7dbdae76666 ,
    0xae4ab7c16c77901ca0035900650061007200000000000000bb0a9bfbb88bdb45 ,
    0xbf1cddb38301f2c207000000b7dbdae76666ae4ab7c16c77901ca00345007300 ,
    0x740041006d007400300031000000000000003db87a2d1a622e42bd377c18a550 ,
    0x1e8f07000000b7dbdae76666ae4ab7c16c77901ca0034e006500770043006c00 ,
    0x740030003100000000000000565601e3befdd64f80c38a2b19f0ed1207000000 ,
    0xb7dbdae76666ae4ab7c16c77901ca00345007300740041006d00740030003200 ,
    0x0000000000005bd02661dec54e48a1aa51efe5ab011907000000b7dbdae76666 ,
    0xae4ab7c16c77901ca0034e006500770043006c00740030003200000000000000 ,
    0xb2cb802ef878904e9c0ec1f410e9528007000000b7dbdae76666ae4ab7c16c77 ,
    0x901ca00345007300740041006d007400300033000000000000004eff4080d4f6 ,
    0xf9419839b2ec6ea3c4d407000000b7dbdae76666ae4ab7c16c77901ca0034e00 ,
    0x6500770043006c0074003000330000000000000067f5bb59e32b5a4eb41d2ca8 ,
    0xd659aaf907000000b7dbdae76666ae4ab7c16c77901ca0034500730074004100 ,
    0x6d007400300034000000000000000724e630507e2349a7329037f58d6ed30700 ,
    0x0000b7dbdae76666ae4ab7c16c77901ca0034e006500770043006c0074003000 ,
    0x3400000000000000ddb16e6e31993f4a98e0a1767836085907000000b7dbdae7 ,
    0x6666ae4ab7c16c77901ca00345007300740041006d0074003000350000000000 ,
    0x00008dae29325e10a94aa96e41f44342315807000000b7dbdae76666ae4ab7c1 ,
    0x6c77901ca0034e006500770043006c007400300035000000000000009bfd2176 ,
    0x867a6e46a83bf3f5bc60f65207000000b7dbdae76666ae4ab7c16c77901ca003 ,
    0x45007300740041006d007400300036000000000000006882981761993d4588e1 ,
    0x8c24664b16a107000000b7dbdae76666ae4ab7c16c77901ca0034e0065007700 ,
    0x43006c00740030003600000000000000e694caee7b3be34cbc916488111ebb84 ,
    0x07000000b7dbdae76666ae4ab7c16c77901ca00345007300740041006d007400 ,
    0x3000370000000000000024f359509d7b97438db91d567f18874b07000000b7db ,
    0xdae76666ae4ab7c16c77901ca0034e006500770043006c007400300037000000 ,
    0x00000000a53f3bba8181684486f1319ca58ae24307000000b7dbdae76666ae4a ,
    0xb7c16c77901ca00345007300740041006d00740030003800000000000000ac38 ,
    0xa45ef44e984c97c36d94cbbf43dd07000000b7dbdae76666ae4ab7c16c77901c ,
    0xa0034e006500770043006c007400300038000000000000005b94d6ff11b9b44e ,
    0x8234ae297e55e04d07000000b7dbdae76666ae4ab7c16c77901ca00345007300 ,
    0x740041006d0074003000390000000000000072fb89306fd492438c9205b8c46b ,
    0xe70507000000b7dbdae76666ae4ab7c16c77901ca0034e006500770043006c00 ,
    0x740030003900000000000000df6659c92e766243ac2c320be07223f107000000 ,
    0xb7dbdae76666ae4ab7c16c77901ca00345007300740041006d00740031003000 ,
    0x000000000000a3daef158784144cab6c9f56d3d24e8807000000b7dbdae76666 ,
    0xae4ab7c16c77901ca0034e006500770043006c00740031003000000000000000 ,
    0x5ce1d9ba54d0d647b8b3e6ee9f21ba4307000000b7dbdae76666ae4ab7c16c77 ,
    0x901ca00345007300740041006d007400310031000000000000000c6a7136df81 ,
    0xc4449a1e6ac78e0a1b9207000000b7dbdae76666ae4ab7c16c77901ca0034e00 ,
    0x6500770043006c00740031003100000000000000a7ef6bb3eda47d4f90e408fe ,
    0xa8cae01e07000000b7dbdae76666ae4ab7c16c77901ca0034500730074004100 ,
    0x6d0074003100320000000000000077d1050ffb16024e9840c0241523eb480700 ,
    0x0000b7dbdae76666ae4ab7c16c77901ca0034e006500770043006c0074003100 ,
    0x32000000000000008a1712ccfbd4b94d972f069d18afe48d07000000b7dbdae7 ,
    0x6666ae4ab7c16c77901ca00343006f006d00700061006e00790045006d007000 ,
    0x6c006f0079006500650049004400000000000000000000000000000000000000 ,
    0x000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaab4bd5ad6f2d04baba7207c3a7287e7
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee0cc81f156d454c8979d0be7e81cb32
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66c59114ef6f1d499a3b8fce1b134945
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsSalesRep"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc503b7c0b109fb43bc059be30603cf78
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt01"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.Year"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt12"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt01"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt02"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt02"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt03"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt03"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt04"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt04"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt05"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt05"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt06"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt06"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt07"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt07"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt08"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt08"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt09"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt09"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt10"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt10"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.EstAmt11"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt11"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployeeSalesTarget.NewClt12"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =132
    Right =1609
    Bottom =980
    Left =-1
    Top =-1
    Right =1501
    Bottom =497
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =1157
        Bottom =444
        Top =0
        Name ="dbo_CompanyEmployeeSalesTarget"
        Name =""
    End
End
