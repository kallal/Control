CREATE TABLE [locSMSProviders] (
  [ID] LONG  CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [ServiceProvider] VARCHAR (255),
  [EmailSuffix] VARCHAR (255)
)
