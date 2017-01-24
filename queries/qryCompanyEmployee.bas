Operation =1
Option =0
Begin InputTables
    Name ="dbo_CompanyEmployee"
End
Begin OutputColumns
    Expression ="dbo_CompanyEmployee.ID"
    Alias ="FULLNAME"
    Expression ="[FN] & \" \" & [LN]"
    Expression ="dbo_CompanyEmployee.IsActive"
    Expression ="dbo_CompanyEmployee.Prefix"
    Expression ="dbo_CompanyEmployee.FN"
    Expression ="dbo_CompanyEmployee.MN"
    Expression ="dbo_CompanyEmployee.LN"
    Expression ="dbo_CompanyEmployee.Suffix"
    Expression ="dbo_CompanyEmployee.Title"
    Expression ="dbo_CompanyEmployee.Department"
    Expression ="dbo_CompanyEmployee.CompanyID"
    Expression ="dbo_CompanyEmployee.LocationID"
    Expression ="dbo_CompanyEmployee.ResAdd1"
    Expression ="dbo_CompanyEmployee.ResAdd2"
    Expression ="dbo_CompanyEmployee.ResCity"
    Expression ="dbo_CompanyEmployee.ResProv"
    Expression ="dbo_CompanyEmployee.ResPC"
    Expression ="dbo_CompanyEmployee.ResCountry"
    Expression ="dbo_CompanyEmployee.DateHired"
    Expression ="dbo_CompanyEmployee.DateReleased"
    Expression ="dbo_CompanyEmployee.Photo"
    Expression ="dbo_CompanyEmployee.Password"
    Expression ="dbo_CompanyEmployee.PhDirect"
    Expression ="dbo_CompanyEmployee.PhCell"
    Expression ="dbo_CompanyEmployee.PhFax"
    Expression ="dbo_CompanyEmployee.Email"
    Expression ="dbo_CompanyEmployee.EmailRes"
    Expression ="dbo_CompanyEmployee.StaffCategoryID"
    Expression ="dbo_CompanyEmployee.PhEmergencyName"
    Expression ="dbo_CompanyEmployee.PhEmergency"
    Expression ="dbo_CompanyEmployee.PrtReport"
    Expression ="dbo_CompanyEmployee.PrtQuote"
    Expression ="dbo_CompanyEmployee.PrtDocket"
    Expression ="dbo_CompanyEmployee.PrtInvoice"
    Expression ="dbo_CompanyEmployee.PrtPickSlip"
    Expression ="dbo_CompanyEmployee.PrtShippingLabel"
    Expression ="dbo_CompanyEmployee.LastEdited"
    Expression ="dbo_CompanyEmployee.LastEditedBy"
    Expression ="dbo_CompanyEmployee.SY"
    Expression ="dbo_CompanyEmployee.SM"
    Expression ="dbo_CompanyEmployee.OF"
    Expression ="dbo_CompanyEmployee.SA"
    Expression ="dbo_CompanyEmployee.PL"
    Expression ="dbo_CompanyEmployee.PR"
    Expression ="dbo_CompanyEmployee.LastLoginTime"
    Expression ="dbo_CompanyEmployee.IsSalesRep"
    Expression ="dbo_CompanyEmployee.IsCSR"
    Expression ="dbo_CompanyEmployee.IsIN"
    Expression ="dbo_CompanyEmployee.BackAt"
    Expression ="dbo_CompanyEmployee.PhoneSystem"
    Expression ="dbo_CompanyEmployee.SMSSystem"
    Expression ="dbo_CompanyEmployee.EmailSignature"
    Expression ="dbo_CompanyEmployee.CanAddContactGeneralYN"
    Expression ="dbo_CompanyEmployee.PIN"
    Expression ="dbo_CompanyEmployee.ManagerID"
    Expression ="dbo_CompanyEmployee.CanUnlockQuoteRequests"
    Expression ="dbo_CompanyEmployee.CanViewOwnCommission"
    Expression ="dbo_CompanyEmployee.CanManageCommission"
    Expression ="dbo_CompanyEmployee.CanAlterAccountStatus"
End
Begin OrderBy
    Expression ="dbo_CompanyEmployee.FN"
    Flag =0
    Expression ="dbo_CompanyEmployee.LN"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x66cd9be06bdb5e46bc9df263ddfd6851
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000039a4960a0ccbe542ab18e42cf68884fa000000004f96e40c ,
    0xcfe0e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x790045006d0070006c006f007900650065000000000000008a7f856a4ed5fc42 ,
    0xb8b2d9d18820ac060700000066cd9be06bdb5e46bc9df263ddfd685146005500 ,
    0x4c004c004e0041004d004500000000000000836b4761bb445b46b7a949192117 ,
    0xf8700700000039a4960a0ccbe542ab18e42cf68884fa49004400000000000000 ,
    0x238a70cc04f1b542bd79b33633915bc60700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa46004e0000000000000027afc0ba5db60e409636470e73e1fc430700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa4c004e0000000000000065634c04 ,
    0xfc14254c9348cee3d3ff40f00700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x49007300410063007400690076006500000000000000ff50964edf7ade47a6ae ,
    0x2cef4c662d1b0700000039a4960a0ccbe542ab18e42cf68884fa500072006500 ,
    0x66006900780000000000000055bf9e7fe3d8a545a2a9964eee5ec3d207000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa4d004e00000000000000f7aa074ea06d ,
    0xd245af646a54136a361b0700000039a4960a0ccbe542ab18e42cf68884fa5300 ,
    0x75006600660069007800000000000000015b0fe65bb95b4fabb6d2a701b97304 ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa5400690074006c0065000000 ,
    0x000000006b8629bfd016cc4cbd0e98316df1fa2c0700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa4400650070006100720074006d0065006e00740000000000 ,
    0x0000024bfd66f0284d449d2e1050389ac26d0700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa43006f006d00700061006e007900490044000000000000005133 ,
    0x07b49cec0445b2596271a25d223a0700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa4c006f0063006100740069006f006e0049004400000000000000ea784003 ,
    0xca866641b969fe5e292076560700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x52006500730041006400640031000000000000002952b3160532ee49ba9d4865 ,
    0x7f7cc2ee0700000039a4960a0ccbe542ab18e42cf68884fa5200650073004100 ,
    0x640064003200000000000000a01ddbfef1a07541a63aaeb04975bfa707000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa52006500730043006900740079000000 ,
    0x0000000081128bbf00cb1840a3996d24969753b90700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa520065007300500072006f0076000000000000007145e6f5 ,
    0xdcc42443b9083d92d4e0d5010700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x520065007300500043000000000000001a40b5d38288904ea61cf775d45a446f ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa52006500730043006f007500 ,
    0x6e00740072007900000000000000250480e139db0e458063550470c68cb90700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa4400610074006500480069007200 ,
    0x650064000000000000008b8899ee19f0bb43abb007e5ae955dd10700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa4400610074006500520065006c0065006100 ,
    0x7300650064000000000000007aa26d4e58e40742a864d0fc5a75459d07000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa500068006f0074006f00000000000000 ,
    0xc0e049db2b12a143a3f275a62081c66e0700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa500061007300730077006f0072006400000000000000929b8ab77df5 ,
    0x7548a338fab4b93b26490700000039a4960a0ccbe542ab18e42cf68884fa5000 ,
    0x6800440069007200650063007400000000000000272140508fa8a24e8cb1dcf6 ,
    0x9387b8930700000039a4960a0ccbe542ab18e42cf68884fa5000680043006500 ,
    0x6c006c00000000000000db98ef7507e82941a0168b165ce7de3f0700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa500068004600610078000000000000003808 ,
    0xdc08f075294895138d6441b339380700000039a4960a0ccbe542ab18e42cf688 ,
    0x84fa45006d00610069006c000000000000001dc3edd0c9fe2b4299fc6303fa16 ,
    0xbc510700000039a4960a0ccbe542ab18e42cf68884fa45006d00610069006c00 ,
    0x520065007300000000000000e2e15894c38f5b4cbe202ab0bf8ffced07000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa53007400610066006600430061007400 ,
    0x650067006f007200790049004400000000000000b7ea1d6fd7e51747b17d6851 ,
    0xf9a242f00700000039a4960a0ccbe542ab18e42cf68884fa5000680045006d00 ,
    0x65007200670065006e00630079004e0061006d006500000000000000c52fcdd3 ,
    0x463fe6498b84dc20c3deddd30700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x5000680045006d0065007200670065006e006300790000000000000018712574 ,
    0x89fdd042b9194190336dbe0d0700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x5000720074005200650070006f0072007400000000000000b8a92424cee5b04e ,
    0xa3ec5586eb96732b0700000039a4960a0ccbe542ab18e42cf68884fa50007200 ,
    0x7400510075006f00740065000000000000006d868bc9a4b3014b917669affa5a ,
    0xdbff0700000039a4960a0ccbe542ab18e42cf68884fa50007200740044006f00 ,
    0x63006b0065007400000000000000caa830a443693848b0de40da8a4a36370700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa50007200740049006e0076006f00 ,
    0x69006300650000000000000048465abb812c324fa3fddd201ef9b96a07000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa5000720074005000690063006b005300 ,
    0x6c00690070000000000000009f76d31b6a538c4ca04dcd47f185b24107000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa50007200740053006800690070007000 ,
    0x69006e0067004c006100620065006c000000000000001a4acaa2d19d2f48b3b7 ,
    0xabe0bc1fb06f0700000039a4960a0ccbe542ab18e42cf68884fa4c0061007300 ,
    0x74004500640069007400650064000000000000001cfd53425312f845b6b1c20a ,
    0x6f2d685e0700000039a4960a0ccbe542ab18e42cf68884fa4c00610073007400 ,
    0x450064006900740065006400420079000000000000003c3d74b9324de2498038 ,
    0x9b15b06a94600700000039a4960a0ccbe542ab18e42cf68884fa530059000000 ,
    0x0000000062e3d4e1fc800242b6fad75df58b916f0700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa53004d000000000000003af345ca04a46c47a1b99b1b686c ,
    0x21e10700000039a4960a0ccbe542ab18e42cf68884fa4f004600000000000000 ,
    0xb3fe8466d645dc46bd88e8be985ca5290700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa5300410000000000000048cef6bcc17a864e923388a9132819d00700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa50004c000000000000007eaa6bda ,
    0xdc979d41bdfd657e822aa0f60700000039a4960a0ccbe542ab18e42cf68884fa ,
    0x5000520000000000000050caa85e56083945a3ca65581f2983ae0700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa4c006100730074004c006f00670069006e00 ,
    0x540069006d0065000000000000003643c3eb337ba84280e3540342d9e3170700 ,
    0x000039a4960a0ccbe542ab18e42cf68884fa49007300530061006c0065007300 ,
    0x52006500700000000000000071e0a90e7342674ab3b27b9442989c6607000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa49007300430053005200000000000000 ,
    0xcc12da11c38e1044b8cbb3509f3d96b40700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa4900730049004e000000000000006bb3aa9bc2cd6243a5c37f457f47 ,
    0x72940700000039a4960a0ccbe542ab18e42cf68884fa4200610063006b004100 ,
    0x74000000000000009bd2516fffd68946acf89236ea8591bb0700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa500068006f006e00650053007900730074006500 ,
    0x6d00000000000000e7c418689ce0a440ba539a20e9871e940700000039a4960a ,
    0x0ccbe542ab18e42cf68884fa53004d005300530079007300740065006d000000 ,
    0x00000000afbd73095ecbfd44b6712bbb57d28d130700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa45006d00610069006c005300690067006e00610074007500 ,
    0x720065000000000000001d609c6e522d1640bd7fe447dccbb7d10700000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa430061006e0041006400640043006f006e00 ,
    0x7400610063007400470065006e006500720061006c0059004e00000000000000 ,
    0x6c3ad3a2ec3e574291ff20972838a7a50700000039a4960a0ccbe542ab18e42c ,
    0xf68884fa500049004e000000000000004ef00306ce78b641afe530ce07977c29 ,
    0x0700000039a4960a0ccbe542ab18e42cf68884fa4d0061006e00610067006500 ,
    0x720049004400000000000000dd494d1924855741bbd51c3e502799ad07000000 ,
    0x39a4960a0ccbe542ab18e42cf68884fa430061006e0055006e006c006f006300 ,
    0x6b00510075006f00740065005200650071007500650073007400730000000000 ,
    0x00005aa0621eaf7ff24daa4cc8bd07dab6780700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa430061006e0056006900650077004f0077006e0043006f006d00 ,
    0x6d0069007300730069006f006e00000000000000cc5744ffc170764da645e119 ,
    0x629182380700000039a4960a0ccbe542ab18e42cf68884fa430061006e004d00 ,
    0x61006e0061006700650043006f006d006d0069007300730069006f006e000000 ,
    0x0000000057c7ff6229e3c04d8befec7617375eba0700000039a4960a0ccbe542 ,
    0xab18e42cf68884fa430061006e0041006c007400650072004100630063006f00 ,
    0x75006e0074005300740061007400750073000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_CompanyEmployee.SA"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.EmailRes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhEmergency"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsCSR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsActive"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FULLNAME"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8a7f856a4ed5fc42b8b2d9d18820ac06
        End
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Prefix"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.FN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Department"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.StaffCategoryID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.SY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PL"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Photo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtShippingLabel"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.MN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.SM"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsSalesRep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResPC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.DateHired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.DateReleased"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Password"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhDirect"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhCell"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhFax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PhEmergencyName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtPickSlip"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LastEditedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResAdd1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResAdd2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResCity"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResProv"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.OF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LastLoginTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ResCountry"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Email"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtReport"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtQuote"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtDocket"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.PrtInvoice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LastEdited"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Suffix"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.Title"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CompanyID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.LocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.BackAt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.IsIN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.SMSSystem"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.EmailSignature"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CanAddContactGeneralYN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.ManagerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CanUnlockQuoteRequests"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CanViewOwnCommission"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CanManageCommission"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyEmployee.CanAlterAccountStatus"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =49
    Top =85
    Right =1562
    Bottom =813
    Left =-1
    Top =-1
    Right =1481
    Bottom =338
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =734
        Bottom =352
        Top =0
        Name ="dbo_CompanyEmployee"
        Name =""
    End
End
