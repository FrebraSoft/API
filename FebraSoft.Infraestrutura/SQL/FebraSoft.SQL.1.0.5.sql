USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbNfes]    Script Date: 09/06/2018 23:41:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbNfes](
	[numeroNfe] [int] NOT NULL,
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
