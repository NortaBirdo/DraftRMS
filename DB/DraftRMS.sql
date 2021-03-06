USE [master]
GO
/****** Object:  Database [DraftRMS]    Script Date: 17.05.2017 15:13:02 ******/
CREATE DATABASE [DraftRMS] ON  PRIMARY
( NAME = N'SraftRMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SraftRMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'SraftRMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SraftRMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DraftRMS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DraftRMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DraftRMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DraftRMS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DraftRMS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DraftRMS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DraftRMS] SET ARITHABORT OFF
GO
ALTER DATABASE [DraftRMS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DraftRMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DraftRMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DraftRMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DraftRMS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DraftRMS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DraftRMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DraftRMS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DraftRMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DraftRMS] SET  DISABLE_BROKER
GO
ALTER DATABASE [DraftRMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DraftRMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DraftRMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DraftRMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DraftRMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DraftRMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DraftRMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DraftRMS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DraftRMS] SET  MULTI_USER
GO
ALTER DATABASE [DraftRMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DraftRMS] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DraftRMS', N'ON'
GO
USE [DraftRMS]
GO
/****** Object:  User [DraftRMSUser]    Script Date: 17.05.2017 15:13:02 ******/
CREATE USER [DraftRMSUser] FOR LOGIN [DraftRMSUser] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DraftRMSUser]
GO
/****** Object:  Table [dbo].[ReqGroup]    Script Date: 17.05.2017 15:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReqGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](100) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requirement]    Script Date: 17.05.2017 15:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requirement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[ElicitationDate] [datetime] NULL,
	[ChangeRequestLink] [nvarchar](500) NULL,
	[Authors] [nvarchar](100) NULL,
	[Source] [nvarchar](500) NULL,
	[RawDataPlant] [nvarchar](max) NULL,
 CONSTRAINT [PK_Requirement] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RequirementStatus]    Script Date: 17.05.2017 15:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequirementStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](30) NULL,
 CONSTRAINT [PK_RequirementStatus] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RequirementType]    Script Date: 17.05.2017 15:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequirementType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](30) NULL,
 CONSTRAINT [PK_RequirementType] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[backlog]    Script Date: 17.05.2017 15:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[backlog]
AS
SELECT        TOP (100) PERCENT R.Id, R.Authors, g.Caption AS [Group], t.Caption AS Type, R.RawDataPlant, R.Priority, st.Caption AS Status, R.Comment, R.ElicitationDate, R.ChangeRequestLink, R.Source
FROM            dbo.Requirement AS R INNER JOIN
                         dbo.RequirementStatus AS st ON st.Id = R.StatusId INNER JOIN
                         dbo.RequirementType AS t ON t.Id = R.TypeId INNER JOIN
                         dbo.ReqGroup AS g ON g.Id = R.GroupId
WHERE        (R.StatusId = 1 OR
                         R.StatusId = 2 OR
                         R.StatusId = 3) AND (R.TypeId = 1 OR
                         R.TypeId = 3)
ORDER BY R.Priority

GO
/****** Object:  View [dbo].[purpose]    Script Date: 17.05.2017 15:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[purpose]
AS
SELECT        TOP (100) PERCENT R.Id, R.Authors, g.Caption AS [Group], t.Caption AS Type, R.RawDataPlant, R.Priority, st.Caption AS Status, R.Comment, R.ElicitationDate, R.ChangeRequestLink, R.Source
FROM            dbo.Requirement AS R INNER JOIN
                         dbo.RequirementStatus AS st ON st.Id = R.StatusId INNER JOIN
                         dbo.RequirementType AS t ON t.Id = R.TypeId INNER JOIN
                         dbo.ReqGroup AS g ON g.Id = R.GroupId
WHERE        (R.StatusId = 1 OR
                         R.StatusId = 2 OR
                         R.StatusId = 3) AND (R.TypeId = 2)
ORDER BY R.Priority DESC

GO
ALTER TABLE [dbo].[Requirement] ADD  CONSTRAINT [DF_Requirement_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[Requirement]  WITH CHECK ADD  CONSTRAINT [FK_Requirement_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[ReqGroup] ([Id])
GO
ALTER TABLE [dbo].[Requirement] CHECK CONSTRAINT [FK_Requirement_Group]
GO
ALTER TABLE [dbo].[Requirement]  WITH CHECK ADD  CONSTRAINT [FK_Requirement_RequirementStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[RequirementStatus] ([Id])
GO
ALTER TABLE [dbo].[Requirement] CHECK CONSTRAINT [FK_Requirement_RequirementStatus]
GO
ALTER TABLE [dbo].[Requirement]  WITH CHECK ADD  CONSTRAINT [FK_Requirement_RequirementType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[RequirementType] ([Id])
GO
ALTER TABLE [dbo].[Requirement] CHECK CONSTRAINT [FK_Requirement_RequirementType]
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
         Begin Table = "R"
            Begin Extent =
               Top = 6
               Left = 38
               Bottom = 136
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "st"
            Begin Extent =
               Top = 6
               Left = 270
               Bottom = 102
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent =
               Top = 102
               Left = 270
               Bottom = 198
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent =
               Top = 138
               Left = 38
               Bottom = 234
               Right = 208
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'backlog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'backlog'
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
         Begin Table = "R"
            Begin Extent =
               Top = 6
               Left = 38
               Bottom = 136
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "st"
            Begin Extent =
               Top = 6
               Left = 270
               Bottom = 102
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent =
               Top = 102
               Left = 270
               Bottom = 198
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent =
               Top = 138
               Left = 38
               Bottom = 234
               Right = 208
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'purpose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'purpose'
GO
USE [master]
GO
ALTER DATABASE [DraftRMS] SET  READ_WRITE
GO
