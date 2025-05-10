CREATE TABLE [dbo].[Admission] (
  [Admission_ID] [int] NOT NULL,
  [Patient_ID] [int] NULL,
  [Room_ID] [int] NULL,
  [Admit_Date] [date] NULL,
  [Discharge_Date] [date] NULL,
  PRIMARY KEY CLUSTERED ([Admission_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Admission]
  ADD FOREIGN KEY ([Patient_ID]) REFERENCES [dbo].[Patient] ([Patient_ID])
GO

ALTER TABLE [dbo].[Admission]
  ADD FOREIGN KEY ([Room_ID]) REFERENCES [dbo].[Room] ([Room_ID])
GO