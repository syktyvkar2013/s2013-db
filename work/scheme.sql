BEGIN;
CREATE TABLE `control_engine_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_transmission_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_wd_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_hand_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_body_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_state_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_custom_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_changable_type` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_city` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` varchar(150) NOT NULL
)
;
CREATE TABLE `control_ad` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `model` varchar(50) NOT NULL,
    `modification` varchar(50) NOT NULL,
    `year` date NOT NULL,
    `transmission_id` integer NOT NULL,
    `mileage` integer NOT NULL,
    `engine_capacity` integer NOT NULL,
    `engine_power` integer NOT NULL,
    `engine_type_id` integer NOT NULL,
    `wd_id` integer NOT NULL,
    `hand_id` integer NOT NULL,
    `body_id` integer NOT NULL,
    `state_id` integer NOT NULL,
    `custom_id` integer NOT NULL,
    `changable_id` integer NOT NULL,
    `ownersnum` integer NOT NULL,
    `city_id` integer NOT NULL,
    `location` varchar(500) NOT NULL,
    `person` varchar(500) NOT NULL,
    `phone` integer NOT NULL,
    `call_time` varchar(500) NOT NULL,
    `pub_date` date NOT NULL,
    `views` integer NOT NULL,
    `description` longtext NOT NULL,
    `options_freetext` longtext NOT NULL,
    `agent` bool NOT NULL,
    `real_state` integer NOT NULL,
    `urgency` bool NOT NULL,
    `fake_honeyspot` bool NOT NULL,
    `fake` bool NOT NULL,
    `repeat` bool NOT NULL,
    `discount` bool NOT NULL
)
;
ALTER TABLE `control_ad` ADD CONSTRAINT `state_id_refs_id_6c1f428a` FOREIGN KEY (`state_id`) REFERENCES `control_state_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `wd_id_refs_id_19863da7` FOREIGN KEY (`wd_id`) REFERENCES `control_wd_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `custom_id_refs_id_74ed7e6d` FOREIGN KEY (`custom_id`) REFERENCES `control_custom_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `hand_id_refs_id_5f8a6d7f` FOREIGN KEY (`hand_id`) REFERENCES `control_hand_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `city_id_refs_id_c863d3f` FOREIGN KEY (`city_id`) REFERENCES `control_city` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `changable_id_refs_id_47c0f5da` FOREIGN KEY (`changable_id`) REFERENCES `control_changable_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `transmission_id_refs_id_6e9c08a8` FOREIGN KEY (`transmission_id`) REFERENCES `control_transmission_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `body_id_refs_id_3abc5b4c` FOREIGN KEY (`body_id`) REFERENCES `control_body_type` (`id`);
ALTER TABLE `control_ad` ADD CONSTRAINT `engine_type_id_refs_id_31733470` FOREIGN KEY (`engine_type_id`) REFERENCES `control_engine_type` (`id`);
CREATE INDEX `control_ad_4c6bd384` ON `control_ad` (`transmission_id`);
CREATE INDEX `control_ad_33739976` ON `control_ad` (`engine_type_id`);
CREATE INDEX `control_ad_23bb2ffb` ON `control_ad` (`wd_id`);
CREATE INDEX `control_ad_5a90ea1` ON `control_ad` (`hand_id`);
CREATE INDEX `control_ad_5b892844` ON `control_ad` (`body_id`);
CREATE INDEX `control_ad_469f723e` ON `control_ad` (`state_id`);
CREATE INDEX `control_ad_66fdbbb7` ON `control_ad` (`custom_id`);
CREATE INDEX `control_ad_59b5eefe` ON `control_ad` (`changable_id`);
CREATE INDEX `control_ad_586a73b5` ON `control_ad` (`city_id`);
COMMIT;
