USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbNFesItens]    Script Date: 10/06/2018 00:29:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbNFesItens](
	[numeroNfe] [int] NOT NULL,
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
 CONSTRAINT [PK_tbNFesItens] PRIMARY KEY CLUSTERED 
(
	[numeroNfe] ASC,
	[numeroItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbNFesItens]  WITH CHECK ADD  CONSTRAINT [FK_tbNFesItens_tbNfes] FOREIGN KEY([numeroNfe])
REFERENCES [dbo].[tbNfes] ([numeroNfe])
GO

ALTER TABLE [dbo].[tbNFesItens] CHECK CONSTRAINT [FK_tbNFesItens_tbNfes]
GO

ALTER TABLE [dbo].[tbNFesItens]  WITH CHECK ADD  CONSTRAINT [FK_tbNFesItens_tbProdutos] FOREIGN KEY([codProduto])
REFERENCES [dbo].[tbProdutos] ([codProduto])
GO

ALTER TABLE [dbo].[tbNFesItens] CHECK CONSTRAINT [FK_tbNFesItens_tbProdutos]
GO


