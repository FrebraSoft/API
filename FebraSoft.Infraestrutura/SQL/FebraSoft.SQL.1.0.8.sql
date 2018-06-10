USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbNfesRecebidas]    Script Date: 10/06/2018 04:51:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbNfesRecebidas](
	[numeroNfeRecebida] [int] NOT NULL,
	[codFornecedor] [int] NOT NULL,
	[dataEmissao] [datetime] NULL,
	[chaveAcesso] [nvarchar](250) NULL,
	[xml] [xml] NULL,
	[valorTotalProdutos] [decimal](18, 2) NULL,
	[valorTotalNFe] [decimal](18, 2) NULL,
	[valorTotalICMS] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbNfesRecebidas] PRIMARY KEY CLUSTERED 
(
	[numeroNfeRecebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbNfesRecebidas]  WITH CHECK ADD  CONSTRAINT [FK_tbNfesRecebidas_tbFornecedores] FOREIGN KEY([codFornecedor])
REFERENCES [dbo].[tbFornecedores] ([codFornecedor])
GO

ALTER TABLE [dbo].[tbNfesRecebidas] CHECK CONSTRAINT [FK_tbNfesRecebidas_tbFornecedores]