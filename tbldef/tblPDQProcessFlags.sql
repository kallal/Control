CREATE TABLE [tblPDQProcessFlags] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [Category] LONG ,
  [ServiceName] VARCHAR (255),
  [SubDatabase] VARCHAR (255),
  [SubFieldName1] VARCHAR (255),
  [SubFieldData1] VARCHAR (255),
  [SubFieldName2] VARCHAR (255),
  [SubFieldData2] VARCHAR (255),
  [LastUpdated] DATETIME ,
  [LastUpdatedBy] LONG ,
  [LastUsed] DATETIME ,
  [LastUsedBy] LONG ,
  [IgnoreThisService] BIT 
)
