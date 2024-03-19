-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/03/2024 às 20:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rancheiroteste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nomeDeGuerra` varchar(100) NOT NULL,
  `cpf` int(11) NOT NULL,
  `postoGraduacao` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `telefone` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `arranchado` tinyint(1) NOT NULL,
  `idCompanhia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `nomeDeGuerra`, `cpf`, `postoGraduacao`, `email`, `senha`, `telefone`, `status`, `arranchado`, `idCompanhia`) VALUES
(1, 'Jeferson Guilherme Leite do Nascimento', 'Leite', 2147483647, 'Cabo', 'jeferson@teste.com', '12345678', 2147483647, 1, 1, 0),
(3, 'João Silva', 'João', 2147483647, 'Soldado', 'joao.silva@email.com', 'senha123', 1122334455, 1, 0, 0),
(4, 'Maria Souza', 'Maria', 2147483647, 'Sargento', 'maria.souza@email.com', 'senha456', 2147483647, 1, 1, 0),
(5, 'Pedro Oliveira', 'Pedro', 2147483647, 'Cabo', 'pedro.oliveira@email.com', 'senha789', 2147483647, 0, 1, 0),
(6, 'Ana Santos', 'Ana', 2147483647, 'Soldado', 'ana.santos@email.com', 'senhaabc', 2147483647, 1, 0, 0),
(7, 'Carlos Pereira', 'Carlos', 2147483647, 'Tenente', 'carlos.pereira@email.com', 'senha789abc', 2147483647, 1, 1, 0),
(8, 'Juliana Silva', 'Juliana', 2147483647, 'Sargento', 'juliana.silva@email.com', 'senhacba987', 2147483647, 0, 0, 0),
(9, 'Lucas Oliveira', 'Lucas', 2147483647, 'Cabo', 'lucas.oliveira@email.com', 'senha456cba', 2147483647, 1, 1, 0),
(10, 'Mariana Silva', 'Mariana', 2147483647, 'Sargento', 'mariana.silva@email.com', 'senhamari123', 2147483647, 0, 0, 0),
(11, 'Rafael Souza', 'Rafael', 2147483647, 'Soldado', 'rafael.souza@email.com', 'senha987rafa', 1122334455, 1, 1, 0),
(12, 'Amanda Santos', 'Amanda', 2147483647, 'Tenente', 'amanda.santos@email.com', 'senhaamanda', 2147483647, 0, 0, 0),
(13, 'Rodrigo Pereira', 'Rodrigo', 2147483647, 'Sargento', 'rodrigo.pereira@email.com', 'senharodrigo', 2147483647, 1, 1, 0),
(14, 'Camila Oliveira', 'Camila', 2147483647, 'Cabo', 'camila.oliveira@email.com', 'senhacamila', 2147483647, 1, 0, 0),
(15, 'Fernando Silva', 'Fernando', 2147483647, 'Soldado', 'fernando.silva@email.com', 'senhafernando', 2147483647, 0, 1, 0),
(16, 'Luana Santos', 'Luana', 2147483647, 'Tenente', 'luana.santos@email.com', 'senha123lu', 2147483647, 1, 0, 0),
(17, 'Gustavo Pereira', 'Gustavo', 2147483647, 'Sargento', 'gustavo.pereira@email.com', 'senhagustavo', 1122334455, 1, 1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
