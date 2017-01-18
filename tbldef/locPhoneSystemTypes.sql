CREATE TABLE [locPhoneSystemTypes] (
  [ID] LONG  CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [PhoneType] VARCHAR (255),
  [ApplicationName] VARCHAR (255),
  [ApplicationFolder] VARCHAR (255)
)
