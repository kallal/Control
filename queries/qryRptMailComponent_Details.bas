Operation =1
Option =0
Begin InputTables
    Name ="dbo_MailPricingDetail"
    Name ="dbo_TaskCategory"
End
Begin OutputColumns
    Expression ="dbo_TaskCategory.TaskCategory"
    Expression ="dbo_MailPricingDetail.CategoryID"
    Expression ="dbo_MailPricingDetail.ProjectComponentID"
    Expression ="dbo_MailPricingDetail.Unit"
    Expression ="dbo_MailPricingDetail.UnitDesc"
    Expression ="dbo_MailPricingDetail.Qty"
    Expression ="dbo_MailPricingDetail.ShortDesc"
    Expression ="dbo_MailPricingDetail.LongDesc"
    Expression ="dbo_MailPricingDetail.BasePrice"
    Expression ="dbo_MailPricingDetail.SellPrice"
    Expression ="dbo_MailPricingDetail.BaseCost"
    Expression ="dbo_MailPricingDetail.SellCost"
    Alias ="TotalPrice"
    Expression ="[baseprice]+IIf([unit]=1,([Qty]*[Sellprice]),[Qty]*[Sellprice]/1000)"
    Expression ="dbo_MailPricingDetail.CategoryID"
End
Begin Joins
    LeftTable ="dbo_MailPricingDetail"
    RightTable ="dbo_TaskCategory"
    Expression ="dbo_MailPricingDetail.CategoryID = dbo_TaskCategory.ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_TaskCategory.TaskCategory"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x5b258d149e84314992806f69ba7f5a5c
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c22958faa44d12488cd38349a97eb3b800000000ebf53c4c ,
    0x2de0e4400000000000000000640062006f005f004d00610069006c0050007200 ,
    0x6900630069006e006700440065007400610069006c000000000000006fbf9963 ,
    0x9a05b24a9b5a7b3b49d3791f00000000b2d3854c2de0e4400000000000000000 ,
    0x640062006f005f005400610073006b00430061007400650067006f0072007900 ,
    0x000000000000b70b6c2a3fc1904699d595799104e424070000005b258d149e84 ,
    0x314992806f69ba7f5a5c54006f00740061006c00500072006900630065000000 ,
    0x00000000d2f1a09f98f39147bd88f13c6bafc211070000006fbf99639a05b24a ,
    0x9b5a7b3b49d3791f5400610073006b00430061007400650067006f0072007900 ,
    0x0000000000002dcc6bdcbc02a348b97853286b08ebbd07000000c22958faa44d ,
    0x12488cd38349a97eb3b8430061007400650067006f0072007900490044000000 ,
    0x000000004369d00908e9a74e8d3d2a0ca149674507000000c22958faa44d1248 ,
    0x8cd38349a97eb3b8500072006f006a0065006300740043006f006d0070006f00 ,
    0x6e0065006e007400490044000000000000008e0e10d1462398468ff659735a34 ,
    0x69c707000000c22958faa44d12488cd38349a97eb3b855006e00690074000000 ,
    0x0000000037f01daf52c9b34b9543cbe294504d0d07000000c22958faa44d1248 ,
    0x8cd38349a97eb3b855006e006900740044006500730063000000000000003913 ,
    0x70508cee3f438fcb33f3d44f49c707000000c22958faa44d12488cd38349a97e ,
    0xb3b85100740079000000000000002937a4fa63f428488ba9db95434cad5d0700 ,
    0x0000c22958faa44d12488cd38349a97eb3b8530068006f007200740044006500 ,
    0x7300630000000000000053d89405841b364fb205cc37f10f628c07000000c229 ,
    0x58faa44d12488cd38349a97eb3b84c006f006e00670044006500730063000000 ,
    0x00000000f42a5d02e672c84aa98ab6d578b1a8e507000000c22958faa44d1248 ,
    0x8cd38349a97eb3b8420061007300650050007200690063006500000000000000 ,
    0x37d246812e1c504ebe561b18a030584b07000000c22958faa44d12488cd38349 ,
    0xa97eb3b8530065006c006c0050007200690063006500000000000000d89554ca ,
    0x061d0a42a0ae0fc63052683407000000c22958faa44d12488cd38349a97eb3b8 ,
    0x420061007300650043006f00730074000000000000001127d36e6c8bba4f8f16 ,
    0x1f7cba9ea3b407000000c22958faa44d12488cd38349a97eb3b8530065006c00 ,
    0x6c0043006f007300740000000000000046298f9267a8544db8d6ff79106e1140 ,
    0x070000006fbf99639a05b24a9b5a7b3b49d3791f490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_MailPricingDetail.CategoryID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1a9bcebee1ef2d4ca3bb11d587b92c8a
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b577f5f4d33e74a94cf2f3e78fa4e1e
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.Unit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4df0b25fe574234f8c30a07ecceff7f0
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.UnitDesc"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a41a7c578ecdd4e826017ef32e35591
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.Qty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb05a4491eaa61b44ada212fea9936496
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.ShortDesc"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbe0ba58a9d2e0d4dad2a1889eadd55f4
        End
        dbInteger "ColumnWidth" ="3315"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.LongDesc"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0cba5baa10136041914979aa958fade4
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.BasePrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x73b1323e372d904abbef115a698940c1
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.SellPrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d29f1270d19c242abb71465ed5b3f86
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.BaseCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0cb72b9f2ba1be4fbeca2ba841b9c887
        End
    End
    Begin
        dbText "Name" ="dbo_MailPricingDetail.SellCost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x04fdb56c83718c4aa49f523fb9ec81b5
        End
    End
    Begin
        dbText "Name" ="TotalPrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb70b6c2a3fc1904699d595799104e424
        End
    End
    Begin
        dbText "Name" ="Expr1000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_TaskCategory.TaskCategory"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =185
    Top =81
    Right =1667
    Bottom =804
    Left =-1
    Top =-1
    Right =1450
    Bottom =371
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =44
        Top =-3
        Right =277
        Bottom =406
        Top =0
        Name ="dbo_MailPricingDetail"
        Name =""
    End
    Begin
        Left =325
        Top =12
        Right =469
        Bottom =156
        Top =0
        Name ="dbo_TaskCategory"
        Name =""
    End
End
