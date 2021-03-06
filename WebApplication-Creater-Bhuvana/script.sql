USE [master]
GO
/****** Object:  Database [DB-Bhuvana]    Script Date: 15/11/2018 07:35:10 ******/
CREATE DATABASE [DB-Bhuvana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB-Bhuvana', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB-Bhuvana.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB-Bhuvana_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB-Bhuvana_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB-Bhuvana] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB-Bhuvana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB-Bhuvana] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB-Bhuvana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB-Bhuvana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB-Bhuvana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB-Bhuvana] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB-Bhuvana] SET  MULTI_USER 
GO
ALTER DATABASE [DB-Bhuvana] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB-Bhuvana] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB-Bhuvana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB-Bhuvana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB-Bhuvana] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB-Bhuvana] SET QUERY_STORE = OFF
GO
USE [DB-Bhuvana]
GO
/****** Object:  Table [dbo].[BookingTransaction]    Script Date: 15/11/2018 07:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingTransaction](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EventID] [numeric](18, 0) NOT NULL,
	[CustomerID] [numeric](18, 0) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TranAmt] [numeric](18, 2) NOT NULL,
	[BankName] [varchar](100) NOT NULL,
	[AccountNo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15/11/2018 07:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Pwd] [nvarchar](10) NULL,
	[CompanyName] [nvarchar](150) NULL,
	[Tel] [varchar](15) NULL,
	[Mob] [varchar](15) NULL,
 CONSTRAINT [PK_TB1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 15/11/2018 07:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CusID] [numeric](18, 0) NOT NULL,
	[EventName] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[FromHour] [varchar](8) NULL,
	[ToHour] [varchar](8) NULL,
	[Paidstaus] [char](1) NULL,
	[Remarks] [varchar](200) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DB-Bhuvana] SET  READ_WRITE 
GO
