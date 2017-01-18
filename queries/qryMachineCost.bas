Operation =1
Option =0
Begin InputTables
    Name ="loc_Machine"
    Name ="loc_GeneralOverhead"
End
Begin OutputColumns
    Expression ="loc_GeneralOverhead.CompanyName"
    Expression ="loc_GeneralOverhead.CompanyLocation"
    Expression ="loc_GeneralOverhead.SqFtPlant"
    Expression ="loc_GeneralOverhead.SqFtOffice"
    Expression ="loc_GeneralOverhead.BuildingOpCost"
    Expression ="loc_GeneralOverhead.OfficeStaffCost"
    Expression ="loc_Machine.MachineName"
    Expression ="loc_Machine.SqFtRequired"
    Expression ="loc_Machine.SetupTimeRequired"
    Expression ="loc_Machine.CleanupTimeRequired"
    Expression ="loc_Machine.Speed"
    Expression ="loc_Machine.OperatorsRequired"
    Expression ="loc_Machine.OperatorLevelRequired"
    Expression ="loc_Machine.MachineCostPerYear"
    Expression ="loc_Machine.MachineOverheadPerYear"
    Expression ="loc_Machine.MachineCostPerPiece_Black"
    Expression ="loc_Machine.MachineCostPerPiece_Colour"
    Expression ="loc_Machine.HoursOfOperationPerDay"
End
Begin Joins
    LeftTable ="loc_Machine"
    RightTable ="loc_GeneralOverhead"
    Expression ="loc_Machine.Location = loc_GeneralOverhead.ID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xf8547e8237496a409e4a61f457873a11
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000099eb67604ea837449ecec3e0e56d89b900000000a69a0a6f ,
    0xec62e44000000000000000006c006f0063005f004d0061006300680069006e00 ,
    0x65000000000000000707f5acc2f985479f2f4ac44617920600000000bd00fbc0 ,
    0xea62e44000000000000000006c006f0063005f00470065006e00650072006100 ,
    0x6c004f007600650072006800650061006400000000000000a5956729a8cfba42 ,
    0xa449e164a9d66230070000000707f5acc2f985479f2f4ac44617920643006f00 ,
    0x6d00700061006e0079004e0061006d006500000000000000f2ecc1eed113f847 ,
    0xb7baaeb5d4bd3c8b070000000707f5acc2f985479f2f4ac44617920643006f00 ,
    0x6d00700061006e0079004c006f0063006100740069006f006e00000000000000 ,
    0x7aa795e965bbc746832d521268c44b38070000000707f5acc2f985479f2f4ac4 ,
    0x46179206530071004600740050006c0061006e0074000000000000004a7adf79 ,
    0xcfe1ab49af5fa7a091764150070000000707f5acc2f985479f2f4ac446179206 ,
    0x53007100460074004f0066006600690063006500000000000000f1bc5c1e67a3 ,
    0x424bab29a1312eb896ec070000000707f5acc2f985479f2f4ac4461792064200 ,
    0x750069006c00640069006e0067004f00700043006f0073007400000000000000 ,
    0x3aee4122fa4b43439785b3f39e66514d070000000707f5acc2f985479f2f4ac4 ,
    0x461792064f00660066006900630065005300740061006600660043006f007300 ,
    0x7400000000000000ccb7f41ed764b24486fab793f8acaf3d0700000099eb6760 ,
    0x4ea837449ecec3e0e56d89b94d0061006300680069006e0065004e0061006d00 ,
    0x65000000000000003d19c1a02e2d734bbc0f258e96485cb30700000099eb6760 ,
    0x4ea837449ecec3e0e56d89b95300710046007400520065007100750069007200 ,
    0x650064000000000000002dff0c209629cd44b498788ecca76c6c0700000099eb ,
    0x67604ea837449ecec3e0e56d89b953006500740075007000540069006d006500 ,
    0x52006500710075006900720065006400000000000000caf3381375b41247b50c ,
    0xae2f415e5ab60700000099eb67604ea837449ecec3e0e56d89b943006c006500 ,
    0x61006e0075007000540069006d00650052006500710075006900720065006400 ,
    0x000000000000bb1e247e32228f489291217d3c0b1c890700000099eb67604ea8 ,
    0x37449ecec3e0e56d89b953007000650065006400000000000000fe6c59ead200 ,
    0x774da10fd7c0bf656c180700000099eb67604ea837449ecec3e0e56d89b94f00 ,
    0x700065007200610074006f007200730052006500710075006900720065006400 ,
    0x000000000000e770f653a1b4e5438c25d9dfcddd91f80700000099eb67604ea8 ,
    0x37449ecec3e0e56d89b94f00700065007200610074006f0072004c0065007600 ,
    0x65006c0052006500710075006900720065006400000000000000ee88f8948ea3 ,
    0x1a48a5d722509cceeeb40700000099eb67604ea837449ecec3e0e56d89b94d00 ,
    0x61006300680069006e00650043006f0073007400500065007200590065006100 ,
    0x7200000000000000124c6dad41cdba4486b9aea135f07ea90700000099eb6760 ,
    0x4ea837449ecec3e0e56d89b94d0061006300680069006e0065004f0076006500 ,
    0x72006800650061006400500065007200590065006100720000000000000014e0 ,
    0x84f1670ecd44968d3a339a438fde0700000099eb67604ea837449ecec3e0e56d ,
    0x89b94d0061006300680069006e00650043006f00730074005000650072005000 ,
    0x69006500630065005f0042006c00610063006b0000000000000088ee01a7beec ,
    0x6e438676d75f426236420700000099eb67604ea837449ecec3e0e56d89b94d00 ,
    0x61006300680069006e00650043006f0073007400500065007200500069006500 ,
    0x630065005f0043006f006c006f007500720000000000000003c96e26d23e544e ,
    0xabe652474f723c400700000099eb67604ea837449ecec3e0e56d89b948006f00 ,
    0x7500720073004f0066004f007000650072006100740069006f006e0050006500 ,
    0x720044006100790000000000000024a13a1e3b1be34f86a1db65e92165590700 ,
    0x000099eb67604ea837449ecec3e0e56d89b94c006f0063006100740069006f00 ,
    0x6e0000000000000011d2cd8a66932f4f84e5a6cfed8c68d2070000000707f5ac ,
    0xc2f985479f2f4ac4461792064900440000000000000000000000000000000000 ,
    0x0000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="loc_GeneralOverhead.CompanyName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_GeneralOverhead.CompanyLocation"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_GeneralOverhead.OfficeStaffCost"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.MachineName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.HoursOfOperationPerDay"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_GeneralOverhead.SqFtPlant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_GeneralOverhead.SqFtOffice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_GeneralOverhead.BuildingOpCost"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.SqFtRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.SetupTimeRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.CleanupTimeRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.Speed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.OperatorsRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.OperatorLevelRequired"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.MachineCostPerYear"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.MachineOverheadPerYear"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.MachineCostPerPiece_Black"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="loc_Machine.MachineCostPerPiece_Colour"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1465
    Bottom =780
    Left =-1
    Top =-1
    Right =1433
    Bottom =501
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =16
        Top =21
        Right =217
        Bottom =442
        Top =0
        Name ="loc_Machine"
        Name =""
    End
    Begin
        Left =320
        Top =62
        Right =598
        Bottom =367
        Top =0
        Name ="loc_GeneralOverhead"
        Name =""
    End
End
