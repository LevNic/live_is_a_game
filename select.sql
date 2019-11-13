USE live_is_a_game;

-- Выводит последние 7 записей в дневнике.

SELECT DATE_FORMAT(created_at, '%d/%m/%y') AS `data`, entry
FROM diarys
WHERE user_id = 101
ORDER BY created_at DESC
LIMIT 7;

-- Количество дней в игре

SELECT TIMESTAMPDIFF(DAY, created_at, CURDATE()) as days_in_the_game
FROM profiles
WHERE user_id = 101;

-- Уровень навыков

SELECT title, skill_level, skill_points, point_range - skill_points AS to_the_next_level
FROM skill_base_list, user_skills
WHERE id = skill_id AND user_id = 102;

-- Вывод цели

SELECT essence AS purpose, TIMESTAMPDIFF(DAY, created_at, CURDATE()) AS days_purpose
FROM purposes
WHERE user_id = 101;

-- Задача дня. Возвращает последнюю задачу дня, если она была поставлена сегодня. В противном случае возвращает NULL.

SELECT CASE WHEN DATE(day_tasks.created_at) = CURDATE()
	THEN
		day_task
	ELSE
		NULL
	END AS task
FROM day_tasks
	WHERE purpose_id = 2
ORDER BY day_task DESC	
LIMIT 1;

-- Задача дня. Возвращает задачу дня, если она была поставлена сегодня. В противном случае не возвращает ничего.

SELECT day_task
FROM day_tasks
WHERE DATE(day_tasks.created_at) = CURDATE() AND purpose_id = 1;

-- Визуализация настроения недели(каждый день в сообщении бота) вывести настроение с понедельника по текущий день.

SELECT score_day
FROM diarys
WHERE user_id = 101 AND CURDATE() - DATE(created_at) < DAYOFWEEK(CURDATE()) 
ORDER BY created_at DESC;

-- Визуализация прогресса недели(mark_day_task) вывести с понедельника по текущий день.

SELECT mark_day_task
FROM day_tasks
WHERE purpose_id = 1 AND CURDATE() - DATE(created_at) < DAYOFWEEK(CURDATE())
ORDER BY created_at DESC;

-- Задача поставленная со вчера(task утром, если есть статус)

SELECT day_task
FROM day_tasks
WHERE purpose_id = 1 AND DATE(created_at) = CURDATE() - 1;

-- Количество регистраций в боте (за каждый день)(по запросу админа)

SELECT DATE(created_at), COUNT(created_at)
FROM profiles
GROUP BY DATE(created_at)
ORDER BY DATE(created_at) DESC
LIMIT 7;

-- Ретеншн Х дня (% активных(поставивших задачу дня) пользователей в день Х 
-- от общего количества зарегистрированных в день 
-- А - точка отсчета, задаваемая админом)(выводится в панель админа)

SELECT
(SELECT COUNT(created_at)
FROM day_tasks
WHERE DATE(created_at) = CURDATE() - 0
GROUP BY DATE(created_at))
/
(SELECT COUNT(created_at)
FROM profiles
WHERE DATE(created_at) = CURDATE() - 0
GROUP BY DATE(created_at))
* 100 AS retention;


/* Вспомогательные скрипты
UPDATE day_tasks
SET created_at = CURDATE() - 8
WHERE id = 101;

UPDATE profiles
SET created_at = CURDATE() - 1
WHERE user_id = 104;



INSERT INTO day_tasks (purpose_id, day_task, mark_day_task, created_at, day_task_status)
VALUES (3, 'Пошли все', 'Жесть', (CURDATE() - 2), 'Ok')

INSERT INTO day_tasks (purpse_id)
VALUES ('1')

SELECT *
FROM users
ORDER BY id DESC;

SELECT *
FROM purposes;

SELECT *
FROM profiles;

SELECT DATE(created_at), COUNT(created_at)
FROM day_tasks
GROUP BY DATE(created_at)
ORDER BY DATE(created_at) DESC
LIMIT 7;*/









