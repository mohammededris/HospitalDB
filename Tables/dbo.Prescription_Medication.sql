CREATE TABLE [dbo].[Prescription_Medication] (
  [Prescription_ID] [int] NOT NULL,
  [Med_ID] [int] NOT NULL,
  [Quantity] [int] NULL,
  PRIMARY KEY CLUSTERED ([Prescription_ID], [Med_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Prescription_Medication]
  ADD FOREIGN KEY ([Med_ID]) REFERENCES [dbo].[Medication] ([Med_ID])
GO

ALTER TABLE [dbo].[Prescription_Medication]
  ADD FOREIGN KEY ([Prescription_ID]) REFERENCES [dbo].[Prescription] ([Prescription_ID])
GO