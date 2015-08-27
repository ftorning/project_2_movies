DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS matches;

CREATE TABLE Players ( id SERIAL primary key, name TEXT );

CREATE TABLE Matches ( id SERIAL primary key, player int references Players(id),
						opponent int references Players(id), result int);

-- view shows the number of wins for each player
CREATE VIEW wins AS
	SELECT Players.id, COUNT(matches.opponent) AS n 
	FROM Players
	LEFT JOIN (SELECT * FROM Matches WHERE result>0) as Matches
	ON Players.id = Matches.player
	GROUP BY Players.id;

-- view of number of matches for each player
CREATE VIEW count AS
	SELECT Players.id, COUNT(Matches.opponent) AS n 
	FROM Players
	LEFT JOIN Matches
	ON Players.id = Matches.player
	GROUP BY Players.id;

-- view both wins and count for each player
CREATE VIEW standings AS 
	SELECT Players.id, Players.name, wins.n as wins, count.n as matches 
	FROM Players, count, wins
	WHERE Players.id = wins.id and wins.id = count.id;



