CREATE DATABASE projeto;

USE projeto;


CREATE TABLE usuarios (
tipo varchar(255),
senha varchar(255),
email varchar(255),
id int PRIMARY KEY AUTO_INCREMENT,
cpf varchar(14),
nome varchar(255)
);

CREATE TABLE curriculo (
id_curr int PRIMARY KEY AUTO_INCREMENT,
telefone varchar(14),
email varchar(255),
curso varchar(255),
nome varchar(255)
);

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencia varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE habilidades (
id_hab int PRIMARY KEY AUTO_INCREMENT,
habilidade varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE experiencia (
id_exp int PRIMARY KEY AUTO_INCREMENT,
inicio date,
ocupacao varchar(255),
empresa varchar(255),
fim date,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE educacao (
id_educ int PRIMARY KEY AUTO_INCREMENT,
fim date,
curso varchar(255),
instituicao varchar(255),
inicio date,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

