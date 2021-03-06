﻿USE [master]
GO

/****** Object:  Database [FebraSoftDB]    Script Date: 09/06/2018 12:05:14 ******/
CREATE DATABASE [FebraSoftDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FebraSoftDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\FebraSoftDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FebraSoftDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\FebraSoftDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [FebraSoftDB] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FebraSoftDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [FebraSoftDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [FebraSoftDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [FebraSoftDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [FebraSoftDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [FebraSoftDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [FebraSoftDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [FebraSoftDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [FebraSoftDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [FebraSoftDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [FebraSoftDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [FebraSoftDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [FebraSoftDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [FebraSoftDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [FebraSoftDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [FebraSoftDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [FebraSoftDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [FebraSoftDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [FebraSoftDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [FebraSoftDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [FebraSoftDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [FebraSoftDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [FebraSoftDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [FebraSoftDB] SET RECOVERY FULL 
GO

ALTER DATABASE [FebraSoftDB] SET  MULTI_USER 
GO

ALTER DATABASE [FebraSoftDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [FebraSoftDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [FebraSoftDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [FebraSoftDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [FebraSoftDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [FebraSoftDB] SET QUERY_STORE = OFF
GO

USE [FebraSoftDB]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [FebraSoftDB] SET READ_WRITE 
GO