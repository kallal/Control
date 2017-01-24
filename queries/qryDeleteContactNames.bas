Operation =3
Name ="tbl_DeletedContactNames"
Option =0
Where ="(((dbo_ContactName.DeleteMeYN)=Yes))"
Begin InputTables
    Name ="dbo_ContactName"
End
Begin OutputColumns
    Expression ="dbo_ContactName.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBinary "GUID" = Begin
    0xd5a55704ecade6428a2bebec14818314
End
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000000000000000000000000000000000000000000000000000 ,
    0x000000000000000000000000740062006c005f00440065006c00650074006500 ,
    0x640043006f006e0074006100630074004e0061006d0065007300000000000000 ,
    0xb1dfd77f67641a4a8c10df9ef7c35963000000008ffda2c0ea62e44000000000 ,
    0x00000000640062006f005f0043006f006e0074006100630074004e0061006d00 ,
    0x6500000000000000138715d212ba6b418621857e87fb0bce07000000b1dfd77f ,
    0x67641a4a8c10df9ef7c35963440065006c006500740065004d00650059004e00 ,
    0x000000000000000000000000000000000000000000000c000000050000000000 ,
    0x000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactName.FN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa71c42d79d7c064598580c047ff8223e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.LN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcef5d0d51aa59b448b452353baa27949
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.DeleteMeYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43c1ceb909e20c4eaa9e6313de8ac145
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.EmailDomain"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.Prefix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x258bc463714eb8449770a867c150186b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.MN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0a6bdb29fc20b345b9c944a08fb16814
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Suffix"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe7b8aa380cea9043b8b6b2153f2f9223
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PreferredName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe677c2cb9e38c641bdbaf49d407df3b9
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Title"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7954797089522e4d9edfff6ada4f1328
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Department"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8bb9f3603aee1a4f927cc04099b94768
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SpName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5511eed3ba6530418812120aeb808224
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SpBirthday"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbe45194469bd644595bbd461fecc4962
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResAdd1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4abb2a3b5447984c89f5b6533ba76b7d
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResAdd2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x68ab09f7dd066148b9a52b086fe70a51
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResCity"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03bbf982ebd35546b5d20f1b45afa452
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResProv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x786a656f1226e0479188e0a1ee0a76c7
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResPC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x942a6d4e8aa095469b30d3172bb57e70
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendEmail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4c14dde1c694a84c92eba5f892d28314
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.SendMail"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x139e427aecf3734a83768ca19e79fdd5
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.MailListYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd0007c6df2c924eb533cee6073a26dd
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1ddbb53604125b42b4652f1a0cff2e5b
        End
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.LocationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactLocation.DeleteYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.ResCountry"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9e401e4eeaade45a99a318c73493b47
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.VerifiedOn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1148ac4b911e4d46b271a3386b00b771
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdcacf68558f2f24698d8646c6685a8cd
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbbc629474e77234ea051aea7dba361af
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd45726474e2ba49b5873a3660a4e465
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ContactLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb0a75efafbc5b4a94134ef2694064f2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.VerifiedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0ee75d25bc2fbc468e28f8d81d767f0e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Verified"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b55d005ee6d7e4a9cd271bc40920fe5
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.NaicsCodeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhDirect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8c971bc7d5e84d469ebe8414c3c9638c
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhExt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9b64fde7e658444880333c1644b8b686
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhFax"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2dd47b56630d584182c643cb8a4e7612
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhMobile"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa09d52fbe675824189356ab3096f63fb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.PhRes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x005bde67bc9fab4886cec9d8620688ff
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Birthday"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbb0913d348f58d4aa7901a90315b25d1
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Anniversary"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xedb7eb846e94cc4b961a33b63570065f
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.WithCompanySince"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3521422956ca304899386e6e66d78990
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Gender"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa9f5ab359c4b254bb4b5c7b607cbdffb
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Email"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ee31514a586144ca3384e34be93c720
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.ChName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7e78ed3bbf40924d8af988a8aa19923e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.EmailRes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcd02212ccd252f4080c8cb02df22f188
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaf3970333af02048ab706347a044903e
        End
    End
    Begin
        dbText "Name" ="dbo_ContactName.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa8a61295ac7f814aa4d881ce0552fc25
        End
    End
End
Begin
    State =0
    Left =61
    Top =70
    Right =1572
    Bottom =918
    Left =-1
    Top =-1
    Right =1479
    Bottom =531
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =48
        Top =5
        Right =513
        Bottom =557
        Top =0
        Name ="dbo_ContactName"
        Name =""
    End
End
