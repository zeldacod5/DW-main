
-- Il y auras les voitures privé (private vehicles), les voitures utilitaires (commercial vehicles), --
-- Les voitures neuves (new cars) et les voitures d'occasion. (second-hand cars)--

DROP DATABASE IF EXISTS oto;

CREATE DATABASE oto;

USE oto;

CREATE TABLE `cars` (
   `car_id` INT,
   `car_priv_name` VARCHAR(30),
   `car_priv_stock` SMALLINT NOT NULL,
   `car_priv_registration` VARCHAR(20),
   `car_priv_enter_date` DATE NOT NULL,
   `car_com_name` VARCHAR(30),
   `car_com_stock` SMALLINT NOT NULL,
   `car_com_registration` VARCHAR(20),
   `car_com_enter_date` DATE,
   `car_new_name` VARCHAR(30),
   `car_new_stock` SMALLINT NOT NULL,
   `car_new_registration` VARCHAR(20),
   `car_new_enter_date` DATE,
   `car_use_name` VARCHAR(30),
   `car_use_stock` SMALLINT NOT NULL,
   `car_use_registration` VARCHAR(20),
   `car_use_enter_date` DATE,
   `car_to_repair` SMALLINT,
   `car_to_repair_enter_date` DATE,
   `car_in_maintenance` SMALLINT,
   `car_in_maintenance_enter_date` DATE,
   `car_price` INT NOT NULL,
   `car_type` VARCHAR(30),
   PRIMARY KEY(`car_id`)
);

CREATE TABLE `seller` (
   `sel_id` INT,
   `sel_first_name` VARCHAR(20),
   `sel_second_name` VARCHAR(50),
   `sel_city` VARCHAR(20),
   `sel_store` VARCHAR(20),
   `successful_sale` SMALLINT,
   PRIMARY KEY(`sel_id`)
);

CREATE TABLE `customer` (
   `cus_id` INT,
   `cus_first_name` VARCHAR(20),
   `cus_second_name` VARCHAR(20),
   `cus_city` VARCHAR(20),
   `cus_store` VARCHAR(20),
   PRIMARY KEY(`cus_id`)
);

CREATE TABLE `technician` (
   `tec_id` INT,
   `tec_first_name` VARCHAR(20),
   `tec_second_name` VARCHAR(20),
   `tec_city` VARCHAR(20),
   `tec_store` VARCHAR(20),
   `achievement` SMALLINT,
   PRIMARY KEY(`tec_id`)
);

CREATE TABLE `sell` (
   `sel_id` INT,
   `cus_id` INT,
   `on_account` SMALLINT,
   `cash` SMALLINT,
   PRIMARY KEY(`sel_id`, `cus_id`),
   FOREIGN KEY(`sel_id`) REFERENCES `seller`(`sel_id`),
   FOREIGN KEY(`cus_id`) REFERENCES `customer`(`cus_id`)
);

CREATE TABLE `executed` (
   `car_id` INT,
   `tec_id` INT,
   `repair` VARCHAR(30),
   `maintenance` VARCHAR(30),
   `accessory_installation` VARCHAR(30),
   `descriptif des répérations` VARCHAR
   `price` INT,
   PRIMARY KEY(`car_id`, `tec_id`),
   FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`),
   FOREIGN KEY(`tec_id`) REFERENCES `technician`(`tec_id`)
);

CREATE INDEX `idx_car_enter_date`
ON `cars` (`car_priv_enter_date`, `car_com_enter_date`, `car_new_enter_date`, `car_use_enter_date`);
CREATE INDEX `idx_worktodo`
ON `cars` (`car_to_repair`, `car_in_maintenance`);
CREATE INDEX `idx_price`
ON `executed` (`repair_price`, `acc_price`);
