
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/07/2016 09:55:31
-- Generated from EDMX file: C:\Licenta\Aplicatie\Aplicatie\BazaDeDate.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CategVenitIncasari]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Incasari] DROP CONSTRAINT [FK_CategVenitIncasari];
GO
IF OBJECT_ID(N'[dbo].[FK_CategVenitLocalizareVenit]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategVenit] DROP CONSTRAINT [FK_CategVenitLocalizareVenit];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalizareVenitPlati]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Plati] DROP CONSTRAINT [FK_LocalizareVenitPlati];
GO
IF OBJECT_ID(N'[dbo].[FK_CategCheltPlati]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Plati] DROP CONSTRAINT [FK_CategCheltPlati];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Incasari]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Incasari];
GO
IF OBJECT_ID(N'[dbo].[CategVenit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategVenit];
GO
IF OBJECT_ID(N'[dbo].[LocalizareVenit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocalizareVenit];
GO
IF OBJECT_ID(N'[dbo].[Plati]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Plati];
GO
IF OBJECT_ID(N'[dbo].[CategChelt]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategChelt];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Incasari'
CREATE TABLE [dbo].[Incasari] (
    [IdIncasare] int IDENTITY(1,1) NOT NULL,
    [Data] nvarchar(max)  NOT NULL,
    [Suma] nvarchar(max)  NOT NULL,
    [CategVenitIdCategVenit] int  NOT NULL
);
GO

-- Creating table 'CategVenit'
CREATE TABLE [dbo].[CategVenit] (
    [IdCategVenit] int IDENTITY(1,1) NOT NULL,
    [DescriereVenit] nvarchar(max)  NOT NULL,
    [LocalizareVenitIdLocalizareVenit] int  NOT NULL
);
GO

-- Creating table 'LocalizareVenit'
CREATE TABLE [dbo].[LocalizareVenit] (
    [IdLocalizareVenit] int IDENTITY(1,1) NOT NULL,
    [Descriere] nvarchar(max)  NOT NULL,
    [TipBani] nvarchar(max)  NOT NULL,
    [CategVenitIdCategVenit] int  NOT NULL
);
GO

-- Creating table 'Plati'
CREATE TABLE [dbo].[Plati] (
    [IdPlata] int IDENTITY(1,1) NOT NULL,
    [Descriere] nvarchar(max)  NOT NULL,
    [Suma] nvarchar(max)  NOT NULL,
    [DataT] nvarchar(max)  NOT NULL,
    [LocalizareVenitIdLocalizareVenit] int  NOT NULL,
    [CategCheltIdCategChelt] int  NOT NULL
);
GO

-- Creating table 'CategChelt'
CREATE TABLE [dbo].[CategChelt] (
    [IdCategChelt] int IDENTITY(1,1) NOT NULL,
    [Descriere] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdIncasare] in table 'Incasari'
ALTER TABLE [dbo].[Incasari]
ADD CONSTRAINT [PK_Incasari]
    PRIMARY KEY CLUSTERED ([IdIncasare] ASC);
GO

-- Creating primary key on [IdCategVenit] in table 'CategVenit'
ALTER TABLE [dbo].[CategVenit]
ADD CONSTRAINT [PK_CategVenit]
    PRIMARY KEY CLUSTERED ([IdCategVenit] ASC);
GO

-- Creating primary key on [IdLocalizareVenit] in table 'LocalizareVenit'
ALTER TABLE [dbo].[LocalizareVenit]
ADD CONSTRAINT [PK_LocalizareVenit]
    PRIMARY KEY CLUSTERED ([IdLocalizareVenit] ASC);
GO

-- Creating primary key on [IdPlata] in table 'Plati'
ALTER TABLE [dbo].[Plati]
ADD CONSTRAINT [PK_Plati]
    PRIMARY KEY CLUSTERED ([IdPlata] ASC);
GO

-- Creating primary key on [IdCategChelt] in table 'CategChelt'
ALTER TABLE [dbo].[CategChelt]
ADD CONSTRAINT [PK_CategChelt]
    PRIMARY KEY CLUSTERED ([IdCategChelt] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategVenitIdCategVenit] in table 'Incasari'
ALTER TABLE [dbo].[Incasari]
ADD CONSTRAINT [FK_CategVenitIncasari]
    FOREIGN KEY ([CategVenitIdCategVenit])
    REFERENCES [dbo].[CategVenit]
        ([IdCategVenit])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategVenitIncasari'
CREATE INDEX [IX_FK_CategVenitIncasari]
ON [dbo].[Incasari]
    ([CategVenitIdCategVenit]);
GO

-- Creating foreign key on [LocalizareVenitIdLocalizareVenit] in table 'CategVenit'
ALTER TABLE [dbo].[CategVenit]
ADD CONSTRAINT [FK_CategVenitLocalizareVenit]
    FOREIGN KEY ([LocalizareVenitIdLocalizareVenit])
    REFERENCES [dbo].[LocalizareVenit]
        ([IdLocalizareVenit])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategVenitLocalizareVenit'
CREATE INDEX [IX_FK_CategVenitLocalizareVenit]
ON [dbo].[CategVenit]
    ([LocalizareVenitIdLocalizareVenit]);
GO

-- Creating foreign key on [LocalizareVenitIdLocalizareVenit] in table 'Plati'
ALTER TABLE [dbo].[Plati]
ADD CONSTRAINT [FK_LocalizareVenitPlati]
    FOREIGN KEY ([LocalizareVenitIdLocalizareVenit])
    REFERENCES [dbo].[LocalizareVenit]
        ([IdLocalizareVenit])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalizareVenitPlati'
CREATE INDEX [IX_FK_LocalizareVenitPlati]
ON [dbo].[Plati]
    ([LocalizareVenitIdLocalizareVenit]);
GO

-- Creating foreign key on [CategCheltIdCategChelt] in table 'Plati'
ALTER TABLE [dbo].[Plati]
ADD CONSTRAINT [FK_CategCheltPlati]
    FOREIGN KEY ([CategCheltIdCategChelt])
    REFERENCES [dbo].[CategChelt]
        ([IdCategChelt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategCheltPlati'
CREATE INDEX [IX_FK_CategCheltPlati]
ON [dbo].[Plati]
    ([CategCheltIdCategChelt]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------