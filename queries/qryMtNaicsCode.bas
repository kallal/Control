Operation =2
Name ="tblCboNaicsCode"
Option =0
Where ="(((dbo_NaicsCode.Show)=True))"
Begin InputTables
    Name ="dbo_NaicsCode"
End
Begin OutputColumns
    Expression ="dbo_NaicsCode.NaicsCode"
    Expression ="dbo_NaicsCode.NaicsTitle"
    Expression ="dbo_NaicsCode.Show"
End
Begin OrderBy
    Expression ="dbo_NaicsCode.NaicsCode"
    Flag =0
    Expression ="dbo_NaicsCode.NaicsTitle"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x32b63fdea1a86340afefa6e9549bc6e1
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbByte "PublishToWeb" ="1"
dbBoolean "UseTransaction" ="-1"
dbLongBinary "DOL" = Begin
    0x0acc0e550000000099a9cf01a8af6249a8776101392f98f200000000e7153bda ,
    0x0dd8e4400000000000000000640062006f005f004e0061006900630073004300 ,
    0x6f0064006500000000000000c06ceadac9b52f489203bb2467b21a8f07000000 ,
    0x99a9cf01a8af6249a8776101392f98f24e00610069006300730043006f006400 ,
    0x6500000000000000f0de90d83bcf144ea1ae4f9511b822c00700000099a9cf01 ,
    0xa8af6249a8776101392f98f24e0061006900630073005400690074006c006500 ,
    0x00000000000097b56231a4935d4ba53ac4e15a076a7d0700000099a9cf01a8af ,
    0x6249a8776101392f98f2530068006f0077000000000000000000000000000000 ,
    0x00000000000000000c000000050000000000000000000000000000000000
End
Begin
    Begin
        dbText "Name" ="dbo_NaicsCode.Show"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5df62c2aced6e6409a3afa03989807b7
        End
    End
    Begin
        dbText "Name" ="dbo_NaicsCode.NaicsCode"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf259950fa1729e408d5d5ccdd0d4f1d4
        End
    End
    Begin
        dbText "Name" ="dbo_NaicsCode.NaicsTitle"
        dbInteger "ColumnWidth" ="6345"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf565b77289dce142bc034d579fde5e1a
        End
    End
End
Begin
    State =0
    Left =38
    Top =86
    Right =1628
    Bottom =860
    Left =-1
    Top =-1
    Right =1558
    Bottom =406
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =716
        Bottom =435
        Top =0
        Name ="dbo_NaicsCode"
        Name =""
    End
End
