DROP DATABASE IF EXISTS exo;

CREATE DATABASE exo;

USE exo;

CREATE TABLE `personne` (
    `per_num` INT AUTO_INCREMENT PRIMARY KEY,
    `per_nom` VARCHAR(50),
    `per_prenom` VARCHAR(50),
    `per_adresse` VARCHAR(50),
    `per_ville` VARCHAR(50)
);

CREATE TABLE `groupe` (
    `gro_num` INT PRIMARY KEY AUTO_INCREMENT,
    `gro_libelle` VARCHAR(50)
);

CREATE TABLE `appartient` (
PRIMARY KEY (`per_num`, `gro_num`),
FOREIGN KEY(`per_num`) REFERENCES `personne`(`per_num`),
FOREIGN KEY(`gro_num`) REFERENCES `groupe`(`gro_num`)
);

