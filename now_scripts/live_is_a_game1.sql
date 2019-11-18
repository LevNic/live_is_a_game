DROP DATABASE IF EXISTS live_is_a_game;
CREATE DATABASE live_is_a_game;
USE live_is_a_game;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	user_name VARCHAR(255) UNIQUE,
	firstname VARCHAR(255),
	lastname VARCHAR(255),
	email VARCHAR(255) UNIQUE,
	phone BIGINT UNIQUE,
	parole VARCHAR(255),
	
	INDEX (phone),
	INDEX (firstname, lastname)
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles(
	user_id SERIAL PRIMARY KEY,
	gender CHAR(1),
	birthday DATE,
	hometown VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS other_channels;
CREATE TABLE other_channels(
	user_id SERIAL PRIMARY KEY,
	telegram_id BIGINT,
	vk_id BIGINT,
	fb_id BIGINT,
	
	FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS purpose_levels;
CREATE TABLE purpose_levels(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS purposes;
CREATE TABLE purposes(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	essence TEXT,
	number_steps INT,
	created_at DATETIME DEFAULT NOW(),
	purpose_status VARCHAR(255),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	level_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (level_id) REFERENCES purpose_levels (id)
);

DROP TABLE IF EXISTS day_tasks;
CREATE TABLE day_tasks(
	id SERIAL PRIMARY KEY,
	purpose_id BIGINT UNSIGNED NOT NULL,
	day_task TEXT,
	mark_day_task VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	day_task_status VARCHAR(255),
	
	FOREIGN KEY (purpose_id) REFERENCES purposes (id)
);

DROP TABLE IF EXISTS diarys;
CREATE TABLE diarys(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	entry TEXT,
	score_day VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	upddate_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS skill_base_list;
CREATE TABLE skill_base_list(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	point_range INT
);

DROP TABLE IF EXISTS user_skills;
CREATE TABLE user_skills(
	user_id BIGINT UNSIGNED NOT NULL,
	skill_id BIGINT UNSIGNED NOT NULL,
	skill_level INT,
	skill_points INT,
	created_at DATETIME DEFAULT NOW(),
	upddate_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (user_id, skill_id),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (skill_id) REFERENCES skill_base_list (id)
);

DROP TABLE IF EXISTS retrospective_issues;
CREATE TABLE retrospective_issues(
	id SERIAL PRIMARY KEY,
	issue TEXT,
	onboarding INT
);

DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	creator_id BIGINT UNSIGNED NOT NULL,
	
	INDEX (name),
	
	FOREIGN KEY (creator_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_user_id BIGINT UNSIGNED NOT NULL,
	communiti_id BIGINT UNSIGNED NOT NULL,
	status ENUM('requsted', 'approved', 'declient', 'excluded'),
	requested_at DATETIME DEFAULT NOW(),
	update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (initiator_user_id, communiti_id),
	
	INDEX (initiator_user_id),
	INDEX (target_user_id),
	INDEX (communiti_id),
	
	FOREIGN KEY (initiator_user_id) REFERENCES users (id),
	FOREIGN KEY (target_user_id) REFERENCES users (id),
	FOREIGN KEY (communiti_id) REFERENCES communities (id)
);

DROP TABLE IF EXISTS cource_topics;
CREATE TABLE cource_topics(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS training_cources;
CREATE TABLE training_cources(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator_id BIGINT UNSIGNED NOT NULL,
	topic_id BIGINT UNSIGNED NOT NULL,
	media_type ENUM ('text', 'audio', 'video'),
	linc VARCHAR(255),
	metadata JSON,
	
	FOREIGN KEY (creator_id) REFERENCES users (id),
	FOREIGN KEY (topic_id) REFERENCES cource_topics (id)
);

DROP TABLE IF EXISTS cources_range;
CREATE TABLE cources_range(
	id_cource BIGINT UNSIGNED NOT NULL,
	id_user BIGINT UNSIGNED NOT NULL,
	range_cource INT,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id_cource, id_user),
	
	FOREIGN KEY (id_cource) REFERENCES training_cources (id),
	FOREIGN KEY (id_user) REFERENCES users (id)
);






