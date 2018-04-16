DROP DATABASE IF EXISTS JR;
CREATE DATABASE JR;
USE JR;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
id_user BIGINT NOT NULL AUTO_INCREMENT,
pseudo_user BIGINT,
email_user BIGINT,
password_user BIGINT,
PRIMARY KEY (id_user)
);

DROP TABLE IF EXISTS char;
CREATE TABLE char (
id_char BIGINT NOT NULL AUTO_INCREMENT,
life_char BIGINT,
strength_char BIGINT,
vitality_char BIGINT,
speed_char BIGINT,
id_user BIGINT,
PRIMARY KEY (id_char)
);

DROP TABLE IF EXISTS weapon;
CREATE TABLE weapon (
id_weapon BIGINT NOT NULL AUTO_INCREMENT,
name_weapon BIGINT,
damage_weapon BIGINT,
PRIMARY KEY (id_weapon)
);

DROP TABLE IF EXISTS armor;
CREATE TABLE armor (
id_armor BIGINT NOT NULL AUTO_INCREMENT,
name_armor BIGINT,
protection_armor BIGINT,
PRIMARY KEY (id_armor)
);

DROP TABLE IF EXISTS helmet;
CREATE TABLE helmet (
id_helmet BIGINT NOT NULL AUTO_INCREMENT,
name_helmet BIGINT,
protection_helmet BIGINT,
PRIMARY KEY (id_helmet)
);

DROP TABLE IF EXISTS boots;
 CREATE TABLE boots (
id_boots BIGINT NOT NULL AUTO_INCREMENT,
name_boots BIGINT,
protection_boots BIGINT,
PRIMARY KEY (id_boots)
);

DROP TABLE IF EXISTS glove;
CREATE TABLE glove (
id_glove BIGINT NOT NULL AUTO_INCREMENT,
name_glove BIGINT,
protection_glove BIGINT,
PRIMARY KEY (id_glove)
);

DROP TABLE IF EXISTS monster;
CREATE TABLE monster (
id_monster BIGINT NOT NULL AUTO_INCREMENT,
name_monster BIGINT,
life_monster BIGINT,
strength_monster BIGINT,
vitality_monster BIGINT,
speed_monster BIGINT,
PRIMARY KEY (id_monster)
);

ALTER TABLE char ADD CONSTRAINT FK_char_id_user FOREIGN KEY (id_user) REFERENCES user (id_user);
ALTER TABLE weapon ADD CONSTRAINT FK_weapon_id_char FOREIGN KEY (id_char) REFERENCES char (id_char);
ALTER TABLE armor ADD CONSTRAINT FK_armor_id_char FOREIGN KEY (id_char) REFERENCES char (id_char);
ALTER TABLE monster ADD CONSTRAINT FK_monster_id_char FOREIGN KEY (id_char) REFERENCES char (id_char);
ALTER TABLE helmet ADD CONSTRAINT FK_helmet_id_char FOREIGN KEY (id_char) REFERENCES char (id_char);
ALTER TABLE boots ADD CONSTRAINT FK_boots_id_char FOREIGN KEY (id_char) REFERENCES char (id_char);
ALTER TABLE glove ADD CONSTRAINT FK_glove_id_char FOREIGN KEY (id_char) REFERENCES char (id_char);


