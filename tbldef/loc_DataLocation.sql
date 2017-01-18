CREATE TABLE [loc_DataLocation] (
  [id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [PrimaryDboDataLocation] VARCHAR (255),
  [PrimaryPDQDataLocation] VARCHAR (255),
  [PrimaryPDQXMLFiles] VARCHAR (255),
  [PrimaryQuotePDFFiles] VARCHAR (255),
  [PrimaryInvoicePDFFiles] VARCHAR (255),
  [TestDboDataLocation] VARCHAR (255),
  [TestPDQDataLocation] VARCHAR (255),
  [TestPDQXMLFiles] VARCHAR (255),
  [TestQuotePDFFiles] VARCHAR (255),
  [TestInvoicePDFFiles] VARCHAR (255),
  [SelectData] LONG 
)
