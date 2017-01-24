Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentPress"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    Alias ="NetSheets"
    Expression ="Sum(Val(Nz([TotalNetSheets],0)))"
    Alias ="GrossSheets"
    Expression ="Sum(Val(Nz([totalGrossSheets],0)))"
    Expression ="dbo_ProjectComponentPress.SectionName"
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    Expression ="dbo_ProjectComponentPress.PaperYInch"
End
Begin Groups
    Expression ="dbo_ProjectComponentPress.ProjectComponentID"
    GroupLevel =0
    Expression ="dbo_ProjectComponentPress.SectionName"
    GroupLevel =0
    Expression ="dbo_ProjectComponentPress.PaperXInch"
    GroupLevel =0
    Expression ="dbo_ProjectComponentPress.PaperYInch"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x9064004d452deb4fa9bdd4b6728ae9a5
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000001ff48b4b7bbd39459517fa849aa37704000000006b20350e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400500072006500730073000000 ,
    0x00000000b48d053ab466c145baa12891685bec9f070000009064004d452deb4f ,
    0xa9bdd4b6728ae9a54e0065007400530068006500650074007300000000000000 ,
    0xa9d8cf08a7970e41b7ba2c81e662684c070000009064004d452deb4fa9bdd4b6 ,
    0x728ae9a5470072006f0073007300530068006500650074007300000000000000 ,
    0xe19fd78d6de8f042912e16a0f4718a30070000001ff48b4b7bbd39459517fa84 ,
    0x9aa37704500072006f006a0065006300740043006f006d0070006f006e006500 ,
    0x6e007400490044000000000000004226b818d57dd7448e5d8497a2542e240700 ,
    0x00001ff48b4b7bbd39459517fa849aa3770454006f00740061006c004e006500 ,
    0x7400530068006500650074007300000000000000c38f93dadb9e5448b9f12dc5 ,
    0x64ea53c1070000001ff48b4b7bbd39459517fa849aa3770474006f0074006100 ,
    0x6c00470072006f0073007300530068006500650074007300000000000000ffd4 ,
    0x75da9c35f547ad76cf08e4dbfd4e070000001ff48b4b7bbd39459517fa849aa3 ,
    0x7704530065006300740069006f006e004e0061006d006500000000000000efc8 ,
    0x2cdffc1d7d489f71a723a4edac40070000001ff48b4b7bbd39459517fa849aa3 ,
    0x770450006100700065007200580049006e0063006800000000000000edf6b482 ,
    0xcbcb5f4eaa66dd0d64f56b1d070000001ff48b4b7bbd39459517fa849aa37704 ,
    0x50006100700065007200590049006e0063006800000000000000000000000000 ,
    0x000000000000000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NetSheets"
        dbInteger "ColumnWidth" ="3855"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb48d053ab466c145baa12891685bec9f
        End
    End
    Begin
        dbText "Name" ="GrossSheets"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9d8cf08a7970e41b7ba2c81e662684c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.SectionName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperXInch"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PaperYInch"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =117
    Top =184
    Right =1560
    Bottom =715
    Left =-1
    Top =-1
    Right =1411
    Bottom =220
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =524
        Bottom =272
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
End
