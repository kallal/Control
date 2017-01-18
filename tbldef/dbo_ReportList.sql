CREATE TABLE [dbo_ReportList] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [FriendlyName] VARCHAR (255),
  [ReportName] VARCHAR (255),
  [Department] VARCHAR (255),
  [OrderedBy] VARCHAR (255),
  [DateField] VARCHAR (255),
  [HasDate] BIT ,
  [HasClient] BIT ,
  [HasVendor] BIT ,
  [HasEmployee] BIT ,
  [HasEstimateNum] BIT ,
  [HasDocketNum] BIT ,
  [HasInvoiceNum] BIT ,
  [Preview] BIT ,
  [RequiredFields] LONGTEXT 
)
