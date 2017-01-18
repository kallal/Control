CREATE TABLE [tblDCMtoProcessFlag] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [DCM_ID] LONG ,
  [NewInfo] VARCHAR (255),
  [Category] LONG ,
  [IgnoreThisService] BIT ,
  [SubDatabase] VARCHAR (255),
  [SubFieldName1] VARCHAR (255),
  [SubFieldData1] VARCHAR (255),
  [SubFieldName2] VARCHAR (255),
  [SubFieldData2] VARCHAR (255),
  [SubFieldName3] VARCHAR (255),
  [SubFieldData3] VARCHAR (255),
  [LastUpdated] DATETIME ,
  [LastUpdatedBy] LONG ,
  [LastUsed] DATETIME ,
  [LastUsedBy] LONG 
)
