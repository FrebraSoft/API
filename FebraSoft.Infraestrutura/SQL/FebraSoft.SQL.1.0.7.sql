USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbFornecedores]    Script Date: 10/06/2018 04:51:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbFornecedores](
	[codFornecedor] [int] IDENTITY(1,1) NOT NULL,
	[razaoSocial] [nvarchar](250) NULL,
	[cnpj] [nvarchar](250) NULL,
	[ativo] [bit] NULL,
 CONSTRAINT [PK_tbFornecedores] PRIMARY KEY CLUSTERED 
(
	[codFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbFornecedores] ADD  CONSTRAINT [DF_tbFornecedores_ativo]  DEFAULT ((1)) FOR [ativo]