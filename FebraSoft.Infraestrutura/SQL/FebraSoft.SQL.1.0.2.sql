USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbEmpresas]    Script Date: 09/06/2018 12:14:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbEmpresas](
	[codEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](250) NULL,
	[cnpj] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbEmpresas] PRIMARY KEY CLUSTERED 
(
	[codEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO