CREATE TABLE [dbo].[PageVersions]
(
	[Path] NVARCHAR(2048) NOT NULL ,
    [Version] INT NOT NULL,
    [Contents] NTEXT NOT NULL,
    [Details] NTEXT NOT NULL,
    [CreatedDate] DATETIMEOFFSET NULL DEFAULT SYSDATETIMEOFFSET(),
    [CreatedBy] NVARCHAR(128) NOT NULL,
    CONSTRAINT [PK_PageVersions] PRIMARY KEY ([Path], [Version]),
    CONSTRAINT [CHK_PageVersions_CreatedByLength] CHECK (LEN([CreatedBy]) > 2),
    CONSTRAINT [CHK_PageVersions_VersionBounds] CHECK([Version] >= 0)
);