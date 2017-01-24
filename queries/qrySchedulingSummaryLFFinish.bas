Operation =1
Option =0
Begin InputTables
    Name ="qrySchedulingSummary"
End
Begin OutputColumns
    Expression ="qrySchedulingSummary.*"
    Alias ="LFFinishWorkList"
    Expression ="Trim(fLFFinishWorkList([ID]))"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xd6cbf573141f2e49871eb4e3079cb68e
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbLongBinary "DOL" = Begin
    0x0acc0e55000000004bf9bff4c0d08946a5b965d2d1dc220900000000d9cae886 ,
    0x72c6e44000000000000000007100720079005300630068006500640075006c00 ,
    0x69006e006700530075006d006d006100720079000000000000004e3e75b9ab79 ,
    0x7941aeb34998aa9d0adc07000000d6cbf573141f2e49871eb4e3079cb68e4c00 ,
    0x4600460069006e0069007300680057006f0072006b004c006900730074000000 ,
    0x00000000ba162141743b8a4a8bf3cb8ccabb21d3070000004bf9bff4c0d08946 ,
    0xa5b965d2d1dc2209490044000000000000000000000000000000000000000000 ,
    0x00000c000000050000000000000000000000000000000000
End
dbByte "PublishToWeb" ="1"
Begin
    Begin
        dbText "Name" ="qrySchedulingSummary.ID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x01bc030652d57846a96041f66ed27124
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe944709a5672b6408753272d57e656e8
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8ff50fd76364654e93c6dcce0377fb2f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9cb400a2293bb442a069fae32807cedc
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8114f4e8cca8e74f8701d4fc88f3f0c8
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9d4e50746a5d6a43ae69e760a3f6e69f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xac2d290a6330454d88605b9c23ebefd3
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd299d5e31b2bd74d9e8e5fcb7e9576db
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ComponentName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x173a4848f8454d44b9cb50373cfab8d7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShipDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8f9461aa9fbbba4a9451ee1b3c529a29
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShippedVia"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x63dfc66ca7aac644bddad21ce49bf875
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ArtArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb8158652e5cd2f49913e4c8c20c2225e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DataArrivedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x66e24e6dd1d36c40aa2a2ac67eadb825
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x96f3753e73de7c40bf334ea48bafaea5
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0fa90acd5cc2f34787fee974cfb0292e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.InvoiceNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0f23a6747858b94ab161fb3db798b089
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x28c31148c89459479937958277aa39a3
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x97ae6f1eb9d22543bad343e9d77ceb4a
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x18863444e802bd46a5490c5aad61792d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x766dd6536960b54491beb5b1aa008459
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CsrID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5941acd172810641819895683b386df6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7997100eca69d4ab7623ee5820416ae
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.IsRush"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3eef3ccbf9b27469bc9d75900e8a57c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ArtYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x60bd4e0b53316b45a2b0d0d4d8d07882
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x478942312ad1b940863529a4c288eda7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x453a4b6a7264a247bc3c5edeb7a9b348
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d0523fa10ae95409a693d8f6dbc5659
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2fca36367aa4fd42ab56d96f9bd51513
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xef923dff7bb0e34b902e4da5bff32069
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x39c8ad8feb0acf4395cc7ba8c5f2d629
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DocketNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf10ed19846fc474da9a7c9997482d319
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CompName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8dab47231b2c804490a69436faf6f90c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SortOrder"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x504b5cccfd15a541be50b3b3d53c9bbf
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProjectHeaderID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9a5f69abe79a76498a59bb4be3ea6ad6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbd01103bc22df1428ced16c5a3fed36d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5bd6f25dee8332499c9506dd12ecfee2
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf3953deb6a641644bdb454464e5e9e8b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4bd4a91454d88646925a71fe3a41a350
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x28461b2dd5098a4d878320ef09158a89
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc818a0da431d3745adf0c9bcda5c0ebe
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1e605db31725ad46b4ce38e2946ca148
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.Prerequisite"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd2616e33558714478f7eec3ef2e2ab55
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DeliveryCutoffTime"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8848686f915ab647a226d223d0e09c71
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.Notes"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe11eab55e611df4d9627c5732eaa0c07
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SpecifiedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x41de7b86941b3149ba69b5e7434128fe
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MailApprovalRequired"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7cafbe600925a946935174e44dc3ea8e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteNumDisplay"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x022881b64b887b4ebe03744e308963f3
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x55bc318426a5514da24d096392107a64
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8676692dab572b4888d4db78528677b8
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SalesRepID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4f2393ae5e00b747a064af11dd76c081
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.InPlanning"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd3a83dd1c3b0924da107614f3ab0f250
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProjectStatusID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x63c5b1657cc4e344a5a7e25c22bf0c44
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CSRInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf2948325ac933a4fa4e23c64effda675
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SalesRepInit"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd7d27c4b09666546b7839ed87838b823
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProjectName"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdf4fd80adcaf2445a09017f47a958dff
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe3287a467f54d340aa31c051af5dac9a
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2d2be0282be3e14da93cf53f2b781969
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd14faa978e9695479d83b5c332cf6b3c
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2695fe0d95325a4f851b45c4b83f9927
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHBindery"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xffac6495f4dd054e94a6085fa7e97b8e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x519ec3ae2ade5d469a2229e8255522db
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xd513dd2c2e9cc544baf29a6511ca1729
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8d2f2ac7a4aa4e45a10b2585adb98845
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3ffd7412be327d40b33ef18dcf023fa1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYPrint"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2674509f24140742ab12427583bac969
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StOutsideSrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9298141d99961a42a7a539ff8c55eca1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4f268d3c87f35f4d956bfe915fe63add
        End
    End
    Begin
        dbText "Name" ="LFFinishWorkList"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4e3e75b9ab797941aeb34998aa9d0adc
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ContactGeneralID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x79da4cbc8f296644a08517e64ad43677
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ComponentType"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xef58ae19dfa95a418eb56b13402e0586
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShipFlag"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x754bb2921ac9c54d9ffb785f97544924
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.VendorID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xcaf20c771881844d812f68e94c83d803
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.FriendlyDescription"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xb8f212ca5960b6469690680a58b64754
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.VendorPackingListNumber"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xe6669331684d6440b7116fc3943958af
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ReceivedBy"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdff529ced1b62d41b45d79e3f0fb5ca7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StartDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8cd14f5132b4944791c64ee5d876a2b2
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ArtExpectedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc8fe18514c37de4cbcc0b0515c84fad6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x102fbf95a597c746ab32d33b2dcb6d40
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MailProofApprovedDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3fef415e1f72314ca0bb086157206c6d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteNum"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d6a84daa168e24283801379917ee2e5
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x03668bcca6fe3946b7e66a3ee730576d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c41e9acb908614caa9b16d1ae06ccfd
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.KeepInProductionYN"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbc254df0061aae4dbc417bae8d9e2da7
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHCreative"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x37254b5ef7bbc54b88ac0c06d1511b69
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa2b2626133d27741a97ed0b54cd8bce1
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdad65e13c1e2c649ac9de5284edcf40e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc1"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xa4e473224a273648a39b7deec0fe3b38
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteDisc3"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x3d614f93dd695e4ba68b39a87cc48e4f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteAmt5"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x4316df7a87f133498cc32f915160b1a4
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SaleAmt"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7cbd1d3ac683a5428e0963df62c04f1a
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x82978aa4bac7264aad00f5bbd958d754
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x43310f7918c8bf459fb62de984538009
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSelect4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x424e0a6c69e0ca4c97bcc3f53773de2f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.Void"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xc6408f98ddb2b646a396c9cb82d135be
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHPrepress"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xaab3f9640ef0794d870ad02f9e4c2b80
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DYMailData"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x23c8ae11c8670747a36316c573758f5f
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StLFFinish"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x79089707c025314e869f800fa679bf3d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExpectedQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7cd48b4aa5fcaa469c2e2e1b474e215e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CompNamewQty"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x5a0451c2933e384db2a72d2aae78fa7e
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ShippedWaybill"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xbe784e6ada43c249aabe1dec6ff84b5d
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.VendorNameID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x858c703370ee1f4892ffbb38a2276503
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.AssignedDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6885e56248d7ab48b35fc7d6f9482ff6
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.CompletionDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x1874bb09e486904cacab17695796b369
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteQty2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x50e5fa8e7cf543479a9aa394db1b04af
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.StStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xee16073630161e40aaf2a631139fca53
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x07ba3c94663ed74e87df8185bab11c53
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.FirmDueDate"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x193207db887bb74baf1d209f85b1c90b
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHStock"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x17f61fb4d38bee48abe89f42d4282d82
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ActualMHOutsidesrv"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9f04bef980b18748a5765286e7ccd020
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.MHMailShop"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf9c15a192703e140a40aabe60caeb6bb
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.SalesRepInitBad"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf10c006bde91b54ea97016f742168dae
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.LastContactMethod"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x60061bd405733246a58645ecf51dea00
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell2"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x2b1071f407691e44aa1e1d27306526c9
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.ExtQuoteSell4"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xff7f6dbf890fa6438391082feab8c6a8
        End
    End
    Begin
        dbText "Name" ="qrySchedulingSummary.DiscPercent"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xdd00a1d7bce82d4c97dbbb3c13ff6109
        End
    End
End
Begin
    State =0
    Left =33
    Top =64
    Right =1476
    Bottom =739
    Left =-1
    Top =-1
    Right =1411
    Bottom =340
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =153
        Top =39
        Right =297
        Bottom =183
        Top =0
        Name ="qrySchedulingSummary"
        Name =""
    End
End
