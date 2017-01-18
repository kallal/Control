Operation =1
Option =0
Begin InputTables
    Name ="dboC8000Log"
End
Begin OutputColumns
    Alias ="Docket"
    Expression ="Val(Left([job title],6))"
    Expression ="dboC8000Log.[Job Title]"
    Expression ="dboC8000Log.[Timestamp Printing]"
    Expression ="dboC8000Log.[Timestamp Done Printing]"
    Alias ="PrintTimeHr"
    Expression ="([timestamp done printing]-[timestamp printing])*24"
    Expression ="dboC8000Log.Size"
    Expression ="dboC8000Log.Pages"
    Expression ="dboC8000Log.[Number Of Copies Of Job Printed]"
    Expression ="dboC8000Log.[Total Number Of Sheets Printed]"
    Expression ="dboC8000Log.[Number Of Pages Printed]"
    Expression ="dboC8000Log.[Total Number Of Black And White Pages Printed]"
    Expression ="dboC8000Log.[Total Number Of Color Pages Printed]"
    Expression ="dboC8000Log.[Print Status]"
    Expression ="dboC8000Log.[Media Size]"
    Expression ="dboC8000Log.[Media Type]"
    Expression ="dboC8000Log.[Media Weight]"
    Expression ="dboC8000Log.[Paper Source]"
    Expression ="dboC8000Log.[Device/Group]"
    Expression ="dboC8000Log.Server"
    Expression ="dboC8000Log.[Paper Catalog Name]"
    Expression ="dboC8000Log.Interpreter"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xb5974a2c4769da4fa6b6f35b47fbf6c5
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000000c8c2e2245533740a3f171cbec31bc0d0000000087f402be ,
    0x4ba8e4400000000000000000640062006f00430038003000300030004c006f00 ,
    0x67000000000000001654046b9a7d834098f9af5cf91d8c2a07000000b5974a2c ,
    0x4769da4fa6b6f35b47fbf6c544006f0063006b0065007400000000000000cde4 ,
    0x053d46c6c3498d2f4fab3602ccb807000000b5974a2c4769da4fa6b6f35b47fb ,
    0xf6c55000720069006e007400540069006d0065004800720000000000000001b4 ,
    0x05949cbb7a4b974b9a7706b9ed75070000000c8c2e2245533740a3f171cbec31 ,
    0xbc0d6a006f00620020007400690074006c006500000000000000cf90ed1cbee4 ,
    0x184a8d614741c163f0c9070000000c8c2e2245533740a3f171cbec31bc0d5400 ,
    0x69006d0065007300740061006d00700020005000720069006e00740069006e00 ,
    0x67000000000000000c96ca84e79ecb4ab313167ab4479ec4070000000c8c2e22 ,
    0x45533740a3f171cbec31bc0d540069006d0065007300740061006d0070002000 ,
    0x44006f006e00650020005000720069006e00740069006e006700000000000000 ,
    0xa2429f40b8270846a6d90e2532b4e513070000000c8c2e2245533740a3f171cb ,
    0xec31bc0d530069007a006500000000000000c381b5d04b68dd4e8724f546e711 ,
    0x5f30070000000c8c2e2245533740a3f171cbec31bc0d50006100670065007300 ,
    0x000000000000f76dd8db82f3b64f9520a9b6f7f89128070000000c8c2e224553 ,
    0x3740a3f171cbec31bc0d4e0075006d0062006500720020004f00660020004300 ,
    0x6f00700069006500730020004f00660020004a006f0062002000500072006900 ,
    0x6e00740065006400000000000000f49182616fa8034da5bc1f059aa119380700 ,
    0x00000c8c2e2245533740a3f171cbec31bc0d54006f00740061006c0020004e00 ,
    0x75006d0062006500720020004f00660020005300680065006500740073002000 ,
    0x5000720069006e0074006500640000000000000095931bc1985a8f4e9cfa66ff ,
    0x7aa913eb070000000c8c2e2245533740a3f171cbec31bc0d4e0075006d006200 ,
    0x6500720020004f00660020005000610067006500730020005000720069006e00 ,
    0x740065006400000000000000b6408d40877ced4aaa7f35876057e0d107000000 ,
    0x0c8c2e2245533740a3f171cbec31bc0d54006f00740061006c0020004e007500 ,
    0x6d0062006500720020004f006600200042006c00610063006b00200041006e00 ,
    0x6400200057006800690074006500200050006100670065007300200050007200 ,
    0x69006e00740065006400000000000000bd5f2f392da83644861e137d8e8f86fc ,
    0x070000000c8c2e2245533740a3f171cbec31bc0d54006f00740061006c002000 ,
    0x4e0075006d0062006500720020004f006600200043006f006c006f0072002000 ,
    0x5000610067006500730020005000720069006e00740065006400000000000000 ,
    0xb15adee2d5622f41b7ab574137df3aba070000000c8c2e2245533740a3f171cb ,
    0xec31bc0d5000720069006e007400200053007400610074007500730000000000 ,
    0x000033d5a8190d146148927f9c648ec128e2070000000c8c2e2245533740a3f1 ,
    0x71cbec31bc0d4d0065006400690061002000530069007a006500000000000000 ,
    0xf4900a2a26a1994a9a8ea7ffc361a55b070000000c8c2e2245533740a3f171cb ,
    0xec31bc0d4d006500640069006100200054007900700065000000000000007466 ,
    0x8a1f48379d49b5e551f6f3354522070000000c8c2e2245533740a3f171cbec31 ,
    0xbc0d4d0065006400690061002000570065006900670068007400000000000000 ,
    0x74cf2e6833e408499ebb84f9e1b07e1b070000000c8c2e2245533740a3f171cb ,
    0xec31bc0d50006100700065007200200053006f00750072006300650000000000 ,
    0x0000589cd3ddd999444a802b71150810e83d070000000c8c2e2245533740a3f1 ,
    0x71cbec31bc0d4400650076006900630065002f00470072006f00750070000000 ,
    0x00000000ab2eea055b24984c969cd1414dfdc5ff070000000c8c2e2245533740 ,
    0xa3f171cbec31bc0d5300650072007600650072000000000000002b2bc39fb6d9 ,
    0x2f48a48cebcf52736ff0070000000c8c2e2245533740a3f171cbec31bc0d5000 ,
    0x6100700065007200200043006100740061006c006f00670020004e0061006d00 ,
    0x6500000000000000e7ba6f3e56bf254c912497ff9ad6358f070000000c8c2e22 ,
    0x45533740a3f171cbec31bc0d49006e0074006500720070007200650074006500 ,
    0x7200000000000000000000000000000000000000000000000c00000005000000 ,
    0x0000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="Docket"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1654046b9a7d834098f9af5cf91d8c2a
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Job Title]"
        dbInteger "ColumnWidth" ="4485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5d4191c2ba835f48a8a4f083174fa545
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Timestamp Printing]"
        dbInteger "ColumnWidth" ="2760"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe37465bd0cf07249affcd64da822943c
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Timestamp Done Printing]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7248d8301fee124abff60b66e690d01f
        End
    End
    Begin
        dbText "Name" ="PrintTimeHr"
        dbInteger "ColumnWidth" ="3810"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcde4053d46c6c3498d2f4fab3602ccb8
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.Size"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e35023d53b44d4e93f616e758335ec5
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.Pages"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x596afe72e4d6214caafcec0530255191
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Number Of Copies Of Job Printed]"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf005f7310386b44aac61d5564b318a95
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Total Number Of Color Pages Printed]"
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0efe4ec497cfd0498d5d913d699e6a7a
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Number Of Pages Printed]"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3f08778110907240809daf095603e365
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Total Number Of Sheets Printed]"
        dbInteger "ColumnWidth" ="2670"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x81d1b96b9edc504297f1262389b3aa49
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Total Number Of Black And White Pages Printed]"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x403378a51a656246a58afd9e68e66fb4
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Print Status]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8148657fb8ca3f499e1d73beccd754ea
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Media Size]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc6ee2f33d576e54781c9d745e1c539d7
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Media Type]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2274a96a6a953f4f96d2330754b4e08d
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Media Weight]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf6314e2a3b01004f8d2427a033c42333
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Paper Source]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2722f42d4759b745af8894906bb599d3
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Device/Group]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x296981ce7d2e2a4199a6b6bd78c9f751
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.Server"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x364630fcd4a04c4bad33d4acbf930620
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.[Paper Catalog Name]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe0b2fd7007fc7748954fb30e3662a3eb
        End
    End
    Begin
        dbText "Name" ="dboC8000Log.Interpreter"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x22bc736b082de44091e9896c716aefe7
        End
    End
End
Begin
    State =0
    Left =77
    Top =51
    Right =1540
    Bottom =726
    Left =-1
    Top =-1
    Right =1431
    Bottom =391
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =76
        Top =5
        Right =440
        Bottom =337
        Top =0
        Name ="dboC8000Log"
        Name =""
    End
End
