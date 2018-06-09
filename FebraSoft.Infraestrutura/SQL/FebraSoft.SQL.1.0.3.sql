USE [FebraSoftDB]
GO

/****** Object:  Table [dbo].[tbClientes]    Script Date: 09/06/2018 12:20:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbClientes](
	[codCliente] [int] IDENTITY(1,1) NOT NULL,
	[codEmpresa] [int] NULL,
	[razaoSocial] [nvarchar](250) NOT NULL,
	[nomeFantasia] [nvarchar](250) NULL,
	[cpfcnpj] [nvarchar](50) NOT NULL,
	[logradouro] [nvarchar](50) NULL,
	[numero] [nvarchar](50) NULL,
	[complemento] [nvarchar](50) NULL,
	[bairro] [nvarchar](50) NULL,
	[cidade] [nvarchar](50) NULL,
	[uf] [char](2) NULL,
	[provavel] [int] NULL,
 CONSTRAINT [PK_tbClientes] PRIMARY KEY CLUSTERED 
(
	[codCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbClientes] ADD  CONSTRAINT [DF_tbClientes_provavel]  DEFAULT ((0)) FOR [provavel]
GO

ALTER TABLE [dbo].[tbClientes]  WITH CHECK ADD  CONSTRAINT [FK_tbClientes_tbEmpresas] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[tbEmpresas] ([codEmpresa])
GO

ALTER TABLE [dbo].[tbClientes] CHECK CONSTRAINT [FK_tbClientes_tbEmpresas]
GO