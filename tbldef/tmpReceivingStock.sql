CREATE TABLE [tmpReceivingStock] (
  [PurchasingStockID] LONG  CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [IsSelected] BIT ,
  [QtyToReceive] LONG 
)
