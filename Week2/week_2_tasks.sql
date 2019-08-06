DROP TABLE IF EXISTS dbo.Player;
DROP TABLE IF EXISTS dbo.PlayerRegistration;
DROP TABLE IF EXISTS dbo.TeamEntry;
DROP TABLE IF EXISTS dbo.Season;
DROP TABLE IF EXISTS dbo.Club;

CREATE TABLE Club (
    ClubName NVARCHAR(100),
    ContactName NVARCHAR(100),
    PRIMARY KEY (ClubName)
);

CREATE TABLE Season (
    SeasonYear INT,
    SeasonName NVARCHAR(6)
);

CREATE TABLE Player (
    PlayerId INT,
    FName NVARCHAR(100) NOT NULL,
    LName NVARCHAR(100) NOT NULL ,
    Phone NVARCHAR(50)
);

CREATE TABLE TeamEntry (
    ClubName NVARCHAR(100),
    SeasonYear INT,
    SeasonName NVARCHAR(6),
    AgeGroup NVARCHAR(3),
    TeamMember INT
);

CREATE TABLE PlayerRegistration (
    PlayerId INT,
    ClubName NVARCHAR(100),
    SeasonYear INT,
    SeasonName NVARCHAR(6),
    AgeGroup NVARCHAR(3),
    TeamNumber INT,
    DataRegistered DATE
);

