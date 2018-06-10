USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbProdutos]    Script Date: 10/06/2018 01:32:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbProdutos](
	[codProduto] [int] NOT NULL,
	[codEmpresa] [int] NOT NULL,
	[nome] [nvarchar](250) NULL,
	[dataUltimaCompra] [datetime] NULL,
	[valorUltimaCompra] [decimal](18, 2) NULL,
	[valorUltimoICMS] [decimal](18, 2) NULL,
	[valorUltimoIPI] [decimal](18, 2) NULL,
	[ativo] [bit] NOT NULL,
 CONSTRAINT [PK_tbProdutos] PRIMARY KEY CLUSTERED 
(
	[codProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbProdutos] ADD  CONSTRAINT [DF_tbProdutos_ativo]  DEFAULT ((1)) FOR [ativo]
GO

ALTER TABLE [dbo].[tbProdutos]  WITH CHECK ADD  CONSTRAINT [FK_tbProdutos_tbEmpresas] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[tbEmpresas] ([codEmpresa])
GO

ALTER TABLE [dbo].[tbProdutos] CHECK CONSTRAINT [FK_tbProdutos_tbEmpresas]
GO