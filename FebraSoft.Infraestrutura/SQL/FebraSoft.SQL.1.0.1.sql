USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 09/06/2018 12:09:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbUsuarios](
	[codUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](250) NULL,
	[usuario] [nvarchar](250) NULL,
	[senha] [nvarchar](150) NULL,
	[dataCadastro] [datetime] NULL,
	[ativo] [bit] NULL,
 CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED 
(
	[codUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbUsuarios] ADD  CONSTRAINT [DF_tbUsuarios_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO

ALTER TABLE [dbo].[tbUsuarios] ADD  CONSTRAINT [DF_tbUsuarios_ativo]  DEFAULT ((1)) FOR [ativo]
GO