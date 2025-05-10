CREATE TABLE [dbo].[Appointment] (
  [Appointment_ID] [int] NOT NULL,
  [Date] [date] NULL,
  [Time] [time] NULL,
  [Patient_ID] [int] NULL,
  [Doctor_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([Appointment_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Appointment]
  ADD FOREIGN KEY ([Doctor_ID]) REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO

ALTER TABLE [dbo].[Appointment]
  ADD FOREIGN KEY ([Patient_ID]) REFERENCES [dbo].[Patient] ([Patient_ID])
GO