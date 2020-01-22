CREATE TABLE [dbo].[T_TEST_RESULT]
(
	[ID] BIGINT NOT NULL PRIMARY KEY IDENTITY,	--
	[TABLE_NAME] NVARCHAR(20),					-- Название теста
	[OPERATION_NAME] NVARCHAR(20),				-- Название теста
	[ATTEMPT] INT,								-- Попытка
	[COUNT] INT,								-- Название теста
	[NS] BIGINT									-- Время исполнения
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Название таблицы',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TEST_RESULT',
    @level2type = N'COLUMN',
    @level2name = N'TABLE_NAME'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Тип операции',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TEST_RESULT',
    @level2type = N'COLUMN',
    @level2name = N'OPERATION_NAME'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Попытка',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TEST_RESULT',
    @level2type = N'COLUMN',
    @level2name = N'ATTEMPT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Количество записей',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TEST_RESULT',
    @level2type = N'COLUMN',
    @level2name = N'COUNT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Время исполнения мкс',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'T_TEST_RESULT',
    @level2type = N'COLUMN',
    @level2name = N'NS'