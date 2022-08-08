﻿SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAREHOUSE](
	[strAccountID] [char](21) NOT NULL,
	[nMoney] [int] NOT NULL,
	[dwTime] [int] NOT NULL,
	[WarehouseData] [char](1600) NULL,
	[strSerial] [char](20) NULL,
 CONSTRAINT [PK_WAREHOUSE] PRIMARY KEY CLUSTERED 
(
	[strAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WAREHOUSE] ADD  CONSTRAINT [DF_WAREHOUSE_nMoney]  DEFAULT ((0)) FOR [nMoney]
GO
ALTER TABLE [dbo].[WAREHOUSE] ADD  CONSTRAINT [DF_WAREHOUSE_dwTime]  DEFAULT ((0)) FOR [dwTime]
GO
