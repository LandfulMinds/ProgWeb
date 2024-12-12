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
-- Banco de dados: `progwebtarde - philipe 2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL COMMENT ' nome completo do cliente',
  `email` varchar(150) NOT NULL COMMENT 'endereço de e-mail do cliente',
  `telefone` varchar(15) NOT NULL COMMENT ' número de telefone com DDD',
  `endereco` text NOT NULL COMMENT ' endereço completo do cliente',
  `data_nascimento` date NOT NULL COMMENT 'data de nascimento do cliente',
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'atualizado automaticamente quando os dados são alterados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='clientes porraaaaaaaa';

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(6, 'João Silva', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123, São Paulo, SP', '1985-05-15', '2024-12-12 17:43:46'),
(7, 'Ana Costa', 'ana.costa@email.com', '(21) 99876-5432', 'Avenida Atlântica, 456, Rio de Janeiro, RJ', '1990-09-22', '2024-12-12 17:43:46'),
(8, 'Carlos Oliveira', 'carlos.oliveira@email.com', '(31) 91234-5678', 'Rua dos Jasmins, 789, Belo Horizonte, MG', '1982-12-30', '2024-12-12 17:43:46'),
(9, 'Mariana Souza', 'mariana.souza@email.com', '(41) 95432-1876', 'Rua das Acácias, 321, Curitiba, PR', '1995-03-08', '2024-12-12 17:43:46'),
(10, 'Pedro Albuquerque', 'pedro.albuquerque@email.com', '(51) 97654-3210', 'Rua Bento Gonçalves, 432, Porto Alegre, RS', '1988-11-11', '2024-12-12 17:43:46'),
(11, 'Júlia Martins', 'julia.martins@email.com', '(71) 96789-1234', 'Rua das Palmeiras, 654, Salvador, BA', '1993-06-25', '2024-12-12 17:43:46'),
(12, 'Roberto Lima', 'roberto.lima@email.com', '(61) 92345-6789', 'Quadra 12, Bloco C, Brasília, DF', '1980-07-17', '2024-12-12 17:43:46'),
(13, 'Larissa Mendes', 'larissa.mendes@email.com', '(13) 91234-7654', 'Avenida Marechal, 876, Santos, SP', '1997-01-02', '2024-12-12 17:43:46'),
(14, 'Felipe Rocha', 'felipe.rocha@email.com', '(48) 99876-3214', 'Rua das Pedras, 234, Florianópolis, SC', '1986-02-19', '2024-12-12 17:43:46'),
(15, 'Camila Barbosa', 'camila.barbosa@email.com', '(19) 98765-5432', 'Rua Dom Pedro, 345, Campinas, SP', '1991-04-10', '2024-12-12 17:43:46'),
(16, 'Gabriel Santos', 'gabriel.santos@email.com', '(62) 95432-8765', 'Rua Goiás, 567, Goiânia, GO', '1989-08-28', '2024-12-12 17:43:46'),
(17, 'Renata Silva', 'renata.silva@email.com', '(82) 97654-3219', 'Rua das Mangueiras, 1234, Maceió, AL', '1992-03-14', '2024-12-12 17:43:46'),
(18, 'Leonardo Ferreira', 'leonardo.ferreira@email.com', '(85) 92345-6781', 'Rua Beira Mar, 789, Fortaleza, CE', '1983-12-05', '2024-12-12 17:43:46'),
(19, 'Bianca Araújo', 'bianca.araujo@email.com', '(92) 98765-4327', 'Rua do Comércio, 456, Manaus, AM', '1996-10-18', '2024-12-12 17:43:46'),
(20, 'Rafael Almeida', 'rafael.almeida@email.com', '(95) 99876-5433', 'Avenida Central, 678, Boa Vista, RR', '1990-05-22', '2024-12-12 17:43:46'),
(21, 'Sofia Carvalho', 'sofia.carvalho@email.com', '(27) 91234-5670', 'Rua Capixaba, 910, Vitória, ES', '1994-09-09', '2024-12-12 17:43:46'),
(22, 'André Nascimento', 'andre.nascimento@email.com', '(86) 95432-1765', 'Rua Piauí, 654, Teresina, PI', '1987-06-13', '2024-12-12 17:43:46'),
(23, 'Paula Reis', 'paula.reis@email.com', '(84) 97654-3298', 'Rua do Sol, 345, Natal, RN', '1995-01-27', '2024-12-12 17:43:46'),
(26, 'Camiseta sla ', '6FTGT', '123-45-67', 'GTGG', '2024-12-19', '2024-12-12 18:01:14');

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
(2, 'caacdsscdasw', 'werkjhweriljrkr@12312.com', '550e1bafe077ff0b0b67f4e32f29d751', '2024-11-29 17:19:15'),
(7, 'Ricardo B.', 'ricardo.b@email.com', 'senha123', '2024-12-12 17:46:42'),
(8, 'João P.', 'joao.p@email.com', 'segredo321', '2024-12-12 17:46:42'),
(9, 'Paulo D.', 'paulo.d@email.com', 'minhasenha', '2024-12-12 17:46:42'),
(10, 'Carlos T.', 'carlos.t@email.com', '123456', '2024-12-12 17:46:42'),
(11, 'Pedro L.', 'pedro.l@email.com', 'senha007', '2024-12-12 17:46:42'),
(12, 'Felipe J.', 'felipe.j@email.com', 'qwerty', '2024-12-12 17:46:42'),
(13, 'André G.', 'andre.g@email.com', 'pass123', '2024-12-12 17:46:42'),
(14, 'Rafael O.', 'rafael.o@email.com', 'abc12345', '2024-12-12 17:46:42'),
(15, 'Leonardo C.', 'leonardo.c@email.com', 'senhasegura', '2024-12-12 17:46:42'),
(16, 'Fernando M.', 'fernando.m@email.com', 'senha654', '2024-12-12 17:46:42'),
(17, 'Marcelo X.', 'marcelo.x@email.com', 'chave123', '2024-12-12 17:46:42'),
(18, 'Rodrigo K.', 'rodrigo.k@email.com', 'passkey', '2024-12-12 17:46:42'),
(19, 'Bruno H.', 'bruno.h@email.com', 'senha321', '2024-12-12 17:46:42'),
(20, 'Lucas B.', 'lucas.b@email.com', 'minhapass', '2024-12-12 17:46:42'),
(21, 'Gustavo E.', 'gustavo.e@email.com', 'xyz987', '2024-12-12 17:46:42'),
(22, 'Thiago N.', 'thiago.n@email.com', 'abc321', '2024-12-12 17:46:42'),
(23, 'Vinícius R.', 'vinicius.r@email.com', 'secure123', '2024-12-12 17:46:42'),
(24, 'Victor F.', 'victor.f@email.com', '321592ee700891c09bc7c7e91ccc9473', '2024-12-12 17:46:42'),
(28, 'Camiseta sla doq ', 'jjbhjbh', '07da9cf445b5ea96f967c03c2592752e', '2024-12-12 17:52:33');

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
(6, 'Camisa do \"Polo\" Norte', 'Descubra o charme e o conforto em qualquer estação com a exclusiva Camisa \"Polo\" Norte! Inspirada nas paisagens geladas e na elegância clássica do estilo polo, esta peça é perfeita para quem quer aliar sofisticação ao espírito aventureiro.', 'PP', 'Camisa', 'Polo', 'Chinês', 100, 'a', '2024-12-03 17:28:11'),
(7, 'Relógada do Xiaomi', 'Descubra o futuro no seu pulso com o Relógada do Xiaomi, o relógio inteligente que combina funcionalidade avançada, design sofisticado e praticidade para o dia a dia. Ideal para quem busca tecnologia de ponta com estilo acessível, este gadget é o companheiro perfeito para sua rotina conectada.', 'M', 'Relógio', 'Xiaomi', 'Preto', 400, 'a', '2024-12-03 17:37:43'),
(10, 'Caneta Bic \"Pequena, mas Durável\"', '', 'PP', 'Escritório', 'Bic', '', 2.5, '', '2024-12-12 17:49:57'),
(11, 'Cabo HDMI \"Tamanho Suficiente\"', '', 'P', 'Eletrônicos', 'TechCabo', '', 25.9, '', '2024-12-12 17:49:57'),
(12, 'Fone de Ouvido \"Plug Bem Posicionado\"', '', 'M', 'Eletrônicos', 'SoundPro', '', 79.9, '', '2024-12-12 17:49:57'),
(13, 'Kit Chave Phillips \"Ponta de Respeito\"', '', 'P', 'Ferramentas', 'FixTools', '', 49.99, '', '2024-12-12 17:49:57'),
(14, 'Aspirador \"Sucção Gigante\"', '', 'G', 'Eletrodomésticos', 'Limpa+Turbo', '', 149.9, '', '2024-12-12 17:49:57'),
(15, 'Cabo USB-C \"Flexível e Longo\"', '', 'M', 'Eletrônicos', 'DataFlow', '', 15.99, '', '2024-12-12 17:49:57'),
(16, 'Teclado Mecânico \"Cliques Potentes\"', '', 'M', 'Informática', 'KeyPower', '', 349.99, '', '2024-12-12 17:49:57'),
(17, 'Mouse \"Grip Firme na Mão\"', '', 'P', 'Informática', 'MouseKing', '', 199.9, '', '2024-12-12 17:49:57'),
(18, 'Garrafa Térmica \"Boca Larga\"', '', 'G', 'Utilidades Domésticas', 'TermoTop', '', 59.9, '', '2024-12-12 17:49:57'),
(19, 'Caderno \"Tamanho Perfeito\"', '', 'M', 'Papelaria', 'EscreveMais', '', 12.9, '', '2024-12-12 17:49:57'),
(20, 'Liquidificador \"Turbo Max Power\"', '', 'G', 'Eletrodomésticos', 'EletroMix', '', 199.9, '', '2024-12-12 17:49:57'),
(21, 'Cortador de Grama \"Corte Largo\"', '', 'GG', 'Jardinagem', 'GreenTools', '', 749.9, '', '2024-12-12 17:49:57'),
(22, 'Parafusadeira \"Torque Extra\"', '', 'M', 'Ferramentas', 'FixTools', '', 399.9, '', '2024-12-12 17:49:57'),
(23, 'Smartphone \"Compacto e Rápido\"', '', 'P', 'Eletrônicos', 'TechNow', '', 1199, '', '2024-12-12 17:49:57'),
(24, 'Cadeira Gamer \"Para Todos os Tamanhos\"', '', 'GG', 'Móveis', 'GameFit', '', 1299, '', '2024-12-12 17:49:57'),
(25, 'Ventilador \"Silencioso e Potente\"', '', 'M', 'Eletrodomésticos', 'BreezeMax', '', 129.9, '', '2024-12-12 17:49:57'),
(26, 'Relógio \"Pulseira Ajustável\"', '', 'PP', 'Moda', 'TimeNow', '', 299.9, '', '2024-12-12 17:49:57'),
(27, 'Tênis \"Pisada Grande\"', '', 'G', 'Moda', 'RunFast', '', 249.9, '', '2024-12-12 17:49:57');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
