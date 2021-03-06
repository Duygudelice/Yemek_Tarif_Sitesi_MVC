USE [master]
GO
/****** Object:  Database [yemeksite]    Script Date: 1.04.2022 16:25:32 ******/
CREATE DATABASE [yemeksite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yemeksite', FILENAME = N'D:\sqldosyalar\MSSQL15.MSSQLSERVER\MSSQL\DATA\yemeksite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'yemeksite_log', FILENAME = N'D:\sqldosyalar\MSSQL15.MSSQLSERVER\MSSQL\DATA\yemeksite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [yemeksite] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yemeksite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yemeksite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yemeksite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yemeksite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yemeksite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yemeksite] SET ARITHABORT OFF 
GO
ALTER DATABASE [yemeksite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yemeksite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yemeksite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yemeksite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yemeksite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yemeksite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yemeksite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yemeksite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yemeksite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yemeksite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yemeksite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yemeksite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yemeksite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yemeksite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yemeksite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yemeksite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yemeksite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yemeksite] SET RECOVERY FULL 
GO
ALTER DATABASE [yemeksite] SET  MULTI_USER 
GO
ALTER DATABASE [yemeksite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yemeksite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yemeksite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yemeksite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [yemeksite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [yemeksite] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'yemeksite', N'ON'
GO
ALTER DATABASE [yemeksite] SET QUERY_STORE = OFF
GO
USE [yemeksite]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkımızda]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkımızda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yazi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkımızda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoris]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoris](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](max) NULL,
	[Adet] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Kategoris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesajlars]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesajlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Mesajlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tariflers]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tariflers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adı] [nvarchar](max) NULL,
	[TarifMalzeme] [nvarchar](max) NULL,
	[Tarifi] [nvarchar](max) NULL,
	[TarifResim] [nvarchar](max) NULL,
	[Tarih] [nvarchar](max) NULL,
	[Tarifveren] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[TarifOnay] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Tariflers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Üyeler]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Üyeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[KullanıcıAdı] [nvarchar](50) NULL,
	[Mail] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Üyeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yemeklers]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yemeklers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NOT NULL,
	[YemekMalzeme] [nvarchar](max) NOT NULL,
	[Tarif] [nvarchar](max) NOT NULL,
	[YemekResim] [varchar](max) NOT NULL,
	[Tarih] [nvarchar](max) NULL,
	[Puan] [real] NULL,
	[Tıklanma] [int] NULL,
	[YemekOnay] [bit] NULL,
	[Kategoriid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yemeklers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Tarih] [nvarchar](max) NULL,
	[YorumOnay] [bit] NOT NULL,
	[Yemekid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yönetici]    Script Date: 1.04.2022 16:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yönetici](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullanıcıAd] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Yönetici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202202222054454_AutomaticMigration', N'YemekTarif.Migrations.Configuration', 0x1F8B0800000000000400ED5CCF72E33418BF33C33B787C02A6C46DF7029D04A6A45BE82CDDEE34BB0C9C76545B49446D39D872A7598637E1257AE1C281037D1F5E01D99665C992FC2771B269A6B3876D65E9A74FDF3F499FBEAFFFFDFDCFF0DBFBC0B7EE6014A3108FECA3C1A16D41EC861EC2B3919D90E9975FD9DF7EF3E927C3975E706FFD54F47B91F6A323713CB2E7842C4E1C2776E73000F120406E14C6E1940CDC307080173AC787875F3B47470EA41036C5B2ACE17582090A60F60BFD751C62172E4802FCCBD0837ECCDAE99749866ABD06018C17C08523FB1718C0DBB72042D341DE79103F3EE0C787A90F22DB3AF511A0344DA03FB52D80714800A1149FBC8BE18444219E4D16B401F86F970B48FB4D811F43B69293B27BDB451D1EA78B72CA8105949BC4240C3A021EBD605C72AAC357E2B5CDB948F9F892F29B2CD35567BC1CD93F80DBDBC787E0F1E183076CAB3AE1C9D88FD2CEF5EC1E88200756D9F5806B0A55A8F4DF81354E7C92447084614222E01F586F921B1FB9AFE0F26D780BF10827BE2F524C69A6DFA406DAF4260A173022CB6B3865EBB838B32D471EE75407F261C2987C751798BC38B6ADD7747270E343AE10022726248CE0F710C30810E8BD0184C088CAF3C283194B95D92B732DC10754CC4635909A956D5D82FB1F219E91F9C8A63FDAD639BA875ED1C228788711B5423A8844099427193AA5346B65FC8A523C0B23B4B27C0B8067D96AE72AD873EAF52C6175AA530F92A68555105E833B34CBD659C1CA64E95321DAD635F4B31EF11C2D72AF3928BEBEBFE5DA731E85C175E80B43F9C7F75427661969A1A9C7244C227755152EE05656E102E059850D7AB571D5CDF87E09FC0FF4FF8D4F96C9773B4BBA86310AB6B2A0F9C667799300CC27A153F8B0D9BFE8787285C1B2C0F92EA40E2185ED08547855E4F5E5F04A4FB6BEBF2BBC99D9DF151EB1B53B0EA324A0AECAE08ED9D7F7D944126DD217D511CB9FD7F3C20C6B752FCC009EBDB0C10B4FC225D8BC2BBE04C8DFBC734C65BD277E315B4B1F4E2D53FBFE3C1A7306EBF80BC591E9DDC94AFEE212C6E0D775FC4501F0EC2FF6DF5F64B2FE5857E44CB3D6B95F1400CF9A6AD0D4C787ED1CFAB77AC3E83BA46398669FAE18D982EE6004F17EB8AD6C3DDD8F06AD3DD3BF7F2EE13A8E898D7FF64B06BFB4473BE8AB944F54EEEEE303D886BF9DA069D4B7A36D7F17FDF72F0C0972578F6A738467DB6852A72D8407B7A94CA7711CBA28635225BE5C467F64625F62CF6A0C05E5A48BC124BA02AA3C6841D5859231B2BF50B85007CC43392570F99423031FD9557DBBC267D4EF13689DBAF9CBE318C42EF05439501E79720B55D1747F4EDF47C7F45249951E61A2EA33C22E5A00BF89FCCAC096A69012C6A7A87E39830B88532D6E92499BB9C538A34A039FAAC2B4261E0D1D41C91A744FBEAA1BF5C3706F17B48E87E73A689D217AD8ACCB3BA0725ADAB7A16F5A51B49998C77FB6A069B9EFA363081D01234641FA3BBC279A5DF35D0CD9C61933675A559A146F0289267520B6ADD2D532C591530B140D94C10A2BD401954EAF014478D154404A356E0229E3F02A08B7B006902270A50329A3620D20454C410752062C1A40D8F95F87C1AF164D1C290E4A5A9694E7B00A8CA096AA88846716A19FF12DA66A2D6DF663BE0C493114C36BB3030B5082A256BD9ABCE036CCA80469359CA8D91BDAEC0E220F4ABDAEE3817E3F68C3CB1A06140731EE8CF8B7A193A776B186A163C8011B5E82C5829E09859C30D6624DF284B0F19793EEF951418EE1B8B1264D8A53CB67A2076A308395AFA94FF5E0398A62720608B801E9A974EC059A6EB9EB35585B318BCEBBAA022BCCB01895FE2C98589B542DCD8EC5D0CEE9328374BFCBAE1082F0EB875B69A21EA0D3686E2DE3D04F026CDE7ECDA3F3D429717CDEA2220C9D0AFDCA26ABF04D3998C8C26825AAD225F426A65706C7D74244E6A19B118F98FD24A288EDEDD1F2042711276FD9196197EEAF3761F3A34977619B876E46D855217713AE9C0224E2C85FDA23B23C1F118A3575A48A85D8159A587B378AE62A45F32E18791A8E0891B7745C531E9556969437773770643070DD75E6E399273FE5F4679EC5A17F05F3340EDD9479B270B66CA3ACB13D4E1EAE1641F2960E0A98677F48CA97376DD79484CC0D8596AE86C02FEF8A49ED94099477CFDE4C805F59BB9B8079E8BE9B004B689020F2A69D519532C2D09BAAF0C0447755310FDD94AAA48F64B29EA42D1D8F1FDA038DFCA52322D260692F3CB5289A238DD8BE5D3F2C3EFB2B14B1F66D1AA7F06CAF9063DA173E9291F2085E6F365A04FEBA9BA871E4BE3B73E56D5D3A09573FB6C765CF9E221A6BDA19FD13C2BFFD9DA979D4788543B579EC86221CF243B841F2DDAEC23B237725345BEDC267E721DA4A2876C8C2A2CD35BB4A9C34EF625B943977C84B63A493654C6030483B0C26BFF9631FD1F5961D2E01465318933CF3C23E3E3C3AAE14FBEE4EE1AD13C79EAF092B9BAA6F65996D218504A59C6D4C12E998E12E16BAE23B10B973107D1680FBCF45A43E8A59F7835D6AED6807A6A970627D68466F3F4988FA30E393657A4FCCD65534AE0528552DAE4F9A9436BC3661F35E90C40AC308027FFDFAC21BD4A4E666AB2B2B71323D5352222EB007EF47F6EFD9B013EBE2E7F7E5C803EB2AA23BD2897568FDD19B9D69E3854FD8CEA4ECDAB51447CCA05DCF34C4BAB41DB10AA5BE6C15A5AED496B5D568366C13EAAC8FFD3DAB739FEA2C954D6DE2C0A58FCA3D61219699F1EB6FD6BDEFFEAB9C9D0D50BBB8FDABD53FBB61454A154FB303EE5CC1B32FF6B3834ED050F9B216A65490B009C76A88633D59CDD0D68BEC9408D6A9FB289390B75D8EA126A8AE586BB252927D4D26DAC6EA38F6AB6EA38BD036A5383C6F7DA57291B50A82B65990F1646A30AAF9C28687185D98B8A9D0228FA98F6CEF26A4E2CE5DE44AA518B59518BA59CCA9F1A6428DDA3A0DDD14E6E4735319476D1587760A539EBCB1C8A3B6C6433785501DD2B204A4B602443785503BD2AE40A4AE3E443741E7E291FADA11AD243E726949D510E4F4EA369524DAC2891D2B1CE942AA6153D1653C6EA438447D69A4BE59F81BC2746388D1AC8448FFA23086AEE495799F0B3C0D8BDDA14251D14589B510E051977D1A1134052EA19F5D18C759A9F24FC04F689797C10DF42EF055421609A14B86C18D2F2593A49B4CDDFC59058C4CF3F06A91FD75A73E9640C9447409F00A7F9720DFE3749F6B2EB8068874F762D786549624BD3ECC961CE975885B0231F6F14DF72D0C163E058BAFF004DCC155687B17C31FE10CB8CBE2C1D80CD22C0899EDC333046611086286518EA7BF521DF682FB6FFE071594CF164A5B0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202203142321126_AutomaticMigration', N'YemekTarif.Migrations.Configuration', 0x1F8B0800000000000400ED5C4D72E33616DE4FD5DC81C5D5CC9423DAEE4DE2929272E4F6C4D571BBCB72A766565D3009491893A042822EAB53B9492EE14D3659CC22BECF5C614012040102E08F44B16597AB176DE3E7C3C3FB03F0F89EFFF7C77FC7DF3D04BE750FA3188578621F8D0E6D0B6237F4105E4CEC84CCBFFADAFEEEDBBFFE65FCD60B1EAC9F8A716FD27174268E27F69290D589E3C4EE1206201E05C88DC2389C93911B060EF042E7F8F0F01BE7E8C88114C2A6589635BE4E304101CC7EA1BF4E43ECC21549807F197AD08F593BED9965A8D67B10C078055C38B1FF0D0378770322341FE58347F1D3237E7A9CFB20B2AD531F014AD30CFA73DB02188704104AF1C9C718CE4814E2C56C451B807FB35E413A6E0EFC18B29D9C94C3DB6EEAF038DD94534E2CA0DC242661D011F0E80DE392539DBE11AF6DCE45CAC7B794DF649DEE3AE3E5C4FE01DCDD3D3D064F8F9F3D605BD5054FA67E940EAE67F7480439B0CAA1075C53A842A5FF0EAC69E2932482130C131201FFC0FA90DCFAC87D07D737E11DC4139CF8BE4831A599F6490DB4E94314AE6044D6D770CEF67171665B8E3CCFA94EE4D38439F9EE2E3079736C5BEFE9E2E0D6875C21044ECC4818C17F420C2340A0F7011002232ACF0B0F662C5556AFACB5069F51B11AD5406A56B675091E7E84784196139BFE685BE7E8017A450BA3E02346D40AE9241225505E64EC94D2AC95F13B4AF1228CD0C6F22D005E65AB5DAB60CFA9D7B384D5A54E3D489A365641780FEED122DB67052B93A54F85685BD7D0CF46C44BB4CABDE6A8E8FD74C7B5E73C0A83EBD017A6F2CE4F5427161969A169C42C4C227753152EE03656E102E055850D7AB573D5CDF87E09FCCFF4FF9D2F96C977982D5DC31805836C68B9F3553E2400F345E8123E6CF62F3A9E5C61B02E70BE0FA94348613B02DD3C3DDEF90007A0A3BF333867E4F5E5374B87B8BDDB2C9CA2D96D168EB5B5570FA324A01ECFE0D559EFA76C218936A947F5E772F776CE9C616DEECC19C0AB33D7AE75EACDC235D8BD47BF04C8DFBD8F4D65FD42DC6BB6973E7C63A6F6FD7934E60CB6F1178A23D3BB938DFCC5258CC17FB6F11705C0ABBF78F9FE2293F5977A69679AB5CD33A50078D55483A63E3D0EF37618F4A1D27764C8B0CC4B7AA9641BBA8711C42FC36D65FBE97E3568ED99FEFC6D0DB7714C6CFEAB5F32F8A5614ED077E916A848DCA74730842B1C44F567681EF5ED68DBBF45FFFC1D4382DCCD83E31CE1D5369A74768028E390CA741AC7A18B322655C2D465F44726F62DF6ACC650504EBA184CA23BA0CA8356545D281913FB1F0A17EA807928A7042EBF08C9C0477655DFAEF019F5FB045AA76EFE01730A621778AA1C288F3CB985AA687A3EA79F59A7F45149951E61A2EA33C22E5A01BF89FCCAC496A69012C697A8F69CC115C4A91637C9A4CDDA629C51A5812F55615A138FC68EA0640DBA273FD58DFA6178B70B5AC7C3731DB4CE103D6CD6E53D50392DED43E89B56146D16E6F19F01342DF77D740EA13360C428487F870F44736A7E8C213B3863E64CAB4A93E2CD20D16420C4B655BA5AA638728682A281325861853AA0D2E93580081F461590528D9B40CA38BC0AC22DAC01A4085CE940CAA85803481153D08194018B061076FFD761F0A74513478A8B929625E53DAC0223A8A52A22E1338B30CEF82DA66A2D6DCE63BE0D493114C36B73020B5082A256BD9ABCE136CCA80469359CA8391BDA9C0E220F4ABDAEE381FE3C68C3CB1A06141731EE8C78DFD8C933C458C3D831A4928D2FC16A45EF84426A196BB166795ED9F4AB59F734AB20C770DC58936DC5A9E52BD10B3558C04A6FEA533D788EA2989C01026E417A2B9D7A816658EE7A0DD656ACA2F3AEAAC00A332C66A53F0B26D626E34B736231B473BACD203DEFB2278420FCFAE9569AEF07E8329A57CB34F493009B8F5FF3EC3C034B9C9FB7A80863A742BF72C82A7C532E26B2305A89AA7409BD89E99DC1F1B5109179EA6EC42326518928627B7BB43C4F4AC4C95BF646D8A5FBEB4DD8FC6AD25DD8E6A9BB117655C8DD842B67128938724F7B44962E2442B1A68E54B110BB42136BEF46D152A568D90523CFE61121F2968E7BCAA3D2CA96F2E60E3B2AF379A45D95CDDD9D0532380BDDD3E8CB993ABF31F567EAC503620353374EDD95A9B3D0B86CEFACB13D4E1E8A1641F2960ECA9C6792488A9C370D6B96421688424B57A3E28100C53CF7CA04CA776C6F26C09FBFDD4DC03CF5A59B004B8E9020F2A6BD5195325AD19BAAF020477755314FDD95AAA45FF5643D495B3A5E65B49723B9A72322D260691F4FB5289AEB91D83EAC1F165308148A58FB90C629A40028E498CE852F64A43C1AD89B8D1641C4EE266A9CB9DFCE5CF9942FDD63AB9D43EA21FB842A42B0A6BDD13F2194DCDF9D9A47A037B8549BE7EE285A227F5437E84EB767F5DEC85D09F35687F0D579B8B712D61DB3106B7319B11273CD87D81665CE3DF2D278EB6C1D13188CD201A3D9CFFED44774BFE5804B80D11CC624CFE2B08F0F8F8E2BF5C7FB530BECC4B1E76B42D4A68260596603A4A3A094B38D09271DB3E5C5DA5B7C0F227709A2BF05E0E1EF22521FF5B52F835D6A396B07A6A97062C96A466F3F098DFA90E5B3657A4FCCD615596E052815526E4F9A9482BC3561CB5E90C4A2C708027FFB92C75BD4A4E69AFD54CB1D9B6DC56CBA65695086A2E4685C600F3E4CEC5FB26927D6C5BF3E95330FACAB881E6B27D6A1F56B6FC6AA0D3A3E636395D27DB7D23E31C5763BFB120BE5F6C4B49482B74D2CA352ECD656A3D9B45DA8B33E80F8AACE7DAAB354C7B58B5B9B3EB4F78C8558D6036C7FE2F77E85D8E4026E80DAC73B845A8EB41F56A49415353BE0CE25452FC57EFA738286329DFD5009A94262178ED5100C7BB69AA12D60D92B116C53885266450F5D1FA266CC6E58FCB251D67F4D6ADCCE0A4B5E56214917A1ED4A717822FD46F52B5B55280D5921F26C8A42AA09CC86AF39BA587353E5471E989FD8DE6D48C59DBBC88D6A436A4B4374AB9873F54D9523B58523BA25CCD9F0A6BA92DAB212ED12A6C47D63D5496DD1896E09A15CA5654D4A6D498A6E09A198A55DC54A5DC18A6E81CED52CF5C52C5A497CE15A97AA21C8F9DE6D4A5BB4951C7B56C9D28554C3A1A24B9BDC49B58AFAB992FA66E16F23D38321468B1222FD4BC918BA9257E6632EF03C2C4E870A45C51025D64280475DF66944D01CB88476BB308EB3DAE99F809FD0216F835BE85DE0AB84AC1242B70C835B5FCA48490F99BAF5B3921C99E6F1D52AFB73537D6C819289E816E015FE3E41BEC7E93ED73C700D10E9E9C59E0DA92C49FA7C58AC39D2FB10B70462ECE387EE0D0C563E058BAFF00CDCC34D68FB18C31FE102B8EBE2ABB319A4591032DBC767082C2210C40CA39C4F7FA53AEC050FDFFE1F5B51E205225C0000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Hakkımızda] ON 

INSERT [dbo].[Hakkımızda] ([ID], [yazi]) VALUES (1, N'Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam ederler.Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam ederler.Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam edMehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devaMehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyMehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola deMehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam ederler.Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam ederler.Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam ederler.vam ederler.m ederler.m ederler.erler.ederler.wwww')
SET IDENTITY_INSERT [dbo].[Hakkımızda] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoris] ON 

INSERT [dbo].[Kategoris] ([ID], [KategoriAd], [Adet]) VALUES (1, N'Çorbalar', 1)
INSERT [dbo].[Kategoris] ([ID], [KategoriAd], [Adet]) VALUES (2, N'Pilavlar', 0)
INSERT [dbo].[Kategoris] ([ID], [KategoriAd], [Adet]) VALUES (3, N'Et Yemekleri', 0)
SET IDENTITY_INSERT [dbo].[Kategoris] OFF
GO
SET IDENTITY_INSERT [dbo].[Mesajlars] ON 

INSERT [dbo].[Mesajlars] ([ID], [AdSoyad], [Mail], [Mesaj]) VALUES (3, N'Duygu Delice', N'gdelice2244@gmail.com', N'Çok güzel tarfiler var gerçekten.')
SET IDENTITY_INSERT [dbo].[Mesajlars] OFF
GO
SET IDENTITY_INSERT [dbo].[Tariflers] ON 

INSERT [dbo].[Tariflers] ([ID], [Adı], [TarifMalzeme], [Tarifi], [TarifResim], [Tarih], [Tarifveren], [Mail], [TarifOnay]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Tariflers] ([ID], [Adı], [TarifMalzeme], [Tarifi], [TarifResim], [Tarih], [Tarifveren], [Mail], [TarifOnay]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Tariflers] OFF
GO
SET IDENTITY_INSERT [dbo].[Üyeler] ON 

INSERT [dbo].[Üyeler] ([ID], [AdSoyad], [KullanıcıAdı], [Mail], [Sifre]) VALUES (1, N'Duygu Delice', N'duygodlc', N'aaaa@gmail.com', N'12345')
INSERT [dbo].[Üyeler] ([ID], [AdSoyad], [KullanıcıAdı], [Mail], [Sifre]) VALUES (13, N'Oğuzhan sezer', N'sezerminster', N'bbbbb@gmail.com', N'1234')
SET IDENTITY_INSERT [dbo].[Üyeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Yemeklers] ON 

INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (3, N'Mercimek Çorbası', N'2 su bardağı kırmızı mercimek
1 adet soğan
2 yemek kaşığı un
1 adet havuç
Yarım yemek kaşığı biber ya da  domates salçası (rengi kırmızı olsun isterseniz artırabilir ya da hiç kullanmayabilirsiniz)
1 tatlı kaşığı tuz
Yarım çay kaşığı karabiber
1 çay kaşığı kimyon (isteğe bağlı)
2 litre sıcak su
5 yemek kaşığı sıvı yağ
Sosu için:

2 yemek kaşığı tereyağı
1 tatlı kaşığı kırmızı toz biber
', N'Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur.
Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir.
Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir.
Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir.
Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz.
Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirelerek ocaktan alınır.
Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır.
Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır.
Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir.', N'https://cdn.ye-mek.net/App_UI/Img/out/650/2020/05/kremali-mercimek-corbasi-resimli-yemek-tarifi(11).jpg', N'11.02.2021', 0, 7, 0, 1)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (4, N'Pirinç Pilavı', N'2 su bardağı pirinç
2,5 su bardağı sıcak su
3 yemek kaşığı tereyağı
1 yemek kaşığı sıvı yağ
Tuz
Pirinçleri ıslatmak için;

Pirinçlerin üzerini geçecek kadar ılık su
Tuz', N'Pirinci bol su ile yıkayın. Uygun bir kaba alarak üzerini geçecek kadar ılık su ekleyin. Birazda tuz ilave edip karıştırın ve 15-20 dakika bekletin. Daha sonra yıkayarak suyunu süzün. Nişastası gidene kadar yıkıyoruz. Çıkan suyun berrak olması gerekiyor.
Tencerede tereyağını eritip suyu süzülmüş pirinci ekleyin ve 4-5 dakika kadar kavurun. Pirinçlerin yeteri kadar kavrulduğunu pirinler tane tane dökülmeye başladığında anlayabilirsiniz.
Pirinçler kavrulduktan sonra sıcak su veya sıcak et suyunu ekleyelim. İsterseniz yarım tavuk suyu yarım sıcak su kullanabilirsiniz. Tavuk suyunuz yağlı ise bu şekilde su ile karıştırmanızı tavsiye ederim ancak yağlı değilse tamamı tavuk suyu ile çok daha lezzetli olacaktır.
Son olarak tuzu ekleyin.
Pilavımızı kapağı kapalı bir şekilde önce yüksek ateşte pişmeye bırakalım.
Üzeri göz göz olduğunda yani üzerindeki suyu çekip pilavın üzerinde nokta nokta delikler oluştuğunda kısık ateşe alalım.  Pirinçler yumuşayıp suyu tamamen çekene kadar pişirelim.
Pişen pilavımızı ocaktan aldıktan sonra üzerine havlu peçete sererek kapağını tekrar kapatalım.
Pilavı 10-15 dk. dinlendirelim. Daha sonra tahta kaşık ile karıştırarak servis yapabilirsiniz.', N'https://www.sicaktencere.com/wp-content/uploads/2018/06/pirinc-pilav%C4%B1-1200x900.jpg', N'11.02.2021', 0, 6, 0, 2)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (5, N'İskender', N'600-700 gram kıyma
1 tatlı kaşığı karbonat
1 tatlı kaşığı sirke
1/2 (yarım) çay bardağı su
3 yemek kaşığı süzme yoğurt
4 yemek kaşığı un ya da galeta unu
Tuz, kırmızı toz biber, karabiber, kimyon
3 diş rendelenmiş sarımsak
Alt için:

Pide
Üzeri için:

3-4 yemek kaşığı tereyağı
Sos için:

2 yemek kaşığı sıvı yağ̆
1 su bardağı domates püresi
1 tatlı kaşığı domates salçası
1 su bardağı su', N'Öncelikle et 1 gün öncesinde hazırlanır.
Tüm malzeme karıştırılır, iyice yoğrulur; fotoğrafta olduğu gibi streç filmin üzerinde rulo yapılır.
2 saat buzdolabında, sonra da 24 saat kadar dondurucuda tutulur.
Yapılacağı zaman dondurucudan çıkarılır, hafif katıyken kesilir. ( yumuşayınca dağılmaması için)
Kesilen etler azıcık sıvı yağ̆da arkalı önlü pişirilir.
Servis tabağına doğranan pideler alınır, üzerine hazırlanan sos gezdirilir. ( sosun tüm malzemeleri suyunu hafif çekene kadar pişecek. )
Sosun üzerine etler, sıcak sıcak dizilir.
Yanına süzme yoğurt, kızartılmış biberler konur, üzerine eritilmiş tereyağı gezdirilir ve servis edilir.', N'https://emelysworld.com/wp-content/uploads/2018/07/IMG_2537.jpeg', N'11.02.2021', 0, 1, 0, 3)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (11, N'Yayla Çorbası', N'1 fincan pirinç (Türk kahvesi fincanı)
7 su bardağı su
1 su bardağı yoğurt
1 yumurta
Yarım fincandan biraz fazla un (Türk kahvesi fincanı)
3 yemek kaşığı sıvı yağ
2 yemek kaşığı tereyağı
Tuz
Nane', N'Su, sıvı yağ, tuz ve pirinçler tencereye alınır. Pirinçler yumuşayıncaya kadar kaynatılır.
Ayrı bir kasede yoğurt, yumurta ve un, 1 su bardağına yakın su ile birlikte iyice çırpılır.
Pirinçler yumuşayınca hızlıca karıştırarak yoğurtlu karışım çorbaya eklenir. Kaynayana kadar karıştırılır. Kaynayınca kısık ateşte 10-15 dk kaynatılır. Ara sıra karıştırmayı ihmal etmeyin.
Çorbamız piştikten sonra altı kapatılır.
Şık bir sunum olması açısından;
Çorba kaselere alınır. Ayrı bir yerde tereyağı kızdırılarak nane ile karıştırılır. Ve kaselerdeki çorbaların üzerinde gezdirilir. Kalan naneli tereyağını tenceredeki çorbaya koyup karıştırın.
Mis kokulu yayla çorbamız servise hazır.', N'https://assets.tmecosys.cn/image/upload/t_web767x639/img/recipe/ras/Assets/9efaa59f-3aa6-4fc8-ba55-46dee46d6ee0/Derivates/d78291c7-ea10-44e0-b69d-fd72425bbd0a.jpg', N'11.02.2021', 0, 9, 0, 1)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (14, N'Bulgur Pilavı', N'2 su bardağı pilavlık bulgur
2 adet domates
1 adet soğan
2 adet sivri biber
1 su bardağı tavuk suyu
2,5 su bardağı sıcak su (tavuk suyu da kullanabilirsiniz)
4 yemek kaşığı sıvı yağ
Tuz', N'Bulgur pilavı için öncelikle soğanları ince kıyın, sıvı yağ ile hafif kavurun.
Üzerine doğranmış sivri biberi ekleyin, biraz daha kavurduktan sonra rende domatesi ekleyin, iyice kavurun.
Bulguru ekleyerek 1-2 dakika kavurun ve sıcak tavuk suyunu ve sıcak suyu ekleyin.
Tuzunu da ilave ederek bir kez karıştırın kapağını kapatın.
Kısık ateşte suyu çekene kadar karıştırmadan pişirin.
Ocağı kapattıktan sonra kapağın altına havlu kağıt koyarak 10 dakika kadar dinlendirin.
Bulgur Pilavımız servise hazır, deneyeceklere şimdiden afiyet olsun.', N'https://cdn.yemek.com/mnresize/1250/833/uploads/2014/12/sebzeli-bulgur-pilavi-one-cikan.jpg', N'11.02.2022', 0, 0, 0, 2)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (16, N'Etli Bezelye', N'Yarım kilogram bezelye
2-3 tane patates
1 adet havuç
250 gr kuşbaşı dana eti
1 adet kuru soğan
5 çorba kaşığı sıvı yağ
2 çorba kaşığı domates salçası
Tuz
1 tatlı kaşığı kırmızı toz biber
1 çay kaşığı karabiber
4 su bardağı sıcak su', N'Soğan soyulup, yemeklik doğranır.
Sıvı yağ tencereye alınıp soğanlar kavrulur.
Soğanlar pembeleşince kuşbaşı doğranmış dana eti eklenerek kavrulmaya devam edilir.
Ardından soyulup küp küp doğranmış patatesleri ve havucu tencere ekleyin.
Salçasını, tuzunu ve baharatlarını ilave edip karıştırın.
Bezelyeleri ilave edin.
Son olarak 4 su bardağı kadar sıcak suyu da ekleyerek kaynamaya bırakın.
Kaynamaya başladıktan 5 dk sonra kısık ateşte 20-25 dk pişirin.
Patateslerin piştiğini çatalla kontrol edip altını kapatabilirsiniz. Afiyet olsun…', N'https://i.lezzet.com.tr/images-xxlarge-recipe/etli_bezelye_yemegi-dc720c3e-e5a2-4cae-99a7-93d8e9cf318a.jpg', N'11.02.2022', 0, 2, 0, 3)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (18, N'İç Pilavı', N'250 gr kuzu ciğeri (veya tavuk ciğeri)
1,5 su bardağı pirinç
1 adet orta boy soğan
1 çorba kaşığı dolma fıstığı
2,5 çorba kaşığı kuş üzümü
1 çay kaşığı dolma baharı (tepeleme)
1 çay kaşığı tarçın (tepeleme)
yarım çay kaşığı karabiber
1 çay bardağı zeytinyağı + 2 kaşık zeytinyağı
2,5 su bardağı sıcak su
Tuz', N'Ciğerimizi tavla zarının 2 katı büyüklüğünde doğrayalım. (Pilavımız da dişe dokunur büyüklükte seviyoruz ciğeri, arzuya göre daha küçük küp hale getirebilirsiniz)
Pirinci sıcak suda ıslatalım.
Soğanı yemeklik küp doğrayalım.
Zeytinyağının yarısını pilav tencerenize alın.
Soğanları ekleyerek yağınızı yakmadan pembeleşinceye kadar kavurun.
Dolma fıstığını da ekleyerek kavurmaya devam edin.
Rengi dönmeye yakın ciğerlerinizi ekleyin.
Tüm malzememizi, 3-4 dk. orta hararetteki ateşte kavuralım.
Yıkayıp süzdüğümüz pirinci ekleyelim.
Kavurmaya devam ettiğimiz pirince dolma baharı, karabiber ve tarçını ekleyelim.
Kavurma işlemimiz bitince kuş üzümünü ekleyin.
Sıcak suyumuzu eklediğimizde, kalan zeytinyağı ve tuzu da en son ekleyip, İç pilavımızı önce harlı ardından kısık ateşte alalım.
Suyunu çektirdiğiniz pilavı, 20-30 dk. sofra bezine bohçalayarak, demlendirin.', N'https://www.yemektarifiperisi.com/wp-content/uploads/2020/02/ic-pilav-2-scaled.jpg', N'11.03.2022', 1, 5, 0, 2)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (19, N'Tarhana Çorbası', N'3 yemek kaşığı ev tarhanası
1 yemek kaşığı nane
2 yemek kaşığı sıvı yağ
1 yemek kaşığı salça
6 su bardağı su
Kırmızı pul biber
Karabiber
Tuz', N'Tenceremizin içerisine sıvı yağ, nane, salça, baharatlar ve tarhanayı ekleyip biraz karıştırarak kavuruyoruz. Dilerseniz tereyağı da kullanabilirsiniz.( Veya tarhanayı suyu ekledikten sonra ekleyip çırpıcı ile karıştırabilirsiniz. böylelikle topaklanma ihtimali azalır.)
Suyu yavaş yavaş ilave ediyoruz ve devamlı karıştırarak pişiriyoruz. Topaklanmaması için tel çırpıcı ile karıştırabilirsiniz. (kaynayana kadar karıştırarak pişirelim.)
Kaynadıktan sonra 5 dk daha bekleyip ocaktan alıyoruz, çorbamızı…', N'https://cdn.ye-mek.net/App_UI/Img/out/650/2021/05/tarhana-corbasi-resimli-yemek-tarifi(11).jpg', N'11.04.2021', 1, 10, 0, 1)
INSERT [dbo].[Yemeklers] ([ID], [Ad], [YemekMalzeme], [Tarif], [YemekResim], [Tarih], [Puan], [Tıklanma], [YemekOnay], [Kategoriid]) VALUES (20, N'Mantar Çorbası', N'2 adet kuru soğan
10 adet mantar
4 yemek kaşığı sıvı yağ
1 yemek kaşığı tereyağı
2 yemek kaşığı un
1 litre sıcak su
1 su bardağı süt
Yarım çay kaşığı karabiber
1 tatlı kaşığı tuz
Sosu için;

1 yemek kaşığı tereyağı
1 tatlı kaşığı kırmızı toz biber', N'Öncelikle soğanları ince ince doğrayalım.
Ardından mantarları minik minik doğrayalım. Bu aşamada dilerseniz mantarlarınızı yıkayabilir, dilerseniz de silebilirsiniz.
Tencereye sıvı yağ ve tereyağını alarak erimesi için bekleyelim.
Eridikten sonra soğanları ekleyelim ve hafif pembeleşene kadar kavuralım.
Mantarları da ekleyelim ve orta ateşte mantarlar suyunu salıp çekinceye kadar kavuralım.
Daha sonra unu ilave edelim ve unun kokusu çıkana kadar kavuralım.
Bir taraftan karıştırırken bir taraftan da suyumuzu ekleyelim ve orta ateşte çorbamızı kaynamaya bırakalım.
Çorbamız kaynadıktan sonra altını kısalım ve oda ısısındaki sütü ve karabiberi ilave ederek karıştıralım ve kaynamaya bırakalım.
Son kez tuzumuzu da ekleyelim ve karıştırarak çorbamızı ocaktan alalım.
Çorbamızın sosu için tavaya tereyağını alalım ve eritelim.
Eriyen tereyağına kırmızı toz biberi ekleyerek kızdıralım ve ocaktan alalım.
Çorbamızı kaselere koyduktan sonra üzerine sosumuzdan gezdirelim. Dilerseniz sosu tencereye aktarabilir ve karıştırarak servis edebilirsiniz. Afiyet olsun!', N'https://www.ardaninmutfagi.com/wp-content/uploads/2019/02/kremali-mantar-corbasi.jpg', N'11.02.2022', 22, 108, 0, 1)
SET IDENTITY_INSERT [dbo].[Yemeklers] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorumlars] ON 

INSERT [dbo].[Yorumlars] ([ID], [AdSoyad], [Mail], [Yorum], [Tarih], [YorumOnay], [Yemekid]) VALUES (18, N'Oğuzhan Sezer', N'oguz14@gmail.com', N'ben pek beğenmedim tercih etmem', N'24.07.2019', 1, 4)
INSERT [dbo].[Yorumlars] ([ID], [AdSoyad], [Mail], [Yorum], [Tarih], [YorumOnay], [Yemekid]) VALUES (39, N'Hülya Saydam', N'hulya@gmail.com', N'baya güzeldi', N'31.03.2022', 1, 5)
INSERT [dbo].[Yorumlars] ([ID], [AdSoyad], [Mail], [Yorum], [Tarih], [YorumOnay], [Yemekid]) VALUES (43, N'Duygu Delice', N'gdelice2244@gmail.com', N'Tadında bir eksik var ama çözemedim.', NULL, 0, 11)
SET IDENTITY_INSERT [dbo].[Yorumlars] OFF
GO
SET IDENTITY_INSERT [dbo].[Yönetici] ON 

INSERT [dbo].[Yönetici] ([ID], [KullanıcıAd], [Sifre]) VALUES (1, N'duygodlc', N'12345')
SET IDENTITY_INSERT [dbo].[Yönetici] OFF
GO
/****** Object:  Index [IX_Kategoriid]    Script Date: 1.04.2022 16:25:33 ******/
CREATE NONCLUSTERED INDEX [IX_Kategoriid] ON [dbo].[Yemeklers]
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yemekid]    Script Date: 1.04.2022 16:25:33 ******/
CREATE NONCLUSTERED INDEX [IX_Yemekid] ON [dbo].[Yorumlars]
(
	[Yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tariflers] ADD  CONSTRAINT [DF_Tariflers_TarifOnay]  DEFAULT ((0)) FOR [TarifOnay]
GO
ALTER TABLE [dbo].[Yemeklers] ADD  CONSTRAINT [DF_Yemeklers_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[Yemeklers] ADD  CONSTRAINT [DF_Yemeklers_Puan]  DEFAULT ((0)) FOR [Puan]
GO
ALTER TABLE [dbo].[Yemeklers] ADD  CONSTRAINT [DF_Yemeklers_Tıklanma]  DEFAULT ((0)) FOR [Tıklanma]
GO
ALTER TABLE [dbo].[Yemeklers] ADD  CONSTRAINT [DF_Yemeklers_YemekOnay]  DEFAULT ((0)) FOR [YemekOnay]
GO
ALTER TABLE [dbo].[Yorumlars] ADD  CONSTRAINT [DF_Yorumlars_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Yemeklers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yemeklers_dbo.Kategoris_Kategoriid] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Kategoris] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yemeklers] CHECK CONSTRAINT [FK_dbo.Yemeklers_dbo.Kategoris_Kategoriid]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Yemeklers_Yemekid] FOREIGN KEY([Yemekid])
REFERENCES [dbo].[Yemeklers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Yemeklers_Yemekid]
GO
USE [master]
GO
ALTER DATABASE [yemeksite] SET  READ_WRITE 
GO
