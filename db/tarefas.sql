CREATE DATABASE TODOLIST;
USE TODOLIST;

CREATE USER 'SELECT'@'localhost' IDENTIFIED BY 'Select@123';
CREATE USER 'CRUD'@'localhost' IDENTIFIED BY 'Crud@123';

GRANT SELECT ON TODOLIST.* TO 'SELECT'@'%';
GRANT INSERT, UPDATE, DELETE ON TODOLIST.* TO 'CRUD'@'%';
FLUSH PRIVILEGES;

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