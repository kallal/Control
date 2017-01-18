CREATE TABLE [loc_T_StatusRecord] (
  [DeviceID] LONG ,
  [RecordDate] DATETIME ,
  [CategoryID] LONG ,
  [ItemID] LONG ,
  [AutoRecognition] BIT ,
  [Speed] LONG ,
  [WorkingTime] LONG ,
  [GoodPrintingTime] LONG ,
  [TotalSheets] VARCHAR (255),
  [PrintSheets] VARCHAR (255),
  [GoodSheets] VARCHAR (255),
  [BlanketSheets] LONG ,
  [Interval] DOUBLE ,
   CONSTRAINT [PK_T_StatusRecord] PRIMARY KEY ([DeviceID], [RecordDate], [CategoryID], [ItemID])
)
