CREATE TABLE [dbo].[Prescription] (
  [Prescription_ID] [int] NOT NULL,
  [Date] [date] NULL,
  [Patient_ID] [int] NULL,
  [Doctor_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([Prescription_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Prescription]
  ADD FOREIGN KEY ([Doctor_ID]) REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO

ALTER TABLE [dbo].[Prescription]
  ADD FOREIGN KEY ([Patient_ID]) REFERENCES [dbo].[Patient] ([Patient_ID])
GO