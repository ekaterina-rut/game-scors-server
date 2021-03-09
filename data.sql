CREATE database GAMESRESULTS;
use GAMESRESULTS;

CREATE TABLE GAMES (
gameId int NOT NULL AUTO_INCREMENT,
teamA varchar(20) NOT NULL,
teamB varchar(20) NOT NULL,
teamAresult int,
teamBresult int,
creationDate DATETIME NOT NULL DEFAULT now(),
categoty varchar(20) NOT NULL,
primary key (gameId)
);

CREATE TABLE COMMENTS (
id int NOT NULL AUTO_INCREMENT,
gameId int NOT NULL ,
comments varchar(100) NOT NULL,
creationDate DATETIME NOT NULL DEFAULT now(),
primary key (id)
);

INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `teamAresult`, `teamBresult`, `categoty`) VALUES ('FC Barcelona', 'Real-Madrid', '3', '1', 'football');
INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `teamAresult`, `teamBresult`, `categoty`) VALUES ('Chelsia', 'Man United', '2', '2', 'football');
INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `teamAresult`, `teamBresult`, `categoty`) VALUES ('Maccabi TLV', 'CSKA Moscow', '82', '51', 'basketball');
INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `teamAresult`, `teamBresult`, `categoty`) VALUES ('Maccabi TLV', 'Real-Madrd', '88', '91', 'basketball');
INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `teamAresult`, `teamBresult`, `categoty`) VALUES ('FC Barcelona', 'Real-Madrd', '80', '81', 'basketball');

INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `creationDate`, `categoty`) VALUES ('CSKA Moscow', 'Real-Madrd', '2020-07-08', 'basketball');
UPDATE `gamesresults`.`games` SET `creationDate` = '2020-01-02' WHERE (`gameId` = '1');
UPDATE `gamesresults`.`games` SET `creationDate` = '2020-02-03' WHERE (`gameId` = '2');
UPDATE `gamesresults`.`games` SET `creationDate` = '2020-03-04' WHERE (`gameId` = '3');
UPDATE `gamesresults`.`games` SET `creationDate` = '2020-04-05' WHERE (`gameId` = '4');
UPDATE `gamesresults`.`games` SET `creationDate` = '2020-06-07' WHERE (`gameId` = '5');
INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `creationDate`, `categoty`) VALUES ('Real-Madrd', 'FC Barcelona', '2020-08-09', 'basketball');
INSERT INTO `gamesresults`.`games` (`teamA`, `teamB`, `creationDate`, `categoty`) VALUES ('Chelsia', 'FC Barcelona', '2020-10-11', 'football');

