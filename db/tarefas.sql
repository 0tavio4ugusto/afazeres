DROP USER 'CRUD'@'%';
DROP USER 'CRUD'@'localhost';
CREATE USER 'CRUD'@'%' IDENTIFIED BY 'server123';
CREATE USER 'CRUD'@'localhost' IDENTIFIED BY 'server123';
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'CRUD'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'CRUD'@'localhost';
FLUSH PRIVILEGES;

DROP DATABASE TODOLIST;
CREATE DATABASE TODOLIST;
USE TODOLIST;

CREATE TABLE usuarios (
idusuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE tarefas (
idtarefa INT AUTO_INCREMENT,
idusuario INT,
titulotarefa VARCHAR(120),
desctarefa VARCHAR(500),
statustarefa INT,

CONSTRAINT fkusuario FOREIGN KEY  (idusuario) REFERENCES usuarios(idusuario),
CONSTRAINT PRIMARY KEY (idtarefa, idusuario)

);

INSERT INTO usuarios values(
    1,
    "Otavio",
    "otavio@email.com"
    "12341234"
);

INSERT INTO tarefas VALUES (
    default,
    1,
    "curso",
    "Fazer tudo que tem pra fazer",
    0

);