-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 19:30
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
-- Banco de dados: `progwebtarde`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL COMMENT 'nome completo do cliente',
  `email` varchar(150) NOT NULL COMMENT 'endereço de e-mail do cliente',
  `telefone` varchar(15) NOT NULL COMMENT 'número de telefone com DDD',
  `endereco` text NOT NULL COMMENT 'endereço completo do cliente',
  `data_nascimento` date NOT NULL COMMENT 'data de nascimento do cliente',
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'atualizado automaticamente quando os dados são alterados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(1, 'Ana Paula Silv', 'ana.silva@example.co', '(11) 98765-4329', 'Rua das Flores, 123, São Paulo, S', '1985-03-01', '2024-12-10 18:18:37'),
(2, 'Bruno Ferreira', 'bruno.ferreira@example.com', '(21) 99876-5432', 'Av. Atlântica, 45, Rio de Janeiro, RJ', '1990-07-22', '2024-12-10 18:18:37'),
(3, 'Carlos Eduardo', 'carlos.edu@example.com', '(31) 98765-4321', 'Rua Minas Gerais, 89, Belo Horizonte, MG', '1983-11-10', '2024-12-10 18:18:37'),
(4, 'Daniela Rocha', 'daniela.rocha@example.com', '(41) 99876-1234', 'Rua das Palmeiras, 56, Curitiba, PR', '1992-06-03', '2024-12-10 18:18:37'),
(5, 'Eduardo Ramos', 'eduardo.ramos@example.com', '(51) 98765-6789', 'Av. Beira Rio, 78, Porto Alegre, RS', '1988-12-15', '2024-12-10 18:18:37'),
(6, 'Fernanda Costa', 'fernanda.costa@example.com', '(61) 99876-5432', 'Rua Brasília, 345, Brasília, DF', '1995-04-01', '2024-12-10 18:18:37'),
(7, 'Gabriel Souza', 'gabriel.souza@example.com', '(71) 98765-1234', 'Av. Salvador, 987, Salvador, BA', '1987-09-19', '2024-12-10 18:18:37'),
(8, 'Helena Lima', 'helena.lima@example.com', '(81) 99876-4321', 'Rua Recife, 23, Recife, PE', '1993-05-25', '2024-12-10 18:18:37'),
(9, 'Igor Martins', 'igor.martins@example.com', '(91) 98765-6789', 'Rua Belém, 67, Belém, PA', '1986-01-30', '2024-12-10 18:18:37'),
(10, 'Joana Prado', 'joana.prado@example.com', '(51) 99876-5432', 'Rua Gramado, 45, Porto Alegre, RS', '1991-07-14', '2024-12-10 18:18:37'),
(11, 'Karla Mendes', 'karla.mendes@example.com', '(31) 98765-4321', 'Rua Ouro Preto, 12, Belo Horizonte, MG', '1989-03-10', '2024-12-10 18:18:37'),
(12, 'Lucas Almeida', 'lucas.almeida@example.com', '(71) 99876-4321', 'Av. Bahia, 345, Salvador, BA', '1994-10-21', '2024-12-10 18:18:37'),
(13, 'Mariana Alves', 'mariana.alves@example.com', '(81) 98765-6789', 'Rua das Dunas, 67, Recife, PE', '1990-12-11', '2024-12-10 18:18:37'),
(14, 'Nathan Ribeiro', 'nathan.ribeiro@example.com', '(61) 99876-1234', 'Rua do Congresso, 78, Brasília, DF', '1982-08-30', '2024-12-10 18:18:37'),
(15, 'Olivia Santos', 'olivia.santos@example.com', '(91) 98765-1234', 'Av. Pará, 89, Belém, PA', '1984-02-14', '2024-12-10 18:18:37'),
(16, 'Paulo Henrique', 'paulo.henrique@example.com', '(41) 99876-5432', 'Rua das Hortênsias, 56, Curitiba, PR', '1985-05-20', '2024-12-10 18:18:37'),
(17, 'Renata Borges', 'renata.borges@example.com', '(21) 98765-6789', 'Av. Rio Branco, 123, Rio de Janeiro, RJ', '1987-11-30', '2024-12-10 18:18:37'),
(18, 'Sofia Lima', 'sofia.lima@example.com', '(11) 99876-4321', 'Rua das Acácias, 45, São Paulo, SP', '1992-01-08', '2024-12-10 18:18:37'),
(19, 'Thiago Duarte', 'thiago.duarte@example.com', '(41) 98765-6789', 'Rua Paraná, 34, Curitiba, PR', '1989-09-17', '2024-12-10 18:18:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `email`, `senha`, `data`) VALUES
(2, 'Bruno Bazotti', 'b@b.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-11-29 17:16:01'),
(4, 'Breno Bozetti', 'b@t.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-11-29 17:19:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` enum('PP','P','M','G','GG','XG') NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `categoria`, `marca`, `cor`, `preco`, `imagem`, `data`) VALUES
(1, 'Camiseta Básica', 'Camiseta de algodão confortável', 'M', 'Camisetas', 'Hering', 'Branca', 49.9, '', '2024-12-03 17:43:10'),
(2, 'Calça Jeans', 'Calça jeans slim fit', 'PP', 'Calças', 'Levi\'s', 'Azul', 199.9, '', '2024-12-03 17:43:10'),
(3, 'Jaqueta Couro', 'Jaqueta de couro sintético', 'PP', 'Jaqueta', 'Zara', 'Preta', 299.88, '', '2024-12-03 17:43:10'),
(4, 'Vestido Longo', 'Vestido longo floral', 'M', 'Vestidos', 'Farm', 'Verde', 179.9, '', '2024-12-03 17:43:10'),
(5, 'Short Moletom', 'Short casual de moletom', 'P', 'Shorts', 'Nike', 'Cinza', 89.9, '', '2024-12-03 17:43:10'),
(6, 'Tênis Esportivo', 'Tênis para corrida e caminhada', 'GG', 'Calçados', 'Adidas', 'Preto', 349.9, '', '2024-12-03 17:43:10'),
(7, 'Camisa Social', 'Camisa social slim fit', 'G', 'Camisas', 'Dudalina', 'Azul Claro', 159.9, '', '2024-12-03 17:43:10'),
(8, 'Blusa de Tricô', 'Blusa confortável de tricô', 'M', 'Blusas', 'Renner', 'Bege', 129.9, '', '2024-12-03 17:43:10'),
(9, 'Saia Midi', 'Saia midi plissada', 'P', 'Saias', 'C&A', 'Vermelha', 99.9, '', '2024-12-03 17:43:10'),
(10, 'Boné Estilizado', 'Boné com estampa personalizada', 'G', 'Acessórios', 'New Era', 'Preto e Branco', 59.9, '', '2024-12-03 17:43:10'),
(12, 'fsdfdsf', 'sdfgdsfds', 'P', 'dfdsf', 'sdfsd', 'sdfds', 999.88, '', '2024-12-06 19:09:19'),
(13, 'bfgdfgfd', 'gdfgfd', 'P', 'Jaqueta', 'dxdv', 'cvvcx', 12133, '', '2024-12-06 19:28:01');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
