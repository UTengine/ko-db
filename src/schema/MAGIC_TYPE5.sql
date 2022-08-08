﻿SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAGIC_TYPE5](
	[iNum] [int] NOT NULL,
	[Name] [char](30) NULL,
	[Description] [char](100) NULL,
	[Type] [tinyint] NOT NULL,
	[ExpRecover] [tinyint] NOT NULL,
	[NeedStone] [smallint] NOT NULL
) ON [PRIMARY]
GO
