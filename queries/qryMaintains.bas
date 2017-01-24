dbMemo "SQL" ="SELECT dbo_T_MainteHistory.MainteDate, dbo_T_MainteHistory.DeviceID, dbo_T_Maint"
    "eHistory.ItemID, dbo_T_MainteHistory.ReasonID, dbo_T_MainteHistory.PowerOnTime, "
    "dbo_T_MainteHistory.PrintingTime, dbo_M_MainteItem.ItemTitle, dbo_M_MainteItem.I"
    "temName\015\012FROM dbo_T_MainteHistory INNER JOIN dbo_M_MainteItem ON (dbo_T_Ma"
    "inteHistory.ItemID = dbo_M_MainteItem.ItemID) AND (dbo_T_MainteHistory.DeviceID "
    "= dbo_M_MainteItem.DeviceID);\015\012"
dbMemo "Connect" =""
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
    0xa27dc0779b680f48ab5bd52adddfb06b
End
dbLongBinary "DOL" = Begin
    0x0acc0e550000000072177b977140164ab06a2cc7ad150e72000000003fef3d1d ,
    0x2d8be4400000000000000000640062006f005f0054005f004d00610069006e00 ,
    0x7400650048006900730074006f0072007900000000000000e702de0c3323154e ,
    0x82dd0dd47ee5631800000000ab523e1d2d8be440000000000000000064006200 ,
    0x6f005f004d005f004d00610069006e00740065004900740065006d0000000000 ,
    0x0000a720732674aed947bdc077b1a2f262840700000072177b977140164ab06a ,
    0x2cc7ad150e724d00610069006e00740065004400610074006500000000000000 ,
    0x2f88cddb87ca0442b73ffaed27aeb4ba0700000072177b977140164ab06a2cc7 ,
    0xad150e72440065007600690063006500490044000000000000004b09cb5d718d ,
    0xb64a89c2ed39f3afbf000700000072177b977140164ab06a2cc7ad150e724900 ,
    0x740065006d00490044000000000000009f0bfd4b9875454c92783c0dddd7c3e9 ,
    0x0700000072177b977140164ab06a2cc7ad150e7252006500610073006f006e00 ,
    0x490044000000000000006598abba4c67ef43a4e4887f1de7f0eb070000007217 ,
    0x7b977140164ab06a2cc7ad150e7250006f007700650072004f006e0054006900 ,
    0x6d006500000000000000078cd8a0eb71c74da2359a43c1655aa2070000007217 ,
    0x7b977140164ab06a2cc7ad150e725000720069006e00740069006e0067005400 ,
    0x69006d006500000000000000069e6d040f216b41b29450fec8acb16107000000 ,
    0xe702de0c3323154e82dd0dd47ee563184900740065006d005400690074006c00 ,
    0x6500000000000000c05c822cd437ae46baa3d8b9c7a50f3007000000e702de0c ,
    0x3323154e82dd0dd47ee563184900740065006d004e0061006d00650000000000 ,
    0x0000cedf554781838f44976ad00286beaa1607000000e702de0c3323154e82dd ,
    0x0dd47ee563184400650076006900630065004900440000000000000020110375 ,
    0x77b015419219edc6c1de9f4f07000000e702de0c3323154e82dd0dd47ee56318 ,
    0x4900740065006d00490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_T_MainteHistory.MainteDate"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x46990f3c210d0049bf95a13d18fe7bea
        End
    End
    Begin
        dbText "Name" ="dbo_T_MainteHistory.DeviceID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdc1a03b368593b4c98c5ee2a6fee41a8
        End
    End
    Begin
        dbText "Name" ="dbo_T_MainteHistory.ItemID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x323bbc1bc6177b4b961066e1eac6067c
        End
    End
    Begin
        dbText "Name" ="dbo_T_MainteHistory.ReasonID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2c63da22d5cd31418123812eb8c572b5
        End
    End
    Begin
        dbText "Name" ="dbo_T_MainteHistory.PowerOnTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x75bdcb8f8f18e245bcf53f83a4c3a7cf
        End
    End
    Begin
        dbText "Name" ="dbo_T_MainteHistory.PrintingTime"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbf40deba8688764abf9df1228efdb8e9
        End
    End
    Begin
        dbText "Name" ="dbo_M_MainteItem.ItemTitle"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0283edf60441c948b1635060c718548c
        End
    End
    Begin
        dbText "Name" ="dbo_M_MainteItem.ItemName"
        dbInteger "ColumnWidth" ="5280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03fcbf516337b842bca8b0c2a9aa8668
        End
    End
End
