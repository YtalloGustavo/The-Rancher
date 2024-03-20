CREATE DATABASE orancheiro;
USE orancheiro;

CREATE TABLE companhia (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    qtdMilitares INT
);

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf INT NOT NULL,
    postoGraduacao VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    telefone INT NOT NULL,
    idCompanhia INT NOT NULL,
    nomeDeGuerra VARCHAR(50) NOT NULL,
    statusUsuario DOUBLE NOT NULL,
    arranchado DOUBLE NOT NULL,
    FOREIGN KEY (idCompanhia) REFERENCES companhia(id)
);

CREATE TABLE cardapio (
	id INT PRIMARY KEY AUTO_INCREMENT,
    cafeManha VARCHAR(400) NOT NULL,
    almoco VARCHAR(400) NOT NULL,
    janta VARCHAR(400) NOT NULL,
    ceia VARCHAR(400) NOT NULL,
    bebida VARCHAR(400) NOT NULL,
	idUsuario INT NOT NULL,
	FOREIGN KEY (idUsuario) REFERENCES usuario(id)
);

CREATE TABLE relatorio (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idUsuario INT NOT NULL,
	FOREIGN KEY (idUsuario) REFERENCES usuario(id)
);