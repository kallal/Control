Operation =1
Option =0
Having ="(((qryEstimateAnalysisForReport.SalesRepID) Is Not Null))"
Begin InputTables
    Name ="dbo_CompanyEmployee"
    Name ="qryEstimateAnalysisForReport"
End
Begin OutputColumns
    Expression ="qryEstimateAnalysisForReport.SalesRepID"
    Alias ="SalesRep"
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    Alias ="SumOfTotal11"
    Expression ="Sum(qryEstimateAnalysisForReport.Total11)"
    Alias ="SumOfTotal12"
    Expression ="Sum(qryEstimateAnalysisForReport.Total12)"
    Alias ="SumOfTotal13"
    Expression ="Sum(qryEstimateAnalysisForReport.Total13)"
    Alias ="SumOfTotal14"
    Expression ="Sum(qryEstimateAnalysisForReport.Total14)"
    Alias ="SumOfTotal15"
    Expression ="Sum(qryEstimateAnalysisForReport.Total15)"
    Alias ="SumOfTotal16"
    Expression ="Sum(qryEstimateAnalysisForReport.Total16)"
    Alias ="SumOfTotal17"
    Expression ="Sum(qryEstimateAnalysisForReport.Total17)"
    Alias ="SumOfTotal18"
    Expression ="Sum(qryEstimateAnalysisForReport.Total18)"
    Alias ="SumOfTotal19"
    Expression ="Sum(qryEstimateAnalysisForReport.Total19)"
    Alias ="SumOfTotalDockets"
    Expression ="Sum(qryEstimateAnalysisForReport.TotalDockets)"
    Alias ="TotalLive"
    Expression ="Sum(Nz([Total11],0)+Nz([Total12],0))"
    Alias ="TotalLost"
    Expression ="Sum(Nz([Total14],0)+Nz([Total15],0)+Nz([total16],0)+Nz([total18],0)+Nz([total19]"
        ",0))"
End
Begin Joins
    LeftTable ="qryEstimateAnalysisForReport"
    RightTable ="dbo_CompanyEmployee"
    Expression ="qryEstimateAnalysisForReport.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
End
Begin OrderBy
    Expression ="Sum(qryEstimateAnalysisForReport.TotalDockets)"
    Flag =1
End
Begin Groups
    Expression ="qryEstimateAnalysisForReport.SalesRepID"
    GroupLevel =0
    Expression ="Trim([fn]) & \" \" & Trim([ln])"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x6790ff41b9e9664eb830311ffa536b09
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40c ,
    0xcfe0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f00790065006500000000000000422590efe3ab6848 ,
    0x8a7ca8908a37e891000000008879df97d3e0e440000000000000000071007200 ,
    0x790045007300740069006d0061007400650041006e0061006c00790073006900 ,
    0x730046006f0072005200650070006f00720074000000000000008ea85bb1dcd0 ,
    0x0b49adb19e714f3de3ca070000006790ff41b9e9664eb830311ffa536b095300 ,
    0x61006c0065007300520065007000000000000000d4fce2e0b886a44ea87f854a ,
    0xa59225f8070000006790ff41b9e9664eb830311ffa536b09530075006d004f00 ,
    0x660054006f00740061006c0031003100000000000000636a29fe03276f4bafd4 ,
    0xffee4170eab9070000006790ff41b9e9664eb830311ffa536b09530075006d00 ,
    0x4f00660054006f00740061006c00310032000000000000009e4dea7a5060104e ,
    0x8b2a7ca523d5ca5c070000006790ff41b9e9664eb830311ffa536b0953007500 ,
    0x6d004f00660054006f00740061006c0031003300000000000000ee2d89af981b ,
    0xa848a85d9246e28d948a070000006790ff41b9e9664eb830311ffa536b095300 ,
    0x75006d004f00660054006f00740061006c0031003400000000000000218bc1ff ,
    0x29d766408b71d854308c3d37070000006790ff41b9e9664eb830311ffa536b09 ,
    0x530075006d004f00660054006f00740061006c00310035000000000000005c9c ,
    0x92a9e09b0f40af34f15182c1215b070000006790ff41b9e9664eb830311ffa53 ,
    0x6b09530075006d004f00660054006f00740061006c0031003600000000000000 ,
    0x39055c7907330643a742c40c576ec45d070000006790ff41b9e9664eb830311f ,
    0xfa536b09530075006d004f00660054006f00740061006c003100370000000000 ,
    0x000030abb55e23dfb54aaf121246e6b3e202070000006790ff41b9e9664eb830 ,
    0x311ffa536b09530075006d004f00660054006f00740061006c00310038000000 ,
    0x00000000710b1b832c69c243a0f9685be1949258070000006790ff41b9e9664e ,
    0xb830311ffa536b09530075006d004f00660054006f00740061006c0031003900 ,
    0x0000000000005c44d2189895ce4696ed8c1b2074512f070000006790ff41b9e9 ,
    0x664eb830311ffa536b09530075006d004f00660054006f00740061006c004400 ,
    0x6f0063006b0065007400730000000000000000890a0304a76000f0a660007838 ,
    0x090b070000006790ff41b9e9664eb830311ffa536b0954006f00740061006c00 ,
    0x4c00690076006500000000000000981f50938881b343b35882e696abef800700 ,
    0x00006790ff41b9e9664eb830311ffa536b0954006f00740061006c004c006f00 ,
    0x7300740000000000000039422b787d1ea649a1f9262d6906fbd1070000004225 ,
    0x90efe3ab68488a7ca8908a37e891530061006c00650073005200650070004900 ,
    0x4400000000000000238a70cc04f1b542bd79b33633915bc60700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa66006e0000000000000027afc0ba5db60e409636 ,
    0x470e73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa6c006e000000 ,
    0x0000000015e4ca7ffc741449a5acdc2ca2ce615707000000422590efe3ab6848 ,
    0x8a7ca8908a37e89154006f00740061006c0031003100000000000000861b4e72 ,
    0x30708845a8837cc77c774c7607000000422590efe3ab68488a7ca8908a37e891 ,
    0x54006f00740061006c003100320000000000000012dfd6ef8ee67341ba999b45 ,
    0x3fecd94707000000422590efe3ab68488a7ca8908a37e89154006f0074006100 ,
    0x6c0031003300000000000000e114579a0318f44e92609368552d056107000000 ,
    0x422590efe3ab68488a7ca8908a37e89154006f00740061006c00310034000000 ,
    0x0000000028f4dda1680bb64eb9386e169ffbcea707000000422590efe3ab6848 ,
    0x8a7ca8908a37e89154006f00740061006c00310035000000000000001b242269 ,
    0x150ed64e8e2cd176e81b322b07000000422590efe3ab68488a7ca8908a37e891 ,
    0x54006f00740061006c0031003600000000000000296955aeaa123741b83e9386 ,
    0x523a9a3307000000422590efe3ab68488a7ca8908a37e89154006f0074006100 ,
    0x6c0031003700000000000000223ba5a559e6b24c804a6c35a68216c107000000 ,
    0x422590efe3ab68488a7ca8908a37e89154006f00740061006c00310038000000 ,
    0x00000000011e9c4f09b8dd4383c388fb02409e9107000000422590efe3ab6848 ,
    0x8a7ca8908a37e89154006f00740061006c0031003900000000000000d5e0a3ad ,
    0xed4fdf45874a937612675d5307000000422590efe3ab68488a7ca8908a37e891 ,
    0x54006f00740061006c0044006f0063006b00650074007300000000000000836b ,
    0x4761bb445b46b7a949192117f8700700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa49004400000000000000000000000000000000000000000000000c000000 ,
    0x050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="SumOfTotal11"
        dbInteger "ColumnWidth" ="2010"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd4fce2e0b886a44ea87f854aa59225f8
        End
    End
    Begin
        dbText "Name" ="SumOfTotal12"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x636a29fe03276f4bafd4ffee4170eab9
        End
    End
    Begin
        dbText "Name" ="SumOfTotal13"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9e4dea7a5060104e8b2a7ca523d5ca5c
        End
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfTotal14"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee2d89af981ba848a85d9246e28d948a
        End
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SumOfTotal15"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x218bc1ff29d766408b71d854308c3d37
        End
    End
    Begin
        dbText "Name" ="SumOfTotal16"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c9c92a9e09b0f40af34f15182c1215b
        End
    End
    Begin
        dbText "Name" ="SumOfTotal17"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39055c7907330643a742c40c576ec45d
        End
    End
    Begin
        dbText "Name" ="SumOfTotal18"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30abb55e23dfb54aaf121246e6b3e202
        End
    End
    Begin
        dbText "Name" ="SumOfTotal19"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x710b1b832c69c243a0f9685be1949258
        End
    End
    Begin
        dbText "Name" ="SalesRep"
        dbInteger "ColumnWidth" ="2745"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8ea85bb1dcd00b49adb19e714f3de3ca
        End
    End
    Begin
        dbText "Name" ="TotalLive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x00890a0304a76000f0a660007838090b
        End
    End
    Begin
        dbText "Name" ="TotalLost"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x981f50938881b343b35882e696abef80
        End
    End
    Begin
        dbText "Name" ="SumOfTotalDockets"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5c44d2189895ce4696ed8c1b2074512f
        End
    End
    Begin
        dbText "Name" ="qryEstimateAnalysisForReport.SalesRepID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =48
    Top =67
    Right =1790
    Bottom =742
    Left =-1
    Top =-1
    Right =1710
    Bottom =238
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =553
        Top =7
        Right =832
        Bottom =259
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
    Begin
        Left =115
        Top =17
        Right =504
        Bottom =256
        Top =0
        Name ="qryEstimateAnalysisForReport"
        Name =""
    End
End
