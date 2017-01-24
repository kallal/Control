dbMemo "SQL" ="SELECT dbo_ProjectHeader.*, dbo_ContactGeneral.AcctStatus, dbo_ContactGeneral.GS"
    "TExempt, dbo_Company.CompanyLogo\015\012FROM (dbo_ProjectHeader LEFT JOIN dbo_Co"
    "ntactGeneral ON dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID) LEFT"
    " JOIN dbo_Company ON dbo_ProjectHeader.CompanyID = dbo_Company.ID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xb53a809dde6b014db3999cadc7c7f105
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000fe926418f32ed843874a57f371c555c7000000009b2fba6d ,
    0xec62e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x7400480065006100640065007200000000000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b900000000bad9a96dec62e4400000000000000000640062006f005f00 ,
    0x43006f006e007400610063007400470065006e006500720061006c0000000000 ,
    0x00007d0144ccca4edb49a512531cb6dc209600000000e10fa26eec62e4400000 ,
    0x000000000000640062006f005f0043006f006d00700061006e00790000000000 ,
    0x000042496b28472c93428277352ccd203c6e07000000d7c549c33168bc4ab701 ,
    0x51c855c0b6b94100630063007400530074006100740075007300000000000000 ,
    0x425c7274a16a1f48842b920150b0154c07000000d7c549c33168bc4ab70151c8 ,
    0x55c0b6b94700530054004500780065006d0070007400000000000000941ea93e ,
    0xf554904890223f424ff6c070070000007d0144ccca4edb49a512531cb6dc2096 ,
    0x43006f006d00700061006e0079004c006f0067006f0000000000000089ff919c ,
    0x8c2cb04795bac03adb54784507000000fe926418f32ed843874a57f371c555c7 ,
    0x43006f006e007400610063007400470065006e006500720061006c0049004400 ,
    0x00000000000003933b4b9f324445a82e368651b1052b07000000d7c549c33168 ,
    0xbc4ab70151c855c0b6b9490044000000000000003dac0047d3113342ab825d63 ,
    0xa065d2b507000000fe926418f32ed843874a57f371c555c743006f006d007000 ,
    0x61006e00790049004400000000000000381eb8e29a189e408ae528006b378c5d ,
    0x070000007d0144ccca4edb49a512531cb6dc2096490044000000000000000000 ,
    0x00000000000000000000000000000c0000000500000000000000000000000000 ,
    0x00000000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb19ab99be6ddd444812303ffb48ce1ed
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x271de77a11de734faee38225e929a576
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5984929557464647a8cfc62160cb0cbe
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillOverride"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa2b704edb8593b46a6935a5d528e3c8e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipOverride"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x171efcec579b0a42b610cb43d82be465
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cf92cfe2433d04a8b9b765462d80059
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5718507d00c63b4da764e9d5b2bf20ce
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.GESource"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb6b19e194d0d65459655f214d5112876
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.GE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x599823d487cab141aedf596094cfe9b7
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.GEOriginalDocket"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x41077581164e3a4c8ab4c21a55f6db2d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc73aeb7fd9da9a48aeb2999ce5d4d2e2
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.GSTExempt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ef5ed495c31ce4da0142a207307ce90
        End
    End
    Begin
        dbText "Name" ="dbo_Company.CompanyLogo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaacc377efe7ad142ae740f10581d8070
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactCPAccountID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf5dd17bc41eda74e9fc3c1ff572e0871
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectNotesInternal"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9a05249b5a887343887b542c640dcd8c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PONumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0217865186a73c4eb93a6a3bf0f47bed
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ExpectedCompletionDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97abba665d3b8040a549375d5de08136
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x132f717b929aed40b54288d5e7d0a1e5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.AdminFee"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfe568798072e964b93b94f38cc51edf4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsSecureJob"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x29b6b67efb02394f8f9994bdcd131826
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.OnlinePassword"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6a00c7e95a624d40af0960dd8ce45479
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastEdited"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa47b5d51ba1a8f469a307a5d329e1a3a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShippingSellPrice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd85f13dfa775f948a56ea5158edea483
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimatorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd41ce102bf73b74383796cda7523f43b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimateTo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5b68c319fd639d46a9076bf302a98131
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastContactMethod"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ade0a7759035a4d945576413f226c92
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.OversDisposition"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc1d7b94af99c2f4b8a1c53162cfb874d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceSaleAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x26f616ffd83ec44bafa69b1e1e5d9f3e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceGSTPayable"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6ad0c564f65b5f49b6dd0dfcedddbefd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODPaidYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x26b4382a93ed1443bc28bffa675300cf
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODPaidDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x712fd427692af740a16fa6040b19e18a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceTotalStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x406f8d4da184704eb2744521dcc9d0e5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceTotalShipping"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8598a4ad567490498c122cde6d035bd3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x95670112d4342944be80e37aae016773
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x47355daa38452e4b99aacc61e16293d1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipToSameAsBillTo"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x531382b99c4c1e449ce21db7ff0429d4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.GEReason"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2ceb048d4a2ff14abb10146913408887
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.GEApprovedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xed360a09a436b14996f6a523502ec649
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x09d3d8da0d89924c87486d96701e02dd
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProofToOther"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6c6cf41c85135045b28ac8e426db06b1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.OriginalDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9368f5f766aec442b77daecbf7753522
        End
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.AcctStatus"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe86f702ebac8ca4c9543aaa7bdbe1b5e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactUSPSAccountID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x434a83567a01bc49bcadf900bcf8ea36
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ActualQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa054a775371e234287a4961915796c80
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectNotes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4331d2a4f7aa77439a13d5d992f7b2b3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceNotes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x93a9789d6b98454a8b9219ef7ebe8823
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsFSC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x67f382c393b06a4eb5d72e8c92894c7c
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.OnlineDataUploadComplete"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x249e946c9ec00e469baceaab35b3779f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.OnlineLocked"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6cbb9bbdf6c47e4f88d53c65c70237cb
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ConsultantIsPrimaryContact"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x32d2d16813575c41918485db1a4c7b64
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipInfoToComeYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf4bdb5b28517ed4d9d18e2cadd9fef46
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteSubmittedWhen"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x108bf5d89d1cd343b179798762854228
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimateSent"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d39c0039c10324e8efc216f85b32bed
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProofToID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5bd60504aa3c62428f8561898d3b5b5a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CODProjectYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe4a0e84482c67c42b05894984f530b8a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee0dd894391a5648986d1628dabff0d2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PlannerID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xeb000dbf7b53694b898a496cb690a56e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillAddLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6ed6d5ea37f6414689c81aa6173e006a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillAdd1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x87b0c4d324370442889ddc4a0838edc2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillAdd2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc8f0d86fee1c634781b9817ce3cae4d6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillCity"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd4042a0f959d14b998db055aaabece5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillProv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9165e35bbb22414a8fda7b9d64e4b2a4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillPC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd1b1beffb974cb4981c53872fa545e30
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillCountry"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x30842d84b89132458bd2cf3af7b92450
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipAddLocationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d16931f187774428a8d3358344a8562
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyEmployeeID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd3f22ef2a04a7547aa99ddcb8147d397
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56e662737cc1884aaf99574a465c20bc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3a5d2f371a963b44bcf22b6ea65708b5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipVia"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe5e95dd23c56d54ca84c96fcdccbbee4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipInstruction"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc0354cf934268b47be73309a359bea97
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Created"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x38ee10387fa74041917fd7d8802e3518
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CreatedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x23dc0db79e96264c9ced76c526c85a11
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x90471213feb62e41ad6cb91fa2f6319a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.FSCLevel"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1ccfcb24b40af84ea919f44bda849c30
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.RelatedProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3600fca93644dd42b340eb0d3e0b35ba
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.OnlineArtUploadCompleteDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6167147665697d4181cb58fc1a1b395a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ConsultantID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x771fdde5c6328145aa9b9b45c2fe7eb5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipOurChoice"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x162db77df94db244a972b2991ad03b5a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DefaultDiscount"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97510fa22b6eb2449192e9bebe52e5f5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastContactByID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43111c0a80db7a478522c9301f45e0e3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.AssignedDocketDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7a0329ef01dab4eb813d24a8f295d8d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.optEstimatePricing"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa6d3119897a9c245bc6953d35ebd18b3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceAddlChgAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x92ae5fc160475f4f9813b6e2fc1f1ce3
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceGSTAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x069595b0f636f74eb61bf493ef7e378b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceTotalOS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe6d0dfd58b2b8145ae0df7e04c470e0d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97a37f59c925ca4db1209e5c13006ec1
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x56905a946179c546a08f5ec7a1c03eab
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillOrderedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x78d15f4716335849845b7563c76d4825
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipAttn"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x89585c9eb44a5649a4189965e6b28389
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipAdd1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb638f32211274945b5179fe407891243
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipAdd2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0563a5b2d065a84083c54c28a9ebf85e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipCity"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5487537d91c4ac4aa6ab9ea4f3ba5e69
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x047e9eb99a8ab04db6191e02c6a7058f
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xabb3aa2e8f253740906d79659fdfae19
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsActive"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xfd45ed88ae39394fb8308c9bd3b5ee8b
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x109cee51f490404e8a970d24d44d1eca
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipProv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf42bc5feb7cd7141afdf7e6aba0472bc
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipPC"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdf6a6dc1871fd449b8650ce95b166ec5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ShipCountry"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc32453359bea8245bc71fd1dec9c87f4
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.IsTaxable"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7e3513922a9db40b783a0e5b10b7d5e
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.PreviousProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x32f8f650ed9ccc4fa74ce19d7b567626
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastEditedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x174b9342c519434fa2762264a369d115
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.QuoteSubmittedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x84f581cdb061a14a9695db162f5ffb39
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.EstimateSentByID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x83652879a47a994e82368bbd6ea29237
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LastContact"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdb0330b4b91fd143b535e32c3adc6b67
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SpecifiedDocketDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x280074bc336b014a84f7101a628ee2e5
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketArtworkExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7ec947b37ddc8046b6df033520a9a0a2
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketDataExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x922721ddf53b3144b48eb41ceaf8430a
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.LostEstimateReason"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8f654907becd2f4898689454bae4852d
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.optInvoicePricing"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6b5cc82cffd858418c72c0681ac508a0
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.InvoiceTotalLabour"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff74aecc25a0d1478b2aeca253307354
        End
    End
End
