dbMemo "SQL" ="SELECT ssd_JBFsJoblets.JBFID, ssd_JBFsJoblets.JobletID, ssd_JobletLibrary.Joblet"
    "Name, ssd_JobletLibrary.JobletType, ssd_JBFsJoblets.ViewOrder, ssd_JBFPropertyVa"
    "lues.ValueID, ssd_JobletPropertyValues.PropertyID, ssd_JobletPropertyValues.Name"
    ", ssd_JobletPropertyValues.Value, ssd_JobletPropertyValues.IsEnabled, ssd_Joblet"
    "PropertyValues.IsDeleted, ssd_JobletPropertyValues.IconID, ssd_Icons.CategoryID,"
    " ssd_Icons.FileName, ssd_Icons.DisplayName\015\012FROM (((ssd_JBFsJoblets LEFT J"
    "OIN ssd_JBFPropertyValues ON ssd_JBFsJoblets.JBFJobletID = ssd_JBFPropertyValues"
    ".JBFJobletID) LEFT JOIN ssd_JobletPropertyValues ON ssd_JBFPropertyValues.ValueI"
    "D = ssd_JobletPropertyValues.ValueID) LEFT JOIN ssd_JobletLibrary ON ssd_JBFsJob"
    "lets.JobletID = ssd_JobletLibrary.JobletID) LEFT JOIN ssd_Icons ON ssd_JobletPro"
    "pertyValues.IconID = ssd_Icons.IconID\015\012ORDER BY ssd_JBFsJoblets.ViewOrder,"
    " ssd_JobletPropertyValues.PropertyID;\015\012"
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
    0x7d16017cac214f4cb957e3a5908cb622
End
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001454d0a620c58348b811c8f3d76016250000000003d64806 ,
    0xcb6be44000000000000000007300730064005f004a004200460073004a006f00 ,
    0x62006c006500740073000000000000008877d6aa13934641ba14276be3888643 ,
    0x00000000b6304606cb6be44000000000000000007300730064005f004a004200 ,
    0x4600500072006f0070006500720074007900560061006c007500650073000000 ,
    0x0000000034a02bba611e5d4d9243c4126e56dd44000000009daf5806cb6be440 ,
    0x00000000000000007300730064005f004a006f0062006c006500740050007200 ,
    0x6f0070006500720074007900560061006c007500650073000000000000007629 ,
    0xd2f6094b96459e77d826e60f260100000000458f5406cb6be440000000000000 ,
    0x00007300730064005f004a006f0062006c00650074004c006900620072006100 ,
    0x72007900000000000000d8fda2ef018c9c4e928fd198d4abff7a00000000e8ac ,
    0x3c06cb6be44000000000000000007300730064005f00490063006f006e007300 ,
    0x0000000000003737795346b6b24fb1521189989c8445070000001454d0a620c5 ,
    0x8348b811c8f3d76016254a004200460049004400000000000000f5c5cfc0575c ,
    0x4446b0af58a3a69c9e59070000001454d0a620c58348b811c8f3d76016254a00 ,
    0x6f0062006c006500740049004400000000000000e05ae798dff1074eb61a4cc3 ,
    0x07459d5a070000007629d2f6094b96459e77d826e60f26014a006f0062006c00 ,
    0x650074004e0061006d006500000000000000da21c7efad610e4dacac530da18e ,
    0xab42070000007629d2f6094b96459e77d826e60f26014a006f0062006c006500 ,
    0x74005400790070006500000000000000c830101214fd6045b9b380d3f618efb0 ,
    0x070000001454d0a620c58348b811c8f3d760162556006900650077004f007200 ,
    0x6400650072000000000000005b711f3a0817cf4bb2e79037cadc51ae07000000 ,
    0x8877d6aa13934641ba14276be3888643560061006c0075006500490044000000 ,
    0x000000006f285a8e3d844040a1a04f719e2e60090700000034a02bba611e5d4d ,
    0x9243c4126e56dd44500072006f00700065007200740079004900440000000000 ,
    0x000068a4d260d933374696463d22ae9ba21d0700000034a02bba611e5d4d9243 ,
    0xc4126e56dd444e0061006d0065000000000000005fe1151669abe349a4eae61e ,
    0x949d41b70700000034a02bba611e5d4d9243c4126e56dd44560061006c007500 ,
    0x65000000000000003f6db62550bd2048a0e252c1b2cd47cf0700000034a02bba ,
    0x611e5d4d9243c4126e56dd444900730045006e00610062006c00650064000000 ,
    0x00000000818a95b5918a3143bdf40b22698a01880700000034a02bba611e5d4d ,
    0x9243c4126e56dd4449007300440065006c006500740065006400000000000000 ,
    0x86f1cab024ff854b83d4bf152e7e0eef0700000034a02bba611e5d4d9243c412 ,
    0x6e56dd44490063006f006e0049004400000000000000bfd62c4054614446ad5e ,
    0x8ac1942e8dec07000000d8fda2ef018c9c4e928fd198d4abff7a430061007400 ,
    0x650067006f00720079004900440000000000000040bebd858ba9d942b612dad2 ,
    0xd93d8c5f07000000d8fda2ef018c9c4e928fd198d4abff7a460069006c006500 ,
    0x4e0061006d0065000000000000008459eacc5228894dabe1e2b9ac70e5290700 ,
    0x0000d8fda2ef018c9c4e928fd198d4abff7a44006900730070006c0061007900 ,
    0x4e0061006d0065000000000000004d2b95900e692940984b2f0153227cc20700 ,
    0x00001454d0a620c58348b811c8f3d76016254a00420046004a006f0062006c00 ,
    0x6500740049004400000000000000ce3864e4d302ec48a87762611e1a3eb70700 ,
    0x00008877d6aa13934641ba14276be38886434a00420046004a006f0062006c00 ,
    0x6500740049004400000000000000677738db06271d48af89803c8201ea760700 ,
    0x000034a02bba611e5d4d9243c4126e56dd44560061006c007500650049004400 ,
    0x00000000000097fa00f8ac757c4291e85ac62895c61a070000007629d2f6094b ,
    0x96459e77d826e60f26014a006f0062006c006500740049004400000000000000 ,
    0xd9ef978d20c5b9468df1334c211b39ca07000000d8fda2ef018c9c4e928fd198 ,
    0xd4abff7a490063006f006e004900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_JBFsJoblets.JBFID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6efd8fd632c0d345ae380d18ebab43bc
        End
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.Name"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd13829770d2def43a7760b1c2fbe8fbb
        End
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.Value"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4d2b255b9087f34f99a512d4684f6091
        End
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.PropertyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x034a4f32ab17f345925e39fba5b59d11
        End
    End
    Begin
        dbText "Name" ="dbo_JBFsJoblets.ViewOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb25ba3ec5c96ae4f9121e9818a50018c
        End
    End
    Begin
        dbText "Name" ="dbo_JBFPropertyValues.ValueID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x13804f4fc6bd404899ce1b85a0d71a06
        End
    End
    Begin
        dbText "Name" ="dbo_JBFsJoblets.JobletID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletLibrary.JobletName"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.IsEnabled"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.IsDeleted"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletPropertyValues.IconID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Icons.FileName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Icons.DisplayName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3375"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Icons.CategoryID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_JobletLibrary.JobletType"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
