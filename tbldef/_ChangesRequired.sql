CREATE TABLE [_ChangesRequired] (
  [Complete] BIT ,
  [Priority] LONG ,
  [Description] VARCHAR (255),
  [Area] VARCHAR (255),
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL 
)
