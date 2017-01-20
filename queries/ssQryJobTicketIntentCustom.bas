dbMemo "SQL" ="SELECT ssd_Products.ProductID, ssd_IntentResource.IntentResourceID, ssd_IntentRe"
    "source.ProductIntentID, ssd_IntentResource.DescriptiveName, ssd_IntentResource.I"
    "ntentResourceTypeID, ssd_CustomIntent_Property.PropertyID, ssd_Property.ValueNam"
    "e, ssd_JBF2Job.JBFID\015\012FROM (((ssd_Products LEFT JOIN ssd_IntentResource ON"
    " ssd_Products.ProductIntentID = ssd_IntentResource.ProductIntentID) LEFT JOIN ss"
    "d_CustomIntent_Property ON ssd_IntentResource.IntentResourceID = ssd_CustomInten"
    "t_Property.IntentResourceID) LEFT JOIN ssd_Property ON ssd_CustomIntent_Property"
    ".PropertyID = ssd_Property.PropertyID) LEFT JOIN ssd_JBF2Job ON ssd_Products.Pro"
    "ductID = ssd_JBF2Job.JobID\015\012WHERE (((ssd_CustomIntent_Property.PropertyID)"
    " Is Not Null));\015\012"
dbMemo "Connect" =""
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
    0x9a5e975e32c2dc43bda636812b36f33e
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000f317d7ac27109d4f9401387db45ce7b200000000222f576f ,
    0xcedae44000000000000000007300730064005f00500072006f00640075006300 ,
    0x7400730000000000000067871fb76ee29c4bb80022d07f2d799200000000f35d ,
    0xad1450e0e44000000000000000007300730064005f0049006e00740065006e00 ,
    0x74005200650073006f007500720063006500000000000000b0a20d4ea3b70148 ,
    0xac85f7cf33c1df5c00000000f35dad1450e0e440000000000000000073007300 ,
    0x64005f0043007500730074006f006d0049006e00740065006e0074005f005000 ,
    0x72006f0070006500720074007900000000000000213356c67d6eb84b960b1e88 ,
    0x0a0ecea000000000f35dad1450e0e44000000000000000007300730064005f00 ,
    0x500072006f0070006500720074007900000000000000816b811a6c73ac459118 ,
    0x21d019bad025000000009301ef6ecedae4400000000000000000730073006400 ,
    0x5f004a004200460032004a006f00620000000000000062913ac3ed7cd94aab77 ,
    0xa7024331a0be07000000f317d7ac27109d4f9401387db45ce7b2500072006f00 ,
    0x640075006300740049004400000000000000e16dba5326350746862b8a1bb623 ,
    0x8f380700000067871fb76ee29c4bb80022d07f2d799249006e00740065006e00 ,
    0x74005200650073006f00750072006300650049004400000000000000416a8e4b ,
    0x2911194ebf0ed618e0d4b88f0700000067871fb76ee29c4bb80022d07f2d7992 ,
    0x500072006f00640075006300740049006e00740065006e007400490044000000 ,
    0x0000000099df483fcae20949a29775320ea6a49a0700000067871fb76ee29c4b ,
    0xb80022d07f2d7992440065007300630072006900700074006900760065004e00 ,
    0x61006d00650000000000000028babb8148664849918b7fc910c8814507000000 ,
    0x67871fb76ee29c4bb80022d07f2d799249006e00740065006e00740052006500 ,
    0x73006f0075007200630065005400790070006500490044000000000000006aba ,
    0x9765b9a2cb40bba34dac5b83a1eb07000000b0a20d4ea3b70148ac85f7cf33c1 ,
    0xdf5c500072006f00700065007200740079004900440000000000000030022d88 ,
    0xb79b8747a0fcc435cd2cb10c07000000213356c67d6eb84b960b1e880a0ecea0 ,
    0x560061006c00750065004e0061006d0065000000000000004dc69b3548502847 ,
    0x9e4feac6ec00684007000000816b811a6c73ac45911821d019bad0254a004200 ,
    0x4600490044000000000000001ec01795d6e3934c9ecd065afbe50b4a07000000 ,
    0xf317d7ac27109d4f9401387db45ce7b2500072006f0064007500630074004900 ,
    0x6e00740065006e00740049004400000000000000d66c76d10040704e85df1fd8 ,
    0xfd103d2a07000000b0a20d4ea3b70148ac85f7cf33c1df5c49006e0074006500 ,
    0x6e0074005200650073006f00750072006300650049004400000000000000ba92 ,
    0x90b98e2b844eba41662775cd7bd307000000213356c67d6eb84b960b1e880a0e ,
    0xcea0500072006f007000650072007400790049004400000000000000cfc3b780 ,
    0xa55d8e40810df3be6ae9b6d907000000816b811a6c73ac45911821d019bad025 ,
    0x4a006f0062004900440000000000000000000000000000000000000000000000 ,
    0x0c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_IntentResource.IntentResourceTypeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b351c841ef07c4ebdcc0f52eb5e008c
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.DescriptiveName"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb48ba87395f2764891bd25911707eac2
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.ProductIntentID"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1f9217d10f750343af5b086fff132410
        End
    End
    Begin
        dbText "Name" ="dbo_IntentResource.IntentResourceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x452bc879f8bf8546a35efe57eb0ab73c
        End
    End
    Begin
        dbText "Name" ="dbo_Products.ProductID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CustomIntent_Property.PropertyID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Property.ValueName"
        dbInteger "ColumnWidth" ="5070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JBF2Job.JBFID"
        dbLong "AggregateType" ="-1"
    End
End
