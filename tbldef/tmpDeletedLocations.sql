CREATE TABLE [tmpDeletedLocations] (
  [ID] AUTOINCREMENT,
  [IsActive] BIT ,
  [ContactGeneralID] LONG ,
  [LocationName] VARCHAR (80),
  [ADD1] VARCHAR (255),
  [ADD2] VARCHAR (255),
  [CITY] VARCHAR (50),
  [PROV] VARCHAR (20),
  [PC] VARCHAR (20),
  [Country_old] VARCHAR (20),
  [PhMain] VARCHAR (20),
  [PhFax] VARCHAR (20),
  [PhTollFree] VARCHAR (20),
  [Notes] LONGTEXT ,
  [LastEdited] DATETIME ,
  [LastEditedBy] LONG ,
  [COUNTRY] VARCHAR (50),
  [Verified] BIT ,
  [VerifiedBy] LONG ,
  [VerifiedOn] DATETIME ,
  [MailXmasCardYN] BIT ,
  [DeleteYN] BIT 
)
