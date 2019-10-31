DROP DATABASE IF EXISTS live_is_a_game;
CREATE DATABASE live_is_a_game;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	user_name VARCHAR(255) UNIQUE,
	firstname VARCHAR(255),
	patronymic VARCHAR(255),
	lastname VARCHAR(255),
	email VARCHAR(255) UNIQUE,
	phone BIGINT UNIQUE,
	parole VARCHAR(255)
)