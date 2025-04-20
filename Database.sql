USE [master]
GO
/****** Object:  Database [CooperBanco]    Script Date: 20/04/2025 02:52:08 ******/
CREATE DATABASE [CooperBanco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CooperBanco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CooperBanco.mdf' , SIZE = 578560KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CooperBanco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CooperBanco_log.ldf' , SIZE = 18240KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CooperBanco] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CooperBanco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CooperBanco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CooperBanco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CooperBanco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CooperBanco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CooperBanco] SET ARITHABORT OFF 
GO
ALTER DATABASE [CooperBanco] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CooperBanco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CooperBanco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CooperBanco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CooperBanco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CooperBanco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CooperBanco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CooperBanco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CooperBanco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CooperBanco] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CooperBanco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CooperBanco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CooperBanco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CooperBanco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CooperBanco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CooperBanco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CooperBanco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CooperBanco] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CooperBanco] SET  MULTI_USER 
GO
ALTER DATABASE [CooperBanco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CooperBanco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CooperBanco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CooperBanco] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CooperBanco] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CooperBanco] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CooperBanco] SET QUERY_STORE = OFF
GO
USE [CooperBanco]
GO
/****** Object:  User [rsp]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [rsp] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [COPRIMA-PC\Franciely]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [COPRIMA-PC\Franciely] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\Monica]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\Monica] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\denise.cappi]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\denise.cappi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\Denise]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\Denise] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\Daniele]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\Daniele] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\Brenda]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\Brenda] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\Amanda]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\Amanda] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGRO\Aline]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [AGRO\Aline] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [acesso]    Script Date: 20/04/2025 02:52:09 ******/
CREATE USER [acesso] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [rsp]
GO
ALTER ROLE [db_owner] ADD MEMBER [COPRIMA-PC\Franciely]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\Monica]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\denise.cappi]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [AGRO\denise.cappi]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AGRO\denise.cappi]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AGRO\denise.cappi]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\Denise]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\Daniele]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\Brenda]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AGRO\Brenda]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AGRO\Brenda]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\Amanda]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AGRO\Amanda]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AGRO\Amanda]
GO
ALTER ROLE [db_owner] ADD MEMBER [AGRO\Aline]
GO
ALTER ROLE [db_owner] ADD MEMBER [acesso]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [acesso]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [acesso]
GO
ALTER ROLE [db_datareader] ADD MEMBER [acesso]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [acesso]
GO
/****** Object:  Table [dbo].[Gastos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gastos](
	[ID_Gasto] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cooperado] [int] NULL,
	[Ano] [int] NULL,
	[Mes] [int] NULL,
	[ValorTotalGasto] [numeric](18, 4) NULL,
	[IndicaLancEstotno] [bit] NULL,
 CONSTRAINT [PK_Gastos] PRIMARY KEY CLUSTERED 
(
	[ID_Gasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holerite]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holerite](
	[ID_Holerite] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cooperado] [int] NULL,
	[ID_Ano] [int] NULL,
	[ID_Lancamento] [int] NULL,
	[ValorRecebido] [numeric](18, 4) NULL,
	[QntLitros] [nchar](10) NULL,
	[Mes] [int] NULL,
	[DesPrev] [numeric](18, 4) NULL,
	[PorcentagemPrev] [numeric](18, 4) NULL,
	[ValorBruto] [decimal](18, 4) NULL,
	[DescontosLoja] [decimal](18, 4) NULL,
	[ValorDescontoPrev] [decimal](18, 4) NULL,
	[AddRedIndividual] [decimal](18, 4) NULL,
	[SaldoNegativoAnterior] [decimal](18, 4) NULL,
	[CustoTanqueZelador] [decimal](18, 4) NULL,
	[ValorPagoLitro] [decimal](18, 4) NULL,
	[ValorBaseLitro] [decimal](18, 4) NULL,
	[AdicionaisLitro] [decimal](18, 4) NULL,
	[RedutoresLitro] [decimal](18, 4) NULL,
	[DespesaLitro] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Holerite] PRIMARY KEY CLUSTERED 
(
	[ID_Holerite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lancamento]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lancamento](
	[ID_Lancamento] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cooperado] [int] NULL,
	[Ano] [int] NULL,
	[Mes_Ref] [int] NULL,
	[ID_Tanque] [int] NULL,
	[ID_Assentamento] [int] NULL,
	[DIA01] [nchar](10) NULL,
	[DIA02] [nchar](10) NULL,
	[DIA03] [nchar](10) NULL,
	[DIA04] [nchar](10) NULL,
	[DIA05] [nchar](10) NULL,
	[DIA06] [nchar](10) NULL,
	[DIA07] [nchar](10) NULL,
	[DIA08] [nchar](10) NULL,
	[DIA09] [nchar](10) NULL,
	[DIA10] [nchar](10) NULL,
	[DIA11] [nchar](10) NULL,
	[DIA12] [nchar](10) NULL,
	[DIA13] [nchar](10) NULL,
	[DIA14] [nchar](10) NULL,
	[DIA15] [nchar](10) NULL,
	[DIA16] [nchar](10) NULL,
	[DIA17] [nchar](10) NULL,
	[DIA18] [nchar](10) NULL,
	[DIA19] [nchar](10) NULL,
	[DIA20] [nchar](10) NULL,
	[DIA21] [nchar](10) NULL,
	[DIA22] [nchar](10) NULL,
	[DIA23] [nchar](10) NULL,
	[DIA24] [nchar](10) NULL,
	[DIA25] [nchar](10) NULL,
	[DIA26] [nchar](10) NULL,
	[DIA27] [nchar](10) NULL,
	[DIA28] [nchar](10) NULL,
	[DIA29] [nchar](10) NULL,
	[DIA30] [nchar](10) NULL,
	[DIA31] [nchar](10) NULL,
	[TotalMensal] [int] NULL,
	[NumeroNFe] [int] NULL,
	[NFeEmitida] [nvarchar](50) NULL,
	[MensagemMes] [nvarchar](300) NULL,
	[ChequeImpresso] [nchar](3) NULL,
	[ChequeNumero] [int] NULL,
	[Add_Red] [money] NULL,
 CONSTRAINT [PK_Lancamento] PRIMARY KEY CLUSTERED 
(
	[ID_Lancamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VLPagamento]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VLPagamento](
	[ID_Pagamento] [int] IDENTITY(1,1) NOT NULL,
	[VLTotalRed] [numeric](18, 4) NULL,
	[VLTotalAdd] [numeric](18, 4) NULL,
	[TotalPagar] [numeric](18, 4) NULL,
	[ID_Tanque] [int] NULL,
	[NomeTanque] [nchar](59) NULL,
	[ID_Assentamento] [int] NULL,
	[NomeAssentamento] [nchar](59) NULL,
	[Mes] [int] NULL,
	[Ano] [int] NULL,
	[VLBase] [numeric](18, 4) NULL,
	[MensagemCooperado] [nvarchar](100) NULL,
	[IDFuncionario] [int] NULL,
	[NomeFuncionario] [nvarchar](59) NULL,
	[DataHora] [datetime] NULL,
	[Alterado] [bit] NULL,
	[IDFuncAltera] [int] NULL,
	[NomeFuncAltera] [nvarchar](59) NULL,
	[DataAltera] [datetime] NULL,
 CONSTRAINT [PK_VLPagamento] PRIMARY KEY CLUSTERED 
(
	[ID_Pagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cooperado]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cooperado](
	[ID_Cooperado] [int] IDENTITY(1,1) NOT NULL,
	[NomeCooperado] [nvarchar](100) NULL,
	[RG_IE] [nchar](14) NULL,
	[CPF_CNPJ] [nvarchar](14) NULL,
	[Data_Nasc] [datetime] NULL,
	[Sexo] [nchar](10) NULL,
	[Data_Atual] [datetime] NULL,
	[Observacoes] [nvarchar](max) NULL,
	[Rua] [nvarchar](59) NULL,
	[Numero] [nvarchar](59) NULL,
	[Complemento] [nvarchar](59) NULL,
	[Bairro] [nvarchar](59) NULL,
	[cMun] [nvarchar](7) NULL,
	[Cidade] [nvarchar](59) NULL,
	[codUF] [int] NULL,
	[UF] [nchar](2) NULL,
	[CEP] [nvarchar](8) NULL,
	[xPais] [nvarchar](6) NULL,
	[cPais] [nchar](4) NULL,
	[ISUF] [nvarchar](9) NULL,
	[Telefone1] [nchar](14) NULL,
	[Tipo1] [nchar](10) NULL,
	[Telefone2] [nchar](20) NULL,
	[Tipo2] [nchar](10) NULL,
	[Email] [nvarchar](59) NULL,
	[Situacao] [nchar](7) NULL,
	[Tipo] [nchar](8) NULL,
	[ID_Assentamento] [int] NULL,
	[Nome_Assentamento] [nchar](59) NULL,
	[ID_Tanque] [int] NULL,
	[Zelador] [nchar](59) NULL,
	[RecebeCheque] [bit] NULL,
	[Banco] [nvarchar](50) NULL,
	[Agencia] [nvarchar](50) NULL,
	[ContaCorrente] [nvarchar](50) NULL,
	[ContaPropria] [bit] NULL,
	[CotaParte] [bit] NULL,
	[NaoDescontaPrevidencia] [bit] NULL,
	[NomeFavorecidoPgto] [nvarchar](250) NULL,
	[CpfCnpjFavorecidoPgto] [nvarchar](14) NULL,
	[CodigoBancoFavorecidoPgto] [varchar](5) NULL,
	[CodigoAgenciaFavorecidoPgto] [nvarchar](5) NULL,
	[DigitoAgenciaFavorecidoPgto] [nvarchar](5) NULL,
	[NumeroContaFavorecidoPgto] [nvarchar](12) NULL,
	[DigitoContaFavorecidoPgto] [nvarchar](2) NULL,
	[RuaFavorecidoPgto] [nvarchar](250) NULL,
	[EnderecoFavorecidoPgto] [nvarchar](250) NULL,
	[NumeroFavorecidoPgto] [nvarchar](10) NULL,
	[ComplementoFavorecidoPgto] [nvarchar](250) NULL,
	[CidadeFavorecidoPgto] [nvarchar](250) NULL,
	[EstadoFavorecidoPgto] [nvarchar](2) NULL,
	[CepFavorecidoPgto] [nvarchar](10) NULL,
	[DacFavorecidoPgto] [nvarchar](5) NULL,
	[PixFavorecidoPgto] [nvarchar](250) NULL,
	[OmesmoFavorecido] [bit] NULL,
	[TipoPIX] [nvarchar](50) NULL,
	[BairroFavorecidoPgto] [nvarchar](250) NULL,
	[TipoContaFavorecido] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cooperado] PRIMARY KEY CLUSTERED 
(
	[ID_Cooperado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_Pagamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Pagamentos]
AS
SELECT DISTINCT L.ID_Lancamento,C.NomeCooperado,L.Ano,L.Mes_Ref,V.ID_Assentamento,V.NomeAssentamento,V.ID_Tanque, V.NomeTanque,H.QntLitros,V.TotalPagar,coalesce(l.Add_Red,0)as Bonificacao,coalesce((v.TotalPagar + (coalesce(l.Add_Red,0))),0) as Preco,coalesce((h.QntLitros * (v.TotalPagar + (coalesce(l.Add_Red,0)))),0) as ValorBruto,SUM(coalesce(g.ValorTotalGasto,0) )as ValorTotalGasto,h.DesPrev,h.ValorRecebido FROM Lancamento L 
INNER JOIN Holerite H 
ON L.ID_Lancamento = H.ID_Lancamento
INNER JOIN VLPagamento V 
ON V.ID_Assentamento = L.ID_Assentamento AND V.ID_Tanque = L.ID_Tanque AND V.Ano = L.Ano AND V.Mes = L.Mes_Ref
INNER JOIN Cooperado C
ON C.ID_Cooperado = L.ID_Cooperado
LEFT JOIN Gastos G 
ON G.ID_Cooperado = L.ID_Cooperado AND G.Ano = L.Ano AND G.Mes = L.Mes_Ref+1
--WHERE L.Ano = '2020' AND L.Mes_Ref = '4' AND L.ID_Assentamento = 31--AND V.Ano = '2020' AND V.Mes = '4'
Group by L.ID_Lancamento,C.NomeCooperado,L.Ano,L.Mes_Ref,V.ID_Assentamento,V.NomeAssentamento,V.ID_Tanque, V.NomeTanque,H.QntLitros,V.TotalPagar,l.Add_Red,coalesce((v.TotalPagar + (coalesce(l.Add_Red,0))),0),coalesce((h.QntLitros * (v.TotalPagar + (coalesce(l.Add_Red,0)))),0),h.DesPrev,h.ValorRecebido


GO
/****** Object:  Table [dbo].[Assentamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assentamentos](
	[ID_Assentamento] [int] IDENTITY(1,1) NOT NULL,
	[Nome_assentamento] [nchar](59) NULL,
	[Localizacao] [nchar](59) NULL,
	[Contato] [nchar](25) NULL,
 CONSTRAINT [PK_Assentamentos] PRIMARY KEY CLUSTERED 
(
	[ID_Assentamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[cboAssentamentosComLancamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cboAssentamentosComLancamentos] AS 
	
	SELECT DISTINCT
		Assentamentos.ID_Assentamento as id,
		Assentamentos.*
	FROM
		Assentamentos

		INNER JOIN Lancamento
		ON Lancamento.ID_Assentamento = Assentamentos.ID_Assentamento


GO
/****** Object:  View [dbo].[cboCooperadosComLancamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cboCooperadosComLancamentos] AS 
	
	SELECT DISTINCT
		Cooperado.ID_Cooperado as id,
		Cooperado.*
	FROM
		Cooperado

		INNER JOIN Lancamento
		ON Lancamento.ID_Cooperado = Cooperado.ID_Cooperado

GO
/****** Object:  Table [dbo].[Tanque]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tanque](
	[ID_Tanque] [int] IDENTITY(1,1) NOT NULL,
	[Zelador] [nchar](59) NULL,
	[Capacidade] [numeric](18, 4) NULL,
	[Unidade] [nvarchar](2) NULL,
	[ID_Assentamento] [int] NULL,
	[Nome_Assentamento] [nchar](59) NULL,
	[ID_Cooperado] [int] NULL,
	[NomeCooperado] [nchar](60) NULL,
 CONSTRAINT [PK_Tanque] PRIMARY KEY CLUSTERED 
(
	[ID_Tanque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[cboTanquesComLancamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cboTanquesComLancamentos] AS 
	
	SELECT DISTINCT
		Tanque.ID_Tanque as id,
		Tanque.*
	FROM
		Tanque

		INNER JOIN Lancamento
		ON Lancamento.ID_Tanque = Tanque.ID_Tanque

GO
/****** Object:  View [dbo].[VW_COOPERADO_TRANSITION]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_COOPERADO_TRANSITION]
AS
SELECT        ID_Cooperado, NomeCooperado, RG_IE, CPF_CNPJ, Data_Nasc, Sexo, Data_Atual, Observacoes, Rua, Numero, Complemento, Bairro, cMun, Cidade, codUF, UF, CEP, xPais, cPais, ISUF, Telefone1, Tipo1, Telefone2, Tipo2, 
                         Email, Situacao, Tipo, ID_Assentamento, Nome_Assentamento, ID_Tanque, Zelador, RecebeCheque, Banco, Agencia, ContaCorrente, ContaPropria, CotaParte, NaoDescontaPrevidencia
FROM            CooperBanco_Transition.dbo.Cooperado
GO
/****** Object:  View [dbo].[VW_HOLERITE_TRANSITION]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_HOLERITE_TRANSITION]
AS
SELECT        ID_Holerite, ID_Cooperado, ID_Ano, ID_Lancamento, ValorRecebido, QntLitros, Mes, DesPrev, PorcentagemPrev
FROM            CooperBanco_Transition.dbo.Holerite
WHERE        (ID_Ano = 2021) AND (Mes IN (8, 9))
GO
/****** Object:  View [dbo].[VW_LANCAMENTO_TRANSITION]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_LANCAMENTO_TRANSITION]
AS
SELECT        ID_Lancamento, ID_Cooperado, Ano, Mes_Ref, ID_Tanque, ID_Assentamento, DIA01, DIA02, DIA03, DIA04, DIA05, DIA06, DIA07, DIA08, DIA09, DIA10, DIA11, DIA12, DIA13, DIA14, DIA15, DIA16, DIA17, DIA18, DIA19, DIA20, DIA21, 
                         DIA22, DIA23, DIA24, DIA25, DIA26, DIA27, DIA28, DIA29, DIA30, DIA31, TotalMensal, NumeroNFe, NFeEmitida, MensagemMes, ChequeImpresso, ChequeNumero, Add_Red
FROM            CooperBanco_Transition.dbo.Lancamento
WHERE        (Ano = 2021) AND (Mes_Ref IN (8, 9))
GO
/****** Object:  View [dbo].[VW_NF_TRANSITION]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_NF_TRANSITION]
AS
SELECT        ID_NFe, ID_NF, cUF, cNF, natOP, indPag, mod, serie, nNF, dEmi, dSaiEnt, hSaiEnt, tpNF, cMunFG, NFref, tpImp, tpEmis, cDV, tpAmb, finNFe, procEmi, verProc, dhCont, xJust, IDTransportadora, SituacaoNFE, ValorTotalNota, 
                         NumeroRecibo, NumeroLote, Protocolo, ID_Cooperado, ID_Perfil, IDCooperativa, ID_Pedido, InfAdd, CodNFe, PathArqDistribuir
FROM            CooperBanco_Transition.dbo.NotaFiscal
WHERE        (YEAR(dEmi) = 2021) AND (MONTH(dEmi) IN (7, 8, 9, 10))
GO
/****** Object:  Table [dbo].[Adicionais]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adicionais](
	[ID_Adicional] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nchar](25) NULL,
	[Valor] [numeric](18, 4) NULL,
	[Inativo] [bit] NULL,
 CONSTRAINT [PK_Adicionais] PRIMARY KEY CLUSTERED 
(
	[ID_Adicional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AjudaCusto]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AjudaCusto](
	[ID_Ajuda] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cooperado] [int] NULL,
	[ValorAjudaCusto] [numeric](18, 4) NULL,
	[Mes] [int] NULL,
	[Ano] [int] NULL,
 CONSTRAINT [PK_AjudaCusto] PRIMARY KEY CLUSTERED 
(
	[ID_Ajuda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ano]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ano](
	[Ano] [int] NOT NULL,
 CONSTRAINT [PK_Ano] PRIMARY KEY CLUSTERED 
(
	[Ano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArquivoReinf]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArquivoReinf](
	[IdArquivoReinf] [int] IDENTITY(1,1) NOT NULL,
	[IdTransmissaoReinf] [int] NULL,
	[ArquivoGerado] [nvarchar](max) NULL,
	[DataGeracao] [datetime] NULL,
	[DataHoraEntrega] [datetime] NULL,
	[IndicaAssinado] [bit] NULL,
	[Lote] [varchar](50) NULL,
	[Recibo] [varchar](50) NULL,
	[ArquivoAssinado] [nvarchar](max) NULL,
	[XMLRetorno] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetralheArquivoReinf] PRIMARY KEY CLUSTERED 
(
	[IdArquivoReinf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[ID_Banco] [int] IDENTITY(1,1) NOT NULL,
	[Cod] [nvarchar](3) NULL,
	[Banco] [nvarchar](250) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[ID_Banco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[ID_Cheque] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cooperado] [int] NULL,
	[AnoCheque] [int] NULL,
	[MesCheque] [int] NULL,
	[ValorCheque] [money] NULL,
	[DataCheque] [datetime] NULL,
	[ID_Lancamento] [int] NULL,
	[NumeroCheque] [int] NULL,
 CONSTRAINT [PK_Cheque] PRIMARY KEY CLUSTERED 
(
	[ID_Cheque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[NomeCliente] [nvarchar](60) NULL,
	[RG_IE] [nchar](14) NULL,
	[CPF_CNPJ] [nvarchar](14) NULL,
	[Data_Nasc] [datetime] NULL,
	[Sexo] [nchar](10) NULL,
	[Data_Atual] [datetime] NULL,
	[Observacoes] [nvarchar](500) NULL,
	[Rua] [nvarchar](59) NULL,
	[Numero] [nvarchar](59) NULL,
	[Complemento] [nvarchar](59) NULL,
	[Bairro] [nvarchar](59) NULL,
	[cMun] [nvarchar](7) NULL,
	[Cidade] [nvarchar](59) NULL,
	[codUF] [int] NULL,
	[UF] [nchar](2) NULL,
	[CEP] [nvarchar](8) NULL,
	[xPais] [nvarchar](6) NULL,
	[cPais] [nchar](4) NULL,
	[ISUF] [nvarchar](9) NULL,
	[Telefone1] [nchar](14) NULL,
	[Tipo1] [nchar](10) NULL,
	[Telefone2] [nchar](20) NULL,
	[Tipo2] [nchar](10) NULL,
	[Email] [nvarchar](59) NULL,
	[Situacao] [nchar](7) NULL,
	[Tipo] [nchar](8) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContaBancaria]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContaBancaria](
	[IdConta] [int] IDENTITY(1,1) NOT NULL,
	[IdCooperativa] [int] NULL,
	[CodigoBanco] [nchar](3) NULL,
	[Agencia] [nchar](10) NULL,
	[AgenciaDigito] [nchar](2) NULL,
	[NumeroConta] [nchar](12) NULL,
	[DigitoConta] [nchar](2) NULL,
	[Dac] [nchar](2) NULL,
	[Convenio] [nvarchar](20) NULL,
	[InicioSequencialRemessa] [int] NULL,
	[IndicaPagamentoEletronico] [bit] NULL,
	[BancoNome] [nvarchar](100) NULL,
	[DescricaoConta] [nvarchar](50) NULL,
	[Hash] [nvarchar](50) NULL,
	[JsonRetornoCadConta] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContaBancaria] PRIMARY KEY CLUSTERED 
(
	[IdConta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contador]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contador](
	[IDContador] [int] IDENTITY(1,1) NOT NULL,
	[NomeContador] [nvarchar](120) NULL,
	[CPFContador] [nvarchar](14) NULL,
	[Telefone] [nvarchar](50) NULL,
	[Celular] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[indicaInativo] [bit] NULL,
 CONSTRAINT [PK_Contador] PRIMARY KEY CLUSTERED 
(
	[IDContador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustoTanque]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustoTanque](
	[ID_CustoTanque] [int] IDENTITY(1,1) NOT NULL,
	[ID_Zelador] [int] NULL,
	[ValorLitro] [money] NULL,
	[ValorTotal] [money] NULL,
	[ID_Tanque] [int] NULL,
	[IDFuncionario] [int] NULL,
	[DataHora] [datetime] NULL,
	[NomeFuncionario] [nvarchar](100) NULL,
	[Ano] [int] NULL,
	[Mes] [int] NULL,
 CONSTRAINT [PK_CustoTanque] PRIMARY KEY CLUSTERED 
(
	[ID_CustoTanque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DadosCooperativa]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DadosCooperativa](
	[IDCooperativa] [int] IDENTITY(1,1) NOT NULL,
	[NomeCooperativa] [nvarchar](59) NULL,
	[RazaoSocial] [nvarchar](59) NULL,
	[CNPJ] [nvarchar](14) NULL,
	[IE] [nchar](14) NULL,
	[IEst] [nchar](18) NULL,
	[CNAE] [nvarchar](7) NULL,
	[IM] [nchar](15) NULL,
	[CPF] [nchar](11) NULL,
	[CRT] [nvarchar](1) NULL,
	[Rua] [nvarchar](59) NOT NULL,
	[Numero] [nvarchar](59) NULL,
	[Complemento] [nvarchar](59) NULL,
	[Bairro] [nchar](59) NULL,
	[cMun] [nvarchar](7) NULL,
	[Cidade] [nchar](59) NULL,
	[CodUF] [int] NULL,
	[UF] [nchar](2) NULL,
	[CEP] [nvarchar](8) NULL,
	[Telefone1] [nvarchar](14) NULL,
	[Telefone2] [nvarchar](14) NULL,
	[Email] [nvarchar](59) NULL,
	[xPais] [nvarchar](10) NULL,
	[cPais] [nvarchar](4) NULL,
	[HabilitaReinf] [bit] NULL,
	[AmbienteReinf] [int] NULL,
	[AmbienteHomologaPagamento] [bit] NULL,
 CONSTRAINT [PK_DadosCooperativa] PRIMARY KEY CLUSTERED 
(
	[IDCooperativa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DadosFilial]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DadosFilial](
	[IDFilial] [int] IDENTITY(1,1) NOT NULL,
	[NomeFilial] [nvarchar](59) NULL,
	[RazaoSocial] [nvarchar](59) NULL,
	[CNPJ] [nvarchar](16) NULL,
	[IE] [nchar](18) NULL,
	[IEst] [nchar](18) NULL,
	[CNAE] [nvarchar](7) NULL,
	[IM] [nchar](15) NULL,
	[CPF] [nchar](11) NULL,
	[CRT] [nvarchar](1) NULL,
	[Rua] [nvarchar](59) NOT NULL,
	[Numero] [nvarchar](59) NULL,
	[Complemento] [nvarchar](59) NULL,
	[Bairro] [nchar](59) NULL,
	[cMun] [nvarchar](7) NULL,
	[Cidade] [nchar](59) NULL,
	[CodUF] [int] NULL,
	[UF] [nchar](2) NULL,
	[CEP] [nvarchar](9) NULL,
	[Telefone1] [nvarchar](20) NULL,
	[Telefone2] [nvarchar](20) NULL,
	[Email] [nvarchar](59) NULL,
	[xPais] [nvarchar](8) NULL,
	[cPais] [nvarchar](7) NULL,
 CONSTRAINT [PK_DadosFilial] PRIMARY KEY CLUSTERED 
(
	[IDFilial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DebitoHistoricoSemLancamento]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebitoHistoricoSemLancamento](
	[IdDebito] [int] IDENTITY(1,1) NOT NULL,
	[IdCooperado] [int] NULL,
	[NomeCooperado] [nvarchar](60) NULL,
	[CpfCnpjCooperado] [nvarchar](14) NULL,
	[Descricao] [nvarchar](200) NULL,
	[DataDebito] [datetime] NULL,
	[MesRef] [int] NULL,
	[AnoRef] [int] NULL,
	[DataGeracao] [datetime] NULL,
	[Lancado] [bit] NULL,
	[ID_Processamento] [int] NULL,
	[ValorDebito] [money] NULL,
	[DataLancamento] [datetime] NULL,
 CONSTRAINT [PK_DebitoHistoricoSemLancamento] PRIMARY KEY CLUSTERED 
(
	[IdDebito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descontos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descontos](
	[ID_Desconto] [int] IDENTITY(1,1) NOT NULL,
	[NomeDesconto] [nchar](25) NULL,
	[Valor] [numeric](18, 4) NULL,
 CONSTRAINT [PK_Descontos] PRIMARY KEY CLUSTERED 
(
	[ID_Desconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalheArquivoReinf]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalheArquivoReinf](
	[IdDetalheArquivoReinf] [int] IDENTITY(1,1) NOT NULL,
	[IdArquivoReinf] [int] NULL,
	[IdCooperado] [int] NULL,
	[MesRef] [int] NULL,
	[AnoRef] [int] NULL,
	[ValorBruto] [decimal](18, 4) NULL,
	[ValorApuradoFunrural] [decimal](18, 4) NULL,
	[NumeroDocumentoFiscal] [int] NULL,
	[Serie] [int] NULL,
	[Data] [datetime] NULL,
	[NomeCooperado] [varchar](120) NULL,
	[CpfCnpjCooperado] [varchar](14) NULL,
	[IndicaPJ] [bit] NULL,
	[IDEvento] [nvarchar](50) NULL,
	[Recibo] [nvarchar](50) NULL,
	[CodigoStatus] [nvarchar](500) NULL,
	[Mensagem] [varchar](1000) NULL,
	[StatusEvento] [varchar](500) NULL,
	[OcorrenciaErro] [nvarchar](500) NULL,
	[CodigoErro] [nvarchar](550) NULL,
	[DescricaoErro] [nvarchar](500) NULL,
 CONSTRAINT [PK_DatalheArquivoReinf] PRIMARY KEY CLUSTERED 
(
	[IdDetalheArquivoReinf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalheRetornoRemessa]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalheRetornoRemessa](
	[IdDetalheRetornoRemessa] [int] IDENTITY(1,1) NOT NULL,
	[uniqueIdRetorno] [nvarchar](50) NULL,
	[UniqueIdPagamento] [nvarchar](50) NULL,
	[TipoPgto] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[authenticationRegister] [nvarchar](50) NULL,
	[DataPgto] [datetime] NULL,
	[tags] [text] NULL,
	[IdRetorno] [int] NULL,
	[IndicaConciliado] [bit] NOT NULL,
 CONSTRAINT [PK_DetalheRetornoRemessa] PRIMARY KEY CLUSTERED 
(
	[IdDetalheRetornoRemessa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalhesGasto]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalhesGasto](
	[ID_DetalheGasto] [int] IDENTITY(1,1) NOT NULL,
	[ID_Gasto] [int] NULL,
	[IDFilial] [int] NULL,
	[ValorGasto] [numeric](18, 4) NULL,
	[NotaFiscal] [int] NULL,
	[Pedido] [int] NULL,
	[Parcela] [int] NULL,
	[Num_Parcela] [int] NULL,
	[NomeFilial] [nchar](59) NULL,
	[IdEstorno] [int] NULL,
 CONSTRAINT [PK_DetalhesGasto] PRIMARY KEY CLUSTERED 
(
	[ID_DetalheGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[ID_Funcionario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[RG] [nchar](30) NULL,
	[CPF] [nchar](30) NULL,
	[DataNasc] [datetime] NULL,
	[Sexo] [nchar](10) NULL,
	[ID_senha] [int] NULL,
	[Rua] [nvarchar](100) NULL,
	[Numero] [nchar](10) NULL,
	[Complemento] [nchar](10) NULL,
	[Bairro] [nvarchar](100) NULL,
	[Cidade] [nvarchar](100) NULL,
	[Cep] [nchar](30) NULL,
	[UF] [nchar](2) NULL,
	[Telefone1] [nchar](18) NULL,
	[Tipo1] [nchar](16) NULL,
	[Telefone2] [nchar](18) NULL,
	[Tipo2] [nchar](16) NULL,
	[Observacoes] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[ID_Funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lanca_Add]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lanca_Add](
	[ID_AddRed] [int] IDENTITY(1,1) NOT NULL,
	[ID_Adicional] [int] NULL,
	[ID_Pagamento] [int] NULL,
	[ValorAdd] [numeric](18, 4) NULL,
	[DescricaoAdd] [nchar](25) NULL,
 CONSTRAINT [PK_Lanca_Add_Red] PRIMARY KEY CLUSTERED 
(
	[ID_AddRed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lanca_Red]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lanca_Red](
	[ID_Red] [int] IDENTITY(1,1) NOT NULL,
	[ID_Redutores] [int] NULL,
	[ID_Pagamento] [int] NULL,
	[ValorRed] [numeric](18, 4) NULL,
	[DescricaoRed] [nchar](25) NULL,
 CONSTRAINT [PK_Lanc_Red] PRIMARY KEY CLUSTERED 
(
	[ID_Red] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalBanco]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalBanco](
	[IdLocal] [int] NOT NULL,
	[Local] [nvarchar](max) NULL,
 CONSTRAINT [PK_LocalBanco] PRIMARY KEY CLUSTERED 
(
	[IdLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[ID_Log] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NULL,
	[DataHora] [datetime] NULL,
	[IDUsuario] [int] NULL,
	[NomeUsuario] [nvarchar](120) NULL,
	[Operacao] [nvarchar](500) NULL,
	[idLancamentoAlterado] [int] NULL,
	[Tabela] [nvarchar](100) NULL,
	[Observacoes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID_Log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteRemessa]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteRemessa](
	[IdLoteRemessa] [int] IDENTITY(1,1) NOT NULL,
	[IDCooperado] [int] NULL,
	[AgenciaCooperado] [nvarchar](50) NULL,
	[ContaCooperado] [nvarchar](50) NULL,
	[ChavePix] [nvarchar](120) NULL,
	[CpfCnpjCooperado] [nvarchar](14) NULL,
	[IDRemessa] [int] NULL,
	[Valor] [money] NULL,
	[accountHash] [nchar](10) NULL,
	[Description] [nvarchar](50) NULL,
	[PaymentForm] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[Amout] [money] NULL,
	[DigitoAgencia] [nvarchar](1) NULL,
	[DigitoConta] [nvarchar](1) NULL,
	[NomeFavorecido] [nvarchar](120) NULL,
	[IdIntegracao] [nvarchar](50) NULL,
	[BanckCode] [nvarchar](4) NULL,
	[AnoLote] [int] NULL,
	[MesLote] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[authenticationRegister] [nvarchar](50) NULL,
	[IdRetorno] [int] NULL,
	[IndicaConciliado] [bit] NULL,
 CONSTRAINT [PK_LoteRemessa] PRIMARY KEY CLUSTERED 
(
	[IdLoteRemessa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MesCad]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MesCad](
	[ID_mes] [int] IDENTITY(1,1) NOT NULL,
	[NomeMes] [nchar](10) NULL,
	[Ano] [int] NULL,
	[Mes] [int] NULL,
 CONSTRAINT [PK_Mes] PRIMARY KEY CLUSTERED 
(
	[ID_mes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUNICIPIOS]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUNICIPIOS](
	[CUF] [int] NULL,
	[UF] [varchar](2) NULL,
	[XUF] [varchar](120) NULL,
	[CMUN] [varchar](7) NOT NULL,
	[XMUN] [varchar](120) NULL,
 CONSTRAINT [PK__MUNICIPI__F67CD40B108B795B] PRIMARY KEY CLUSTERED 
(
	[CMUN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NFe_Num]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NFe_Num](
	[IDNFe] [int] NOT NULL,
	[Num_NFe] [varchar](8) NULL,
 CONSTRAINT [PK_NFe_Num] PRIMARY KEY CLUSTERED 
(
	[IDNFe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscal]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscal](
	[ID_NFe] [int] IDENTITY(1,1) NOT NULL,
	[ID_NF] [int] NOT NULL,
	[cUF] [int] NULL,
	[cNF] [int] NULL,
	[natOP] [nvarchar](60) NULL,
	[indPag] [int] NULL,
	[mod] [nvarchar](3) NULL,
	[serie] [int] NULL,
	[nNF] [int] NULL,
	[dEmi] [datetime] NULL,
	[dSaiEnt] [datetime] NULL,
	[hSaiEnt] [datetime] NULL,
	[tpNF] [int] NULL,
	[cMunFG] [nvarchar](7) NULL,
	[NFref] [nvarchar](20) NULL,
	[tpImp] [int] NULL,
	[tpEmis] [int] NULL,
	[cDV] [int] NULL,
	[tpAmb] [int] NULL,
	[finNFe] [int] NULL,
	[procEmi] [int] NULL,
	[verProc] [nvarchar](20) NULL,
	[dhCont] [datetime] NULL,
	[xJust] [nvarchar](256) NULL,
	[IDTransportadora] [int] NULL,
	[SituacaoNFE] [nvarchar](30) NULL,
	[ValorTotalNota] [money] NULL,
	[NumeroRecibo] [nvarchar](15) NULL,
	[NumeroLote] [nvarchar](50) NULL,
	[Protocolo] [nvarchar](15) NULL,
	[ID_Cooperado] [int] NULL,
	[ID_Perfil] [int] NULL,
	[IDCooperativa] [int] NULL,
	[ID_Pedido] [int] NULL,
	[InfAdd] [nvarchar](149) NULL,
	[CodNFe] [nvarchar](47) NULL,
	[PathArqDistribuir] [nvarchar](max) NULL,
	[XML] [nvarchar](max) NULL,
	[RetornoSefaz] [nvarchar](max) NULL,
 CONSTRAINT [PK_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[ID_NF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OcorrenciasDetalheArquivoReinf]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OcorrenciasDetalheArquivoReinf](
	[IdOcorrencia] [int] IDENTITY(1,1) NOT NULL,
	[IdDetalheArquivoReinf] [int] NULL,
	[OcorrenciaDescricao] [nvarchar](max) NULL,
	[CodOcorrencia] [varchar](50) NULL,
 CONSTRAINT [PK_OcorrenciasDetalheArquivoReinf] PRIMARY KEY CLUSTERED 
(
	[IdOcorrencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilFiscal]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilFiscal](
	[ID_Perfil] [int] NOT NULL,
 CONSTRAINT [PK_PerfilFiscal] PRIMARY KEY CLUSTERED 
(
	[ID_Perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Previdencia]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Previdencia](
	[ID_Prev] [int] IDENTITY(1,1) NOT NULL,
	[DescontoPrev] [numeric](18, 4) NULL,
 CONSTRAINT [PK_Previdencia] PRIMARY KEY CLUSTERED 
(
	[ID_Prev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Processamento]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Processamento](
	[ID_Processamento] [int] IDENTITY(1,1) NOT NULL,
	[DataProcessamento] [datetime] NULL,
	[ID_Funcionario] [int] NULL,
	[TipoProcessamento] [nvarchar](50) NULL,
	[FuncionarioNome] [nvarchar](60) NULL,
 CONSTRAINT [PK_Processamento] PRIMARY KEY CLUSTERED 
(
	[ID_Processamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Redutores]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Redutores](
	[ID_Redutores] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nchar](25) NULL,
	[Valor] [numeric](18, 4) NULL,
	[Inativo] [bit] NULL,
 CONSTRAINT [PK_Redutores] PRIMARY KEY CLUSTERED 
(
	[ID_Redutores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemessaPagamento]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemessaPagamento](
	[IDRemessa] [int] IDENTITY(1,1) NOT NULL,
	[DataRemessa] [datetime] NULL,
	[IDFuncionario] [int] NULL,
	[IDContaPagador] [int] NULL,
	[Status] [int] NULL,
	[JsonRemessa] [nvarchar](max) NULL,
	[ValorTotalRemessa] [money] NULL,
	[IdRota] [int] NULL,
	[AnoRemessa] [int] NULL,
	[MesRemessa] [int] NULL,
	[DescricaoStatusRemessa] [nvarchar](50) NULL,
	[BancoContaPagador] [nvarchar](50) NULL,
	[AgenciaContaPagador] [nvarchar](50) NULL,
	[ContaPagador] [nvarchar](50) NULL,
	[ArquivoRetorno] [nvarchar](max) NULL,
	[IDRetorno] [nvarchar](50) NULL,
	[JsonEnvio] [nvarchar](max) NULL,
	[JsonRetorno] [nvarchar](max) NULL,
	[ProtocoloRemessa] [nvarchar](100) NULL,
 CONSTRAINT [PK_RemessaPagamento] PRIMARY KEY CLUSTERED 
(
	[IDRemessa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Residual]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Residual](
	[ID_Residual] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cooperado] [int] NULL,
	[DataAtraso] [datetime] NULL,
	[Valor] [money] NULL,
	[Pago] [bit] NULL,
	[DataPagamento] [datetime] NULL,
	[ID_Processamento] [int] NULL,
	[ID_Lancamento] [int] NULL,
 CONSTRAINT [PK_Residual] PRIMARY KEY CLUSTERED 
(
	[ID_Residual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RetornoRemessa]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RetornoRemessa](
	[IdRetorno] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
	[JsonRetorno] [text] NULL,
	[ArquivoEnviado] [text] NULL,
	[accountHash] [nvarchar](50) NULL,
	[reason] [text] NULL,
	[ResultProcessamentoJson] [text] NULL,
 CONSTRAINT [PK_RetornoRemessa] PRIMARY KEY CLUSTERED 
(
	[IdRetorno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Senha]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Senha](
	[ID_Senha] [int] IDENTITY(1,1) NOT NULL,
	[ID_Funcionario] [int] NULL,
	[NomeUsuario] [nvarchar](15) NULL,
	[Senha] [nvarchar](50) NULL,
	[Situacao] [bit] NULL,
	[Ativo] [bit] NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Senha] PRIMARY KEY CLUSTERED 
(
	[ID_Senha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransmissaoREINF]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransmissaoREINF](
	[IIdTransmissaoReinf] [int] IDENTITY(1,1) NOT NULL,
	[DataGeracao] [datetime] NULL,
	[IdUsuarioGeracao] [int] NULL,
	[IndicaAlteracao] [bit] NULL,
	[AnoRef] [int] NULL,
	[MesRef] [int] NULL,
	[AberturaPeriodo] [datetime] NULL,
	[XMLAbertura] [nvarchar](max) NULL,
	[XMLAlteracao] [nvarchar](max) NULL,
	[XMLExclusao] [nvarchar](max) NULL,
	[XMLAberturaRetorno] [nvarchar](max) NULL,
	[XMLAlteracaoRetorno] [nvarchar](max) NULL,
	[XMLExclusaoRetorno] [nvarchar](max) NULL,
	[DataAlteracao] [datetime] NULL,
	[DataExclusao] [datetime] NULL,
	[IndicaExclusao] [bit] NULL,
	[IndicaAbertura] [bit] NULL,
 CONSTRAINT [PK_TransmissaoREINF] PRIMARY KEY CLUSTERED 
(
	[IIdTransmissaoReinf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UltimoCheque]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UltimoCheque](
	[ID_UltimoCheque] [int] IDENTITY(1,1) NOT NULL,
	[UltimoCheque] [int] NULL,
	[Data] [datetime] NULL,
	[ID_Cooperado] [int] NULL,
 CONSTRAINT [PK_UltimoCheque] PRIMARY KEY CLUSTERED 
(
	[ID_UltimoCheque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DebitoHistoricoSemLancamento] ADD  CONSTRAINT [DF_DebitoHistoricoSemLancamento_Lancado]  DEFAULT ((0)) FOR [Lancado]
GO
ALTER TABLE [dbo].[DetalheRetornoRemessa] ADD  CONSTRAINT [DF_DetalheRetornoRemessa_IndicaConciliado]  DEFAULT ((0)) FOR [IndicaConciliado]
GO
ALTER TABLE [dbo].[AjudaCusto]  WITH CHECK ADD  CONSTRAINT [FK_AjudaCusto_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[AjudaCusto] CHECK CONSTRAINT [FK_AjudaCusto_Cooperado]
GO
ALTER TABLE [dbo].[ArquivoReinf]  WITH CHECK ADD  CONSTRAINT [FK_ArquivoReinf_TransmissaoREINF] FOREIGN KEY([IdTransmissaoReinf])
REFERENCES [dbo].[TransmissaoREINF] ([IIdTransmissaoReinf])
GO
ALTER TABLE [dbo].[ArquivoReinf] CHECK CONSTRAINT [FK_ArquivoReinf_TransmissaoREINF]
GO
ALTER TABLE [dbo].[Assentamentos]  WITH CHECK ADD  CONSTRAINT [FK_Assentamentos_Assentamentos] FOREIGN KEY([ID_Assentamento])
REFERENCES [dbo].[Assentamentos] ([ID_Assentamento])
GO
ALTER TABLE [dbo].[Assentamentos] CHECK CONSTRAINT [FK_Assentamentos_Assentamentos]
GO
ALTER TABLE [dbo].[Cooperado]  WITH CHECK ADD  CONSTRAINT [FK_Cooperado_Assentamentos] FOREIGN KEY([ID_Assentamento])
REFERENCES [dbo].[Assentamentos] ([ID_Assentamento])
GO
ALTER TABLE [dbo].[Cooperado] CHECK CONSTRAINT [FK_Cooperado_Assentamentos]
GO
ALTER TABLE [dbo].[Cooperado]  WITH CHECK ADD  CONSTRAINT [FK_Cooperado_Tanque] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[Cooperado] CHECK CONSTRAINT [FK_Cooperado_Tanque]
GO
ALTER TABLE [dbo].[CustoTanque]  WITH CHECK ADD  CONSTRAINT [FK_CustoTanque_Cooperado] FOREIGN KEY([ID_Zelador])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[CustoTanque] CHECK CONSTRAINT [FK_CustoTanque_Cooperado]
GO
ALTER TABLE [dbo].[CustoTanque]  WITH CHECK ADD  CONSTRAINT [FK_CustoTanque_Tanque] FOREIGN KEY([ID_Tanque])
REFERENCES [dbo].[Tanque] ([ID_Tanque])
GO
ALTER TABLE [dbo].[CustoTanque] CHECK CONSTRAINT [FK_CustoTanque_Tanque]
GO
ALTER TABLE [dbo].[DebitoHistoricoSemLancamento]  WITH CHECK ADD  CONSTRAINT [FK_DebitoHistoricoSemLancamento_Cooperado] FOREIGN KEY([IdCooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[DebitoHistoricoSemLancamento] CHECK CONSTRAINT [FK_DebitoHistoricoSemLancamento_Cooperado]
GO
ALTER TABLE [dbo].[DebitoHistoricoSemLancamento]  WITH CHECK ADD  CONSTRAINT [FK_DebitoHistoricoSemLancamento_Processamento] FOREIGN KEY([ID_Processamento])
REFERENCES [dbo].[Processamento] ([ID_Processamento])
GO
ALTER TABLE [dbo].[DebitoHistoricoSemLancamento] CHECK CONSTRAINT [FK_DebitoHistoricoSemLancamento_Processamento]
GO
ALTER TABLE [dbo].[DetalheArquivoReinf]  WITH CHECK ADD  CONSTRAINT [FK_DatalheArquivoReinf_ArquivoReinf] FOREIGN KEY([IdArquivoReinf])
REFERENCES [dbo].[ArquivoReinf] ([IdArquivoReinf])
GO
ALTER TABLE [dbo].[DetalheArquivoReinf] CHECK CONSTRAINT [FK_DatalheArquivoReinf_ArquivoReinf]
GO
ALTER TABLE [dbo].[DetalheArquivoReinf]  WITH CHECK ADD  CONSTRAINT [FK_DatalheArquivoReinf_Cooperado] FOREIGN KEY([IdCooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[DetalheArquivoReinf] CHECK CONSTRAINT [FK_DatalheArquivoReinf_Cooperado]
GO
ALTER TABLE [dbo].[DetalheRetornoRemessa]  WITH CHECK ADD  CONSTRAINT [FK_DetalheRetornoRemessa_RetornoRemessa] FOREIGN KEY([IdRetorno])
REFERENCES [dbo].[RetornoRemessa] ([IdRetorno])
GO
ALTER TABLE [dbo].[DetalheRetornoRemessa] CHECK CONSTRAINT [FK_DetalheRetornoRemessa_RetornoRemessa]
GO
ALTER TABLE [dbo].[DetalhesGasto]  WITH CHECK ADD  CONSTRAINT [FK_DetalhesGasto_DadosFilial] FOREIGN KEY([IDFilial])
REFERENCES [dbo].[DadosFilial] ([IDFilial])
GO
ALTER TABLE [dbo].[DetalhesGasto] CHECK CONSTRAINT [FK_DetalhesGasto_DadosFilial]
GO
ALTER TABLE [dbo].[DetalhesGasto]  WITH CHECK ADD  CONSTRAINT [FK_DetalhesGasto_Gastos] FOREIGN KEY([ID_Gasto])
REFERENCES [dbo].[Gastos] ([ID_Gasto])
GO
ALTER TABLE [dbo].[DetalhesGasto] CHECK CONSTRAINT [FK_DetalhesGasto_Gastos]
GO
ALTER TABLE [dbo].[DetalhesGasto]  WITH CHECK ADD  CONSTRAINT [FK_DetalhesGasto_Gastos1] FOREIGN KEY([ID_Gasto])
REFERENCES [dbo].[Gastos] ([ID_Gasto])
GO
ALTER TABLE [dbo].[DetalhesGasto] CHECK CONSTRAINT [FK_DetalhesGasto_Gastos1]
GO
ALTER TABLE [dbo].[Gastos]  WITH CHECK ADD  CONSTRAINT [FK_Gastos_Ano] FOREIGN KEY([Ano])
REFERENCES [dbo].[Ano] ([Ano])
GO
ALTER TABLE [dbo].[Gastos] CHECK CONSTRAINT [FK_Gastos_Ano]
GO
ALTER TABLE [dbo].[Gastos]  WITH CHECK ADD  CONSTRAINT [FK_Gastos_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[Gastos] CHECK CONSTRAINT [FK_Gastos_Cooperado]
GO
ALTER TABLE [dbo].[Holerite]  WITH CHECK ADD  CONSTRAINT [FK_Holerite_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[Holerite] CHECK CONSTRAINT [FK_Holerite_Cooperado]
GO
ALTER TABLE [dbo].[Holerite]  WITH CHECK ADD  CONSTRAINT [FK_Holerite_Lancamento] FOREIGN KEY([ID_Lancamento])
REFERENCES [dbo].[Lancamento] ([ID_Lancamento])
GO
ALTER TABLE [dbo].[Holerite] CHECK CONSTRAINT [FK_Holerite_Lancamento]
GO
ALTER TABLE [dbo].[Lanca_Add]  WITH CHECK ADD  CONSTRAINT [FK_Lanca_Add_Adicionais] FOREIGN KEY([ID_Adicional])
REFERENCES [dbo].[Adicionais] ([ID_Adicional])
GO
ALTER TABLE [dbo].[Lanca_Add] CHECK CONSTRAINT [FK_Lanca_Add_Adicionais]
GO
ALTER TABLE [dbo].[Lanca_Add]  WITH CHECK ADD  CONSTRAINT [FK_Lanca_Add_VLPagamento] FOREIGN KEY([ID_Pagamento])
REFERENCES [dbo].[VLPagamento] ([ID_Pagamento])
GO
ALTER TABLE [dbo].[Lanca_Add] CHECK CONSTRAINT [FK_Lanca_Add_VLPagamento]
GO
ALTER TABLE [dbo].[Lanca_Red]  WITH CHECK ADD  CONSTRAINT [FK_Lanca_Red_Redutores] FOREIGN KEY([ID_Redutores])
REFERENCES [dbo].[Redutores] ([ID_Redutores])
GO
ALTER TABLE [dbo].[Lanca_Red] CHECK CONSTRAINT [FK_Lanca_Red_Redutores]
GO
ALTER TABLE [dbo].[Lanca_Red]  WITH CHECK ADD  CONSTRAINT [FK_Lanca_Red_VLPagamento] FOREIGN KEY([ID_Pagamento])
REFERENCES [dbo].[VLPagamento] ([ID_Pagamento])
GO
ALTER TABLE [dbo].[Lanca_Red] CHECK CONSTRAINT [FK_Lanca_Red_VLPagamento]
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD  CONSTRAINT [FK_Lancamento_Assentamentos] FOREIGN KEY([ID_Assentamento])
REFERENCES [dbo].[Assentamentos] ([ID_Assentamento])
GO
ALTER TABLE [dbo].[Lancamento] CHECK CONSTRAINT [FK_Lancamento_Assentamentos]
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD  CONSTRAINT [FK_Lancamento_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[Lancamento] CHECK CONSTRAINT [FK_Lancamento_Cooperado]
GO
ALTER TABLE [dbo].[Lancamento]  WITH CHECK ADD  CONSTRAINT [FK_Lancamento_Tanque] FOREIGN KEY([ID_Tanque])
REFERENCES [dbo].[Tanque] ([ID_Tanque])
GO
ALTER TABLE [dbo].[Lancamento] CHECK CONSTRAINT [FK_Lancamento_Tanque]
GO
ALTER TABLE [dbo].[LoteRemessa]  WITH CHECK ADD  CONSTRAINT [FK_LoteRemessa_Cooperado] FOREIGN KEY([IDCooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[LoteRemessa] CHECK CONSTRAINT [FK_LoteRemessa_Cooperado]
GO
ALTER TABLE [dbo].[LoteRemessa]  WITH CHECK ADD  CONSTRAINT [FK_LoteRemessa_RemessaPagamento] FOREIGN KEY([IDRemessa])
REFERENCES [dbo].[RemessaPagamento] ([IDRemessa])
GO
ALTER TABLE [dbo].[LoteRemessa] CHECK CONSTRAINT [FK_LoteRemessa_RemessaPagamento]
GO
ALTER TABLE [dbo].[MesCad]  WITH CHECK ADD  CONSTRAINT [FK_Mes_Ano] FOREIGN KEY([Ano])
REFERENCES [dbo].[Ano] ([Ano])
GO
ALTER TABLE [dbo].[MesCad] CHECK CONSTRAINT [FK_Mes_Ano]
GO
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Cooperado]
GO
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_DadosCooperativa] FOREIGN KEY([IDCooperativa])
REFERENCES [dbo].[DadosCooperativa] ([IDCooperativa])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_DadosCooperativa]
GO
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_PerfilFiscal] FOREIGN KEY([ID_Perfil])
REFERENCES [dbo].[PerfilFiscal] ([ID_Perfil])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_PerfilFiscal]
GO
ALTER TABLE [dbo].[OcorrenciasDetalheArquivoReinf]  WITH CHECK ADD  CONSTRAINT [FK_OcorrenciasDetalheArquivoReinf_DatalheArquivoReinf] FOREIGN KEY([IdDetalheArquivoReinf])
REFERENCES [dbo].[DetalheArquivoReinf] ([IdDetalheArquivoReinf])
GO
ALTER TABLE [dbo].[OcorrenciasDetalheArquivoReinf] CHECK CONSTRAINT [FK_OcorrenciasDetalheArquivoReinf_DatalheArquivoReinf]
GO
ALTER TABLE [dbo].[Residual]  WITH CHECK ADD  CONSTRAINT [FK_Residual_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[Residual] CHECK CONSTRAINT [FK_Residual_Cooperado]
GO
ALTER TABLE [dbo].[Residual]  WITH CHECK ADD  CONSTRAINT [FK_Residual_Lancamento] FOREIGN KEY([ID_Lancamento])
REFERENCES [dbo].[Lancamento] ([ID_Lancamento])
GO
ALTER TABLE [dbo].[Residual] CHECK CONSTRAINT [FK_Residual_Lancamento]
GO
ALTER TABLE [dbo].[Residual]  WITH CHECK ADD  CONSTRAINT [FK_Residual_Processamento] FOREIGN KEY([ID_Processamento])
REFERENCES [dbo].[Processamento] ([ID_Processamento])
GO
ALTER TABLE [dbo].[Residual] CHECK CONSTRAINT [FK_Residual_Processamento]
GO
ALTER TABLE [dbo].[Senha]  WITH CHECK ADD  CONSTRAINT [FK_Senha_Funcionarios] FOREIGN KEY([ID_Funcionario])
REFERENCES [dbo].[Funcionarios] ([ID_Funcionario])
GO
ALTER TABLE [dbo].[Senha] CHECK CONSTRAINT [FK_Senha_Funcionarios]
GO
ALTER TABLE [dbo].[Tanque]  WITH CHECK ADD  CONSTRAINT [FK_Tanque_Assentamentos] FOREIGN KEY([ID_Assentamento])
REFERENCES [dbo].[Assentamentos] ([ID_Assentamento])
GO
ALTER TABLE [dbo].[Tanque] CHECK CONSTRAINT [FK_Tanque_Assentamentos]
GO
ALTER TABLE [dbo].[Tanque]  WITH CHECK ADD  CONSTRAINT [FK_Tanque_Cooperado] FOREIGN KEY([ID_Cooperado])
REFERENCES [dbo].[Cooperado] ([ID_Cooperado])
GO
ALTER TABLE [dbo].[Tanque] CHECK CONSTRAINT [FK_Tanque_Cooperado]
GO
ALTER TABLE [dbo].[VLPagamento]  WITH CHECK ADD  CONSTRAINT [FK_VLPagamento_Assentamentos] FOREIGN KEY([ID_Assentamento])
REFERENCES [dbo].[Assentamentos] ([ID_Assentamento])
GO
ALTER TABLE [dbo].[VLPagamento] CHECK CONSTRAINT [FK_VLPagamento_Assentamentos]
GO
ALTER TABLE [dbo].[VLPagamento]  WITH CHECK ADD  CONSTRAINT [FK_VLPagamento_Tanque] FOREIGN KEY([ID_Tanque])
REFERENCES [dbo].[Tanque] ([ID_Tanque])
GO
ALTER TABLE [dbo].[VLPagamento] CHECK CONSTRAINT [FK_VLPagamento_Tanque]
GO
/****** Object:  StoredProcedure [dbo].[consultasCheques]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultasCheques] 
	@Ano AS INT = NULL,
	@Mes AS INT = NULL,
	@Assentamento AS VARCHAR(MAX) = NULL,
	@Cooperado AS VARCHAR(MAX) = NULL,
	@Quebra AS INT
AS BEGIN

	SELECT 
		CASE @Quebra  
			WHEN '0' THEN CONVERT(VARCHAR,c.AnoCheque) + ' - ' + CONVERT(VARCHAR,c.MesCheque)
			WHEN '1' THEN CONVERT(VARCHAR,a.ID_Assentamento)
			WHEN '2' THEN CONVERT(VARCHAR,coop.ID_Cooperado)
		END										AS Id,
		CASE c.MesCheque
			WHEN '1' THEN 'Janeiro - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '2' THEN 'Fevereiro - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '3' THEN 'Março - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '4' THEN 'Abril - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '5' THEN 'Maio - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '6' THEN 'Junho - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '7' THEN 'Julho - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '8' THEN 'Agosto - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '9' THEN 'Setembro - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '10' THEN 'Outubro - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '11' THEN 'Novembro - ' + CONVERT(VARCHAR,c.AnoCheque)
			WHEN '12' THEN 'Dezembro - ' + CONVERT(VARCHAR,c.AnoCheque)
		END										AS Mes_Ano,
		c.NumeroCheque,
		c.DataCheque,
		c.ValorCheque,
		a.ID_Assentamento						AS Assentamento_ID,
		coop.ID_Cooperado						AS Cooperado_ID,
		a.Nome_Assentamento						AS Assentamento_Nome,
		coop.NomeCooperado						AS Cooperado_Nome
	FROM 
		Cheque c

		INNER JOIN Lancamento l
		ON l.ID_Lancamento = c.ID_Lancamento

		INNER JOIN Cooperado coop
		ON coop.ID_Cooperado = l.ID_Cooperado

		INNER JOIN Assentamentos a
		ON a.ID_Assentamento = l.ID_Assentamento

	WHERE
		(@Ano IS NULL OR c.AnoCheque = @Ano) AND
		(@Mes IS NULL OR c.MesCheque = @Mes)  AND
		(@Assentamento	IS NULL OR @Assentamento LIKE '%|' + CONVERT(VARCHAR(MAX),a.ID_Assentamento) + '|%') AND	
		(@Cooperado		IS NULL OR @Cooperado LIKE '%|' + CONVERT(VARCHAR(MAX),coop.ID_Cooperado) + '|%')

END

GO
/****** Object:  StoredProcedure [dbo].[consultasLancamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultasLancamentos] 
	@Ano AS INT = NULL,
	@Assentamento AS VARCHAR(MAX) = NULL,
	@Tanque AS VARCHAR(MAX) = NULL,
	@Cooperado AS VARCHAR(MAX) = NULL,
	@Quebra AS INT
AS BEGIN

	SELECT
		CooperadoId,
		CooperadoNome,
		AssentamentoId,
		AssentamentoNome,
		TanqueId,
		TanqueNome,
		ISNULL([1],0)					AS [Janeiro],
		ISNULL([2],0)					AS [Fevereiro],
		ISNULL([3],0)					AS [Marco],
		ISNULL([4],0)					AS [Abril],
		ISNULL([5],0)					AS [Maio],
		ISNULL([6],0)					AS [Junho],
		ISNULL([7],0)					AS [Julho],
		ISNULL([8],0)					AS [Agosto],
		ISNULL([9],0)					AS [Setembro],
		ISNULL([10],0)					AS [Outubro],
		ISNULL([11],0)					AS [Novembro],
		ISNULL([12],0)					AS [Dezembro],
		(ISNULL([1],0) +
		ISNULL([2],0) + 
		ISNULL([3],0) + 
		ISNULL([4],0) + 
		ISNULL([5],0) + 
		ISNULL([6],0) + 
		ISNULL([7],0) + 
		ISNULL([8],0) + 
		ISNULL([9],0) + 
		ISNULL([10],0) + 
		ISNULL([11],0) + 
		ISNULL([12],0))					AS [Total]
	INTO
		#TMP_CONSULTALANCAMENTOS
	FROM
		(
		SELECT
			c.ID_Cooperado			AS CooperadoId,
			c.NomeCooperado			AS CooperadoNome,
			a.ID_Assentamento		AS AssentamentoId,
			a.Nome_assentamento		AS AssentamentoNome,
			t.ID_Tanque				AS TanqueId,
			t.Zelador				AS TanqueNome,
			l.Mes_Ref				AS Mes,
			l.Ano					AS Ano,
			l.TotalMensal			AS Total
		FROM 
			Lancamento l
			
			INNER JOIN Cooperado c
			ON c.ID_Cooperado = l.ID_Cooperado 

			INNER JOIN Assentamentos a
			ON a.ID_Assentamento = l.ID_Assentamento

			INNER JOIN Tanque t
			ON t.ID_Tanque = l.ID_Tanque	
		) lan
	PIVOT
	(
		SUM(Total)
		FOR [Mes] IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	) piv
	WHERE
		Ano = @Ano AND
		(@Assentamento	IS NULL OR @Assentamento LIKE '%|' + CONVERT(VARCHAR(MAX),AssentamentoId) + '|%') AND
		(@Tanque		IS NULL OR @Tanque LIKE '%|' + CONVERT(VARCHAR(MAX),TanqueId) + '|%') AND
		(@Cooperado		IS NULL OR @Cooperado LIKE '%|' + CONVERT(VARCHAR(MAX),CooperadoId) + '|%')


	IF (@Assentamento IS NULL AND @Tanque IS NULL AND @Cooperado IS NULL) BEGIN

		SELECT
			CASE @Quebra  WHEN '0' THEN AssentamentoId
						  WHEN '1' THEN TanqueId
						  WHEN '2' THEN CooperadoId
			END															  AS Id,				
			CASE WHEN @Quebra = '0' THEN AssentamentoId		ELSE NULL END AS AssentamentoId,
			CASE WHEN @Quebra = '0' THEN AssentamentoNome	ELSE NULL END AS AssentamentoNome,
			CASE WHEN @Quebra = '1' THEN TanqueId			ELSE NULL END AS TanqueId,
			CASE WHEN @Quebra = '1' THEN TanqueNome			ELSE NULL END AS TanqueNome,
			CASE WHEN @Quebra = '2' THEN CooperadoId		ELSE NULL END AS CooperadoId,
			CASE WHEN @Quebra = '2' THEN CooperadoNome		ELSE NULL END AS CooperadoNome,
			SUM(Janeiro)												  AS Janeiro,
			SUM(Fevereiro)												  AS Fevereiro,
			SUM(Marco)													  AS Marco,
			SUM(Abril)													  AS Abril,
			SUM(Maio)													  AS Maio,
			SUM(Junho)													  AS Junho,
			SUM(Julho)													  AS Julho,
			SUM(Agosto)													  AS Agosto,
			SUM(Setembro)												  AS Setembro,
			SUM(Outubro)												  AS Outubro,
			SUM(Novembro)												  AS Novembro,
			SUM(Dezembro)												  AS Dezembro,
			SUM(Total)													  AS Total
		FROM
			#TMP_CONSULTALANCAMENTOS
		GROUP BY
			(CASE @Quebra WHEN '0' THEN AssentamentoId
						  WHEN '1' THEN TanqueId
						  WHEN '2' THEN CooperadoId
			END),		
			(CASE WHEN @Quebra = '0' THEN AssentamentoId		ELSE NULL END),
			(CASE WHEN @Quebra = '0' THEN AssentamentoNome		ELSE NULL END),
			(CASE WHEN @Quebra = '1' THEN TanqueId				ELSE NULL END),
			(CASE WHEN @Quebra = '1' THEN TanqueNome			ELSE NULL END),
			(CASE WHEN @Quebra = '2' THEN CooperadoId			ELSE NULL END),
			(CASE WHEN @Quebra = '2' THEN CooperadoNome			ELSE NULL END)
	END
	ELSE BEGIN
		SELECT 
			CASE @Quebra  WHEN '0' THEN AssentamentoId
						  WHEN '1' THEN TanqueId
						  WHEN '2' THEN CooperadoId
			END															  AS Id,
			* 
		FROM #TMP_CONSULTALANCAMENTOS
	END

END




GO
/****** Object:  StoredProcedure [dbo].[consultasNotasFiscais]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultasNotasFiscais] 
	@DataInicial AS DATETIME , 
	@DataFinal AS DATETIME,	
	@Quebra AS INT,
	@Cliente AS VARCHAR(MAX) = NULL,
	@NumeroNF AS VARCHAR(MAX) = NULL
AS BEGIN

	SELECT
		CASE @Quebra WHEN 0 THEN CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
					 WHEN 1 THEN CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi)) + ' - ' + CONVERT(VARCHAR,DATEPART(MONTH,p.dEmi))
		END					AS Id,	
		CASE CONVERT(VARCHAR,DATEPART(MONTH,p.dEmi))
			WHEN '1' THEN 'Janeiro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '2' THEN 'Fevereiro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '3' THEN 'Março - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '4' THEN 'Abril - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '5' THEN 'Maio - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '6' THEN 'Junho - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '7' THEN 'Julho - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '8' THEN 'Agosto - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '9' THEN 'Setembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '10' THEN 'Outubro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '11' THEN 'Novembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '12' THEN 'Dezembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
		END										AS Mes_Ano,	
		CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))	AS Ano,
		p.dEmi				AS DataEmissao,
		p.nNF				AS NumeroNF,
		p.serie				AS Serie,
		p.natOP				AS Natureza,
		c.CPF_CNPJ			AS Cliente_CPFCNPJ,
		c.Nome				AS Cliente_Nome,
		p.ValorTotalNota	AS ValorTotalNota,
		p.SituacaoNFE		AS SituacaoNFE
	FROM 
		[SQLBanco.mdf].[dbo].[NotaFiscal] p

		LEFT JOIN [SQLBanco.mdf].[dbo].[Clientes] c
		ON c.ID_Cliente = p.ID_Cliente

		--CROSS JOIN [SQLBanco.mdf].[dbo].[DadosEmpresa] d

	WHERE
		p.dEmi >= @DataInicial AND p.dEmi <= @DataFinal AND		
		(@Cliente IS NULL OR (c.Nome Like '%' + @Cliente + '%' OR c.CPF_CNPJ Like '%' + @Cliente + '%')) AND
		(@NumeroNF IS NULL OR (p.nNF = @NumeroNF))

	UNION ALL

	SELECT
		CASE @Quebra WHEN 0 THEN CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
					 WHEN 1 THEN CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi)) + ' - ' + CONVERT(VARCHAR,DATEPART(MONTH,p.dEmi))
		END					AS Id,	
		CASE CONVERT(VARCHAR,DATEPART(MONTH,p.dEmi))
			WHEN '1' THEN 'Janeiro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '2' THEN 'Fevereiro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '3' THEN 'Março - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '4' THEN 'Abril - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '5' THEN 'Maio - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '6' THEN 'Junho - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '7' THEN 'Julho - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '8' THEN 'Agosto - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '9' THEN 'Setembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '10' THEN 'Outubro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '11' THEN 'Novembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '12' THEN 'Dezembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
		END										AS Mes_Ano,	
		CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))	AS Ano,
		p.dEmi				AS DataEmissao,
		p.nNF				AS NumeroNF,
		p.serie				AS Serie,
		p.natOP				AS Natureza,
		c.CPF_CNPJ			AS Cliente_CPFCNPJ,
		c.Nome				AS Cliente_Nome,
		p.ValorTotalNota	AS ValorTotalNota,
		p.SituacaoNFE		AS SituacaoNFE
	FROM 
		[04455745000104B].[dbo].[NotaFiscal] p

		LEFT JOIN [04455745000104B].[dbo].[Clientes] c
		ON c.ID_Cliente = p.ID_Cliente

		--CROSS JOIN [SQLBanco.mdf].[dbo].[DadosEmpresa] d

	WHERE
		p.dEmi >= @DataInicial AND p.dEmi <= @DataFinal AND		
		(@Cliente IS NULL OR (c.Nome Like '%' + @Cliente + '%' OR c.CPF_CNPJ Like '%' + @Cliente + '%')) AND
		(@NumeroNF IS NULL OR (p.nNF = @NumeroNF))

	UNION ALL

	SELECT
		CASE @Quebra WHEN 0 THEN CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
					 WHEN 1 THEN CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi)) + ' - ' + CONVERT(VARCHAR,DATEPART(MONTH,p.dEmi))
		END					AS Id,	
		CASE CONVERT(VARCHAR,DATEPART(MONTH,p.dEmi))
			WHEN '1' THEN 'Janeiro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '2' THEN 'Fevereiro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '3' THEN 'Março - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '4' THEN 'Abril - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '5' THEN 'Maio - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '6' THEN 'Junho - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '7' THEN 'Julho - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '8' THEN 'Agosto - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '9' THEN 'Setembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '10' THEN 'Outubro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '11' THEN 'Novembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
			WHEN '12' THEN 'Dezembro - ' + CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))
		END										AS Mes_Ano,	
		CONVERT(VARCHAR,DATEPART(YEAR,p.dEmi))	AS Ano,
		p.dEmi				AS DataEmissao,
		p.nNF				AS NumeroNF,
		p.serie				AS Serie,
		p.natOP				AS Natureza,
		c.CPF_CNPJ			AS Cliente_CPFCNPJ,
		c.Nome				AS Cliente_Nome,
		p.ValorTotalNota	AS ValorTotalNota,
		p.SituacaoNFE		AS SituacaoNFE
	FROM 
		[04455745000449].[dbo].[NotaFiscal] p

		LEFT JOIN [04455745000449].[dbo].[Clientes] c
		ON c.ID_Cliente = p.ID_Cliente

		--CROSS JOIN [SQLBanco.mdf].[dbo].[DadosEmpresa] d

	WHERE
		p.dEmi >= @DataInicial AND p.dEmi <= @DataFinal AND		
		(@Cliente IS NULL OR (c.Nome Like '%' + @Cliente + '%' OR c.CPF_CNPJ Like '%' + @Cliente + '%')) AND
		(@NumeroNF IS NULL OR (p.nNF = @NumeroNF))

END


GO
/****** Object:  StoredProcedure [dbo].[consultasRecebiveis]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultasRecebiveis] 
	@DataInicial AS DATETIME , 
	@DataFinal AS DATETIME,
	@Situacao AS INT ,
	@Quebra AS INT,
	@Cliente AS VARCHAR(MAX) = NULL,
	@Funcionario AS VARCHAR(MAX) = NULL
AS BEGIN

	SELECT
		CASE @Quebra WHEN 0 THEN c.Nome
					 WHEN 1 THEN f.Nome
					 WHEN 2 THEN p.Especie
		END					AS Id,
		c.Nome				AS Cliente_Nome,
		f.Nome				AS Funcionario_Nome,
		p.Data_Venc			AS DataVencimento,
		p.QntParcelas		AS QntParcelas,
		p.ValorParcelas		AS ValorParcelas,
		p.Especie			AS Especie
	FROM 
		[SQLBanco.mdf].[dbo].[Parcelado] p

		LEFT JOIN [SQLBanco.mdf].[dbo].[Clientes] c
		ON c.ID_Cliente = p.ID_Cliente

		LEFT JOIN [SQLBanco.mdf].[dbo].[Funcionarios] f
		ON f.ID_Funcionario = p.ID_Funcionario

	WHERE
		p.Data_Venc >= @DataInicial AND p.Data_Venc <= @DataFinal AND
		(	
			(@Situacao = 0 AND p.DataPagamento IS NULL AND p.Data_Venc > GETDATE()) OR
			(@Situacao = 1 AND p.DataPagamento IS NOT NULL) OR
			(@Situacao = 2 AND p.DataPagamento IS NULL AND p.Data_Venc < GETDATE())
		) AND
		(@Cliente IS NULL OR (c.Nome Like '%' + @Cliente + '%' OR c.CPF_CNPJ Like '%' + @Cliente + '%')) AND
		(@Funcionario IS NULL OR (f.Nome Like '%' + @Funcionario + '%' OR f.CPF Like '%' + @Funcionario + '%'))

	UNION ALL

	SELECT
		CASE @Quebra WHEN 0 THEN c.Nome
					 WHEN 1 THEN f.Nome
					 WHEN 2 THEN p.Especie
		END					AS Id,
		c.Nome				AS Cliente_Nome,
		f.Nome				AS Funcionario_Nome,
		p.Data_Venc			AS DataVencimento,
		p.QntParcelas		AS QntParcelas,
		p.ValorParcelas		AS ValorParcelas,
		p.Especie			AS Especie
	FROM 
		[04455745000104B].[dbo].[Parcelado] p

		LEFT JOIN [04455745000104B].[dbo].[Clientes] c
		ON c.ID_Cliente = p.ID_Cliente

		LEFT JOIN [04455745000104B].[dbo].[Funcionarios] f
		ON f.ID_Funcionario = p.ID_Funcionario

	WHERE
		p.Data_Venc >= @DataInicial AND p.Data_Venc <= @DataFinal AND
		(	
			(@Situacao = 0 AND p.DataPagamento IS NULL AND p.Data_Venc > GETDATE()) OR
			(@Situacao = 1 AND p.DataPagamento IS NOT NULL) OR
			(@Situacao = 2 AND p.DataPagamento IS NULL AND p.Data_Venc < GETDATE())
		) AND
		(@Cliente IS NULL OR (c.Nome Like '%' + @Cliente + '%' OR c.CPF_CNPJ Like '%' + @Cliente + '%')) AND
		(@Funcionario IS NULL OR (f.Nome Like '%' + @Funcionario + '%' OR f.CPF Like '%' + @Funcionario + '%'))

	UNION ALL

	SELECT
		CASE @Quebra WHEN 0 THEN c.Nome
					 WHEN 1 THEN f.Nome
					 WHEN 2 THEN p.Especie
		END					AS Id,
		c.Nome				AS Cliente_Nome,
		f.Nome				AS Funcionario_Nome,
		p.Data_Venc			AS DataVencimento,
		p.QntParcelas		AS QntParcelas,
		p.ValorParcelas		AS ValorParcelas,
		p.Especie			AS Especie
	FROM 
		[04455745000449].[dbo].[Parcelado] p

		LEFT JOIN [04455745000449].[dbo].[Clientes] c
		ON c.ID_Cliente = p.ID_Cliente

		LEFT JOIN [04455745000449].[dbo].[Funcionarios] f
		ON f.ID_Funcionario = p.ID_Funcionario

	WHERE
		p.Data_Venc >= @DataInicial AND p.Data_Venc <= @DataFinal AND
		(	
			(@Situacao = 0 AND p.DataPagamento IS NULL AND p.Data_Venc > GETDATE()) OR
			(@Situacao = 1 AND p.DataPagamento IS NOT NULL) OR
			(@Situacao = 2 AND p.DataPagamento IS NULL AND p.Data_Venc < GETDATE())
		) AND
		(@Cliente IS NULL OR (c.Nome Like '%' + @Cliente + '%' OR c.CPF_CNPJ Like '%' + @Cliente + '%')) AND
		(@Funcionario IS NULL OR (f.Nome Like '%' + @Funcionario + '%' OR f.CPF Like '%' + @Funcionario + '%'))
		

END

GO
/****** Object:  StoredProcedure [dbo].[graficosCheques]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosCheques]
	@Ano AS INT = NULL,
	@Mes AS INT = NULL,
	@Top AS INT = 10
AS
BEGIN
	
	SELECT TOP (@Top)
		Cooperado.ID_Cooperado							as Cooperado_ID
	,	Cooperado.NomeCooperado							as Cooperado_Nome
	,	SUM(ISNULL(Cheque.ValorCheque,0))				as Total	
	FROM
		Cheque 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = Cheque.ID_Cooperado

	WHERE
		(@Ano IS NULL OR Cheque.AnoCheque = @Ano)
	AND (@Mes IS NULL OR Cheque.MesCheque = @Mes)

	GROUP BY 
		Cooperado.ID_Cooperado,
		Cooperado.NomeCooperado

	ORDER BY
		Total DESC
	

END


GO
/****** Object:  StoredProcedure [dbo].[graficosGastos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosGastos]
	@Ano AS INT = NULL,
	@Mes AS INT = NULL,
	@Top AS INT = 3
AS
BEGIN
	SELECT TOP (@Top)
		Cooperado.ID_Cooperado								as Cooperado_ID
	,	Cooperado.NomeCooperado								as Cooperado_Nome
	,	SUM(ISNULL(Gastos.ValorTotalGasto,0))	as Total	
	FROM
		Gastos 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = Gastos.ID_Cooperado

	WHERE
		(@Ano IS NULL OR Gastos.Ano = @Ano)
	AND (@Mes IS NULL OR Gastos.Mes = @Mes)
	
	GROUP BY 
		Cooperado.ID_Cooperado, 
		Cooperado.NomeCooperado

	ORDER BY
		Total DESC
	
END

GO
/****** Object:  StoredProcedure [dbo].[graficosGastosCooperados]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosGastosCooperados]
	@Cooperado_ID AS INT,
	@Ano AS INT = NULL
AS
BEGIN
	
	SELECT
		Cooperado.ID_Cooperado								as Cooperado_ID
	,	Cooperado.NomeCooperado								as Cooperado_Nome
	,	CASE Gastos.Mes		
			WHEN 1 THEN '#FF0F00'
			WHEN 2 THEN '#FF6600'
			WHEN 3 THEN '#FF9E01'
			WHEN 4 THEN '#FCD202'
			WHEN 5 THEN '#F8FF01'
			WHEN 6 THEN '#B0DE09'
			WHEN 7 THEN '#04D215'
			WHEN 8 THEN '#0D8ECF'
			WHEN 9 THEN '#0D52D1'
			WHEN 10 THEN '#2A0CD0'
			WHEN 11 THEN '#8A0CCF'
			WHEN 12 THEN '#CD0D74'
		END													as Color
	,	CASE Gastos.Mes		
			WHEN 1 THEN 'Janeiro'
			WHEN 2 THEN 'Fevereiro'
			WHEN 3 THEN 'Março'
			WHEN 4 THEN 'Abril'
			WHEN 5 THEN 'Maio'
			WHEN 6 THEN 'Junho'
			WHEN 7 THEN 'Julho'
			WHEN 8 THEN 'Agosto'
			WHEN 9 THEN 'Setembro'
			WHEN 10 THEN 'Outubro'
			WHEN 11 THEN 'Novembro'
			WHEN 12 THEN 'Dezembro'
		END													as Mes
	,	SUM(ISNULL(Gastos.ValorTotalGasto,0))	as Total	
	FROM
		Gastos 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = Gastos.ID_Cooperado

	WHERE
		(@Ano IS NULL OR Gastos.Ano = @Ano)
	AND Gastos.ID_Cooperado = @Cooperado_ID

	GROUP BY 
		Cooperado.ID_Cooperado, 
		Cooperado.NomeCooperado,
		Gastos.Mes

	ORDER BY
		Gastos.Mes ASC
	
END

GO
/****** Object:  StoredProcedure [dbo].[graficosLancamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosLancamentos]
	@Ano AS INT = NULL,
	@Mes AS INT = NULL,
	@Top AS INT = 3
AS
BEGIN
	
	SELECT TOP (@Top)
		Assentamentos.ID_Assentamento						as Assentamento_ID
	,	Assentamentos.Nome_assentamento						as Assentamento_Nome
	,	SUM(ISNULL(CONVERT(INT,Lancamento.TotalMensal),0))	as Total	
	FROM
		Lancamento 

		INNER JOIN Assentamentos
		ON Assentamentos.ID_Assentamento = Lancamento.ID_Assentamento

	WHERE
		(@Ano IS NULL OR Lancamento.Ano = @Ano)
	AND (@Mes IS NULL OR Lancamento.Mes_Ref = @Mes)

	GROUP BY 
		Assentamentos.ID_Assentamento, 
		Assentamentos.Nome_assentamento

	ORDER BY
		Total DESC
	

END

/*
 var listLancamentos = ctx.Lancamentos
                .Where(r => r.ID_Assentamento != null && 
                            (Ano == null || Convert.ToInt32(r.Ano) == Ano) &&
                            (Mes == null || Convert.ToInt32(r.Mes_Ref) == Mes)
                      )
                .GroupBy(r => new { r.ID_Assentamento, r.Assentamento.Nome_assentamento }).Select(r => new
                {
                    Assentamento_ID = r.Key.ID_Assentamento,
                    Assentamento_Nome = r.Key.Nome_assentamento,
                    Total = r.Sum(g => Convert.ToDouble((g.TotalMensal ?? "0").Replace(',', '.')))
                })                
                .OrderByDescending(r => r.Total)
                .ToList();

				*/
GO
/****** Object:  StoredProcedure [dbo].[graficosLancamentosAssentamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosLancamentosAssentamentos]
	@Assentamento_ID	AS INT,
	@Ano				AS INT = NULL,
	@Mes				AS INT = NULL,
	@Top				AS INT = 3
AS
BEGIN
	
	SELECT TOP (@Top)
		Assentamentos.Nome_assentamento						as Assentamento_Nome
	,	Tanque.ID_Tanque									as Tanque_ID
	,	Tanque.Zelador										as Tanque_Nome
	,	SUM(ISNULL(CONVERT(INT,Lancamento.TotalMensal),0))	as Total	
	FROM
		Lancamento 

		INNER JOIN Assentamentos
		ON Assentamentos.ID_Assentamento = Lancamento.ID_Assentamento

		INNER JOIN Tanque
		ON Tanque.ID_Tanque = Lancamento.ID_Tanque
		
	WHERE
		(@Ano IS NULL OR Lancamento.Ano = @Ano)
	AND (@Mes IS NULL OR Lancamento.Mes_Ref = @Mes)
	AND Lancamento.ID_Assentamento = @Assentamento_ID

	GROUP BY 
		Tanque.ID_Tanque, 
		Tanque.Zelador,
		Assentamentos.Nome_assentamento

	ORDER BY
		Total DESC
			

END
GO
/****** Object:  StoredProcedure [dbo].[graficosLancamentosCooperados]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosLancamentosCooperados] 
	@Cooperado_ID		AS INT,
	@Ano				AS INT = NULL
AS
BEGIN
	
	SELECT 
		Cooperado.ID_Cooperado								as Cooperado_ID
	,	Cooperado.NomeCooperado								as Cooperado_Nome
	,	CASE Lancamento.Mes_Ref		
			WHEN 1 THEN '#FF0F00'
			WHEN 2 THEN '#FF6600'
			WHEN 3 THEN '#FF9E01'
			WHEN 4 THEN '#FCD202'
			WHEN 5 THEN '#F8FF01'
			WHEN 6 THEN '#B0DE09'
			WHEN 7 THEN '#04D215'
			WHEN 8 THEN '#0D8ECF'
			WHEN 9 THEN '#0D52D1'
			WHEN 10 THEN '#2A0CD0'
			WHEN 11 THEN '#8A0CCF'
			WHEN 12 THEN '#CD0D74'
		END													as Color
	,	CASE Lancamento.Mes_Ref		
			WHEN 1 THEN 'Janeiro'
			WHEN 2 THEN 'Fevereiro'
			WHEN 3 THEN 'Março'
			WHEN 4 THEN 'Abril'
			WHEN 5 THEN 'Maio'
			WHEN 6 THEN 'Junho'
			WHEN 7 THEN 'Julho'
			WHEN 8 THEN 'Agosto'
			WHEN 9 THEN 'Setembro'
			WHEN 10 THEN 'Outubro'
			WHEN 11 THEN 'Novembro'
			WHEN 12 THEN 'Dezembro'
		END													as Mes
	,	SUM(ISNULL(CONVERT(INT,Lancamento.TotalMensal),0))	as Total	
	FROM
		Lancamento 

		INNER JOIN Assentamentos
		ON Assentamentos.ID_Assentamento = Lancamento.ID_Assentamento

		INNER JOIN Tanque
		ON Tanque.ID_Tanque = Lancamento.ID_Tanque

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = Lancamento.ID_Cooperado
		
	WHERE
		(@Ano IS NULL OR Lancamento.Ano = @Ano)
	AND Cooperado.ID_Cooperado = @Cooperado_ID

	GROUP BY 
		Cooperado.ID_Cooperado,
		Cooperado.NomeCooperado,
		Lancamento.Mes_Ref

	ORDER BY
		Lancamento.Mes_Ref ASC
		
END


GO
/****** Object:  StoredProcedure [dbo].[graficosLancamentosTanques]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosLancamentosTanques] 
	@Tanque_ID			AS INT,
	@Ano				AS INT = NULL,
	@Mes				AS INT = NULL,
	@Top				AS INT = 3
AS
BEGIN
	
	SELECT TOP (@Top)
		Tanque.ID_Tanque									as Tanque_ID
	,	Tanque.Zelador										as Tanque_Nome
	,	Cooperado.ID_Cooperado								as Cooperado_ID
	,	Cooperado.NomeCooperado								as Cooperado_Nome
	,	SUM(ISNULL(CONVERT(INT,Lancamento.TotalMensal),0))	as Total	
	FROM
		Lancamento 

		INNER JOIN Assentamentos
		ON Assentamentos.ID_Assentamento = Lancamento.ID_Assentamento

		INNER JOIN Tanque
		ON Tanque.ID_Tanque = Lancamento.ID_Tanque

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = Lancamento.ID_Cooperado
		
	WHERE
		(@Ano IS NULL OR Lancamento.Ano = @Ano)
	AND (@Mes IS NULL OR Lancamento.Mes_Ref = @Mes)
	AND Tanque.ID_Tanque = @Tanque_ID

	GROUP BY 
		Tanque.ID_Tanque, 
		Tanque.Zelador,
		Cooperado.ID_Cooperado,
		Cooperado.NomeCooperado

	ORDER BY
		Total DESC

END

GO
/****** Object:  StoredProcedure [dbo].[graficosNotasFiscais]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosNotasFiscais]
	@Empresa as VARCHAR(100),
	@Ano AS INT = NULL,
	@Mes AS INT = NULL,
	@Top AS INT = 3
AS
BEGIN
	
	EXEC ('USE ' + @Empresa)

	SELECT TOP (@Top)
		Cooperado.ID_Assentamento								as Assentamento_ID
	,	Cooperado.Nome_Assentamento								as Assentamento_Nome
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))	as Total	
	FROM
		NotaFiscal 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = NotaFiscal.ID_Cooperado

	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND (@Mes IS NULL OR DATEPART(month,NotaFiscal.dEmi) = @Mes)
	AND NotaFiscal.Protocolo IS NOT NULL
	
	GROUP BY 
		Cooperado.ID_Assentamento, 
		Cooperado.Nome_Assentamento

	ORDER BY
		Total DESC
	
END


GO
/****** Object:  StoredProcedure [dbo].[graficosNotasFiscaisAssentamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosNotasFiscaisAssentamentos]
	@Empresa as VARCHAR(100),
	@Assentamento_ID	AS INT,
	@Ano				AS INT = NULL,
	@Mes				AS INT = NULL,
	@Top				AS INT = 3
AS
BEGIN
	
	EXEC ('USE ' + @Empresa)

	SELECT TOP (@Top)
		Cooperado.Nome_assentamento							as Assentamento_Nome
	,	Tanque.ID_Tanque									as Tanque_ID
	,	Tanque.Zelador										as Tanque_Nome
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))			as Total	
	FROM
		NotaFiscal 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = NotaFiscal.ID_Cooperado

		INNER JOIN Tanque
		ON Tanque.ID_Tanque = Cooperado.ID_Tanque
		
	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND (@Mes IS NULL OR DATEPART(month,NotaFiscal.dEmi) = @Mes)
	AND Cooperado.ID_Assentamento = @Assentamento_ID
	AND NotaFiscal.Protocolo IS NOT NULL

	GROUP BY 
		Tanque.ID_Tanque, 
		Tanque.Zelador,
		Cooperado.Nome_assentamento

	ORDER BY
		Total DESC
			

END

GO
/****** Object:  StoredProcedure [dbo].[graficosNotasFiscaisCooperados]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosNotasFiscaisCooperados] 
	@Empresa as VARCHAR(100),
	@Cooperado_ID		AS INT,
	@Ano				AS INT = NULL
AS
BEGIN
	
	EXEC ('USE ' + @Empresa)

	SELECT 
		Cooperado.ID_Cooperado								as Cooperado_ID
	,	Cooperado.NomeCooperado								as Cooperado_Nome
	,	CASE DATEPART(month,NotaFiscal.dEmi)	
			WHEN 1 THEN '#FF0F00'
			WHEN 2 THEN '#FF6600'
			WHEN 3 THEN '#FF9E01'
			WHEN 4 THEN '#FCD202'
			WHEN 5 THEN '#F8FF01'
			WHEN 6 THEN '#B0DE09'
			WHEN 7 THEN '#04D215'
			WHEN 8 THEN '#0D8ECF'
			WHEN 9 THEN '#0D52D1'
			WHEN 10 THEN '#2A0CD0'
			WHEN 11 THEN '#8A0CCF'
			WHEN 12 THEN '#CD0D74'
		END													as Color
	,	CASE DATEPART(month,NotaFiscal.dEmi)		
			WHEN 1 THEN 'Janeiro'
			WHEN 2 THEN 'Fevereiro'
			WHEN 3 THEN 'Março'
			WHEN 4 THEN 'Abril'
			WHEN 5 THEN 'Maio'
			WHEN 6 THEN 'Junho'
			WHEN 7 THEN 'Julho'
			WHEN 8 THEN 'Agosto'
			WHEN 9 THEN 'Setembro'
			WHEN 10 THEN 'Outubro'
			WHEN 11 THEN 'Novembro'
			WHEN 12 THEN 'Dezembro'
		END													as Mes
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))			as Total	
	FROM
		NotaFiscal 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = NotaFiscal.ID_Cooperado
				
	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND Cooperado.ID_Cooperado = @Cooperado_ID

	GROUP BY 
		Cooperado.ID_Cooperado,
		Cooperado.NomeCooperado,
		DATEPART(month,NotaFiscal.dEmi)

	ORDER BY
		DATEPART(month,NotaFiscal.dEmi) ASC
		
END



GO
/****** Object:  StoredProcedure [dbo].[graficosNotasFiscaisEmpresa]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosNotasFiscaisEmpresa] 
	@Ano AS INT = NULL,
	@Mes AS INT = NULL
AS
BEGIN
		
	SELECT
		* 
	FROM
	(
	SELECT
		'[SQLBanco.mdf]'									as Empresa_ID
	,	empresa.RazaoSocial								as Empresa_Nome
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))		as Total	
	FROM
		[SQLBanco.mdf].[dbo].[NotaFiscal]

		CROSS JOIN [SQLBanco.mdf].[dbo].[DadosEmpresa] empresa

	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND (@Mes IS NULL OR DATEPART(month,NotaFiscal.dEmi) = @Mes)
	AND NotaFiscal.Protocolo IS NOT NULL
	
	GROUP BY 
		empresa.IDEmpresa,
		empresa.RazaoSocial

	UNION 

	SELECT
		'[04455745000104B]'								as Empresa_ID
	,	empresa.RazaoSocial								as Empresa_Nome
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))		as Total	
	FROM
		[04455745000104B].[dbo].[NotaFiscal]

		CROSS JOIN [04455745000104B].[dbo].[DadosEmpresa] empresa

	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND (@Mes IS NULL OR DATEPART(month,NotaFiscal.dEmi) = @Mes)
	AND NotaFiscal.Protocolo IS NOT NULL

	GROUP BY 
		empresa.IDEmpresa,
		empresa.RazaoSocial

	UNION 

	SELECT
		'[04455745000449]'								as Empresa_ID
	,	empresa.RazaoSocial								as Empresa_Nome
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))		as Total	
	FROM
		[04455745000449].[dbo].[NotaFiscal]

		CROSS JOIN [04455745000449].[dbo].[DadosEmpresa] empresa

	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND (@Mes IS NULL OR DATEPART(month,NotaFiscal.dEmi) = @Mes)
	AND NotaFiscal.Protocolo IS NOT NULL
	
	GROUP BY 
		empresa.IDEmpresa,
		empresa.RazaoSocial
	) a

	ORDER BY a.Total DESC

	
	
END


GO
/****** Object:  StoredProcedure [dbo].[graficosNotasFiscaisTanques]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosNotasFiscaisTanques] --31, 2016, 5
	@Empresa as VARCHAR(100),
	@Tanque_ID			AS INT,
	@Ano				AS INT = NULL,
	@Mes				AS INT = NULL,
	@Top				AS INT = 3
AS
BEGIN
	
	EXEC ('USE ' + @Empresa)

	SELECT TOP (@Top)
		Tanque.ID_Tanque									as Tanque_ID
	,	Tanque.Zelador										as Tanque_Nome
	,	Cooperado.ID_Cooperado								as Cooperado_ID
	,	Cooperado.NomeCooperado								as Cooperado_Nome
	,	SUM(ISNULL(NotaFiscal.ValorTotalNota,0))			as Total	
	FROM
		NotaFiscal 

		INNER JOIN Cooperado
		ON Cooperado.ID_Cooperado = NotaFiscal.ID_Cooperado

		INNER JOIN Tanque
		ON Tanque.ID_Tanque = Cooperado.ID_Tanque
		
	WHERE
		(@Ano IS NULL OR DATEPART(year,NotaFiscal.dEmi) = @Ano)
	AND (@Mes IS NULL OR DATEPART(month,NotaFiscal.dEmi) = @Mes)
	AND Tanque.ID_Tanque = @Tanque_ID
	AND NotaFiscal.Protocolo IS NOT NULL
	
	GROUP BY 
		Tanque.ID_Tanque, 
		Tanque.Zelador,
		Cooperado.ID_Cooperado,
		Cooperado.NomeCooperado

	ORDER BY
		Total DESC

END


GO
/****** Object:  StoredProcedure [dbo].[graficosPagamentos]    Script Date: 20/04/2025 02:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[graficosPagamentos]
	@Ano AS INT = NULL,
	@Mes AS INT = NULL,
	@Top AS INT = 10
AS
BEGIN
	
	SELECT TOP (@Top)
		VLPagamento.ID_Tanque								as Tanque_ID
	,	VLPagamento.NomeTanque								as Tanque_Nome
	,	AVG(ISNULL(VLPagamento.TotalPagar,0))				as Total	
	FROM
		VLPagamento 

		INNER JOIN Tanque
		ON Tanque.ID_Tanque = VLPagamento.ID_Tanque

	WHERE
		(@Ano IS NULL OR VLPagamento.Ano = @Ano)
	AND (@Mes IS NULL OR VLPagamento.Mes = @Mes)

	GROUP BY 
		VLPagamento.ID_Tanque,
		VLPagamento.NomeTanque

	ORDER BY
		Total DESC
	

END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cooperado e Assentamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cooperado', @level2type=N'CONSTRAINT',@level2name=N'FK_Cooperado_Assentamentos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cooperado (CooperBanco_Transition.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_COOPERADO_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_COOPERADO_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Holerite (CooperBanco_Transition.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_HOLERITE_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_HOLERITE_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Lancamento (CooperBanco_Transition.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_LANCAMENTO_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_LANCAMENTO_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NotaFiscal (CooperBanco_Transition.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_NF_TRANSITION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_NF_TRANSITION'
GO
USE [master]
GO
ALTER DATABASE [CooperBanco] SET  READ_WRITE 
GO
