
USE [XueShengGY]
GO
/****** Object:  Table [dbo].[WeiXiuInfo]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeiXiuInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LouHaoId] [int] NULL,
	[LouHao] [nvarchar](50) NULL,
	[SuSheId] [int] NULL,
	[SuShe] [nvarchar](50) NULL,
	[LouCeng] [nvarchar](50) NULL,
	[StName] [nvarchar](50) NULL,
	[StNum] [nvarchar](50) NULL,
	[YuanYIn] [text] NULL,
	[Ds] [text] NULL,
	[AddTime] [datetime] NULL,
	[IsWX] [nvarchar](50) NULL,
	[FeiYong] [nvarchar](50) NULL,
	[ShiJian] [nvarchar](50) NULL,
 CONSTRAINT [PK_WeiXiuInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeiShengInfo]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeiShengInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LouHaoId] [int] NULL,
	[LouHao] [nvarchar](50) NULL,
	[SuSheId] [int] NULL,
	[SuShe] [nvarchar](50) NULL,
	[LouCeng] [nvarchar](50) NULL,
	[StName] [nvarchar](50) NULL,
	[StNum] [nvarchar](50) NULL,
	[Ds] [text] NULL,
	[AddTime] [datetime] NULL,
	[zhaopian] [nvarchar](50) NULL,
	[JianchashiJian] [nvarchar](50) NULL,
	[dengji] [nvarchar](50) NULL,
	[pingbiInfo] [nvarchar](50) NULL,
 CONSTRAINT [PK_WeiShengInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [nvarchar](50) NULL,
	[AddUser] [nvarchar](50) NULL,
	[Content] [text] NULL,
	[Addtime] [datetime] NULL,
	[Replay] [text] NULL,
	[AddUserNum] [nvarchar](50) NULL,
	[LouHao] [nvarchar](50) NULL,
	[SuShe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserPwd] [nvarchar](50) NULL,
	[UserNubmer] [nvarchar](50) NULL,
	[XiName] [nvarchar](50) NULL,
	[UserTrueName] [nvarchar](50) NULL,
	[Sex] [nvarchar](10) NULL,
	[UserDs] [text] NULL,
	[AddTime] [datetime] NULL,
	[Emal] [nvarchar](50) NULL,
	[Roule] [nvarchar](50) NULL,
	[XueYuanName] [nvarchar](50) NULL,
	[BanJiName] [nvarchar](50) NULL,
	[LouHaoId] [int] NULL,
	[LouHao] [nvarchar](50) NULL,
	[SuSheId] [int] NULL,
	[SuShe] [nvarchar](50) NULL,
	[IsJiaoFei] [nvarchar](50) NULL,
	[FeiYong] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[LouGuan] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShuiDian]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShuiDian](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LouHaoId] [int] NULL,
	[LouHao] [nvarchar](50) NULL,
	[SuSheId] [int] NULL,
	[SuShe] [nvarchar](50) NULL,
	[LouCeng] [nvarchar](50) NULL,
	[Leixing] [nvarchar](50) NULL,
	[JinE] [float] NULL,
	[Ds] [text] NULL,
	[AddTime] [datetime] NULL,
	[yuefen] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShuiDian] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[contents] [text] NULL,
	[Addtime] [datetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LFInfo]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LFInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LouHaoId] [int] NULL,
	[LouHao] [nvarchar](50) NULL,
	[SuSheId] [int] NULL,
	[SuShe] [nvarchar](50) NULL,
	[LouCeng] [nvarchar](50) NULL,
	[StName] [nvarchar](50) NULL,
	[StNum] [nvarchar](50) NULL,
	[LFName] [nvarchar](50) NULL,
	[Ds] [text] NULL,
	[AddTime] [datetime] NULL,
	[ShiJian] [nvarchar](50) NULL,
	[LiKaiShiJIan] [nvarchar](50) NULL,
 CONSTRAINT [PK_LFInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostelInfo]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Bid] [int] NULL,
	[BName] [nvarchar](50) NULL,
	[Num] [nvarchar](50) NULL,
	[Floor] [nvarchar](50) NULL,
	[Sex] [nvarchar](50) NULL,
	[Ds] [text] NULL,
	[RenShu] [int] NULL,
	[Kong] [int] NULL,
	[InNum] [int] NULL,
	[FeiYong] [nvarchar](50) NULL,
 CONSTRAINT [PK_HostelInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FloorInfo]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Ds] [text] NULL,
	[manager] [nvarchar](50) NULL,
 CONSTRAINT [PK_FloorInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 03/23/2019 14:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Pwd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_WeiXiuInfo_AddTime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[WeiXiuInfo] ADD  CONSTRAINT [DF_WeiXiuInfo_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_WeiShengInfo_AddTime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[WeiShengInfo] ADD  CONSTRAINT [DF_WeiShengInfo_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Topic_Addtime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_Student_AddTime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Student_IsJiaoFei]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_IsJiaoFei]  DEFAULT (N'否') FOR [IsJiaoFei]
GO
/****** Object:  Default [DF_ShuiDian_AddTime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[ShuiDian] ADD  CONSTRAINT [DF_ShuiDian_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_News_Addtime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_LFInfo_AddTime]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[LFInfo] ADD  CONSTRAINT [DF_LFInfo_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_HostelInfo_InNum]    Script Date: 03/23/2019 14:54:19 ******/
ALTER TABLE [dbo].[HostelInfo] ADD  CONSTRAINT [DF_HostelInfo_InNum]  DEFAULT ((0)) FOR [InNum]
GO
