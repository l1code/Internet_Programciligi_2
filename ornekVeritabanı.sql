USE [master]
GO
/****** Object:  Database [2020TatilSitesi]    Script Date: 16.11.2020 08:57:45 ******/
CREATE DATABASE [2020TatilSitesi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'2020TatilSitesi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\2020TatilSitesi.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'2020TatilSitesi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\2020TatilSitesi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [2020TatilSitesi] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [2020TatilSitesi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [2020TatilSitesi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET ARITHABORT OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [2020TatilSitesi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [2020TatilSitesi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [2020TatilSitesi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [2020TatilSitesi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET RECOVERY FULL 
GO
ALTER DATABASE [2020TatilSitesi] SET  MULTI_USER 
GO
ALTER DATABASE [2020TatilSitesi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [2020TatilSitesi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [2020TatilSitesi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [2020TatilSitesi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'2020TatilSitesi', N'ON'
GO
USE [2020TatilSitesi]
GO
/****** Object:  Table [dbo].[AltAlan]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltAlan](
	[AltAlanID] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [varchar](50) NULL,
	[Baslik] [varchar](50) NULL,
	[KisaIcerik] [varchar](max) NULL,
	[Icerik] [varchar](max) NULL,
	[AktiflikDurumu] [bit] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_AltAlan] PRIMARY KEY CLUSTERED 
(
	[AltAlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaMenu]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaMenu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MEnuAdi] [varchar](max) NULL,
	[MenuBaslik] [varchar](max) NULL,
	[MenuIcerik] [varchar](max) NULL,
	[SiraID] [int] NULL,
	[MenuTemplateID] [int] NULL,
	[AktiflikDurumu] [bit] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_AnaMenu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galeri]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeri](
	[GaleriID] [int] IDENTITY(1,1) NOT NULL,
	[GaleriResim] [varchar](max) NULL,
	[ResimAciklama] [varchar](max) NULL,
	[AktiflikDurumu] [bit] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_Galeri] PRIMARY KEY CLUSTERED 
(
	[GaleriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[IletisimID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](max) NULL,
	[Soyadi] [varchar](max) NULL,
	[Eposta] [varchar](max) NULL,
	[Mesaj] [varchar](max) NULL,
	[İpAdresi] [varchar](max) NULL,
 CONSTRAINT [PK_Iletisim] PRIMARY KEY CLUSTERED 
(
	[IletisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[Eposta] [varchar](max) NULL,
	[Sifre] [varchar](max) NULL,
	[KullaniciYetkiTurID] [int] NULL,
	[Adi] [varchar](max) NULL,
	[Soyadi] [varchar](max) NULL,
	[CepTel] [varchar](max) NULL,
	[DogumTarihi] [datetime] NULL,
	[KullaniciEklemeTarihi] [datetime] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[KullaniciDurumu] [bit] NULL,
	[BildirimDurumu] [bit] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciTuru]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciTuru](
	[KullaniciTurID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciTuru] [varchar](50) NULL,
 CONSTRAINT [PK_KullaniciTuru] PRIMARY KEY CLUSTERED 
(
	[KullaniciTurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recent]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recent](
	[RecentID] [int] IDENTITY(1,1) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Baslik] [varchar](50) NULL,
	[KisaIcerik] [varchar](max) NULL,
	[Icerik] [varchar](max) NULL,
	[AktiflikDurumu] [bit] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_Recent] PRIMARY KEY CLUSTERED 
(
	[RecentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sabit]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sabit](
	[SabitID] [int] IDENTITY(1,1) NOT NULL,
	[LogoAdi] [varchar](max) NULL,
	[KisaHakkimizda] [varchar](max) NULL,
	[Aciklama] [varchar](max) NULL,
	[KordinatX] [varchar](max) NULL,
	[KordinatY] [varchar](max) NULL,
	[Adres] [varchar](max) NULL,
 CONSTRAINT [PK_Sabit] PRIMARY KEY CLUSTERED 
(
	[SabitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Resim] [varchar](max) NULL,
	[ResimAdi] [varchar](max) NULL,
	[AktiflikDurumu] [bit] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SosyalMedya]    Script Date: 16.11.2020 08:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SosyalMedya](
	[SosyalMedyaID] [int] IDENTITY(1,1) NOT NULL,
	[SosyalMedyaAdi] [varchar](50) NULL,
	[SosyalMedyaicon] [varchar](max) NULL,
	[SosyalMEdyaUrl] [varchar](max) NULL,
	[AktiflikDurumu] [bit] NULL,
	[EkleyenKullaniciID] [int] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_SosyalMedya] PRIMARY KEY CLUSTERED 
(
	[SosyalMedyaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AltAlan] ON 

INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (5, N'25060361df674903a67ad70d850ed8e5testicon.png', N'Sayfa Başlıı', N'Kısa Açıklama', N'Metin', 1, NULL, CAST(N'2020-04-27T21:46:27.153' AS DateTime))
INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (6, N'067977ecd9964bb493e0c22cfbef453etesticon2.png', N'test başlık', N'test Açıklama', N'içerik', 1, NULL, CAST(N'2020-04-27T21:49:58.047' AS DateTime))
INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (7, N'61459ea864e14d7da6dc0ea4563d2d1eg1.png', N'sss', N'sdd', N'fff', 0, NULL, CAST(N'2020-04-27T21:52:02.677' AS DateTime))
INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (8, N'd718e48829db404983c30309392b2622isubu.jpg', N'mmm', N'möö', N'ççç', 0, NULL, CAST(N'2020-04-27T21:54:42.170' AS DateTime))
INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (9, N'b7e7afa42dc94289b2a1144ece38f2c1isubu.jpg', N'sss', N'ddd', N'fff', 1, NULL, CAST(N'2020-04-27T22:01:48.927' AS DateTime))
INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (10, N'25060361df674903a67ad70d850ed8e5testicon.png', N'Sayfa Başlıı', N'Kısa Açıklama', N'Metin', 1, NULL, CAST(N'2020-04-27T21:46:27.153' AS DateTime))
INSERT [dbo].[AltAlan] ([AltAlanID], [Icon], [Baslik], [KisaIcerik], [Icerik], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (11, N'067977ecd9964bb493e0c22cfbef453etesticon2.png', N'test başlık', N'test Açıklama', N'içerik', 1, NULL, CAST(N'2020-04-27T21:49:58.047' AS DateTime))
SET IDENTITY_INSERT [dbo].[AltAlan] OFF
SET IDENTITY_INSERT [dbo].[Galeri] ON 

INSERT [dbo].[Galeri] ([GaleriID], [GaleriResim], [ResimAciklama], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (3, N'3b450f247b3c44568f0cdefdfb054ca9maxresdefault.jpg', N'test', 1, NULL, CAST(N'2020-05-11T21:40:23.807' AS DateTime))
INSERT [dbo].[Galeri] ([GaleriID], [GaleriResim], [ResimAciklama], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (4, N'f880223f4c084aa1b223badbe2d023cdeb1f0c6159c40fe38048c3e0b776f205.jpg', N'test resim 2', 1, NULL, CAST(N'2020-05-11T21:40:36.843' AS DateTime))
INSERT [dbo].[Galeri] ([GaleriID], [GaleriResim], [ResimAciklama], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (5, N'b7395b8402414ee1a14e09ccf9024b64eb1f0c6159c40fe38048c3e0b776f205.jpg', N'son deneme', 0, NULL, CAST(N'2020-05-11T21:40:46.253' AS DateTime))
SET IDENTITY_INSERT [dbo].[Galeri] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (1, N'muzaffertatli@isparta.edu.tr', N'123456', 1, N'Muzaffer', NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (2, N'ahmet@ahhmet.com', N'1111', 1, N'123123', NULL, N'1123564', CAST(N'2000-06-15T00:00:00.000' AS DateTime), CAST(N'2020-03-02T20:00:21.023' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (3, N'muzaffer@isparta.edu.tr', N'1453', 1, N'Muzaffer', N'Tatlı', N'55555555555', NULL, CAST(N'2020-03-09T14:42:53.660' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (8, N'muzaffertatli@gmail.com', N'1453', 2, N'Muzaffer', NULL, N'55551111', CAST(N'2010-01-01T00:00:00.000' AS DateTime), CAST(N'2020-03-09T17:02:17.893' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (1002, N'muzaffer1@isparta.edu.tr', N'123456', 1, N'Muzaffer', N'Tatlı', NULL, NULL, CAST(N'2020-04-13T14:18:19.473' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (1003, N'Ahmet@aaa.com', N'1234', 1, N'Ahmet', N'Deneme', NULL, NULL, CAST(N'2020-04-13T21:02:32.563' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Kullanici] ([KullaniciID], [Eposta], [Sifre], [KullaniciYetkiTurID], [Adi], [Soyadi], [CepTel], [DogumTarihi], [KullaniciEklemeTarihi], [EkleyenKullaniciID], [KullaniciDurumu], [BildirimDurumu]) VALUES (1004, N'muzaffer', N'1453', 1, N'Muzaffer', N'1453', NULL, NULL, CAST(N'2020-05-04T14:34:38.550' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[KullaniciTuru] ON 

INSERT [dbo].[KullaniciTuru] ([KullaniciTurID], [KullaniciTuru]) VALUES (1, N'Admin')
INSERT [dbo].[KullaniciTuru] ([KullaniciTurID], [KullaniciTuru]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[KullaniciTuru] OFF
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (6, N'testresmi.jpg', N'tes', 0, NULL, CAST(N'2020-04-13T21:18:06.933' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (7, N'testresmi.jpg', N'aaaa', 0, NULL, CAST(N'2020-04-13T21:25:32.967' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (8, N'unnamed.jpg', N'tttt', 0, NULL, CAST(N'2020-04-13T21:42:52.357' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (9, N'unnamed.jpg', N'tttt', 0, NULL, CAST(N'2020-04-13T21:43:05.197' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (10, N'testresmi.jpg', N'aaaa', 0, NULL, CAST(N'2020-04-20T14:07:45.810' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (11, N'f0fe758a-1985-4897-944e-cdbcb16e061etestresmi.jpg', N'wwww', 0, NULL, CAST(N'2020-04-20T14:07:53.507' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (12, N'35a63779dc3544a1a11e6a342cae39d2testresmi.jpg', N'bbbbwwww', 0, NULL, CAST(N'2020-04-20T14:11:56.207' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (13, N'b35a84142451421fb3ef2eac8963ff97testresmi.jpg', N'yeni resim', 0, NULL, CAST(N'2020-04-20T14:25:28.143' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (14, N'unnamed.jpg', N'tttt', 0, NULL, CAST(N'2020-04-20T15:08:20.850' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (15, N'af9808ec385644a6a9c9e9e75945011cproblem1.png', N'hhh', 0, NULL, CAST(N'2020-04-20T15:08:29.740' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (16, N'539bcb72ef6f4181a058a9e9ec5b6a71unnamed.jpg', N'ggg', 0, NULL, CAST(N'2020-04-20T15:08:38.153' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (17, N'testresmi.jpg', N'Resim', 0, NULL, CAST(N'2020-04-20T20:36:59.353' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (18, N'unnamed.jpg', N'wwww', 0, NULL, CAST(N'2020-04-20T20:37:10.193' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (19, N'problem1.png', N'eeee', 0, NULL, CAST(N'2020-04-20T20:37:16.573' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (20, N'problem1.png', N'ffff', 0, NULL, CAST(N'2020-04-20T20:37:31.320' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (21, N'unnamed.jpg', N'eeee', 0, NULL, CAST(N'2020-04-20T20:41:23.097' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (22, N'3d32406c-fc4d-4c21-9506-17c98ae1f645testresmi.jpg', N'eee', 0, NULL, CAST(N'2020-04-20T20:41:31.183' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (23, N'98bef8c568bf40d1a2fca1cc11dc10a2unnamed.jpg', N'Deneme2222', 1, NULL, CAST(N'2020-04-20T20:43:55.043' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (24, N'91939e49fbe74917bb3d7d4a5ce7db05testresmi.jpg', N'kkk', 1, NULL, CAST(N'2020-04-20T20:44:29.587' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (25, N'd6aa4068d44c43ea9ae7d4a1dfa94763problem1.png', N'gggg', 0, NULL, CAST(N'2020-04-20T20:55:39.580' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (26, N'c899a91e008441aeb782b1595267c83aproblem1.png', N'dddd', 0, NULL, CAST(N'2020-04-20T20:55:48.513' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (27, N'66c356d90e1c47a9a3b84c8fe7f186b3problem3.JPG', N'aaaa', 1, NULL, CAST(N'2020-04-20T21:31:48.843' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (28, N'86be2c6ab9f445788095ed4da2700a47isubu.jpg', N'isubu', 1, NULL, CAST(N'2020-05-04T14:36:02.830' AS DateTime))
INSERT [dbo].[Slider] ([SliderID], [Resim], [ResimAdi], [AktiflikDurumu], [EkleyenKullaniciID], [EklenmeTarihi]) VALUES (29, N'8d2c4fc0845d4ccf8edb99fc2d1bc5a5maxresdefault.jpg', N'aaaa test', 1, NULL, CAST(N'2020-05-11T21:38:27.883' AS DateTime))
SET IDENTITY_INSERT [dbo].[Slider] OFF
ALTER TABLE [dbo].[AltAlan]  WITH CHECK ADD  CONSTRAINT [FK_AltAlan_Kullanici] FOREIGN KEY([EkleyenKullaniciID])
REFERENCES [dbo].[Kullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[AltAlan] CHECK CONSTRAINT [FK_AltAlan_Kullanici]
GO
ALTER TABLE [dbo].[AnaMenu]  WITH CHECK ADD  CONSTRAINT [FK_AnaMenu_Kullanici] FOREIGN KEY([EkleyenKullaniciID])
REFERENCES [dbo].[Kullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[AnaMenu] CHECK CONSTRAINT [FK_AnaMenu_Kullanici]
GO
ALTER TABLE [dbo].[Galeri]  WITH CHECK ADD  CONSTRAINT [FK_Galeri_Kullanici] FOREIGN KEY([EkleyenKullaniciID])
REFERENCES [dbo].[Kullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[Galeri] CHECK CONSTRAINT [FK_Galeri_Kullanici]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_KullaniciTuru] FOREIGN KEY([KullaniciYetkiTurID])
REFERENCES [dbo].[KullaniciTuru] ([KullaniciTurID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_KullaniciTuru]
GO
ALTER TABLE [dbo].[Recent]  WITH CHECK ADD  CONSTRAINT [FK_Recent_Kullanici] FOREIGN KEY([EkleyenKullaniciID])
REFERENCES [dbo].[Kullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[Recent] CHECK CONSTRAINT [FK_Recent_Kullanici]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD  CONSTRAINT [FK_Slider_Kullanici] FOREIGN KEY([EkleyenKullaniciID])
REFERENCES [dbo].[Kullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[Slider] CHECK CONSTRAINT [FK_Slider_Kullanici]
GO
ALTER TABLE [dbo].[SosyalMedya]  WITH CHECK ADD  CONSTRAINT [FK_SosyalMedya_Kullanici] FOREIGN KEY([EkleyenKullaniciID])
REFERENCES [dbo].[Kullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[SosyalMedya] CHECK CONSTRAINT [FK_SosyalMedya_Kullanici]
GO
USE [master]
GO
ALTER DATABASE [2020TatilSitesi] SET  READ_WRITE 
GO
