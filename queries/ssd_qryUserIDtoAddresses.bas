Operation =1
Option =0
Where ="(((Nz([ContactTypeID],2))=2))"
Begin InputTables
    Name ="ssd_Addresses"
    Name ="ssd_Users"
    Name ="ssd_CustomerContacts"
End
Begin OutputColumns
    Expression ="ssd_Users.UserID"
    Expression ="ssd_Users.IsDeleted"
    Alias ="Type"
    Expression ="Nz([ContactTypeID],2)"
    Expression ="ssd_CustomerContacts.AddressID"
    Expression ="ssd_Addresses.CompanyName"
    Expression ="ssd_Addresses.DepartmentName"
    Expression ="ssd_Addresses.Street"
    Expression ="ssd_Addresses.City"
    Expression ="ssd_Addresses.State"
    Expression ="ssd_Addresses.ZipCode"
    Expression ="ssd_Addresses.Country"
    Expression ="ssd_Addresses.AddressNotes"
    Expression ="ssd_Addresses.FirstName"
    Expression ="ssd_Addresses.LastName"
    Expression ="ssd_Addresses.Phone"
    Expression ="ssd_Addresses.Mobile"
    Expression ="ssd_Addresses.Email"
    Expression ="ssd_Addresses.AddressName"
End
Begin Joins
    LeftTable ="ssd_Users"
    RightTable ="ssd_CustomerContacts"
    Expression ="ssd_Users.UserID = ssd_CustomerContacts.UserID"
    Flag =2
    LeftTable ="ssd_CustomerContacts"
    RightTable ="ssd_Addresses"
    Expression ="ssd_CustomerContacts.AddressID = ssd_Addresses.AddressID"
    Flag =2
End
Begin OrderBy
    Expression ="ssd_Users.UserID"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x84fc12c578bc81409975be230eb421a0
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000004f29c3cb5e47d2458acb045e0bce434100000000910f7ade ,
    0x748ae44000000000000000007300730064005f00410064006400720065007300 ,
    0x73006500730000000000000031b72bd9918ea44294d75ceb3011383900000000 ,
    0x3dccfbde748ae44000000000000000007300730064005f005500730065007200 ,
    0x73000000000000003d93ad4bdf244443a89695a38276389e000000004cf986de ,
    0x748ae44000000000000000007300730064005f0043007500730074006f006d00 ,
    0x6500720043006f006e00740061006300740073000000000000004b47dc3694b3 ,
    0x8747b62d8c9314a9ce600700000084fc12c578bc81409975be230eb421a05400 ,
    0x79007000650000000000000032ef39a7d147fb4d92a206845c0611f907000000 ,
    0x31b72bd9918ea44294d75ceb3011383955007300650072004900440000000000 ,
    0x000022ec7388165a3647a6b5f117b7e471230700000031b72bd9918ea44294d7 ,
    0x5ceb3011383949007300440065006c0065007400650064000000000000002a14 ,
    0x8856076802439b8a6f4b1a4c75c8070000003d93ad4bdf244443a89695a38276 ,
    0x389e43006f006e00740061006300740054007900700065004900440000000000 ,
    0x000061dd56d13c50384b91d372426e8e0812070000003d93ad4bdf244443a896 ,
    0x95a38276389e41006400640072006500730073004900440000000000000062f2 ,
    0x97d4cee51a4693b7737d0664c8e4070000004f29c3cb5e47d2458acb045e0bce ,
    0x434143006f006d00700061006e0079004e0061006d006500000000000000414f ,
    0x5dbfec143249b52d9ed734446bcb070000004f29c3cb5e47d2458acb045e0bce ,
    0x43414400650070006100720074006d0065006e0074004e0061006d0065000000 ,
    0x00000000a65e1a16f271b74287dfa9d0843439a9070000004f29c3cb5e47d245 ,
    0x8acb045e0bce4341530074007200650065007400000000000000eeddc9e75311 ,
    0x7e4a9b88cc9799ff02ab070000004f29c3cb5e47d2458acb045e0bce43414300 ,
    0x690074007900000000000000cf524e912dbd2b47a6d60f8ee93d9aa507000000 ,
    0x4f29c3cb5e47d2458acb045e0bce434153007400610074006500000000000000 ,
    0x66865fec3751f743b6d8460de4b14eff070000004f29c3cb5e47d2458acb045e ,
    0x0bce43415a006900700043006f00640065000000000000004e65bc16e077c247 ,
    0x84505495f18079a3070000004f29c3cb5e47d2458acb045e0bce434143006f00 ,
    0x75006e0074007200790000000000000041df242ff2c9224394aa150d2cf39399 ,
    0x070000004f29c3cb5e47d2458acb045e0bce4341410064006400720065007300 ,
    0x73004e006f007400650073000000000000000d4f23b908c9184bb668c4d01656 ,
    0x3596070000004f29c3cb5e47d2458acb045e0bce434146006900720073007400 ,
    0x4e0061006d00650000000000000086a49bc46b3c5d40bb3048611b7eb3bf0700 ,
    0x00004f29c3cb5e47d2458acb045e0bce43414c006100730074004e0061006d00 ,
    0x6500000000000000087909d315955d43838b1a11af84ccfa070000004f29c3cb ,
    0x5e47d2458acb045e0bce4341500068006f006e0065000000000000003daacdf8 ,
    0x67cf0e4c9c3be99af03da4f2070000004f29c3cb5e47d2458acb045e0bce4341 ,
    0x4d006f00620069006c00650000000000000088fc7fb897446546b923b6f1d32e ,
    0x0959070000004f29c3cb5e47d2458acb045e0bce434145006d00610069006c00 ,
    0x0000000000003711a47ffbbd15409ef4b33a2bfa5018070000004f29c3cb5e47 ,
    0xd2458acb045e0bce434141006400640072006500730073004e0061006d006500 ,
    0x0000000000004911a74cc67fa849b9f6be4e23ed1ac4070000003d93ad4bdf24 ,
    0x4443a89695a38276389e550073006500720049004400000000000000838c0f80 ,
    0x65f2db438f37e957eddd8fbe070000004f29c3cb5e47d2458acb045e0bce4341 ,
    0x4100640064007200650073007300490044000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="ssd_Users.UserID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd0883864ea367a42a7fe66768fa3fba7
        End
    End
    Begin
        dbText "Name" ="ssd_CustomerContacts.AddressID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x113f9805348a6949bbb78e7975e7659f
        End
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ssd_Addresses.AddressNotes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x40952ca6caade1458fba1326dc2d74c8
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.CompanyName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x41b13b4ac537d44298cad78351f48051
        End
        dbInteger "ColumnWidth" ="2820"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ssd_Addresses.DepartmentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfa1f393eaad10a47b7039cc1e61b32e9
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.Street"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x84105d0f9160bb4fa36758db16ca3483
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.City"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdae5e30de7e16d448f5cb617baa1f280
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.State"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7d3ce05c1fb30b40b9d9a81c4c573eae
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.ZipCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x89794f154dd01345ad9841a6caeafa10
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.Country"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7264a480dc869a44a20c01e0970ba4c0
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.AddressName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x146c95a6eb25c649841afbb4241af1cf
        End
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ssd_Addresses.FirstName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x20e51ac9a991094bafa1b0f7da518b8e
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.LastName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x83d1bd232ac0d048855bf78621790277
        End
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ssd_Addresses.Phone"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5cb3e683d9fa85419bd7dacd2b65064f
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.Mobile"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbfeec12dc9d6de4ab2a8e81b7889809b
        End
    End
    Begin
        dbText "Name" ="ssd_Addresses.Email"
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe43fd1d69d388f4bb87ab2c1e63a97c8
        End
    End
    Begin
        dbText "Name" ="ssd_Users.CustomerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_CustomerContacts.ContactTypeID"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Users.UserRefID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Users.ShippingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Users.BillingAddressID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_Users.IsDeleted"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ssd_CustomerContacts.ContactGroupID"
        dbInteger "ColumnWidth" ="2235"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Type"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4b47dc3694b38747b62d8c9314a9ce60
        End
    End
End
Begin
    State =0
    Left =6
    Top =96
    Right =1423
    Bottom =805
    Left =-1
    Top =-1
    Right =1385
    Bottom =393
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =856
        Top =45
        Right =1136
        Bottom =292
        Top =0
        Name ="ssd_Addresses"
        Name =""
    End
    Begin
        Left =49
        Top =92
        Right =245
        Bottom =276
        Top =0
        Name ="ssd_Users"
        Name =""
    End
    Begin
        Left =323
        Top =56
        Right =467
        Bottom =200
        Top =0
        Name ="ssd_CustomerContacts"
        Name =""
    End
End
