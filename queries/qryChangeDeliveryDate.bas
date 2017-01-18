Operation =1
Option =0
Begin InputTables
    Name ="dbo_ProjectComponentHeader"
    Name ="dbo_ProjectHeader"
    Name ="dbo_ContactGeneral"
End
Begin OutputColumns
    Expression ="dbo_ProjectComponentHeader.ID"
    Expression ="dbo_ProjectComponentHeader.ArtExpectedDate"
    Expression ="dbo_ProjectComponentHeader.ArtArrivedDate"
    Expression ="dbo_ProjectComponentHeader.ProofSentDate"
    Expression ="dbo_ProjectComponentHeader.ProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.DataExpectedDate"
    Expression ="dbo_ProjectComponentHeader.DataArrivedDate"
    Expression ="dbo_ProjectComponentHeader.MailProofApprovedDate"
    Expression ="dbo_ProjectComponentHeader.AssignedDueDate"
    Expression ="dbo_ProjectComponentHeader.SpecifiedDueDate"
    Expression ="dbo_ProjectHeader.AssignedDocketDueDate"
    Expression ="dbo_ProjectHeader.SpecifiedDocketDueDate"
    Expression ="dbo_ContactGeneral.CompName"
    Expression ="dbo_ProjectHeader.ProjectName"
    Expression ="dbo_ProjectHeader.DocketNum"
    Expression ="dbo_ProjectComponentHeader.ComponentName"
    Expression ="dbo_ProjectComponentHeader.DYStock"
    Expression ="dbo_ProjectComponentHeader.DYCreative"
    Expression ="dbo_ProjectComponentHeader.DYPrepress"
    Expression ="dbo_ProjectComponentHeader.DYMailData"
    Expression ="dbo_ProjectComponentHeader.DYPrint"
    Expression ="dbo_ProjectComponentHeader.DYOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.DYLFFinish"
    Expression ="dbo_ProjectComponentHeader.DYBindery"
    Expression ="dbo_ProjectComponentHeader.DYMailShop"
    Expression ="dbo_ProjectComponentHeader.StStock"
    Expression ="dbo_ProjectComponentHeader.StCreative"
    Expression ="dbo_ProjectComponentHeader.StPrepress"
    Expression ="dbo_ProjectComponentHeader.StMailData"
    Expression ="dbo_ProjectComponentHeader.StPrint"
    Expression ="dbo_ProjectComponentHeader.StOutsideSrv"
    Expression ="dbo_ProjectComponentHeader.StLFFinish"
    Expression ="dbo_ProjectComponentHeader.StBindery"
    Expression ="dbo_ProjectComponentHeader.StMailShop"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID"
    Expression ="dbo_ProjectHeader.ContactGeneralID"
    Expression ="dbo_ProjectHeader.ContactNameID"
    Expression ="dbo_ProjectHeader.BillAddLocationID"
    Expression ="dbo_ProjectHeader.DeliveryCutoffTime"
End
Begin Joins
    LeftTable ="dbo_ProjectComponentHeader"
    RightTable ="dbo_ProjectHeader"
    Expression ="dbo_ProjectComponentHeader.ProjectHeaderID = dbo_ProjectHeader.ID"
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
    0x79874fa77f63af46b576781540114f41
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000e7a128852f41a47b128e4f3b41e4fb400000000aa110e05 ,
    0xcb6be4400000000000000000640062006f005f00500072006f006a0065006300 ,
    0x740043006f006d0070006f006e0065006e007400480065006100640065007200 ,
    0x000000000000fe926418f32ed843874a57f371c555c700000000fbcf2405cb6b ,
    0xe4400000000000000000640062006f005f00500072006f006a00650063007400 ,
    0x480065006100640065007200000000000000d7c549c33168bc4ab70151c855c0 ,
    0xb6b900000000550ce004cb6be4400000000000000000640062006f005f004300 ,
    0x6f006e007400610063007400470065006e006500720061006c00000000000000 ,
    0x118be950d66974438268ddc04c06af1a070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb449004400000000000000717e39111eca6347b57209c2ea15cddc0700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb44100720074004500780070006500 ,
    0x63007400650064004400610074006500000000000000510e420f3ce318458e4a ,
    0x83187ceafcd5070000000e7a128852f41a47b128e4f3b41e4fb4410072007400 ,
    0x41007200720069007600650064004400610074006500000000000000634027e6 ,
    0x3b69c14c8d8a18cfebb340f0070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x500072006f006f006600530065006e0074004400610074006500000000000000 ,
    0x9663a2b3f469e74384b7fdcf57d349e8070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4500072006f006f00660041007000700072006f007600650064004400 ,
    0x6100740065000000000000002b65fd8db5abd949aead0dff337742f207000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb444006100740061004500780070006500 ,
    0x6300740065006400440061007400650000000000000074e1da1886b7f044af38 ,
    0xcd52c4a502c8070000000e7a128852f41a47b128e4f3b41e4fb4440061007400 ,
    0x6100410072007200690076006500640044006100740065000000000000001e1a ,
    0x4cfa6161a047bf0d693c307b0362070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb44d00610069006c00500072006f006f00660041007000700072006f007600 ,
    0x6500640044006100740065000000000000009034f5093d684d4493441af67c60 ,
    0x2460070000000e7a128852f41a47b128e4f3b41e4fb441007300730069006700 ,
    0x6e00650064004400750065004400610074006500000000000000e41b349e8098 ,
    0x36428a33efa5925ec82d070000000e7a128852f41a47b128e4f3b41e4fb45300 ,
    0x7000650063006900660069006500640044007500650044006100740065000000 ,
    0x000000004d96453ae8154647b2e5e15ac183b16d07000000fe926418f32ed843 ,
    0x874a57f371c555c7410073007300690067006e006500640044006f0063006b00 ,
    0x6500740044007500650044006100740065000000000000007e722a4b66287149 ,
    0x95d6709d9b16e96c07000000fe926418f32ed843874a57f371c555c753007000 ,
    0x650063006900660069006500640044006f0063006b0065007400440075006500 ,
    0x4400610074006500000000000000124b02a694dd0e4c96264abff25831270700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b943006f006d0070004e0061006d00 ,
    0x6500000000000000ab2bd0a18191ef46b6c770f2b1812fa607000000fe926418 ,
    0xf32ed843874a57f371c555c7500072006f006a006500630074004e0061006d00 ,
    0x6500000000000000d9cb95bb9ff0b84fa39eeda5976282d607000000fe926418 ,
    0xf32ed843874a57f371c555c744006f0063006b00650074004e0075006d000000 ,
    0x000000003c3a0e9cef0ad74dbd1042d7c3a3d51d070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb443006f006d0070006f006e0065006e0074004e0061006d00 ,
    0x65000000000000000706a505e780334e9e1a0bf7ad9759c1070000000e7a1288 ,
    0x52f41a47b128e4f3b41e4fb444005900530074006f0063006b00000000000000 ,
    0x33cbf9bd2df2984f903eb9e2e778660d070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb44400590043007200650061007400690076006500000000000000f77b ,
    0x44268d16cf4bb68a24a27d5f27c8070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb444005900500072006500700072006500730073000000000000000aa15648 ,
    0x57302f409348776382cb283f070000000e7a128852f41a47b128e4f3b41e4fb4 ,
    0x440059004d00610069006c0044006100740061000000000000006d8392d3effb ,
    0xe64386cc737511f29304070000000e7a128852f41a47b128e4f3b41e4fb44400 ,
    0x59005000720069006e007400000000000000f2f8e384332a3e4db2b4f3a9845b ,
    0x265a070000000e7a128852f41a47b128e4f3b41e4fb4440059004f0075007400 ,
    0x730069006400650053007200760000000000000098b0252434d676458632e695 ,
    0xde515bdd070000000e7a128852f41a47b128e4f3b41e4fb4440059004c004600 ,
    0x460069006e0069007300680000000000000083aa5106ca80a442a2bc29b1488f ,
    0x06b2070000000e7a128852f41a47b128e4f3b41e4fb444005900420069006e00 ,
    0x6400650072007900000000000000e483d6032d1b194299a43d77f45694c50700 ,
    0x00000e7a128852f41a47b128e4f3b41e4fb4440059004d00610069006c005300 ,
    0x68006f0070000000000000001ebba2150c013742aa56bff89bda917907000000 ,
    0x0e7a128852f41a47b128e4f3b41e4fb453007400530074006f0063006b000000 ,
    0x000000007b9a413f3387ce479a058fc3f300a38f070000000e7a128852f41a47 ,
    0xb128e4f3b41e4fb4530074004300720065006100740069007600650000000000 ,
    0x0000c1876f97fff14c42aa536b9f96f3acbd070000000e7a128852f41a47b128 ,
    0xe4f3b41e4fb45300740050007200650070007200650073007300000000000000 ,
    0x42c1d74a6fb8b74394c4ae0e81bf474f070000000e7a128852f41a47b128e4f3 ,
    0xb41e4fb4530074004d00610069006c00440061007400610000000000000023ee ,
    0x24ea3dc79c4bbb4696b91b02fc07070000000e7a128852f41a47b128e4f3b41e ,
    0x4fb4530074005000720069006e007400000000000000c522fbae11ca22468e39 ,
    0x4a44d3995e6e070000000e7a128852f41a47b128e4f3b41e4fb4530074004f00 ,
    0x75007400730069006400650053007200760000000000000091f06793f78a8b40 ,
    0xb737147041222f3b070000000e7a128852f41a47b128e4f3b41e4fb453007400 ,
    0x4c004600460069006e0069007300680000000000000064c1fab9d44c7546b6ea ,
    0xf2ded1c19411070000000e7a128852f41a47b128e4f3b41e4fb4530074004200 ,
    0x69006e00640065007200790000000000000055abbd6fd5e6d240978012607e1b ,
    0x4c67070000000e7a128852f41a47b128e4f3b41e4fb4530074004d0061006900 ,
    0x6c00530068006f007000000000000000873fed1bdd4daf46b59105d9e5c28c31 ,
    0x070000000e7a128852f41a47b128e4f3b41e4fb4500072006f006a0065006300 ,
    0x74004800650061006400650072004900440000000000000089ff919c8c2cb047 ,
    0x95bac03adb54784507000000fe926418f32ed843874a57f371c555c743006f00 ,
    0x6e007400610063007400470065006e006500720061006c004900440000000000 ,
    0x00007f8a79b53835fb4684ba535067e6481007000000fe926418f32ed843874a ,
    0x57f371c555c743006f006e0074006100630074004e0061006d00650049004400 ,
    0x0000000000009b1aeeea3460ab47bae592f002bf77cf07000000fe926418f32e ,
    0xd843874a57f371c555c7420069006c006c004100640064004c006f0063006100 ,
    0x740069006f006e0049004400000000000000c9930cf51e72c04790e270687afc ,
    0x4d4407000000fe926418f32ed843874a57f371c555c7440065006c0069007600 ,
    0x6500720079004300750074006f0066006600540069006d006500000000000000 ,
    0x6f7f02ef6df8574092eeeafb278f50ec07000000fe926418f32ed843874a57f3 ,
    0x71c555c74900440000000000000003933b4b9f324445a82e368651b1052b0700 ,
    0x0000d7c549c33168bc4ab70151c855c0b6b94900440000000000000000000000 ,
    0x0000000000000000000000000c00000005000000000000000000000000000000 ,
    0x0000
End
Begin
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofSentDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.SpecifiedDocketDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ContactGeneral.CompName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ProjectName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DocketNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ComponentName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataExpectedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DataArrivedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.AssignedDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.AssignedDocketDueDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.DYMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.StMailShop"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectComponentHeader.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.CompanyID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactGeneralID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.ContactNameID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.BillAddLocationID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_ProjectHeader.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =90
    Top =15
    Right =1593
    Bottom =863
    Left =-1
    Top =-1
    Right =1471
    Bottom =446
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =363
        Bottom =411
        Top =0
        Name ="dbo_ProjectComponentHeader"
        Name =""
    End
    Begin
        Left =411
        Top =12
        Right =856
        Bottom =346
        Top =0
        Name ="dbo_ProjectHeader"
        Name =""
    End
    Begin
        Left =904
        Top =12
        Right =1048
        Bottom =156
        Top =0
        Name ="dbo_ContactGeneral"
        Name =""
    End
End
