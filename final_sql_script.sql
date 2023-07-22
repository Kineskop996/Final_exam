-- сколько голов забила команда в период с '2018-08-12 13:30:00' по '2018-09-22 15:00:00' 
SELECT goals, team
FROM games
WHERE game_date BETWEEN '2018-08-12 13:30:00' AND '2018-09-22 15:00:00';

-- обновление количества голов для команды Crystal Palace
UPDATE games 
SET goals = '2'
WHERE team = 'Crystal Palace' AND game_id = 2;

-- удаление игрока
DELETE FROM players 
WHERE first_name = 'Loris' AND last_name = 'Karius' AND player_id = 1;

-- добавление игрока 
INSERT INTO players VALUES(1,'Test','Player','Player Test','Germany','1987-06-21','GOALKEEPER');

-- подчсчет среднего количетва голов и суммы голов за период с '2018-08-12 13:30:00' по '2018-09-22 15:00:00' 
SELECT AVG(goals) as avg_goals , SUM(goals) as sum_goals, team
FROM games
WHERE game_date BETWEEN '2018-08-12 13:30:00' AND '2018-09-22 15:00:00'
group by goals, team;

-- количество игроков с ролью GOALKEEPER
SELECT COUNT(nickname) as count_player, role
FROM players
WHERE role = 'GOALKEEPER'
group by role;





