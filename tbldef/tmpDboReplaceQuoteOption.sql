CREATE TABLE [tmpDboReplaceQuoteOption] (
  [ID] LONG  CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [frmSelectQuote] LONG ,
  [frmReplaceOption] LONG ,
  [frmSelectPriceOption] LONG 
)
