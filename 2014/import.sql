BEGIN TRANSACTION;

COPY AllstarFull FROM '/path/to/AllstarFull.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Appearances FROM '/path/to/Appearances.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsManagers FROM '/path/to/AwardsManagers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsPlayers FROM '/path/to/AwardsPlayers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsShareManagers FROM '/path/to/AwardsShareManagers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY AwardsSharePlayers FROM '/path/to/AwardsSharePlayers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Batting FROM '/path/to/Batting.csv' WITH CSV HEADER DELIMITER AS ',';
COPY BattingPost FROM '/path/to/BattingPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY CollegePlaying FROM '/path/to/CollegePlaying.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Fielding FROM '/path/to/Fielding.csv' WITH CSV HEADER DELIMITER AS ',';
COPY FieldingOF FROM '/path/to/FieldingOF.csv' WITH CSV HEADER DELIMITER AS ',';
COPY FieldingPost FROM '/path/to/FieldingPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY HallOfFame FROM '/path/to/HallOfFame.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Managers FROM '/path/to/Managers.csv' WITH CSV HEADER DELIMITER AS ',';
COPY ManagersHalf FROM '/path/to/ManagersHalf.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Master FROM '/path/to/Master.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Pitching FROM '/path/to/Pitching.csv' WITH CSV HEADER DELIMITER AS ',';
COPY PitchingPost FROM '/path/to/PitchingPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Salaries FROM '/path/to/Salaries.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Schools FROM '/path/to/Schools.csv' WITH CSV HEADER DELIMITER AS ',';
COPY SeriesPost FROM '/path/to/SeriesPost.csv' WITH CSV HEADER DELIMITER AS ',';
COPY Teams FROM '/path/to/Teams.csv' WITH CSV HEADER DELIMITER AS ',';
COPY TeamsFranchises FROM '/path/to/TeamsFranchises.csv' WITH CSV HEADER DELIMITER AS ',';
COPY TeamsHalf FROM '/path/to/TeamsHalf.csv' WITH CSV HEADER DELIMITER AS ',';

END TRANSACTION;
