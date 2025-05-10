CREATE TABLE [dbo].[Medication] (
  [Med_ID] [int] NOT NULL,
  [Name] [varchar](100) NULL,
  [Dosage] [varchar](50) NULL,
  PRIMARY KEY CLUSTERED ([Med_ID])
)
ON [PRIMARY]
GO