CREATE TABLE [locInvoiceTaxAmounts] (
  [id] LONG  CONSTRAINT [PrimaryKey] PRIMARY KEY  UNIQUE  NOT NULL ,
  [txtTaxAmt] DOUBLE ,
  [txtNonTaxAmt] LONG 
)
