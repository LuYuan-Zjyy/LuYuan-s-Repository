Update user set age=18 where id =8;

INSERT INTO team (id, teamName) VALUES (1, 'ECNU');
INSERT INTO team (id, teamName) VALUES (2, 'Peking University');
INSERT INTO team (id, teamName) VALUES (3, 'Tsinghua University');

INSERT INTO score (id, teamid, userid, score) VALUES (1, 1, 4, 100);
INSERT INTO score (id, teamid, userid, score) VALUES (2, 1, 5, 90);
INSERT INTO score (id, teamid, userid, score) VALUES (3, 2, 6, 80);
INSERT INTO score (id, teamid, userid, score) VALUES (4, 3, 7, 70);
INSERT INTO score (id, teamid, userid, score) VALUES (5, 3, 1, 60);
INSERT INTO score (id, teamid, userid, score) VALUES (6, 2, 2, 50);
INSERT INTO score (id, teamid, userid, score) VALUES (7, 1, 3, 40);
INSERT INTO score (id, teamid, userid, score) VALUES (8, 1, 8, 30);
INSERT INTO score (id, teamid, userid, score) VALUES (9, 2, 9, 20);

SELECT * FROM team;
SELECT * FROM score;

SELECT u.id,u.name,u.age FROM user u
JOIN score s ON u.id=s.userid
JOIN team t ON s.teamid=t.id
WHERE t.teamName='ECNU' AND u.age<20;

SELECT SUM(s.score) FROM score s
WHERE s.teamid=1
AS total_score, t.teamName;

select * FROM user;
select * FROM team;
select * FROM score;

--DELETE FROM user;
--DELETE FROM team;
--DELETE FROM score;
--
--select * FROM user;
--select * FROM team;
--select * FROM score;
