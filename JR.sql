DROP DATABASE IF EXISTS jr;
CREATE DATABASE jr;
USE jr;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
id_user BIGINT NOT NULL AUTO_INCREMENT,
pseudo_user VARCHAR(15) NOT NULL,
email_user VARCHAR(30) NOT NULL,
password_user VARCHAR(15) NOT NULL,
PRIMARY KEY (id_user)
);

DROP TABLE IF EXISTS chara;
CREATE TABLE chara (
id_chara BIGINT NOT NULL AUTO_INCREMENT,
life_chara BIGINT NOT NULL ,
strength_chara BIGINT NOT NULL,
vitality_chara BIGINT NOT NULL,
speed_chara BIGINT NOT NULL ,
id_user BIGINT NOT NULL,
PRIMARY KEY (id_chara)
);

DROP TABLE IF EXISTS weapon;
CREATE TABLE weapon (
id_weapon BIGINT NOT NULL AUTO_INCREMENT,
name_weapon BIGINT,
damage_weapon BIGINT,
id_chara BIGINT,
PRIMARY KEY (id_weapon)
);

DROP TABLE IF EXISTS armor;
CREATE TABLE armor (
id_armor BIGINT NOT NULL AUTO_INCREMENT,
name_armor BIGINT,
protection_armor BIGINT,
id_chara BIGINT,
PRIMARY KEY (id_armor)
);

DROP TABLE IF EXISTS helmet;
CREATE TABLE helmet (
id_helmet BIGINT NOT NULL AUTO_INCREMENT,
name_helmet BIGINT,
protection_helmet BIGINT,
id_chara BIGINT,
PRIMARY KEY (id_helmet)
);

DROP TABLE IF EXISTS boots;
 CREATE TABLE boots (
id_boots BIGINT NOT NULL AUTO_INCREMENT,
name_boots BIGINT,
protection_boots BIGINT,
id_chara BIGINT,
PRIMARY KEY (id_boots)
);

DROP TABLE IF EXISTS glove;
CREATE TABLE glove (
id_glove BIGINT NOT NULL AUTO_INCREMENT,
name_glove BIGINT,
protection_glove BIGINT,
id_chara BIGINT,
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
id_chara BIGINT,
PRIMARY KEY (id_monster)
);

ALTER TABLE chara ADD CONSTRAINT FK_chara_id_user FOREIGN KEY (id_user) REFERENCES user (id_user);
ALTER TABLE weapon ADD CONSTRAINT FK_weapon_id_chara FOREIGN KEY (id_chara) REFERENCES chara (id_chara);
ALTER TABLE armor ADD CONSTRAINT FK_armor_id_chara FOREIGN KEY (id_chara) REFERENCES chara (id_chara);
ALTER TABLE monster ADD CONSTRAINT FK_monster_id_chara FOREIGN KEY (id_chara) REFERENCES chara (id_chara);
ALTER TABLE helmet ADD CONSTRAINT FK_helmet_id_chara FOREIGN KEY (id_chara) REFERENCES chara (id_chara);
ALTER TABLE boots ADD CONSTRAINT FK_boots_id_chara FOREIGN KEY (id_chara) REFERENCES chara (id_chara);
ALTER TABLE glove ADD CONSTRAINT FK_glove_id_chara FOREIGN KEY (id_chara) REFERENCES chara (id_chara);


