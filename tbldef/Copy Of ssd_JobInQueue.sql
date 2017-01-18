CREATE TABLE [Copy Of ssd_JobInQueue] (
  [ProductID] LONG ,
  [QueueID] LONG ,
  [StatusInQueue] LONG ,
  [TimeAddedToQueue] DATETIME ,
  [EventID] LONG ,
  [Priority] DOUBLE ,
  [IsWaitingForSoftProof] BIT ,
  [IsWaitingForOrderChangeApproval] BIT ,
   CONSTRAINT [JobInQueue1_PrimaryKey] PRIMARY KEY ([ProductID], [QueueID])
)
