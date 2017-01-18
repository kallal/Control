CREATE TABLE [loc_KomoriStatusCodes] (
  [id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [KomoriCategoryID] LONG ,
  [KomoriItemID] LONG ,
  [CategoryDescription] VARCHAR (255),
  [ItemDescription] VARCHAR (255)
)
