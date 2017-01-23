Operation =1
Option =0
Where ="(((dbo_ProjectHeader.Void)=False))"
Begin InputTables
    Name ="dbo_ProjectHeaderWatchList"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
    Name ="loc_SearchSettings"
End
Begin OutputColumns
    Expression ="dbo_ProjectHeaderWatchList.ID"
    Expression ="dbo_ProjectHeaderWatchList.ProjectHeaderID"
    Expression ="dbo_ProjectHeaderWatchList.EmployeeID"
    Expression ="dbo_ProjectHeaderWatchList.WatchNotes"
    Expression ="dbo_ProjectHeader.QuoteNum"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectHeader.InvoiceNum"
    Expression ="dbo_ProjectHeader.Void"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.IsRush"
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDocketDueDate],0)>0,[specifiedDocketduedate],[assignedDocketdue"
        "date])"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
End
Begin Joins
    LeftTable ="dbo_ProjectHeaderWatchList"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectHeaderWatchList.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="loc_SearchSettings"
    RightTable ="dbo_ProjectHeaderWatchList"
    Expression ="loc_SearchSettings.LoginID = dbo_ProjectHeaderWatchList.EmployeeID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd315f2e6430a754cb2745d3f8bfdd98e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e3781e30a6417048a7bb261e6636c570000000004b35159e ,
    0xcee0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200570061007400630068004c00690073007400 ,
    0x00000000000035f87d9f0b136040ad3c2851f16d2a80000000003f11149ecee0 ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000bb4ee421343f624db77659eef5e0 ,
    0x22a10000000096e7c19dcee0e4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x16999775ea3c7a419b963e2011f902df0000000020f9356dec62e44000000000 ,
    0x000000006c006f0063005f005300650061007200630068005300650074007400 ,
    0x69006e00670073000000000000007774c05d713b4f42958e9bacbed064b50700 ,
    0x0000d315f2e6430a754cb2745d3f8bfdd98e4400750065004400610074006500 ,
    0x0000000000009e99e5374aa98f418259044d2ea6636d07000000e3781e30a641 ,
    0x7048a7bb261e6636c5704900440000000000000018505632c961534c9724aa5c ,
    0x66ddcaa707000000e3781e30a6417048a7bb261e6636c570500072006f006a00 ,
    0x65006300740048006500610064006500720049004400000000000000e1854506 ,
    0xda8de947b16783919f0fc5ac07000000e3781e30a6417048a7bb261e6636c570 ,
    0x45006d0070006c006f00790065006500490044000000000000003ab5376e8041 ,
    0x1a4182cd3ed3f87b910507000000e3781e30a6417048a7bb261e6636c5705700 ,
    0x61007400630068004e006f00740065007300000000000000d0b1539c9f7bfc43 ,
    0x9d9435b3dda929d50700000035f87d9f0b136040ad3c2851f16d2a8051007500 ,
    0x6f00740065004e0075006d00000000000000749d4175d9cbb541b77414bf76f2 ,
    0xaa9c0700000035f87d9f0b136040ad3c2851f16d2a8044006f0063006b006500 ,
    0x74004e0075006d000000000000007da6a641b3cf604b95c0700a612b45850700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8049006e0076006f00690063006500 ,
    0x4e0075006d00000000000000e04379333b12ce4eb39eba2d39783d1f07000000 ,
    0x35f87d9f0b136040ad3c2851f16d2a8056006f0069006400000000000000fde2 ,
    0x928bbc55824d8e33fcf8a8e7c2e107000000bb4ee421343f624db77659eef5e0 ,
    0x22a143006f006d0070004e0061006d00650000000000000093ba397e75759745 ,
    0xb39991abbd4894170700000035f87d9f0b136040ad3c2851f16d2a8049007300 ,
    0x5200750073006800000000000000dc68bee42e27934ca4722dc0273ffc020700 ,
    0x000035f87d9f0b136040ad3c2851f16d2a805300700065006300690066006900 ,
    0x6500640044006f0063006b006500740044007500650044006100740065000000 ,
    0x000000000991cbddd7747348961699f709bd31030700000035f87d9f0b136040 ,
    0xad3c2851f16d2a80610073007300690067006e006500640044006f0063006b00 ,
    0x6500740064007500650064006100740065000000000000008265226ce5165f45 ,
    0x97f9cda188898d960700000035f87d9f0b136040ad3c2851f16d2a8043006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x000004aeb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a80490044000000000000001fc238e447652546a47f3ca6a0d889e4 ,
    0x07000000bb4ee421343f624db77659eef5e022a14900440000000000000019bc ,
    0x9feaefa5954688499eb4cc410b5d0700000016999775ea3c7a419b963e2011f9 ,
    0x02df4c006f00670069006e004900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeaderWatchList.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x38e17c2026b1494aa7e51b9ae1f89545
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeaderWatchList.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3470f78882eb744ba25da68542529700
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeaderWatchList.EmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x572f3d4663ee854f8cc821da188713c0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeaderWatchList.WatchNotes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc916d84dfa3c6e4fbbb0419aa63bd12e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xba6dd67022d472499f44b6ee375d8ddd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x12e32f81de9b7942901c8776d19feff9
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x971e96b24cc3594c9d529bf2af63e049
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x31b27183ef84b14d8062f26da1578bb3
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb1a4c05fd41ba4394880a27754c80a0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc19850f7e8dcfe4e8b76ca8c2ef9010d
        End
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7774c05d713b4f42958e9bacbed064b5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =49
    Top =72
    Right =1582
    Bottom =941
    Left =-1
    Top =-1
    Right =1501
    Bottom =484
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =156
        Top =17
        Right =340
        Bottom =173
        Top =0
        Name ="dbo_ProjectHeaderWatchList"
        Name =""
    End
    Begin
        Left =412
        Top =19
        Right =820
        Bottom =406
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1036
        Top =51
        Right =1363
        Bottom =379
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =16
        Top =236
        Right =160
        Bottom =380
        Top =0
        Name ="loc_SearchSettings"
        Name =""
    End
End
