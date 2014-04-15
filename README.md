# The Lahman Baseball Database (PostgreSQL)

Conversion of the Lahman Baseball Database structure to PostgreSQL.

## Changes

Postgres doesn't like columns that begin with numbers without switching to quoted column names. So all `2B` and `3B` columns have been converted to `H2B` and `H3B`.

## Importing

Download the latest CSV and import.

```sql
COPY AllstarFull FROM '/path/to/AllstarFull.csv' DELIMITER ',' CSV;
COPY Appearances FROM '/path/to/Appearances.csv' DELIMITER ',' CSV;
COPY AwardsManagers FROM '/path/to/AwardsManagers.csv' DELIMITER ',' CSV;
COPY AwardsPlayers FROM '/path/to/AwardsPlayers.csv' DELIMITER ',' CSV;
COPY AwardsShareManagers FROM '/path/to/AwardsShareManagers.csv' DELIMITER ',' CSV;
COPY AwardsSharePlayers FROM '/path/to/AwardsSharePlayers.csv' DELIMITER ',' CSV;
COPY Batting FROM '/path/to/Batting.csv' DELIMITER ',' CSV;
COPY BattingPost FROM '/path/to/BattingPost.csv' DELIMITER ',' CSV;
COPY Fielding FROM '/path/to/Fielding.csv' DELIMITER ',' CSV;
COPY FieldingOF FROM '/path/to/FieldingOF.csv' DELIMITER ',' CSV;
COPY FieldingPost FROM '/path/to/FieldingPost.csv' DELIMITER ',' CSV;
COPY HallOfFame FROM '/path/to/HallOfFame.csv' DELIMITER ',' CSV;
COPY Managers FROM '/path/to/Managers.csv' DELIMITER ',' CSV;
COPY ManagersHalf FROM '/path/to/ManagersHalf.csv' DELIMITER ',' CSV;
COPY Master (playerID,birthYear,birthMonth,birthDay,birthCountry,birthState,birthCity,deathYear,deathMonth,deathDay,deathCountry,deathState,deathCity,nameFirst,nameLast,nameGiven,weight,height,bats,throws,debut,finalGame,retroID,bbrefID) FROM '/path/to/Master.csv' DELIMITER ',' CSV;
COPY Pitching FROM '/path/to/Pitching.csv' DELIMITER ',' CSV;
COPY PitchingPost FROM '/path/to/PitchingPost.csv' DELIMITER ',' CSV;
COPY Salaries FROM '/path/to/Salaries.csv' DELIMITER ',' CSV;
COPY Schools FROM '/path/to/Schools.csv' DELIMITER ',' CSV;
COPY SchoolsPlayers FROM '/path/to/SchoolsPlayers.csv' DELIMITER ',' CSV;
COPY SeriesPost FROM '/path/to/SeriesPost.csv' DELIMITER ',' CSV;
COPY Teams FROM '/path/to/Teams.csv' DELIMITER ',' CSV;
COPY TeamsFranchises FROM '/path/to/TeamsFranchises.csv' DELIMITER ',' CSV;
COPY TeamsHalf FROM '/path/to/TeamsHalf.csv' DELIMITER ',' CSV;
```

## Things To Do

 * Optimize, database needs more indexes.
 * Create advanced statistics table instead of calculating for each query (things like ISO, FIP, etc).

## Copyright Notice & Limited Use License

This database is copyright 1996-2013 by Sean Lahman.

This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 Unported License. For details see: http://creativecommons.org/licenses/by-sa/3.0/


For licensing information or further information, contact Sean Lahman
at: seanlahman@gmail.com
