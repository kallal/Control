Operation =4
Option =0
Begin InputTables
    Name ="Active with Addresses"
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Name ="dbo_ContactName.PhDirect"
    Expression ="[Active with Addresses].[Phone]"
    Name ="dbo_ContactName.FN"
    Expression ="Trim(Left([Active with Addresses].[Contact],InStr([Active with Addresses].[Conta"
        "ct],\" \")))"
    Name ="dbo_ContactName.ln"
    Expression ="Trim(Right([Active with Addresses].[Contact],Len([Active with Addresses].[Contac"
        "t])-InStr([Active with Addresses].[Contact],\" \")))"
End
Begin Joins
    LeftTable ="Active with Addresses"
    RightTable ="dbo_ContactName"
    Expression ="[Active with Addresses].AccessID = dbo_ContactName.ContactGeneralID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0x3109e6a502df3940ab12b09202e49406
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000008e5e2316b3d2e04597f755051515568e000000004b386a71 ,
    0xec62e44000000000000000004100630074006900760065002000770069007400 ,
    0x68002000410064006400720065007300730065007300000000000000b1dfd77f ,
    0x67641a4a8c10df9ef7c35963000000008ffda2c0ea62e4400000000000000000 ,
    0x640062006f005f0043006f006e0074006100630074004e0061006d0065000000 ,
    0x00000000b45c932a1327c14f8f962c319b053dfa070000008e5e2316b3d2e045 ,
    0x97f755051515568e500068006f006e00650000000000000008a34d34695a5d4c ,
    0x8d9e55b7d6ce6a1d07000000b1dfd77f67641a4a8c10df9ef7c3596350006800 ,
    0x440069007200650063007400000000000000b978ccca8aecb64dbbc0deebb2df ,
    0xcdd4070000008e5e2316b3d2e04597f755051515568e43006f006e0074006100 ,
    0x6300740000000000000008ae9e11739f3544a2d99be00a23adf107000000b1df ,
    0xd77f67641a4a8c10df9ef7c3596346004e0000000000000008374dd34b155c49 ,
    0xbe4fe6c2125378e407000000b1dfd77f67641a4a8c10df9ef7c359636c006e00 ,
    0x0000000000008ee6f410fc5cd24488657766cb574134070000008e5e2316b3d2 ,
    0xe04597f755051515568e41006300630065007300730049004400000000000000 ,
    0x43f6e7679eba6741ad8592a856384d9e07000000b1dfd77f67641a4a8c10df9e ,
    0xf7c3596343006f006e007400610063007400470065006e006500720061006c00 ,
    0x49004400000000000000000000000000000000000000000000000c0000000500 ,
    0x00000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="[Active with Addresses].Company"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf68dde99b327bb4db496c75a60dee293
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhDirect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x716f6e9e43f7cf46b2c07be3e017ff8a
        End
        dbInteger "ColumnWidth" ="2790"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ContactName.ln"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4ab4df94b597414caae92707ac2ee0d1
        End
        dbInteger "ColumnWidth" ="3870"
        dbBoolean "ColumnHidden" ="0"
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
    ColumnsShown =579
    Begin
        Left =48
        Top =12
        Right =193
        Bottom =389
        Top =0
        Name ="Active with Addresses"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =687
        Bottom =446
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
