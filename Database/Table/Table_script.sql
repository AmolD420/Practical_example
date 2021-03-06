USE [Practical_DB]
GO
/****** Object:  Table [dbo].[DataDetails]    Script Date: 27-09-2021 09:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MPID] [int] NULL,
	[FieldType] [varchar](20) NULL,
	[Value1] [varchar](15) NULL,
	[Value2] [varchar](15) NULL,
	[Value3] [varchar](15) NULL,
	[Value4] [varchar](15) NULL,
	[Value5] [varchar](15) NULL,
	[Value6] [varchar](15) NULL,
	[Value7] [varchar](15) NULL,
	[Value8] [varchar](15) NULL,
	[Value9] [varchar](15) NULL,
	[Value10] [varchar](15) NULL,
	[Value11] [varchar](15) NULL,
	[Value12] [varchar](15) NULL,
	[Value13] [varchar](15) NULL,
	[Value14] [varchar](15) NULL,
	[Value15] [varchar](15) NULL,
	[Value16] [varchar](15) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBY] [varchar](20) NULL,
	[UPDATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterProducts]    Script Date: 27-09-2021 09:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBY] [varchar](20) NULL,
	[UPDATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantMachine]    Script Date: 27-09-2021 09:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantMachine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlantID] [int] NULL,
	[Name] [varchar](100) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBY] [varchar](20) NULL,
	[UPDATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantName]    Script Date: 27-09-2021 09:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBY] [varchar](20) NULL,
	[UPDATEDDATE] [datetime] NULL,
	[UPDATEDBY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimingTable]    Script Date: 27-09-2021 09:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimingTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MPID] [int] NULL,
	[FieldType] [varchar](20) NULL,
	[Value1] [varchar](15) NULL,
	[Value2] [varchar](15) NULL,
	[Value3] [varchar](15) NULL,
	[Value4] [varchar](15) NULL,
	[Value5] [varchar](15) NULL,
	[Value6] [varchar](15) NULL,
	[Value7] [varchar](15) NULL,
	[Value8] [varchar](15) NULL,
	[Value9] [varchar](15) NULL,
	[Value10] [varchar](15) NULL,
	[Value11] [varchar](15) NULL,
	[Value12] [varchar](15) NULL,
	[Value13] [varchar](15) NULL,
	[Value14] [varchar](15) NULL,
	[Value15] [varchar](15) NULL,
	[Value16] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataDetails] ADD  DEFAULT (getdate()) FOR [CREATEDDATE]
GO
ALTER TABLE [dbo].[MasterProducts] ADD  DEFAULT (getdate()) FOR [CREATEDDATE]
GO
ALTER TABLE [dbo].[PlantMachine] ADD  DEFAULT (getdate()) FOR [CREATEDDATE]
GO
ALTER TABLE [dbo].[PlantName] ADD  DEFAULT (getdate()) FOR [CREATEDDATE]
GO
