CREATE TABLE [NOTUSED_dbo_CriticalPathDates] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [ProjectComponentID] LONG ,
  [Type] LONG ,
  [Description] VARCHAR (255),
  [DateOutEst] DATETIME ,
  [DateOutFirst] DATETIME ,
  [DateOutActual] DATETIME ,
  [DateBackEst] DATETIME ,
  [DateBackActual] DATETIME ,
  [DateRelativeYN] BIT ,
  [DateSolidYN] BIT ,
  [CPPrerequisite] LONG ,
  [ProjectComponentIDPrerequisite] LONG ,
  [ContactType] LONG ,
  [ContactGeneral] LONG ,
  [ContactName] LONG ,
  [ProofApprovedYN] BIT 
)
