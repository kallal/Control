CREATE TABLE [pdqImposition] (
  [QuoteID] VARCHAR (255),
  [SectionName] VARCHAR (255),
  [TotalNetSheets] LONG ,
  [TotalGrossSheets] LONG ,
  [NetPlates] VARCHAR (255),
  [Bleed] VARCHAR (255),
  [GripFront] VARCHAR (255),
  [BackEdge] VARCHAR (255),
  [SideLayLeft] VARCHAR (255),
  [SideLayRight] VARCHAR (255),
  [PaperX] VARCHAR (255),
  [PaperXInch] DOUBLE ,
  [PaperY] VARCHAR (255),
  [PaperYInch] DOUBLE ,
  [Details] LONGTEXT ,
  [MasterX] VARCHAR (255),
  [MasterXInch] DOUBLE ,
  [MasterY] VARCHAR (255),
  [MasterYinch] DOUBLE ,
  [PaperCost] DOUBLE 
)
