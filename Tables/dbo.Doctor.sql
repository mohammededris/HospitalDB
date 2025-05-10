CREATE TABLE [dbo].[Doctor] (
  [Doctor_ID] [int] NOT NULL,
  [Name] [varchar](100) NULL,
  [Specialization] [varchar](100) NULL,
  [Phone] [varchar](20) NULL,
  [Email] [varchar](100) NULL,
  [Dept_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([Doctor_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Doctor]
  ADD FOREIGN KEY ([Dept_ID]) REFERENCES [dbo].[Department] ([Dept_ID])
GO