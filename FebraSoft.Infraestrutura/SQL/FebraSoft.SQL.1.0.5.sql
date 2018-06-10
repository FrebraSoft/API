USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbNfes]    Script Date: 10/06/2018 04:47:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbNfes](
	[numeroNfe] [int] NOT NULL,
	[codCliente] [int] NOT NULL,
	[dataEmissao] [datetime] NULL,
	[chaveAcesso] [nvarchar](250) NULL,
	[xml] [xml] NULL,
	[valorTotalProdutos] [decimal](18, 2) NULL,
	[valorTotalNFe] [decimal](18, 2) NULL,
	[valorTotalICMS] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbNfes] PRIMARY KEY CLUSTERED 
(
	[numeroNfe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbNfes]  WITH CHECK ADD  CONSTRAINT [FK_tbNfes_tbClientes] FOREIGN KEY([codCliente])
REFERENCES [dbo].[tbClientes] ([codCliente])
GO

ALTER TABLE [dbo].[tbNfes] CHECK CONSTRAINT [FK_tbNfes_tbClientes]
GO