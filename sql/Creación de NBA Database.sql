CREATE DATABASE DB_NBA
GO

USE DB_NBA;
GO

-- Creando tablas 

-- 1. TABLA INFORMACIÓN DE JUGADORES (Base)
CREATE TABLE [Players] (
  [player_id] INT PRIMARY KEY,
  [first_name] NVARCHAR(255),
  [last_name] NVARCHAR(255),
  [full_name] NVARCHAR(255),
  [is_active] INT,
  [birthdate] DATETIME,
  [country] NVARCHAR(255),
  [height] FLOAT,
  [weight] FLOAT
);

-- 2. TABLA EQUIPOS
CREATE TABLE [Team] (
  [team_id] INT PRIMARY KEY,
  [full_name] NVARCHAR(255),
  [abbreviation] NVARCHAR(255),
  [nickname] NVARCHAR(255),
  [city] NVARCHAR(255),
  [state] NVARCHAR(255),
  [year_founded] INT
);

-- 3. TABLA INACTIVOS
CREATE TABLE [Inactive_Players] (
  [game_id] BIGINT, --llave foránea de tabla Game_Summary
  [player_id] INT, --llave foránea de tabla Player
  [first_name] NVARCHAR(255),
  [last_name] NVARCHAR(255),
  [jersey_num] NVARCHAR(50),
  [team_id] INT, --llave foránea de tabla Team
  [team_abbreviation] NVARCHAR(255)
);

-- 4. TABLA PARTIDOS
CREATE TABLE [Game_Summary] (
  [game_id] BIGINT PRIMARY KEY NOT NULL, -- BIGINT para evitar overflow
  [game_date_est] DATETIME,
  [game_sequence] INT,
  [game_status_id] INT,
  [game_status_text] NVARCHAR(255),
  [gamecode] NVARCHAR(255),
  [home_team_id] INT, -- FK de Team
  [visitor_team_id] INT, -- FK de Team
  [season] INT,
  [live_period] INT
);

-- 5. TABLA PUNTOS (Line Score)
CREATE TABLE [Line_Score] (
  [game_date_est] DATETIME,
  [game_sequence] INT,
  [game_id] BIGINT, -- llave foránea de Game_Summary
  [team_id_home] INT, -- llave foránea de tabla Team
  [team_abbreviation_home] NVARCHAR(255),
  [team_wins_losses_home] NVARCHAR(255),
  [pts_qtr1_home] FLOAT, [pts_qtr2_home] FLOAT, [pts_qtr3_home] FLOAT, [pts_qtr4_home] FLOAT,
  [pts_ot1_home] FLOAT, [pts_ot2_home] FLOAT, [pts_ot3_home] FLOAT, [pts_ot4_home] FLOAT,
  [pts_ot5_home] FLOAT, [pts_ot6_home] FLOAT, [pts_ot7_home] FLOAT, [pts_ot8_home] FLOAT,
  [pts_ot9_home] FLOAT, [pts_ot10_home] FLOAT, [pts_home] FLOAT,
  [team_id_away] INT, -- FK de Team
  [team_abbreviation_away] NVARCHAR(255),
  [team_wins_losses_away] NVARCHAR(255),
  [pts_qtr1_away] FLOAT, [pts_qtr2_away] FLOAT, [pts_qtr3_away] FLOAT, [pts_qtr4_away] FLOAT,
  [pts_ot1_away] FLOAT, [pts_ot2_away] FLOAT, [pts_ot3_away] FLOAT, [pts_ot4_away] FLOAT,
  [pts_ot5_away] FLOAT, [pts_ot6_away] FLOAT, [pts_ot7_away] FLOAT, [pts_ot8_away] FLOAT,
  [pts_ot9_away] FLOAT, [pts_ot10_away] FLOAT, [pts_away] FLOAT
);

-- 6. TABLA ESTADÍSTICAS DE JUGADOR
CREATE TABLE Player_Stats (
    stat_id INT PRIMARY KEY IDENTITY,
    player_id INT, --llave foránea de tabla Player
    full_name VARCHAR(255),
    Pos VARCHAR(10),
    Age INT,
    Tm VARCHAR(10),
    G FLOAT,
    GS FLOAT,
    MP FLOAT,
    FG FLOAT,
    FGA FLOAT,
    FG_pct FLOAT,
    Three_P FLOAT,
    Three_PA FLOAT,
    Three_P_pct FLOAT,
    Two_P FLOAT,
    Two_PA FLOAT,
    Two_P_pct FLOAT,
    eFG_pct FLOAT,
    FT FLOAT,
    FTA FLOAT,
    FT_pct FLOAT,
    ORB FLOAT,
    DRB FLOAT,
    TRB FLOAT,
    AST FLOAT,
    STL FLOAT,
    BLK FLOAT,
    TOV FLOAT,
    PF FLOAT,
    PTS FLOAT,
    [Year] VARCHAR(20),
    team_id INT --llave foránea de tabla Team
);