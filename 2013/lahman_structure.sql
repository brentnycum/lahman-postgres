-- Modified by: Brent Nycum

BEGIN TRANSACTION;

--
-- Database: lahman_bbdb
--

-- --------------------------------------------------------

--
-- Table structure for table AllstarFull
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS AllstarFull;
CREATE TABLE IF NOT EXISTS AllstarFull (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	gameNum int NOT NULL,
	gameID varchar(12) DEFAULT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	GP int DEFAULT NULL,
	startingPos int DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,gameNum)
);

-- --------------------------------------------------------

--
-- Table structure for table Appearances
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Appearances;
CREATE TABLE IF NOT EXISTS Appearances (
	yearID int NOT NULL,
	teamID varchar(3) NOT NULL,
	lgID varchar(2) DEFAULT NULL,
	playerID varchar(9) NOT NULL,
	G_all int DEFAULT NULL,
	GS int DEFAULT NULL,
	G_batting int DEFAULT NULL,
	G_defense int DEFAULT NULL,
	G_p int DEFAULT NULL,
	G_c int DEFAULT NULL,
	G_1b int DEFAULT NULL,
	G_2b int DEFAULT NULL,
	G_3b int DEFAULT NULL,
	G_ss int DEFAULT NULL,
	G_lf int DEFAULT NULL,
	G_cf int DEFAULT NULL,
	G_rf int DEFAULT NULL,
	G_of int DEFAULT NULL,
	G_dh int DEFAULT NULL,
	G_ph int DEFAULT NULL,
	G_pr int DEFAULT NULL,
	PRIMARY KEY (yearID,teamID,playerID)
);

-- --------------------------------------------------------

--
-- Table structure for table AwardsManagers
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS AwardsManagers;
CREATE TABLE IF NOT EXISTS AwardsManagers (
	managerID varchar(10) NOT NULL,
	awardID varchar(25) NOT NULL,
	yearID int NOT NULL,
	lgID varchar(2) NOT NULL,
	tie varchar(1) DEFAULT NULL,
	notes varchar(100) DEFAULT NULL,
	PRIMARY KEY (yearID,awardID,lgID,managerID)
);

-- --------------------------------------------------------

--
-- Table structure for table AwardsPlayers
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS AwardsPlayers;
CREATE TABLE IF NOT EXISTS AwardsPlayers (
	playerID varchar(9) NOT NULL,
	awardID varchar(255) NOT NULL,
	yearID int NOT NULL,
	lgID varchar(2) NOT NULL,
	tie varchar(1) DEFAULT NULL,
	notes varchar(100) DEFAULT NULL,
	PRIMARY KEY (yearID,awardID,lgID,playerID)
);

-- --------------------------------------------------------

--
-- Table structure for table AwardsShareManagers
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS AwardsShareManagers;
CREATE TABLE IF NOT EXISTS AwardsShareManagers (
	awardID varchar(25) NOT NULL,
	yearID int NOT NULL,
	lgID varchar(2) NOT NULL,
	managerID varchar(10) NOT NULL,
	pointsWon int DEFAULT NULL,
	pointsMax int DEFAULT NULL,
	votesFirst int DEFAULT NULL,
	PRIMARY KEY (awardID,yearID,lgID,managerID)
);

-- --------------------------------------------------------

--
-- Table structure for table AwardsSharePlayers
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS AwardsSharePlayers;
CREATE TABLE IF NOT EXISTS AwardsSharePlayers (
	awardID varchar(25) NOT NULL,
	yearID int NOT NULL,
	lgID varchar(2) NOT NULL,
	playerID varchar(9) NOT NULL,
	pointsWon double precision DEFAULT NULL,
	pointsMax int DEFAULT NULL,
	votesFirst double precision DEFAULT NULL,
	PRIMARY KEY (awardID,yearID,lgID,playerID)
);

-- --------------------------------------------------------

--
-- Table structure for table Batting
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Batting;
CREATE TABLE IF NOT EXISTS Batting (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	stint int NOT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	G int DEFAULT NULL,
	G_batting int DEFAULT NULL,
	AB int DEFAULT NULL,
	R int DEFAULT NULL,
	H int DEFAULT NULL,
	H2B int DEFAULT NULL,
	H3B int DEFAULT NULL,
	HR int DEFAULT NULL,
	RBI int DEFAULT NULL,
	SB int DEFAULT NULL,
	CS int DEFAULT NULL,
	BB int DEFAULT NULL,
	SO int DEFAULT NULL,
	IBB int DEFAULT NULL,
	HBP int DEFAULT NULL,
	SH int DEFAULT NULL,
	SF int DEFAULT NULL,
	GIDP int DEFAULT NULL,
	G_old int DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,stint)
);

-- --------------------------------------------------------

--
-- Table structure for table BattingPost
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS BattingPost;
CREATE TABLE IF NOT EXISTS BattingPost (
	yearID int NOT NULL,
	round varchar(10) NOT NULL,
	playerID varchar(9) NOT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	G int DEFAULT NULL,
	AB int DEFAULT NULL,
	R int DEFAULT NULL,
	H int DEFAULT NULL,
	H2B int DEFAULT NULL,
	H3B int DEFAULT NULL,
	HR int DEFAULT NULL,
	RBI int DEFAULT NULL,
	SB int DEFAULT NULL,
	CS int DEFAULT NULL,
	BB int DEFAULT NULL,
	SO int DEFAULT NULL,
	IBB int DEFAULT NULL,
	HBP int DEFAULT NULL,
	SH int DEFAULT NULL,
	SF int DEFAULT NULL,
	GIDP int DEFAULT NULL,
	PRIMARY KEY (yearID,round,playerID)
);

-- --------------------------------------------------------

--
-- Table structure for table Fielding
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Fielding;
CREATE TABLE IF NOT EXISTS Fielding (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	stint int NOT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	POS varchar(2) NOT NULL,
	G int DEFAULT NULL,
	GS int DEFAULT NULL,
	InnOuts int DEFAULT NULL,
	PO int DEFAULT NULL,
	A int DEFAULT NULL,
	E int DEFAULT NULL,
	DP int DEFAULT NULL,
	PB int DEFAULT NULL,
	WP int DEFAULT NULL,
	SB int DEFAULT NULL,
	CS int DEFAULT NULL,
	ZR double precision DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,stint,POS)
);

-- --------------------------------------------------------

--
-- Table structure for table FieldingOF
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS FieldingOF;
CREATE TABLE IF NOT EXISTS FieldingOF (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	stint int NOT NULL,
	Glf int DEFAULT NULL,
	Gcf int DEFAULT NULL,
	Grf int DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,stint)
);

-- --------------------------------------------------------

--
-- Table structure for table FieldingPost
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS FieldingPost;
CREATE TABLE IF NOT EXISTS FieldingPost (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	round varchar(10) NOT NULL,
	POS varchar(2) NOT NULL,
	G int DEFAULT NULL,
	GS int DEFAULT NULL,
	InnOuts int DEFAULT NULL,
	PO int DEFAULT NULL,
	A int DEFAULT NULL,
	E int DEFAULT NULL,
	DP int DEFAULT NULL,
	TP int DEFAULT NULL,
	PB int DEFAULT NULL,
	SB int DEFAULT NULL,
	CS int DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,round,POS)
);

-- --------------------------------------------------------

--
-- Table structure for table HallOfFame
--
-- Creation: Dec 06, 2013 at 10:48 AM
--

DROP TABLE IF EXISTS HallOfFame;
CREATE TABLE IF NOT EXISTS HallOfFame (
	hofID varchar(10) NOT NULL,
	yearid int NOT NULL,
	votedBy varchar(64) NOT NULL DEFAULT '',
	ballots int DEFAULT NULL,
	needed int DEFAULT NULL,
	votes int DEFAULT NULL,
	inducted varchar(1) DEFAULT NULL,
	category varchar(20) DEFAULT NULL,
	needed_note varchar(20) DEFAULT NULL,
	PRIMARY KEY (hofID,yearid,votedBy)
);

-- --------------------------------------------------------

--
-- Table structure for table Managers
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Managers;
CREATE TABLE IF NOT EXISTS Managers (
	managerID varchar(10) DEFAULT NULL,
	yearID int NOT NULL,
	teamID varchar(3) NOT NULL,
	lgID varchar(2) DEFAULT NULL,
	inseason int NOT NULL,
	G int DEFAULT NULL,
	W int DEFAULT NULL,
	L int DEFAULT NULL,
	rank int DEFAULT NULL,
	plyrMgr varchar(1) DEFAULT NULL,
	PRIMARY KEY (yearID,teamID,inseason)
);

-- --------------------------------------------------------

--
-- Table structure for table ManagersHalf
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS ManagersHalf;
CREATE TABLE IF NOT EXISTS ManagersHalf (
	managerID varchar(10) NOT NULL,
	yearID int NOT NULL,
	teamID varchar(3) NOT NULL,
	lgID varchar(2) DEFAULT NULL,
	inseason int DEFAULT NULL,
	half int NOT NULL,
	G int DEFAULT NULL,
	W int DEFAULT NULL,
	L int DEFAULT NULL,
	rank int DEFAULT NULL,
	PRIMARY KEY (yearID,teamID,managerID,half)
);

-- --------------------------------------------------------

--
-- Table structure for table Master
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Master;
CREATE TABLE IF NOT EXISTS Master (
	lahmanID serial NOT NULL,
	playerID varchar(10) DEFAULT NULL,
	managerID varchar(10) DEFAULT NULL,
	hofID varchar(10) DEFAULT NULL,
	birthYear int DEFAULT NULL,
	birthMonth int DEFAULT NULL,
	birthDay int DEFAULT NULL,
	birthCountry varchar(50) DEFAULT NULL,
	birthState varchar(50) DEFAULT NULL,
	birthCity varchar(50) DEFAULT NULL,
	deathYear int DEFAULT NULL,
	deathMonth int DEFAULT NULL,
	deathDay int DEFAULT NULL,
	deathCountry varchar(50) DEFAULT NULL,
	deathState varchar(50) DEFAULT NULL,
	deathCity varchar(50) DEFAULT NULL,
	nameFirst varchar(50) DEFAULT NULL,
	nameLast varchar(50) DEFAULT NULL,
	nameNote varchar(255) DEFAULT NULL,
	nameGiven varchar(255) DEFAULT NULL,
	nameNick varchar(255) DEFAULT NULL,
	weight int DEFAULT NULL,
	height double precision DEFAULT NULL,
	bats varchar(1) DEFAULT NULL,
	throws varchar(1) DEFAULT NULL,
	debut varchar(10) DEFAULT NULL,
	finalGame varchar(10) DEFAULT NULL,
	college varchar(50) DEFAULT NULL,
	lahman40ID varchar(9) DEFAULT NULL,
	lahman45ID varchar(9) DEFAULT NULL,
	retroID varchar(9) DEFAULT NULL,
	holtzID varchar(9) DEFAULT NULL,
	bbrefID varchar(9) DEFAULT NULL,
	PRIMARY KEY (lahmanID)
);

-- --------------------------------------------------------

--
-- Table structure for table Pitching
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Pitching;
CREATE TABLE IF NOT EXISTS Pitching (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	stint int NOT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	W int DEFAULT NULL,
	L int DEFAULT NULL,
	G int DEFAULT NULL,
	GS int DEFAULT NULL,
	CG int DEFAULT NULL,
	SHO int DEFAULT NULL,
	SV int DEFAULT NULL,
	IPouts int DEFAULT NULL,
	H int DEFAULT NULL,
	ER int DEFAULT NULL,
	HR int DEFAULT NULL,
	BB int DEFAULT NULL,
	SO int DEFAULT NULL,
	BAOpp double precision DEFAULT NULL,
	ERA double precision DEFAULT NULL,
	IBB int DEFAULT NULL,
	WP int DEFAULT NULL,
	HBP int DEFAULT NULL,
	BK int DEFAULT NULL,
	BFP int DEFAULT NULL,
	GF int DEFAULT NULL,
	R int DEFAULT NULL,
	SH int DEFAULT NULL,
	SF int DEFAULT NULL,
	GIDP int DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,stint)
);

-- --------------------------------------------------------

--
-- Table structure for table PitchingPost
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS PitchingPost;
CREATE TABLE IF NOT EXISTS PitchingPost (
	playerID varchar(9) NOT NULL,
	yearID int NOT NULL,
	round varchar(10) NOT NULL,
	teamID varchar(3) DEFAULT NULL,
	lgID varchar(2) DEFAULT NULL,
	W int DEFAULT NULL,
	L int DEFAULT NULL,
	G int DEFAULT NULL,
	GS int DEFAULT NULL,
	CG int DEFAULT NULL,
	SHO int DEFAULT NULL,
	SV int DEFAULT NULL,
	IPouts int DEFAULT NULL,
	H int DEFAULT NULL,
	ER int DEFAULT NULL,
	HR int DEFAULT NULL,
	BB int DEFAULT NULL,
	SO int DEFAULT NULL,
	BAOpp double precision DEFAULT NULL,
	ERA double precision DEFAULT NULL,
	IBB int DEFAULT NULL,
	WP int DEFAULT NULL,
	HBP int DEFAULT NULL,
	BK int DEFAULT NULL,
	BFP int DEFAULT NULL,
	GF int DEFAULT NULL,
	R int DEFAULT NULL,
	SH int DEFAULT NULL,
	SF int DEFAULT NULL,
	GIDP int DEFAULT NULL,
	PRIMARY KEY (playerID,yearID,round)
);

-- --------------------------------------------------------

--
-- Table structure for table Salaries
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Salaries;
CREATE TABLE IF NOT EXISTS Salaries (
	yearID int NOT NULL,
	teamID varchar(3) NOT NULL,
	lgID varchar(2) NOT NULL,
	playerID varchar(9) NOT NULL,
	salary double precision DEFAULT NULL,
	PRIMARY KEY (yearID,teamID,lgID,playerID)
);

-- --------------------------------------------------------

--
-- Table structure for table Schools
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Schools;
CREATE TABLE IF NOT EXISTS Schools (
	schoolID varchar(15) NOT NULL,
	schoolName varchar(255) DEFAULT NULL,
	schoolCity varchar(55) DEFAULT NULL,
	schoolState varchar(55) DEFAULT NULL,
	schoolNick varchar(55) DEFAULT NULL,
	PRIMARY KEY (schoolID)
);

-- --------------------------------------------------------

--
-- Table structure for table SchoolsPlayers
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS SchoolsPlayers;
CREATE TABLE IF NOT EXISTS SchoolsPlayers (
	playerID varchar(9) NOT NULL,
	schoolID varchar(15) NOT NULL,
	yearMin int DEFAULT NULL,
	yearMax int DEFAULT NULL,
	PRIMARY KEY (playerID,schoolID)
);

-- --------------------------------------------------------

--
-- Table structure for table SeriesPost
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS SeriesPost;
CREATE TABLE IF NOT EXISTS SeriesPost (
	yearID int NOT NULL,
	round varchar(5) NOT NULL,
	teamIDwinner varchar(3) DEFAULT NULL,
	lgIDwinner varchar(2) DEFAULT NULL,
	teamIDloser varchar(3) DEFAULT NULL,
	lgIDloser varchar(2) DEFAULT NULL,
	wins int DEFAULT NULL,
	losses int DEFAULT NULL,
	ties int DEFAULT NULL,
	PRIMARY KEY (yearID,round)
);

-- --------------------------------------------------------

--
-- Table structure for table Teams
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS Teams;
CREATE TABLE IF NOT EXISTS Teams (
	yearID int NOT NULL,
	lgID varchar(2) NOT NULL,
	teamID varchar(3) NOT NULL,
	franchID varchar(3) DEFAULT NULL,
	divID varchar(1) DEFAULT NULL,
	Rank int DEFAULT NULL,
	G int DEFAULT NULL,
	Ghome int DEFAULT NULL,
	W int DEFAULT NULL,
	L int DEFAULT NULL,
	DivWin varchar(1) DEFAULT NULL,
	WCWin varchar(1) DEFAULT NULL,
	LgWin varchar(1) DEFAULT NULL,
	WSWin varchar(1) DEFAULT NULL,
	R int DEFAULT NULL,
	AB int DEFAULT NULL,
	H int DEFAULT NULL,
	H2B int DEFAULT NULL,
	H3B int DEFAULT NULL,
	HR int DEFAULT NULL,
	BB int DEFAULT NULL,
	SO int DEFAULT NULL,
	SB int DEFAULT NULL,
	CS int DEFAULT NULL,
	HBP int DEFAULT NULL,
	SF int DEFAULT NULL,
	RA int DEFAULT NULL,
	ER int DEFAULT NULL,
	ERA double precision DEFAULT NULL,
	CG int DEFAULT NULL,
	SHO int DEFAULT NULL,
	SV int DEFAULT NULL,
	IPouts int DEFAULT NULL,
	HA int DEFAULT NULL,
	HRA int DEFAULT NULL,
	BBA int DEFAULT NULL,
	SOA int DEFAULT NULL,
	E int DEFAULT NULL,
	DP int DEFAULT NULL,
	FP double precision DEFAULT NULL,
	name varchar(50) DEFAULT NULL,
	park varchar(255) DEFAULT NULL,
	attendance int DEFAULT NULL,
	BPF int DEFAULT NULL,
	PPF int DEFAULT NULL,
	teamIDBR varchar(3) DEFAULT NULL,
	teamIDlahman45 varchar(3) DEFAULT NULL,
	teamIDretro varchar(3) DEFAULT NULL,
	PRIMARY KEY (yearID,lgID,teamID)
);

-- --------------------------------------------------------

--
-- Table structure for table TeamsFranchises
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS TeamsFranchises;
CREATE TABLE IF NOT EXISTS TeamsFranchises (
	franchID varchar(3) NOT NULL,
	franchName varchar(50) DEFAULT NULL,
	active varchar(2) DEFAULT NULL,
	NAassoc varchar(3) DEFAULT NULL,
	PRIMARY KEY (franchID)
);

-- --------------------------------------------------------

--
-- Table structure for table TeamsHalf
--
-- Creation: Dec 06, 2013 at 06:43 AM
--

DROP TABLE IF EXISTS TeamsHalf;
CREATE TABLE IF NOT EXISTS TeamsHalf (
	yearID int NOT NULL,
	lgID varchar(2) NOT NULL,
	teamID varchar(3) NOT NULL,
	Half varchar(1) NOT NULL,
	divID varchar(1) DEFAULT NULL,
	DivWin varchar(1) DEFAULT NULL,
	Rank int DEFAULT NULL,
	G int DEFAULT NULL,
	W int DEFAULT NULL,
	L int DEFAULT NULL,
	PRIMARY KEY (yearID,teamID,lgID,Half)
);

END TRANSACTION;
