CREATE TABLE [dbo].[Room] (
  [Room_ID] [int] NOT NULL,
  [Room_Type] [varchar](50) NULL,
  [Capacity] [int] NULL,
  [Dept_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([Room_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Room]
  ADD FOREIGN KEY ([Dept_ID]) REFERENCES [dbo].[Department] ([Dept_ID])
GO