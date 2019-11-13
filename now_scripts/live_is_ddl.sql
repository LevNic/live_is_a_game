/*При входе пользователя в бот, пользователю присваивается ID и добавляются данные, содержащиеся в телеграм */

INSERT IGNORE INTO users (user_name, firstname, lastname, email, phone, parole)
VALUES ('User_0001', '', '', 'email@gru', '7-345-231-5341', 'parole');
INSERT INTO users (user_name, firstname, lastname, email, phone, parole)
VALUES ('User_0006', 'Иван', 'Иванов', 'email6@gru', '1995563', 'parole');
INSERT INTO users (user_name, firstname, lastname, email, phone, parole)
VALUES ('User_0003', 'Петр', 'Петров', 'email3@gru', '3-345-231-5343', 'parole');
INSERT INTO users (user_name, firstname, lastname, email, phone, parole)
VALUES ('User_0004', 'Сидор', 'Сидоров', 'email4@gru', '4-345-231-5344', 'parole');
INSERT INTO users (user_name, firstname, lastname, email, phone, parole)
VALUES ('User_0005', 'Пуп', 'Пупкин', 'email5@gru', '5-345-231-5345', 'parole');


-- Добавляется ID пользователя в телеграм

INSERT IGNORE INTO other_channels (user_id)

-- создается профиль, пока пустой

INSERT INTO profiles (user_id)
VALUES (201);
INSERT INTO profiles (user_id)
VALUES (218);
INSERT INTO profiles (user_id)
VALUES (219);
INSERT INTO profiles (user_id)
VALUES (220);
INSERT INTO profiles (user_id)
VALUES (223);

-- Остальные поля таблиц users и profiles заполняются отдельными вставками по мере взаимодействия пользователя с ботом

INSERT IGNORE INTO users (email)
VALUES ()

INSERT IGNORE INTO users (phone)
VALUES ()

INSERT IGNORE INTO profiles (gender)
VALUES ()

INSERT IGNORE INTO profiles (birthday)
VALUES ()

INSERT IGNORE INTO profiles (hometown)
VALUES ()

-- Таблица purpose_levels заполняется в начале и данные могут дополняться в процессе существования бота

INSERT IGNORE INTO purpose_levels (id, name)
VALUES ()

-- При постановке задачи пользователем заполняется таблица purposes

INSERT IGNORE INTO purposes (user_id, essence, number_steps, created_at, purpose_status)
VALUES ()

-- По мере решения задачи поля number_steps, purpose_status обновляются

UPDATE purposes
SET
	number_steps = ''
WHERE user_id = 

UPDATE purposes
SET
	purpose_status = ''
WHERE user_id = 

UPDATE purposes
SET
	levl_id = ''
WHERE user_id = 

-- При постановке задачи на день заполняется таблица day_tasks. Это делается автоматически.

INSERT IGNORE INTO day_tasks (purpose_id, mark_day_task, day_task_status)
VALUES()

-- Статус задания обновляется автоматически

UPDATE day_tasks
SET
	day_task_status = ''
WHERE
	purpose_id =

-- Текст задачи на день заносит пользователь

INSERT INTO day_tasks ('purpose_id', 'day_task', 'mark_day_task', 'created_at', 'day_task_status')
VALUES(1, 'Все круто', 'Ok', 'NOW() - 1', 'Ok')

-- Дневник ведет пользователь, занося туда данные

INSERT IGNORE INTO diarys (user_id, entry)
VALUES()

-- Таблица навыков создается один раз

INSERT IGNORE INTO skill_base_list (id, title, point_range)
VALUES()

-- Таблица навыков пользователя заполняется автоматически

INSERT IGNORE INTO user_skills (user_id, skill_id, skill_level, skill_points)
VALUES()

-- Таблица навыков обновляется в зависимости от навыков, приобретаемых игроком

UPDATE user_skills
SET
	skill_id =
	skill_level =
	skill_points =
WHERE
	user_id =

-- Таблица ретроспективных вопросов заполняется одноразово

INSERT IGNORE INTO retrospective_issues (id, issue, onboarding)
VALUES()

-- Пользователи могут создавать сообщества

INSERT IGNORE INTO communities (id, name, creator_id)
VALUES()

INSERT IGNORE INTO users_communities (initiator_user_id)
VALUES ()

-- Пользователь просится в сообщество

INSERT IGNORE INTO users_communities (target_user_id, communiti_id, status, requested_at)

-- Создатель сообщества добавляет в сообщество его членов

UPDATE users_communities
SET
	status =
WHILE
	communiti_id =
	initiator_user_id =
	target_user_id =
	
-- cource_topics создается одноразово

INSERT IGNORE INTO cource_topics (id, name)
VALUES ()

-- Курсы создаются пользователями

INSERT IGNORE INTO training_cources (id, name, created_at, creator_id, topic_id, media_type, linc, metadata)
VALUES()

INSERT IGNORE INTO cources_range (id_cource, id_user, range_cource, created_at)
VALUES

-- Автор может менять содержание курсов

UPDATE training_cources (id, name, updated_at, creator_id, topic_id, media_type, linc, metadata)
VALUES()
WHERE 
	creator_id =
	id = 
	
-- У курсов имеется уровень популярности меняющийся в зависимости от поведения пользователей

UPDATE
SET
	range_cource = 
WHILE
	id_cource = 















