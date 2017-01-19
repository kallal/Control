Option Compare Database
Option Explicit


Public Const ProgramName As String = "CONTROL Management Information System."

Public rsLocSS As Recordset 'Local Search Settings for User - used rsLocSS for shorthand

Public cLoginID As Integer 'speedy access to the current user

Public cMyBackColor As Long
Public cmyFontColor As Long



'Public constPDQXMLFiles As String
'Public constQuotePDFFiles As String
'Public constInvoicePDFFiles As String

Public constHolidays(155) As Date 'matrix to load up with holidays for speed in function

'Need to define all constants that will come from Setup.INI file, with c in front

Public cControlCompanyCode As String
Public cControlEstimateFolder As String
Public cControlInvoiceFolder As String
Public cControlEstimateAttachmentFolder As String
Public cControlDocketAttachmentFolder As String
Public cControlProofFolder As String
Public cControlLocalProgramFolder As String
Public cControlServerUseWindowsAuthentication As Boolean
Public cControlServer As String
Public cControlDatabase As String
Public cControlUser As String
Public cControlPassword As String
Public cControlReportName As String
Public cControlReportAddress As String
Public cControlLegalName As String
Public cControlLogo As image
Public cReleaseStockToCutterEmail As String
Public cReleasePaperAtVendorEmail As String
Public cControlCountry As String
Public cControlProv As String
Public cControlCity As String




Public cPDQEnabled As Boolean
Public cPDQDatabase As String
Public cPDQQuoteXMLFolder As String
Public cPDQSetupDatabase As String


Public cKStationEnabled As Boolean
Public cKStationServer As String
Public cKStationDatabase As String
Public cKStationUser As String
Public cKStationPassword As String

Public cSage50Enabled         As Boolean
Public cSage50Folder          As String
Public cSage50ExportFolder    As String
Public cSage50DataFile        As String
Public cSage50User            As String
Public cSage50Password        As String

Public cQuickbooksEnabled           As Boolean
Public cQuickbooksProgramFolder     As String
Public cQuickbooksExportFolder      As String
Public cQuickbooksDataFile          As String
Public cQuickBooksUser              As String
Public cQuickBooksPassword          As String


Public cSmartStreamEnabled As Boolean
Public cSmartStreamServer As String
Public cSmartStreamDatabase As String
Public cSmartStreamUser As String
Public cSmartStreamPassword As String
Public cSmartStreamJobFolder As String

Public cPitStopServerEnabled As Boolean
Public cPitStopServerProgramFolder As String
Public cPitStopServerInputFolder As String
Public cPitStopServerOutputFolder As String

Public cUploadPortalEnabled As Boolean
Public cUploadPortalSite As String


Public cPDQImportResult As String

Public cCountry As String

Public cNumProjectsOpen As Integer
Public cNumContactsOpen As Integer

Public cBypassPrepressAIYN As Boolean
Public cLockQuoteRequestsYN As Boolean
Public cCurrentUserName As String
Public cCanUnlockQuoteRequestsYN As Boolean

Public cLocColor01 As Long
Public cLocColor02 As Long
Public cLocColor03 As Long
Public cLocColor04 As Long
Public cLocColor05 As Long
Public cLocColor06 As Long
Public cLocColor07 As Long
Public cLocColor08 As Long
Public cLocColor09 As Long
Public cLocColor10 As Long
Public cLocColor11 As Long
Public cLocColor12 As Long