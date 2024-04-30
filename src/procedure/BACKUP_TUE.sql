﻿SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BACKUP_TUE] AS

declare @strUserID char(21), @Rank tinyint, @Title tinyint, @Level tinyint, @Exp int, @Loyalty int, @Knights smallint, @Fame tinyint
declare @Str tinyint, @Sta tinyint, @Dex tinyint, @Intel tinyint, @Cha tinyint, @Points tinyint, @Gold int, @strSkill varchar(10), @strItem varchar(400)

SET @strUserID = null SET @Rank = 0 SET @Title = 0 SET @Level = 0 SET @Exp = 0 SET @Loyalty = 0 SET @Knights = 0 SET @Fame = 0
SET @Str = 0 SET @Sta = 0 SET @Dex = 0 SET @Intel = 0 SET @Cha = 0 SET @Points = 0 SET @Gold = 0 SET @strSkill = null SET @strItem = null

declare @row tinyint
SET @row = 0

DECLARE Backup_Cursor CURSOR
	FOR
	SELECT strUserID, Rank, Title, [Level], [Exp], Loyalty, Knights, Fame, Strong, Sta, Dex, Intel, Cha, Points, Gold, strSkill, strItem FROM USERDATA

	OPEN Backup_Cursor

	FETCH NEXT FROM Backup_Cursor INTO @strUserID, @Rank, @Title, @Level, @Exp, @Loyalty, @Knights, @Fame, @Str, @Sta, @Dex, @Intel, @Cha, @Points, @Gold, @strSkill, @strItem

WHILE @@FETCH_STATUS = 0
BEGIN
	select @row = count(*) from BK_TUE_USERDATA where strUserID = @strUserID
	IF @row = 0 
	BEGIN
		INSERT INTO BK_TUE_USERDATA (strUserID, Rank, Title, [Level], [Exp], Loyalty, Knights, Fame, Strong, Sta, Dex, Intel, Cha, Points, Gold, strSkill, strItem)
		VALUES (@strUserID, @Rank, @Title, @Level, @Exp, @Loyalty, @Knights, @Fame, @Str, @Sta, @Dex, @Intel, @Cha, @Points, @Gold, @strSkill, @strItem)
	END
	IF @row > 0
	BEGIN
		UPDATE BK_TUE_USERDATA 
		SET Rank = @Rank, Title = @Title, [Level] = @Level, [Exp] = @Exp, Loyalty = @Loyalty, Knights = @Knights, Fame = @Fame, Strong = @Str, Sta = @Sta, Dex = @Dex, Intel = @Intel, Cha = @Cha, Points = @Points, Gold = @Gold, strSkill = @strSkill, strItem = @strItem
		WHERE strUserID = @strUserID
	END
	
	FETCH NEXT FROM Backup_Cursor INTO @strUserID, @Rank, @Title, @Level, @Exp, @Loyalty, @Knights, @Fame, @Str, @Sta, @Dex, @Intel, @Cha, @Points, @Gold, @strSkill, @strItem
END

CLOSE Backup_Cursor
DEALLOCATE Backup_Cursor

declare @nMoney int, @WarehouseData varchar(1600)
SET @nMoney = 0 SET @WarehouseData = null

DECLARE Backup_Item_Cursor CURSOR
	FOR
	SELECT strAccountID, nMoney, WarehouseData FROM WAREHOUSE

	OPEN Backup_Item_Cursor

	FETCH NEXT FROM Backup_Item_Cursor INTO @strUserID, @nMoney, @WarehouseData

WHILE @@FETCH_STATUS = 0
BEGIN
	select @row = count(*) from BK_TUE_WAREHOUSE where strAccountID = @strUserID
	IF @row = 0 
	BEGIN
		INSERT INTO BK_TUE_WAREHOUSE (strAccountID, nMoney, warehouseData)
		VALUES (@strUserID, @nMoney, @WarehouseData)
	END
	IF @row > 0
	BEGIN
		UPDATE BK_TUE_WAREHOUSE
		SET nMoney = @nMoney, warehouseData = @WarehouseData WHERE strAccountID = @strUserID
	END

	FETCH NEXT FROM Backup_Item_Cursor INTO @strUserID, @nMoney, @WarehouseData
END

CLOSE Backup_Item_Cursor
DEALLOCATE Backup_Item_Cursor

GO
