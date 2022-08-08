﻿SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[EXEC_NPCPOS_SORT]
AS

BEGIN TRAN

	DROP TABLE K_NPCPOS_SORT
	
	SELECT *
	INTO K_NPCPOS_SORT
	FROM K_NPCPOS
            ORDER BY ZoneID	
	
	IF @@ERROR <> 0 
		ROLLBACK TRAN
		

	DROP TABLE K_NPCPOS
	IF @@ERROR <> 0 
		ROLLBACK TRAN

	SELECT *
	INTO K_NPCPOS
	FROM K_NPCPOS_SORT
	
	IF @@ERROR <> 0
		ROLLBACK TRAN

COMMIT TRAN
GO
