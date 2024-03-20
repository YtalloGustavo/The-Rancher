-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/03/2024 às 15:13
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
-- Estrutura para tabela `companhia`
--

CREATE TABLE `companhia` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `companhia`
--

INSERT INTO `companhia` (`id`, `nome`) VALUES
(1, '1° Companhia'),
(2, '2° Companhia'),
(3, '3° Companhia'),
(4, '4° Companhia'),
(5, '5° Companhia'),
(6, '6° Companhia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nomeDeGuerra` varchar(100) NOT NULL,
  `cpf` int(11) NOT NULL,
  `postoGraduacao` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `telefone` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `arranchado` tinyint(4) NOT NULL,
  `idCompanhia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `nomeDeGuerra`, `cpf`, `postoGraduacao`, `email`, `senha`, `telefone`, `status`, `arranchado`, `idCompanhia`) VALUES
(1, 'Jeferson Guilherme Leite do Nascimento', 'Leite', 2147483647, 'Cabo', 'jeferson@teste.com', '12345678', 2147483647, 1, 1, 1),
(2, 'João Silva', 'João', 2147483647, 'Soldado', 'joao.silva@email.com', 'senha123', 1122334455, 1, 0, 2),
(3, 'Maria Souza', 'Maria', 2147483647, 'Sargento', 'maria.souza@email.com', 'senha456', 2147483647, 1, 1, 3),
(4, 'Pedro Oliveira', 'Pedro', 2147483647, 'Cabo', 'pedro.oliveira@email.com', 'senha789', 2147483647, 0, 1, 4),
(5, 'Ana Santos', 'Ana', 2147483647, 'Soldado', 'ana.santos@email.com', 'senhaabc', 2147483647, 1, 0, 5),
(6, 'Carlos Pereira', 'Carlos', 2147483647, 'Tenente', 'carlos.pereira@email.com', 'senha789abc', 2147483647, 1, 1, 6),
(7, 'Juliana Silva', 'Juliana', 2147483647, 'Sargento', 'juliana.silva@email.com', 'senhacba987', 2147483647, 0, 0, 1),
(8, 'Lucas Oliveira', 'Lucas', 2147483647, 'Cabo', 'lucas.oliveira@email.com', 'senha456cba', 2147483647, 1, 1, 2),
(9, 'Mariana Silva', 'Mariana', 2147483647, 'Sargento', 'mariana.silva@email.com', 'senhamari123', 2147483647, 0, 0, 3),
(10, 'Rafael Souza', 'Rafael', 2147483647, 'Soldado', 'rafael.souza@email.com', 'senha987rafa', 1122334455, 1, 1, 4),
(11, 'Amanda Santos', 'Amanda', 2147483647, 'Tenente', 'amanda.santos@email.com', 'senhaamanda', 2147483647, 0, 0, 5),
(12, 'Rodrigo Pereira', 'Rodrigo', 2147483647, 'Sargento', 'rodrigo.pereira@email.com', 'senharodrigo', 2147483647, 1, 1, 6),
(13, 'Camila Oliveira', 'Camila', 2147483647, 'Cabo', 'camila.oliveira@email.com', 'senhacamila', 2147483647, 1, 0, 1),
(14, 'Fernando Silva', 'Fernando', 2147483647, 'Soldado', 'fernando.silva@email.com', 'senhafernando', 2147483647, 0, 1, 2),
(15, 'Luana Santos', 'Luana', 2147483647, 'Tenente', 'luana.santos@email.com', 'senha123lu', 2147483647, 1, 0, 3),
(16, 'Gustavo Pereira', 'Gustavo', 2147483647, 'Sargento', 'gustavo.pereira@email.com', 'senhagustavo', 1122334455, 1, 1, 4),
(17, 'André Silva', 'André', 2147483647, 'Marechal', 'andre.silva@email.com', 'senhaandre', 2147483647, 1, 0, 1),
(18, 'Beatriz Santos', 'Beatriz', 2147483647, 'General do Exército', 'beatriz.santos@email.com', 'senhabia', 2147483647, 0, 1, 2),
(19, 'Cristiano Oliveira', 'Cristiano', 2147483647, 'General de Divisão', 'cristiano.oliveira@email.com', 'senhacris', 2147483647, 1, 0, 3),
(20, 'Daniela Pereira', 'Daniela', 2147483647, 'General de Brigada', 'daniela.pereira@email.com', 'senhadani', 2147483647, 0, 1, 4),
(21, 'Eduardo Souza', 'Eduardo', 2147483647, 'Coronel', 'eduardo.souza@email.com', 'senhaedu', 2147483647, 1, 0, 5),
(22, 'Fernanda Silva', 'Fernanda', 2147483647, 'Tenente-Coronel', 'fernanda.silva@email.com', 'senhafern', 2147483647, 0, 1, 6),
(23, 'Gabriel Santos', 'Gabriel', 2147483647, 'Major', 'gabriel.santos@email.com', 'senhagab', 2147483647, 1, 0, 1),
(24, 'Helena Oliveira', 'Helena', 2147483647, 'Capitão', 'helena.oliveira@email.com', 'senhahel', 2147483647, 0, 1, 2),
(25, 'Isabela Silva', 'Isabela', 2147483647, '1º Tenente', 'isabela.silva@email.com', 'senhaiza', 2147483647, 1, 0, 3),
(26, 'Joãozinho Pereira', 'Joãozinho', 2147483647, '2º Tenente', 'joaozinho.pereira@email.com', 'senhaojp', 2147483647, 0, 1, 4),
(27, 'Kátia Santos', 'Kátia', 2147483647, 'Aspirante a Oficial', 'katia.santos@email.com', 'senhakat', 2147483647, 1, 0, 5),
(28, 'Leandro Oliveira', 'Leandro', 2147483647, 'Subtenente', 'leandro.oliveira@email.com', 'senhaleo', 2147483647, 0, 1, 6),
(29, 'Mariana Silva', 'Mariana', 2147483647, '1º Sargento', 'mariana.silva@email.com', 'senhamars', 2147483647, 1, 0, 1),
(30, 'Nelson Pereira', 'Nelson', 2147483647, '2º Sargento', 'nelson.pereira@email.com', 'senhanel', 2147483647, 0, 1, 2),
(31, 'Olivia Santos', 'Olivia', 2147483647, '3º Sargento', 'olivia.santos@email.com', 'senhaoli', 2147483647, 1, 0, 3),
(32, 'Paulo Oliveira', 'Paulo', 2147483647, 'Cabo', 'paulo.oliveira@email.com', 'senhapau', 2147483647, 0, 1, 4),
(33, 'Quiteria Silva', 'Quiteria', 2147483647, 'Soldado', 'quiteria.silva@email.com', 'senhaqui', 2147483647, 1, 0, 5),
(34, 'Ricardo Pereira', 'Ricardo', 2147483647, 'Marechal', 'ricardo.pereira@email.com', 'senharic', 2147483647, 0, 1, 6),
(35, 'Sandra Oliveira', 'Sandra', 2147483647, 'General do Exército', 'sandra.oliveira@email.com', 'senhasan', 2147483647, 1, 0, 1),
(36, 'Thiago Silva', 'Thiago', 2147483647, 'General de Divisão', 'thiago.silva@email.com', 'senhathi', 2147483647, 0, 1, 2),
(37, 'Ursula Santos', 'Ursula', 2147483647, 'Coronel', 'ursula.santos@email.com', 'senhaurs', 2147483647, 1, 0, 3),
(38, 'Vinicius Pereira', 'Vinicius', 2147483647, 'Tenente-Coronel', 'vinicius.pereira@email.com', 'senvin', 2147483647, 0, 1, 4),
(39, 'Wagner Oliveira', 'Wagner', 2147483647, 'Major', 'wagner.oliveira@email.com', 'senhawag', 2147483647, 1, 0, 5),
(40, 'Ximena Silva', 'Ximena', 2147483647, 'Capitão', 'ximena.silva@email.com', 'senhaxi', 2147483647, 0, 1, 6),
(41, 'Yago Santos', 'Yago', 2147483647, '1º Tenente', 'yago.santos@email.com', 'senhayag', 2147483647, 1, 0, 1),
(42, 'Zuleica Oliveira', 'Zuleica', 2147483647, '2º Tenente', 'zuleica.oliveira@email.com', 'senhazul', 2147483647, 0, 1, 2),
(43, 'Ana Carolina Pereira', 'Ana Carolina', 2147483647, 'Aspirante a Oficial', 'anacarolina.pereira@email.com', 'senhaana', 2147483647, 1, 0, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `companhia`
--
ALTER TABLE `companhia`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCompanhia` (`idCompanhia`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `companhia`
--
ALTER TABLE `companhia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idCompanhia`) REFERENCES `companhia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
