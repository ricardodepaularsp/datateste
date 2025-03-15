USE [ClinicaERP365]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[UserName] [varchar](60) NOT NULL,
	[Senha] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aliquota]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aliquota](
	[UfIDOrigem] [smallint] NOT NULL,
	[UfIDDestino] [smallint] NOT NULL,
	[PercAliqInterestadual] [decimal](5, 2) NOT NULL,
	[PercAliqImportado] [decimal](5, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AliquotaICMS] PRIMARY KEY CLUSTERED 
(
	[UfIDOrigem] ASC,
	[UfIDDestino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aliquota_Produto]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aliquota_Produto](
	[EmpresaID] [bigint] NOT NULL,
	[ImpostoID] [varchar](10) NOT NULL,
	[Aliquota] [decimal](9, 2) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Aliquota_Produto] PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC,
	[ImpostoID] ASC,
	[Aliquota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ambiente]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ambiente](
	[AmbienteID] [tinyint] NOT NULL,
	[Descricao] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsAmbienteProdutivo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmbienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anp]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anp](
	[AnpID] [varchar](9) NOT NULL,
	[AnpDescricao] [varchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Anp] PRIMARY KEY CLUSTERED 
(
	[AnpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArquivoRemessa]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArquivoRemessa](
	[ContaBancariaID] [int] NOT NULL,
	[CarteiraBancariaID] [smallint] NOT NULL,
	[NroLoteRemessa] [int] NOT NULL,
	[DataGeracaoArquivo] [datetime] NOT NULL,
	[LinhaHeader] [varchar](405) NULL,
	[LinhaTrailler] [varchar](405) NULL,
	[StatusID] [smallint] NOT NULL,
	[PathGravacaoArquivo] [varchar](500) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ArquivoRemessa] PRIMARY KEY CLUSTERED 
(
	[ContaBancariaID] ASC,
	[CarteiraBancariaID] ASC,
	[NroLoteRemessa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArquivoRemessaItens]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArquivoRemessaItens](
	[ContaBancariaID] [int] NOT NULL,
	[CarteiraBancariaID] [smallint] NOT NULL,
	[NroLoteRemessa] [int] NOT NULL,
	[NroItem] [int] NOT NULL,
	[LinhaDetalhe] [varchar](405) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ArquivoRemessaItens] PRIMARY KEY CLUSTERED 
(
	[ContaBancariaID] ASC,
	[CarteiraBancariaID] ASC,
	[NroLoteRemessa] ASC,
	[NroItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArquivoRetorno]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArquivoRetorno](
	[ContaBancariaID] [int] NOT NULL,
	[CarteiraBancariaID] [smallint] NOT NULL,
	[NroLoteRetorno] [int] NOT NULL,
	[DataGeracaoArquivo] [datetime] NOT NULL,
	[LinhaHeader] [varchar](405) NULL,
	[LinhaTrailler] [varchar](405) NULL,
	[StatusID] [smallint] NOT NULL,
	[PathGravacaoArquivo] [varchar](500) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ArquivoRetorno] PRIMARY KEY CLUSTERED 
(
	[ContaBancariaID] ASC,
	[CarteiraBancariaID] ASC,
	[NroLoteRetorno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArquivoRetornoItens]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArquivoRetornoItens](
	[ContaBancariaID] [int] NOT NULL,
	[CarteiraBancariaID] [smallint] NOT NULL,
	[NroLoteRetorno] [int] NOT NULL,
	[NroItem] [int] NOT NULL,
	[LinhaDetalhe] [varchar](405) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[CodigoOcorrencia] [smallint] NULL,
 CONSTRAINT [PK_ArquivoRetornoItens] PRIMARY KEY CLUSTERED 
(
	[ContaBancariaID] ASC,
	[CarteiraBancariaID] ASC,
	[NroLoteRetorno] ASC,
	[NroItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArquivosAnexos]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArquivosAnexos](
	[EmpresaID] [bigint] NOT NULL,
	[ArquivoID] [int] IDENTITY(1,1) NOT NULL,
	[ContasReceberID] [int] NULL,
	[ContasPagarID] [int] NULL,
	[NomeArquivo] [varchar](150) NULL,
	[Arquivo] [varbinary](max) NULL,
	[Size] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UserName] [varchar](50) NULL,
	[ContratoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC,
	[ArquivoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assinante]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assinante](
	[AssinanteID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[InicioVigencia] [datetime] NULL,
	[TerminoVigencia] [datetime] NULL,
	[TerminoPeriodoFree] [datetime] NULL,
	[Cpf] [varchar](14) NULL,
	[Email] [varchar](150) NULL,
	[ParceiroID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssinanteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atestado]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atestado](
	[AtestadoID] [int] IDENTITY(1,1) NOT NULL,
	[PacienteID] [int] NOT NULL,
	[DataAtestado] [datetime] NOT NULL,
	[DataInicioAfastamento] [datetime] NULL,
	[DataFimAfastamento] [datetime] NULL,
	[Motivo] [nvarchar](255) NULL,
	[Observacoes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AtestadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutorizacaoArea]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorizacaoArea](
	[AreaID] [varchar](50) NOT NULL,
	[AreaDescricao] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AutorizacaoArea] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutorizacaoTransacao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorizacaoTransacao](
	[AreaID] [varchar](50) NOT NULL,
	[TransacaoID] [varchar](50) NOT NULL,
	[TransacaoDescricao] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AutorizacaoTransacao] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC,
	[TransacaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BancosFebraban]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BancosFebraban](
	[BancoID] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [varchar](10) NULL,
	[Nome] [varchar](150) NULL,
	[Cnpj] [varchar](20) NULL,
	[UrlSite] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[ImagemLogoBase64] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BancoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoletoBancario]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoletoBancario](
	[BoletoBancarioID] [bigint] IDENTITY(1,1) NOT NULL,
	[ContaBancariaID] [int] NOT NULL,
	[CateiraCobrancaID] [smallint] NOT NULL,
	[ContaReceberID] [int] NOT NULL,
	[NossoNro] [int] NOT NULL,
	[NrDocumento] [varchar](10) NULL,
	[DataVencimento] [datetime] NULL,
	[ValorTitulo] [decimal](11, 2) NULL,
	[EspecieCobrancaID] [smallint] NOT NULL,
	[DataEmissao] [datetime] NOT NULL,
	[ValorJurosPorDia] [decimal](11, 2) NULL,
	[DataLimiteDesconto] [datetime] NULL,
	[ValorDesconto] [decimal](11, 2) NULL,
	[ValorIOF] [decimal](11, 2) NULL,
	[ValorAbatimento] [decimal](11, 2) NULL,
	[ClienteID] [int] NOT NULL,
	[DataMora] [datetime] NULL,
	[StatusID] [smallint] NOT NULL,
	[BancoCobradorID] [int] NULL,
	[AgenciaCobradora] [varchar](4) NULL,
	[AgenciaCobradoraDac] [smallint] NULL,
	[ValorTarifaCobranca] [decimal](11, 2) NULL,
	[ValorIOFRecolhido] [decimal](11, 2) NULL,
	[ValorAbatimentoConcedido] [decimal](11, 2) NULL,
	[ValorDescontoConcedido] [decimal](11, 2) NULL,
	[ValorLancadoContaCorrente] [decimal](11, 2) NULL,
	[ValorMoraMultaCreditado] [decimal](11, 2) NULL,
	[ValorOutrosCreditosContaCorrente] [decimal](11, 2) NULL,
	[DataCreditoContaCorrente] [datetime] NULL,
	[CodigoLiquidacaoID] [varchar](2) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[NroLoteRemessa] [int] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[Instrucoes] [varchar](500) NULL,
	[AlteracaoVencimento] [bit] NULL,
	[CodigoInstrucao1] [char](2) NULL,
	[CodigoInstrucao2] [char](2) NULL,
	[Juros] [decimal](9, 2) NULL,
	[Multa] [decimal](9, 2) NULL,
	[TipoMulta] [char](1) NULL,
	[Protestar] [bit] NULL,
 CONSTRAINT [PK_BoletoBancario] PRIMARY KEY CLUSTERED 
(
	[BoletoBancarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarteiraCobranca]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarteiraCobranca](
	[CarteiraCobrancaID] [smallint] NOT NULL,
	[DescricaoCarteiraCobranca] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[BancoID] [int] NOT NULL,
 CONSTRAINT [PK_CarteiraCobranca] PRIMARY KEY CLUSTERED 
(
	[CarteiraCobrancaID] ASC,
	[BancoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaEvento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaEvento](
	[CategoriaEventoID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[Cor] [varchar](30) NULL,
	[EmpresaID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaEventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaMarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaMarketPlace](
	[CategoriaID] [varchar](30) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Descricao] [varchar](150) NULL,
	[CategoriaPaiID] [varchar](30) NULL,
	[Nivel] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cest]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cest](
	[CestID] [varchar](7) NOT NULL,
	[CestDescricao] [varchar](800) NOT NULL,
	[NcmID] [varchar](8) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Cest] PRIMARY KEY CLUSTERED 
(
	[CestID] ASC,
	[NcmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cfop]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cfop](
	[CfopID] [smallint] NOT NULL,
	[CfopDescricao] [varchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Cfop] PRIMARY KEY CLUSTERED 
(
	[CfopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[TipoPessoa] [tinyint] NOT NULL,
	[CpfCnpj] [varchar](15) NULL,
	[NomeRazaoSocial] [varchar](100) NULL,
	[NomeFantasia] [varchar](100) NULL,
	[Endereco] [varchar](60) NULL,
	[NrEndereco] [varchar](30) NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NULL,
	[MunicipioID] [int] NULL,
	[EstadoID] [tinyint] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[Cep] [varchar](8) NULL,
	[Telefone] [varchar](14) NULL,
	[celular] [varchar](14) NULL,
	[email] [varchar](60) NULL,
	[url] [varchar](60) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[InscEstadual] [varchar](20) NULL,
	[InscMunicipal] [varchar](20) NULL,
	[PaisID] [smallint] NULL,
	[IndicadorInscEstadual] [tinyint] NULL,
	[NomeResponsavel] [varchar](100) NULL,
	[EmailResponsavel] [varchar](150) NULL,
	[TelefoneResponsavel] [varchar](20) NULL,
	[observacoes] [varchar](3000) NULL,
	[AssinanteID] [int] NULL,
	[IsClienteFinal] [bit] NULL,
	[Logo] [varbinary](max) NULL,
	[CodigoSuframa] [varchar](10) NULL,
	[ContratoID] [bigint] NULL,
	[EmpresaID] [bigint] NULL,
	[NomeMae] [nvarchar](120) NULL,
	[Sexo] [nchar](10) NULL,
	[DataNascimento] [datetime] NULL,
	[IDMigration] [int] NULL,
	[ClienteIDVinculado] [int] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[Periodicidade] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteContatos]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteContatos](
	[ClienteContatoID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](150) NULL,
	[Telefone] [varchar](20) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ClienteContatos] PRIMARY KEY CLUSTERED 
(
	[ClienteContatoID] ASC,
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteInteraction]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteInteraction](
	[InteractionID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[ColaboradorID] [int] NOT NULL,
	[MessagemEnviada] [varchar](1000) NULL,
	[Resposta] [varchar](1000) NULL,
	[ArquivoAnexo] [varbinary](max) NULL,
	[NomeArquivoAnexo] [varchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC,
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteReferenciaBancaria]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteReferenciaBancaria](
	[ClienteReferenciaBancariaID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[BancoID] [int] NOT NULL,
	[Agencia] [varchar](10) NULL,
	[DigitoAgencia] [char](1) NULL,
	[ContaCorrente] [varchar](10) NULL,
	[DigitoCC] [varchar](1) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[Contato] [varchar](100) NULL,
 CONSTRAINT [PK_ClienteReferenciaBancaria] PRIMARY KEY CLUSTERED 
(
	[ClienteReferenciaBancariaID] ASC,
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteReferencias]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteReferencias](
	[ClienteReferenciaID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](150) NULL,
	[Telefone] [varchar](20) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ClienteReferencias] PRIMARY KEY CLUSTERED 
(
	[ClienteReferenciaID] ASC,
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CobrancaBancaria]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CobrancaBancaria](
	[ContaBancariaID] [int] NOT NULL,
	[CarteiraCobrancaID] [smallint] NOT NULL,
	[CobrancaRegistrada] [bit] NOT NULL,
	[GeraArquivoRemessa] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[NroInicialLoteRemessa] [int] NULL,
	[NrUltimoLoteRemessa] [int] NULL,
	[NroInicialNossoNro] [bigint] NULL,
	[NroUltimoNossoNro] [bigint] NULL,
	[BancoID] [int] NOT NULL,
	[Convenio] [varchar](15) NULL,
 CONSTRAINT [PK_CobrancaBancaria] PRIMARY KEY CLUSTERED 
(
	[ContaBancariaID] ASC,
	[CarteiraCobrancaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colaborador]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaborador](
	[ColaboradorID] [int] IDENTITY(1,1) NOT NULL,
	[Cpf] [varchar](15) NULL,
	[Nome] [varchar](100) NULL,
	[Rg] [varchar](20) NULL,
	[Endereco] [varchar](60) NULL,
	[NrEndereco] [varchar](30) NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NULL,
	[MunicipioID] [int] NULL,
	[EstadoID] [tinyint] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[Cep] [varchar](8) NULL,
	[Telefone] [varchar](14) NULL,
	[celular] [varchar](14) NULL,
	[email] [varchar](60) NULL,
	[UserName] [varchar](150) NULL,
	[Senha] [varchar](150) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[SenhaAnterior] [varchar](30) NULL,
	[GrupoAuthID] [int] NULL,
	[BancoID] [int] NULL,
	[Agencia] [varchar](10) NULL,
	[DigitoAgencia] [char](1) NULL,
	[ContaCorrente] [varchar](10) NULL,
	[DigitoCC] [char](1) NULL,
	[AssinanteID] [int] NULL,
	[logo] [varbinary](max) NULL,
	[UsuarioBloqueado] [bit] NULL,
	[IsVendedor] [bit] NULL,
	[IsAdm] [bit] NULL,
	[Observacoes] [nvarchar](max) NULL,
	[PercentualComissao] [money] NULL,
	[ColaboradorIDMIgration] [int] NULL,
	[EmpresaID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ColaboradorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNQ_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonAliquota_Produto]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonAliquota_Produto](
	[ImpostoID] [varchar](10) NOT NULL,
	[Aliquota] [decimal](9, 2) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImpostoID] ASC,
	[Aliquota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonCategoriaEvento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonCategoriaEvento](
	[CategoriaEventoID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[Cor] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaEventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonParametro]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonParametro](
	[GrupoParametroID] [int] NOT NULL,
	[ParametroID] [int] NOT NULL,
	[ParametroDescricao] [varchar](250) NOT NULL,
	[ParametroValor] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GrupoParametroID] ASC,
	[ParametroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonPipelineGrupo]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonPipelineGrupo](
	[GrupoID] [smallint] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonPipelinePrioridade]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonPipelinePrioridade](
	[PrioridadeID] [smallint] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[PrioridadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonPlanoContas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonPlanoContas](
	[PlanoContasID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](150) NULL,
	[PlanoContasPaiID] [int] NULL,
	[TipoConta] [char](1) NULL,
	[CentroCusto] [varchar](15) NULL,
	[Cor] [varchar](30) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanoContasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[CompraID] [int] IDENTITY(1,1) NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[FornecedorID] [int] NOT NULL,
	[NfID] [bigint] NULL,
	[DataCompra] [datetime] NOT NULL,
	[ValorTotalProdutos] [decimal](15, 2) NULL,
	[ValorTotalAcrescimo] [decimal](15, 2) NULL,
	[ValorTotalDesconto] [decimal](15, 2) NULL,
	[ValorTotalFrete] [decimal](15, 2) NULL,
	[ValorTotalOutrasDesp] [decimal](15, 2) NULL,
	[ValorTotalVenda] [decimal](15, 2) NULL,
	[StatusID] [smallint] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[NumeroParcelas] [tinyint] NULL,
	[ValorPago] [decimal](15, 2) NULL,
	[ValorTroco] [decimal](15, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[StatusAprovacao] [smallint] NULL,
	[ContratoID] [bigint] NULL,
	[ColaboradorIDAutoriza] [bigint] NULL,
	[ClienteID] [int] NULL,
	[PedidoCompraID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraItem]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraItem](
	[CompraID] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[IdUnidadeComercial] [smallint] NULL,
	[QuantidadeComercial] [decimal](18, 0) NULL,
	[ValorUnitarioComercial] [decimal](15, 2) NULL,
	[ValorTotalProduto] [decimal](15, 2) NULL,
	[ValorFrete] [decimal](15, 2) NULL,
	[ValorSeguro] [decimal](15, 2) NULL,
	[ValorDesconto] [decimal](15, 2) NULL,
	[PercentualDesconto] [decimal](15, 2) NULL,
	[ValorDespesasAcessorias] [decimal](15, 2) NULL,
	[DescricaoProduto] [varchar](300) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_CompraItem] PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraParcelas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraParcelas](
	[CompraID] [int] NOT NULL,
	[Numero] [smallint] NOT NULL,
	[Vencimento] [datetime] NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC,
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConciliacaoBancaria]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConciliacaoBancaria](
	[ConciliacaoBancariaID] [int] IDENTITY(1,1) NOT NULL,
	[ContaBancariaID] [int] NOT NULL,
	[ContaID] [varchar](20) NOT NULL,
	[BancoID] [varchar](10) NOT NULL,
	[SaldoConta] [decimal](15, 2) NOT NULL,
	[DataSaldo] [datetime] NOT NULL,
	[DataInicio] [datetime] NOT NULL,
	[DataFim] [datetime] NOT NULL,
 CONSTRAINT [PK__Concilia__E6DB2EAD45BD0BF4] PRIMARY KEY CLUSTERED 
(
	[ConciliacaoBancariaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConciliacaoBancariaTransactions]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConciliacaoBancariaTransactions](
	[ConciliacaoBancariaID] [int] NOT NULL,
	[TransactionID] [varchar](50) NOT NULL,
	[TransactionType] [varchar](30) NOT NULL,
	[ContasPagarID] [int] NULL,
	[ContasReceberID] [int] NULL,
	[DataTransacao] [datetime] NOT NULL,
	[Valor] [decimal](15, 2) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ConciliacaoBancariaTransactions] PRIMARY KEY CLUSTERED 
(
	[ConciliacaoBancariaID] ASC,
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultoresContrato]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultoresContrato](
	[ID_Consultoria] [int] IDENTITY(1,1) NOT NULL,
	[ID_Contrato] [int] NULL,
	[ID_Funcionario] [int] NULL,
	[ValorComissao] [money] NULL,
	[PorcentagemComissao] [decimal](18, 1) NULL,
	[Id_FuncionarioCadastroComissao] [int] NULL,
	[Id_FuncionarioAlteracaoComissao] [int] NULL,
	[Data_atual_comissao] [datetime] NULL,
	[DataAltera_comissao] [datetime] NULL,
	[EmpresaID] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContaBancaria]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContaBancaria](
	[ContaBancariaID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Nome] [varchar](100) NULL,
	[BancoID] [int] NOT NULL,
	[Agencia] [varchar](10) NULL,
	[DigitoAgencia] [char](1) NULL,
	[ContaCorrente] [varchar](10) NULL,
	[DigitoCC] [char](1) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[EmiteBoleto] [bit] NULL,
	[CodigoCedente] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContaBancariaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContasPagar]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContasPagar](
	[ContasPagarID] [int] IDENTITY(1,1) NOT NULL,
	[CompraID] [int] NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[FornecedorID] [int] NULL,
	[NfID] [bigint] NULL,
	[PlanoContasID] [int] NULL,
	[Descricao] [varchar](150) NULL,
	[NumeroParcela] [tinyint] NULL,
	[Documento] [varchar](50) NULL,
	[DataLancamento] [datetime] NOT NULL,
	[DataVencimento] [datetime] NOT NULL,
	[Valor] [decimal](15, 2) NULL,
	[StatusID] [tinyint] NULL,
	[DataPagamento] [datetime] NULL,
	[ValorPago] [decimal](15, 2) NULL,
	[EmpresaID] [bigint] NOT NULL,
	[TotalParcelas] [tinyint] NULL,
	[Situacao] [char](1) NULL,
	[DespesaFixa] [bit] NULL,
	[ParcelasLancadas] [smallint] NULL,
	[ColaboradorID] [int] NULL,
	[SubContaID] [int] NULL,
	[OrigemDespesa] [tinyint] NULL,
	[EnvolvidoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContasPagarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContasReceber]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContasReceber](
	[ContasReceberID] [int] IDENTITY(1,1) NOT NULL,
	[VendaID] [bigint] NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[ClienteID] [int] NULL,
	[NfID] [bigint] NULL,
	[PlanoContasID] [int] NULL,
	[Descricao] [varchar](150) NULL,
	[NumeroParcela] [tinyint] NULL,
	[Documento] [varchar](50) NULL,
	[DataLancamento] [datetime] NOT NULL,
	[DataVencimento] [datetime] NOT NULL,
	[Valor] [decimal](15, 2) NULL,
	[StatusID] [tinyint] NULL,
	[DataPagamento] [datetime] NULL,
	[ValorPago] [decimal](15, 2) NULL,
	[VendaServicoID] [int] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[TotalParcelas] [tinyint] NULL,
	[Situacao] [char](1) NULL,
	[BoletoBancarioID] [bigint] NULL,
	[ReceitaFixa] [bit] NULL,
	[ParcelasLancadas] [smallint] NULL,
	[SubContaID] [int] NULL,
	[EnvolvidoID] [int] NULL,
	[OrigemDespesa] [tinyint] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[Periodicidade] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContasReceberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoCamposCustomizados]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoCamposCustomizados](
	[EmpresaID] [bigint] NOT NULL,
	[TabelaID] [varchar](100) NOT NULL,
	[CampoID] [int] NOT NULL,
	[Descricao] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC,
	[TabelaID] ASC,
	[CampoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoCliente]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoCliente](
	[RelacaoID] [int] IDENTITY(1,1) NOT NULL,
	[ContratoID] [int] NULL,
	[ClienteID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdateOn] [datetime] NULL,
 CONSTRAINT [PK_ContratoCliente] PRIMARY KEY CLUSTERED 
(
	[RelacaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoServico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoServico](
	[ContratoID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[ClienteID] [int] NOT NULL,
	[TemplateID] [int] NULL,
	[InicioVigencia] [datetime] NOT NULL,
	[TerminoVigencia] [datetime] NULL,
	[StatusID] [varchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[QuantidadeEquipamentos] [smallint] NULL,
	[ValorTotal] [decimal](15, 2) NULL,
	[Descricao] [varchar](200) NULL,
	[CodigoInterno] [varchar](60) NULL,
	[AlertaVigencia] [bit] NULL,
	[DiasAntecedenciaAlertaVigencia] [smallint] NULL,
	[DescricaoNFSe] [varchar](500) NULL,
	[ServicoID] [int] NULL,
	[EmailDestinatario] [varchar](90) NULL,
	[PlanoContasID] [int] NULL,
	[Aprovado] [bit] NULL,
	[Assinado] [bit] NULL,
	[EmailCC] [varchar](90) NULL,
	[IndiceReajusteID] [varchar](5) NULL,
	[TaxaReajuste] [decimal](9, 2) NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[ID_Operadora] [int] NULL,
	[TipoPlano] [int] NULL,
	[ColaboradorID] [int] NULL,
	[ColaboradorIDAutoriza] [int] NULL,
	[DataAutorizado] [date] NULL,
	[ID_FaturaSemDes] [int] NULL,
	[ID_FaturaDesc] [int] NULL,
	[PeriodoQuant] [int] NULL,
	[PeriodoTipo] [nvarchar](50) NULL,
	[Fator] [int] NULL,
	[Especie] [nvarchar](25) NULL,
	[Observacoes] [nvarchar](100) NULL,
	[VLFaturaDesconto] [money] NULL,
	[VLFaturaSemDescconto] [money] NULL,
	[ValorDesconto] [money] NULL,
	[Abatimento] [money] NULL,
	[GestorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContratoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoServicoAditivo]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoServicoAditivo](
	[ContratoID] [int] NOT NULL,
	[AditivoID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[StatusID] [varchar](5) NOT NULL,
	[TemplateID] [int] NOT NULL,
	[ServicoID] [int] NULL,
	[DescricaoNFSe] [varchar](500) NULL,
	[InicioVigencia] [datetime] NOT NULL,
	[IndiceReajusteID] [varchar](5) NULL,
	[Valor] [decimal](15, 2) NULL,
	[EmailDestinatario] [varchar](90) NULL,
	[PlanoContasID] [int] NULL,
	[Aprovado] [bit] NULL,
	[Assinado] [bit] NULL,
	[EmailCC] [varchar](90) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContratoID] ASC,
	[AditivoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoServicoAditivoParcelas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoServicoAditivoParcelas](
	[ContratoID] [int] NOT NULL,
	[AditivoID] [int] NOT NULL,
	[NumeroParcela] [smallint] NOT NULL,
	[TotalParcelas] [smallint] NOT NULL,
	[Periodicidade] [varchar](5) NOT NULL,
	[ValorFixo] [bit] NULL,
	[ParcelaUnica] [bit] NULL,
	[Valor] [decimal](15, 2) NOT NULL,
	[Vencimento] [datetime] NOT NULL,
	[VendaServicoID] [int] NULL,
	[Descricao] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContratoID] ASC,
	[AditivoID] ASC,
	[NumeroParcela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoServicoParcelas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoServicoParcelas](
	[ContratoID] [int] NOT NULL,
	[NumeroParcela] [smallint] NOT NULL,
	[TotalParcelas] [smallint] NOT NULL,
	[Periodicidade] [varchar](5) NOT NULL,
	[Valor] [decimal](15, 2) NOT NULL,
	[Vencimento] [datetime] NOT NULL,
	[VendaServicoID] [int] NULL,
	[StatusID] [smallint] NULL,
	[ContasReceberID] [int] NULL,
	[NumeroNFSe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContratoID] ASC,
	[NumeroParcela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContratoServicoProdutos]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratoServicoProdutos](
	[ContratoID] [int] NOT NULL,
	[IDProduto] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[quantidade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContratoID] ASC,
	[IDProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ddl_watson_table]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ddl_watson_table](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[objectName] [varchar](200) NULL,
	[objectCommand] [varchar](max) NULL,
	[eventDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeParaProdutoImportacaoXml]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeParaProdutoImportacaoXml](
	[CnpjEmissor] [varchar](14) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[CodigoProdutoEmissor] [varchar](60) NOT NULL,
	[CodigoBarras] [varchar](14) NOT NULL,
	[IdProduto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CnpjEmissor] ASC,
	[EmpresaID] ASC,
	[CodigoProdutoEmissor] ASC,
	[CodigoBarras] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[EmpresaID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[EmpresaID] [bigint] IDENTITY(1,1) NOT NULL,
	[Cnpj] [varchar](14) NOT NULL,
	[RazaoSocial] [varchar](100) NOT NULL,
	[NomeFantasia] [varchar](100) NULL,
	[InscEstadual] [varchar](20) NULL,
	[InscEstadualST] [varchar](20) NULL,
	[InscMunicipal] [varchar](20) NULL,
	[Endereco] [varchar](60) NOT NULL,
	[NrEndereco] [varchar](30) NOT NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NOT NULL,
	[MunicipioID] [int] NOT NULL,
	[Cep] [varchar](8) NOT NULL,
	[Telefone] [varchar](14) NULL,
	[CnaeFiscal] [varchar](15) NULL,
	[RegTributarioID] [smallint] NOT NULL,
	[CertificadoPfx] [varbinary](max) NULL,
	[SenhaCertificadoPfx] [varchar](100) NULL,
	[EmiteNFe] [bit] NULL,
	[EmiteNFSe] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[reti] [tinyint] NULL,
	[celular] [varchar](14) NULL,
	[email] [varchar](60) NULL,
	[url] [varchar](60) NULL,
	[logo] [varbinary](max) NULL,
	[VencimentoCertificado] [datetime] NULL,
	[CertificadoDigitalBase64] [text] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[EstadoID] [tinyint] NULL,
	[PaisID] [smallint] NULL,
	[DescricaoCnae] [varchar](150) NULL,
	[AssinanteID] [int] NULL,
	[EmiteNFCe] [bit] NULL,
	[UsaMarketplace] [bit] NULL,
	[UsaContratoCustom] [bit] NULL,
	[PlanoID] [int] NULL,
	[IndicaTelefonia] [bit] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaLojaMarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaLojaMarketPlace](
	[LojaMarketPlaceID] [int] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[UserName] [varchar](60) NULL,
	[Password] [varchar](20) NULL,
	[SellerId] [varchar](50) NULL,
	[ValorMensalidade] [decimal](15, 2) NULL,
	[ValorPorTransacao] [decimal](15, 2) NULL,
	[PercentualPorTransacao] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[LojaMarketPlaceID] ASC,
	[EmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaSerieNfe]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaSerieNfe](
	[EmpresaID] [bigint] NOT NULL,
	[SerieNfe] [smallint] NOT NULL,
	[NroNfeInicial] [int] NULL,
	[NroNfeUltimo] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmpresaSerieNfe] PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC,
	[SerieNfe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envolvido]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envolvido](
	[EnvolvidoID] [int] IDENTITY(1,1) NOT NULL,
	[TipoPessoa] [tinyint] NOT NULL,
	[CpfCnpj] [varchar](15) NULL,
	[NomeRazaoSocial] [varchar](100) NULL,
	[NomeFantasia] [varchar](100) NULL,
	[Endereco] [varchar](60) NULL,
	[NrEndereco] [varchar](30) NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NULL,
	[MunicipioID] [int] NULL,
	[EstadoID] [tinyint] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[Cep] [varchar](8) NULL,
	[Telefone] [varchar](14) NULL,
	[celular] [varchar](14) NULL,
	[email] [varchar](60) NULL,
	[PaisID] [smallint] NULL,
	[observacoes] [varchar](3000) NULL,
	[AssinanteID] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnvolvidoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecieCobranca]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecieCobranca](
	[EspecieCobrancaID] [smallint] NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EspecieCobranca] PRIMARY KEY CLUSTERED 
(
	[EspecieCobrancaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[EstadoID] [tinyint] NOT NULL,
	[EstadoDescricao] [varchar](100) NULL,
	[EstadoSigla] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstoqueLancamento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstoqueLancamento](
	[EstoqueLancamentoID] [int] IDENTITY(1,1) NOT NULL,
	[IdProduto] [int] NOT NULL,
	[TipoTransacao] [char](1) NOT NULL,
	[VendaID] [bigint] NULL,
	[NfID] [bigint] NULL,
	[CompraID] [int] NULL,
	[Quantidade] [decimal](5, 2) NULL,
	[DataTransacao] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EstoqueLancamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventoAgenda]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventoAgenda](
	[EventoID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[Title] [varchar](300) NOT NULL,
	[Start] [datetime] NULL,
	[End] [datetime] NULL,
	[AllDay] [bit] NULL,
	[Color] [varchar](30) NULL,
	[CategoriaEventoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamePacienteParcela]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamePacienteParcela](
	[ExamePacienteParcelaID] [int] IDENTITY(1,1) NOT NULL,
	[ExamePacienteID] [int] NOT NULL,
	[ParcelaNumero] [int] NOT NULL,
	[Valor] [decimal](10, 2) NOT NULL,
	[DataVencimento] [datetime] NOT NULL,
	[DataPagamento] [datetime] NULL,
	[StatusPagamento] [varchar](20) NOT NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AssinanteID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamePacienteParcelaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exames]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exames](
	[ExameID] [int] IDENTITY(1,1) NOT NULL,
	[NomeExame] [nvarchar](100) NOT NULL,
	[Descricao] [nvarchar](max) NULL,
	[TipoExameID] [int] NOT NULL,
	[Duracao] [time](7) NULL,
	[Validade] [int] NULL,
	[Ativo] [bit] NULL,
	[DataCadastro] [datetime] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AssinanteID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ExameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamesPacientes]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamesPacientes](
	[ExamePacienteID] [int] IDENTITY(1,1) NOT NULL,
	[PacienteID] [int] NOT NULL,
	[ExameID] [int] NOT NULL,
	[DataRealizacao] [datetime] NOT NULL,
	[ValorTotal] [decimal](10, 2) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Validade] [datetime] NULL,
	[Observacoes] [nvarchar](max) NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AssinanteID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamePacienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fatura]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fatura](
	[ID_Fatura] [int] IDENTITY(1,1) NOT NULL,
	[ID_Contrato] [int] NULL,
	[ID_Cliente] [int] NULL,
	[ID_Operadora] [int] NULL,
	[ValorAssinatura] [money] NULL,
	[PlMinFixoFixo] [nvarchar](50) NULL,
	[ExcedenteLocal] [money] NULL,
	[PlMovel] [money] NULL,
	[Compartilhamento] [money] NULL,
	[LD] [money] NULL,
	[Internet] [money] NULL,
	[OutroServicos] [money] NULL,
	[Doacao] [money] NULL,
	[BuscaAutomatica] [money] NULL,
	[Manutencao] [money] NULL,
	[LigacaoCelular] [money] NULL,
	[PlFixoFixoEstado] [money] NULL,
	[Promocoes] [money] NULL,
	[TotalFatura] [money] NULL,
	[Data] [date] NULL,
	[Mes] [nvarchar](50) NULL,
	[Ano] [nvarchar](50) NULL,
	[Desconto] [money] NULL,
	[QntLinhas] [int] NULL,
	[Observacoes] [nvarchar](250) NULL,
	[LinhaPrincipal] [nvarchar](50) NULL,
	[DataVencimento] [date] NULL,
	[ComDesconto] [bit] NULL,
	[SolucionaTI] [money] NULL,
	[EmpresaID] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaturaMovel]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaturaMovel](
	[ID_FaturaMovel] [int] IDENTITY(1,1) NOT NULL,
	[ID_Contrato] [int] NULL,
	[ID_Pacote] [int] NULL,
	[Qnt_PL_Pacote] [int] NULL,
	[Qnt_Linhas] [int] NULL,
	[ValorPacote] [money] NULL,
	[ComDesconto] [bit] NULL,
	[EmpresaID] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilaTransmissaoNfe]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilaTransmissaoNfe](
	[FilaID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[NfID] [bigint] NOT NULL,
	[AmbienteID] [bigint] NOT NULL,
	[MetodoWebService] [varchar](60) NOT NULL,
	[UrlWebService] [varchar](150) NOT NULL,
	[XmlEnvio] [xml] NOT NULL,
	[XmlRetorno] [xml] NULL,
	[StatusID] [smallint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_FilaTransmissaoNfe] PRIMARY KEY CLUSTERED 
(
	[FilaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilaTransmissaoNfeHistorico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilaTransmissaoNfeHistorico](
	[FilaID] [bigint] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[NfID] [bigint] NOT NULL,
	[AmbienteID] [bigint] NOT NULL,
	[MetodoWebService] [varchar](60) NOT NULL,
	[UrlWebService] [varchar](150) NOT NULL,
	[XmlEnvio] [xml] NOT NULL,
	[XmlRetorno] [xml] NULL,
	[StatusID] [smallint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[DataHistorico] [datetime] NOT NULL,
 CONSTRAINT [PK_FilaTransmissaoNfeHistorico] PRIMARY KEY CLUSTERED 
(
	[FilaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilaVendaServico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilaVendaServico](
	[FilaID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[NotaFiscalServicoID] [int] NOT NULL,
	[NomeMetodoWebService] [varchar](60) NOT NULL,
	[Stat] [int] NOT NULL,
	[NumeroLote] [bigint] NOT NULL,
	[SerieRPS] [varchar](15) NOT NULL,
	[NumeroRPS] [varchar](15) NOT NULL,
	[NumeroProtocolo] [int] NULL,
	[Xml_Envio] [xml] NULL,
	[Xml_Retorno] [xml] NULL,
	[UserName] [varchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[MunicipioID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FilaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilaVendaServicoHistorico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilaVendaServicoHistorico](
	[FilaHistoricoID] [bigint] IDENTITY(1,1) NOT NULL,
	[FilaID] [bigint] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[NotaFiscalServicoID] [int] NOT NULL,
	[NomeMetodoWebService] [varchar](60) NOT NULL,
	[Stat] [int] NOT NULL,
	[NumeroLote] [bigint] NOT NULL,
	[SerieRPS] [varchar](15) NOT NULL,
	[NumeroRPS] [varchar](15) NOT NULL,
	[Xml_Envio] [xml] NULL,
	[Xml_Retorno] [xml] NULL,
	[UserName] [varchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[NumeroProtocolo] [int] NULL,
	[MunicipioID] [int] NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FilaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaPagamento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaPagamento](
	[FormaPagamentoID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Parcelas] [tinyint] NULL,
	[IntervaloVencimento] [tinyint] NULL,
	[PermiteTroco] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FormaPagamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[FornecedorID] [int] IDENTITY(1,1) NOT NULL,
	[Cnpj] [varchar](15) NULL,
	[RazaoSocial] [varchar](100) NULL,
	[NomeFantasia] [varchar](100) NULL,
	[InscEstadual] [varchar](20) NULL,
	[InscMunicipal] [varchar](20) NULL,
	[NomeContato1] [varchar](100) NULL,
	[NomeContato2] [varchar](100) NULL,
	[Endereco] [varchar](60) NULL,
	[NrEndereco] [varchar](30) NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NULL,
	[MunicipioID] [int] NULL,
	[EstadoID] [tinyint] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[Cep] [varchar](8) NULL,
	[Telefone] [varchar](14) NULL,
	[celular] [varchar](14) NULL,
	[email] [varchar](60) NULL,
	[url] [varchar](60) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[PaisID] [smallint] NULL,
	[IndicadorInscEstadual] [tinyint] NULL,
	[EmpresaID] [bigint] NULL,
	[BancoID] [int] NULL,
	[Agencia] [varchar](10) NULL,
	[DigitoAgencia] [char](1) NULL,
	[ContaCorrente] [varchar](15) NULL,
	[DigitoCC] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[FornecedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FusoHorario]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FusoHorario](
	[UfID] [smallint] NOT NULL,
	[FusoHorarioUtc] [int] NOT NULL,
	[FusoHorarioUtcHorarioVerao] [int] NOT NULL,
	[HorarioVeraoAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_FusoHorario] PRIMARY KEY CLUSTERED 
(
	[UfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gestor]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gestor](
	[GestorID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](60) NULL,
	[RG] [nchar](14) NULL,
	[CPF] [nvarchar](14) NULL,
	[Email] [nvarchar](59) NULL,
	[ID_cadastradoPor] [int] NULL,
	[ID_AlteradoPor] [int] NULL,
	[DataAltera] [datetime] NULL,
	[Data_Atual] [datetime] NULL,
	[EmpresaID] [bigint] NULL,
 CONSTRAINT [PK_Gestor] PRIMARY KEY CLUSTERED 
(
	[GestorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoAutorizacao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAutorizacao](
	[GrupoAuthID] [int] NOT NULL,
	[GrupoAuth] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdateOn] [datetime] NOT NULL,
 CONSTRAINT [PK_GrupoAutorizacao] PRIMARY KEY CLUSTERED 
(
	[GrupoAuthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoAutorizacaoPermissao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAutorizacaoPermissao](
	[GrupoAuthID] [int] NOT NULL,
	[AreaID] [varchar](50) NOT NULL,
	[TransacaoID] [varchar](50) NOT NULL,
	[IsPermited] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_GrupoAutorizacaoPermissao] PRIMARY KEY CLUSTERED 
(
	[GrupoAuthID] ASC,
	[AreaID] ASC,
	[TransacaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoParametro]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoParametro](
	[GrupoParametroID] [smallint] NOT NULL,
	[GrupoDescricao] [varchar](150) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_GrupoParametro] PRIMARY KEY CLUSTERED 
(
	[GrupoParametroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstrucaoCobrancaRemessa]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstrucaoCobrancaRemessa](
	[Codigo] [char](2) NOT NULL,
	[Descricao] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linhas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linhas](
	[LinhaID] [int] IDENTITY(1,1) NOT NULL,
	[OperadoraID] [int] NULL,
	[FaturaID] [int] NULL,
	[NumeroLinha] [nchar](50) NULL,
	[ColaboradorID] [int] NULL,
	[ContratoID] [int] NULL,
	[Observacoes] [nchar](30) NULL,
	[DataAtual] [date] NULL,
	[EmpresaID] [bigint] NULL,
 CONSTRAINT [PK_Linhas] PRIMARY KEY CLUSTERED 
(
	[LinhaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogAcesso]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogAcesso](
	[AcessoID] [int] IDENTITY(1,1) NOT NULL,
	[AssinanteID] [int] NULL,
	[UserName] [varchar](150) NOT NULL,
	[StatusLogin] [smallint] NOT NULL,
	[DataHota] [datetime] NOT NULL,
	[AccessToken] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[AcessoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogErro]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogErro](
	[ErroID] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorMessage] [varchar](max) NULL,
	[InnerException] [varchar](max) NULL,
	[StackTrace] [varchar](max) NULL,
	[Url] [varchar](300) NULL,
	[UserName] [varchar](60) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ErroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LojaMarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LojaMarketPlace](
	[LojaMarketPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](150) NULL,
	[MarketPlaceID] [int] NULL,
	[UrlThumb] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LojaMarketPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[EmpresaID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketPlace](
	[MarketPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Menu] [varchar](100) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[DataTarget] [varchar](100) NOT NULL,
	[IconHexa] [varchar](30) NOT NULL,
	[Ordem] [tinyint] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MIGRA_CLIENTE]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MIGRA_CLIENTE](
	[NOME] [varchar](100) NULL,
	[RAZAO] [varchar](100) NULL,
	[ENDERECO] [varchar](60) NULL,
	[BAIRRO] [varchar](60) NULL,
	[FONE] [varchar](14) NULL,
	[FONERECADO] [varchar](14) NULL,
	[CELULAR] [varchar](14) NULL,
	[CNPJ_CGC] [varchar](15) NULL,
	[IE_RG] [varchar](20) NULL,
	[CEP] [varchar](8) NULL,
	[NOMSACADO] [varchar](100) NULL,
	[PRACAFAT] [varchar](100) NULL,
	[ENDERECOFAT] [varchar](60) NULL,
	[BAIRROFAT] [varchar](60) NULL,
	[COD_CIDADE_FAT] [varchar](100) NULL,
	[CEPFAT] [varchar](8) NULL,
	[EMAIL] [varchar](60) NULL,
	[DATCADASTRO] [varchar](100) NULL,
	[OBS] [varchar](100) NULL,
	[FONEREFCOME1] [varchar](14) NULL,
	[FONEREFCOME2] [varchar](14) NULL,
	[FONEREFPESSO1] [varchar](14) NULL,
	[FONEREFPESSO2] [varchar](14) NULL,
	[PESSOA_FISICA] [int] NULL,
	[COD_CIDADE] [int] NULL,
	[NUMERO_ENDERECO] [varchar](30) NULL,
	[CONTRIBUINTE] [varchar](100) NULL,
	[COMPLEMENTO] [varchar](60) NULL,
	[FONE_COMERCIAL] [varchar](14) NULL,
	[SITE] [varchar](60) NULL,
	[CONTATO_TEL] [varchar](100) NULL,
	[COD_CLIENTE] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MIGRA_PRODUTO]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MIGRA_PRODUTO](
	[COD_PRODUTO] [int] NULL,
	[DESCRICAO] [varchar](300) NULL,
	[PRECO_CUSTO] [decimal](15, 2) NULL,
	[MARGEM] [decimal](5, 2) NULL,
	[ESTOQUE] [decimal](9, 2) NULL,
	[COD_BARRA_PRODUTO] [varchar](14) NULL,
	[PRECO_AVISTA] [decimal](15, 2) NULL,
	[ESTOQUE_MINIMO] [decimal](9, 2) NULL,
	[NUMERO_NCM] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moeda]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moeda](
	[cd_Moeda] [varchar](5) NOT NULL,
	[ds_Descricao] [varchar](60) NOT NULL,
	[ds_Simbolo] [varchar](10) NOT NULL,
	[ds_UsuarioCadastro] [varchar](60) NOT NULL,
	[dt_Cadastro] [datetime] NOT NULL,
	[ds_UsuarioManutencao] [varchar](60) NOT NULL,
	[dt_Manutencao] [datetime] NOT NULL,
 CONSTRAINT [PK_Moeda] PRIMARY KEY CLUSTERED 
(
	[cd_Moeda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimentacaoContaBancaria]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimentacaoContaBancaria](
	[TransacaoID] [int] IDENTITY(1,1) NOT NULL,
	[SubContaID] [int] NULL,
	[DataTransacao] [datetime] NULL,
	[Descricao] [varchar](150) NULL,
	[TipoTransacao] [char](1) NULL,
	[Valor] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransacaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[MunicipioID] [int] NOT NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[MunicipioDescricaoSemAcento] [varchar](100) NULL,
	[EstadoID] [tinyint] NULL,
	[ProviderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MunicipioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaturezaOperacao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaturezaOperacao](
	[naturezaOperacaoID] [varchar](5) NOT NULL,
	[Descricao] [varchar](150) NOT NULL,
	[CfopIDInterna] [smallint] NOT NULL,
	[CfopIDExterna] [smallint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[TextoLegal] [varchar](max) NULL,
	[CstICMS] [smallint] NULL,
	[CstIPI] [smallint] NULL,
	[CstPIS] [smallint] NULL,
	[CstCOFINS] [smallint] NULL,
	[Oper] [smallint] NULL,
	[NotaSaida] [bit] NULL,
	[naturezaOperacaoIDEbtrada] [varchar](5) NULL,
	[ModFrete] [int] NULL,
	[IndicaSimplesNacional] [bit] NULL,
 CONSTRAINT [pkNaturezaOperacao] PRIMARY KEY CLUSTERED 
(
	[naturezaOperacaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaturezaOperacaoProvider]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaturezaOperacaoProvider](
	[Codigo] [varchar](5) NOT NULL,
	[ProviderID] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
	[IsDefault] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC,
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ncm]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ncm](
	[NcmSeq] [int] IDENTITY(1,1) NOT NULL,
	[NcmID] [varchar](8) NOT NULL,
	[ExTipi] [varchar](3) NULL,
	[NcmDescricao] [varchar](2000) NOT NULL,
	[PercentualIPI] [decimal](5, 2) NOT NULL,
	[ValorIPIPauta] [decimal](5, 2) NULL,
	[DataVigenciaInicial] [datetime] NOT NULL,
	[DataVigenciaFinal] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Ncm] PRIMARY KEY CLUSTERED 
(
	[NcmSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscal]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscal](
	[NfID] [bigint] IDENTITY(1,1) NOT NULL,
	[ide_versao] [varchar](5) NOT NULL,
	[ide_idNfe] [varchar](44) NOT NULL,
	[ide_cUf] [smallint] NOT NULL,
	[ide_cNf] [varchar](8) NOT NULL,
	[ide_natOp] [varchar](60) NOT NULL,
	[ide_indPag] [smallint] NOT NULL,
	[ide_mod] [smallint] NOT NULL,
	[ide_serie] [smallint] NOT NULL,
	[ide_nNf] [int] NOT NULL,
	[ide_dhEmi] [datetime] NOT NULL,
	[ide_dhSaiEnt] [datetime] NULL,
	[ide_tpNF] [smallint] NOT NULL,
	[ide_idDest] [smallint] NOT NULL,
	[id_cMunFG] [int] NOT NULL,
	[ide_tpImp] [smallint] NOT NULL,
	[ide_tpEmis] [smallint] NOT NULL,
	[ide_cDV] [smallint] NULL,
	[ide_tpAmb] [smallint] NOT NULL,
	[ide_finNFe] [smallint] NOT NULL,
	[ide_indFinal] [smallint] NOT NULL,
	[ide_indPres] [smallint] NOT NULL,
	[ide_procEmi] [smallint] NOT NULL,
	[ide_verProc] [varchar](20) NOT NULL,
	[ide_dhCont] [datetime] NULL,
	[ide_xJust] [varchar](256) NULL,
	[emit_Cnpj] [varchar](14) NULL,
	[emit_Cpf] [varchar](11) NULL,
	[emit_xNome] [varchar](60) NOT NULL,
	[emit_xFant] [varchar](60) NULL,
	[emit_xLgr] [varchar](60) NULL,
	[emit_nro] [varchar](60) NULL,
	[emit_xCpl] [varchar](60) NULL,
	[emit_xBairro] [varchar](60) NULL,
	[emit_cMun] [varchar](7) NULL,
	[emit_xMun] [varchar](60) NULL,
	[emit_uf] [varchar](2) NULL,
	[emit_cep] [varchar](8) NULL,
	[emit_cPais] [smallint] NULL,
	[emit_xPais] [varchar](60) NULL,
	[emit_fone] [varchar](14) NULL,
	[emit_ie] [varchar](14) NULL,
	[emit_iest] [varchar](14) NULL,
	[emit_im] [varchar](15) NULL,
	[emit_cnae] [varchar](7) NULL,
	[emit_crt] [smallint] NOT NULL,
	[dest_cnpj] [varchar](14) NULL,
	[dest_cpf] [varchar](11) NULL,
	[dest_idEstrangeiro] [varchar](20) NULL,
	[dest_xNome] [varchar](60) NULL,
	[dest_xLgr] [varchar](60) NULL,
	[dest_nro] [varchar](60) NULL,
	[dest_xCpl] [varchar](60) NULL,
	[dest_xBairro] [varchar](60) NULL,
	[dest_cMun] [varchar](7) NULL,
	[dest_xMun] [varchar](60) NULL,
	[dest_uf] [varchar](2) NULL,
	[dest_cep] [varchar](8) NULL,
	[dest_cPais] [smallint] NULL,
	[dest_xPais] [varchar](60) NULL,
	[dest_fone] [varchar](14) NULL,
	[dest_indIEDest] [smallint] NOT NULL,
	[dest_ie] [varchar](14) NULL,
	[dest_isuf] [varchar](9) NULL,
	[dest_im] [varchar](15) NULL,
	[dest_email] [varchar](60) NULL,
	[retira_cnpj] [varchar](14) NULL,
	[retira_cpf] [varchar](11) NULL,
	[retira_xLgr] [varchar](60) NULL,
	[retira_nro] [varchar](60) NULL,
	[retira_xCpl] [varchar](60) NULL,
	[retira_xBairro] [varchar](60) NULL,
	[retira_cMun] [varchar](7) NULL,
	[retira_xMun] [varchar](60) NULL,
	[retira_uf] [varchar](2) NULL,
	[entrega_cnpj] [varchar](14) NULL,
	[entrega_cpf] [varchar](11) NULL,
	[entrega_xLgr] [varchar](60) NULL,
	[entrega_nro] [varchar](60) NULL,
	[entrega_xCpl] [varchar](60) NULL,
	[entrega_xBairro] [varchar](60) NULL,
	[entrega_cMun] [varchar](7) NULL,
	[entrega_xMun] [varchar](60) NULL,
	[entrega_uf] [varchar](2) NULL,
	[icmstot_vBC] [decimal](13, 2) NULL,
	[icmstot_vICMS] [decimal](13, 2) NULL,
	[icmstot_vICMSDeson] [decimal](13, 2) NULL,
	[icmstot_vBCST] [decimal](13, 2) NULL,
	[icmstot_vST] [decimal](13, 2) NULL,
	[icmstot_vProd] [decimal](13, 2) NULL,
	[icmstot_vFrete] [decimal](13, 2) NULL,
	[icmstot_vSeg] [decimal](13, 2) NULL,
	[icmstot_vDesc] [decimal](13, 2) NULL,
	[icmstot_vII] [decimal](13, 2) NULL,
	[icmstot_vIPI] [decimal](13, 2) NULL,
	[icmstot_vPIS] [decimal](13, 2) NULL,
	[icmstot_vCOFINS] [decimal](13, 2) NULL,
	[icmstot_vOutro] [decimal](13, 2) NULL,
	[icmstot_vNF] [decimal](13, 2) NULL,
	[icmstot_vTotTrib] [decimal](13, 2) NULL,
	[issqntot_vServ] [decimal](13, 2) NULL,
	[issqntot_vBC] [decimal](13, 2) NULL,
	[issqntot_vISS] [decimal](13, 2) NULL,
	[issqntot_vPIS] [decimal](13, 2) NULL,
	[issqntot_vCOFINS] [decimal](13, 2) NULL,
	[issqntot_dCompet] [datetime] NULL,
	[issqntot_vDeducao] [decimal](13, 2) NULL,
	[issqntot_vOutro] [decimal](13, 2) NULL,
	[issqntot_vDescIncond] [decimal](13, 2) NULL,
	[issqntot_vDescCond] [decimal](13, 2) NULL,
	[issqntot_vISSRet] [decimal](13, 2) NULL,
	[issqntot_cRegTrib] [smallint] NULL,
	[rettrib_vRetPIS] [decimal](13, 2) NULL,
	[rettrib_vRetCOFINS] [decimal](13, 2) NULL,
	[rettrib_vRetCSLL] [decimal](13, 2) NULL,
	[rettrib_vBCIRRF] [decimal](13, 2) NULL,
	[rettrib_vIRRF] [decimal](13, 2) NULL,
	[rettrib_vBCRetPrev] [decimal](13, 2) NULL,
	[rettrib_vRetPrev] [decimal](13, 2) NULL,
	[transp_modFrete] [smallint] NULL,
	[transporta_cnpj] [varchar](14) NULL,
	[transporta_cpf] [varchar](11) NULL,
	[transporta_xNome] [varchar](60) NULL,
	[transporta_ie] [varchar](14) NULL,
	[transporta_xEnder] [varchar](60) NULL,
	[transporta_xMun] [varchar](60) NULL,
	[transporta_uf] [varchar](2) NULL,
	[rettransp_vServ] [decimal](13, 2) NULL,
	[rettransp_vBCRet] [decimal](13, 2) NULL,
	[rettransp_pICMSRet] [decimal](5, 4) NULL,
	[rettransp_vICMSRet] [decimal](13, 2) NULL,
	[rettransp_cfop] [smallint] NULL,
	[rettransp_cMunFG] [varchar](7) NULL,
	[veictransp_placa] [varchar](7) NULL,
	[veictransp_uf] [varchar](2) NULL,
	[veictransp_rntc] [varchar](20) NULL,
	[infadic_infAdFisco] [varchar](2000) NULL,
	[infadic_infCpl] [varchar](5000) NULL,
	[exporta_UFSaidaPais] [varchar](2) NULL,
	[exporta_xLocExporta] [varchar](60) NULL,
	[exporta_xLocDespacho] [varchar](60) NULL,
	[compra_xNEmp] [varchar](22) NULL,
	[compra_xPed] [varchar](60) NULL,
	[compra_xCont] [varchar](60) NULL,
	[StatusID] [smallint] NOT NULL,
	[infprot_dhRecbto] [datetime] NULL,
	[infprot_nProt] [varchar](20) NULL,
	[infprot_digVal] [varchar](50) NULL,
	[infprot_cStat] [smallint] NULL,
	[infprot_xMotivo] [varchar](255) NULL,
	[icmsufdest_vFCPUFDest] [decimal](13, 2) NULL,
	[icmsufdest_vICMSUFDest] [decimal](13, 2) NULL,
	[icmsufdest_vICMSUFRemet] [decimal](13, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[infprot_dhRecb_Evento_Canc] [datetime] NULL,
	[infprot_cStat_Evento_Canc] [smallint] NULL,
	[infprot_xEvento_Evento_Canc] [varchar](255) NULL,
	[infprot_xMotivo_Evento_Canc] [varchar](255) NULL,
	[infprot_xProt_Evento_Canc] [varchar](25) NULL,
	[NotaRecebida] [bit] NULL,
	[icmstot_vFCP] [decimal](13, 2) NULL,
	[icmstot_vFCPST] [decimal](13, 2) NULL,
	[icmstot_vFCPSTRet] [decimal](13, 2) NULL,
	[icmstot_vIPIDevol] [decimal](13, 2) NULL,
	[ChaveNotaFiscalEntrada] [nvarchar](44) NULL,
 CONSTRAINT [PK_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalAutorizaDownload]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalAutorizaDownload](
	[NfID] [bigint] NOT NULL,
	[autxml_cnpj] [varchar](14) NULL,
	[autxml_cpf] [varchar](11) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalAutorizacaoXml] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalCce]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalCce](
	[NfID] [bigint] NOT NULL,
	[CceID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventoID] [varchar](10) NOT NULL,
	[VersaoEvento] [varchar](5) NOT NULL,
	[Descricao] [varchar](5000) NOT NULL,
	[DataHoraEvento] [datetime] NOT NULL,
	[StatusID] [smallint] NOT NULL,
	[XmlCce] [xml] NULL,
	[NumeroProtocolo] [varchar](20) NULL,
	[DataHoraRegistro] [datetime] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalCce] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[CceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalDuplicata]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalDuplicata](
	[NfID] [bigint] NOT NULL,
	[dup_nSeq] [int] NOT NULL,
	[dup_nDup] [varchar](60) NULL,
	[dup_dVenc] [datetime] NULL,
	[dup_vDup] [decimal](13, 2) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalDuplicata] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[dup_nSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalItem]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalItem](
	[NfID] [bigint] NOT NULL,
	[det_nItem] [int] NOT NULL,
	[prod_cProd] [varchar](60) NOT NULL,
	[prod_cEAN] [varchar](14) NULL,
	[prod_xProd] [varchar](120) NOT NULL,
	[prod_NCM] [varchar](8) NULL,
	[prod_EXTIPI] [varchar](3) NULL,
	[prod_CFOP] [int] NULL,
	[prod_uCom] [varchar](6) NULL,
	[prod_qCom] [decimal](11, 4) NULL,
	[prod_vUnCom] [decimal](23, 10) NULL,
	[prod_vProd] [decimal](13, 2) NULL,
	[prod_cEANTrib] [varchar](14) NULL,
	[prod_uTrib] [varchar](6) NULL,
	[prod_qTrib] [decimal](11, 4) NULL,
	[prod_vUnTrib] [decimal](23, 10) NULL,
	[prod_vFrete] [decimal](13, 2) NULL,
	[prod_vSeg] [decimal](13, 2) NULL,
	[prod_vDesc] [decimal](13, 2) NULL,
	[prod_vOutro] [decimal](13, 2) NULL,
	[prod_indTot] [smallint] NULL,
	[prod_xPed] [varchar](15) NULL,
	[prod_nItemPed] [int] NULL,
	[prod_nFCI] [varchar](36) NULL,
	[det_infAdProd] [varchar](500) NULL,
	[prod_CEST] [varchar](7) NULL,
	[prod_vTotTrib] [decimal](13, 2) NULL,
	[prod_CST] [smallint] NULL,
	[prod_orig] [smallint] NULL,
	[prod_modBC] [smallint] NULL,
	[prod_vBC] [decimal](13, 2) NULL,
	[prod_pICMS] [decimal](13, 4) NULL,
	[prod_vICMS] [decimal](13, 2) NULL,
	[prod_modBCST] [smallint] NULL,
	[prod_pMVAST] [decimal](13, 4) NULL,
	[prod_pRedBCST] [decimal](13, 4) NULL,
	[prod_vBCST] [decimal](13, 2) NULL,
	[prod_pICMSST] [decimal](13, 4) NULL,
	[prod_vICMSST] [decimal](13, 2) NULL,
	[prod_vICMSDeson] [decimal](13, 2) NULL,
	[prod_motDesICMS] [smallint] NULL,
	[prod_pRedBC] [decimal](13, 4) NULL,
	[prod_vICMSOp] [decimal](13, 2) NULL,
	[prod_pDif] [decimal](13, 4) NULL,
	[prod_vICMSDif] [decimal](13, 2) NULL,
	[prod_vBCSTRet] [decimal](13, 2) NULL,
	[prod_vICMSSTRet] [decimal](13, 2) NULL,
	[prod_pBCOp] [decimal](13, 4) NULL,
	[prod_UFST] [varchar](2) NULL,
	[prod_vBCSTDest] [decimal](13, 2) NULL,
	[prod_vICMSSTDest] [decimal](13, 2) NULL,
	[prod_CSOSN] [smallint] NULL,
	[prod_pCredSN] [decimal](13, 4) NULL,
	[prod_vCredICMSSN] [decimal](13, 2) NULL,
	[ipi_clEnq] [varchar](5) NULL,
	[ipi_CNPJProd] [varchar](14) NULL,
	[ipi_cSelo] [varchar](60) NULL,
	[ipi_qSelo] [int] NULL,
	[ipi_cEnq] [varchar](3) NULL,
	[ipi_CST] [smallint] NULL,
	[ipi_vBC] [decimal](13, 2) NULL,
	[ipi_pIPI] [decimal](13, 4) NULL,
	[ipi_qUnid] [decimal](12, 4) NULL,
	[ipi_vUnid] [decimal](23, 10) NULL,
	[ipi_vIPI] [decimal](13, 2) NULL,
	[ii_vBC] [decimal](13, 2) NULL,
	[ii_vDespAdu] [decimal](13, 2) NULL,
	[ii_vII] [decimal](13, 2) NULL,
	[ii_vIOF] [decimal](13, 2) NULL,
	[pis_CST] [smallint] NULL,
	[pis_vBC] [decimal](13, 2) NULL,
	[pis_pPIS] [decimal](13, 4) NULL,
	[pis_vPIS] [decimal](13, 2) NULL,
	[pis_qBCProd] [decimal](13, 2) NULL,
	[pis_vAliqProd] [decimal](13, 2) NULL,
	[cofins_CST] [smallint] NULL,
	[cofins_vBC] [decimal](13, 2) NULL,
	[cofins_pCOFINS] [decimal](13, 4) NULL,
	[cofins_vCOFINS] [decimal](13, 2) NULL,
	[cofins_qBCProd] [decimal](13, 2) NULL,
	[cofins_vAliqProd] [decimal](13, 2) NULL,
	[issqn_vBC] [decimal](13, 2) NULL,
	[issqn_vAliq] [decimal](13, 4) NULL,
	[issqn_vISSQN] [decimal](13, 2) NULL,
	[issqn_cMunFG] [int] NULL,
	[issqn_cListServ] [varchar](5) NULL,
	[issqn_vDeducao] [decimal](13, 2) NULL,
	[issqn_vOutro] [decimal](13, 2) NULL,
	[issqn_vDescIncond] [decimal](13, 2) NULL,
	[issqn_vDescCond] [decimal](13, 2) NULL,
	[issqn_vISSRet] [decimal](13, 2) NULL,
	[issqn_indISS] [smallint] NULL,
	[issqn_cServico] [varchar](20) NULL,
	[issqn_cMun] [int] NULL,
	[issqn_cPais] [int] NULL,
	[issqn_nProcesso] [varchar](30) NULL,
	[issqn_indIncentivo] [smallint] NULL,
	[impostodevol_pDevol] [decimal](3, 2) NULL,
	[impostodevol_vIPIDevol] [decimal](13, 2) NULL,
	[icmsufdest_vBCUFDest] [decimal](13, 2) NULL,
	[icmsufdest_pFCPUFDest] [decimal](13, 4) NULL,
	[icmsufdest_pICMSUFDest] [decimal](13, 4) NULL,
	[icmsufdest_pICMSInter] [decimal](5, 2) NULL,
	[icmsufdest_pICMSInterPart] [decimal](5, 2) NULL,
	[icmsufdest_vFCPUFDest] [decimal](13, 2) NULL,
	[icmsufdest_vICMSUFDest] [decimal](13, 2) NULL,
	[icmsufdest_vICMSUFRemet] [decimal](13, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[pFCP] [decimal](13, 4) NULL,
	[vFCP] [decimal](13, 2) NULL,
 CONSTRAINT [PK_NotaFiscalItem] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[det_nItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalItemAdi]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalItemAdi](
	[NfID] [bigint] NOT NULL,
	[det_nItem] [int] NOT NULL,
	[di_nDI] [varchar](12) NOT NULL,
	[adi_nAdicao] [int] NOT NULL,
	[adi_nSeqAdic] [int] NOT NULL,
	[adi_cFabricante] [varchar](60) NOT NULL,
	[adi_vDescDI] [decimal](13, 2) NULL,
	[adi_nDraw] [varchar](11) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalItemAdi] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[det_nItem] ASC,
	[di_nDI] ASC,
	[adi_nAdicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalItemDi]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalItemDi](
	[NfID] [bigint] NOT NULL,
	[det_nItem] [int] NOT NULL,
	[di_nDI] [varchar](12) NOT NULL,
	[di_dDI] [datetime] NOT NULL,
	[di_xLocDesemb] [varchar](60) NOT NULL,
	[di_UFDesemb] [varchar](2) NOT NULL,
	[di_dDesemb] [datetime] NOT NULL,
	[di_tpViaTransp] [smallint] NOT NULL,
	[di_vAFRMM] [decimal](13, 2) NULL,
	[di_tpIntermedio] [smallint] NOT NULL,
	[di_cnpj] [varchar](14) NULL,
	[di_UFTerceiro] [varchar](2) NULL,
	[di_cExportador] [varchar](60) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalItemDi] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[det_nItem] ASC,
	[di_nDI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalItemExportacao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalItemExportacao](
	[NfID] [bigint] NOT NULL,
	[det_nItem] [int] NOT NULL,
	[detexport_nDraw] [varchar](11) NOT NULL,
	[exportind_nRE] [varchar](12) NULL,
	[exportind_chNFe] [varchar](44) NULL,
	[exportind_qExport] [decimal](11, 4) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalItemExportacao] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[det_nItem] ASC,
	[detexport_nDraw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalItemNve]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalItemNve](
	[NfID] [bigint] NOT NULL,
	[det_nItem] [int] NOT NULL,
	[nve_nSeq] [int] NOT NULL,
	[nve] [varchar](6) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalItemNve] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[det_nItem] ASC,
	[nve_nSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalOcorrencia]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalOcorrencia](
	[NfOcorrenciaID] [bigint] IDENTITY(1,1) NOT NULL,
	[NfID] [bigint] NOT NULL,
	[NfOcorrencia] [varchar](1000) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ColaboradorCreated] [varchar](100) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[ColaboradorUpdated] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NotaFiscalOcorrencia] PRIMARY KEY CLUSTERED 
(
	[NfOcorrenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalReboque]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalReboque](
	[NfID] [bigint] NOT NULL,
	[reboque_nSeq] [int] NOT NULL,
	[reboque_placa] [varchar](7) NOT NULL,
	[reboque_uf] [varchar](2) NOT NULL,
	[reboque_rntc] [varchar](20) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalReboque] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[reboque_nSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalReferencia]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalReferencia](
	[NfID] [bigint] NOT NULL,
	[n_SeqRef] [smallint] NOT NULL,
	[tpDocRef] [smallint] NOT NULL,
	[nfref_refNFe] [varchar](44) NULL,
	[nfref_refCTe] [varchar](44) NULL,
	[refNF_cUF] [smallint] NULL,
	[refNF_aamm] [smallint] NULL,
	[refNF_cnpj] [varchar](14) NULL,
	[refNF_mod] [varchar](2) NULL,
	[refNF_serie] [smallint] NULL,
	[refNF_nNF] [int] NULL,
	[refNFP_cUF] [smallint] NULL,
	[refNFP_aamm] [smallint] NULL,
	[refNFP_cnpj] [varchar](14) NULL,
	[refNFP_cpf] [varchar](11) NULL,
	[refNFP_ie] [varchar](14) NULL,
	[refNFP_mod] [varchar](2) NULL,
	[refNFP_serie] [smallint] NULL,
	[refNFP_nNF] [int] NULL,
	[refECF_mod] [varchar](2) NULL,
	[refECF_nECF] [varchar](3) NULL,
	[refECF_nCOO] [varchar](6) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalReferencia] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[n_SeqRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalServico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalServico](
	[NotaFiscalServicoID] [int] IDENTITY(1,1) NOT NULL,
	[VendaServicoID] [int] NOT NULL,
	[ClienteID] [int] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Stat] [int] NULL,
	[SerieRPS] [varchar](15) NULL,
	[NumeroRPS] [bigint] NULL,
	[NumeroNFSe] [bigint] NULL,
	[CodigoVerificacaoNFse] [varchar](9) NULL,
	[DataSolicitacaoCancelamento] [datetime] NULL,
	[XmlNFSe] [xml] NULL,
	[NumeroLoteRPS] [bigint] NULL,
	[XmlRps] [xml] NULL,
	[DescricaoStatus] [varchar](500) NULL,
	[DataEmissao] [datetime] NOT NULL,
	[LocalIncidenciaID] [varchar](2) NOT NULL,
	[NaturezaOperacaoID] [varchar](2) NOT NULL,
	[Descricao] [varchar](8000) NULL,
	[ServicoID] [int] NOT NULL,
	[ValorServico] [decimal](15, 2) NOT NULL,
	[CodigoTributacaoMunicipio] [varchar](10) NULL,
	[ItemListaServico] [varchar](10) NULL,
	[AliquotaISSQN] [decimal](9, 2) NOT NULL,
	[ValorDeducoes] [decimal](9, 2) NULL,
	[BaseCalculoISSQN] [decimal](15, 2) NOT NULL,
	[ValorISSQN] [decimal](15, 2) NOT NULL,
	[ReterISSQN] [bit] NOT NULL,
	[ValorDesconto] [decimal](15, 2) NULL,
	[ValorTotalRetencoes] [decimal](15, 2) NULL,
	[ValorTotalServicos] [decimal](15, 2) NOT NULL,
	[AliquotaCSLL] [decimal](9, 2) NULL,
	[AliquotaIRRF] [decimal](9, 2) NULL,
	[AliquotaPIS] [decimal](9, 2) NULL,
	[AliquotaCOFINS] [decimal](9, 2) NULL,
	[AliquotaINSS] [decimal](9, 2) NULL,
	[ValorCSLL] [decimal](15, 2) NULL,
	[ValorIRRF] [decimal](15, 2) NULL,
	[ValorPIS] [decimal](15, 2) NULL,
	[ValorCOFINS] [decimal](15, 2) NULL,
	[ValorINSS] [decimal](15, 2) NULL,
	[ReterCSLL] [bit] NULL,
	[ReterIRRF] [bit] NULL,
	[ReterPIS] [bit] NULL,
	[ReterCOFINS] [bit] NULL,
	[ReterINSS] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[TipoRps] [tinyint] NULL,
	[RegimeEspecialTributacao] [tinyint] NULL,
	[OptanteSimplesNacional] [tinyint] NULL,
	[IncentivadorCultural] [tinyint] NULL,
	[CodigoMunicipio] [int] NOT NULL,
	[CpfCnpjEmissor] [varchar](15) NULL,
	[InscricaoMunicipalEmissor] [varchar](20) NULL,
	[CpfCnpjTomador] [varchar](15) NULL,
	[NomeRazaoSocialTomador] [varchar](100) NULL,
	[EnderecoTomador] [varchar](60) NULL,
	[NrEnderecoTomador] [varchar](30) NULL,
	[ComplementoTomador] [varchar](60) NULL,
	[BairroTomador] [varchar](60) NULL,
	[CodigoMunicipioTomador] [int] NULL,
	[UFTomador] [char](2) NULL,
	[TelefoneTomador] [varchar](14) NULL,
	[EmailTomador] [varchar](60) NULL,
	[StatusAplicacao] [varchar](60) NULL,
	[RazaoSocialEmissor] [varchar](100) NULL,
	[PaisTomadorID] [smallint] NULL,
	[PaisTomadorNome] [varchar](100) NULL,
	[CepTomador] [varchar](8) NULL,
	[InscricaoMunicipalTomador] [varchar](20) NULL,
	[InscricaoEstadualTomador] [varchar](20) NULL,
	[DescricaoListaServico] [varchar](100) NULL,
	[DescricaoCnae] [varchar](150) NULL,
	[CnaeFiscal] [varchar](15) NULL,
	[DescricaoNaturezaOperacao] [varchar](100) NULL,
	[CodigoRegimeTributario] [smallint] NULL,
	[DescricaoRegimeTributario] [varchar](100) NULL,
	[Ambiente] [tinyint] NULL,
	[ValorISSQNRetido] [decimal](15, 2) NULL,
	[ValorOutrasRetencoes] [decimal](15, 2) NULL,
	[ValorDescontoCondicionado] [decimal](15, 2) NULL,
	[ValorDescontoIncondicionado] [decimal](15, 2) NULL,
	[ValorLiquidoNFSe] [decimal](15, 2) NULL,
	[AmbienteID] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NotaFiscalServicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalServicoOcorrencia]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalServicoOcorrencia](
	[OcorrenciaID] [int] IDENTITY(1,1) NOT NULL,
	[NotaFiscalServicoID] [int] NOT NULL,
	[Ocorrencia] [varchar](1000) NULL,
	[CreateOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OcorrenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalSolicitacaoCancelamento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalSolicitacaoCancelamento](
	[NfID] [bigint] NOT NULL,
	[DataSolCanc] [datetime] NOT NULL,
	[JustificativaCanc] [varchar](255) NOT NULL,
	[StatusID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalSolicitacaoCancelamento] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalVolume]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalVolume](
	[NfID] [bigint] NOT NULL,
	[vol_nSeq] [int] NOT NULL,
	[vol_qVol] [int] NULL,
	[vol_esp] [varchar](60) NULL,
	[vol_marca] [varchar](60) NULL,
	[vol_nVol] [varchar](60) NULL,
	[vol_pesoL] [decimal](12, 3) NULL,
	[vol_pesoB] [decimal](12, 3) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalVolume] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[vol_nSeq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscalXml]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscalXml](
	[NfID] [bigint] NOT NULL,
	[XmlTipoID] [smallint] NOT NULL,
	[Xml] [xml] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotaFiscalXml] PRIMARY KEY CLUSTERED 
(
	[NfID] ASC,
	[XmlTipoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OcorrenciaRetornoItau]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OcorrenciaRetornoItau](
	[CodigoOcorrencia] [smallint] NOT NULL,
	[Descricao] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoOcorrencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpcaoSimplesNacionalProvider]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpcaoSimplesNacionalProvider](
	[Codigo] [smallint] NOT NULL,
	[ProviderID] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC,
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operadora]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operadora](
	[ID_Operadora] [int] IDENTITY(1,1) NOT NULL,
	[Fantasia] [nvarchar](100) NULL,
	[RazaoSocial] [nvarchar](100) NULL,
	[CNPJ] [nchar](30) NULL,
	[IE] [nchar](30) NULL,
	[CodigoOp] [int] NULL,
	[Observacoes] [nvarchar](max) NULL,
	[Rua] [nvarchar](100) NULL,
	[Numero] [nvarchar](9) NULL,
	[Complemento] [nchar](10) NULL,
	[Bairro] [nvarchar](50) NULL,
	[cMun] [nvarchar](7) NULL,
	[Cidade] [nvarchar](100) NULL,
	[cUF] [int] NULL,
	[UF] [nchar](2) NULL,
	[CEP] [nvarchar](20) NULL,
	[Telefone1] [nchar](18) NULL,
	[Tipo1] [nchar](16) NULL,
	[Telefone2] [nchar](18) NULL,
	[Tipo2] [nchar](16) NULL,
	[Email] [nvarchar](100) NULL,
	[xPais] [char](6) NULL,
	[cPais] [varchar](4) NULL,
	[WebSite] [nvarchar](200) NULL,
	[Id_cadastradopor] [int] NULL,
	[Id_Alteradopor] [int] NULL,
	[DataAltera] [datetime] NULL,
	[Data_atual] [datetime] NULL,
	[EmpresaID] [bigint] NULL,
 CONSTRAINT [PK_Operadora] PRIMARY KEY CLUSTERED 
(
	[ID_Operadora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[PacienteID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[NomePaciente] [nvarchar](255) NOT NULL,
	[CPF] [nvarchar](14) NULL,
	[CNPJEmpresa] [nvarchar](14) NULL,
	[Cargo] [nvarchar](100) NULL,
	[DataAdmissao] [datetime] NULL,
	[DataNascimento] [datetime] NULL,
	[Sexo] [nvarchar](10) NULL,
	[Endereco] [nvarchar](255) NULL,
	[Telefone] [nvarchar](20) NULL,
	[Email] [nvarchar](255) NULL,
	[Ativo] [bit] NULL,
	[DataCadastro] [datetime] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AssinanteID] [int] NOT NULL,
	[CEP] [nvarchar](11) NULL,
	[NrEndereco] [varchar](30) NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NULL,
	[MunicipioID] [int] NULL,
	[EstadoID] [tinyint] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[Celular] [varchar](14) NULL,
	[Url] [varchar](60) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[PaisID] [smallint] NULL,
	[NomeResponsavel] [varchar](100) NULL,
	[EmailResponsavel] [varchar](150) NULL,
	[TelefoneResponsavel] [varchar](20) NULL,
	[Observacoes] [varchar](3000) NULL,
	[Logo] [varbinary](max) NULL,
	[ContratoID] [bigint] NULL,
	[NomeMae] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacotes]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacotes](
	[ID_Pacotes] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoPacote] [nvarchar](59) NULL,
	[ID_Operadora] [int] NULL,
	[ID_FuncionarioCad] [int] NULL,
	[DataCad] [datetime] NULL,
	[Situacao] [bit] NULL,
	[Id_Alteradopor] [int] NULL,
	[DataAltera] [datetime] NULL,
	[EmpresaID] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[PaisID] [smallint] NOT NULL,
	[PaisNome] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametro](
	[GrupoParametroID] [int] NOT NULL,
	[ParametroID] [int] NOT NULL,
	[ParametroDescricao] [varchar](250) NOT NULL,
	[ParametroValor] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
 CONSTRAINT [PK_Parametro] PRIMARY KEY CLUSTERED 
(
	[GrupoParametroID] ASC,
	[ParametroID] ASC,
	[EmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroServico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroServico](
	[ServicoID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Descricao] [varchar](100) NULL,
	[ItemListaServico] [varchar](10) NULL,
	[CodigoTributacaoMunicipio] [varchar](10) NULL,
	[AliquotaISSQN] [decimal](9, 2) NULL,
	[AliquotaCSLL] [decimal](9, 2) NULL,
	[AliquotaIRRF] [decimal](9, 2) NULL,
	[AliquotaPIS] [decimal](9, 2) NULL,
	[AliquotaCOFINS] [decimal](9, 2) NULL,
	[AliquotaINSS] [decimal](9, 2) NULL,
	[ExibirISSQN] [bit] NULL,
	[ExibirCSLL] [bit] NULL,
	[ExibirIRRF] [bit] NULL,
	[ExibirPIS] [bit] NULL,
	[ExibirCOFINS] [bit] NULL,
	[ExibirINSS] [bit] NULL,
	[ReterISSQN] [bit] NULL,
	[ReterCSLL] [bit] NULL,
	[ReterIRRF] [bit] NULL,
	[ReterPIS] [bit] NULL,
	[ReterCOFINS] [bit] NULL,
	[ReterINSS] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[UltimoNumeroRPS] [bigint] NULL,
	[SerieRPS] [varchar](15) NULL,
	[TipoRPS] [varchar](15) NULL,
	[UltimoNumeroLoteRPS] [bigint] NULL,
	[TextoPadrao] [varchar](1500) NULL,
	[DescricaoListaServico] [varchar](100) NULL,
 CONSTRAINT [PK__Parametr__C597679620023D3F] PRIMARY KEY CLUSTERED 
(
	[ServicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametrosGlobais]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametrosGlobais](
	[GrupoParametroID] [int] NOT NULL,
	[ParametroID] [int] NOT NULL,
	[ParametroDescricao] [varchar](250) NOT NULL,
	[ParametroValor] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ParametrosGlobais] PRIMARY KEY CLUSTERED 
(
	[GrupoParametroID] ASC,
	[ParametroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parceiro]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parceiro](
	[ParceiroID] [int] IDENTITY(1,1) NOT NULL,
	[Voucher] [varchar](10) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ParceiroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[PedidoID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[ClienteID] [int] NOT NULL,
	[ContratoID] [int] NOT NULL,
	[TemplateID] [int] NULL,
	[DiaVencimento] [tinyint] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[ValorFaturaMensal] [decimal](15, 2) NULL,
	[StatusID] [varchar](60) NULL,
	[BancoID] [int] NULL,
	[NumeroAgencia] [varchar](10) NULL,
	[NumeroConta] [varchar](10) NULL,
	[TaxaAdesao] [decimal](15, 2) NULL,
	[AluguelRastreador] [decimal](15, 2) NULL,
	[QuantidadeItens] [smallint] NULL,
	[ValorTotal] [decimal](15, 2) NULL,
	[DataEntrega] [varchar](100) NULL,
	[ObservacaoModelo] [varchar](1000) NULL,
	[ObservacaoBateria] [varchar](1000) NULL,
	[ObservacaoEmbalagem] [varchar](1000) NULL,
	[PrimeiroVencimento] [datetime] NULL,
	[TipoCobrancaAdesao] [tinyint] NULL,
	[VencimentoAdesao] [datetime] NULL,
	[ParcelasFracionamentoAdesao] [smallint] NULL,
	[DiasAntecedenciaAlertaVigencia] [tinyint] NULL,
	[DiasAntecedenciaAlertaFaturamento] [tinyint] NULL,
	[ParcelasAluguel] [smallint] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[ClassificacaoFiscal] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoCamposCustomizados]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoCamposCustomizados](
	[PedidoID] [int] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[TabelaID] [varchar](100) NOT NULL,
	[CampoID] [int] NOT NULL,
	[Valor] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoID] ASC,
	[EmpresaID] ASC,
	[TabelaID] ASC,
	[CampoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoCompra]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoCompra](
	[PedidoCompraID] [int] IDENTITY(1,1) NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[FornecedorID] [int] NOT NULL,
	[NfID] [bigint] NULL,
	[DataPedidoCompra] [datetime] NOT NULL,
	[ValorTotalProdutos] [decimal](15, 2) NULL,
	[ValorTotalAcrescimo] [decimal](15, 2) NULL,
	[ValorTotalDesconto] [decimal](15, 2) NULL,
	[ValorTotalFrete] [decimal](15, 2) NULL,
	[ValorTotalOutrasDesp] [decimal](15, 2) NULL,
	[ValorTotalVenda] [decimal](15, 2) NULL,
	[StatusID] [smallint] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[NumeroParcelas] [tinyint] NULL,
	[ValorPago] [decimal](15, 2) NULL,
	[ValorTroco] [decimal](15, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[StatusAprovacao] [smallint] NULL,
	[ContratoID] [bigint] NULL,
	[ColaboradorIDAutoriza] [bigint] NULL,
	[ColaboradorIDAutoriza2] [bigint] NULL,
	[ClienteID] [int] NULL,
 CONSTRAINT [PK__PedidoCo__C4447AAC1C5DBFEC] PRIMARY KEY CLUSTERED 
(
	[PedidoCompraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoCompraItem]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoCompraItem](
	[PedidoCompraID] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[IdUnidadeComercial] [smallint] NULL,
	[QuantidadeComercial] [decimal](18, 0) NULL,
	[ValorUnitarioComercial] [decimal](15, 2) NULL,
	[ValorTotalProduto] [decimal](15, 2) NULL,
	[ValorFrete] [decimal](15, 2) NULL,
	[ValorSeguro] [decimal](15, 2) NULL,
	[ValorDesconto] [decimal](15, 2) NULL,
	[PercentualDesconto] [decimal](15, 2) NULL,
	[ValorDespesasAcessorias] [decimal](15, 2) NULL,
	[DescricaoProduto] [varchar](300) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_PedidoCompraItem] PRIMARY KEY CLUSTERED 
(
	[PedidoCompraID] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoCompraParcelas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoCompraParcelas](
	[PedidoCompraID] [int] NOT NULL,
	[Numero] [smallint] NOT NULL,
	[Vencimento] [datetime] NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoCompraID] ASC,
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoItem]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoItem](
	[PedidoID] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[QuantidadeComercial] [decimal](5, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoID] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlace](
	[PedidoMarketPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[LojaMarketPlaceID] [int] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Valor] [decimal](15, 2) NOT NULL,
	[StatusID] [int] NULL,
	[OrderStatus] [varchar](80) NULL,
	[PagamentoConfirmado] [bit] NULL,
	[PedidoFaturado] [bit] NULL,
	[VendaID] [bigint] NULL,
	[NumeroNFe] [int] NULL,
	[PickingEfetuado] [bit] NULL,
	[TrackingCourierID] [varchar](50) NULL,
	[DataAtualizacao] [datetime] NULL,
	[ValorJuros] [decimal](15, 2) NULL,
	[ValorFrete] [decimal](15, 2) NULL,
	[ModalidadeFrete] [varchar](60) NULL,
	[EntregaEstimada] [datetime] NULL,
	[Sync_status] [varchar](60) NULL,
	[JsonReturned] [varchar](max) NULL,
	[StatusCode] [varchar](60) NULL,
	[StatusType] [varchar](60) NULL,
	[CodigoMarketPlace] [varchar](60) NULL,
	[NomeMarketPlace] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlaceCliente]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlaceCliente](
	[PedidoMarketPlaceID] [int] NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[TipoPessoa] [tinyint] NULL,
	[NomeRazaoSocial] [varchar](200) NULL,
	[CpfCnpj] [varchar](15) NULL,
	[Telefone] [varchar](14) NULL,
	[NomeFantasia] [varchar](200) NULL,
	[InscricaoEstadual] [varchar](20) NULL,
	[TelefoneComercial] [varchar](14) NULL,
	[ClienteID] [int] NULL,
	[DataNascimento] [datetime] NULL,
	[Sexo] [char](1) NULL,
	[Celular] [varchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC,
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlaceEndereco]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlaceEndereco](
	[PedidoMarketPlaceID] [int] NOT NULL,
	[EnderecoID] [varchar](100) NOT NULL,
	[TipoEndereco] [varchar](60) NULL,
	[Destinatario] [varchar](120) NULL,
	[Cep] [varchar](9) NULL,
	[Cidade] [varchar](150) NULL,
	[Uf] [char](2) NULL,
	[Pais] [varchar](150) NULL,
	[Endereco] [varchar](150) NULL,
	[Numero] [varchar](10) NULL,
	[Bairro] [varchar](100) NULL,
	[Complemento] [varchar](50) NULL,
	[Referencia] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC,
	[EnderecoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlaceEnderecoEntrega]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlaceEnderecoEntrega](
	[PedidoMarketPlaceID] [int] NOT NULL,
	[EnderecoID] [varchar](100) NOT NULL,
	[NumeroItem] [int] NOT NULL,
	[TipoEntrega] [varchar](60) NULL,
	[PrazoReservaEstoque] [varchar](60) NULL,
	[PrazoEstimado] [varchar](60) NULL,
	[Valor] [decimal](9, 2) NULL,
	[InicioAgenda] [datetime] NULL,
	[TerminoAgenda] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC,
	[EnderecoID] ASC,
	[NumeroItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlaceEntrega]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlaceEntrega](
	[PedidoMarketPlaceID] [int] NOT NULL,
	[NumeroItem] [int] NOT NULL,
	[CodigoEnvio] [varchar](60) NOT NULL,
	[Sku] [varchar](100) NULL,
	[Quantidade] [int] NULL,
	[CodigoRastreamento] [varchar](100) NULL,
	[Transportadora] [varchar](100) NULL,
	[MetodoEnvio] [varchar](100) NULL,
	[PedidoEnviado] [bit] NULL,
	[PedidoEntregue] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC,
	[NumeroItem] ASC,
	[CodigoEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlaceItem]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlaceItem](
	[PedidoMarketPlaceID] [int] NOT NULL,
	[NumeroItem] [int] NOT NULL,
	[Id] [varchar](50) NULL,
	[quantidade] [int] NULL,
	[preco] [decimal](15, 2) NULL,
	[comissao] [decimal](5, 2) NULL,
	[ComissaoFrete] [decimal](5, 2) NULL,
	[Sku] [varchar](100) NULL,
	[Descricao] [varchar](200) NULL,
	[PrecoDe] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC,
	[NumeroItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoMarketPlaceNfe]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoMarketPlaceNfe](
	[PedidoMarketPlaceID] [int] NOT NULL,
	[NfId] [bigint] NOT NULL,
	[Numero] [int] NOT NULL,
	[Serie] [int] NOT NULL,
	[DataEmissao] [datetime] NOT NULL,
	[Chave] [varchar](44) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoMarketPlaceID] ASC,
	[NfId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelineGrupo]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelineGrupo](
	[GrupoID] [smallint] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Descricao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelineNegocio]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelineNegocio](
	[NegocioID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[ColaboradorID] [int] NOT NULL,
	[GrupoID] [smallint] NULL,
	[CardType] [smallint] NULL,
	[Descricao] [varchar](100) NULL,
	[StatusID] [int] NULL,
	[Valor] [decimal](15, 2) NULL,
	[DataInicio] [datetime] NULL,
	[DataFim] [datetime] NULL,
	[NomeCliente] [varchar](100) NULL,
	[ClienteID] [int] NULL,
	[EnderecoCliente] [varchar](100) NULL,
	[BairroCliente] [varchar](100) NULL,
	[CidadeCliente] [varchar](100) NULL,
	[LogoCliente] [varbinary](max) NULL,
	[Contato] [varchar](100) NULL,
	[Celular] [varchar](20) NULL,
	[Telefone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[PrioridadeID] [smallint] NULL,
	[logoContato] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NegocioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelineNegocioEvento]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelineNegocioEvento](
	[EventoID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[NegocioID] [int] NOT NULL,
	[Title] [varchar](300) NOT NULL,
	[Start] [datetime] NULL,
	[End] [datetime] NULL,
	[AllDay] [bit] NULL,
	[Color] [varchar](30) NULL,
	[CategoriaEventoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelineNegocioInteraction]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelineNegocioInteraction](
	[InteractionID] [int] IDENTITY(1,1) NOT NULL,
	[NegocioID] [int] NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[ColaboradorID] [int] NOT NULL,
	[MessagemEnviada] [varchar](1000) NULL,
	[Resposta] [varchar](1000) NULL,
	[ArquivoAnexo] [varbinary](max) NULL,
	[NomeArquivoAnexo] [varchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC,
	[NegocioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PipelinePrioridade]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipelinePrioridade](
	[PrioridadeID] [smallint] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Descricao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[PrioridadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanoAssinatura]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanoAssinatura](
	[PlanoID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[IsVisible] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[Valor] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanoAssinaturaSubMenu]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanoAssinaturaSubMenu](
	[PlanoID] [int] NOT NULL,
	[MenuParent] [varchar](100) NOT NULL,
	[SubMenu] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanoID] ASC,
	[MenuParent] ASC,
	[SubMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanoContas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanoContas](
	[PlanoContasID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](150) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[EmpresaID] [bigint] NULL,
	[PlanoContasPaiID] [int] NULL,
	[TipoConta] [char](1) NULL,
	[CentroCusto] [varchar](15) NULL,
	[Cor] [varchar](30) NULL,
	[ContaBancariaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanoContasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[IdProduto] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[CodigoBarras] [varchar](14) NULL,
	[Descricao] [varchar](300) NULL,
	[Ncm] [varchar](8) NULL,
	[DescricaoNcm] [varchar](2000) NULL,
	[Cfop] [smallint] NULL,
	[DescricaoCfop] [varchar](500) NULL,
	[IdUnidadeComercial] [smallint] NULL,
	[CodigoOrigemMercadoria] [varchar](2) NULL,
	[PrecoCusto] [decimal](15, 2) NULL,
	[PercentualMargem] [decimal](5, 2) NULL,
	[PrecoVenda] [decimal](15, 2) NULL,
	[Cst_ICMS] [varchar](3) NULL,
	[ModalidadeBC_ICMS] [varchar](2) NULL,
	[AliquotaICMS] [decimal](5, 2) NULL,
	[ModalidadeBC_ICMS_ST] [varchar](2) NULL,
	[Mva_ICMS_ST] [decimal](9, 2) NULL,
	[Cst_IPI] [char](2) NULL,
	[ModalidadeBC_IPI] [char](1) NULL,
	[AliquotaIPI] [decimal](5, 2) NULL,
	[Cst_PIS] [varchar](2) NULL,
	[AliquotaPIS] [decimal](5, 2) NULL,
	[Cst_COFINS] [char](2) NULL,
	[AliquotaCOFINS] [decimal](5, 2) NULL,
	[NumeroFCI] [varchar](40) NULL,
	[Cest] [varchar](7) NULL,
	[DescricaoCest] [varchar](500) NULL,
	[Nve] [smallint] NULL,
	[QuantidadeEstoque] [decimal](9, 2) NULL,
	[EstoqueMinimo] [int] NULL,
	[Espessura] [varchar](10) NULL,
	[Largura] [varchar](10) NULL,
	[Comprimento] [varchar](10) NULL,
	[Peso] [varchar](10) NULL,
	[Tamanho] [varchar](10) NULL,
	[exTipi] [varchar](3) NULL,
	[IdMarca] [int] NULL,
	[IdDepartamento] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[OutrosAcrescimos] [decimal](15, 2) NULL,
	[CodigoInternoProduto] [varchar](20) NOT NULL,
	[TituloMarketPlace] [varchar](300) NULL,
	[SKU] [varchar](100) NULL,
	[CategoriaMarketPlace] [varchar](300) NULL,
	[DescricaoMarketPlace] [varchar](max) NULL,
	[CategoriaMarketPlace1] [varchar](30) NULL,
	[CategoriaMarketPlace2] [varchar](30) NULL,
	[CategoriaMarketPlace3] [varchar](30) NULL,
	[CategoriaMarketPlace4] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutoCaracteristicas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoCaracteristicas](
	[IdProduto] [int] NOT NULL,
	[IdCaracteristica] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Valor] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdCaracteristica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutoImagens]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoImagens](
	[IdProduto] [int] NOT NULL,
	[IdImagem] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdImagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutoLojaMarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoLojaMarketPlace](
	[LojaMarketPlaceID] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[QuantidadeEstoque] [int] NULL,
	[PrecoDe] [decimal](15, 2) NULL,
	[PrecoPor] [decimal](15, 2) NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LojaMarketPlaceID] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutoVariacoesMarketPlace]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoVariacoesMarketPlace](
	[IdProduto] [int] NOT NULL,
	[IdProdutoVariacao] [int] NOT NULL,
	[SKU] [varchar](100) NULL,
	[Ean] [varchar](14) NULL,
	[Descricao] [varchar](300) NULL,
	[VariaCor] [bit] NULL,
	[VariaTamanho] [bit] NULL,
	[VariaVoltagem] [bit] NULL,
	[QuantidadeEstoque] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdProdutoVariacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Protocolos]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Protocolos](
	[ID_Protocolo] [int] IDENTITY(1,1) NOT NULL,
	[DataAbertura] [datetime] NULL,
	[Atendente] [nvarchar](59) NULL,
	[ProtocoloOperadora] [nvarchar](50) NULL,
	[ID_FuncionarioAbertura] [int] NULL,
	[Observacoes] [nvarchar](250) NULL,
	[ID_Cliente] [int] NULL,
	[ID_Operadora] [int] NULL,
	[ID_Contrato] [int] NULL,
	[DataFinalizacao] [datetime] NULL,
	[ID_FuncionarioFinaliza] [int] NULL,
	[Situacao] [nvarchar](20) NULL,
	[ProtocoloDesconto] [bit] NULL,
	[EmpresaID] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderNFSe]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderNFSe](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderSchema]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderSchema](
	[ProviderID] [int] NOT NULL,
	[NomeMetodoWebService] [varchar](60) NOT NULL,
	[NomeSchema] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC,
	[NomeMetodoWebService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusGeneric]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusGeneric](
	[TabelaID] [smallint] NOT NULL,
	[TabelaNome] [varchar](50) NULL,
	[StatusID] [smallint] NOT NULL,
	[Descricao] [varchar](60) NULL,
	[CssClass] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[TabelaID] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubContaBancaria]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubContaBancaria](
	[SubContaID] [int] IDENTITY(1,1) NOT NULL,
	[ContaBancariaID] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubContaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMenus]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenus](
	[MenuParent] [varchar](100) NOT NULL,
	[SubMenu] [varchar](100) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[Area] [varchar](100) NOT NULL,
	[Action] [varchar](100) NOT NULL,
	[SubAction] [varchar](100) NULL,
	[Id] [varchar](100) NULL,
	[SubId] [varchar](100) NULL,
	[ExibirFuncionalidade] [bit] NULL,
	[NomeFuncionalidade] [varchar](150) NULL,
	[Ordem] [tinyint] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuParent] ASC,
	[SubMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysJobs]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysJobs](
	[JobID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](500) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SysJobs] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysJobsSteps]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysJobsSteps](
	[JobID] [uniqueidentifier] NOT NULL,
	[StepID] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Comando] [nvarchar](max) NOT NULL,
	[UltimaExecucao] [datetime] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SysJobsSteps] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC,
	[StepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaGenerica]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaGenerica](
	[TabelaID] [varchar](255) NOT NULL,
	[ChaveID] [varchar](60) NOT NULL,
	[Descricao] [varchar](300) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TabelaGenerica] PRIMARY KEY CLUSTERED 
(
	[TabelaID] ASC,
	[ChaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_Criminal]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_Criminal](
	[UF] [varchar](60) NULL,
	[TipoCrime] [varchar](150) NULL,
	[Ano] [int] NULL,
	[Mes] [varchar](60) NULL,
	[Ocorrencias] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateReport]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateReport](
	[TemplateID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[Titulo] [varchar](200) NULL,
	[ImagemHeader] [varbinary](max) NULL,
	[ImagemFooter] [varbinary](max) NULL,
	[TextoBody] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLiquidacao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLiquidacao](
	[BancoID] [int] NOT NULL,
	[CodigoLiquidacaoID] [varchar](2) NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[TipoRecursoID] [smallint] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TipoLiquidacao] PRIMARY KEY CLUSTERED 
(
	[BancoID] ASC,
	[CodigoLiquidacaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLogradouro]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLogradouro](
	[TipoLogradouroID] [smallint] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Abreviatura] [varchar](10) NULL,
	[AbreviaturaFormatada] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoLogradouroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoRecurso]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRecurso](
	[TipoRecursoID] [smallint] NOT NULL,
	[DescricaoRecurso] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TipoRecurso] PRIMARY KEY CLUSTERED 
(
	[TipoRecursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposExame]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposExame](
	[TipoExameID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoExameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportador]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportador](
	[TransportadorID] [int] NOT NULL,
	[TipoPessoa] [tinyint] NOT NULL,
	[CpfCnpj] [varchar](14) NOT NULL,
	[NomeRazaoSocial] [varchar](100) NOT NULL,
	[InscEstadual] [varchar](20) NULL,
	[Endereco] [varchar](60) NULL,
	[Complemento] [varchar](60) NULL,
	[Bairro] [varchar](60) NULL,
	[MunicipioID] [int] NULL,
	[EstadoID] [tinyint] NULL,
	[PaisID] [smallint] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Transportador] PRIMARY KEY CLUSTERED 
(
	[TransportadorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadeComercial]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadeComercial](
	[UnidID] [smallint] NOT NULL,
	[UnidAbrev] [varchar](10) NOT NULL,
	[UnidDescricao] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[EmpresaID] [bigint] NULL,
 CONSTRAINT [PK_UnidadeComercial] PRIMARY KEY CLUSTERED 
(
	[UnidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadeFederacao]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadeFederacao](
	[UfID] [smallint] NOT NULL,
	[UfAbrev] [char](2) NOT NULL,
	[UfDescricao] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_UnidadesFederacao] PRIMARY KEY CLUSTERED 
(
	[UfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Url]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Url](
	[AmbienteID] [smallint] NOT NULL,
	[UfID] [smallint] NOT NULL,
	[MetodoWebService] [varchar](60) NOT NULL,
	[UrlWebService] [varchar](150) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Url] PRIMARY KEY CLUSTERED 
(
	[AmbienteID] ASC,
	[UfID] ASC,
	[MetodoWebService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrlMonicipio]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlMonicipio](
	[MunicipioID] [int] NOT NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[MetodoWebService] [varchar](50) NOT NULL,
	[UrlWebService] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[UrlImpressao] [varchar](200) NULL,
 CONSTRAINT [PK_UrlMonicipio] PRIMARY KEY CLUSTERED 
(
	[MunicipioID] ASC,
	[AmbienteID] ASC,
	[MetodoWebService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[VendaID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [bigint] NOT NULL,
	[ClienteID] [int] NOT NULL,
	[DataVenda] [datetime] NOT NULL,
	[ValorTotalProdutos] [decimal](15, 2) NOT NULL,
	[ValorTotalAcrescimo] [decimal](15, 2) NULL,
	[ValorTotalDesconto] [decimal](15, 2) NULL,
	[ValorTotalFrete] [decimal](15, 2) NULL,
	[ValorTotalOutrasDesp] [decimal](15, 2) NULL,
	[ValorTotalVenda] [decimal](15, 2) NOT NULL,
	[StatusID] [smallint] NOT NULL,
	[VendaFaturada] [bit] NOT NULL,
	[NumeroNotaFiscal] [int] NULL,
	[ChaveAcessoNotaFiscal] [varchar](44) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[ColaboradorID] [int] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[NumeroParcelas] [tinyint] NULL,
	[ValorPago] [decimal](15, 2) NULL,
	[ValorTroco] [decimal](15, 2) NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[NaturezaOperacaoID] [varchar](5) NULL,
	[ObservacoesFiscais] [varchar](5000) NULL,
	[LocalEntregaDiferente] [bit] NULL,
	[CpfCnpjEntrega] [varchar](14) NULL,
	[LogradouroEntrega] [varchar](60) NULL,
	[NumeroEntrega] [varchar](60) NULL,
	[ComplementoEntrega] [varchar](60) NULL,
	[BairroEntrega] [varchar](50) NULL,
	[UfIDEntrega] [tinyint] NULL,
	[MunicipioIDEntrega] [int] NULL,
	[PedidoID] [int] NULL,
	[ContratoID] [int] NULL,
	[ContaBancariaID] [int] NULL,
	[numeroContrato] [varchar](10) NULL,
	[NfID_Retorno] [int] NULL,
	[ChaveNotaFiscalEntrada] [varchar](44) NULL,
 CONSTRAINT [PK_Venda] PRIMARY KEY CLUSTERED 
(
	[VendaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendaItem]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendaItem](
	[VendaID] [bigint] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[IdUnidadeComercial] [smallint] NOT NULL,
	[QuantidadeComercial] [decimal](8, 2) NOT NULL,
	[ValorUnitarioComercial] [decimal](15, 2) NOT NULL,
	[ValorTotalProduto] [decimal](15, 2) NOT NULL,
	[ValorFrete] [decimal](15, 2) NULL,
	[ValorSeguro] [decimal](15, 2) NULL,
	[ValorDesconto] [decimal](15, 2) NULL,
	[PercentualDesconto] [decimal](5, 2) NULL,
	[ValorDespesasAcessorias] [decimal](15, 2) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[DescricaoProduto] [varchar](300) NULL,
 CONSTRAINT [PK_VendaItem] PRIMARY KEY CLUSTERED 
(
	[VendaID] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendaParcelas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendaParcelas](
	[VendaID] [bigint] NOT NULL,
	[Numero] [smallint] NOT NULL,
	[Vencimento] [datetime] NULL,
	[Valor] [decimal](15, 2) NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[Instrucoes] [varchar](500) NULL,
	[CodigoInstrucao1] [char](2) NULL,
	[CodigoInstrucao2] [char](2) NULL,
	[Juros] [decimal](9, 2) NULL,
	[Multa] [decimal](9, 2) NULL,
	[TipoMulta] [char](1) NULL,
 CONSTRAINT [PK_VendaParcelas] PRIMARY KEY CLUSTERED 
(
	[VendaID] ASC,
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendaServico]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendaServico](
	[VendaServicoID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NULL,
	[EmpresaID] [bigint] NOT NULL,
	[DataEmissao] [datetime] NOT NULL,
	[LocalIncidenciaID] [varchar](2) NOT NULL,
	[NaturezaOperacaoID] [varchar](2) NOT NULL,
	[Descricao] [varchar](2000) NULL,
	[ServicoID] [int] NOT NULL,
	[ValorServico] [decimal](15, 2) NOT NULL,
	[CodigoTributacaoMunicipio] [varchar](10) NULL,
	[ItemListaServico] [varchar](10) NULL,
	[AliquotaISSQN] [decimal](9, 2) NOT NULL,
	[ValorDeducoes] [decimal](9, 2) NULL,
	[BaseCalculoISSQN] [decimal](15, 2) NOT NULL,
	[ValorISSQN] [decimal](15, 2) NOT NULL,
	[ReterISSQN] [bit] NOT NULL,
	[ValorDesconto] [decimal](15, 2) NULL,
	[ValorTotalRetencoes] [decimal](15, 2) NULL,
	[ValorTotalServicos] [decimal](15, 2) NOT NULL,
	[AliquotaCSLL] [decimal](9, 2) NULL,
	[AliquotaIRRF] [decimal](9, 2) NULL,
	[AliquotaPIS] [decimal](9, 2) NULL,
	[AliquotaCOFINS] [decimal](9, 2) NULL,
	[AliquotaINSS] [decimal](9, 2) NULL,
	[ValorCSLL] [decimal](15, 2) NULL,
	[ValorIRRF] [decimal](15, 2) NULL,
	[ValorPIS] [decimal](15, 2) NULL,
	[ValorCOFINS] [decimal](15, 2) NULL,
	[ValorINSS] [decimal](15, 2) NULL,
	[ReterCSLL] [bit] NULL,
	[ReterIRRF] [bit] NULL,
	[ReterPIS] [bit] NULL,
	[ReterCOFINS] [bit] NULL,
	[ReterINSS] [bit] NULL,
	[ColaboradorID] [int] NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[NumeroParcelas] [tinyint] NULL,
	[ValorPago] [decimal](15, 2) NOT NULL,
	[ValorTroco] [decimal](9, 2) NULL,
	[GerarContrato] [bit] NULL,
	[FaturarMensalmente] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[SerieRPS] [varchar](15) NULL,
	[NumeroRPS] [bigint] NULL,
	[NumeroNFSe] [bigint] NULL,
	[Stat] [int] NULL,
	[DescricaoStatus] [varchar](500) NULL,
	[CodigoVerificacaoNFse] [varchar](9) NULL,
	[DataSolicitacaoCancelamento] [datetime] NULL,
	[XmlNFSe] [xml] NULL,
	[NumeroLoteRPS] [bigint] NULL,
	[XmlRps] [xml] NULL,
	[AmbienteID] [tinyint] NOT NULL,
	[StatusID] [smallint] NULL,
	[PedidoID] [int] NULL,
	[ContratoID] [int] NULL,
	[ContaBancariaID] [int] NULL,
	[MunicipioID] [int] NULL,
	[MunicipioDescricao] [varchar](100) NULL,
	[CodigoObra] [varchar](15) NULL,
 CONSTRAINT [PK__VendaSer__B2811190EA3EA615] PRIMARY KEY CLUSTERED 
(
	[VendaServicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendaServicoParcelas]    Script Date: 15/03/2025 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendaServicoParcelas](
	[VendaServicoID] [int] NOT NULL,
	[Numero] [smallint] NOT NULL,
	[Vencimento] [datetime] NULL,
	[Valor] [decimal](15, 2) NULL,
	[Instrucoes] [varchar](500) NULL,
	[FormaPagamentoID] [tinyint] NULL,
	[CodigoInstrucao1] [char](2) NULL,
	[CodigoInstrucao2] [char](2) NULL,
	[Juros] [decimal](9, 2) NULL,
	[Multa] [decimal](9, 2) NULL,
	[TipoMulta] [char](1) NULL,
 CONSTRAINT [PK_VendaServicoParcelas] PRIMARY KEY CLUSTERED 
(
	[VendaServicoID] ASC,
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aliquota] ADD  CONSTRAINT [DF_AliquotaICMS_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Aliquota] ADD  CONSTRAINT [DF_AliquotaICMS_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Aliquota] ADD  CONSTRAINT [DF_AliquotaICMS_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Aliquota_Produto] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Aliquota_Produto] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Aliquota_Produto] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Ambiente] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Anp] ADD  CONSTRAINT [DF_ProdutoANP_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Anp] ADD  CONSTRAINT [DF_Anp_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Anp] ADD  CONSTRAINT [DF_Anp_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[AutorizacaoArea] ADD  CONSTRAINT [DF_AutorizacaoArea_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AutorizacaoArea] ADD  CONSTRAINT [DF_AutorizacaoArea_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AutorizacaoArea] ADD  CONSTRAINT [DF_AutorizacaoArea_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[AutorizacaoTransacao] ADD  CONSTRAINT [DF_AutorizacaoTransacao_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AutorizacaoTransacao] ADD  CONSTRAINT [DF_AutorizacaoTransacao_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AutorizacaoTransacao] ADD  CONSTRAINT [DF_AutorizacaoTransacao_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[BancosFebraban] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[BancosFebraban] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[BoletoBancario] ADD  CONSTRAINT [DF_BoletoBancario_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[BoletoBancario] ADD  CONSTRAINT [DF_BoletoBancario_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[CarteiraCobranca] ADD  CONSTRAINT [DF_CarteiraCobranca_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CarteiraCobranca] ADD  CONSTRAINT [DF_CarteiraCobranca_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CarteiraCobranca] ADD  CONSTRAINT [DF_CarteiraCobranca_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Cest] ADD  CONSTRAINT [DF_Cest_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Cest] ADD  CONSTRAINT [DF_Cest_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Cest] ADD  CONSTRAINT [DF_Cest_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Cfop] ADD  CONSTRAINT [DF_Cfop_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Cfop] ADD  CONSTRAINT [DF_Cfop_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Cfop] ADD  CONSTRAINT [DF_Cfop_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ClienteContatos] ADD  CONSTRAINT [DF_ClienteContatos_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ClienteContatos] ADD  CONSTRAINT [DF_ClienteContatos_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ClienteReferenciaBancaria] ADD  CONSTRAINT [DF_ClienteReferenciaBancaria_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ClienteReferenciaBancaria] ADD  CONSTRAINT [DF_ClienteReferenciaBancaria_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ClienteReferencias] ADD  CONSTRAINT [DF_ClienteReferencias_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ClienteReferencias] ADD  CONSTRAINT [DF_ClienteReferencias_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[CobrancaBancaria] ADD  CONSTRAINT [DF_CobrancaBancaria_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CobrancaBancaria] ADD  CONSTRAINT [DF_CobrancaBancaria_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CobrancaBancaria] ADD  CONSTRAINT [DF_Table_1_Updatedn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Colaborador] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Colaborador] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Colaborador] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ContaBancaria] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ContaBancaria] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ContaBancaria] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ContratoCliente] ADD  CONSTRAINT [DF_ContratoCliente_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ContratoServico] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ContratoServico] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[EmpresaSerieNfe] ADD  CONSTRAINT [DF_EmpresaSerieNfe_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmpresaSerieNfe] ADD  CONSTRAINT [DF_EmpresaSerieNfe_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Envolvido] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Envolvido] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Envolvido] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[EspecieCobranca] ADD  CONSTRAINT [DF_EspecieCobranca_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[EspecieCobranca] ADD  CONSTRAINT [DF_EspecieCobranca_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EspecieCobranca] ADD  CONSTRAINT [DF_EspecieCobranca_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Exames] ADD  DEFAULT ((1)) FOR [Ativo]
GO
ALTER TABLE [dbo].[Exames] ADD  DEFAULT (getdate()) FOR [DataCadastro]
GO
ALTER TABLE [dbo].[FilaVendaServico] ADD  DEFAULT ((0)) FOR [Stat]
GO
ALTER TABLE [dbo].[FilaVendaServico] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FilaVendaServico] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[FilaVendaServicoHistorico] ADD  DEFAULT ((0)) FOR [Stat]
GO
ALTER TABLE [dbo].[FilaVendaServicoHistorico] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FilaVendaServicoHistorico] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[FormaPagamento] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FormaPagamento] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FormaPagamento] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Fornecedor] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Fornecedor] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Fornecedor] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[GrupoAutorizacao] ADD  CONSTRAINT [DF_GrupoAutorizacao_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GrupoAutorizacao] ADD  CONSTRAINT [DF_GrupoAutorizacao_UpdateOn]  DEFAULT (getdate()) FOR [UpdateOn]
GO
ALTER TABLE [dbo].[GrupoAutorizacaoPermissao] ADD  CONSTRAINT [DF_GrupoAutorizacaoPermissao_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GrupoAutorizacaoPermissao] ADD  CONSTRAINT [DF_GrupoAutorizacaoPermissao_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[GrupoParametro] ADD  CONSTRAINT [DF_GrupoParametro_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GrupoParametro] ADD  CONSTRAINT [DF_GrupoParametro_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GrupoParametro] ADD  CONSTRAINT [DF_GrupoParametro_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[LogErro] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LogErro] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[NaturezaOperacao] ADD  CONSTRAINT [DF__NaturezaO__IsAct__1B5E0D89]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[NaturezaOperacao] ADD  CONSTRAINT [DF__NaturezaO__Creat__1C5231C2]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NaturezaOperacao] ADD  CONSTRAINT [DF__NaturezaO__Updat__1D4655FB]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Ncm] ADD  CONSTRAINT [DF_Ncm_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Ncm] ADD  CONSTRAINT [DF_Ncm_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Ncm] ADD  CONSTRAINT [DF_Ncm_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[NotaFiscalCce] ADD  CONSTRAINT [DF_NotaFiscalCce_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NotaFiscalCce] ADD  CONSTRAINT [DF_NotaFiscalCce_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[NotaFiscalServico] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[NotaFiscalServico] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NotaFiscalServico] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[NotaFiscalSolicitacaoCancelamento] ADD  CONSTRAINT [DF_NotaFiscalSolicitacaoCancelamento_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[NotaFiscalSolicitacaoCancelamento] ADD  CONSTRAINT [DF_NotaFiscalSolicitacaoCancelamento_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Paciente] ADD  DEFAULT ((1)) FOR [Ativo]
GO
ALTER TABLE [dbo].[Paciente] ADD  DEFAULT (getdate()) FOR [DataCadastro]
GO
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [DF_Pais_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [DF_Pais_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [DF_Pais_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Parametro] ADD  CONSTRAINT [DF_Parametro_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Parametro] ADD  CONSTRAINT [DF_Parametro_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Parametro] ADD  CONSTRAINT [DF_Parametro_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ParametroServico] ADD  CONSTRAINT [DF__Parametro__IsAct__2D7CBDC4]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ParametroServico] ADD  CONSTRAINT [DF__Parametro__Creat__2E70E1FD]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ParametroServico] ADD  CONSTRAINT [DF__Parametro__Updat__2F650636]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[ParametrosGlobais] ADD  CONSTRAINT [DF_ParametrosGlobais_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ParametrosGlobais] ADD  CONSTRAINT [DF_ParametrosGlobais_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ParametrosGlobais] ADD  CONSTRAINT [DF_ParametrosGlobais_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Pedido] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Pedido] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[PlanoContas] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Produto] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Produto] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Produto] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Produto] ADD  DEFAULT ('999999') FOR [CodigoInternoProduto]
GO
ALTER TABLE [dbo].[SysJobs] ADD  CONSTRAINT [DF_SysJobs_JobID]  DEFAULT (newid()) FOR [JobID]
GO
ALTER TABLE [dbo].[SysJobs] ADD  CONSTRAINT [DF_SysJobs_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SysJobs] ADD  CONSTRAINT [DF_SysJobs_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[SysJobsSteps] ADD  CONSTRAINT [DF_SysJobsSteps_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SysJobsSteps] ADD  CONSTRAINT [DF_SysJobsSteps_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TabelaGenerica] ADD  CONSTRAINT [DF_TabelaGenerica_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[TabelaGenerica] ADD  CONSTRAINT [DF_TabelaGenerica_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TabelaGenerica] ADD  CONSTRAINT [DF_TabelaGenerica_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TipoLiquidacao] ADD  CONSTRAINT [DF_TipoLiquidacao_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[TipoLiquidacao] ADD  CONSTRAINT [DF_TipoLiquidacao_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TipoLiquidacao] ADD  CONSTRAINT [DF_TipoLiquidacao_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TipoRecurso] ADD  CONSTRAINT [DF_TipoRecurso_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[TipoRecurso] ADD  CONSTRAINT [DF_TipoRecurso_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TipoRecurso] ADD  CONSTRAINT [DF_TipoRecurso_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TiposExame] ADD  DEFAULT ((1)) FOR [Ativo]
GO
ALTER TABLE [dbo].[Transportador] ADD  CONSTRAINT [DF_Transportador_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Transportador] ADD  CONSTRAINT [DF_Transportador_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Transportador] ADD  CONSTRAINT [DF_Transportador_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[UnidadeComercial] ADD  CONSTRAINT [DF_UnidadeComercial_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UnidadeComercial] ADD  CONSTRAINT [DF_UnidadeComercial_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UnidadeComercial] ADD  CONSTRAINT [DF_UnidadeComercial_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[UnidadeFederacao] ADD  CONSTRAINT [DF_UnidadesFederacao_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UnidadeFederacao] ADD  CONSTRAINT [DF_UnidadesFederacao_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UnidadeFederacao] ADD  CONSTRAINT [DF_UnidadesFederacao_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Url] ADD  CONSTRAINT [DF_Url_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Url] ADD  CONSTRAINT [DF_Url_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Url] ADD  CONSTRAINT [DF_Url_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[UrlMonicipio] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UrlMonicipio] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UrlMonicipio] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Venda] ADD  CONSTRAINT [DF_Venda_LocalEntregaDiferente]  DEFAULT ((0)) FOR [LocalEntregaDiferente]
GO
ALTER TABLE [dbo].[VendaServico] ADD  CONSTRAINT [DF__VendaServ__IsAct__567ED357]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[VendaServico] ADD  CONSTRAINT [DF__VendaServ__Creat__5772F790]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[VendaServico] ADD  CONSTRAINT [DF__VendaServ__Updat__58671BC9]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Aliquota_Produto]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ArquivoRemessa]  WITH CHECK ADD  CONSTRAINT [FK_ArquivoRemessa_CobrancaBancaria] FOREIGN KEY([ContaBancariaID], [CarteiraBancariaID])
REFERENCES [dbo].[CobrancaBancaria] ([ContaBancariaID], [CarteiraCobrancaID])
GO
ALTER TABLE [dbo].[ArquivoRemessa] CHECK CONSTRAINT [FK_ArquivoRemessa_CobrancaBancaria]
GO
ALTER TABLE [dbo].[ArquivoRemessaItens]  WITH CHECK ADD  CONSTRAINT [FK_ArquivoRemessaItens_ArquivoRemessa] FOREIGN KEY([ContaBancariaID], [CarteiraBancariaID], [NroLoteRemessa])
REFERENCES [dbo].[ArquivoRemessa] ([ContaBancariaID], [CarteiraBancariaID], [NroLoteRemessa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ArquivoRemessaItens] CHECK CONSTRAINT [FK_ArquivoRemessaItens_ArquivoRemessa]
GO
ALTER TABLE [dbo].[ArquivoRetorno]  WITH CHECK ADD  CONSTRAINT [FK_ArquivoRetorno_CobrancaBancaria] FOREIGN KEY([ContaBancariaID], [CarteiraBancariaID])
REFERENCES [dbo].[CobrancaBancaria] ([ContaBancariaID], [CarteiraCobrancaID])
GO
ALTER TABLE [dbo].[ArquivoRetorno] CHECK CONSTRAINT [FK_ArquivoRetorno_CobrancaBancaria]
GO
ALTER TABLE [dbo].[ArquivoRetornoItens]  WITH CHECK ADD FOREIGN KEY([CodigoOcorrencia])
REFERENCES [dbo].[OcorrenciaRetornoItau] ([CodigoOcorrencia])
GO
ALTER TABLE [dbo].[ArquivoRetornoItens]  WITH CHECK ADD  CONSTRAINT [FK_ArquivoRetornoItens_ArquivoRetorno] FOREIGN KEY([ContaBancariaID], [CarteiraBancariaID], [NroLoteRetorno])
REFERENCES [dbo].[ArquivoRetorno] ([ContaBancariaID], [CarteiraBancariaID], [NroLoteRetorno])
GO
ALTER TABLE [dbo].[ArquivoRetornoItens] CHECK CONSTRAINT [FK_ArquivoRetornoItens_ArquivoRetorno]
GO
ALTER TABLE [dbo].[ArquivosAnexos]  WITH CHECK ADD FOREIGN KEY([ContasReceberID])
REFERENCES [dbo].[ContasReceber] ([ContasReceberID])
GO
ALTER TABLE [dbo].[ArquivosAnexos]  WITH CHECK ADD FOREIGN KEY([ContasPagarID])
REFERENCES [dbo].[ContasPagar] ([ContasPagarID])
GO
ALTER TABLE [dbo].[ArquivosAnexos]  WITH CHECK ADD FOREIGN KEY([ContratoID])
REFERENCES [dbo].[ContratoServico] ([ContratoID])
GO
ALTER TABLE [dbo].[ArquivosAnexos]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Assinante]  WITH CHECK ADD FOREIGN KEY([ParceiroID])
REFERENCES [dbo].[Parceiro] ([ParceiroID])
GO
ALTER TABLE [dbo].[Atestado]  WITH CHECK ADD  CONSTRAINT [FK_Atestado_Paciente] FOREIGN KEY([PacienteID])
REFERENCES [dbo].[Paciente] ([PacienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Atestado] CHECK CONSTRAINT [FK_Atestado_Paciente]
GO
ALTER TABLE [dbo].[AutorizacaoTransacao]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacaoTransacao_AutorizacaoArea] FOREIGN KEY([AreaID])
REFERENCES [dbo].[AutorizacaoArea] ([AreaID])
GO
ALTER TABLE [dbo].[AutorizacaoTransacao] CHECK CONSTRAINT [FK_AutorizacaoTransacao_AutorizacaoArea]
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD FOREIGN KEY([CodigoInstrucao1])
REFERENCES [dbo].[InstrucaoCobrancaRemessa] ([Codigo])
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD FOREIGN KEY([CodigoInstrucao2])
REFERENCES [dbo].[InstrucaoCobrancaRemessa] ([Codigo])
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD  CONSTRAINT [FK_BoletoBancario_BancosFebraban] FOREIGN KEY([BancoCobradorID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[BoletoBancario] CHECK CONSTRAINT [FK_BoletoBancario_BancosFebraban]
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD  CONSTRAINT [FK_BoletoBancario_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[BoletoBancario] CHECK CONSTRAINT [FK_BoletoBancario_Cliente]
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD  CONSTRAINT [FK_BoletoBancario_CobrancaBancaria] FOREIGN KEY([ContaBancariaID], [CateiraCobrancaID])
REFERENCES [dbo].[CobrancaBancaria] ([ContaBancariaID], [CarteiraCobrancaID])
GO
ALTER TABLE [dbo].[BoletoBancario] CHECK CONSTRAINT [FK_BoletoBancario_CobrancaBancaria]
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD  CONSTRAINT [FK_BoletoBancario_ContasReceber] FOREIGN KEY([ContaReceberID])
REFERENCES [dbo].[ContasReceber] ([ContasReceberID])
GO
ALTER TABLE [dbo].[BoletoBancario] CHECK CONSTRAINT [FK_BoletoBancario_ContasReceber]
GO
ALTER TABLE [dbo].[BoletoBancario]  WITH NOCHECK ADD  CONSTRAINT [FK_BoletoBancario_EspecieCobranca] FOREIGN KEY([EspecieCobrancaID])
REFERENCES [dbo].[EspecieCobranca] ([EspecieCobrancaID])
GO
ALTER TABLE [dbo].[BoletoBancario] CHECK CONSTRAINT [FK_BoletoBancario_EspecieCobranca]
GO
ALTER TABLE [dbo].[CarteiraCobranca]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[CategoriaEvento]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[CategoriaMarketPlace]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[ClienteContatos]  WITH CHECK ADD  CONSTRAINT [FK_ClienteContatos_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClienteContatos] CHECK CONSTRAINT [FK_ClienteContatos_Cliente]
GO
ALTER TABLE [dbo].[ClienteInteraction]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[ClienteInteraction]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[ClienteInteraction]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ClienteReferenciaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_ClienteReferenciaBancaria_BancosFebraban] FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[ClienteReferenciaBancaria] CHECK CONSTRAINT [FK_ClienteReferenciaBancaria_BancosFebraban]
GO
ALTER TABLE [dbo].[ClienteReferenciaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_ClienteReferenciaBancaria_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClienteReferenciaBancaria] CHECK CONSTRAINT [FK_ClienteReferenciaBancaria_Cliente]
GO
ALTER TABLE [dbo].[ClienteReferencias]  WITH CHECK ADD  CONSTRAINT [FK_ClienteReferencias_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClienteReferencias] CHECK CONSTRAINT [FK_ClienteReferencias_Cliente]
GO
ALTER TABLE [dbo].[CobrancaBancaria]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[CobrancaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_CobrancaBancaria_CarteiraCobranca] FOREIGN KEY([CarteiraCobrancaID], [BancoID])
REFERENCES [dbo].[CarteiraCobranca] ([CarteiraCobrancaID], [BancoID])
GO
ALTER TABLE [dbo].[CobrancaBancaria] CHECK CONSTRAINT [FK_CobrancaBancaria_CarteiraCobranca]
GO
ALTER TABLE [dbo].[CobrancaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_CobrancaBancaria_ContaBancaria] FOREIGN KEY([ContaBancariaID])
REFERENCES [dbo].[ContaBancaria] ([ContaBancariaID])
GO
ALTER TABLE [dbo].[CobrancaBancaria] CHECK CONSTRAINT [FK_CobrancaBancaria_ContaBancaria]
GO
ALTER TABLE [dbo].[Colaborador]  WITH CHECK ADD FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[Colaborador]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[Colaborador]  WITH CHECK ADD FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Colaborador]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Colaborador]  WITH CHECK ADD  CONSTRAINT [FK_Colaborador_GrupoAutorizacao] FOREIGN KEY([GrupoAuthID])
REFERENCES [dbo].[GrupoAutorizacao] ([GrupoAuthID])
GO
ALTER TABLE [dbo].[Colaborador] CHECK CONSTRAINT [FK_Colaborador_GrupoAutorizacao]
GO
ALTER TABLE [dbo].[CommonPlanoContas]  WITH CHECK ADD FOREIGN KEY([PlanoContasPaiID])
REFERENCES [dbo].[CommonPlanoContas] ([PlanoContasID])
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD FOREIGN KEY([FornecedorID])
REFERENCES [dbo].[Fornecedor] ([FornecedorID])
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Cliente]
GO
ALTER TABLE [dbo].[CompraItem]  WITH CHECK ADD FOREIGN KEY([CompraID])
REFERENCES [dbo].[Compra] ([CompraID])
GO
ALTER TABLE [dbo].[CompraItem]  WITH CHECK ADD FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[CompraParcelas]  WITH CHECK ADD FOREIGN KEY([CompraID])
REFERENCES [dbo].[Compra] ([CompraID])
GO
ALTER TABLE [dbo].[ConciliacaoBancaria]  WITH CHECK ADD  CONSTRAINT [FK__Conciliac__Conta__090A5324] FOREIGN KEY([ContaBancariaID])
REFERENCES [dbo].[ContaBancaria] ([ContaBancariaID])
GO
ALTER TABLE [dbo].[ConciliacaoBancaria] CHECK CONSTRAINT [FK__Conciliac__Conta__090A5324]
GO
ALTER TABLE [dbo].[ConciliacaoBancariaTransactions]  WITH CHECK ADD FOREIGN KEY([ConciliacaoBancariaID])
REFERENCES [dbo].[ConciliacaoBancaria] ([ConciliacaoBancariaID])
GO
ALTER TABLE [dbo].[ConciliacaoBancariaTransactions]  WITH CHECK ADD FOREIGN KEY([ContasPagarID])
REFERENCES [dbo].[ContasPagar] ([ContasPagarID])
GO
ALTER TABLE [dbo].[ConciliacaoBancariaTransactions]  WITH CHECK ADD FOREIGN KEY([ContasReceberID])
REFERENCES [dbo].[ContasReceber] ([ContasReceberID])
GO
ALTER TABLE [dbo].[ContaBancaria]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[ContaBancaria]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([CompraID])
REFERENCES [dbo].[Compra] ([CompraID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([EnvolvidoID])
REFERENCES [dbo].[Envolvido] ([EnvolvidoID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([FornecedorID])
REFERENCES [dbo].[Fornecedor] ([FornecedorID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([PlanoContasID])
REFERENCES [dbo].[PlanoContas] ([PlanoContasID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([SubContaID])
REFERENCES [dbo].[SubContaBancaria] ([SubContaID])
GO
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([BoletoBancarioID])
REFERENCES [dbo].[BoletoBancario] ([BoletoBancarioID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([EnvolvidoID])
REFERENCES [dbo].[Envolvido] ([EnvolvidoID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([PlanoContasID])
REFERENCES [dbo].[PlanoContas] ([PlanoContasID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([SubContaID])
REFERENCES [dbo].[SubContaBancaria] ([SubContaID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD  CONSTRAINT [FK__ContasRec__Venda__1E05700A] FOREIGN KEY([VendaServicoID])
REFERENCES [dbo].[VendaServico] ([VendaServicoID])
GO
ALTER TABLE [dbo].[ContasReceber] CHECK CONSTRAINT [FK__ContasRec__Venda__1E05700A]
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([VendaID])
REFERENCES [dbo].[Venda] ([VendaID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
GO
ALTER TABLE [dbo].[ContasReceber]  WITH CHECK ADD  CONSTRAINT [FK_ContasReceber_FormaPagamento] FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[ContasReceber] CHECK CONSTRAINT [FK_ContasReceber_FormaPagamento]
GO
ALTER TABLE [dbo].[ContratoCamposCustomizados]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD FOREIGN KEY([PlanoContasID])
REFERENCES [dbo].[PlanoContas] ([PlanoContasID])
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD  CONSTRAINT [FK__ContratoS__Servi__269AB60B] FOREIGN KEY([ServicoID])
REFERENCES [dbo].[ParametroServico] ([ServicoID])
GO
ALTER TABLE [dbo].[ContratoServico] CHECK CONSTRAINT [FK__ContratoS__Servi__269AB60B]
GO
ALTER TABLE [dbo].[ContratoServico]  WITH CHECK ADD FOREIGN KEY([TemplateID])
REFERENCES [dbo].[TemplateReport] ([TemplateID])
GO
ALTER TABLE [dbo].[ContratoServicoAditivo]  WITH CHECK ADD FOREIGN KEY([ContratoID])
REFERENCES [dbo].[ContratoServico] ([ContratoID])
GO
ALTER TABLE [dbo].[ContratoServicoAditivo]  WITH CHECK ADD FOREIGN KEY([PlanoContasID])
REFERENCES [dbo].[PlanoContas] ([PlanoContasID])
GO
ALTER TABLE [dbo].[ContratoServicoAditivo]  WITH CHECK ADD  CONSTRAINT [FK__ContratoS__Servi__2A6B46EF] FOREIGN KEY([ServicoID])
REFERENCES [dbo].[ParametroServico] ([ServicoID])
GO
ALTER TABLE [dbo].[ContratoServicoAditivo] CHECK CONSTRAINT [FK__ContratoS__Servi__2A6B46EF]
GO
ALTER TABLE [dbo].[ContratoServicoAditivo]  WITH CHECK ADD FOREIGN KEY([TemplateID])
REFERENCES [dbo].[TemplateReport] ([TemplateID])
GO
ALTER TABLE [dbo].[ContratoServicoAditivoParcelas]  WITH CHECK ADD  CONSTRAINT [FK__ContratoS__Venda__2C538F61] FOREIGN KEY([VendaServicoID])
REFERENCES [dbo].[VendaServico] ([VendaServicoID])
GO
ALTER TABLE [dbo].[ContratoServicoAditivoParcelas] CHECK CONSTRAINT [FK__ContratoS__Venda__2C538F61]
GO
ALTER TABLE [dbo].[ContratoServicoAditivoParcelas]  WITH CHECK ADD FOREIGN KEY([ContratoID], [AditivoID])
REFERENCES [dbo].[ContratoServicoAditivo] ([ContratoID], [AditivoID])
GO
ALTER TABLE [dbo].[ContratoServicoParcelas]  WITH CHECK ADD FOREIGN KEY([ContasReceberID])
REFERENCES [dbo].[ContasReceber] ([ContasReceberID])
GO
ALTER TABLE [dbo].[ContratoServicoParcelas]  WITH CHECK ADD FOREIGN KEY([ContratoID])
REFERENCES [dbo].[ContratoServico] ([ContratoID])
GO
ALTER TABLE [dbo].[ContratoServicoParcelas]  WITH CHECK ADD  CONSTRAINT [FK__ContratoS__Venda__30242045] FOREIGN KEY([VendaServicoID])
REFERENCES [dbo].[VendaServico] ([VendaServicoID])
GO
ALTER TABLE [dbo].[ContratoServicoParcelas] CHECK CONSTRAINT [FK__ContratoS__Venda__30242045]
GO
ALTER TABLE [dbo].[ContratoServicoProdutos]  WITH CHECK ADD FOREIGN KEY([ContratoID])
REFERENCES [dbo].[ContratoServico] ([ContratoID])
GO
ALTER TABLE [dbo].[ContratoServicoProdutos]  WITH CHECK ADD FOREIGN KEY([IDProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[DeParaProdutoImportacaoXml]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[DeParaProdutoImportacaoXml]  WITH CHECK ADD FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD FOREIGN KEY([PlanoID])
REFERENCES [dbo].[PlanoAssinatura] ([PlanoID])
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Estado] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Estado]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Municipio] FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Municipio]
GO
ALTER TABLE [dbo].[EmpresaLojaMarketPlace]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[EmpresaLojaMarketPlace]  WITH CHECK ADD FOREIGN KEY([LojaMarketPlaceID])
REFERENCES [dbo].[LojaMarketPlace] ([LojaMarketPlaceID])
GO
ALTER TABLE [dbo].[Envolvido]  WITH CHECK ADD FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[Envolvido]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Envolvido]  WITH CHECK ADD FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[Envolvido]  WITH CHECK ADD  CONSTRAINT [FK_EnvolvidoEStado] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Envolvido] CHECK CONSTRAINT [FK_EnvolvidoEStado]
GO
ALTER TABLE [dbo].[EstoqueLancamento]  WITH CHECK ADD FOREIGN KEY([CompraID])
REFERENCES [dbo].[Compra] ([CompraID])
GO
ALTER TABLE [dbo].[EstoqueLancamento]  WITH CHECK ADD FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[EstoqueLancamento]  WITH CHECK ADD FOREIGN KEY([VendaID])
REFERENCES [dbo].[Venda] ([VendaID])
GO
ALTER TABLE [dbo].[EstoqueLancamento]  WITH CHECK ADD FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
GO
ALTER TABLE [dbo].[EventoAgenda]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[EventoAgenda]  WITH CHECK ADD FOREIGN KEY([CategoriaEventoID])
REFERENCES [dbo].[CategoriaEvento] ([CategoriaEventoID])
GO
ALTER TABLE [dbo].[EventoAgenda]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ExamePacienteParcela]  WITH CHECK ADD  CONSTRAINT [FK_ExamePaciente] FOREIGN KEY([ExamePacienteID])
REFERENCES [dbo].[ExamesPacientes] ([ExamePacienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamePacienteParcela] CHECK CONSTRAINT [FK_ExamePaciente]
GO
ALTER TABLE [dbo].[ExamePacienteParcela]  WITH CHECK ADD  CONSTRAINT [FK_ExamePacienteParcela_Assinantes] FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[ExamePacienteParcela] CHECK CONSTRAINT [FK_ExamePacienteParcela_Assinantes]
GO
ALTER TABLE [dbo].[ExamePacienteParcela]  WITH CHECK ADD  CONSTRAINT [FK_ExamePacienteParcela_Empresas] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ExamePacienteParcela] CHECK CONSTRAINT [FK_ExamePacienteParcela_Empresas]
GO
ALTER TABLE [dbo].[ExamePacienteParcela]  WITH CHECK ADD  CONSTRAINT [FK_ExamePacienteParcela_FormaPagamento] FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[ExamePacienteParcela] CHECK CONSTRAINT [FK_ExamePacienteParcela_FormaPagamento]
GO
ALTER TABLE [dbo].[Exames]  WITH CHECK ADD  CONSTRAINT [FK_Exames_Assinantes] FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[Exames] CHECK CONSTRAINT [FK_Exames_Assinantes]
GO
ALTER TABLE [dbo].[Exames]  WITH CHECK ADD  CONSTRAINT [FK_Exames_Empresas] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Exames] CHECK CONSTRAINT [FK_Exames_Empresas]
GO
ALTER TABLE [dbo].[Exames]  WITH CHECK ADD  CONSTRAINT [FK_Exames_TiposExame] FOREIGN KEY([TipoExameID])
REFERENCES [dbo].[TiposExame] ([TipoExameID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exames] CHECK CONSTRAINT [FK_Exames_TiposExame]
GO
ALTER TABLE [dbo].[ExamesPacientes]  WITH CHECK ADD  CONSTRAINT [FK_Exame] FOREIGN KEY([ExameID])
REFERENCES [dbo].[Exames] ([ExameID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamesPacientes] CHECK CONSTRAINT [FK_Exame]
GO
ALTER TABLE [dbo].[ExamesPacientes]  WITH CHECK ADD  CONSTRAINT [FK_ExamesPacientes_Assinantes] FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[ExamesPacientes] CHECK CONSTRAINT [FK_ExamesPacientes_Assinantes]
GO
ALTER TABLE [dbo].[ExamesPacientes]  WITH CHECK ADD  CONSTRAINT [FK_ExamesPacientes_Empresas] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ExamesPacientes] CHECK CONSTRAINT [FK_ExamesPacientes_Empresas]
GO
ALTER TABLE [dbo].[ExamesPacientes]  WITH CHECK ADD  CONSTRAINT [FK_Paciente] FOREIGN KEY([PacienteID])
REFERENCES [dbo].[Paciente] ([PacienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamesPacientes] CHECK CONSTRAINT [FK_Paciente]
GO
ALTER TABLE [dbo].[FilaVendaServico]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[FilaVendaServico]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[FilaVendaServico]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[FilaVendaServico]  WITH CHECK ADD FOREIGN KEY([NotaFiscalServicoID])
REFERENCES [dbo].[NotaFiscalServico] ([NotaFiscalServicoID])
GO
ALTER TABLE [dbo].[FilaVendaServico]  WITH CHECK ADD FOREIGN KEY([NotaFiscalServicoID])
REFERENCES [dbo].[NotaFiscalServico] ([NotaFiscalServicoID])
GO
ALTER TABLE [dbo].[FilaVendaServicoHistorico]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[FilaVendaServicoHistorico]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[FilaVendaServicoHistorico]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[GrupoAutorizacaoPermissao]  WITH CHECK ADD  CONSTRAINT [FK_GrupoAutorizacaoPermissao_AutorizacaoTransacao] FOREIGN KEY([AreaID], [TransacaoID])
REFERENCES [dbo].[AutorizacaoTransacao] ([AreaID], [TransacaoID])
GO
ALTER TABLE [dbo].[GrupoAutorizacaoPermissao] CHECK CONSTRAINT [FK_GrupoAutorizacaoPermissao_AutorizacaoTransacao]
GO
ALTER TABLE [dbo].[GrupoAutorizacaoPermissao]  WITH CHECK ADD  CONSTRAINT [FK_GrupoAutorizacaoPermissao_GrupoAutorizacao] FOREIGN KEY([GrupoAuthID])
REFERENCES [dbo].[GrupoAutorizacao] ([GrupoAuthID])
GO
ALTER TABLE [dbo].[GrupoAutorizacaoPermissao] CHECK CONSTRAINT [FK_GrupoAutorizacaoPermissao_GrupoAutorizacao]
GO
ALTER TABLE [dbo].[LogAcesso]  WITH CHECK ADD FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[LojaMarketPlace]  WITH CHECK ADD FOREIGN KEY([MarketPlaceID])
REFERENCES [dbo].[MarketPlace] ([MarketPlaceID])
GO
ALTER TABLE [dbo].[Marca]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[MovimentacaoContaBancaria]  WITH CHECK ADD FOREIGN KEY([SubContaID])
REFERENCES [dbo].[SubContaBancaria] ([SubContaID])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([ProviderID])
REFERENCES [dbo].[ProviderNFSe] ([ProviderID])
GO
ALTER TABLE [dbo].[NaturezaOperacaoProvider]  WITH CHECK ADD FOREIGN KEY([ProviderID])
REFERENCES [dbo].[ProviderNFSe] ([ProviderID])
GO
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[NotaFiscalAutorizaDownload]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalAutorizaDownload_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalAutorizaDownload] CHECK CONSTRAINT [FK_NotaFiscalAutorizaDownload_NotaFiscal]
GO
ALTER TABLE [dbo].[NotaFiscalCce]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalCce_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalCce] CHECK CONSTRAINT [FK_NotaFiscalCce_NotaFiscal]
GO
ALTER TABLE [dbo].[NotaFiscalDuplicata]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Duplicata] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalDuplicata] CHECK CONSTRAINT [FK_NotaFiscal_Duplicata]
GO
ALTER TABLE [dbo].[NotaFiscalItem]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Items] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalItem] CHECK CONSTRAINT [FK_NotaFiscal_Items]
GO
ALTER TABLE [dbo].[NotaFiscalItemAdi]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItemAdi_NotaFiscalItemDi] FOREIGN KEY([NfID], [det_nItem], [di_nDI])
REFERENCES [dbo].[NotaFiscalItemDi] ([NfID], [det_nItem], [di_nDI])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalItemAdi] CHECK CONSTRAINT [FK_NotaFiscalItemAdi_NotaFiscalItemDi]
GO
ALTER TABLE [dbo].[NotaFiscalItemDi]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItemDi_NotaFiscalItem] FOREIGN KEY([NfID], [det_nItem])
REFERENCES [dbo].[NotaFiscalItem] ([NfID], [det_nItem])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalItemDi] CHECK CONSTRAINT [FK_NotaFiscalItemDi_NotaFiscalItem]
GO
ALTER TABLE [dbo].[NotaFiscalItemExportacao]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItemExportacao_NotaFiscalItem] FOREIGN KEY([NfID], [det_nItem])
REFERENCES [dbo].[NotaFiscalItem] ([NfID], [det_nItem])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalItemExportacao] CHECK CONSTRAINT [FK_NotaFiscalItemExportacao_NotaFiscalItem]
GO
ALTER TABLE [dbo].[NotaFiscalItemNve]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItemNve_NotaFiscalItem] FOREIGN KEY([NfID], [det_nItem])
REFERENCES [dbo].[NotaFiscalItem] ([NfID], [det_nItem])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalItemNve] CHECK CONSTRAINT [FK_NotaFiscalItemNve_NotaFiscalItem]
GO
ALTER TABLE [dbo].[NotaFiscalOcorrencia]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalOcorrencia_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalOcorrencia] CHECK CONSTRAINT [FK_NotaFiscalOcorrencia_NotaFiscal]
GO
ALTER TABLE [dbo].[NotaFiscalReboque]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalReboque_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalReboque] CHECK CONSTRAINT [FK_NotaFiscalReboque_NotaFiscal]
GO
ALTER TABLE [dbo].[NotaFiscalReferencia]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalReferencia_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalReferencia] CHECK CONSTRAINT [FK_NotaFiscalReferencia_NotaFiscal]
GO
ALTER TABLE [dbo].[NotaFiscalServico]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[NotaFiscalServico]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[NotaFiscalServico]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[NotaFiscalServico]  WITH CHECK ADD  CONSTRAINT [FK__NotaFisca__Servi__6B44E613] FOREIGN KEY([ServicoID])
REFERENCES [dbo].[ParametroServico] ([ServicoID])
GO
ALTER TABLE [dbo].[NotaFiscalServico] CHECK CONSTRAINT [FK__NotaFisca__Servi__6B44E613]
GO
ALTER TABLE [dbo].[NotaFiscalServicoOcorrencia]  WITH CHECK ADD FOREIGN KEY([NotaFiscalServicoID])
REFERENCES [dbo].[NotaFiscalServico] ([NotaFiscalServicoID])
GO
ALTER TABLE [dbo].[NotaFiscalSolicitacaoCancelamento]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalSolicitacaoCancelamento] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalSolicitacaoCancelamento] CHECK CONSTRAINT [FK_NotaFiscalSolicitacaoCancelamento]
GO
ALTER TABLE [dbo].[NotaFiscalVolume]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalVolume_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalVolume] CHECK CONSTRAINT [FK_NotaFiscalVolume_NotaFiscal]
GO
ALTER TABLE [dbo].[NotaFiscalXml]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalXml_NotaFiscal] FOREIGN KEY([NfID])
REFERENCES [dbo].[NotaFiscal] ([NfID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotaFiscalXml] CHECK CONSTRAINT [FK_NotaFiscalXml_NotaFiscal]
GO
ALTER TABLE [dbo].[OpcaoSimplesNacionalProvider]  WITH CHECK ADD FOREIGN KEY([ProviderID])
REFERENCES [dbo].[ProviderNFSe] ([ProviderID])
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Cliente]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Assinantes] FOREIGN KEY([AssinanteID])
REFERENCES [dbo].[Assinante] ([AssinanteID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Pacientes_Assinantes]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Empresas] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Pacientes_Empresas]
GO
ALTER TABLE [dbo].[Parametro]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ParametroServico]  WITH CHECK ADD  CONSTRAINT [FK__Parametro__Empre__71F1E3A2] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[ParametroServico] CHECK CONSTRAINT [FK__Parametro__Empre__71F1E3A2]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([TemplateID])
REFERENCES [dbo].[TemplateReport] ([TemplateID])
GO
ALTER TABLE [dbo].[PedidoCamposCustomizados]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PedidoCamposCustomizados]  WITH CHECK ADD FOREIGN KEY([PedidoID])
REFERENCES [dbo].[Pedido] ([PedidoID])
GO
ALTER TABLE [dbo].[PedidoCamposCustomizados]  WITH CHECK ADD  CONSTRAINT [FK_PedidoCamposCustomizados] FOREIGN KEY([EmpresaID], [TabelaID], [CampoID])
REFERENCES [dbo].[ContratoCamposCustomizados] ([EmpresaID], [TabelaID], [CampoID])
GO
ALTER TABLE [dbo].[PedidoCamposCustomizados] CHECK CONSTRAINT [FK_PedidoCamposCustomizados]
GO
ALTER TABLE [dbo].[PedidoCompra]  WITH CHECK ADD  CONSTRAINT [FK_PedidoCompra_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[PedidoCompra] CHECK CONSTRAINT [FK_PedidoCompra_Cliente]
GO
ALTER TABLE [dbo].[PedidoCompraItem]  WITH CHECK ADD  CONSTRAINT [FK__PedidoCom__Pedid__4FF1D159] FOREIGN KEY([PedidoCompraID])
REFERENCES [dbo].[PedidoCompra] ([PedidoCompraID])
GO
ALTER TABLE [dbo].[PedidoCompraItem] CHECK CONSTRAINT [FK__PedidoCom__Pedid__4FF1D159]
GO
ALTER TABLE [dbo].[PedidoCompraParcelas]  WITH CHECK ADD  CONSTRAINT [FK__PedidoCom__Pedid__53C2623D] FOREIGN KEY([PedidoCompraID])
REFERENCES [dbo].[PedidoCompra] ([PedidoCompraID])
GO
ALTER TABLE [dbo].[PedidoCompraParcelas] CHECK CONSTRAINT [FK__PedidoCom__Pedid__53C2623D]
GO
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD FOREIGN KEY([PedidoID])
REFERENCES [dbo].[Pedido] ([PedidoID])
GO
ALTER TABLE [dbo].[PedidoMarketPlace]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PedidoMarketPlace]  WITH CHECK ADD FOREIGN KEY([LojaMarketPlaceID])
REFERENCES [dbo].[LojaMarketPlace] ([LojaMarketPlaceID])
GO
ALTER TABLE [dbo].[PedidoMarketPlace]  WITH CHECK ADD FOREIGN KEY([VendaID])
REFERENCES [dbo].[Venda] ([VendaID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceCliente]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceCliente]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID])
REFERENCES [dbo].[PedidoMarketPlace] ([PedidoMarketPlaceID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceEndereco]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID])
REFERENCES [dbo].[PedidoMarketPlace] ([PedidoMarketPlaceID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceEnderecoEntrega]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID], [EnderecoID])
REFERENCES [dbo].[PedidoMarketPlaceEndereco] ([PedidoMarketPlaceID], [EnderecoID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceEnderecoEntrega]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID], [NumeroItem])
REFERENCES [dbo].[PedidoMarketPlaceItem] ([PedidoMarketPlaceID], [NumeroItem])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceEntrega]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID], [NumeroItem])
REFERENCES [dbo].[PedidoMarketPlaceItem] ([PedidoMarketPlaceID], [NumeroItem])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceItem]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID])
REFERENCES [dbo].[PedidoMarketPlace] ([PedidoMarketPlaceID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceNfe]  WITH CHECK ADD FOREIGN KEY([PedidoMarketPlaceID])
REFERENCES [dbo].[PedidoMarketPlace] ([PedidoMarketPlaceID])
GO
ALTER TABLE [dbo].[PedidoMarketPlaceNfe]  WITH CHECK ADD FOREIGN KEY([NfId])
REFERENCES [dbo].[NotaFiscal] ([NfID])
GO
ALTER TABLE [dbo].[PipelineGrupo]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineGrupo]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineGrupo]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([GrupoID])
REFERENCES [dbo].[PipelineGrupo] ([GrupoID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([GrupoID])
REFERENCES [dbo].[PipelineGrupo] ([GrupoID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([PrioridadeID])
REFERENCES [dbo].[PipelinePrioridade] ([PrioridadeID])
GO
ALTER TABLE [dbo].[PipelineNegocio]  WITH CHECK ADD FOREIGN KEY([PrioridadeID])
REFERENCES [dbo].[PipelinePrioridade] ([PrioridadeID])
GO
ALTER TABLE [dbo].[PipelineNegocioEvento]  WITH CHECK ADD FOREIGN KEY([CategoriaEventoID])
REFERENCES [dbo].[CategoriaEvento] ([CategoriaEventoID])
GO
ALTER TABLE [dbo].[PipelineNegocioEvento]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineNegocioEvento]  WITH CHECK ADD FOREIGN KEY([NegocioID])
REFERENCES [dbo].[PipelineNegocio] ([NegocioID])
GO
ALTER TABLE [dbo].[PipelineNegocioInteraction]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[PipelineNegocioInteraction]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PipelineNegocioInteraction]  WITH CHECK ADD FOREIGN KEY([NegocioID])
REFERENCES [dbo].[PipelineNegocio] ([NegocioID])
GO
ALTER TABLE [dbo].[PipelinePrioridade]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PlanoAssinaturaSubMenu]  WITH CHECK ADD FOREIGN KEY([PlanoID])
REFERENCES [dbo].[PlanoAssinatura] ([PlanoID])
GO
ALTER TABLE [dbo].[PlanoAssinaturaSubMenu]  WITH CHECK ADD FOREIGN KEY([MenuParent], [SubMenu])
REFERENCES [dbo].[SubMenus] ([MenuParent], [SubMenu])
GO
ALTER TABLE [dbo].[PlanoContas]  WITH CHECK ADD FOREIGN KEY([ContaBancariaID])
REFERENCES [dbo].[ContaBancaria] ([ContaBancariaID])
GO
ALTER TABLE [dbo].[PlanoContas]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PlanoContas]  WITH CHECK ADD FOREIGN KEY([PlanoContasPaiID])
REFERENCES [dbo].[PlanoContas] ([PlanoContasID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([CategoriaMarketPlace1])
REFERENCES [dbo].[CategoriaMarketPlace] ([CategoriaID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([CategoriaMarketPlace2])
REFERENCES [dbo].[CategoriaMarketPlace] ([CategoriaID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([CategoriaMarketPlace3])
REFERENCES [dbo].[CategoriaMarketPlace] ([CategoriaID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([CategoriaMarketPlace4])
REFERENCES [dbo].[CategoriaMarketPlace] ([CategoriaID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([Cfop])
REFERENCES [dbo].[Cfop] ([CfopID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([IdMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([IdUnidadeComercial])
REFERENCES [dbo].[UnidadeComercial] ([UnidID])
GO
ALTER TABLE [dbo].[ProdutoCaracteristicas]  WITH CHECK ADD  CONSTRAINT [FK__ProdutoCa__IdPro__4EA8A765] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProdutoCaracteristicas] CHECK CONSTRAINT [FK__ProdutoCa__IdPro__4EA8A765]
GO
ALTER TABLE [dbo].[ProdutoImagens]  WITH CHECK ADD  CONSTRAINT [FK__ProdutoIm__IdPro__4DB4832C] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProdutoImagens] CHECK CONSTRAINT [FK__ProdutoIm__IdPro__4DB4832C]
GO
ALTER TABLE [dbo].[ProdutoLojaMarketPlace]  WITH CHECK ADD FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[ProdutoLojaMarketPlace]  WITH CHECK ADD FOREIGN KEY([LojaMarketPlaceID])
REFERENCES [dbo].[LojaMarketPlace] ([LojaMarketPlaceID])
GO
ALTER TABLE [dbo].[ProdutoVariacoesMarketPlace]  WITH CHECK ADD FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[ProdutoVariacoesMarketPlace]  WITH CHECK ADD FOREIGN KEY([IdProdutoVariacao])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[ProviderSchema]  WITH CHECK ADD FOREIGN KEY([ProviderID])
REFERENCES [dbo].[ProviderNFSe] ([ProviderID])
GO
ALTER TABLE [dbo].[SubContaBancaria]  WITH CHECK ADD FOREIGN KEY([ContaBancariaID])
REFERENCES [dbo].[ContaBancaria] ([ContaBancariaID])
GO
ALTER TABLE [dbo].[SubMenus]  WITH CHECK ADD FOREIGN KEY([MenuParent])
REFERENCES [dbo].[Menus] ([Menu])
GO
ALTER TABLE [dbo].[TemplateReport]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[TipoLiquidacao]  WITH CHECK ADD  CONSTRAINT [FK_TipoLiquidacao_BancosFebraban] FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancosFebraban] ([BancoID])
GO
ALTER TABLE [dbo].[TipoLiquidacao] CHECK CONSTRAINT [FK_TipoLiquidacao_BancosFebraban]
GO
ALTER TABLE [dbo].[TipoLiquidacao]  WITH CHECK ADD  CONSTRAINT [FK_TipoLiquidacao_TipoRecurso] FOREIGN KEY([TipoRecursoID])
REFERENCES [dbo].[TipoRecurso] ([TipoRecursoID])
GO
ALTER TABLE [dbo].[TipoLiquidacao] CHECK CONSTRAINT [FK_TipoLiquidacao_TipoRecurso]
GO
ALTER TABLE [dbo].[Transportador]  WITH CHECK ADD  CONSTRAINT [FK_Transportador_Empresa] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Transportador] CHECK CONSTRAINT [FK_Transportador_Empresa]
GO
ALTER TABLE [dbo].[Transportador]  WITH CHECK ADD  CONSTRAINT [FK_Transportador_Estado] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Transportador] CHECK CONSTRAINT [FK_Transportador_Estado]
GO
ALTER TABLE [dbo].[Transportador]  WITH CHECK ADD  CONSTRAINT [FK_Transportador_Municipio] FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Transportador] CHECK CONSTRAINT [FK_Transportador_Municipio]
GO
ALTER TABLE [dbo].[Transportador]  WITH CHECK ADD  CONSTRAINT [FK_Transportador_Pais] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[Transportador] CHECK CONSTRAINT [FK_Transportador_Pais]
GO
ALTER TABLE [dbo].[UnidadeComercial]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[UrlMonicipio]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[UrlMonicipio]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([ContaBancariaID])
REFERENCES [dbo].[ContaBancaria] ([ContaBancariaID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([ContratoID])
REFERENCES [dbo].[ContratoServico] ([ContratoID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK__Venda__NaturezaO__40257DE4] FOREIGN KEY([NaturezaOperacaoID])
REFERENCES [dbo].[NaturezaOperacao] ([naturezaOperacaoID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK__Venda__NaturezaO__40257DE4]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([PedidoID])
REFERENCES [dbo].[Pedido] ([PedidoID])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Empresa] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Empresa]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Estado_Entrega] FOREIGN KEY([UfIDEntrega])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Estado_Entrega]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Municipio] FOREIGN KEY([MunicipioIDEntrega])
REFERENCES [dbo].[Municipio] ([MunicipioID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Municipio]
GO
ALTER TABLE [dbo].[VendaItem]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Produto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[VendaItem] CHECK CONSTRAINT [FK_Venda_Produto]
GO
ALTER TABLE [dbo].[VendaItem]  WITH CHECK ADD  CONSTRAINT [FK_Venda_VendaItem] FOREIGN KEY([VendaID])
REFERENCES [dbo].[Venda] ([VendaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendaItem] CHECK CONSTRAINT [FK_Venda_VendaItem]
GO
ALTER TABLE [dbo].[VendaParcelas]  WITH CHECK ADD FOREIGN KEY([CodigoInstrucao1])
REFERENCES [dbo].[InstrucaoCobrancaRemessa] ([Codigo])
GO
ALTER TABLE [dbo].[VendaParcelas]  WITH CHECK ADD FOREIGN KEY([CodigoInstrucao2])
REFERENCES [dbo].[InstrucaoCobrancaRemessa] ([Codigo])
GO
ALTER TABLE [dbo].[VendaParcelas]  WITH CHECK ADD FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[VendaParcelas]  WITH CHECK ADD  CONSTRAINT [FK__VendaParc__Venda__66B53B20] FOREIGN KEY([VendaID])
REFERENCES [dbo].[Venda] ([VendaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendaParcelas] CHECK CONSTRAINT [FK__VendaParc__Venda__66B53B20]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Ambie__4B973090] FOREIGN KEY([AmbienteID])
REFERENCES [dbo].[Ambiente] ([AmbienteID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Ambie__4B973090]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Clien__4C8B54C9] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Clien__4C8B54C9]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Colab__4D7F7902] FOREIGN KEY([ColaboradorID])
REFERENCES [dbo].[Colaborador] ([ColaboradorID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Colab__4D7F7902]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Conta__4E739D3B] FOREIGN KEY([ContaBancariaID])
REFERENCES [dbo].[ContaBancaria] ([ContaBancariaID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Conta__4E739D3B]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Contr__4F67C174] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[ContratoServico] ([ContratoID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Contr__4F67C174]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Empre__505BE5AD] FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Empre__505BE5AD]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Pedid__515009E6] FOREIGN KEY([PedidoID])
REFERENCES [dbo].[Pedido] ([PedidoID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Pedid__515009E6]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Servi__52442E1F] FOREIGN KEY([ServicoID])
REFERENCES [dbo].[ParametroServico] ([ServicoID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Servi__52442E1F]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Venda__53385258] FOREIGN KEY([VendaServicoID])
REFERENCES [dbo].[VendaServico] ([VendaServicoID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Venda__53385258]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Venda__542C7691] FOREIGN KEY([VendaServicoID])
REFERENCES [dbo].[VendaServico] ([VendaServicoID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK__VendaServ__Venda__542C7691]
GO
ALTER TABLE [dbo].[VendaServico]  WITH CHECK ADD  CONSTRAINT [FK_VendaServico_FormaPagamento] FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[VendaServico] CHECK CONSTRAINT [FK_VendaServico_FormaPagamento]
GO
ALTER TABLE [dbo].[VendaServicoParcelas]  WITH CHECK ADD FOREIGN KEY([CodigoInstrucao1])
REFERENCES [dbo].[InstrucaoCobrancaRemessa] ([Codigo])
GO
ALTER TABLE [dbo].[VendaServicoParcelas]  WITH CHECK ADD FOREIGN KEY([CodigoInstrucao2])
REFERENCES [dbo].[InstrucaoCobrancaRemessa] ([Codigo])
GO
ALTER TABLE [dbo].[VendaServicoParcelas]  WITH CHECK ADD FOREIGN KEY([FormaPagamentoID])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoID])
GO
ALTER TABLE [dbo].[VendaServicoParcelas]  WITH CHECK ADD  CONSTRAINT [FK__VendaServ__Venda__61F08603] FOREIGN KEY([VendaServicoID])
REFERENCES [dbo].[VendaServico] ([VendaServicoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendaServicoParcelas] CHECK CONSTRAINT [FK__VendaServ__Venda__61F08603]
GO
