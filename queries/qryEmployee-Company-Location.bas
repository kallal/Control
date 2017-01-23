Operation =1
Option =0
Begin InputTables
    Name ="dbo_Company"
    Name ="dbo_CompanyEmployee"
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.*"
    Expression ="dbo_Company.*"
    Expression ="dbo_CompanyLocation.*"
    Expression ="dbo_CompanyEmployee.IsIN"
    Expression ="dbo_CompanyEmployee.BackAt"
    Expression ="dbo_CompanyEmployee.CanUnlockQuoteRequests"
    Alias ="EmployeeID"
    Expression ="dbo_CompanyEmployee.ID"
End
Begin Joins
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_Company"
    Expression ="dbo_CompanyEmployee.CompanyID = dbo_Company.ID"
    Flag =2
    LeftTable ="dbo_CompanyEmployee"
    RightTable ="dbo_CompanyLocation"
    Expression ="dbo_CompanyEmployee.LocationID = dbo_CompanyLocation.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xbbf05931f2c8ab4bacc5aa0684bb3460
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000a1d2bc249d6fc348ba88dcf32deed58e000000009b25b39d ,
    0xcee0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790000000000000039a4960a0ccbe542ab18e42cf68884fa00000000552eb69d ,
    0xcee0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000f0a07a545f8a6448 ,
    0xb11bd6a1031b20d100000000a881be9dcee0e440000000000000000064006200 ,
    0x6f005f0043006f006d00700061006e0079004c006f0063006100740069006f00 ,
    0x6e000000000000007e20a17d1793eb429c05ebcd3da91c4a07000000bbf05931 ,
    0xf2c8ab4bacc5aa0684bb346045006d0070006c006f0079006500650049004400 ,
    0x000000000000cc12da11c38e1044b8cbb3509f3d96b40700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa4900730049004e000000000000006bb3aa9bc2cd6243 ,
    0xa5c37f457f4772940700000039a4960a0ccbe542ab18e42cf68884fa42006100 ,
    0x63006b0041007400000000000000dd494d1924855741bbd51c3e502799ad0700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa430061006e0055006e006c006f00 ,
    0x63006b00510075006f0074006500520065007100750065007300740073000000 ,
    0x00000000836b4761bb445b46b7a949192117f8700700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa49004400000000000000024bfd66f0284d449d2e1050389a ,
    0xc26d0700000039a4960a0ccbe542ab18e42cf68884fa43006f006d0070006100 ,
    0x6e007900490044000000000000002b0f0dd5cbef5c47b642e3df1c654d560700 ,
    0x0000a1d2bc249d6fc348ba88dcf32deed58e49004400000000000000513307b4 ,
    0x9cec0445b2596271a25d223a0700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x4c006f0063006100740069006f006e0049004400000000000000cfcb0f694dd6 ,
    0x78469d745c2d3c9b453407000000f0a07a545f8a6448b11bd6a1031b20d14900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyLocation.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x85a799c5e1bce44b81985f6d79c53c18
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa515839bb90b7a488b894bd649f28e8c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x22f2fe924a8b0647a44fdf3c1975dbe9
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.MN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x675ec54d7c95004798d8a69aa7085a05
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.DateReleased"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d90285cce18f14d9cffbe9cdd9a1962
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Password"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c152fe752b18a4fbc39a037671e2efe
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhDirect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c022400111483449ab1e03e7f9c3206
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhCell"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0c62eeed041f1f4a8d48307a5118e3be
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6f32c3ccb4eb064cb06834c1d306e187
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Email"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ff081ac8a4e3c49a4c5296c6ded61f5
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.EmailRes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb11ed1425425554793489128ce4e7856
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.StaffCategoryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a0e4ad6aa1539418c5a543e507a8ec2
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhEmergency"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7af5d0a1958ed44cbaae19df6da5c06e
        End
    End
    Begin
        dbText "Name" ="dbo_Company.CompanyName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2f18754224208d41bc5ac1048d1c7266
        End
    End
    Begin
        dbText "Name" ="dbo_Company.HeadOfficeLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9a3eea62dc3a3348a0ef1709b2ec3af2
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.LocationCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x22fcf5f92ab80b46b6580be11bb299cf
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResAdd1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd50d1548b397f4c9cdfdc200e2494f7
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResAdd2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7bf8a67f39a8474881ad5d0265dd3391
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResCity"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x17346f17d819d24aa9eafacd0b7c6c95
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResProv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbf121d14aed76f46a666b9d061c51f1d
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResPC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe14e1c521cdeb84a94a5c042ab77312f
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.DateHired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd6e6377405ce7846bd8b65b8e46e168b
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x806daed8c439884f962468abf340a0e6
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtShippingLabel"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66cc82de217ada4ba4596a75cadd3a0c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xda878031ad638149a5738e696f06e2dc
        End
    End
    Begin
        dbText "Name" ="dbo_Company.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0392bd8f0ed25347804ff595eebf3aa9
        End
    End
    Begin
        dbText "Name" ="dbo_Company.Twitter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeb1ae80fe73ecd4a8585625f8cc9989f
        End
    End
    Begin
        dbText "Name" ="dbo_Company.Facebook"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe14802ef17baa74b958ef944c3e804d4
        End
    End
    Begin
        dbText "Name" ="dbo_Company.ChargeGST"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf05cef46fa8a804492e35e30539f1382
        End
    End
    Begin
        dbText "Name" ="dbo_Company.ChargeHST"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x19566bd0909751458ef78bb8463be7bf
        End
    End
    Begin
        dbText "Name" ="dbo_Company.ChargePST"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d11ef2b17f9cd4da50704e393dbb794
        End
    End
    Begin
        dbText "Name" ="dbo_Company.GSTNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xde0f36ca8a87dc479fd77cb18a488f24
        End
    End
    Begin
        dbText "Name" ="dbo_Company.HSTNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x88e101710a5e404da20f71e9419ced88
        End
    End
    Begin
        dbText "Name" ="dbo_Company.PSTNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x63c2f3cebbbbc241a2991ee497f51815
        End
    End
    Begin
        dbText "Name" ="dbo_Company.GSTRate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3902d4423896d24692566108023731a5
        End
    End
    Begin
        dbText "Name" ="dbo_Company.HSTRate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcec9e1d0ef994349a1891263b5179b05
        End
    End
    Begin
        dbText "Name" ="dbo_Company.PSTRate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7dd8c74f6be3f646af6e47ce86db9f71
        End
    End
    Begin
        dbText "Name" ="dbo_Company.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa2db52ff28cf4e4fab9525caef8563ff
        End
    End
    Begin
        dbText "Name" ="dbo_Company.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x338e4e6bd977f847ba4467d3fb0b9d8b
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xefd2b0d8f033e344997496bca8209b1f
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.CompanyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7d3e0fe27fc9574abd9c34831da9e4a9
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf2d1b12719c503428e9c633325563f0d
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResCountry"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd283fa26966501459d02ff505c246823
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc87a7ddd8309024fa5cd2281540c026c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Suffix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30d03f4863899345a7dae90aa27e5f91
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhEmergencyName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x963f36502e86e843aeb95890a5db7624
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtPickSlip"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ee6b969bd82684ca43d7cbf2e85c512
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.OfficeManagerID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a6fc81205c01543bdf701c0b9c01925
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xab0f26b3605ac54eba846ead26e4c2c4
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CompanyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc2415c966b734845b48bdcb2bc860f47
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Prefix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3fdbdcda53c8ec49bb8b08a6dcdb21e8
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7141a43e28754d40b7decaee7195610f
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Photo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b461244b9daef4fb81cda87d0ebaf7e
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtReport"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x263ba3042fdf794d9ea681abc5529d60
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtQuote"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x94954ceddff0774abdab59284744b1bf
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtDocket"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2cc695f3d1142d4e86d7e52223a8a158
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtInvoice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc1d167da90501c4f82010d02cf8d7740
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf2445026a2606b46a3b3a78d94afb928
        End
    End
    Begin
        dbText "Name" ="dbo_Company.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfb3f674854abd948930fffcf65735e22
        End
    End
    Begin
        dbText "Name" ="dbo_Company.Website"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d0f254516c7154aa920540983612be6
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.Add1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc06c7607a7e94d4f91e7a17352d3bbe5
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.Add2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf81857c4297ee048af5f17fb030c4ad3
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.City"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d1f44224c0434488c377556e7dfe5bd
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.Prov"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4e1d65b08cc2f24fa9bb8f350154397c
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.PC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xca59e94beb2fab418bb80f961bdfb159
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.Country"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a20b45d3757824d9a5a0278688e2ea1
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.PhFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x16876dad402d8748bee031e3db522b06
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.EmailLocation"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb854a3cdec5a0d4b86db948978c4e3b2
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc07b5bf4de8af6409c6fa8a330b512c7
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.PhTollFree"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.PhMain"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Company.LoginMessage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Company.EmailDomain"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.BackAt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.SMSSystem"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CanUnlockQuoteRequests"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="EmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7e20a17d1793eb429c05ebcd3da91c4a
        End
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1488
    Bottom =860
    Left =-1
    Top =-1
    Right =1418
    Bottom =520
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =600
        Top =255
        Right =744
        Bottom =399
        Top =0
        Name ="dbo_Company"
        Name =""
    End
    Begin
        Left =152
        Top =-19
        Right =467
        Bottom =485
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =976
        Top =41
        Right =1120
        Bottom =185
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
