Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentPricingDetail"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPricingDetail.ProjectComponentID"
    Alias ="DC"
    Expression ="Sum(Val([DirectCosts]))"
    Alias ="IC"
    Expression ="Sum(Val([IndirectCosts]))"
    Alias ="TMC"
    Expression ="Sum(Val([TotalMaterialCosts]))"
    Alias ="C"
    Expression ="Sum(Val([Cost]))"
End
Begin Groups
    Expression ="dbo_ProjectComponentPricingDetail.ProjectComponentID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x64fdc2b425c8d74ba40ec941f9a51493
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000e39a6717b14b5c4d9bb0cf22aa00ca4600000000e72760b4 ,
    0x14b5e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006900630069006e00 ,
    0x6700440065007400610069006c0000000000000056fd99de2ded1546881e67a3 ,
    0x79cffc7b0700000064fdc2b425c8d74ba40ec941f9a514934400430000000000 ,
    0x0000ae547d9d12e6a143bedea0d02e4a07c70700000064fdc2b425c8d74ba40e ,
    0xc941f9a5149349004300000000000000d121d49853af6e448a9b50595a6c60e4 ,
    0x0700000064fdc2b425c8d74ba40ec941f9a5149354004d004300000000000000 ,
    0xccd77a443108a3409ae21d427aee8d8e0700000064fdc2b425c8d74ba40ec941 ,
    0xf9a51493430000000000000079d3b9e582d6d34581f5d7f950ea0ab807000000 ,
    0xe39a6717b14b5c4d9bb0cf22aa00ca46500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740049004400000000000000bba16cdc3990 ,
    0x6d44a603767eaa45510107000000e39a6717b14b5c4d9bb0cf22aa00ca464400 ,
    0x6900720065006300740043006f00730074007300000000000000837ac23a66df ,
    0x5848883b8a51f9242a9407000000e39a6717b14b5c4d9bb0cf22aa00ca464900 ,
    0x6e0064006900720065006300740043006f0073007400730000000000000045bd ,
    0xecb0e9803a479b4dcb5726d1d0bc07000000e39a6717b14b5c4d9bb0cf22aa00 ,
    0xca4654006f00740061006c004d006100740065007200690061006c0043006f00 ,
    0x730074007300000000000000f588e5a81e2b2e4b91b64a931f52e66307000000 ,
    0xe39a6717b14b5c4d9bb0cf22aa00ca4643006f00730074000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPricingDetail.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56fd99de2ded1546881e67a379cffc7b
        End
    End
    Begin
        dbText "Name" ="IC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xae547d9d12e6a143bedea0d02e4a07c7
        End
    End
    Begin
        dbText "Name" ="TMC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd121d49853af6e448a9b50595a6c60e4
        End
    End
    Begin
        dbText "Name" ="C"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xccd77a443108a3409ae21d427aee8d8e
        End
    End
End
Begin
    State =0
    Left =78
    Top =136
    Right =1484
    Bottom =859
    Left =-1
    Top =-1
    Right =1374
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =82
        Top =14
        Right =685
        Bottom =343
        Top =0
        Name ="dbo_ProjectComponentPricingDetail"
        Name =""
    End
End
