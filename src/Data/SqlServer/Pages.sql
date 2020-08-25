CREATE TABLE [dbo].[Pages]
(
    [Path] NVARCHAR(2048) NOT NULL,
    [Version] INT NOT NULL,
    [Contents] NTEXT NOT NULL,
    CONSTRAINT [PK_Pages] PRIMARY KEY ([Path]),
    CONSTRAINT [CHK_Pages_VersionBounds] CHECK([Version] >= 0)
)
