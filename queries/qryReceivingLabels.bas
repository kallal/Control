Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentStock"
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ProjectComponentPress"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentStock.ID"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectComponentStock.QtyOrdered"
    Expression ="dbo_ProjectComponentStock.QtyReceived"
    Expression ="dbo_ProjectComponentStock.ArrivalDate"
    Expression ="dbo_ProjectComponentStock.ReceivedBy"
    Expression ="dbo_ProjectComponentStock.MstrX"
    Expression ="dbo_ProjectComponentStock.MstrY"
    Expression ="dbo_ProjectComponentStock.PressX"
    Expression ="dbo_ProjectComponentStock.PressY"
    Expression ="dbo_ProjectComponentStock.NumberUp"
    Expression ="dbo_ProjectComponentStock.Weight"
    Expression ="dbo_ProjectComponentStock.Description"
    Expression ="dbo_ProjectComponentStock.SupplierOrderNumber"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectComponentStock.VendorID"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Alias ="ProofApprovedYN"
    Expression ="IIf(Nz([proofApprovedDate],0)>0,\"X\",\"_\")"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectComponentStock.NumberOut"
    Alias ="PressID"
    Expression ="DLookUp(\"[press]\",\"dbo_ProjectComponentPress\",\"[ProjectComponentID] = \" & "
        "[dbo_ProjectComponentStock].[projectComponentID] & \" AND [SectionName] = \" & C"
        "hr(34) & [dbo_ProjectComponentStock].[pressrunname] & Chr(34))"
    Alias ="Pressname"
    Expression ="DLookUp(\"[MachineModel]\",\"dbo_machine\",\"[id] = \" & DLookUp(\"[press]\",\"d"
        "bo_ProjectComponentPress\",\"[ProjectComponentID] = \" & [dbo_ProjectComponentSt"
        "ock].[projectComponentID] & \" AND [SectionName] = \" & Chr(34) & [dbo_ProjectCo"
        "mponentStock].[pressrunname] & Chr(34)))"
    Expression ="dbo_ProjectComponentStock.MWeight"
    Expression ="dbo_ProjectComponentStock.SheetFinish"
    Expression ="dbo_ProjectComponentPress.PMSFront"
    Expression ="dbo_ProjectComponentPress.PMSBack"
    Expression ="dbo_ProjectComponentPress.CYMKFront"
    Expression ="dbo_ProjectComponentPress.CYMKBack"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID"
    Expression ="dbo_ContactGeneral.CompName"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentHeader"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = dbo_ProjectComponentHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentPress"
    Expression ="dbo_ProjectComponentStock.ProjectComponentID = dbo_ProjectComponentPress.Project"
        "ComponentID"
    Flag =2
    LeftTable ="dbo_ProjectComponentStock"
    RightTable ="dbo_ProjectComponentPress"
    Expression ="dbo_ProjectComponentStock.PressRunName = dbo_ProjectComponentPress.SectionName"
    Flag =2
    LeftTable ="dbo_ProjectHeader"
    RightTable ="dbo_ContactGeneral"
    Expression ="dbo_ProjectHeader.ContactGeneralID = dbo_ContactGeneral.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x659cd126d353764ea93edae86d07db71
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000089466ecffa47f64d8a430ccaf9e274af00000000bf7d440e ,
    0xcfe0e4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400530074006f0063006b000000 ,
    0x00000000d2d381ba93398a4283a6a9ed80a7b4be000000000ba0050ecfe0e440 ,
    0x0000000000000000640062006f005f00500072006f006a006500630074004300 ,
    0x6f006d0070006f006e0065006e00740048006500610064006500720000000000 ,
    0x000035f87d9f0b136040ad3c2851f16d2a8000000000d8784d0ecfe0e4400000 ,
    0x000000000000640062006f005f00500072006f006a0065006300740048006500 ,
    0x61006400650072000000000000001ff48b4b7bbd39459517fa849aa377040000 ,
    0x00006b20350ecfe0e4400000000000000000640062006f005f00500072006f00 ,
    0x6a0065006300740043006f006d0070006f006e0065006e007400500072006500 ,
    0x73007300000000000000bb4ee421343f624db77659eef5e022a1000000006f48 ,
    0x190dcfe0e4400000000000000000640062006f005f0043006f006e0074006100 ,
    0x63007400470065006e006500720061006c00000000000000dedda8235aa6ba4d ,
    0x9056fec40e661dc607000000659cd126d353764ea93edae86d07db7150007200 ,
    0x6f006f00660041007000700072006f0076006500640059004e00000000000000 ,
    0x2a18d717724ce6498691189beb4eb10507000000659cd126d353764ea93edae8 ,
    0x6d07db71500072006500730073004900440000000000000080bb3d0328ab3200 ,
    0x14ab320060a93d0307000000659cd126d353764ea93edae86d07db7150007200 ,
    0x6500730073006e0061006d006500000000000000c080856b59f22641ac722739 ,
    0x8ee1f1a00700000089466ecffa47f64d8a430ccaf9e274af4900440000000000 ,
    0x0000749d4175d9cbb541b77414bf76f2aa9c0700000035f87d9f0b136040ad3c ,
    0x2851f16d2a8044006f0063006b00650074004e0075006d00000000000000dad4 ,
    0xa6c1c16ae546abad203c0819a8710700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af5100740079004f007200640065007200650064000000000000006cb3fb35 ,
    0xf36968408d1d5b6943b5a9a40700000089466ecffa47f64d8a430ccaf9e274af ,
    0x51007400790052006500630065006900760065006400000000000000a132a73d ,
    0x6245f746a87ad9d86e2b656b0700000089466ecffa47f64d8a430ccaf9e274af ,
    0x4100720072006900760061006c004400610074006500000000000000ef411c50 ,
    0x3d80f7439d8c0c8b431fabb90700000089466ecffa47f64d8a430ccaf9e274af ,
    0x5200650063006500690076006500640042007900000000000000713513c1b5a6 ,
    0xcd42a31ef41a4a1d8a780700000089466ecffa47f64d8a430ccaf9e274af4d00 ,
    0x730074007200580000000000000010d2b25ce6d2db44a196021f3a4d4c010700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af4d00730074007200590000000000 ,
    0x000008269cea99747c4eb5d15b929d45588a0700000089466ecffa47f64d8a43 ,
    0x0ccaf9e274af5000720065007300730058000000000000000617a999eb5c564c ,
    0x8db521ea6f8ce02a0700000089466ecffa47f64d8a430ccaf9e274af50007200 ,
    0x65007300730059000000000000007ea90e8b94c470409025df0f325f058f0700 ,
    0x000089466ecffa47f64d8a430ccaf9e274af4e0075006d006200650072005500 ,
    0x70000000000000000a0fde3a8f63b24ab9015124129711500700000089466ecf ,
    0xfa47f64d8a430ccaf9e274af570065006900670068007400000000000000e9d4 ,
    0xa493b1e3504b863faa0fba8186c00700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af4400650073006300720069007000740069006f006e000000000000008e5f ,
    0x2d8e505a2644aa72dce0cb93bea40700000089466ecffa47f64d8a430ccaf9e2 ,
    0x74af53007500700070006c006900650072004f0072006400650072004e007500 ,
    0x6d00620065007200000000000000a21dc4fed47c244fa08fb5209ebbfbc70700 ,
    0x0000d2d381ba93398a4283a6a9ed80a7b4be43006f006d0070006f006e006500 ,
    0x6e0074004e0061006d0065000000000000001c9b84855b8f264abd34a504e56b ,
    0x05af0700000035f87d9f0b136040ad3c2851f16d2a80500072006f006a006500 ,
    0x630074004e0061006d006500000000000000acd6a6e372a779498bc62b47128d ,
    0xa6270700000089466ecffa47f64d8a430ccaf9e274af560065006e0064006f00 ,
    0x72004900440000000000000078a4ab78684be74a86eca6bbeda30d6807000000 ,
    0xd2d381ba93398a4283a6a9ed80a7b4be500072006f006f006600410070007000 ,
    0x72006f0076006500640044006100740065000000000000002042568302f48b4d ,
    0x89eb4ba2abddca7307000000d2d381ba93398a4283a6a9ed80a7b4be50007200 ,
    0x6f006a0065006300740048006500610064006500720049004400000000000000 ,
    0xf32b3f5822e71f4784fe1b68534429740700000089466ecffa47f64d8a430cca ,
    0xf9e274af4e0075006d006200650072004f0075007400000000000000fe371115 ,
    0x569a08478b428437714db9f90700000089466ecffa47f64d8a430ccaf9e274af ,
    0x700072006f006a0065006300740043006f006d0070006f006e0065006e007400 ,
    0x4900440000000000000079563dff7b4c1d4cac3f9086abd61c0c070000008946 ,
    0x6ecffa47f64d8a430ccaf9e274af70007200650073007300720075006e006e00 ,
    0x61006d0065000000000000007615aa27e2529844bcad10e47a64f7b407000000 ,
    0x89466ecffa47f64d8a430ccaf9e274af4d005700650069006700680074000000 ,
    0x00000000e5c9c8b622bc17458f1e77200cb4dbf10700000089466ecffa47f64d ,
    0x8a430ccaf9e274af53006800650065007400460069006e006900730068000000 ,
    0x00000000f17b592ccb7d7c40b3a8855002404cfd070000001ff48b4b7bbd3945 ,
    0x9517fa849aa3770450004d005300460072006f006e007400000000000000da9e ,
    0xa2b58b32cd4386f0bd34feab6c56070000001ff48b4b7bbd39459517fa849aa3 ,
    0x770450004d0053004200610063006b0000000000000050fcd19dbbd51644b3ce ,
    0xc975eb00fea9070000001ff48b4b7bbd39459517fa849aa37704430059004d00 ,
    0x4b00460072006f006e007400000000000000edcf2e9b27c11f47a0862f812ead ,
    0x71d2070000001ff48b4b7bbd39459517fa849aa37704430059004d004b004200 ,
    0x610063006b00000000000000fde2928bbc55824d8e33fcf8a8e7c2e107000000 ,
    0xbb4ee421343f624db77659eef5e022a143006f006d0070004e0061006d006500 ,
    0x00000000000029556c4fcc6de9418049e37cebcb8ed307000000d2d381ba9339 ,
    0x8a4283a6a9ed80a7b4be4900440000000000000004aeb2718000d24bb73b562a ,
    0x737994cb0700000035f87d9f0b136040ad3c2851f16d2a804900440000000000 ,
    0x0000e19fd78d6de8f042912e16a0f4718a30070000001ff48b4b7bbd39459517 ,
    0xfa849aa37704500072006f006a0065006300740043006f006d0070006f006e00 ,
    0x65006e00740049004400000000000000ffd475da9c35f547ad76cf08e4dbfd4e ,
    0x070000001ff48b4b7bbd39459517fa849aa37704530065006300740069006f00 ,
    0x6e004e0061006d0065000000000000008265226ce5165f4597f9cda188898d96 ,
    0x0700000035f87d9f0b136040ad3c2851f16d2a8043006f006e00740061006300 ,
    0x7400470065006e006500720061006c00490044000000000000001fc238e44765 ,
    0x2546a47f3ca6a0d889e407000000bb4ee421343f624db77659eef5e022a14900 ,
    0x4400000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyOrdered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.QtyReceived"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ArrivalDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ReceivedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PressY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.NumberUp"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Weight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.Description"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3825"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SupplierOrderNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.VendorID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ProofApprovedYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdedda8235aa6ba4d9056fec40e661dc6
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MstrX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.PressX"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.NumberOut"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PressID"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2a18d717724ce6498691189beb4eb105
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.ProjectComponentID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pressname"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x80bb3d0328ab320014ab320060a93d03
        End
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SheetFinish"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.PMSBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKFront"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentPress.CYMKBack"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.MWeight"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1014"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentStock.SupplierPackingListNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.ConsultantID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =120
    Top =38
    Right =1613
    Bottom =696
    Left =-1
    Top =-1
    Right =1461
    Bottom =358
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =552
        Bottom =342
        Top =0
        Name ="dbo_ProjectComponentStock"
        Name =""
    End
    Begin
        Left =759
        Top =1
        Right =967
        Bottom =279
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =1045
        Top =22
        Right =1211
        Bottom =165
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =647
        Top =264
        Right =922
        Bottom =392
        Top =0
        Name ="dbo_ProjectComponentPress"
        Name =""
    End
    Begin
        Left =1156
        Top =200
        Right =1300
        Bottom =344
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
