CREATE TABLE [loc_BatchPrint] (
  [id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [ProjectHeaderID] LONG ,
  [MaxType] LONG ,
  [QuoteNum] LONG ,
  [DocketNum] LONG ,
  [InvoiceNum] LONG ,
  [CompanyName] VARCHAR (255),
  [JobName] VARCHAR (255)
)
