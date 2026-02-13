-- 1. Limpieza de datos huérfanos (para asegurar integridad referencial)

-- Game_Summary → Team
DELETE FROM Game_Summary WHERE home_team_id NOT IN (SELECT team_id FROM Team);
DELETE FROM Game_Summary WHERE visitor_team_id NOT IN (SELECT team_id FROM Team);

-- Inactive_Players → Players, Team, Game_Summary
DELETE FROM Inactive_Players WHERE player_id NOT IN (SELECT player_id FROM Players);
DELETE FROM Inactive_Players WHERE team_id NOT IN (SELECT team_id FROM Team);
DELETE FROM Inactive_Players WHERE game_id NOT IN (SELECT game_id FROM Game_Summary);

-- Line_Score → Game_Summary, Team
DELETE FROM Line_Score WHERE game_id NOT IN (SELECT game_id FROM Game_Summary);
DELETE FROM Line_Score WHERE team_id_home NOT IN (SELECT team_id FROM Team);
DELETE FROM Line_Score WHERE team_id_away NOT IN (SELECT team_id FROM Team);

-- Player_Stats → Players, Team
DELETE FROM Player_Stats WHERE player_id NOT IN (SELECT player_id FROM Players);
DELETE FROM Player_Stats WHERE team_id NOT IN (SELECT team_id FROM Team);



-- Creación de llaves foráneas
-- 1. Game_Summary → Team
ALTER TABLE Game_Summary 
ADD CONSTRAINT FK_Game_HomeTeam FOREIGN KEY (home_team_id) REFERENCES Team(team_id);

ALTER TABLE Game_Summary 
ADD CONSTRAINT FK_Game_VisitorTeam FOREIGN KEY (visitor_team_id) REFERENCES Team(team_id);

-- 2. Line_Score → Game_Summary y Team
ALTER TABLE Line_Score 
ADD CONSTRAINT FK_LineScore_Game FOREIGN KEY (game_id) REFERENCES Game_Summary(game_id);

ALTER TABLE Line_Score 
ADD CONSTRAINT FK_LineScore_HomeTeam FOREIGN KEY (team_id_home) REFERENCES Team(team_id);

ALTER TABLE Line_Score 
ADD CONSTRAINT FK_LineScore_AwayTeam FOREIGN KEY (team_id_away) REFERENCES Team(team_id);

-- 3. Inactive_Players → Game_Summary, Team, Players
ALTER TABLE Inactive_Players 
ADD CONSTRAINT FK_Inactive_Game FOREIGN KEY (game_id) REFERENCES Game_Summary(game_id);

ALTER TABLE Inactive_Players 
ADD CONSTRAINT FK_Inactive_Team FOREIGN KEY (team_id) REFERENCES Team(team_id);

ALTER TABLE Inactive_Players 
ADD CONSTRAINT FK_Inactive_Player FOREIGN KEY (player_id) REFERENCES Players(player_id);

-- 4. Player_Stats → Players y Team
ALTER TABLE Player_Stats 
ADD CONSTRAINT FK_Stats_Player FOREIGN KEY (player_id) REFERENCES Players(player_id);

ALTER TABLE Player_Stats 
ADD CONSTRAINT FK_Stats_Team FOREIGN KEY (team_id) REFERENCES Team(team_id);