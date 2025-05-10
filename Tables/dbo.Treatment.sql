CREATE TABLE [dbo].[Treatment] (
  [Treatment_ID] [int] NOT NULL,
  [Description] [text] NULL,
  [Cost] [decimal](10, 2) NULL,
  [Patient_ID] [int] NULL,
  [Doctor_ID] [int] NULL,
  PRIMARY KEY CLUSTERED ([Treatment_ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Treatment]
  ADD FOREIGN KEY ([Doctor_ID]) REFERENCES [dbo].[Doctor] ([Doctor_ID])
GO

ALTER TABLE [dbo].[Treatment]
  ADD FOREIGN KEY ([Patient_ID]) REFERENCES [dbo].[Patient] ([Patient_ID])
GO