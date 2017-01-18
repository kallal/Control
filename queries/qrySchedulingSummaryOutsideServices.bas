Operation =1
Option =0
Begin InputTables
    Name ="viewWIPOutsideServices"
    Name ="dbo_CompanyEmployee"
    Alias ="SalesRep"
    Name ="dbo_CompanyEmployee"
    Alias ="CSR"
    Name ="dbo_ContactGeneral"
    Alias ="Vendor"
    Name ="dbo_ProjectHeader"
    Name ="dbo_CompanyLocation"
End
Begin OutputColumns
    Alias ="DueDate"
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,DateValue([specifiedduedate]),IIf(Nz([AssignedDue"
        "Date],0)>0,DateValue([assignedduedate]),\"UNKNOWN\"))"
    Alias ="CompNamewQty"
    Expression ="[viewWIPOutsideServices].[ExpectedQty] & \" x \" & [componentname]"
    Alias ="ArtYN"
    Expression ="IIf(Nz([artarriveddate],0)>0,True,False)"
    Alias ="SalesRepInit"
    Expression ="Left([salesrep].[fn],1) & Left([salesrep].[ln],1)"
    Alias ="CSRInit"
    Expression ="Left([CSR].[fn],1) & Left([CSR].[ln],1)"
    Alias ="Vendorname"
    Expression ="Vendor.compname"
    Expression ="viewWIPOutsideServices.*"
    Expression ="dbo_ProjectHeader.CompanyLocationID"
    Expression ="dbo_CompanyLocation.ReportColor"
End
Begin Joins
    LeftTable ="viewWIPOutsideServices"
    RightTable ="SalesRep"
    Expression ="viewWIPOutsideServices.SalesRepID = SalesRep.ID"
    Flag =2
    LeftTable ="viewWIPOutsideServices"
    RightTable ="CSR"
    Expression ="viewWIPOutsideServices.CsrID = CSR.ID"
    Flag =2
    LeftTable ="viewWIPOutsideServices"
    RightTable ="Vendor"
    Expression ="viewWIPOutsideServices.VendorID = Vendor.ID"
    Flag =2
    LeftTable ="viewWIPOutsideServices"
    RightTable ="dbo_ProjectHeader"
    Expression ="viewWIPOutsideServices.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_CompanyLocation"
    Expression ="dbo_ProjectHeader.CompanyLocationID = dbo_CompanyLocation.ID"
    Flag =2
End
Begin OrderBy
    Expression ="IIf(Nz([SpecifiedDueDate],0)>0,DateValue([specifiedduedate]),IIf(Nz([AssignedDue"
        "Date],0)>0,DateValue([assignedduedate]),\"UNKNOWN\"))"
    Flag =0
    Expression ="viewWIPOutsideServices.DocketNum"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBinary "GUID" = Begin
    0x10bad0b2120361488734e62250957e53
End
dbLongBinary "DOL" = Begin
    0x0acc0e5500000000008770680dd8c540873fbcbaed7f3c570000000044e8a12b ,
    0xacd7e440000000000000000076006900650077005700490050004f0075007400 ,
    0x73006900640065005300650072007600690063006500730000000000000039a4 ,
    0x960a0ccbe542ab18e42cf68884fa000000006815372bacd7e440000000000000 ,
    0x0000640062006f005f0043006f006d00700061006e00790045006d0070006c00 ,
    0x6f00790065006500000000000000bb4ee421343f624db77659eef5e022a10000 ,
    0x00006c1a3d2bacd7e4400000000000000000640062006f005f0043006f006e00 ,
    0x7400610063007400470065006e006500720061006c0000000000000035f87d9f ,
    0x0b136040ad3c2851f16d2a80000000009fd7632bacd7e4400000000000000000 ,
    0x640062006f005f00500072006f006a0065006300740048006500610064006500 ,
    0x7200000000000000f0a07a545f8a6448b11bd6a1031b20d100000000ac6d3b2b ,
    0xacd7e4400000000000000000640062006f005f0043006f006d00700061006e00 ,
    0x79004c006f0063006100740069006f006e000000000000005ba2247b30523747 ,
    0xbea5ebc1b157cfba0700000010bad0b2120361488734e62250957e5344007500 ,
    0x650044006100740065000000000000009ed5b9f9418d2c469c71ddf0450107e5 ,
    0x0700000010bad0b2120361488734e62250957e5343006f006d0070004e006100 ,
    0x6d0065007700510074007900000000000000f8f70ff89892924eaa49e56387e6 ,
    0x0e390700000010bad0b2120361488734e62250957e5341007200740059004e00 ,
    0x00000000000021b26e71998dc942b8a5a7112ff303a40700000010bad0b21203 ,
    0x61488734e62250957e53530061006c006500730052006500700049006e006900 ,
    0x7400000000000000720953e830b9454890903b8bd61bd29d0700000010bad0b2 ,
    0x120361488734e62250957e5343005300520049006e0069007400000000000000 ,
    0x6def7cebb947714694ca7299f42f7ee90700000010bad0b2120361488734e622 ,
    0x50957e53560065006e0064006f0072006e0061006d006500000000000000274b ,
    0x21e86aec684a990e8252082f914107000000008770680dd8c540873fbcbaed7f ,
    0x3c57530070006500630069006600690065006400440075006500440061007400 ,
    0x6500000000000000546cc21d13d94f4e8fd355f245e01bcc0700000000877068 ,
    0x0dd8c540873fbcbaed7f3c57410073007300690067006e006500640044007500 ,
    0x650044006100740065000000000000002f7023a08ba2f04eb596d21ac3633277 ,
    0x07000000008770680dd8c540873fbcbaed7f3c57450078007000650063007400 ,
    0x65006400510074007900000000000000d3fa1fc4ca1d82469a2e3af2b5e4d1d1 ,
    0x07000000008770680dd8c540873fbcbaed7f3c5763006f006d0070006f006e00 ,
    0x65006e0074006e0061006d006500000000000000428d56713745654ab68864f7 ,
    0x89ef496307000000008770680dd8c540873fbcbaed7f3c576100720074006100 ,
    0x7200720069007600650064006400610074006500000000000000000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000007300 ,
    0x61006c0065007300720065007000000000000000238a70cc04f1b542bd79b336 ,
    0x33915bc60700000039a4960a0ccbe542ab18e42cf68884fa66006e0000000000 ,
    0x000027afc0ba5db60e409636470e73e1fc430700000039a4960a0ccbe542ab18 ,
    0xe42cf68884fa6c006e0000000000000000000000000000000000000000000000 ,
    0x0000000000000000000000000000000000000000430053005200000000000000 ,
    0x0000000000000000000000000000000000000000000000000000000000000000 ,
    0x00000000560065006e0064006f0072000000000000007ac0bdb1839ddc4e8356 ,
    0x626ac902d15f07000000008770680dd8c540873fbcbaed7f3c5763006f006d00 ,
    0x70006e0061006d00650000000000000097f4d916639123478b4d0c4170d61ffb ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006d00700061006e00 ,
    0x79004c006f0063006100740069006f006e004900440000000000000001d2b706 ,
    0xcee7ea48b9f4af0b27f2548007000000f0a07a545f8a6448b11bd6a1031b20d1 ,
    0x5200650070006f007200740043006f006c006f00720000000000000003f1520f ,
    0xf51ac34296b00e8162b6193107000000008770680dd8c540873fbcbaed7f3c57 ,
    0x530061006c006500730052006500700049004400000000000000f7ac7fe16dfe ,
    0xef4d9500b2fc2d2d170c07000000008770680dd8c540873fbcbaed7f3c574900 ,
    0x44000000000000001e9bde46cf5b114e98f5a393ef84e5060700000000877068 ,
    0x0dd8c540873fbcbaed7f3c5743007300720049004400000000000000e182a6dd ,
    0xca0fd749a6a31e5bbf3caa9907000000008770680dd8c540873fbcbaed7f3c57 ,
    0x560065006e0064006f0072004900440000000000000054eade5834c39e49a359 ,
    0xafbe46438c3507000000008770680dd8c540873fbcbaed7f3c57500072006f00 ,
    0x6a006500630074004800650061006400650072004900440000000000000004ae ,
    0xb2718000d24bb73b562a737994cb0700000035f87d9f0b136040ad3c2851f16d ,
    0x2a8049004400000000000000cfcb0f694dd678469d745c2d3c9b453407000000 ,
    0xf0a07a545f8a6448b11bd6a1031b20d149004400000000000000814e4f1f9bdf ,
    0x7a4c8930025f1d00c9e307000000008770680dd8c540873fbcbaed7f3c574400 ,
    0x6f0063006b00650074004e0075006d0000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="CompNamewQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9ed5b9f9418d2c469c71ddf0450107e5
        End
        dbInteger "ColumnOrder" ="64"
    End
    Begin
        dbText "Name" ="DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5ba2247b30523747bea5ebc1b157cfba
        End
        dbInteger "ColumnWidth" ="3045"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="ArtYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf8f70ff89892924eaa49e56387e60e39
        End
        dbInteger "ColumnOrder" ="65"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StStock"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="48"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StCreative"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="49"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StBindery"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="54"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StMailShop"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="55"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="61"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ReceivedBy"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.IsEnabled"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.IsComplete"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.CsrID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="36"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="38"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Description"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OutToVendorActual"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="39"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="41"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.CompletionDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="43"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.HardProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="45"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="47"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StPrint"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="52"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StLFFinish"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="53"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.FinalQty"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="58"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.VendorID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="59"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.VendorNameID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="60"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.QuoteAmt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.PricePerM"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.QtyOrdered"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="25"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SSMA_TimeStamp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="27"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="30"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="35"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.FirmDueDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="37"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ArrivedOn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ComponentName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="40"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="46"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StMailData"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="51"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="57"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="62"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectComponentID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Service"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProofSentDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="24"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Void"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="33"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ExpectedBy"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="42"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.HardProofSentDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="44"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.StPrepress"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="50"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.IsRush"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="56"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Location"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SupplierPackingListNumber"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.SupplierOrderNumber"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.Status"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="22"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.QtyReceived"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="23"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProofApprovedBy"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="26"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.CompName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="28"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="29"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.DocketNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="31"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="32"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.ProjectStatusID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="34"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OrderByID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OrderDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.OutToVendorExpected"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="viewWIPOutsideServices.InPlanning"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="63"
    End
    Begin
        dbText "Name" ="SalesRepInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x21b26e71998dc942b8a5a7112ff303a4
        End
        dbInteger "ColumnOrder" ="66"
    End
    Begin
        dbText "Name" ="CSRInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x720953e830b9454890903b8bd61bd29d
        End
        dbInteger "ColumnOrder" ="67"
    End
    Begin
        dbText "Name" ="Vendorname"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6def7cebb947714694ca7299f42f7ee9
        End
        dbInteger "ColumnOrder" ="68"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_CompanyLocation.ReportColor"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =27
    Top =60
    Right =1457
    Bottom =788
    Left =-1
    Top =-1
    Right =1398
    Bottom =383
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =27
        Right =414
        Bottom =337
        Top =0
        Name ="viewWIPOutsideServices"
        Name =""
    End
    Begin
        Left =639
        Top =12
        Right =783
        Bottom =156
        Top =0
        Name ="SalesRep"
        Name =""
    End
    Begin
        Left =483
        Top =15
        Right =627
        Bottom =159
        Top =0
        Name ="CSR"
        Name =""
    End
    Begin
        Left =572
        Top =165
        Right =716
        Bottom =309
        Top =0
        Name ="Vendor"
        Name =""
    End
    Begin
        Left =851
        Top =150
        Right =995
        Bottom =294
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =1023
        Top =12
        Right =1167
        Bottom =156
        Top =0
        Name ="dbo_CompanyLocation"
        Name =""
    End
End
