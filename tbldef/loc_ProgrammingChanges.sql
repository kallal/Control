CREATE TABLE [loc_ProgrammingChanges] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [Version] VARCHAR (255),
  [Changes] LONGTEXT 
)
