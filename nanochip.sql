-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2021 às 02:22
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nanochip`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `os` int(11) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(5) DEFAULT NULL,
  `evento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `os`, `data`, `hora`, `evento`) VALUES
(1, 1521, '12/10/2021', '20:03', 'derfdfdfdfdf'),
(2, 1521, '12/10/2021', '20:03', 'derfdfdfdfdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os_imac`
--

CREATE TABLE `os_imac` (
  `os` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `modelo` varchar(10) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `tamanho` varchar(15) DEFAULT NULL,
  `emc` varchar(20) DEFAULT NULL,
  `processador` varchar(15) DEFAULT NULL,
  `ram` varchar(5) DEFAULT NULL,
  `placa_video` varchar(16) DEFAULT NULL,
  `hd` varchar(6) DEFAULT NULL,
  `acessorios` varchar(30) DEFAULT NULL,
  `problema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `os_imac`
--

INSERT INTO `os_imac` (`os`, `cpf`, `modelo`, `ano`, `tamanho`, `emc`, `processador`, `ram`, `placa_video`, `hd`, `acessorios`, `problema`) VALUES
(1520, '16597282744', 'ps52452x', '2020', '27', 'fvfvrvf4433', 'i3 2330m', '16gb', 'GTX 1660TI', '1tb', 'não', 'não liga'),
(1525, '16597282744', 'ps52452x', '2020', '27', 'fvfvrvf4433', 'i3 2330m', '8gb', 'integrado', '1tb', 'não', 'ety');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os_macbook`
--

CREATE TABLE `os_macbook` (
  `os` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `macbook` varchar(3) DEFAULT NULL,
  `modelo` varchar(10) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `emc` varchar(20) DEFAULT NULL,
  `processador` varchar(15) DEFAULT NULL,
  `ram` varchar(5) DEFAULT NULL,
  `placa_video` varchar(16) DEFAULT NULL,
  `hd` varchar(6) DEFAULT NULL,
  `carregador` varchar(15) DEFAULT NULL,
  `tamanho_tela` varchar(20) DEFAULT NULL,
  `acessorios` varchar(30) DEFAULT NULL,
  `problema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `os_macbook`
--

INSERT INTO `os_macbook` (`os`, `cpf`, `macbook`, `modelo`, `ano`, `emc`, `processador`, `ram`, `placa_video`, `hd`, `carregador`, `tamanho_tela`, `acessorios`, `problema`) VALUES
(1521, '16597282744', 'pro', 'ps52452x', '2020', 'fvfvrvf4433', 'i3 2330m', '8gb', 'integrado', '1tb', '19v 3,42A', '14', 'não', ' dfgg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os_notebook`
--

CREATE TABLE `os_notebook` (
  `os` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `marca` varchar(15) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `processador` varchar(15) DEFAULT NULL,
  `ram` varchar(5) DEFAULT NULL,
  `hd` varchar(6) DEFAULT NULL,
  `placa_video` varchar(16) DEFAULT NULL,
  `tamanho_tela` varchar(15) DEFAULT NULL,
  `carregador` varchar(20) DEFAULT NULL,
  `acessorios` varchar(30) DEFAULT NULL,
  `problema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `os_notebook`
--

INSERT INTO `os_notebook` (`os`, `cpf`, `marca`, `modelo`, `processador`, `ram`, `hd`, `placa_video`, `tamanho_tela`, `carregador`, `acessorios`, `problema`) VALUES
(1522, '16597282744', 'Positivo', 'ps52452x', 'i3 2330m', '8gb', '1tb', 'integrado', '14', '19v 3,42A', 'não', 'erer'),
(1528, '16597282744', 'Positivo', 'ps52452x', 'i3 2330m', '8gb', '1tb', 'integrado', '14', '19v 3,42A', 'não', '58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os_pc`
--

CREATE TABLE `os_pc` (
  `os` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `equipamento` varchar(15) DEFAULT NULL,
  `placa_mae` varchar(15) DEFAULT NULL,
  `processador` varchar(15) DEFAULT NULL,
  `ram` varchar(5) DEFAULT NULL,
  `hd` varchar(6) DEFAULT NULL,
  `placa_video` varchar(16) DEFAULT NULL,
  `fonte` varchar(15) DEFAULT NULL,
  `gabinete` varchar(20) DEFAULT NULL,
  `acessorios` varchar(30) DEFAULT NULL,
  `problema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `os_pc`
--

INSERT INTO `os_pc` (`os`, `cpf`, `equipamento`, `placa_mae`, `processador`, `ram`, `hd`, `placa_video`, `fonte`, `gabinete`, `acessorios`, `problema`) VALUES
(1521, '16597282744', 'PC Gamer', 'Ga-H110-M', 'i3 2330m', '8gb', '1tb', 'integrado', 'EVGA 750W', 'Corsair GSX', 'não', 'sfgfg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `login` varchar(32) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Ruan Daniel', 'ruan@nanochip', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `os_imac`
--
ALTER TABLE `os_imac`
  ADD PRIMARY KEY (`os`);

--
-- Índices para tabela `os_macbook`
--
ALTER TABLE `os_macbook`
  ADD PRIMARY KEY (`os`);

--
-- Índices para tabela `os_notebook`
--
ALTER TABLE `os_notebook`
  ADD PRIMARY KEY (`os`);

--
-- Índices para tabela `os_pc`
--
ALTER TABLE `os_pc`
  ADD PRIMARY KEY (`os`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
