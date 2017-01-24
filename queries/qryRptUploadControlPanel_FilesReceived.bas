Operation =1
Option =0
Begin InputTables
    Name ="dbo_WebUpload"
    Name ="dbo_ContactName"
    Name ="dbo_ContactGeneral"
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_WebUpload.ID"
    Expression ="dbo_ContactGeneral.CompName"
    Alias ="ContactName"
    Expression ="[dbo_ContactName].[fn] & \" \" & [dbo_ContactName].[ln]"
    Expression ="dbo_WebUpload.DateUploaded"
    Expression ="dbo_WebUpload.ProvidedCustomerName"
    Expression ="dbo_WebUpload.IndividualName"
    Expression ="dbo_WebUpload.ProjectComponentID"
    Expression ="dbo_WebUpload.AssignedByID"
    Expression ="dbo_WebUpload.UpLoadFileName"
    Expression ="dbo_WebUpload.InternalFileName"
    Expression ="dbo_WebUpload.InternalPathName"
    Expression ="dbo_WebUpload.FileNotes"
    Expression ="dbo_WebUpload.ProvidedDocketNumber"
    Expression ="dbo_WebUpload.ProvidedPONumber"
    Expression ="dbo_WebUpload.ProvidedSalesRep"
    Alias ="SalesRepName"
    Expression ="[dbo_CompanyEmployee].[FN] & \" \" & [dbo_CompanyEMployee].[ln]"
    Alias ="ContactNameTXT"
    Expression ="IIf(Nz([ContactName],\"\")<>\"\",[ContactName],[IndividualName])"
    Alias ="CompanyNameTxt"
    Expression ="IIf(Nz([COMPNAME],\"\")<>\"\",[CompName],\"~\" & [ProvidedCustomerName])"
    Expression ="dbo_WebUpload.PdfPreview"
    Expression ="dbo_ContactName.ContactGeneralID"
    Alias ="SortOrder"
    Expression ="IIf(Nz([ContactGeneralID],0)=0,\"ZZZZZZZZZZ\",\"\") & [ContactNameTxt]"
End
Begin Joins
    LeftTable ="dbo_WebUpload"
    RightTable ="dbo_ContactName"
    Expression ="dbo_WebUpload.ContactNameID = dbo_ContactName.ID"
    Flag =2
    LeftTable ="dbo_ContactName"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ContactName.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
    LeftTable ="dbo_WebUpload"
    RightTable ="dbo_CompanyEmployee"
    Expression ="dbo_WebUpload.SalesRepID = dbo_CompanyEmployee.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x161907080c731949a996f95f92736d5a
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000c93b7606c3911640936ae2fc91a4b8a700000000ed638f4c ,
    0x2de0e4400000000000000000640062006f005f00570065006200550070006c00 ,
    0x6f0061006400000000000000abd7a13a18cfc44f845c77c762d61a4600000000 ,
    0x2bfd224c2de0e4400000000000000000640062006f005f0043006f006e007400 ,
    0x6100630074004e0061006d006500000000000000bb4ee421343f624db77659ee ,
    0xf5e022a10000000076461f4c2de0e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa00000000f162124c2de0e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790045006d00 ,
    0x70006c006f00790065006500000000000000681d244e2acfb9418709ca648f78 ,
    0xc6f007000000161907080c731949a996f95f92736d5a43006f006e0074006100 ,
    0x630074004e0061006d006500000000000000fe3497fdd3fef141b905bf02dba9 ,
    0x846f07000000161907080c731949a996f95f92736d5a530061006c0065007300 ,
    0x5200650070004e0061006d006500000000000000cbe676634ca9d54180d7a6b7 ,
    0x5181b19d07000000161907080c731949a996f95f92736d5a43006f006e007400 ,
    0x6100630074004e0061006d0065005400580054000000000000003f38281ac270 ,
    0x6046880352bfe68cf1f907000000161907080c731949a996f95f92736d5a4300 ,
    0x6f006d00700061006e0079004e0061006d006500540078007400000000000000 ,
    0x454d1db41b95364cba3565fd5fd5589307000000161907080c731949a996f95f ,
    0x92736d5a53006f00720074004f0072006400650072000000000000005b51f688 ,
    0xa148e24c9e266a4d9e086e3707000000c93b7606c3911640936ae2fc91a4b8a7 ,
    0x49004400000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000bb4e ,
    0xe421343f624db77659eef5e022a143006f006d0070004e0061006d0065000000 ,
    0x0000000065ad3064e8981147a4bdc2ff83e1e02607000000abd7a13a18cfc44f ,
    0x845c77c762d61a4666006e0000000000000096debff91f1ff043bcf0998107c8 ,
    0x713e07000000abd7a13a18cfc44f845c77c762d61a466c006e00000000000000 ,
    0x9469df7232980f4b8be72b91a401b37507000000c93b7606c3911640936ae2fc ,
    0x91a4b8a74400610074006500550070006c006f00610064006500640000000000 ,
    0x000045e3071f2074844fb819b47a60f361ad07000000c93b7606c3911640936a ,
    0xe2fc91a4b8a7500072006f007600690064006500640043007500730074006f00 ,
    0x6d00650072004e0061006d006500000000000000bf52115cfaab404799b269fd ,
    0x5055b15207000000c93b7606c3911640936ae2fc91a4b8a749006e0064006900 ,
    0x760069006400750061006c004e0061006d0065000000000000008a5a22dffba4 ,
    0xe84ebf4c6e55ba4b099607000000c93b7606c3911640936ae2fc91a4b8a75000 ,
    0x72006f006a0065006300740043006f006d0070006f006e0065006e0074004900 ,
    0x4400000000000000cfe86a15365cc048b9644c22ecaa237807000000c93b7606 ,
    0xc3911640936ae2fc91a4b8a7410073007300690067006e006500640042007900 ,
    0x490044000000000000003aca7cb68d1dd74d87246b5a924dd8a207000000c93b ,
    0x7606c3911640936ae2fc91a4b8a7550070004c006f0061006400460069006c00 ,
    0x65004e0061006d006500000000000000f340b84695300a4099b21ea365570167 ,
    0x07000000c93b7606c3911640936ae2fc91a4b8a749006e007400650072006e00 ,
    0x61006c00460069006c0065004e0061006d006500000000000000f842bcc861d4 ,
    0x9b4d948cf8f60d815a9907000000c93b7606c3911640936ae2fc91a4b8a74900 ,
    0x6e007400650072006e0061006c0050006100740068004e0061006d0065000000 ,
    0x000000003c8e582c56dd2541844de66353a774bf07000000c93b7606c3911640 ,
    0x936ae2fc91a4b8a7460069006c0065004e006f00740065007300000000000000 ,
    0xb0978c10554d7e4aa094b9f4c567361607000000c93b7606c3911640936ae2fc ,
    0x91a4b8a7500072006f007600690064006500640044006f0063006b0065007400 ,
    0x4e0075006d006200650072000000000000009e01f6dfd9b58847a0165cfeae0b ,
    0x167007000000c93b7606c3911640936ae2fc91a4b8a7500072006f0076006900 ,
    0x64006500640050004f004e0075006d00620065007200000000000000b0ebe425 ,
    0xb6cdc148a27901016f9c387907000000c93b7606c3911640936ae2fc91a4b8a7 ,
    0x500072006f0076006900640065006400530061006c0065007300520065007000 ,
    0x000000000000238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccb ,
    0xe542ab18e42cf68884fa46004e0000000000000027afc0ba5db60e409636470e ,
    0x73e1fc430700000039a4960a0ccbe542ab18e42cf68884fa6c006e0000000000 ,
    0x00001e49a560a372f44d92fae83b8e93141b07000000c93b7606c3911640936a ,
    0xe2fc91a4b8a75000640066005000720065007600690065007700000000000000 ,
    0xd599d0cd154bce47987e4268426c590007000000abd7a13a18cfc44f845c77c7 ,
    0x62d61a4643006f006e007400610063007400470065006e006500720061006c00 ,
    0x49004400000000000000f9069070f9d22f4ab2cbf931cc46351307000000c93b ,
    0x7606c3911640936ae2fc91a4b8a743006f006e0074006100630074004e006100 ,
    0x6d0065004900440000000000000055214613b67cb94eaac4189bee61392c0700 ,
    0x0000abd7a13a18cfc44f845c77c762d61a46490044000000000000001fc238e4 ,
    0x47652546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a1 ,
    0x490044000000000000008204f80f9b16f6488d4ebda75d71424007000000c93b ,
    0x7606c3911640936ae2fc91a4b8a7530061006c00650073005200650070004900 ,
    0x4400000000000000836b4761bb445b46b7a949192117f8700700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa4900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ContactName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x681d244e2acfb9418709ca648f78c6f0
        End
    End
    Begin
        dbText "Name" ="SalesRepName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfe3497fdd3fef141b905bf02dba9846f
        End
    End
    Begin
        dbText "Name" ="ContactNameTXT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcbe676634ca9d54180d7a6b75181b19d
        End
    End
    Begin
        dbText "Name" ="CompanyNameTxt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3f38281ac2706046880352bfe68cf1f9
        End
    End
    Begin
        dbText "Name" ="dbo_WebUpload.PdfPreview"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.DateUploaded"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.ProvidedCustomerName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.IndividualName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.AssignedByID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.UpLoadFileName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.InternalFileName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.InternalPathName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.FileNotes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.ProvidedDocketNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.ProvidedPONumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_WebUpload.ProvidedSalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SortOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x454d1db41b95364cba3565fd5fd55893
        End
    End
    Begin
        dbText "Name" ="dbo_WebUpload.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =107
    Top =226
    Right =2733
    Bottom =757
    Left =-1
    Top =-1
    Right =2594
    Bottom =186
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_WebUpload"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
