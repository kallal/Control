CREATE TABLE [loc_SSD_SearchSettings] (
  [ID] LONG  CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [frmShowQueue] LONG ,
  [frmShowPrinted] LONG ,
  [txtCustomerName] VARCHAR (255),
  [txtOrderNumber] VARCHAR (255)
)
