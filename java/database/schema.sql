BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS inventory;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE inventory (
    id SERIAL,
    slot varchar(4) NOT NULL UNIQUE,
    name varchar(50) NOT NULL,
    price int NOT NULL,
    type varchar(50) NOT NULL,
    stock int NOT NULL DEFAULT(10)
);

COMMIT TRANSACTION;
