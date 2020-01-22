﻿CREATE TABLE [dbo].[T_RESULT]
(
	[ID] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [TYPE_ID] BIGINT NOT NULL, 
    [SUM] DECIMAL(18, 2) NOT NULL DEFAULT 0,
    [SUM1] DECIMAL(18, 2) NOT NULL DEFAULT 0,
    [SUM2] DECIMAL(18, 2) NOT NULL DEFAULT 0,
    [SUM3] DECIMAL(18, 2) NOT NULL DEFAULT 0, 
    [SUM4] DECIMAL(18, 2) NULL , 
    [FLAG] BIT NOT NULL DEFAULT 0, 
    [FLAG1] BIT NOT NULL DEFAULT 1, 
    [FLAG2] BIT NULL, 
    [STR] NVARCHAR(5) NULL, 
    [STR1] NVARCHAR(30) NULL, 
    [STR2] NVARCHAR(70) NULL,
)
