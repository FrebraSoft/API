USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbNFesRecebidasItens]    Script Date: 10/06/2018 04:52:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbNFesRecebidasItens](
	[numeroNfeRecebida] [int] NOT NULL,
	[numeroItem] [int] NOT NULL,
	[codProduto] [int] NOT NULL,
	[cfop] [int] NOT NULL,
	[numeroLote] [int] NOT NULL,
	[quantidade] [decimal](18, 2) NOT NULL,
	[valor] [decimal](18, 2) NOT NULL,
	[percentualICMS] [decimal](18, 2) NOT NULL,
	[percentualIPI] [decimal](18, 2) NOT NULL,
	[valorICMS] [decimal](18, 2) NOT NULL,
	[valorIPI] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tbNFesRecebidasItens] PRIMARY KEY CLUSTERED 
(
	[numeroNfeRecebida] ASC,
	[numeroItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbNFesRecebidasItens]  WITH CHECK ADD  CONSTRAINT [FK_tbNFesRecebidasItens_tbProdutos] FOREIGN KEY([codProduto])
REFERENCES [dbo].[tbProdutos] ([codProduto])
GO

ALTER TABLE [dbo].[tbNFesRecebidasItens] CHECK CONSTRAINT [FK_tbNFesRecebidasItens_tbProdutos]