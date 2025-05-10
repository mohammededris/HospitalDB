CREATE TABLE [dbo].[Patient] (
  [Patient_ID] [int] NOT NULL,
  [Name] [varchar](100) NULL,
  [Gender] [char](1) NULL,
  [Date_Of_Birth] [date] NULL,
  [Phone] [varchar](20) NULL,
  [Address] [text] NULL,
  PRIMARY KEY CLUSTERED ([Patient_ID]),
  CHECK ([Gender]='F' OR [Gender]='M')
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO