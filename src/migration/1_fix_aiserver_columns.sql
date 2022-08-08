-- Rename sHpPoint to iHpPoint and change datatype to int
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_sHpPoint]
EXEC sp_rename 'dbo.K_MONSTER.sHpPoint', 'iHpPoint', 'COLUMN';
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN iHpPoint int NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_iHpPoint]  DEFAULT ((0)) FOR [iHpPoint]

-- Change sMpPoint from int to smallint
ALTER TABLE [dbo].[K_NPC] DROP CONSTRAINT [DF_KNIGHT_NPC_sMpPoint]
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN sMpPoint smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sMpPoint]  DEFAULT ((0)) FOR [sMpPoint]

-- Rename sHpPoint to iHpPoint
ALTER TABLE [dbo].[K_NPC] DROP CONSTRAINT [DF_KNIGHT_NPC_sHpPoint]
EXEC sp_rename 'dbo.K_NPC.sHpPoint', 'iHpPoint', 'COLUMN';
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_iHpPoint]  DEFAULT ((0)) FOR [iHpPoint]

-- Fix K_MONSTER and K_NPC resistance columns data-types and names
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_byFireR]
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_byColdR]
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_byLightningR]
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_byMagicR]
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_byDiseaseR]
ALTER TABLE [dbo].[K_MONSTER] DROP  CONSTRAINT [DF_K_MONSTER_byPoisonR]
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byFireR smallint NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byColdR smallint NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byLightningR smallint NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byMagicR smallint NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byDiseaseR smallint NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byPoisonR smallint NOT NULL;
ALTER TABLE [dbo].[K_MONSTER] ALTER COLUMN byLightR smallint NOT NULL;
EXEC sp_rename 'dbo.K_MONSTER.byFireR', 'sFireR', 'COLUMN';
EXEC sp_rename 'dbo.K_MONSTER.byColdR', 'sColdR', 'COLUMN';
EXEC sp_rename 'dbo.K_MONSTER.byLightningR', 'sLightningR', 'COLUMN';
EXEC sp_rename 'dbo.K_MONSTER.byMagicR', 'sMagicR', 'COLUMN';
EXEC sp_rename 'dbo.K_MONSTER.byDiseaseR', 'sDiseaseR', 'COLUMN';
EXEC sp_rename 'dbo.K_MONSTER.byPoisonR', 'sPoisonR', 'COLUMN';
EXEC sp_rename 'dbo.K_MONSTER.byLightR', 'sLightR', 'COLUMN';
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sFireR]  DEFAULT ((0)) FOR [sFireR]
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sColdR]  DEFAULT ((0)) FOR [sColdR]
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sLightningR]  DEFAULT ((0)) FOR [sLightningR]
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sMagicR]  DEFAULT ((0)) FOR [sMagicR]
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sDiseaseR]  DEFAULT ((0)) FOR [sDiseaseR]
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sPoisonR]  DEFAULT ((0)) FOR [sPoisonR]
ALTER TABLE [dbo].[K_MONSTER] ADD  CONSTRAINT [DF_K_MONSTER_sLightR]  DEFAULT ((0)) FOR [sLightR]

ALTER TABLE [dbo].[K_NPC] DROP  CONSTRAINT [DF_KNIGHT_NPC_byFireR]
ALTER TABLE [dbo].[K_NPC] DROP  CONSTRAINT [DF_KNIGHT_NPC_byColdR]
ALTER TABLE [dbo].[K_NPC] DROP  CONSTRAINT [DF_KNIGHT_NPC_byLightR]
ALTER TABLE [dbo].[K_NPC] DROP  CONSTRAINT [DF_KNIGHT_NPC_byMagicR]
ALTER TABLE [dbo].[K_NPC] DROP  CONSTRAINT [DF_KNIGHT_NPC_byDiseaseR]
ALTER TABLE [dbo].[K_NPC] DROP  CONSTRAINT [DF_KNIGHT_NPC_byPoisonR]
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byFireR smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byColdR smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byLightningR smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byMagicR smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byDiseaseR smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byPoisonR smallint NOT NULL;
ALTER TABLE [dbo].[K_NPC] ALTER COLUMN byLightR smallint NOT NULL;
EXEC sp_rename 'dbo.K_NPC.byFireR', 'sFireR', 'COLUMN';
EXEC sp_rename 'dbo.K_NPC.byColdR', 'sColdR', 'COLUMN';
EXEC sp_rename 'dbo.K_NPC.byLightningR', 'sLightningR', 'COLUMN';
EXEC sp_rename 'dbo.K_NPC.byMagicR', 'sMagicR', 'COLUMN';
EXEC sp_rename 'dbo.K_NPC.byDiseaseR', 'sDiseaseR', 'COLUMN';
EXEC sp_rename 'dbo.K_NPC.byPoisonR', 'sPoisonR', 'COLUMN';
EXEC sp_rename 'dbo.K_NPC.byLightR', 'sLightR', 'COLUMN';
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sFireR]  DEFAULT ((0)) FOR [sFireR]
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sColdR]  DEFAULT ((0)) FOR [sColdR]
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sLightningR]  DEFAULT ((0)) FOR [sLightningR]
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sMagicR]  DEFAULT ((0)) FOR [sMagicR]
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sDiseaseR]  DEFAULT ((0)) FOR [sDiseaseR]
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sPoisonR]  DEFAULT ((0)) FOR [sPoisonR]
ALTER TABLE [dbo].[K_NPC] ADD  CONSTRAINT [DF_KNIGHT_NPC_sLightR]  DEFAULT ((0)) FOR [sLightR]
