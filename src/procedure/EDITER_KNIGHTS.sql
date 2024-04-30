﻿SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

-- Create sungyong

CREATE PROCEDURE [dbo].[EDITER_KNIGHTS]
AS

SET NOCOUNT ON
DECLARE @KnightsIndex smallint
DECLARE job1 CURSOR FOR

SELECT IDNum FROM KNIGHTS

OPEN job1
FETCH NEXT FROM job1
INTO @KnightsIndex
WHILE @@fetch_status = 0
  BEGIN
    DECLARE @LEVEL int
    DECLARE @ROW int
    SET @LEVEL = 0

    SELECT @ROW = COUNT([strUserId]) FROM [USERDATA] WHERE Knights = @KnightsIndex
    IF @ROW != 0
      BEGIN
        UPDATE KNIGHTS SET [Members] = @Row WHERE IDNum = @KnightsIndex
      END
    ELSE
      BEGIN
        DELETE FROM KNIGHTS WHERE IDNum = @knightsindex
      END

    FETCH NEXT FROM job1
    INTO @KnightsIndex
  END
CLOSE job1
DEALLOCATE job1
SET NOCOUNT OFF

GO
