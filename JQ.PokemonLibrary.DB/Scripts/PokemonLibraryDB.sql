USE [master]
GO
/****** Object:  Database [PokemonLibrary]    Script Date: 10/12/2021 11:36:16 AM ******/
CREATE DATABASE [PokemonLibrary]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PokemonLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PokemonLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PokemonLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PokemonLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PokemonLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PokemonLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [PokemonLibrary] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PokemonLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PokemonLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PokemonLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PokemonLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PokemonLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PokemonLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PokemonLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PokemonLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PokemonLibrary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PokemonLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PokemonLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PokemonLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PokemonLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PokemonLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PokemonLibrary] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PokemonLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PokemonLibrary] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PokemonLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [PokemonLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PokemonLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PokemonLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PokemonLibrary] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PokemonLibrary] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PokemonLibrary]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/12/2021 11:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pokemon]    Script Date: 10/12/2021 11:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pokemon](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type1] [int] NOT NULL,
	[Type2] [int] NULL,
	[Total] [int] NOT NULL,
	[HP] [int] NOT NULL,
	[Attack] [int] NOT NULL,
	[Defense] [int] NOT NULL,
	[SpecialMoveAttack] [int] NOT NULL,
	[SpecialMoveDefense] [int] NOT NULL,
	[Speed] [int] NOT NULL,
	[Generation] [int] NOT NULL,
	[Legendary] [bit] NOT NULL,
 CONSTRAINT [PK_Pokemon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokemonType]    Script Date: 10/12/2021 11:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonType](
	[IdPokemonType] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_PokemonType] PRIMARY KEY CLUSTERED 
(
	[IdPokemonType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211011003112_Init', N'5.0.10')
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'562e85e2-9526-410b-8410-002ac70432e2', 534, N'Conkeldurr', 1, NULL, 505, 105, 140, 95, 55, 65, 45, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b51ff7f1-aae7-4ab2-a505-01294315fd99', 516, N'Simipour', 2, NULL, 498, 75, 98, 63, 98, 63, 101, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'eb8e4326-767b-4b0c-8749-017a46589193', 120, N'Staryu', 2, NULL, 340, 30, 45, 55, 70, 55, 85, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3661dd9b-b357-4c7a-89c0-01c9d85bdb3e', 571, N'Zoroark', 3, NULL, 510, 60, 105, 60, 120, 60, 105, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fd806a63-6e2a-4c41-a48a-029cab6544f5', 334, N'Altaria', 4, 18, 490, 75, 70, 90, 70, 105, 80, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8a1a550d-ccbb-4ee0-8a43-02c9fa875f30', 331, N'Cacnea', 5, NULL, 335, 50, 85, 40, 85, 40, 35, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b012bf9-5d74-4b6d-86c4-02d324edf511', 383, N'GroudonPrimal Groudon', 6, 16, 770, 100, 180, 160, 150, 90, 90, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8af5ff77-077a-426a-afc1-0323b136fe79', 198, N'Murkrow', 3, 18, 405, 60, 85, 42, 85, 42, 91, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c187fdf7-f2a8-4c25-bc4b-036bbf505099', 433, N'Chingling', 7, NULL, 285, 45, 30, 50, 65, 50, 45, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ef7ff16e-ea66-4293-864f-04b89f3f62e2', 419, N'Floatzel', 2, NULL, 495, 85, 105, 55, 85, 50, 115, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0ba01622-51cd-453c-94a0-04f0877af738', 478, N'Froslass', 8, 16, 480, 70, 80, 70, 80, 70, 110, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8c491ae2-d84c-4dec-a903-04f4baa95f9e', 512, N'Simisage', 5, NULL, 498, 75, 98, 63, 98, 63, 101, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5b06049d-bcae-44ac-90c9-05ce7b20d53f', 479, N'RotomWash Rotom', 9, 2, 520, 50, 65, 107, 105, 107, 86, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'239e731a-0486-4347-be3f-05e34ca87740', 247, N'Pupitar', 10, 6, 410, 70, 84, 70, 65, 70, 51, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1328ac65-1d1b-444b-bc0b-0604cbceb9d5', 205, N'Forretress', 11, 17, 465, 75, 90, 140, 60, 60, 40, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c7a678f3-6fc7-4d29-87b7-067e6c3d4cc9', 260, N'SwampertMega Swampert', 2, 6, 635, 100, 150, 110, 95, 110, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'31e0c87a-234a-48e5-bf2e-06e9f3833972', 28, N'Sandslash', 6, NULL, 450, 75, 100, 110, 45, 55, 65, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'62a472c5-84b4-4c57-8873-0748d58b41ce', 145, N'Zapdos', 9, 18, 580, 90, 90, 85, 125, 90, 100, 1, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'32bddad0-518d-4394-ad26-076b8a134b90', 432, N'Purugly', 12, NULL, 452, 71, 82, 64, 64, 59, 112, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'52c41cfe-582e-4192-8c8b-078e3d4ca036', 109, N'Koffing', 13, NULL, 340, 40, 65, 95, 60, 45, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3d5b4337-097c-43a6-a37c-0798b5490691', 670, N'Floette', 15, NULL, 371, 54, 45, 47, 75, 98, 52, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6ede91c3-6fad-4cae-92cf-083b023ab348', 123, N'Scyther', 11, 18, 500, 70, 110, 80, 55, 80, 105, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dbc4a937-bf41-46a2-b87c-083e517ba128', 660, N'Diggersby', 12, 6, 423, 85, 56, 77, 50, 77, 78, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'739aa408-4888-4cb2-a3b1-08776db674c6', 176, N'Togetic', 15, 18, 405, 55, 40, 85, 80, 105, 40, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'376b2274-9c36-43bb-8cc6-08d98c1b4d66', 722, N'NuLuc', 2, 8, 702, 120, 100, 80, 345, 34, 23, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'955879d2-9dda-44fc-ed10-08d98c1e3e7e', 723, N'lonrt', 2, NULL, 627, 200, 124, 23, 234, 23, 23, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ce545cbc-6dec-42b4-ed11-08d98c1e3e7e', 724, N'lonrt', 2, NULL, 627, 200, 124, 23, 234, 23, 23, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ab1e19c6-a6e7-4e1b-5629-08d98c1eaee4', 725, N'adft', 2, NULL, 713, 435, 243, 23, 3, 4, 5, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c4a79349-d58a-40f5-b3c7-08d98c5c385f', 726, N'Asew', 2, 3, 126, 100, 5, 5, 5, 5, 6, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c13efdf1-149f-4cf4-e48f-08d98c687fec', 727, N'tarrs', 10, 10, 60, 10, 10, 10, 10, 10, 10, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'04d8a274-3466-4795-82e1-092871d8713e', 308, N'MedichamMega Medicham', 1, 7, 510, 60, 100, 85, 80, 85, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0f561c87-f059-4f8e-91ec-0935d9d84f29', 428, N'Lopunny', 12, NULL, 480, 65, 76, 84, 54, 96, 105, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6255b407-f506-4fee-865d-0935dec1aa93', 608, N'Lampent', 15, 16, 370, 60, 40, 60, 95, 60, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2e2c9c66-9d59-4544-b2bd-09788580058e', 264, N'Linoone', 12, NULL, 420, 78, 70, 61, 50, 61, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd8d90376-1b86-4b61-9fe5-0a8b35c55edc', 607, N'Litwick', 15, 16, 275, 50, 30, 55, 65, 55, 20, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2a783201-cc6e-465d-957d-0a9e12ce928d', 361, N'Snorunt', 8, NULL, 300, 50, 50, 50, 50, 50, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7b735eff-5eeb-45fd-8532-0ad90b73de62', 629, N'Vullaby', 3, 18, 370, 70, 55, 75, 45, 65, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ca089885-ac03-4cc1-9d97-0b5639e4d2d7', 646, N'KyuremWhite Kyurem', 4, 8, 700, 125, 120, 90, 170, 100, 95, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dc0ff5c2-1636-483f-b064-0b6d8cbf221b', 656, N'Froakie', 2, NULL, 314, 41, 56, 40, 62, 44, 71, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1ff6c9bb-af93-4e14-8086-0b7081845ab5', 486, N'Regigigas', 12, NULL, 670, 110, 160, 110, 80, 110, 100, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b135d1fc-6df6-4bb6-9feb-0be19c433086', 325, N'Spoink', 7, NULL, 330, 60, 25, 35, 70, 80, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'30da8a1b-7bee-44f2-bf0c-0be7e5e4f0d7', 237, N'Hitmontop', 1, NULL, 455, 50, 95, 95, 35, 110, 70, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'70aeb494-394e-4685-9a02-0bf08f9f2ede', 547, N'Whimsicott', 5, 14, 480, 60, 67, 85, 77, 75, 116, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'eb166c93-2a78-4fe3-bee3-0c53f7b1d299', 462, N'Magnezone', 9, 17, 535, 70, 70, 115, 130, 90, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'abe8c990-9673-4df9-9cb4-0c5a3b5ec453', 632, N'Durant', 11, 17, 484, 58, 109, 112, 48, 48, 109, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f814c23d-b182-41fd-bf12-0c92d439250f', 70, N'Weepinbell', 5, 13, 390, 65, 90, 50, 85, 45, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ebf6c043-0d41-4132-8a6f-0caf9e3a17ff', 115, N'Kangaskhan', 12, NULL, 490, 105, 95, 80, 40, 80, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'84169cd6-302a-4acb-9dd7-0d3bcea73048', 122, N'Mr. Mime', 7, 14, 460, 40, 45, 65, 100, 120, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e9f6f42a-472f-44b9-94b3-0de225b76225', 110, N'Weezing', 13, NULL, 490, 65, 90, 120, 85, 70, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bc4c1029-7b0b-48f1-9ed2-0de71e7299c8', 645, N'LandorusTherian Forme', 6, 18, 600, 89, 145, 90, 105, 80, 91, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd8f608a1-ec7e-41f2-a7bb-0e04d68106c0', 450, N'Hippowdon', 6, NULL, 525, 108, 112, 118, 68, 72, 47, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1fd38b91-4422-41a5-acb4-0e082cffaba4', 589, N'Escavalier', 11, 17, 495, 70, 135, 105, 60, 105, 20, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'250f3c3e-01a6-4d75-9f35-0e58f8657d1c', 352, N'Kecleon', 12, NULL, 440, 60, 90, 70, 60, 120, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'99891c92-d8f0-4489-812d-0e805da02e8c', 316, N'Gulpin', 13, NULL, 302, 70, 43, 53, 43, 53, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4337830c-d9e6-44a9-be9f-0e80bb4cfc39', 498, N'Tepig', 16, NULL, 308, 65, 63, 45, 45, 45, 45, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3a501a0d-e69f-408e-a750-0f9633c29352', 366, N'Clamperl', 2, NULL, 345, 35, 64, 85, 74, 55, 32, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cdcae1af-47d3-4cf3-b3e8-0fc90091c79d', 420, N'Cherubi', 5, NULL, 275, 45, 35, 45, 62, 53, 35, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'27e0e26f-822f-4cd7-992f-0fd63b9657bb', 637, N'Volcarona', 11, 16, 550, 85, 60, 65, 135, 105, 100, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1ecdf378-305e-4e23-b1f5-1049fde421ee', 540, N'Sewaddle', 11, 5, 310, 45, 53, 70, 40, 60, 42, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'85387eb2-5317-4e9e-815a-10a6384d7d4d', 464, N'Rhyperior', 6, 10, 535, 115, 140, 130, 55, 55, 40, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9e025951-9f27-49ab-9943-10c377166b10', 666, N'Vivillon', 11, 18, 411, 80, 52, 50, 90, 50, 89, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'493fa1bf-f548-4b3f-87a9-111ee2e7c95f', 612, N'Haxorus', 4, NULL, 540, 76, 147, 90, 60, 70, 97, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e31ec235-6bf1-41a4-8530-11319208d36e', 701, N'Hawlucha', 1, 18, 500, 78, 92, 75, 74, 63, 118, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd0e59bc2-ee47-4731-a04a-11866e6768d7', 355, N'Duskull', 15, NULL, 295, 20, 40, 90, 30, 90, 25, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2b5a17df-1d1c-4470-bfdf-121b0f8d77af', 598, N'Ferrothorn', 5, 17, 489, 74, 94, 131, 54, 116, 20, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e4f6e300-8449-4447-89d8-127002e73b41', 363, N'Spheal', 8, 2, 290, 70, 40, 50, 55, 50, 25, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bf6a8e34-4acc-4ba9-b323-13514e3dfeaf', 635, N'Hydreigon', 3, 4, 600, 92, 105, 90, 125, 90, 98, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ba963f04-b1ea-4f24-8572-13beb18ccf42', 386, N'DeoxysDefense Forme', 7, NULL, 600, 50, 70, 160, 70, 160, 90, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dcbe1c4b-327f-4957-b117-13db9ac08952', 271, N'Lombre', 2, 5, 340, 60, 50, 50, 60, 70, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'eee087ea-c3bf-43c2-904c-142901f0c424', 3, N'VenusaurMega Venusaur', 5, 13, 625, 80, 100, 123, 122, 120, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'57fd0585-f643-431e-bbb1-14624467a5d1', 34, N'Nidoking', 13, 6, 505, 81, 102, 77, 85, 75, 85, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'69028e75-df5a-43e3-b833-14ac408c8f64', 471, N'Glaceon', 8, NULL, 525, 65, 60, 110, 130, 95, 65, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'791b0027-e113-4864-b1d4-14efee7877b6', 413, N'WormadamSandy Cloak', 11, 6, 424, 60, 79, 105, 59, 85, 36, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b2a75d58-0f06-40a0-a40e-1506265539e4', 584, N'Vanilluxe', 8, NULL, 535, 71, 95, 85, 110, 95, 79, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4b57452f-0a44-4517-9548-152063c5bd54', 562, N'Yamask', 15, NULL, 303, 38, 30, 85, 55, 65, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'67286ee1-d5ba-4ad0-8dd4-1533868ac4ca', 504, N'Patrat', 12, NULL, 255, 45, 55, 39, 35, 39, 42, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'97e7a247-af9e-46f8-a886-15e863f3ac01', 711, N'GourgeistSmall Size', 15, 5, 494, 55, 85, 122, 58, 75, 99, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dd7f5cb8-cb38-4a52-93eb-1606d796a6b8', 382, N'Kyogre', 2, NULL, 670, 100, 100, 90, 150, 140, 90, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'76296912-91b5-4a51-a72c-1611cc648600', 428, N'LopunnyMega Lopunny', 12, 1, 580, 65, 136, 94, 54, 96, 135, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'00ac9770-6a74-435f-9c79-161685420d8b', 709, N'Trevenant', 15, 5, 474, 85, 110, 76, 65, 82, 56, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'31b56109-a648-45b0-87d2-169e7900a28a', 394, N'Prinplup', 2, NULL, 405, 64, 66, 68, 81, 76, 50, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6c05a0e1-40fe-4822-b91b-16a0e735caee', 359, N'Absol', 3, NULL, 465, 65, 130, 60, 75, 60, 75, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fb2a2e20-b27b-4b9a-972e-16aa86c80654', 692, N'Clauncher', 2, NULL, 330, 50, 53, 62, 58, 63, 44, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a842a587-9fa3-421e-bc95-16f958bed6da', 294, N'Loudred', 12, NULL, 360, 84, 71, 43, 71, 43, 48, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'40ebb91a-d7e9-4a01-9fe1-175a21fb66d1', 710, N'PumpkabooSuper Size', 15, 5, 335, 59, 66, 70, 44, 55, 41, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f9ed9240-31ee-4bf2-a1fd-18391cdfcb1e', 93, N'Haunter', 15, 13, 405, 45, 50, 45, 115, 55, 95, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'49a45810-cfa3-436e-815a-18d1554c0ffc', 658, N'Greninja', 2, 3, 530, 72, 95, 67, 103, 71, 122, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0f6fd553-b821-49ae-b752-1903d6c3c077', 576, N'Gothitelle', 7, NULL, 490, 70, 55, 95, 95, 110, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'475a9897-63e5-4566-adf6-1936c4020550', 299, N'Nosepass', 10, NULL, 375, 30, 45, 135, 45, 90, 30, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'541b522b-0970-4ea6-983c-194f56c50959', 42, N'Golbat', 13, 18, 455, 75, 80, 70, 65, 75, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'070224ab-2df3-4c7c-942f-19f1233e6a81', 10, N'Caterpie', 11, NULL, 195, 45, 30, 35, 20, 20, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7a87b463-1fc9-45ef-b2fa-1a8b7171d8f6', 630, N'Mandibuzz', 3, 18, 510, 110, 65, 105, 55, 95, 80, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e0462b85-72cd-4840-a15d-1ad854eedc10', 211, N'Qwilfish', 2, 13, 430, 65, 95, 75, 55, 55, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd6ef676b-2dc1-40f9-9442-1af0fbc5b618', 197, N'Umbreon', 3, NULL, 525, 95, 65, 110, 60, 130, 65, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e348fc0d-afd7-4a3f-a3eb-1af225f98640', 275, N'Shiftry', 5, 3, 480, 90, 100, 60, 90, 60, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a380c8bd-c344-4aef-ab72-1bbe36570bd2', 106, N'Hitmonlee', 1, NULL, 455, 50, 120, 53, 35, 110, 87, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7413c2c9-2c18-47c1-b5a7-1c21ba0a2da5', 609, N'Chandelure', 15, 16, 520, 60, 55, 90, 145, 90, 80, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5f20c308-9997-49f1-85dd-1c5b7156209e', 526, N'Gigalith', 10, NULL, 515, 85, 135, 130, 60, 80, 25, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aedcaceb-482d-4dff-b86c-1c9faf06ab9f', 603, N'Eelektrik', 9, NULL, 405, 65, 85, 70, 75, 70, 40, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2449d30e-145f-491b-b9b1-1cb1b5d21ac2', 411, N'Bastiodon', 10, 17, 495, 60, 52, 168, 47, 138, 30, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0bf9b0ae-f38e-4dae-959e-1d159ce8e8c7', 688, N'Binacle', 10, 2, 306, 42, 52, 67, 39, 56, 50, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'12b629c8-534a-4c21-a3ca-1d2d2548ccaa', 353, N'Shuppet', 15, NULL, 295, 44, 75, 35, 63, 33, 45, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'02376ed6-e836-47da-9060-1db730854dd0', 94, N'Gengar', 15, 13, 500, 60, 65, 60, 130, 75, 110, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'40817694-a319-44f8-ba7e-1e82b80b8beb', 427, N'Buneary', 12, NULL, 350, 55, 66, 44, 44, 56, 85, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6d432b80-d642-4672-aa49-1eb5b3dbbbad', 243, N'Raikou', 9, NULL, 580, 90, 85, 75, 115, 100, 115, 2, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b4490357-2ec2-4d29-8bab-1efd1ffeb03f', 375, N'Metang', 17, 7, 420, 60, 75, 100, 55, 80, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e4a9b48b-e3cb-4218-a679-1f158a144f36', 388, N'Grotle', 5, NULL, 405, 75, 89, 85, 55, 65, 36, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aa028f4a-9d87-4928-85f2-1f2a10e43019', 705, N'Sliggoo', 4, NULL, 452, 68, 75, 53, 83, 113, 60, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e7dbf7d0-18aa-4d02-9b1c-1f3b965667a6', 210, N'Granbull', 15, NULL, 450, 90, 120, 75, 60, 60, 45, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'19773dd5-3cef-4eb5-9ef7-1fd5ad233381', 541, N'Swadloon', 11, 5, 380, 55, 63, 90, 50, 80, 42, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5ac5c439-a78a-4df2-aee4-201c1a7a8034', 578, N'Duosion', 7, NULL, 370, 65, 40, 50, 125, 60, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7f328c43-421c-4350-91f0-20c0f104d860', 245, N'Suicune', 2, NULL, 580, 100, 75, 115, 90, 115, 85, 2, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e0537ab0-530c-4599-835a-20d3e0b3acd7', 139, N'Omastar', 10, 2, 495, 70, 60, 125, 115, 70, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e2ad3aac-29ff-4d48-ba2d-20eca2fb7773', 71, N'Victreebel', 5, 13, 490, 80, 105, 65, 100, 70, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'788fe95a-f55d-45d5-903f-210a822f9dd5', 642, N'ThundurusIncarnate Forme', 9, 18, 580, 79, 115, 70, 125, 80, 111, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'009190b3-9652-4792-837b-211d04207a61', 711, N'GourgeistSuper Size', 15, 5, 494, 85, 100, 122, 58, 75, 54, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f3a36fff-45e6-4c2c-a96f-213ebae16197', 216, N'Teddiursa', 12, NULL, 330, 60, 80, 50, 50, 50, 40, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5ecefa01-baf6-4393-9df4-2157e837dbca', 319, N'SharpedoMega Sharpedo', 2, 3, 560, 70, 140, 70, 110, 65, 105, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0b3cd010-38fb-438b-8a18-2158aa9f0bd0', 214, N'Heracross', 11, 1, 500, 80, 125, 75, 40, 95, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'332e559c-4381-42e0-a5c3-21eeee593790', 646, N'KyuremBlack Kyurem', 4, 8, 700, 125, 170, 100, 120, 90, 95, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f11edba8-3cd2-4ff3-8b5e-22b5b7ae2f7f', 101, N'Electrode', 9, NULL, 480, 60, 50, 70, 80, 80, 140, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bf2f1704-1fcd-4310-8e69-22c8a296f841', 9, N'Blastoise', 2, NULL, 530, 79, 83, 100, 85, 105, 78, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6f3be5ec-aad5-41d8-a4fd-22d30cdbeb16', 356, N'Dusclops', 15, NULL, 455, 40, 70, 130, 60, 130, 25, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'efe3355a-5aaa-4653-b394-22f497c7a78a', 171, N'Lanturn', 2, 9, 460, 125, 58, 58, 76, 76, 67, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'08c081e1-1e7b-43ea-a704-230d7318da59', 282, N'Gardevoir', 7, 14, 518, 68, 65, 65, 125, 115, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3de1e4cf-cfa7-4d67-a077-232ed25c55a2', 501, N'Oshawott', 2, NULL, 308, 55, 55, 45, 63, 45, 45, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2c29e249-af16-46b8-941f-237fa1adb8ad', 313, N'Volbeat', 11, NULL, 400, 65, 73, 55, 47, 75, 85, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f5582094-0f68-448f-8b68-23af5fd2af56', 537, N'Seismitoad', 2, 6, 509, 105, 95, 75, 85, 75, 74, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e2ad4215-3e21-4962-a05a-24b272df867d', 661, N'Fletchling', 12, 18, 278, 45, 50, 43, 40, 38, 62, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b3985039-d3a6-4415-9877-25d3a7a1d15e', 342, N'Crawdaunt', 2, 3, 468, 63, 120, 85, 90, 55, 55, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f22dfdfe-c180-4244-99d4-263dd839819d', 703, N'Carbink', 10, 14, 500, 50, 50, 150, 50, 150, 50, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd803ca6f-b00e-4b20-83a1-266a3bd51dc4', 386, N'DeoxysSpeed Forme', 7, NULL, 600, 50, 95, 90, 95, 90, 180, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'240a2071-974f-4db5-aa13-26b52fc64908', 334, N'AltariaMega Altaria', 4, 14, 590, 75, 110, 110, 110, 105, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'83a20f78-f691-4c0f-86be-26e57a991fa1', 508, N'Stoutland', 12, NULL, 500, 85, 110, 90, 45, 90, 80, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'04c40689-adcc-4d42-93b8-2707a80f0c41', 544, N'Whirlipede', 11, 13, 360, 40, 55, 99, 40, 79, 47, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1bfbb77f-6bda-4f72-91a0-27697417ab53', 521, N'Unfezant', 12, 18, 488, 80, 115, 80, 65, 55, 93, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'69619d92-28f2-4c52-9a21-279c7c1cc746', 398, N'Staraptor', 12, 18, 485, 85, 120, 70, 50, 60, 100, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1aaf5812-28df-4a29-b2d0-286ecd434137', 591, N'Amoonguss', 5, 13, 464, 114, 85, 70, 85, 80, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'66136849-288c-4dd6-8e1d-28a7b86b8569', 1, N'Bulbasaur', 5, 13, 318, 45, 49, 49, 65, 65, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dc3897ac-607c-4943-a354-28fc3cd1d019', 429, N'Mismagius', 15, NULL, 495, 60, 60, 60, 105, 105, 105, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4db775e1-0296-4c94-b798-291c160d769d', 250, N'Ho-oh', 16, 18, 680, 106, 130, 90, 110, 154, 90, 2, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bc2b10bd-6c1a-4e05-90b6-293722e128a3', 274, N'Nuzleaf', 5, 3, 340, 70, 70, 40, 60, 40, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'953d009b-9090-4837-9633-2937ebc2200b', 682, N'Spritzee', 15, NULL, 341, 78, 52, 60, 63, 65, 23, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fcf2392d-63b7-4888-a990-2a14a723b5d9', 98, N'Krabby', 2, NULL, 325, 30, 105, 90, 25, 25, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'016d7c6e-3722-42f0-b853-2a356714c774', 712, N'Bergmite', 8, NULL, 304, 55, 69, 85, 32, 35, 28, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'37f34828-1af1-4f77-90e0-2aa5ead49595', 673, N'Gogoat', 5, NULL, 531, 123, 100, 62, 97, 81, 68, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ccb7f712-94ea-4d95-b436-2aba8a5cd633', 685, N'Slurpuff', 15, NULL, 480, 82, 80, 86, 85, 75, 72, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f81ff06b-0105-40c5-b5a2-2adba733ed11', 296, N'Makuhita', 1, NULL, 237, 72, 60, 30, 20, 30, 25, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2b73265e-5649-4bb4-b7ec-2adc246bf882', 434, N'Stunky', 13, 3, 329, 63, 63, 47, 41, 41, 74, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9d30831e-d020-4f42-be02-2b4f3b772a26', 126, N'Magmar', 16, NULL, 495, 65, 95, 57, 100, 85, 93, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1887e712-dfbd-4d62-a62e-2b6d275d1ede', 595, N'Joltik', 11, 9, 319, 50, 47, 50, 57, 50, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a567618b-5207-4bf3-a366-2ba1422a057a', 415, N'Combee', 11, 18, 244, 30, 30, 42, 30, 42, 70, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4f2627c5-46be-4ffa-a530-2c011117e4ce', 318, N'Carvanha', 2, 3, 305, 45, 90, 20, 65, 20, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6cc15f22-544e-4641-ad1d-2c2d95231feb', 403, N'Shinx', 9, NULL, 263, 45, 65, 34, 40, 34, 45, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'de61e93f-7b39-46a1-8dd0-2d04360a96dd', 710, N'PumpkabooSmall Size', 15, 5, 335, 44, 66, 70, 44, 55, 56, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd8caf03e-922e-479a-b6eb-2d126309daa1', 58, N'Growlithe', 16, NULL, 350, 55, 70, 45, 70, 50, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f1342815-a13b-4fa6-9c1d-2d8723606cdf', 346, N'Cradily', 10, 5, 495, 86, 81, 97, 81, 107, 43, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'577b6652-ba85-40a2-836e-2dbf17cfc289', 424, N'Ambipom', 12, NULL, 482, 75, 100, 66, 60, 66, 115, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aa966c41-cf5f-48d8-a72d-2e2d1b36c9e4', 164, N'Noctowl', 12, 18, 442, 100, 50, 50, 76, 96, 70, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'334864d9-a9bb-4087-9502-2e420c9240cf', 137, N'Porygon', 12, NULL, 395, 65, 60, 70, 85, 75, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e81d8296-3ea3-404d-b0a9-2e6a649a9d3a', 531, N'Audino', 12, NULL, 445, 103, 60, 86, 60, 86, 50, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b4bd5623-e890-4c5b-ad8e-2ecda0e2b458', 131, N'Lapras', 2, 8, 535, 130, 85, 80, 85, 95, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6842dc69-58f3-4a66-8237-2ee8d54333c6', 601, N'Klinklang', 17, NULL, 520, 60, 100, 115, 70, 85, 90, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'69cd1c50-f333-46af-9600-2ef2d30a462d', 605, N'Elgyem', 7, NULL, 335, 55, 55, 55, 85, 55, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'486c841a-cb4c-4100-b27e-2f1054932ba0', 532, N'Timburr', 1, NULL, 305, 75, 80, 55, 25, 35, 35, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'60673f9f-fbcb-4ac3-a664-2f540831aec8', 536, N'Palpitoad', 2, 6, 384, 75, 65, 55, 65, 55, 69, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c2b5fbdc-f17b-49b5-ba00-2f9632cc0075', 19, N'Rattata', 12, NULL, 253, 30, 56, 35, 25, 35, 72, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e28ab202-ef2e-41a6-ae94-2fc88d1be739', 431, N'Glameow', 12, NULL, 310, 49, 55, 42, 42, 37, 85, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ab1c4d7c-cae2-4e29-8904-305f43e450e8', 406, N'Budew', 5, 13, 280, 40, 30, 35, 50, 70, 55, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd4efb84b-3dd3-4976-a811-306bac090014', 307, N'Meditite', 1, 7, 280, 30, 40, 55, 40, 55, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'87b3018b-6436-4078-bfdb-30c5a0122886', 44, N'Gloom', 5, 13, 395, 60, 65, 70, 85, 75, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1f59c385-75a7-47b7-a55b-30eeb82af3ac', 487, N'GiratinaOrigin Forme', 15, 4, 680, 150, 120, 100, 120, 100, 90, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0489fe27-da50-44a1-b53d-30f0204eeb54', 596, N'Galvantula', 11, 9, 472, 70, 77, 60, 97, 60, 108, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cf924d0d-4060-4014-adf1-30f548191d85', 340, N'Whiscash', 2, 6, 468, 110, 78, 73, 76, 71, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3b6cf418-59db-45c9-8277-312117f8e9fc', 694, N'Helioptile', 9, 12, 289, 44, 38, 33, 61, 43, 70, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3d81baf4-7a49-41d6-acf7-313baf84212b', 442, N'Spiritomb', 15, 3, 485, 50, 92, 108, 92, 108, 35, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2d754763-2b03-4f36-a189-31cfccfd8dea', 493, N'Arceus', 12, NULL, 720, 120, 120, 120, 120, 120, 120, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dae65945-cd62-4fd9-a29c-31f3342aa70c', 416, N'Vespiquen', 11, 18, 474, 70, 80, 102, 80, 102, 40, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'23688591-c1fd-4511-91ad-320fc36f1b53', 472, N'Gliscor', 6, 18, 510, 75, 95, 125, 45, 75, 95, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'01f8fbed-cd5a-466a-bec7-339567f00fbd', 324, N'Torkoal', 16, NULL, 470, 70, 85, 140, 85, 70, 20, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'73afdac3-b487-4bf1-9139-3410e4946ef1', 357, N'Tropius', 5, 18, 460, 99, 68, 83, 72, 87, 51, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ebf2e91f-0497-46df-990a-3419b36f3aea', 628, N'Braviary', 12, 18, 510, 100, 123, 75, 57, 75, 80, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'40093a1b-dcfd-4375-a9ce-34636ec2b858', 550, N'Basculin', 2, NULL, 460, 70, 92, 65, 80, 55, 98, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fe05e871-d381-4f86-b2e1-348c30ec5bf7', 277, N'Swellow', 12, 18, 430, 60, 85, 60, 50, 50, 125, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c7490fc7-137e-4bdc-b633-34c050feaf66', 715, N'Noivern', 18, 4, 535, 85, 70, 80, 97, 80, 123, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'046f498f-c648-4c8b-b8ef-34c6a8dab39e', 672, N'Skiddo', 5, NULL, 350, 66, 65, 48, 62, 57, 52, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b3636ca8-aee0-4e79-8667-34ce6ba92bc0', 396, N'Starly', 12, 18, 245, 40, 55, 30, 30, 30, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e2e4d356-405c-4652-8914-34f54ca4cfcd', 262, N'Mightyena', 3, NULL, 420, 70, 90, 70, 60, 60, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a9428981-f46e-490e-b118-3504dce7fa21', 397, N'Staravia', 12, 18, 340, 55, 75, 50, 40, 40, 80, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5579cd1f-fb20-4007-9475-353714b4202d', 142, N'Aerodactyl', 10, 18, 515, 80, 105, 65, 60, 75, 130, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dafd3098-25af-43b2-9816-354f021ce8aa', 214, N'HeracrossMega Heracross', 11, 1, 600, 80, 185, 115, 40, 105, 75, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'71d3567b-57ed-41a6-a70a-35f60f62d2e8', 134, N'Vaporeon', 2, NULL, 525, 130, 65, 60, 110, 95, 65, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'30247d03-2e2a-45ce-8fe8-35fd94243cfa', 475, N'GalladeMega Gallade', 7, 1, 618, 68, 165, 95, 65, 115, 110, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e80a3122-c35d-4774-b4e0-374e98bff59a', 479, N'RotomMow Rotom', 9, 5, 520, 50, 65, 107, 105, 107, 86, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'433a9812-8590-40da-852f-378f02c30cc8', 561, N'Sigilyph', 7, 18, 490, 72, 58, 80, 103, 80, 97, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6f5f6dde-402d-4fdc-82fa-37944fd1f809', 303, N'Mawile', 17, 14, 380, 50, 85, 85, 55, 55, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9ee98a90-791b-4a38-bfea-37f463ac784b', 711, N'GourgeistAverage Size', 15, 5, 494, 65, 90, 122, 58, 75, 84, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e5e9218d-23a1-488b-b332-38461cdb864a', 14, N'Kakuna', 11, 13, 205, 45, 25, 50, 25, 25, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'56290bea-6863-4626-ba70-38772401778a', 529, N'Drilbur', 6, NULL, 328, 60, 85, 40, 30, 45, 68, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'db09a299-3f4c-4b99-960b-387d1a5a9705', 81, N'Magnemite', 9, 17, 325, 25, 35, 70, 95, 55, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'610ad33f-a036-4594-bfda-38bc9aed163f', 586, N'Sawsbuck', 12, 5, 475, 80, 100, 70, 60, 70, 95, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e46e2c6d-057b-403a-a4fd-395042f2d536', 671, N'Florges', 15, NULL, 552, 78, 65, 68, 112, 154, 75, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f00152cf-dabc-4cf4-a06f-397e52e421ac', 570, N'Zorua', 3, NULL, 330, 40, 65, 40, 80, 40, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'15cc8f52-f259-4d22-a74f-3989d9471242', 270, N'Lotad', 2, 5, 220, 40, 30, 30, 40, 50, 30, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9d353bc1-dcae-4abb-9900-39c7094b2d20', 599, N'Klink', 17, NULL, 300, 40, 55, 70, 45, 60, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'80ef893e-fa99-430e-90b3-3a9e54ef84fc', 190, N'Aipom', 12, NULL, 360, 55, 70, 55, 40, 55, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ed727ff0-f862-442b-8b65-3bb639ac5160', 600, N'Klang', 17, NULL, 440, 60, 80, 95, 70, 85, 50, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'09067669-54be-4abb-aef0-3bcd69bf4983', 639, N'Terrakion', 10, 1, 580, 91, 129, 90, 72, 90, 108, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4a1fe890-d47c-4832-bc65-3bf856114e5d', 223, N'Remoraid', 2, NULL, 300, 35, 65, 35, 65, 35, 65, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c81854e0-c2fb-49fe-8d9b-3cbac1567c2e', 614, N'Beartic', 8, NULL, 485, 95, 110, 80, 70, 80, 50, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'03950fb2-1df9-49ca-b174-3d4aab3dec12', 292, N'Shedinja', 11, 16, 236, 1, 90, 45, 30, 30, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f9173dae-e51b-4e2b-8446-3e055da58f27', 507, N'Herdier', 12, NULL, 370, 65, 80, 65, 35, 65, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ce227147-71f5-4c7f-83a8-3e27430eb1b5', 344, N'Claydol', 6, 7, 500, 60, 70, 105, 70, 120, 75, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5edeac1c-131a-40b9-9c22-3ebc64af213d', 165, N'Ledyba', 11, 18, 265, 40, 20, 30, 40, 80, 55, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'edfe9ae9-620d-4cca-b1e9-3ecb1360068e', 320, N'Wailmer', 2, NULL, 400, 130, 70, 35, 70, 35, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'340b5271-af87-4cb0-b583-3f09a8d322a8', 47, N'Parasect', 11, 5, 405, 60, 95, 80, 60, 80, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2854c4f7-9ce4-4a3d-8140-3f59251d8acf', 567, N'Archeops', 10, 18, 567, 75, 140, 65, 112, 65, 110, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ff5603ce-096f-4e27-8d19-3fb6dda3df93', 246, N'Larvitar', 10, 6, 300, 50, 64, 50, 45, 50, 41, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f31aae84-3538-45c8-9913-3fd66578a9af', 559, N'Scraggy', 3, 1, 348, 50, 75, 70, 35, 70, 48, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8e7574a1-c291-4443-8010-402226a71a98', 248, N'TyranitarMega Tyranitar', 10, 3, 700, 100, 164, 150, 95, 120, 71, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fe95bc43-020e-4032-a44a-40f333998ff7', 716, N'Xerneas', 15, NULL, 680, 126, 131, 95, 131, 98, 99, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'289a9ee3-c3d3-4aae-9486-410f8ba29a43', 249, N'Lugia', 7, 18, 680, 106, 90, 130, 90, 154, 110, 2, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'92f829ec-38e8-4939-b6db-414c2163821a', 483, N'Dialga', 17, 4, 680, 100, 120, 120, 150, 100, 90, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'077edfbb-6bc0-4285-b51c-420d80179c8e', 631, N'Heatmor', 16, NULL, 484, 85, 97, 66, 105, 66, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9a8398bc-489d-432b-aa31-4253175917b3', 319, N'Sharpedo', 2, 3, 460, 70, 120, 40, 95, 40, 95, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f17ea8dc-5b25-4618-96e5-4262560ffa31', 204, N'Pineco', 11, NULL, 290, 50, 65, 90, 35, 35, 15, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5e0deef2-24c6-49aa-98a4-42f576d5e19e', 24, N'Arbok', 13, NULL, 438, 60, 85, 69, 65, 79, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e930c9b8-382c-44f6-89ec-42fc1ab17c10', 118, N'Goldeen', 2, NULL, 320, 45, 67, 60, 35, 50, 63, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a2796a1a-b253-4f52-80c1-430144bfd42c', 25, N'Pikachu', 9, NULL, 320, 35, 55, 40, 50, 50, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'23a1452c-fb98-422d-a764-43b277d1fe27', 186, N'Politoed', 2, NULL, 500, 90, 75, 75, 90, 100, 70, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bfa7a67e-4aea-4a2f-8720-443047d6c885', 143, N'Snorlax', 12, NULL, 540, 160, 110, 65, 65, 110, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'23a66e28-7cce-4fb4-8c4a-446f549c6f73', 218, N'Slugma', 16, NULL, 250, 40, 40, 40, 70, 40, 20, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2a2875d6-ab6e-463e-929c-44a479c70464', 149, N'Dragonite', 4, 18, 600, 91, 134, 95, 100, 100, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f9640bfe-b730-49c5-aeff-459998ac3d27', 31, N'Nidoqueen', 13, 6, 505, 90, 92, 87, 75, 85, 76, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd0852dfb-0c7a-4046-b7b3-45f439bb258d', 634, N'Zweilous', 3, 4, 420, 72, 85, 70, 65, 70, 58, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f6a3d907-db1c-4aeb-b8f1-460286eaebb4', 182, N'Bellossom', 5, NULL, 490, 75, 80, 95, 90, 100, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'deacfeef-801d-4d67-932a-463bc05b6fe8', 72, N'Tentacool', 2, 13, 335, 40, 40, 35, 50, 100, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f2feb935-d9c3-4489-96b5-46555bd07918', 175, N'Togepi', 15, NULL, 245, 35, 20, 65, 40, 65, 20, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c05f7e4b-aefa-4131-a5cc-46ae7e3456b7', 105, N'Marowak', 6, NULL, 425, 60, 80, 110, 50, 80, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e145ce55-1b67-4549-869b-46d6c783a27c', 681, N'AegislashShield Forme', 17, 16, 520, 60, 50, 150, 50, 150, 60, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'38b6a75c-abaf-4266-b967-47bfafe979fa', 611, N'Fraxure', 4, NULL, 410, 66, 117, 70, 40, 50, 67, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'074d3c49-dbcd-4c35-b263-4843d18e46eb', 69, N'Bellsprout', 5, 13, 300, 50, 75, 35, 70, 30, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b9c02f0d-fc22-4e99-8503-486475ceba9a', 527, N'Woobat', 7, 18, 313, 55, 45, 43, 55, 43, 72, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5453eeb1-2e67-4530-93be-48781c96b82c', 4, N'Charmander', 16, NULL, 309, 39, 52, 43, 60, 50, 65, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b60f0b46-6622-4d77-a610-487ba47b4b3e', 192, N'Sunflora', 5, NULL, 425, 75, 75, 55, 105, 85, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'107e9b23-4fee-44bb-8913-488cff147afa', 445, N'GarchompMega Garchomp', 4, 6, 700, 108, 170, 115, 120, 95, 92, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'03c0bde6-9338-4659-bd15-48e127e1ce7c', 380, N'LatiasMega Latias', 4, 7, 700, 80, 100, 120, 140, 150, 110, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e9f2181f-e91a-424d-a0b8-48fef02ea19c', 580, N'Ducklett', 2, 18, 305, 62, 44, 50, 44, 50, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cc4117b9-7025-49aa-ac8b-491eb47252b2', 681, N'AegislashBlade Forme', 17, 16, 520, 60, 150, 50, 150, 50, 60, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9151dc44-b508-4ace-a127-49218dfc3c77', 664, N'Scatterbug', 11, NULL, 200, 38, 35, 40, 27, 25, 35, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a89cc56a-7e9b-496b-a682-49577bc393c5', 260, N'Swampert', 2, 6, 535, 100, 110, 90, 85, 90, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6f1c0eb2-c2d5-4b5c-b77f-499c9fd19489', 107, N'Hitmonchan', 1, NULL, 455, 50, 105, 79, 35, 110, 76, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f746773d-1db6-4444-809a-49c76eaf7231', 354, N'BanetteMega Banette', 15, NULL, 555, 64, 165, 75, 93, 83, 75, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4de71438-8726-4c76-a8a2-49dca0ea0f79', 130, N'GyaradosMega Gyarados', 2, 3, 640, 95, 155, 109, 70, 130, 81, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f3402911-be85-4ed3-b25d-4a6715b28b02', 91, N'Cloyster', 2, 8, 525, 50, 95, 180, 85, 45, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'26f7784b-bcb2-45a5-95ce-4a67902bf242', 693, N'Clawitzer', 2, NULL, 500, 71, 73, 88, 120, 89, 59, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'017af6a6-aae3-40fd-9ee4-4a8b772b3a68', 242, N'Blissey', 12, NULL, 540, 255, 10, 10, 75, 135, 55, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'add3a98b-becb-4bea-be36-4a91d4e4e94d', 683, N'Aromatisse', 15, NULL, 462, 101, 72, 72, 99, 89, 29, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f5118e46-4c66-46bf-8336-4ab796be8cfa', 276, N'Taillow', 12, 18, 270, 40, 55, 30, 30, 30, 85, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1c860980-f932-4ac7-8418-4b8b9c7e787e', 201, N'Unown', 7, NULL, 336, 48, 72, 48, 72, 48, 48, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e801e9ec-bcaa-4e37-921f-4ba6057dc583', 95, N'Onix', 10, 6, 385, 35, 45, 160, 30, 45, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6807e414-df85-4f39-92e9-4bb1263974b9', 484, N'Palkia', 2, 4, 680, 90, 120, 100, 150, 120, 100, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a7a59b98-a84f-4100-bed8-4bc9f82f1d9b', 217, N'Ursaring', 12, NULL, 500, 90, 130, 75, 75, 75, 55, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd6baaba8-ba0c-4747-b039-4be7cd5629ca', 169, N'Crobat', 13, 18, 535, 85, 90, 80, 70, 80, 130, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e06c0454-7124-48fe-b2b0-4c24df8e19b7', 689, N'Barbaracle', 10, 2, 500, 72, 105, 115, 54, 86, 68, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a1a95e62-eb9a-4a5c-9bb9-4c76ef925973', 38, N'Ninetales', 16, NULL, 505, 73, 76, 75, 81, 100, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fe0c2475-004c-4e6b-addc-4c8b9d0c4a65', 150, N'MewtwoMega Mewtwo Y', 7, NULL, 780, 106, 150, 70, 194, 120, 140, 1, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b52c47c-701c-46bc-b893-4cd42cf70814', 140, N'Kabuto', 10, 2, 355, 30, 80, 90, 55, 45, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4b2ec57d-081e-4d7f-b118-4ce29072e59e', 386, N'DeoxysNormal Forme', 7, NULL, 600, 50, 150, 50, 150, 50, 150, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2df0ce59-a53e-4137-a7d9-4d49e16f955c', 482, N'Azelf', 7, NULL, 580, 75, 125, 70, 125, 70, 115, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a7da3596-6b3a-4ebd-a927-4d4bbfbb4c42', 400, N'Bibarel', 12, 2, 410, 79, 85, 60, 55, 60, 71, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aa46502b-f13e-423b-8577-4db9fd900ff9', 647, N'KeldeoOrdinary Forme', 2, 1, 580, 91, 72, 90, 129, 90, 108, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c5037bde-3752-499e-8552-4e0390d3a9c6', 492, N'ShayminLand Forme', 5, NULL, 600, 100, 100, 100, 100, 100, 100, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fb8fd63e-085b-4f81-803d-4e6e0400273c', 362, N'GlalieMega Glalie', 8, NULL, 580, 80, 120, 80, 120, 80, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3211f01f-dbcb-4785-8374-4e81fc798130', 543, N'Venipede', 11, 13, 260, 30, 45, 59, 30, 39, 57, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e3aeb13e-979d-43c2-8b82-4f06c7877a98', 77, N'Ponyta', 16, NULL, 410, 50, 85, 55, 65, 65, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9d18c543-4673-429c-9ae7-4f11533dcf61', 654, N'Braixen', 16, NULL, 409, 59, 59, 58, 90, 70, 73, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'82ec63f8-44b2-42fa-986c-4f7f504a3641', 461, N'Weavile', 3, 8, 510, 70, 120, 65, 45, 85, 125, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd562e4fe-a3c0-4295-ba82-4face2df07ae', 278, N'Wingull', 2, 18, 270, 40, 30, 30, 55, 30, 85, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e5a78430-dd82-4645-b684-4fe54b56a88f', 515, N'Panpour', 2, NULL, 316, 50, 53, 48, 53, 48, 64, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e1d2b5fe-489f-42ad-8625-4ff26107d8a1', 231, N'Phanpy', 6, NULL, 330, 90, 60, 60, 40, 40, 40, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd0fc5398-c65c-4390-85e4-4ffc0c0ebb95', 21, N'Spearow', 12, 18, 262, 40, 60, 30, 31, 31, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bf2a2666-78cf-4e25-8463-507e21e9af72', 323, N'Camerupt', 16, 6, 460, 70, 100, 70, 105, 75, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd327320d-2e14-46c6-8edd-50e545ad8d2a', 329, N'Vibrava', 6, 4, 340, 50, 70, 50, 50, 50, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0e15e199-829e-41f0-b8e2-51ba26a28ae0', 2, N'Ivysaur', 5, 13, 405, 60, 62, 63, 80, 80, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c1383706-5ad0-4367-9183-51d0763678ad', 254, N'Sceptile', 5, NULL, 530, 70, 85, 65, 105, 85, 120, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'be491ec2-025d-4fe6-bf98-5261c5fcf221', 61, N'Poliwhirl', 2, NULL, 385, 65, 65, 65, 50, 50, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'117e9aef-03dc-4abc-9ac9-527fe763f37e', 224, N'Octillery', 2, NULL, 480, 75, 105, 75, 105, 75, 45, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'13bdb2b1-9cb8-4034-8b81-529c4895e0cc', 232, N'Donphan', 6, NULL, 500, 90, 120, 120, 60, 60, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd66475ca-a5b9-4ea0-b2c0-52b6b354a857', 102, N'Exeggcute', 5, 7, 325, 60, 40, 80, 60, 45, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a5e8fa5b-3554-425c-b5e7-52bec766bab3', 301, N'Delcatty', 12, NULL, 380, 70, 65, 65, 55, 55, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0716652d-1251-4af2-9cad-532a63fd4294', 200, N'Misdreavus', 15, NULL, 435, 60, 60, 60, 85, 85, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'82d79d06-964d-4de9-83e2-533c731a68c4', 193, N'Yanma', 11, 18, 390, 65, 65, 45, 75, 45, 95, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0b74186d-ab67-4010-8b93-535365608313', 592, N'Frillish', 2, 16, 335, 55, 40, 50, 65, 85, 40, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8aed5342-9d63-4ed4-9ad6-53a095d7ebb6', 552, N'Krokorok', 6, 3, 351, 60, 82, 45, 45, 45, 74, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'885b50af-0e4a-43dc-9a9c-53d4b4e218df', 354, N'Banette', 15, NULL, 455, 64, 115, 65, 83, 63, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ad95986d-5e1e-41df-aa63-5406c891d53e', 553, N'Krookodile', 6, 3, 519, 95, 117, 80, 65, 70, 92, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'70e93e0f-9325-4e7b-8813-542f1ef5a0d5', 221, N'Piloswine', 8, 6, 450, 100, 100, 80, 60, 60, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6be43dee-f054-4eb4-a4b8-54956d3c4c12', 597, N'Ferroseed', 5, 17, 305, 44, 50, 91, 24, 86, 10, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd68ed159-b4ce-4f05-b9f2-54cf04d53b5c', 402, N'Kricketune', 11, NULL, 384, 77, 85, 51, 55, 51, 65, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6046521b-96ff-4405-ab4a-54daa627b591', 555, N'DarmanitanStandard Mode', 16, NULL, 480, 105, 140, 55, 30, 55, 95, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'69f9cb8e-2225-4bc2-8b93-553e2b78d2d2', 678, N'MeowsticMale', 7, NULL, 466, 74, 48, 76, 83, 81, 104, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0bbb0453-f417-4328-9cbd-55716a36bab0', 380, N'Latias', 4, 7, 600, 80, 80, 90, 110, 130, 110, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a5b9a668-da48-4429-9e8d-55874c02fe36', 60, N'Poliwag', 2, NULL, 300, 40, 50, 40, 40, 40, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'09bac6d5-13cc-4991-92de-561c3d317ae6', 209, N'Snubbull', 15, NULL, 300, 60, 80, 50, 40, 40, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'19c291fb-53a6-40b7-9207-563a0773cdcc', 326, N'Grumpig', 7, NULL, 470, 80, 45, 65, 90, 110, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4d6315bc-dba9-4e52-a509-56ab873ec78b', 437, N'Bronzong', 17, 7, 500, 67, 89, 116, 79, 116, 33, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'84b6140d-8073-4569-8dac-56f403075d14', 39, N'Jigglypuff', 12, 14, 270, 115, 45, 20, 45, 25, 20, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e012223a-db83-4d40-a45f-57021cf2f8f9', 556, N'Maractus', 5, NULL, 461, 75, 86, 67, 106, 67, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7a08e4be-ada5-4283-b488-572321dd4557', 241, N'Miltank', 12, NULL, 490, 95, 80, 105, 40, 70, 100, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0a6f61c6-8264-47f9-b416-581e967ce8c3', 73, N'Tentacruel', 2, 13, 515, 80, 70, 65, 80, 120, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'766877bb-c68c-4ff2-aad9-5821aca35706', 206, N'Dunsparce', 12, NULL, 415, 100, 70, 70, 65, 65, 45, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cbec0981-ace3-4905-a650-5834433c2070', 370, N'Luvdisc', 2, NULL, 330, 43, 30, 55, 40, 65, 97, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e9af5242-b495-4f00-b7d1-587552ce83c9', 606, N'Beheeyem', 7, NULL, 485, 75, 75, 75, 125, 95, 40, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f8f340e4-6f0a-4498-aa12-588f83954b2a', 408, N'Cranidos', 10, NULL, 350, 67, 125, 40, 30, 30, 58, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b1b2ff02-d026-42f0-ae81-5894cb388274', 384, N'RayquazaMega Rayquaza', 4, 18, 780, 105, 180, 100, 180, 100, 115, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e55b805a-4410-471b-90cc-5997ace0c63d', 369, N'Relicanth', 2, 10, 485, 100, 90, 130, 45, 65, 55, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'14e04245-9517-4710-a6c2-59d837fde93a', 256, N'Combusken', 16, 1, 405, 60, 85, 60, 85, 60, 55, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2703cedb-b657-4e81-886f-5a00232b1a8f', 448, N'LucarioMega Lucario', 1, 17, 625, 70, 145, 88, 140, 70, 112, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1d21954f-eb3d-4f1f-8238-5a2d11a62f19', 535, N'Tympole', 2, NULL, 294, 50, 50, 40, 50, 40, 64, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cbf5ed79-5aa6-447f-86a4-5a5b52e4545b', 29, N'Nidoran♀', 13, NULL, 275, 55, 47, 52, 40, 40, 41, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fe938a87-60c4-481d-b272-5aac9a812922', 413, N'WormadamTrash Cloak', 11, 17, 424, 60, 69, 95, 69, 95, 36, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'71470e47-4b09-4161-b33e-5abc845e1518', 160, N'Feraligatr', 2, NULL, 530, 85, 105, 100, 79, 83, 78, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f32db555-1d3d-4ad5-92cf-5ac07770016f', 445, N'Garchomp', 4, 6, 600, 108, 130, 95, 80, 85, 102, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e341e67b-db77-4959-bf6f-5b139f35a309', 466, N'Electivire', 9, NULL, 540, 75, 123, 67, 95, 85, 95, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0dc52725-d712-48c4-b209-5b20fbeec0ab', 239, N'Elekid', 9, NULL, 360, 45, 63, 37, 65, 55, 95, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7d5f5198-1fff-4a6a-be2e-5c863c563317', 308, N'Medicham', 1, 7, 410, 60, 60, 75, 60, 75, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f764fe4e-97c8-4e1d-8732-5c9366fc88af', 306, N'AggronMega Aggron', 17, NULL, 630, 70, 140, 230, 60, 80, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c7fe5c10-7566-4775-8231-5cf23d19053f', 538, N'Throh', 1, NULL, 465, 120, 100, 85, 30, 85, 45, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'44ae5b8e-6c18-47a7-830e-5d313aca5523', 455, N'Carnivine', 5, NULL, 454, 74, 100, 72, 90, 72, 46, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'161f165d-260c-4a1d-a96d-5d347a0e1e49', 290, N'Nincada', 11, 6, 266, 31, 45, 90, 30, 30, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8fe251a0-5b2e-406b-a0cd-5d44740057ea', 385, N'Jirachi', 17, 7, 600, 100, 100, 100, 100, 100, 100, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'50eaa3b6-676d-49c5-a76d-5d65e51f0a3a', 487, N'GiratinaAltered Forme', 15, 4, 680, 150, 100, 120, 100, 120, 90, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c5540b86-4517-4d24-92b0-5df58a0bb32e', 20, N'Raticate', 12, NULL, 413, 55, 81, 60, 50, 70, 97, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'13b9df71-4add-43e9-ac02-5df75d93db05', 574, N'Gothita', 7, NULL, 290, 45, 30, 50, 55, 65, 45, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e2eeaf6f-9223-479e-a75d-5ea4585946ea', 549, N'Lilligant', 5, NULL, 480, 70, 60, 75, 110, 75, 90, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cdfb33aa-9fb6-4932-84c1-5ef82ce1eadc', 704, N'Goomy', 4, NULL, 300, 45, 50, 35, 55, 75, 40, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f363598b-c6b1-41a4-8cc3-5efdc41d2e66', 33, N'Nidorino', 13, NULL, 365, 61, 72, 57, 55, 55, 65, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2df9d579-76d5-4607-b9d8-5f4ef7741868', 577, N'Solosis', 7, NULL, 290, 45, 30, 40, 105, 50, 20, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6a32b715-204a-4258-b779-5fdb2e8bdbd6', 690, N'Skrelp', 13, 2, 320, 50, 60, 60, 60, 60, 30, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a67fd6ac-89e5-459d-8118-600e51b1bea3', 133, N'Eevee', 12, NULL, 325, 55, 55, 50, 45, 65, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cc713da8-61a8-4995-ba36-6054d19403af', 405, N'Luxray', 9, NULL, 523, 80, 120, 79, 95, 79, 70, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b4281aac-c45e-44b2-8d70-6073fc84f4b7', 435, N'Skuntank', 13, 3, 479, 103, 93, 67, 71, 61, 84, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a82cc130-e533-4513-95c7-60ed86443c3c', 306, N'Aggron', 17, 10, 530, 70, 110, 180, 60, 60, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5e4fc7da-d55e-4566-bc52-60f4d72d65f1', 129, N'Magikarp', 2, NULL, 200, 20, 10, 55, 15, 20, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'540440dd-191e-436c-b52b-60fe08697203', 6, N'CharizardMega Charizard X', 16, 4, 634, 78, 130, 111, 130, 85, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'81645e18-b8c9-4128-a226-6116e16cecde', 697, N'Tyrantrum', 10, 4, 521, 82, 121, 119, 69, 59, 71, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd7e20f32-eb4f-4776-b1b9-612c84b99a66', 285, N'Shroomish', 5, NULL, 295, 60, 40, 60, 40, 60, 35, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0bd70480-7a81-4516-b44d-618e4fbaeb82', 585, N'Deerling', 12, 5, 335, 60, 60, 50, 40, 50, 75, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bb5b5b76-8a5b-4284-a791-6215a0e57779', 441, N'Chatot', 12, 18, 411, 76, 65, 45, 92, 42, 91, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6d86946e-1e22-456f-b509-6245b9832933', 465, N'Tangrowth', 5, NULL, 535, 100, 100, 125, 110, 50, 50, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bfe4a524-d111-4a85-9fd0-629dbce212af', 235, N'Smeargle', 12, NULL, 250, 55, 20, 35, 20, 45, 75, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f565988e-4b82-48b6-87df-62ad6b0f7393', 35, N'Clefairy', 15, NULL, 323, 70, 45, 48, 60, 65, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'05688c4b-284f-40bb-b6df-62ec50c10f29', 443, N'Gible', 4, 6, 300, 58, 70, 45, 40, 45, 42, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6b433439-8d67-4c22-a270-63528f37351e', 302, N'Sableye', 3, 16, 380, 50, 75, 75, 65, 65, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cd70b407-870f-42e6-b2b6-6394813ada5d', 453, N'Croagunk', 13, 1, 300, 48, 61, 40, 61, 40, 50, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9f017530-b54e-4726-9e89-63cb4d12d9cb', 229, N'Houndoom', 3, 16, 500, 75, 90, 50, 110, 80, 95, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5f184fe4-d059-4d26-a406-63f529968e80', 373, N'SalamenceMega Salamence', 4, 18, 700, 95, 145, 130, 120, 90, 120, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'12df1a3b-326d-49e1-b233-6434350d934a', 86, N'Seel', 2, NULL, 325, 65, 45, 55, 45, 70, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ac2f5b83-283a-4530-a6d8-648bff6229f9', 511, N'Pansage', 5, NULL, 316, 50, 53, 48, 53, 48, 64, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'89053f85-a1e1-4f3e-bced-64df655c2a85', 184, N'Azumarill', 2, 14, 420, 100, 50, 80, 60, 80, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7004f405-3c82-4b60-a2d2-64f9637bcc10', 714, N'Noibat', 18, 4, 245, 40, 30, 35, 45, 40, 55, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bacbb0dd-1eb8-4417-b60b-65138c87999f', 148, N'Dragonair', 4, NULL, 420, 61, 84, 65, 70, 70, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2e8c02bc-34d9-4b3b-89bb-65c1418b7826', 113, N'Chansey', 12, NULL, 450, 250, 5, 5, 35, 105, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bd7f7e37-1035-41ce-a1c6-6613a84e8aad', 678, N'MeowsticFemale', 7, NULL, 466, 74, 48, 76, 83, 81, 104, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'faf26d05-0a00-4492-9889-6671f1890161', 108, N'Lickitung', 12, NULL, 385, 90, 55, 75, 60, 75, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'85d7472a-0323-478a-b71b-66720c26d95a', 203, N'Girafarig', 12, 7, 455, 70, 80, 65, 90, 65, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c362d805-614c-44cf-9926-66788a96536b', 335, N'Zangoose', 12, NULL, 458, 73, 115, 60, 60, 60, 90, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1bfa81be-f60a-4a4b-8645-668fa5140349', 554, N'Darumaka', 16, NULL, 315, 70, 90, 45, 15, 45, 50, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6b9f83ee-29aa-414c-8625-6696f2eab01a', 127, N'PinsirMega Pinsir', 11, 18, 600, 65, 155, 120, 65, 90, 105, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0eb058eb-6943-4285-ae14-66a5bf3ac5db', 9, N'BlastoiseMega Blastoise', 2, NULL, 630, 79, 103, 120, 135, 115, 78, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'83138b1f-238e-416f-b2e4-676e4c3f29cc', 302, N'SableyeMega Sableye', 3, 16, 480, 50, 85, 125, 85, 115, 20, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd60bd63f-a8a0-49c6-b945-67af882e3861', 650, N'Chespin', 5, NULL, 313, 56, 61, 65, 48, 45, 38, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cd158faa-dea7-4922-8514-67b0726dac01', 460, N'Abomasnow', 5, 8, 494, 90, 92, 75, 92, 85, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'60c01814-f807-4b76-baec-67eb232dd384', 56, N'Mankey', 1, NULL, 305, 40, 80, 35, 35, 45, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'46efa918-0f52-45fb-8a5b-690777fb5f90', 322, N'Numel', 16, 6, 305, 60, 60, 40, 65, 45, 35, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ce895632-ff08-4bd9-b699-694e6e34fc4b', 100, N'Voltorb', 9, NULL, 330, 40, 30, 50, 55, 55, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3373760c-3eb4-4e12-816c-699c5eccdb88', 710, N'PumpkabooLarge Size', 15, 5, 335, 54, 66, 70, 44, 55, 46, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f2fe40fe-d63d-4bb3-8ab0-6a6ca64d3b61', 546, N'Cottonee', 5, 14, 280, 40, 27, 60, 37, 50, 66, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'26de2756-6ebd-41ec-8b8a-6ab33ab8dc7f', 132, N'Ditto', 12, NULL, 288, 48, 48, 48, 48, 48, 48, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'964159eb-9194-4062-8671-6b1c087fc4f2', 177, N'Natu', 7, 18, 320, 40, 50, 45, 70, 45, 70, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b8a420be-7832-40ea-b547-6b7a80f10e36', 141, N'Kabutops', 10, 2, 495, 60, 115, 105, 65, 70, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1643fa5c-17db-48cb-bfef-6bf55f5dcfa4', 386, N'DeoxysAttack Forme', 7, NULL, 600, 50, 180, 20, 180, 20, 150, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c705deff-2577-4daa-bb9d-6c04ce82cbc2', 263, N'Zigzagoon', 12, NULL, 240, 38, 30, 41, 30, 41, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e549fe8e-c75b-4385-a65b-6c748237fca8', 518, N'Musharna', 7, NULL, 487, 116, 55, 85, 107, 95, 29, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'68c8745e-ec55-4c92-bfec-6cd5c1eff0ad', 563, N'Cofagrigus', 15, NULL, 483, 58, 50, 145, 95, 105, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3817bbfd-1175-4373-8f44-6d693f6321a8', 668, N'Pyroar', 16, 12, 507, 86, 68, 72, 109, 66, 106, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5e2a0f10-6eb8-4690-8f4c-6daa556134ba', 648, N'MeloettaAria Forme', 12, 7, 600, 100, 77, 77, 128, 128, 90, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'85bed45d-a799-4097-ab28-6dc74c9a033d', 226, N'Mantine', 2, 18, 465, 65, 40, 70, 80, 140, 70, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a901e232-7620-4ff9-835c-6e0de6d8b182', 457, N'Lumineon', 2, NULL, 460, 69, 69, 76, 69, 86, 91, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b85368b-2104-473c-bb23-6e96386be2ee', 691, N'Dragalge', 13, 4, 494, 65, 75, 90, 97, 123, 44, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9d6d2c4b-26ab-4902-a0b2-6ed851578a56', 88, N'Grimer', 13, NULL, 325, 80, 80, 50, 40, 50, 25, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ae359a05-a970-40d9-bfa9-6f1ddfd3794f', 362, N'Glalie', 8, NULL, 480, 80, 80, 80, 80, 80, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'95868f78-7c5d-4266-a700-6f3e400ac665', 520, N'Tranquill', 12, 18, 358, 62, 77, 62, 50, 42, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7880a090-bce2-46d0-a5e8-6f624046bcd9', 494, N'Victini', 7, 16, 600, 100, 100, 100, 100, 100, 100, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'702849e2-1658-4a3e-a847-6ff6e9e933b5', 189, N'Jumpluff', 5, 18, 460, 75, 55, 70, 55, 95, 110, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ee89e584-662c-4864-a899-700fe4c77d43', 112, N'Rhydon', 6, 10, 485, 105, 130, 120, 45, 45, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'99dd5057-e112-4cde-979a-705a384451c3', 94, N'GengarMega Gengar', 15, 13, 600, 60, 65, 80, 170, 95, 130, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'47637e69-4c58-4bc9-a2ff-7060501230fb', 698, N'Amaura', 10, 8, 362, 77, 59, 50, 67, 63, 46, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1916b3ef-2d09-4996-8517-70ce46dd7dce', 677, N'Espurr', 7, NULL, 355, 62, 48, 54, 63, 60, 68, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5d369ebe-1c2f-4dff-8676-7170d768c440', 412, N'Burmy', 11, NULL, 224, 40, 29, 45, 29, 45, 36, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b93916c7-e3cf-4fdc-80c2-71791657b354', 6, N'Charizard', 16, 18, 534, 78, 84, 78, 109, 85, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'be768580-2382-40e3-b4bc-71b39ce03df8', 199, N'Slowking', 2, 7, 490, 95, 75, 80, 100, 110, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'83fa1a3d-57b9-4363-bc8a-71c355959ba4', 613, N'Cubchoo', 8, NULL, 305, 55, 70, 40, 60, 40, 40, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4c8101b4-c40a-462d-af1d-71da95e63c57', 381, N'Latios', 4, 7, 600, 80, 90, 80, 130, 110, 110, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'54b9c5e3-7fca-4be7-9e81-7220eaed27c5', 65, N'AlakazamMega Alakazam', 7, NULL, 590, 55, 50, 65, 175, 95, 150, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b6c5bcaa-622b-4e90-a4d3-7240094564a2', 90, N'Shellder', 2, NULL, 305, 30, 65, 100, 45, 25, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c829741b-46c7-4acc-9ac8-72409d5e0159', 323, N'CameruptMega Camerupt', 16, 6, 560, 70, 120, 100, 145, 105, 20, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ca99dbe7-5530-4648-b5de-72bf338c35e0', 422, N'Shellos', 2, NULL, 325, 76, 48, 48, 57, 62, 34, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5bd1e5cc-9d78-4971-9243-72d35c7fd676', 75, N'Graveler', 10, 6, 390, 55, 95, 115, 45, 45, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'349f0189-9a2d-4fbd-aeb2-72d5e0e41804', 166, N'Ledian', 11, 18, 390, 55, 35, 50, 55, 110, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'27828891-5f19-4a0c-bca7-72dd0a67579a', 310, N'ManectricMega Manectric', 9, NULL, 575, 70, 75, 80, 135, 80, 135, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2fb64ee4-a517-469f-aa88-74daafbf2b49', 288, N'Vigoroth', 12, NULL, 440, 80, 80, 80, 55, 55, 90, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9006904c-de74-4381-ac7e-74f94176a8db', 522, N'Blitzle', 9, NULL, 295, 45, 60, 32, 50, 32, 76, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4bf099ab-a538-493f-b0f4-75142ac7eb8d', 447, N'Riolu', 1, NULL, 285, 40, 70, 40, 35, 40, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a4eda3c9-5896-4f2d-b237-7526295431c8', 583, N'Vanillish', 8, NULL, 395, 51, 65, 65, 80, 75, 59, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e5aa0543-999c-41c9-8e33-752ddde52d69', 146, N'Moltres', 16, 18, 580, 90, 100, 90, 125, 85, 90, 1, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ac143f34-9384-47c5-8e77-75a7d5c7fcf4', 440, N'Happiny', 12, NULL, 220, 100, 5, 5, 15, 65, 30, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f864a44f-9a79-42d9-b366-764259098d3e', 649, N'Genesect', 11, 17, 600, 71, 120, 95, 120, 95, 99, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9c8e1ac4-a85e-4007-83fb-767a07d2baec', 514, N'Simisear', 16, NULL, 498, 75, 98, 63, 98, 63, 101, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6aa9ad30-33cc-4a24-a341-7683b6eba93f', 474, N'Porygon-Z', 12, NULL, 535, 85, 80, 70, 135, 75, 90, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8c8f926c-a1c4-4c78-9f4c-76d0514ee1fc', 333, N'Swablu', 12, 18, 310, 45, 40, 60, 40, 75, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9c5d8396-33f2-417b-96cc-772436079308', 279, N'Pelipper', 2, 18, 430, 60, 50, 100, 85, 70, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ced70e1f-77a5-41c4-a1da-773f173fd8ff', 45, N'Vileplume', 5, 13, 490, 75, 80, 85, 110, 90, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'10b84143-ddac-45b9-bc29-776a578500c3', 460, N'AbomasnowMega Abomasnow', 5, 8, 594, 90, 132, 105, 132, 105, 30, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e304fc77-cfe6-4248-b7bf-77e703023392', 22, N'Fearow', 12, 18, 442, 65, 90, 65, 61, 61, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a7167976-0545-4069-8c80-79b2c16acc11', 719, N'DiancieMega Diancie', 10, 14, 700, 50, 160, 110, 160, 110, 110, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ca62d158-e1a0-4198-bbf9-79f26a1392c0', 284, N'Masquerain', 11, 18, 414, 70, 60, 62, 80, 82, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'22215e66-68e7-453f-82e7-7aa2ee8bf3e1', 721, N'Volcanion', 16, 2, 600, 80, 110, 120, 130, 90, 70, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'967a3981-e102-41eb-8e30-7ab29b059ac3', 215, N'Sneasel', 3, 8, 430, 55, 95, 55, 35, 75, 115, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a2da7107-ec1d-4f80-aebf-7b1d1a14e53f', 116, N'Horsea', 2, NULL, 295, 30, 40, 70, 70, 25, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'71b2a94f-b7bb-4b39-8220-7bbbcd29667b', 50, N'Diglett', 6, NULL, 265, 10, 55, 25, 35, 45, 95, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'28ba0c1a-5b4a-4a50-bd55-7bef1908f322', 303, N'MawileMega Mawile', 17, 14, 480, 50, 105, 125, 55, 95, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b1b2ec38-7b0b-43b9-b4a5-7d02797548e4', 404, N'Luxio', 9, NULL, 363, 60, 85, 49, 60, 49, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9d671ef1-0e1b-42c0-947e-7d1fa9d0d592', 653, N'Fennekin', 16, NULL, 307, 40, 45, 40, 62, 60, 60, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4fcdf088-92cd-4d8c-a929-7d8269240c7a', 202, N'Wobbuffet', 7, NULL, 405, 190, 33, 58, 33, 58, 33, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b465e1f8-162e-4407-895b-7db646e44bd2', 491, N'Darkrai', 3, NULL, 600, 70, 90, 90, 135, 90, 125, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3395e9db-2c55-49e8-81b3-7dd1421252b0', 409, N'Rampardos', 10, NULL, 495, 97, 165, 60, 65, 50, 58, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'81f82988-7559-4263-9118-7e0c56c3b692', 496, N'Servine', 5, NULL, 413, 60, 60, 75, 60, 75, 83, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'40269031-af45-4e6a-b016-7e30b6751aa9', 633, N'Deino', 3, 4, 300, 52, 65, 50, 45, 50, 38, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'064ef727-78c7-46b8-9039-7e3d510562f7', 156, N'Quilava', 16, NULL, 405, 58, 64, 58, 80, 65, 80, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4eb556f8-7d50-4165-a851-7e772e7f741b', 152, N'Chikorita', 5, NULL, 318, 45, 49, 65, 49, 65, 45, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5efb141e-607c-4771-84bb-7f126037b048', 233, N'Porygon2', 12, NULL, 515, 85, 80, 90, 105, 95, 60, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cc6f3274-fc1a-4253-b884-7f378d016d0c', 83, N'Farfetch''d', 12, 18, 352, 52, 65, 55, 58, 62, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'41420c71-2cd9-4354-9a6b-7f5a997ea708', 57, N'Primeape', 1, NULL, 455, 65, 105, 60, 60, 70, 95, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fac057ff-8b12-4c61-986a-7f6c40aabf12', 30, N'Nidorina', 13, NULL, 365, 70, 62, 67, 55, 55, 56, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'53141f80-dbef-43c2-a667-7f6c7c09aa48', 551, N'Sandile', 6, 3, 292, 50, 72, 35, 35, 35, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'958ffb36-bbf0-4581-92ed-7fee0b4a37d5', 627, N'Rufflet', 12, 18, 350, 70, 83, 50, 37, 50, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'970eb3f1-4e81-4e2a-9de2-808940767965', 524, N'Roggenrola', 10, NULL, 280, 55, 75, 85, 25, 25, 15, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f0eef65a-0fa0-420a-bccd-80be24147586', 430, N'Honchkrow', 3, 18, 505, 100, 125, 52, 105, 52, 71, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7649d744-48ce-4f67-b7ad-80feab529177', 423, N'Gastrodon', 2, 6, 475, 111, 83, 68, 92, 82, 39, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dfcb6224-be47-4dbd-a78c-8150845fbbe9', 410, N'Shieldon', 10, 17, 350, 30, 42, 118, 42, 88, 30, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'53707e6c-84e9-4d77-962e-8166a88e5831', 564, N'Tirtouga', 2, 10, 355, 54, 78, 103, 53, 45, 22, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9df95aa0-3d8f-4536-8177-81ae31def236', 159, N'Croconaw', 2, NULL, 405, 65, 80, 80, 59, 63, 58, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bb0d0100-9207-40b9-9ac8-81b3adf53757', 162, N'Furret', 12, NULL, 415, 85, 76, 64, 45, 55, 90, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e7b5fd37-f6ef-4f62-b5a6-8285330bff6e', 155, N'Cyndaquil', 16, NULL, 309, 39, 52, 43, 60, 50, 65, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'faf806db-708d-4bae-8821-8286c3e5965d', 167, N'Spinarak', 11, 13, 250, 40, 60, 40, 40, 40, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7ecdf3c7-f7fc-4970-9f8f-82a1e3f9c90b', 569, N'Garbodor', 13, NULL, 474, 80, 95, 82, 60, 82, 75, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b01ecc55-532e-4304-b89d-83858dd43f07', 719, N'Diancie', 10, 14, 600, 50, 100, 150, 100, 150, 50, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'21d756d7-fea5-4794-971e-83e79efe6b4d', 568, N'Trubbish', 13, NULL, 329, 50, 50, 62, 40, 62, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8c1b6dd3-0672-407a-811b-84220bb6fb39', 273, N'Seedot', 5, NULL, 220, 40, 40, 50, 30, 30, 30, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0f92506a-f40f-421a-bc1d-8455519a11e8', 506, N'Lillipup', 12, NULL, 275, 45, 60, 45, 25, 45, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'326220f1-d67a-48f3-b917-84c504780286', 468, N'Togekiss', 15, 18, 545, 85, 50, 95, 120, 115, 80, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8b05855f-8c24-43a5-9c1e-85226bdcd1ab', 351, N'Castform', 12, NULL, 420, 70, 70, 70, 70, 70, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'172cf501-ad8c-460e-afe6-85b8a1b993b2', 55, N'Golduck', 2, NULL, 500, 80, 82, 78, 95, 80, 85, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5f671852-1487-4f6e-b497-85f0979c360f', 636, N'Larvesta', 11, 16, 360, 55, 85, 55, 50, 55, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bc911065-a3ba-4580-8ceb-860c767bed2b', 374, N'Beldum', 17, 7, 300, 40, 55, 80, 35, 60, 30, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'61a38298-3fff-4171-aae6-86263b4a137f', 111, N'Rhyhorn', 6, 10, 345, 80, 85, 95, 30, 30, 25, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'04c2121d-92ac-481b-95e9-863bce859331', 381, N'LatiosMega Latios', 4, 7, 700, 80, 130, 100, 160, 120, 110, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'917de4b8-aa22-45fd-8288-8645a886abc2', 610, N'Axew', 4, NULL, 320, 46, 87, 60, 30, 40, 57, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'218bdd85-bf6b-42a2-8173-8691b3b5cd2f', 207, N'Gligar', 6, 18, 430, 65, 75, 105, 35, 65, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f97df4a7-c4ae-4067-b74b-86cd9efe2469', 640, N'Virizion', 5, 1, 580, 91, 90, 72, 90, 129, 108, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1933eb4e-1c29-4f82-8804-87161574b10f', 407, N'Roserade', 5, 13, 515, 60, 70, 65, 125, 105, 90, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6fbec9e2-04b8-4b6e-88c2-872169293b24', 142, N'AerodactylMega Aerodactyl', 10, 18, 615, 80, 135, 85, 70, 95, 150, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2301265a-5b53-432d-b964-883886282fe8', 144, N'Articuno', 8, 18, 580, 90, 85, 100, 95, 125, 85, 1, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5543d9da-88ba-4302-a3ea-88938988f773', 477, N'Dusknoir', 15, NULL, 525, 45, 100, 135, 65, 135, 45, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f74e5be0-f6f9-44db-b3ba-88ea55726543', 230, N'Kingdra', 2, 4, 540, 75, 95, 95, 95, 95, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1f33cae2-1d40-4c39-9231-88f28ab972e5', 78, N'Rapidash', 16, NULL, 500, 65, 100, 70, 80, 80, 105, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'835e2369-4158-4311-8abe-88f5902212f1', 665, N'Spewpa', 11, NULL, 213, 45, 22, 60, 27, 30, 29, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c15d5118-bf07-4c65-8c18-8910df96e734', 696, N'Tyrunt', 10, 4, 362, 58, 89, 77, 45, 45, 48, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8b9ca259-78e7-405a-812f-8920a26eb4d8', 588, N'Karrablast', 11, NULL, 315, 50, 75, 45, 40, 45, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f5739c27-2f37-4822-a7f2-89be2f0bb275', 310, N'Manectric', 9, NULL, 475, 70, 75, 60, 105, 60, 105, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0fb5b3a3-8a44-4b68-a5be-8a0755d35886', 655, N'Delphox', 16, 7, 534, 75, 69, 72, 114, 100, 104, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3ede429d-0c2a-4262-a235-8a21c7fdbeb2', 456, N'Finneon', 2, NULL, 330, 49, 49, 56, 49, 61, 66, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3dc71c57-d4d8-4ff8-8b54-8a852f5144db', 565, N'Carracosta', 2, 10, 495, 74, 108, 133, 83, 65, 32, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'95e57dfb-0cbb-46bd-9d66-8c697883a246', 181, N'AmpharosMega Ampharos', 9, 4, 610, 90, 95, 105, 165, 110, 45, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fa894045-5ead-45d8-a0b9-8d35263be7a4', 339, N'Barboach', 2, 6, 288, 50, 48, 43, 46, 41, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'41ff7473-98df-4b7b-9cf7-8d8065fc3145', 168, N'Ariados', 11, 13, 390, 70, 90, 70, 60, 60, 40, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6d6a93de-d751-4bb6-9e53-8e54c345028d', 367, N'Huntail', 2, NULL, 485, 55, 104, 105, 94, 75, 52, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8ad840ca-c9cb-48d2-b1f0-8f14686455ec', 315, N'Roselia', 5, 13, 400, 50, 60, 45, 100, 80, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f50e04fe-5275-4286-9e3c-8f197d548a2b', 449, N'Hippopotas', 6, NULL, 330, 68, 72, 78, 38, 42, 32, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cae80bbb-4b3d-4851-b746-8f58486c044d', 332, N'Cacturne', 5, 3, 475, 70, 115, 60, 115, 60, 55, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'faa6c6f1-e3c4-4c3c-b429-90e4f998b260', 213, N'Shuckle', 11, 10, 505, 20, 10, 230, 10, 230, 5, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'be8bd5df-4831-4df9-a645-910fe08b70cb', 401, N'Kricketot', 11, NULL, 194, 37, 25, 41, 25, 41, 25, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ef4b7709-d0c3-4775-a7dc-912bb6211954', 253, N'Grovyle', 5, NULL, 405, 50, 65, 45, 85, 65, 95, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9c861e69-f7c8-42ba-aea4-915f5d68156e', 138, N'Omanyte', 10, 2, 355, 35, 40, 100, 90, 55, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'46ef8504-30ff-49b8-8615-91b4e7c2d8fc', 130, N'Gyarados', 2, 18, 540, 95, 125, 79, 60, 100, 81, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5009e697-2ddd-46c7-a9d8-91e616176e59', 297, N'Hariyama', 1, NULL, 474, 144, 120, 60, 40, 60, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4db73812-12a2-48ce-8fe5-921c0b18ee23', 179, N'Mareep', 9, NULL, 280, 55, 40, 40, 65, 45, 35, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd1f57f4c-0e25-4556-82a4-92b0b16401b1', 328, N'Trapinch', 6, NULL, 290, 45, 100, 45, 45, 45, 10, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'40893681-849e-451c-ae9e-936113f952bf', 641, N'TornadusIncarnate Forme', 18, NULL, 580, 79, 115, 70, 125, 80, 111, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6a90e4f1-637b-47ad-95e5-93e688eba88c', 376, N'Metagross', 17, 7, 600, 80, 135, 130, 95, 90, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd3bf935e-64b6-4db6-b9f9-94c571b2dcdd', 377, N'Regirock', 10, NULL, 580, 80, 100, 200, 50, 100, 50, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'124b4868-a06a-4d53-aa4b-951acffef0ed', 539, N'Sawk', 1, NULL, 465, 75, 125, 75, 30, 75, 85, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e7ce550d-0c26-418b-ad76-9565bf56a589', 560, N'Scrafty', 3, 1, 488, 65, 90, 115, 45, 115, 58, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4a9c2500-1366-473f-9915-95d22889c4db', 7, N'Squirtle', 2, NULL, 314, 44, 48, 65, 50, 64, 43, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a205df29-b9c7-4686-9b66-95f9c59b5f47', 622, N'Golett', 6, 16, 303, 59, 74, 50, 35, 50, 35, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'81a176fc-2e56-41d9-9c2b-96b67045eb1c', 343, N'Baltoy', 6, 7, 300, 40, 40, 55, 40, 70, 55, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'750d3123-4641-4d29-b2fd-9702ffa53b99', 513, N'Pansear', 16, NULL, 316, 50, 53, 48, 53, 48, 64, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8a65bfad-6cad-48d1-bd60-979cf6a3933c', 5, N'Charmeleon', 16, NULL, 405, 58, 64, 58, 80, 65, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5e4ae2b9-f734-410b-88cf-97e5191ea9fe', 615, N'Cryogonal', 8, NULL, 485, 70, 50, 30, 95, 135, 105, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'469e4a23-f3d9-4945-892e-982ce7363ec4', 53, N'Persian', 12, NULL, 440, 65, 70, 60, 65, 65, 115, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a7feca47-5692-4bdc-9763-983eb5c55b7e', 23, N'Ekans', 13, NULL, 288, 35, 60, 44, 40, 54, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'16d0e0f8-110a-4c0d-b6e8-987ffb074980', 248, N'Tyranitar', 10, 3, 600, 100, 134, 110, 95, 100, 61, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'99613fc1-5292-4a08-bcb1-98a1dc842500', 67, N'Machoke', 1, NULL, 405, 80, 100, 70, 50, 60, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'144fcd7e-2fe0-4652-8533-98e77117a35d', 327, N'Spinda', 12, NULL, 360, 60, 60, 60, 60, 60, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4ffe6d18-0538-44ee-b452-990ba699186c', 183, N'Marill', 2, 14, 250, 70, 20, 50, 20, 50, 40, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fb0556d7-335e-4214-ad4f-993c0e8e69db', 17, N'Pidgeotto', 12, 18, 349, 63, 60, 55, 50, 50, 71, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2c1c8d75-56a8-409a-830e-99f6e2a3fa59', 254, N'SceptileMega Sceptile', 5, 4, 630, 70, 110, 75, 145, 85, 145, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f3c8299f-d4ec-4a1e-a612-9a622b82a254', 479, N'Rotom', 9, 16, 440, 50, 50, 77, 95, 77, 91, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ba30dc39-e354-4ed9-ba4e-9a88d09effc0', 376, N'MetagrossMega Metagross', 17, 7, 700, 80, 145, 150, 105, 110, 110, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'56f63cf3-a8e9-46fd-9b93-9b16686c6720', 68, N'Machamp', 1, NULL, 505, 90, 130, 80, 65, 85, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'27dd198d-333e-4679-8887-9b20aee9c087', 557, N'Dwebble', 11, 10, 325, 50, 65, 85, 35, 35, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b1cd132b-0eeb-41d8-a495-9b9df1953cf9', 399, N'Bidoof', 12, NULL, 250, 59, 45, 40, 35, 40, 31, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c6323adf-899e-48e3-8769-9c7b0197a781', 523, N'Zebstrika', 9, NULL, 497, 75, 100, 63, 80, 63, 116, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e2339a52-fa7f-44a9-a55b-9cf0af9cfe5c', 718, N'Zygarde50% Forme', 4, 6, 600, 108, 100, 121, 81, 95, 95, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'87bf78ae-80b5-4d60-8c80-9d1ae012bfd5', 390, N'Chimchar', 16, NULL, 309, 44, 58, 44, 58, 44, 61, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd59f63aa-e6c9-4e0c-a017-9d2bc5494d5b', 220, N'Swinub', 8, 6, 250, 50, 50, 40, 30, 30, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cdfbd3cb-df0a-4f79-8940-9df82fa9e143', 413, N'WormadamPlant Cloak', 11, 5, 424, 60, 59, 85, 79, 105, 36, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'41229219-e7c9-4382-8af1-9e0d49f3c95c', 26, N'Raichu', 9, NULL, 485, 60, 90, 55, 90, 80, 110, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b58353c4-039c-401e-ab52-9e4169dd3e4d', 257, N'BlazikenMega Blaziken', 16, 1, 630, 80, 160, 80, 130, 80, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8a00931c-3177-4cfb-aea9-9e68b4c93ef2', 196, N'Espeon', 7, NULL, 525, 65, 65, 60, 130, 95, 110, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c198860c-576e-4e82-a7b2-9e6e919e6504', 309, N'Electrike', 9, NULL, 295, 40, 45, 40, 65, 40, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b64118ec-5a57-4fd5-8d3f-9e6f6239e5ef', 662, N'Fletchinder', 16, 18, 382, 62, 73, 55, 56, 52, 84, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6b94b26d-9fca-4a78-8cd3-9ea5d607d90d', 418, N'Buizel', 2, NULL, 330, 55, 65, 35, 60, 30, 85, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'643083f2-1d99-447f-980c-9ef92474a005', 40, N'Wigglytuff', 12, 14, 435, 140, 70, 45, 85, 50, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6724a709-c92a-41aa-8810-9efaee77af7c', 298, N'Azurill', 12, 14, 190, 50, 20, 40, 20, 40, 20, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2b3c29b9-1f73-4474-8250-a04e2990af69', 618, N'Stunfisk', 6, 9, 471, 109, 66, 84, 81, 99, 32, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e7e80760-bd24-4206-9f61-a0b4c9b90740', 572, N'Minccino', 12, NULL, 300, 55, 50, 40, 40, 40, 75, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a5eeca2b-a8b3-4f01-bbd6-a0e75ee7d392', 64, N'Kadabra', 7, NULL, 400, 40, 35, 30, 120, 70, 105, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5cbf46ad-7e02-4f7d-8c9d-a16382c4e678', 236, N'Tyrogue', 1, NULL, 210, 35, 35, 35, 35, 35, 35, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0d8c4faf-4f08-4747-9dab-a198537990f2', 360, N'Wynaut', 7, NULL, 260, 95, 23, 48, 23, 48, 23, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'252896a6-a8c5-417b-b363-a1c839f38fc4', 499, N'Pignite', 16, 1, 418, 90, 93, 55, 70, 55, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'025a9047-ee75-4d8f-8530-a1e1bca0deb3', 542, N'Leavanny', 11, 5, 500, 75, 103, 80, 70, 80, 92, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'59a5c75a-0037-4169-9337-a209bdcd61b4', 383, N'Groudon', 6, NULL, 670, 100, 150, 140, 100, 90, 90, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fad79f8a-b68e-4f18-b752-a24d90cd27e6', 212, N'ScizorMega Scizor', 11, 17, 600, 70, 150, 140, 65, 100, 75, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2122d2b2-e584-4383-a8ff-a2553743d7aa', 350, N'Milotic', 2, NULL, 540, 95, 60, 79, 100, 125, 81, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e0c3eda4-79c5-4a77-9289-a26c46d62de6', 261, N'Poochyena', 3, NULL, 220, 35, 55, 35, 30, 30, 35, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'04803b75-a07a-429b-ade0-a2788d56bcd1', 268, N'Cascoon', 11, NULL, 205, 50, 35, 55, 25, 25, 15, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'457d1b3e-3022-4469-befd-a380927092ec', 114, N'Tangela', 5, NULL, 435, 65, 55, 115, 100, 40, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4d889dfa-29ac-4bef-8d04-a3e5a89685df', 575, N'Gothorita', 7, NULL, 390, 60, 45, 70, 75, 85, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd316846e-3b0b-4228-90da-a3faccfe8e39', 103, N'Exeggutor', 5, 7, 520, 95, 95, 85, 125, 65, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd6f0884b-3fe1-4711-ad8e-a40f589847b0', 448, N'Lucario', 1, 17, 525, 70, 110, 70, 115, 70, 90, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ff0ea6c3-1c4c-439e-a4c5-a42a533e8c4c', 27, N'Sandshrew', 6, NULL, 300, 50, 75, 85, 20, 30, 40, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'12caf6a8-dcdf-437b-9854-a50da774c58c', 117, N'Seadra', 2, NULL, 440, 55, 65, 95, 95, 45, 85, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b7d748ae-f420-4a43-aeff-a544fac96c83', 395, N'Empoleon', 2, 17, 530, 84, 86, 88, 111, 101, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2bd6d51d-b8f4-49ef-a943-a5f500cd79c9', 128, N'Tauros', 12, NULL, 490, 75, 100, 95, 40, 70, 110, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6ad26427-6c78-46fd-8a9b-a6baad13363a', 368, N'Gorebyss', 2, NULL, 485, 55, 84, 105, 114, 75, 52, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd99455bc-3434-40a8-9e80-a71b4813d4fa', 500, N'Emboar', 16, 1, 528, 110, 123, 65, 100, 65, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0981a49c-93ac-464b-903f-a73a05012f09', 623, N'Golurk', 6, 16, 483, 89, 124, 80, 55, 80, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ee98d50e-5f31-422d-8087-a843e258e83a', 495, N'Snivy', 5, NULL, 308, 45, 45, 55, 45, 55, 63, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'55abc709-915d-4eaf-a41d-a87ee6aab618', 99, N'Kingler', 2, NULL, 475, 55, 130, 115, 50, 50, 75, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'63e6e28c-d99c-4144-816d-a8eeadf9674c', 244, N'Entei', 16, NULL, 580, 115, 115, 85, 90, 75, 100, 2, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'272ce685-2055-4525-8804-a8f632eac1f7', 80, N'SlowbroMega Slowbro', 2, 7, 590, 95, 75, 180, 130, 80, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2d7bde93-663e-4b40-bfac-a984ecaf457e', 337, N'Lunatone', 10, 7, 440, 70, 55, 65, 95, 85, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b5b0a0b7-9b9c-4950-bb79-aa54b6e41090', 463, N'Lickilicky', 12, NULL, 515, 110, 85, 95, 80, 95, 50, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8128b15b-314d-439e-a030-aac2a1a3eb00', 59, N'Arcanine', 16, NULL, 555, 90, 110, 80, 100, 80, 95, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'708fb1d6-278c-4125-a451-ab1cba0ca6c5', 37, N'Vulpix', 16, NULL, 299, 38, 41, 40, 50, 65, 65, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4fc7ab60-49bc-4641-9969-ab55d4b0bfc6', 12, N'Butterfree', 11, 18, 395, 60, 45, 50, 90, 80, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd6395a1a-ac5e-4da2-ac1b-abb7fbfd5c4a', 378, N'Regice', 8, NULL, 580, 80, 50, 100, 100, 200, 50, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4829058c-9a15-48ad-a02f-abd42cee0361', 225, N'Delibird', 8, 18, 330, 45, 55, 45, 65, 45, 75, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1e92f261-8f49-48ad-8992-ac44afe3a0c8', 566, N'Archen', 10, 18, 401, 55, 112, 45, 74, 45, 70, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5494d410-9f58-4cd2-83f9-ac4cb4c59f5d', 234, N'Stantler', 12, NULL, 465, 73, 95, 62, 85, 65, 85, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4173c872-c63e-48d6-9ec3-ace3c4c0efdc', 438, N'Bonsly', 10, NULL, 290, 50, 80, 95, 10, 45, 10, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'278f439d-1ea3-439b-a0cc-acf91369c1d1', 371, N'Bagon', 4, NULL, 300, 45, 75, 60, 40, 30, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bd6044f9-2938-47e6-a2e7-ad75454e6328', 161, N'Sentret', 12, NULL, 215, 35, 46, 34, 35, 45, 20, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'13285be8-9e1f-4578-86a2-ad8c7aa06abb', 545, N'Scolipede', 11, 13, 485, 60, 100, 89, 55, 69, 112, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f9571515-e7eb-429e-9c65-adeb37db101c', 6, N'CharizardMega Charizard Y', 16, 18, 634, 78, 104, 78, 159, 115, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'708764c2-d5ee-4004-9142-ae089779658c', 36, N'Clefable', 15, NULL, 483, 95, 70, 73, 95, 90, 60, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'acba9e8a-aa84-4a20-a419-ae5b3722114a', 63, N'Abra', 7, NULL, 310, 25, 20, 15, 105, 55, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b913489-4617-4cd8-9ed4-ae69dfa43329', 287, N'Slakoth', 12, NULL, 280, 60, 60, 60, 35, 35, 30, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'53cd582c-fc0f-4687-8f38-ae919a487b6c', 459, N'Snover', 5, 8, 334, 60, 62, 50, 62, 60, 40, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b77c804b-39b9-4439-bd7c-af62bfc1c412', 163, N'Hoothoot', 12, 18, 262, 60, 30, 30, 36, 56, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b5f3a48-1dd5-4fa5-a4de-af734371c8da', 173, N'Cleffa', 15, NULL, 218, 50, 25, 28, 45, 55, 15, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2093b79b-11e7-4e7d-85b7-af8f8af7b4a5', 392, N'Infernape', 16, 1, 534, 76, 104, 71, 104, 71, 108, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f51190d7-3af5-4668-ad96-b0b6cb988811', 720, N'HoopaHoopa Confined', 7, 16, 600, 80, 110, 60, 150, 130, 70, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'eb1fdc68-4d94-4f32-93b8-b0fa8dd7fb60', 178, N'Xatu', 7, 18, 470, 65, 75, 70, 95, 70, 95, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cd44e887-0bc1-47b1-a173-b16733cda155', 646, N'Kyurem', 4, 8, 660, 125, 130, 90, 130, 90, 95, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1a75a223-fce2-46f2-b752-b175292ffa45', 135, N'Jolteon', 9, NULL, 525, 65, 65, 60, 110, 95, 130, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'314b34c5-e67f-474a-b7ee-b19862377d4a', 625, N'Bisharp', 3, 17, 490, 65, 125, 100, 60, 70, 70, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'83bbde03-f276-4372-93ba-b2e15b2a0dc4', 642, N'ThundurusTherian Forme', 9, 18, 580, 79, 105, 70, 145, 80, 101, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4947abd5-27a3-4f0d-8c21-b2e7e94c0d2b', 348, N'Armaldo', 10, 11, 495, 75, 125, 100, 70, 80, 45, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8196298b-6387-4c34-8c18-b32fc1efa5f1', 87, N'Dewgong', 2, 8, 475, 90, 70, 80, 70, 95, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3c7f75aa-45ff-455e-888c-b388e01b1cca', 621, N'Druddigon', 4, NULL, 485, 77, 120, 90, 60, 90, 48, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd76176e3-a336-4293-8883-b3a9deed02e0', 257, N'Blaziken', 16, 1, 530, 80, 120, 70, 110, 70, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'53a99299-610c-42d6-ae96-b3adaca28df3', 700, N'Sylveon', 15, NULL, 525, 95, 65, 65, 110, 130, 60, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2045eb02-3b4b-408e-898d-b44231fd86a2', 338, N'Solrock', 10, 7, 440, 70, 95, 85, 55, 65, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'be50726d-f022-4232-8716-b48c73294c6d', 497, N'Serperior', 5, NULL, 528, 75, 75, 95, 75, 95, 113, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a000e7f7-5f2f-47d8-b72c-b4ad02897884', 286, N'Breloom', 5, 1, 460, 60, 130, 80, 60, 60, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bdeffa1c-1a7f-4914-8876-b4d322f0bbe6', 669, N'Flabébé', 15, NULL, 303, 44, 38, 39, 61, 79, 42, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6ea31cff-8f89-4082-9739-b5863b47926f', 663, N'Talonflame', 16, 18, 499, 78, 81, 71, 74, 69, 126, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd351e23d-b89f-4ad8-9e4b-b5ceecafc085', 530, N'Excadrill', 6, 17, 508, 110, 135, 60, 50, 65, 88, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'21256fac-1d62-49a1-9ace-b6b34e6342b1', 675, N'Pangoro', 1, 3, 495, 95, 124, 78, 69, 71, 58, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5830aa0d-733b-40db-a824-b6c646285cc8', 717, N'Yveltal', 3, 18, 680, 126, 131, 95, 131, 98, 99, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3542778d-de47-4901-93fc-b7890801fc11', 426, N'Drifblim', 15, 18, 498, 150, 80, 44, 90, 54, 80, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f2c534f0-89ef-479a-990f-b797ac0cd11b', 359, N'AbsolMega Absol', 3, NULL, 565, 65, 150, 60, 115, 60, 115, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e437a152-bb5c-4f7d-916c-b7e01e9ac4b8', 321, N'Wailord', 2, NULL, 500, 170, 90, 45, 90, 45, 60, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'86ebcc19-1084-4aa8-a6d8-b8333e10f7c1', 519, N'Pidove', 12, 18, 264, 50, 55, 50, 36, 30, 43, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f43cba09-e439-46ce-a857-b8a00d090f8c', 62, N'Poliwrath', 2, 1, 510, 90, 95, 95, 70, 90, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'17fce7d4-bc8d-4b0a-ab3b-b8dadb68a4e0', 436, N'Bronzor', 17, 7, 300, 57, 24, 86, 24, 86, 23, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'81a9c7a0-24c9-4d80-bc3c-ba0fead1d661', 219, N'Magcargo', 16, 10, 410, 50, 50, 120, 80, 80, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd50704d9-00ef-4439-9833-ba576123d753', 49, N'Venomoth', 11, 13, 450, 70, 65, 60, 90, 75, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'414328a2-b02e-4cb8-a574-ba793ee1d60b', 79, N'Slowpoke', 2, 7, 315, 90, 65, 65, 40, 40, 15, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'38f5c412-e564-4afd-a8c1-bab6f2e8f210', 602, N'Tynamo', 9, NULL, 275, 35, 55, 40, 45, 40, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd07201d3-2974-4ad8-9089-bba3a911f2eb', 228, N'Houndour', 3, 16, 330, 45, 60, 30, 80, 50, 65, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aa5d7b2a-139e-4571-a11e-bbf4175618aa', 479, N'RotomFrost Rotom', 9, 8, 520, 50, 65, 107, 105, 107, 86, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'61325851-e7f1-4ca6-a0c1-bc1571f41cc4', 620, N'Mienshao', 1, NULL, 510, 65, 125, 60, 95, 60, 105, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'66b3e5c9-64a7-458d-9cf1-bc5ccb533519', 281, N'Kirlia', 7, 14, 278, 38, 35, 35, 65, 55, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'94fb7a6d-b2bb-4f1f-aab7-bca6de9ac4fe', 222, N'Corsola', 2, 10, 380, 55, 55, 85, 65, 85, 35, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'12d140ad-3c81-405c-8006-bcb264a0d1a1', 269, N'Dustox', 11, 13, 385, 60, 50, 70, 50, 90, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0a75dbf6-49be-49df-9fd4-bcd55b2dcbba', 18, N'Pidgeot', 12, 18, 479, 83, 80, 75, 70, 70, 101, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3829004d-9c37-43a0-a87d-bce8368014d9', 695, N'Heliolisk', 9, 12, 481, 62, 55, 52, 109, 94, 109, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1018c017-cc8a-42e2-a64f-bd315a068a40', 454, N'Toxicroak', 13, 1, 490, 83, 106, 65, 86, 65, 85, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8f28c953-0f7f-4922-8e68-bdc006f90f71', 195, N'Quagsire', 2, 6, 430, 95, 85, 85, 65, 65, 35, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'03d99376-e3d0-4804-900b-bddf4858810c', 641, N'TornadusTherian Forme', 18, NULL, 580, 79, 100, 80, 110, 90, 121, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dcf618e3-0acc-4e30-859d-be0fd4d718c1', 157, N'Typhlosion', 16, NULL, 534, 78, 84, 78, 109, 85, 100, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1d92f8e9-2ffb-4325-a9b7-be189a5f4627', 187, N'Hoppip', 5, 18, 250, 35, 35, 40, 35, 55, 50, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'efde97d8-b807-41bc-8fc9-be574828afd6', 259, N'Marshtomp', 2, 6, 405, 70, 85, 70, 60, 70, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'4051465b-c8fc-44f1-a765-be68fb59c25f', 480, N'Uxie', 7, NULL, 580, 75, 75, 130, 75, 130, 95, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'60310de3-e4af-466f-a491-be95054226ef', 136, N'Flareon', 16, NULL, 525, 65, 130, 60, 95, 110, 65, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0ea09ca2-4557-497d-b223-bf0cfe4bd4ea', 349, N'Feebas', 2, NULL, 200, 20, 15, 20, 10, 55, 80, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1985b970-be21-4026-a18b-bf160b651726', 502, N'Dewott', 2, NULL, 413, 75, 75, 60, 83, 60, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'70385b0e-9a61-4c5f-93ad-bf855a2ca791', 503, N'Samurott', 2, NULL, 528, 95, 100, 85, 108, 70, 70, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f6fe8bc8-01c0-4ecd-a17a-bf8782f19523', 311, N'Plusle', 9, NULL, 405, 60, 50, 40, 85, 75, 95, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'07dead24-b90b-42aa-9611-bff7bdb030e7', 293, N'Whismur', 12, NULL, 240, 64, 51, 23, 51, 23, 28, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'eebc2169-3285-446d-aca0-c0c7cd406e28', 51, N'Dugtrio', 6, NULL, 405, 35, 80, 50, 50, 70, 120, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'31aa7fb3-7af4-4eb1-8c24-c100424cefe2', 185, N'Sudowoodo', 10, NULL, 410, 70, 100, 115, 30, 65, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5413ed27-3962-4c2c-8c57-c1b54bc8f7d5', 510, N'Liepard', 3, NULL, 446, 64, 88, 50, 88, 50, 106, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'df6a710b-bc52-4b1a-a2df-c1f20274b1b0', 188, N'Skiploom', 5, 18, 340, 55, 45, 50, 45, 65, 80, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'49ece938-8520-4ceb-aaf4-c21d09197024', 593, N'Jellicent', 2, 16, 480, 100, 60, 70, 85, 105, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6dc54448-bee3-46bf-bb0a-c22e6f11648c', 644, N'Zekrom', 4, 9, 680, 100, 150, 120, 120, 100, 90, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'96782e05-c71d-4ad5-883a-c235b3643186', 158, N'Totodile', 2, NULL, 314, 50, 65, 64, 44, 48, 43, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd57b222b-8578-4a8e-bef0-c2a84d4d7379', 46, N'Paras', 11, 5, 285, 35, 70, 55, 45, 55, 25, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fb804b21-266b-4140-a4b0-c2e8362f27db', 283, N'Surskit', 11, 2, 269, 40, 30, 32, 50, 52, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cd565167-3456-4e37-b642-c3fe18ba64d4', 358, N'Chimecho', 7, NULL, 425, 65, 50, 70, 95, 80, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f78ca6e7-ce18-4a75-9dce-c45ed5bb5482', 467, N'Magmortar', 16, NULL, 540, 75, 95, 67, 125, 95, 83, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bcfa17ac-f01a-495f-97e6-c52ccdfde8b9', 364, N'Sealeo', 8, 2, 410, 90, 60, 70, 75, 70, 45, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b119d139-8eb2-4ffd-921e-c54060fce240', 238, N'Smoochum', 8, 7, 305, 45, 30, 15, 85, 65, 65, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fca96275-933c-4bd2-8682-c561feadbcea', 32, N'Nidoran♂', 13, NULL, 273, 46, 57, 40, 40, 40, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7935b11e-6ccd-4f66-ace8-c588b454231a', 525, N'Boldore', 10, NULL, 390, 70, 105, 105, 50, 40, 20, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b4b00144-7216-45a7-8b59-c5d9b0d6ef10', 384, N'Rayquaza', 4, 18, 680, 105, 150, 90, 150, 90, 95, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f597c345-bf08-4bde-a245-c5f16c516e60', 555, N'DarmanitanZen Mode', 16, 7, 540, 105, 30, 105, 140, 105, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7dcdf8c9-7f01-43f2-88ee-c62e712f4d69', 492, N'ShayminSky Forme', 5, 18, 600, 100, 103, 75, 120, 75, 127, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'66a60f00-ef88-4682-a2ba-c67ea840b9d2', 444, N'Gabite', 4, 6, 410, 68, 90, 65, 50, 55, 82, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'034b11ef-994a-4b1c-8589-c685de819718', 66, N'Machop', 1, NULL, 305, 70, 80, 50, 35, 35, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'28031990-75c8-42fd-bb00-c6c5d8d3b37e', 373, N'Salamence', 4, 18, 600, 95, 135, 80, 110, 80, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c361ae2c-9486-4d3c-983f-c6dd3a2d45fb', 125, N'Electabuzz', 9, NULL, 490, 65, 83, 57, 95, 85, 105, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ca88ec48-656c-45b4-b29a-c7089ddd8fb0', 314, N'Illumise', 11, NULL, 400, 65, 47, 55, 73, 75, 85, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1fa6ad1f-aac4-4724-8a62-c781103e4d91', 616, N'Shelmet', 11, NULL, 305, 50, 40, 85, 40, 65, 25, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5faf83ac-121b-40ef-8046-c78e968722b5', 170, N'Chinchou', 2, 9, 330, 75, 38, 38, 56, 56, 67, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f4009964-7bd0-44db-b596-c7cc4419fac9', 702, N'Dedenne', 9, 14, 431, 67, 58, 57, 81, 67, 101, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ca77ee64-bac1-43ff-a927-c95101e2eacc', 15, N'Beedrill', 11, 13, 395, 65, 90, 40, 45, 80, 75, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'79064457-2e48-4f4e-ad67-ca422be66fea', 11, N'Metapod', 11, NULL, 205, 50, 20, 55, 25, 25, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bb8f82a5-c4d0-4297-8433-caa18e008b79', 18, N'PidgeotMega Pidgeot', 12, 18, 579, 83, 80, 80, 135, 80, 121, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'30ec9d10-4708-4a82-bb68-cafe83989c68', 124, N'Jynx', 8, 7, 455, 65, 50, 35, 115, 95, 95, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'cd37847d-bfd4-4b85-b121-cb639b068d61', 624, N'Pawniard', 3, 17, 340, 45, 85, 70, 40, 40, 60, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2e7ea955-b51d-461a-9b7f-cb93eacda786', 458, N'Mantyke', 2, 18, 345, 45, 20, 50, 60, 120, 50, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7f4c5daa-8c58-4e2d-9b9c-cba0683e5a93', 676, N'Furfrou', 12, NULL, 472, 75, 80, 60, 65, 90, 102, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9404473b-4346-4504-97e9-cc09e86a51ab', 707, N'Klefki', 17, 14, 470, 57, 80, 91, 80, 87, 75, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b5a0019-b56e-402a-857a-cc36530e6832', 208, N'Steelix', 17, 6, 510, 75, 85, 200, 55, 65, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0c4fa442-1685-46d0-b48e-cc41d5a92c14', 452, N'Drapion', 13, 3, 500, 70, 90, 110, 60, 75, 95, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8ac39d79-57dc-4ca1-9154-cc7d637a6e94', 619, N'Mienfoo', 1, NULL, 350, 45, 85, 50, 55, 50, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aec621fa-4282-44e1-aa20-cd3c8fa9d116', 652, N'Chesnaught', 5, 1, 530, 88, 107, 122, 74, 75, 64, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b26f3122-2f89-4af2-89f9-cdf50d7542c9', 387, N'Turtwig', 5, NULL, 318, 55, 68, 64, 45, 55, 31, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'72cab8a7-091e-4cc8-b5ba-ce3b5beb5715', 212, N'Scizor', 11, 17, 500, 70, 130, 100, 55, 80, 65, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2c1a6f19-f080-4702-85c8-ce4deedc3d04', 3, N'Venusaur', 5, 13, 525, 80, 82, 83, 100, 100, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5d7ee265-ed6a-4010-8b04-ce5d56924018', 336, N'Seviper', 13, NULL, 458, 73, 100, 60, 100, 60, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'17fafa60-aa2d-4bef-bca1-cf1ae13f7f30', 708, N'Phantump', 15, 5, 309, 43, 70, 48, 50, 60, 38, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'311fd076-b744-4d29-aaa8-cf861850a795', 651, N'Quilladin', 5, NULL, 405, 61, 78, 95, 56, 58, 57, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'318aced6-dc0e-4b56-b834-cfbc0a8464a0', 147, N'Dratini', 4, NULL, 300, 41, 64, 45, 50, 50, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c5380aff-dfc8-49b9-afd5-cff786222b2d', 304, N'Aron', 17, 10, 330, 50, 70, 100, 40, 40, 30, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'71265017-3358-407e-990e-d00f7c32afee', 181, N'Ampharos', 9, NULL, 510, 90, 75, 85, 115, 90, 55, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'88ed52d8-e1dd-44af-b604-d0de779133e5', 265, N'Wurmple', 11, NULL, 195, 45, 45, 35, 20, 30, 20, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dabef999-7e3f-41f1-944a-d0e89ddd7c47', 451, N'Skorupi', 13, 11, 330, 40, 50, 90, 30, 55, 65, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0ffa0070-32b1-4ba7-9149-d14e76d58b68', 470, N'Leafeon', 5, NULL, 525, 65, 110, 130, 60, 65, 95, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'86d0e49f-4f04-45a4-b1ab-d1f0461c041e', 679, N'Honedge', 17, 16, 325, 45, 80, 100, 35, 37, 28, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5ae14236-6314-4d60-91c6-d215a70afbcd', 473, N'Mamoswine', 8, 6, 530, 110, 130, 80, 70, 60, 80, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1ad97c5b-cf69-44e4-b67b-d3463de04f6a', 617, N'Accelgor', 11, NULL, 495, 80, 70, 40, 100, 60, 145, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'063057fe-8da9-4365-8c44-d36c6f446dfe', 643, N'Reshiram', 4, 16, 680, 100, 120, 100, 150, 120, 90, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a2790a0b-15c9-4256-9807-d4517b1251e3', 43, N'Oddish', 5, 13, 320, 45, 50, 55, 75, 65, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd23194fe-01b9-47e2-bf57-d4636a37261b', 291, N'Ninjask', 11, 18, 456, 61, 90, 45, 50, 50, 160, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'811dbe57-f1d3-4d33-8d9a-d49aa3aae7f4', 84, N'Doduo', 12, 18, 310, 35, 85, 45, 35, 35, 75, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e44ed6dd-260d-4c97-8c89-d4b5976c821e', 282, N'GardevoirMega Gardevoir', 7, 14, 618, 68, 85, 65, 165, 135, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7b35185e-29b6-4e1b-8ed0-d53ffba19215', 414, N'Mothim', 11, 18, 424, 70, 94, 50, 94, 50, 66, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd76933e3-c995-4602-85a6-d558a03a3c18', 417, N'Pachirisu', 9, NULL, 405, 60, 45, 70, 45, 90, 95, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ad4dc9a7-56d4-4e1f-9d7f-d57ad6c8c323', 16, N'Pidgey', 12, 18, 251, 40, 45, 40, 35, 35, 56, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd6c0e6be-36c4-4d44-8c18-d5b0f0081a52', 587, N'Emolga', 9, 18, 428, 55, 75, 60, 75, 60, 103, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'13a3f5f2-c19f-4700-bfaa-d5cd539ba430', 372, N'Shelgon', 4, NULL, 420, 65, 95, 100, 60, 50, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'061dbb77-eb97-41f7-b07f-d5cdbe3d13a8', 127, N'Pinsir', 11, NULL, 500, 65, 125, 100, 55, 70, 85, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2b27ceea-ae9f-42f0-a687-d65398af039f', 479, N'RotomHeat Rotom', 9, 16, 520, 50, 65, 107, 105, 107, 86, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7b7320c3-1273-4930-939c-d69e94fa9a9f', 439, N'Mime Jr.', 7, 14, 310, 20, 25, 45, 70, 90, 60, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6df671b1-c516-4cb5-aa7d-d722f48c4ef6', 425, N'Drifloon', 15, 18, 348, 90, 50, 34, 60, 44, 70, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'225ea673-ed5c-48f4-807a-d78852d16077', 382, N'KyogrePrimal Kyogre', 2, NULL, 770, 100, 150, 90, 180, 160, 90, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c44cbd3b-4f81-41b3-b1ec-d82a9351143d', 345, N'Lileep', 10, 5, 355, 66, 41, 77, 61, 87, 23, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3405e244-f75e-441f-a6d1-d93d9a425db1', 252, N'Treecko', 5, NULL, 310, 40, 45, 35, 65, 55, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'16490d98-8b60-4a79-b51b-d95ca76bd6fc', 713, N'Avalugg', 8, NULL, 514, 95, 117, 184, 44, 46, 28, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f91de91b-e76b-404d-ba5d-d99a8c88d7bf', 590, N'Foongus', 5, 13, 294, 69, 55, 45, 55, 55, 15, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bd2472e5-077d-49e1-a653-d9dd4a33fa0e', 76, N'Golem', 10, 6, 495, 80, 120, 130, 55, 65, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'09983ed0-4650-41fb-97aa-da0362386948', 667, N'Litleo', 16, 12, 369, 62, 50, 58, 73, 54, 72, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'14f3a454-a289-466a-8376-da84b24945cb', 74, N'Geodude', 10, 6, 300, 40, 80, 100, 30, 30, 20, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'32fd3a56-80ed-49ee-891e-db7b9b5f150c', 15, N'BeedrillMega Beedrill', 11, 13, 495, 65, 150, 40, 15, 80, 145, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ac9e2f0e-e7b4-4422-89d1-dbb9a627e944', 258, N'Mudkip', 2, NULL, 310, 50, 70, 50, 50, 50, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bc2083c5-a7ae-4797-b8c2-dbc2176af957', 82, N'Magneton', 9, 17, 465, 50, 60, 95, 120, 70, 70, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'68ef8574-0025-4d3e-a05d-dc7bc7fa832b', 121, N'Starmie', 2, 7, 520, 60, 75, 85, 100, 85, 115, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bf3478c8-3dcb-4c33-a9bf-dc95312bb178', 489, N'Phione', 2, NULL, 480, 80, 80, 80, 80, 80, 80, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd408d8cc-43a7-4886-a94d-de1e50f790f6', 638, N'Cobalion', 17, 1, 580, 91, 90, 129, 90, 72, 108, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'35ab7355-f28f-4bf6-bcd5-de9e4146dd24', 488, N'Cresselia', 7, NULL, 600, 120, 70, 120, 75, 130, 85, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd7426b71-6be3-4048-b1c2-dfc288659502', 647, N'KeldeoResolute Forme', 2, 1, 580, 91, 72, 90, 129, 90, 108, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c6da4c6e-952c-4cda-99e7-dfce69b323a5', 115, N'KangaskhanMega Kangaskhan', 12, NULL, 590, 105, 125, 100, 60, 100, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2a8bdb3c-d5f8-465a-b75f-e00e3be92540', 289, N'Slaking', 12, NULL, 670, 150, 160, 100, 95, 65, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ebabcebb-a8e5-41fa-ad45-e09ed54b1fa4', 509, N'Purrloin', 3, NULL, 281, 41, 50, 37, 50, 37, 66, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5f653cff-bd70-4ea3-bb6d-e150aafc18a1', 97, N'Hypno', 7, NULL, 483, 85, 73, 70, 73, 115, 67, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6e2ab905-9b8a-4423-908f-e1dd08e38d7d', 548, N'Petilil', 5, NULL, 280, 45, 35, 50, 70, 50, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0705875c-c0d9-4963-b128-e1f4c2524586', 648, N'MeloettaPirouette Forme', 12, 1, 600, 100, 128, 90, 77, 77, 128, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'daa6d3cb-1d0c-496d-a36e-e217b6a13d95', 421, N'Cherrim', 5, NULL, 450, 70, 60, 70, 87, 78, 85, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'600a2939-b94e-473b-bda8-e2a65225a496', 365, N'Walrein', 8, 2, 530, 110, 80, 90, 95, 90, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ad3a1fa8-d3d2-4f75-82ba-e2da4bf70934', 389, N'Torterra', 5, 6, 525, 95, 109, 105, 75, 85, 56, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3a271349-a304-4e04-9f64-e2ef50ef5bc9', 52, N'Meowth', 12, NULL, 290, 40, 45, 35, 40, 40, 90, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c3238f68-748d-4b84-8347-e3269b8cd058', 174, N'Igglybuff', 12, 14, 210, 90, 30, 15, 40, 20, 15, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ddc30cb5-399b-498b-8656-e3783f6b6f8f', 604, N'Eelektross', 9, NULL, 515, 85, 115, 80, 105, 80, 50, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ef05c1ea-a838-4d09-b069-e38c0f1351a8', 89, N'Muk', 13, NULL, 500, 105, 105, 75, 65, 100, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f4924bff-29b4-4ccc-85a6-e4178c541e4d', 391, N'Monferno', 16, 1, 405, 64, 78, 52, 78, 52, 81, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2926ea29-aef1-4bec-911a-e54d7e3e3725', 48, N'Venonat', 11, 13, 305, 60, 55, 50, 40, 55, 45, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ce6aa283-e2d7-4065-9b09-e586cea6dd02', 295, N'Exploud', 12, NULL, 490, 104, 91, 63, 91, 73, 68, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'32cc5e9f-bcdd-4a7f-8328-e6354b1549d4', 505, N'Watchog', 12, NULL, 420, 60, 85, 69, 60, 69, 77, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'52b63f7b-cb62-4816-9009-e65a264be9dc', 317, N'Swalot', 13, NULL, 467, 100, 73, 83, 73, 83, 55, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a0b19402-3db7-4c74-ad9c-e685db4d1452', 710, N'PumpkabooAverage Size', 15, 5, 335, 49, 66, 70, 44, 55, 51, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c69f4d9d-81da-443c-9b1c-e6c65e521d15', 85, N'Dodrio', 12, 18, 460, 60, 110, 70, 60, 60, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6d749ff9-fab5-402d-9f1c-e6caf0546a7c', 674, N'Pancham', 1, NULL, 348, 67, 82, 62, 46, 48, 43, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0474579d-e357-4776-b1c5-e7a9f5377806', 720, N'HoopaHoopa Unbound', 7, 3, 680, 80, 160, 60, 170, 130, 80, 6, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fb02fff9-f0e1-4838-b14b-e903156f1a0d', 330, N'Flygon', 6, 4, 520, 80, 100, 80, 80, 80, 100, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1a395bb0-cacb-4987-ab47-ea75f234a053', 476, N'Probopass', 10, 17, 525, 60, 55, 145, 75, 150, 40, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c17cde04-6bc8-4117-a6fc-ea78dc03adbd', 255, N'Torchic', 16, NULL, 310, 45, 60, 40, 70, 50, 45, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2ceb618f-8d83-4087-884a-ea7abd92d359', 96, N'Drowzee', 7, NULL, 328, 60, 48, 45, 43, 90, 42, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'15d11260-c4a5-4848-95ad-eaa61dc18ed5', 475, N'Gallade', 7, 1, 518, 68, 125, 65, 65, 115, 80, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8a5d3c1e-9c48-41ca-8cd3-eaebe0226443', 150, N'MewtwoMega Mewtwo X', 7, 1, 780, 106, 190, 100, 154, 100, 130, 1, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'af53a2cb-3d64-4e79-b351-eafefa00472c', 54, N'Psyduck', 2, NULL, 320, 50, 52, 48, 65, 50, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1b45006d-87ff-444a-b98f-eb31428b4c23', 659, N'Bunnelby', 12, NULL, 237, 38, 36, 38, 32, 36, 57, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'682b2449-8ae8-410d-978c-eb745b858bf9', 194, N'Wooper', 2, 6, 210, 55, 45, 45, 25, 25, 15, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a78236f6-732f-446c-aff2-ebc63e03acb1', 490, N'Manaphy', 2, NULL, 600, 100, 100, 100, 100, 100, 100, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'caad94bf-75d4-46b2-914e-ec5d7ff3734d', 485, N'Heatran', 16, 17, 600, 91, 90, 106, 130, 106, 77, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aee9489f-ed57-4c7d-99a5-ec63a4f718e4', 341, N'Corphish', 2, NULL, 308, 43, 80, 65, 50, 35, 35, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'574922ce-8ca1-497d-88c1-eca6df1a39fa', 266, N'Silcoon', 11, NULL, 205, 50, 35, 55, 25, 25, 15, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a214e1e0-dcf8-41b3-abfa-ecffe49697ca', 272, N'Ludicolo', 2, 5, 480, 80, 70, 70, 90, 100, 70, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ca1c45b2-9636-4097-b1db-ed063e96e23c', 582, N'Vanillite', 8, NULL, 305, 36, 50, 50, 65, 60, 44, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'898db79f-2852-4450-927e-edba66e6732f', 684, N'Swirlix', 15, NULL, 341, 62, 48, 66, 59, 57, 49, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bc032953-8f50-4274-83ff-edf4757d915b', 172, N'Pichu', 9, NULL, 205, 20, 40, 15, 35, 35, 60, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ddbf4e10-a109-4705-84bf-ee4dbba9342b', 711, N'GourgeistLarge Size', 15, 5, 494, 75, 95, 122, 58, 75, 69, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9bbd6788-4540-4fdd-9212-eea4dccde705', 531, N'AudinoMega Audino', 12, 14, 545, 103, 60, 126, 80, 126, 50, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2428c578-a93e-4efa-957b-eee344639e04', 65, N'Alakazam', 7, NULL, 500, 55, 50, 45, 135, 95, 120, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'02c528b9-5dec-4a2f-b564-ef7b16dd0efa', 687, N'Malamar', 3, 7, 482, 86, 92, 88, 68, 75, 73, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0196e355-57e7-45ce-85a2-efe451fe93be', 657, N'Frogadier', 2, NULL, 405, 54, 63, 52, 83, 56, 97, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'17b85b0e-0f3f-40df-8575-f03f8c88ba52', 154, N'Meganium', 5, NULL, 525, 80, 82, 100, 83, 100, 80, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'81329d29-a36d-47bf-a81c-f12ea20e645f', 579, N'Reuniclus', 7, NULL, 490, 110, 65, 75, 125, 85, 30, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'f268d727-d0da-464e-b368-f27b3c749e79', 699, N'Aurorus', 10, 8, 521, 123, 77, 72, 99, 92, 58, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'16228fec-824b-4110-a321-f2ff67efdb26', 8, N'Wartortle', 2, NULL, 405, 59, 63, 80, 65, 80, 58, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'bbdc9e20-8a06-4b10-97b1-f3bff1de9b8e', 573, N'Cinccino', 12, NULL, 470, 75, 95, 60, 65, 60, 115, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'28547467-b553-47d4-843b-f44267bd311b', 479, N'RotomFan Rotom', 9, 18, 520, 50, 65, 107, 105, 107, 86, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'ef2c1986-49a2-4ef4-aaa2-f45d81401634', 305, N'Lairon', 17, 10, 430, 60, 90, 140, 50, 50, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b73a3abf-efb7-411a-a16e-f51047439c70', 528, N'Swoobat', 7, 18, 425, 67, 57, 55, 77, 55, 114, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'26b95824-052d-4270-a786-f537de9e0aee', 153, N'Bayleef', 5, NULL, 405, 60, 62, 80, 63, 80, 60, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'aba6f0a0-5ca5-4f53-a3b2-f55a4ef74167', 180, N'Flaaffy', 9, NULL, 365, 70, 55, 55, 80, 60, 45, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1ed8ca0a-a100-4f7f-b5af-f6366b5ab976', 229, N'HoundoomMega Houndoom', 3, 16, 600, 75, 90, 90, 140, 90, 115, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'0412a933-6dc7-479d-8346-f646cac83c03', 594, N'Alomomola', 2, NULL, 470, 165, 75, 80, 40, 45, 65, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1de8af12-7183-46cb-a202-f64ea8c0c264', 645, N'LandorusIncarnate Forme', 6, 18, 600, 89, 125, 90, 115, 80, 101, 5, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2da409b3-41e9-4845-ba97-f6d48c98225a', 626, N'Bouffalant', 12, NULL, 490, 95, 110, 95, 40, 95, 55, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'12d0ba37-a27e-4943-aba9-f6ffea13390a', 680, N'Doublade', 17, 16, 448, 59, 110, 150, 45, 49, 35, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'1f3844e6-9634-46fb-9f5c-f72fc5784fd6', 312, N'Minun', 9, NULL, 405, 60, 40, 50, 75, 85, 95, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e5723be3-8a42-4360-8093-f73e9bda34b2', 151, N'Mew', 7, NULL, 600, 100, 100, 100, 100, 100, 100, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9d41ce33-5309-453b-a954-f78039800c50', 80, N'Slowbro', 2, 7, 490, 95, 75, 110, 100, 80, 30, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'078cbe10-b05b-4714-8bdf-f7a219ee5e03', 706, N'Goodra', 4, NULL, 600, 90, 100, 70, 110, 150, 80, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c45c4697-2c6a-4f40-9f28-f7b655a2e609', 227, N'Skarmory', 17, 18, 465, 65, 80, 140, 40, 70, 70, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd1cd4bdf-862f-4ac7-9edd-f8218be5bba6', 469, N'Yanmega', 11, 18, 515, 86, 76, 86, 116, 56, 95, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5775adf7-f73c-43b0-b13e-f821b975c4bb', 41, N'Zubat', 13, 18, 245, 40, 45, 35, 30, 40, 55, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'dbbddeb9-42a8-4184-b3d3-f8437f8deeae', 393, N'Piplup', 2, NULL, 314, 53, 51, 53, 61, 56, 40, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e1e773d0-cb50-4b22-8ecd-f857a71efd16', 347, N'Anorith', 10, 11, 355, 45, 95, 50, 40, 50, 75, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'd989eef5-aa31-4024-bfe9-f9c35d6fd18d', 581, N'Swanna', 2, 18, 473, 75, 87, 63, 87, 63, 98, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a798c986-efa5-4c80-874a-f9cdce15aad6', 191, N'Sunkern', 5, NULL, 180, 30, 30, 30, 30, 30, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'fa136c3f-35ae-4189-91ab-fa3f9c0f61c8', 446, N'Munchlax', 12, NULL, 390, 135, 85, 40, 40, 85, 5, 4, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'77770510-0e4b-43d2-8021-fa74ae4ffbc8', 379, N'Registeel', 17, NULL, 580, 80, 75, 150, 75, 150, 50, 3, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'7512bc4c-50ea-4391-b3aa-fabc87876d67', 558, N'Crustle', 11, 10, 475, 70, 95, 125, 65, 75, 45, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'398f578c-c58c-4c4c-9fee-fae50c837533', 300, N'Skitty', 12, NULL, 260, 50, 45, 45, 35, 35, 50, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'76fe3b41-ab2b-494e-9415-fb212de085e1', 150, N'Mewtwo', 7, NULL, 680, 106, 110, 90, 154, 90, 130, 1, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'b02afcc0-6000-4aa6-92dd-fbde54b4d6a4', 240, N'Magby', 16, NULL, 365, 45, 75, 37, 70, 55, 83, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'60dca34f-11a8-4495-8018-fbef918825a4', 104, N'Cubone', 6, NULL, 320, 50, 50, 95, 40, 50, 35, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'2cb1ef4a-d582-4fc5-8b87-fc3fbefde88c', 208, N'SteelixMega Steelix', 17, 6, 610, 75, 125, 230, 55, 95, 30, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'6119250f-9355-45be-8a67-fd4adcecd4f5', 481, N'Mesprit', 7, NULL, 580, 80, 105, 105, 105, 105, 80, 4, 1)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'a274e6d1-5085-4276-8352-fd58e36837a6', 119, N'Seaking', 2, NULL, 450, 80, 92, 65, 65, 80, 68, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'9a099588-5652-40b6-823b-fd6d51b7cd0a', 533, N'Gurdurr', 1, NULL, 405, 85, 105, 85, 40, 50, 40, 5, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'337a2f44-07a6-44f9-8f8c-fd6e2d17e664', 686, N'Inkay', 3, 7, 288, 53, 54, 53, 37, 46, 45, 6, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'10264ce7-9f36-49e2-be6f-fd6f97c83a0a', 280, N'Ralts', 7, 14, 198, 28, 25, 25, 45, 35, 40, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'e23a7b6f-bf74-4ead-8be9-fe5b706d1b8f', 267, N'Beautifly', 11, 18, 395, 60, 70, 50, 100, 50, 65, 3, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'c510f760-0a9e-47bb-b8b9-fe9985ce5e39', 92, N'Gastly', 15, 13, 310, 30, 35, 30, 100, 35, 80, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'3566a0b1-4e47-4ee1-ab0e-ff49e0af6275', 251, N'Celebi', 7, 5, 600, 100, 100, 100, 100, 100, 100, 2, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'5081e1b0-7d7f-4e43-b7d7-ff699b33e96a', 13, N'Weedle', 11, 13, 195, 40, 35, 30, 20, 20, 50, 1, 0)
GO
INSERT [dbo].[Pokemon] ([Id], [Number], [Name], [Type1], [Type2], [Total], [HP], [Attack], [Defense], [SpecialMoveAttack], [SpecialMoveDefense], [Speed], [Generation], [Legendary]) VALUES (N'8c4eb348-8635-4ed6-93ae-ffa058aba5f1', 517, N'Munna', 7, NULL, 292, 76, 25, 45, 67, 55, 24, 5, 0)
GO
SET IDENTITY_INSERT [dbo].[PokemonType] ON 
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (1, N'Fighting')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (2, N'Water')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (3, N'Dark')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (4, N'Dragon')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (5, N'Grass')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (6, N'Ground')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (7, N'Psychic')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (8, N'Ice')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (9, N'Electric')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (10, N'Rock')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (11, N'Bug')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (12, N'Normal')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (13, N'Poison')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (14, N'Fairy')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (15, N'Ghost')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (16, N'Fire')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (17, N'Steel')
GO
INSERT [dbo].[PokemonType] ([IdPokemonType], [Description]) VALUES (18, N'Flying')
GO
SET IDENTITY_INSERT [dbo].[PokemonType] OFF
GO
/****** Object:  Index [IX_Pokemon_Type1]    Script Date: 10/12/2021 11:36:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pokemon_Type1] ON [dbo].[Pokemon]
(
	[Type1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pokemon_Type2]    Script Date: 10/12/2021 11:36:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pokemon_Type2] ON [dbo].[Pokemon]
(
	[Type2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pokemon] ADD  CONSTRAINT [DF_Pokemon_Id]  DEFAULT (newsequentialid()) FOR [Id]
GO
ALTER TABLE [dbo].[Pokemon]  WITH CHECK ADD  CONSTRAINT [FK_Pokemon_PokemonType_Type1] FOREIGN KEY([Type1])
REFERENCES [dbo].[PokemonType] ([IdPokemonType])
GO
ALTER TABLE [dbo].[Pokemon] CHECK CONSTRAINT [FK_Pokemon_PokemonType_Type1]
GO
ALTER TABLE [dbo].[Pokemon]  WITH CHECK ADD  CONSTRAINT [FK_Pokemon_PokemonType_Type2] FOREIGN KEY([Type2])
REFERENCES [dbo].[PokemonType] ([IdPokemonType])
GO
ALTER TABLE [dbo].[Pokemon] CHECK CONSTRAINT [FK_Pokemon_PokemonType_Type2]
GO
USE [master]
GO
ALTER DATABASE [PokemonLibrary] SET  READ_WRITE 
GO
