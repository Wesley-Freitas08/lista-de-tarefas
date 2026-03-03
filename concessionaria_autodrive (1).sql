-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/03/2026 às 21:13
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `concessionaria_autodrive`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(150) NOT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `cpf_cnpj`, `telefone`, `cidade`) VALUES
(1, 'Paulo Pereira', '363.638.207-80', '(66) 97834-9151', 'Rio de Janeiro'),
(2, 'José Pereira', '127.433.785-72', '(29) 99678-2648', 'São Paulo'),
(3, 'José Santos', '138.976.770-81', '(80) 95654-3044', 'Belo Horizonte'),
(4, 'Maria Oliveira', '570.341.794-15', '(96) 97120-5398', 'Belo Horizonte'),
(5, 'José Oliveira', '161.739.416-65', '(16) 94862-9705', 'Belo Horizonte'),
(6, 'Paulo Oliveira', '411.102.978-88', '(50) 96716-8347', 'São Paulo'),
(7, 'José Santos', '886.524.761-33', '(19) 97282-2825', 'Porto Alegre'),
(8, 'Paulo Silva', '993.449.965-67', '(42) 98436-1616', 'Porto Alegre'),
(9, 'João Pereira', '554.661.642-23', '(91) 92424-1302', 'Curitiba'),
(10, 'Maria Santos', '674.957.866-45', '(50) 91474-9174', 'Rio de Janeiro'),
(11, 'João Pereira', '547.137.741-49', '(18) 91729-2404', 'Belo Horizonte'),
(12, 'Maria Oliveira', '747.262.765-24', '(62) 95051-5406', 'São Paulo'),
(13, 'João Pereira', '952.403.856-27', '(51) 97401-2577', 'Curitiba'),
(14, 'João Santos', '954.683.453-11', '(92) 95986-1002', 'Rio de Janeiro'),
(15, 'Ana Oliveira', '300.756.982-73', '(66) 91091-2420', 'Curitiba'),
(16, 'Maria Souza', '709.462.985-73', '(64) 99288-7917', 'São Paulo'),
(17, 'João Souza', '898.760.109-85', '(30) 95892-1552', 'Curitiba'),
(18, 'João Pereira', '242.952.335-51', '(59) 94304-2556', 'Curitiba'),
(19, 'Maria Silva', '165.808.750-32', '(18) 96903-1325', 'Rio de Janeiro'),
(20, 'Paulo Silva', '838.723.103-93', '(71) 96735-1993', 'Curitiba'),
(21, 'Paulo Oliveira', '574.421.281-93', '(19) 96779-9405', 'Curitiba'),
(22, 'Paulo Souza', '104.975.868-41', '(27) 99060-9189', 'Porto Alegre'),
(23, 'José Souza', '930.648.351-60', '(12) 94148-7411', 'Belo Horizonte'),
(24, 'José Oliveira', '716.682.264-96', '(38) 96973-4317', 'Porto Alegre'),
(25, 'João Souza', '630.387.843-25', '(46) 95572-3839', 'São Paulo'),
(26, 'Maria Oliveira', '307.854.554-11', '(58) 96919-7065', 'Rio de Janeiro'),
(27, 'Paulo Santos', '281.243.273-52', '(84) 97555-2230', 'Belo Horizonte'),
(28, 'João Pereira', '373.814.156-92', '(50) 94949-8774', 'São Paulo'),
(29, 'José Silva', '350.157.535-30', '(71) 97968-8154', 'Curitiba'),
(30, 'Paulo Oliveira', '527.205.242-49', '(75) 93943-5007', 'Rio de Janeiro'),
(31, 'Paulo Santos', '906.410.132-22', '(65) 96859-4629', 'São Paulo'),
(32, 'João Souza', '439.881.293-51', '(72) 91795-4099', 'Belo Horizonte'),
(33, 'Maria Pereira', '726.828.962-42', '(96) 97597-7844', 'Curitiba'),
(34, 'Ana Pereira', '214.131.812-86', '(92) 91363-4853', 'São Paulo'),
(35, 'Paulo Silva', '697.329.354-67', '(46) 91369-1102', 'Porto Alegre'),
(36, 'Ana Souza', '968.735.670-14', '(43) 97085-3495', 'Rio de Janeiro'),
(37, 'Paulo Santos', '742.477.958-55', '(72) 99742-7757', 'Porto Alegre'),
(38, 'Paulo Souza', '314.590.108-46', '(14) 99430-6208', 'São Paulo'),
(39, 'Ana Silva', '785.392.405-74', '(63) 98205-3000', 'Curitiba'),
(40, 'Paulo Souza', '761.867.155-76', '(59) 95727-9682', 'Rio de Janeiro'),
(41, 'Maria Pereira', '921.635.313-45', '(35) 92904-2922', 'Belo Horizonte'),
(42, 'José Souza', '169.453.759-53', '(31) 97529-9233', 'Rio de Janeiro'),
(43, 'Maria Silva', '473.986.716-52', '(37) 91872-6188', 'Belo Horizonte'),
(44, 'Maria Souza', '258.786.359-23', '(90) 91424-5774', 'Belo Horizonte'),
(45, 'Paulo Souza', '625.127.458-90', '(39) 99372-6973', 'Belo Horizonte'),
(46, 'Ana Santos', '417.805.878-96', '(35) 95070-4924', 'Porto Alegre'),
(47, 'Paulo Oliveira', '493.524.143-83', '(97) 95011-3466', 'São Paulo'),
(48, 'Maria Santos', '132.409.649-11', '(35) 93925-8115', 'Porto Alegre'),
(49, 'José Santos', '764.745.434-73', '(48) 99939-7266', 'Belo Horizonte'),
(50, 'José Oliveira', '728.748.556-43', '(41) 96574-1472', 'Belo Horizonte'),
(51, 'Paulo Silva', '925.356.707-56', '(61) 93635-7787', 'Porto Alegre'),
(52, 'João Souza', '102.145.323-17', '(72) 92980-1083', 'Rio de Janeiro'),
(53, 'Paulo Souza', '161.350.265-17', '(87) 92037-9583', 'Belo Horizonte'),
(54, 'Maria Silva', '325.319.522-64', '(70) 95670-6160', 'Rio de Janeiro'),
(55, 'Paulo Souza', '654.477.323-97', '(26) 99449-2422', 'Porto Alegre'),
(56, 'Maria Silva', '149.218.545-17', '(93) 94747-3524', 'São Paulo'),
(57, 'Paulo Silva', '122.682.246-87', '(88) 98004-3262', 'Porto Alegre'),
(58, 'Paulo Oliveira', '110.558.564-14', '(73) 94486-8305', 'Porto Alegre'),
(59, 'João Oliveira', '657.497.413-47', '(14) 99436-6174', 'São Paulo'),
(60, 'José Santos', '101.772.763-49', '(11) 97124-4572', 'Porto Alegre'),
(61, 'José Santos', '477.729.315-19', '(80) 96635-7956', 'Porto Alegre'),
(62, 'Ana Silva', '717.208.585-40', '(17) 94266-6278', 'Porto Alegre'),
(63, 'José Santos', '490.895.207-94', '(43) 99921-8753', 'Rio de Janeiro'),
(64, 'João Oliveira', '845.907.102-38', '(63) 91140-3616', 'Belo Horizonte'),
(65, 'João Oliveira', '533.664.721-61', '(80) 93216-8662', 'Belo Horizonte'),
(66, 'João Santos', '184.585.475-51', '(19) 91469-9868', 'Curitiba'),
(67, 'Paulo Silva', '287.547.878-84', '(61) 94470-2740', 'Porto Alegre'),
(68, 'José Pereira', '286.337.727-72', '(46) 99151-3946', 'Porto Alegre'),
(69, 'Ana Souza', '773.810.733-23', '(66) 97442-7134', 'Rio de Janeiro'),
(70, 'Maria Oliveira', '811.472.728-32', '(24) 91360-7516', 'Belo Horizonte'),
(71, 'Maria Silva', '777.390.417-80', '(91) 92818-3320', 'Curitiba'),
(72, 'Ana Silva', '880.879.756-14', '(15) 92210-5524', 'São Paulo'),
(73, 'João Pereira', '375.882.488-58', '(50) 96222-6103', 'São Paulo'),
(74, 'Ana Oliveira', '575.944.198-75', '(39) 95007-3185', 'Porto Alegre'),
(75, 'Ana Santos', '474.135.952-65', '(35) 95451-6880', 'Curitiba'),
(76, 'Paulo Oliveira', '369.276.175-83', '(89) 99750-2682', 'São Paulo'),
(77, 'José Oliveira', '416.996.938-69', '(60) 98014-2986', 'Curitiba'),
(78, 'João Oliveira', '245.290.615-30', '(49) 95592-3047', 'Curitiba'),
(79, 'Maria Pereira', '640.291.337-70', '(65) 91225-3554', 'Rio de Janeiro'),
(80, 'Paulo Souza', '953.832.302-70', '(75) 96469-8635', 'Belo Horizonte'),
(81, 'José Oliveira', '817.570.301-59', '(18) 97718-5444', 'Rio de Janeiro'),
(82, 'Ana Santos', '314.324.576-90', '(91) 98698-5898', 'São Paulo'),
(83, 'João Souza', '821.348.977-14', '(38) 94687-2059', 'Rio de Janeiro'),
(84, 'José Silva', '407.378.569-70', '(84) 92293-2865', 'Curitiba'),
(85, 'José Souza', '855.610.386-89', '(54) 98008-4840', 'Curitiba'),
(86, 'Ana Silva', '614.502.567-32', '(74) 98551-1284', 'Curitiba'),
(87, 'João Santos', '771.902.300-48', '(56) 93495-8495', 'Rio de Janeiro'),
(88, 'João Pereira', '681.771.813-75', '(34) 92437-9890', 'Belo Horizonte'),
(89, 'Maria Souza', '581.773.221-48', '(77) 95325-2227', 'Rio de Janeiro'),
(90, 'Ana Souza', '833.427.435-78', '(76) 94496-7481', 'Belo Horizonte'),
(91, 'João Santos', '858.892.888-76', '(18) 92551-6596', 'Belo Horizonte'),
(92, 'João Santos', '313.165.685-13', '(30) 91092-4438', 'Porto Alegre'),
(93, 'Maria Santos', '430.964.734-67', '(19) 96161-6088', 'São Paulo'),
(94, 'Paulo Pereira', '796.375.284-19', '(93) 94041-8999', 'Belo Horizonte'),
(95, 'José Silva', '323.834.404-31', '(27) 93101-6339', 'Rio de Janeiro'),
(96, 'José Pereira', '203.744.315-14', '(56) 94921-6696', 'Porto Alegre'),
(97, 'Maria Souza', '737.477.972-62', '(16) 95628-4539', 'Belo Horizonte'),
(98, 'Paulo Oliveira', '351.230.894-97', '(33) 94148-9748', 'Porto Alegre'),
(99, 'João Souza', '926.811.278-65', '(54) 96684-6994', 'Belo Horizonte'),
(100, 'João Oliveira', '466.345.226-88', '(11) 94133-7659', 'Curitiba');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fabricantes`
--

CREATE TABLE `fabricantes` (
  `id_fabricante` int(11) NOT NULL,
  `nome_marca` varchar(50) NOT NULL,
  `pais_origem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fabricantes`
--

INSERT INTO `fabricantes` (`id_fabricante`, `nome_marca`, `pais_origem`) VALUES
(1, 'Volkswagen', 'Brasil/Alemanha'),
(2, 'Chevrolet', 'Brasil/EUA'),
(3, 'Fiat', 'Brasil/Itália'),
(4, 'Ford', 'Brasil/EUA'),
(5, 'Renault', 'Brasil/França');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelos`
--

CREATE TABLE `modelos` (
  `id_modelo` int(11) NOT NULL,
  `id_fabricante` int(11) DEFAULT NULL,
  `nome_modelo` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `ano_lancamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelos`
--

INSERT INTO `modelos` (`id_modelo`, `id_fabricante`, `nome_modelo`, `categoria`, `ano_lancamento`) VALUES
(1, 1, 'Fusca', 'Hatch', 1960),
(2, 1, 'Brasília', 'Hatch', 1973),
(3, 1, 'Gol Quadrado', 'Hatch', 1980),
(4, 1, 'Santana', 'Sedan', 1984),
(5, 1, 'Golf GTI', 'Esportivo', 1994),
(6, 1, 'T-Cross', 'SUV', 2019),
(7, 1, 'ID.4', 'Elétrico', 2024),
(8, 1, 'Novo Gol SUV', 'SUV', 2026),
(9, 2, 'Opala SS', 'Sedan', 1968),
(10, 2, 'Chevette', 'Sedan', 1973),
(11, 2, 'Monza', 'Sedan', 1982),
(12, 2, 'Corsa Wind', 'Hatch', 1994),
(13, 2, 'Vectra Challenge', 'Sedan', 2000),
(14, 2, 'Astra', 'Hatch', 1999),
(15, 2, 'Onix', 'Hatch', 2012),
(16, 2, 'Montana', 'Pickup', 2023),
(17, 3, 'Fiat 147', 'Hatch', 1976),
(18, 3, 'Uno Mille', 'Hatch', 1984),
(19, 3, 'Tempra Turbo', 'Sedan', 1994),
(20, 3, 'Palio', 'Hatch', 1996),
(21, 3, 'Marea Turbo', 'Sedan', 1998),
(22, 3, 'Toro', 'Pickup', 2016),
(23, 3, 'Fastback', 'SUV', 2022),
(24, 3, 'Titano', 'Pickup', 2024),
(25, 4, 'Corcel', 'Sedan', 1968),
(26, 4, 'Maverick V8', 'Coupe', 1973),
(27, 4, 'Escort XR3', 'Esportivo', 1983),
(28, 4, 'Del Rey', 'Luxo', 1981),
(29, 4, 'Ka', 'Hatch', 1997),
(30, 4, 'EcoSport', 'SUV', 2003),
(31, 4, 'Fusion', 'Sedan', 2006),
(32, 4, 'Territory', 'SUV', 2021),
(33, 5, 'Scenic', 'Minivan', 1999),
(34, 5, 'Clio', 'Hatch', 2000),
(35, 5, 'Sandero RS', 'Esportivo', 2015),
(36, 5, 'Duster', 'SUV', 2011),
(37, 5, 'Kwid', 'Hatch', 2017),
(38, 5, 'Kardian', 'SUV', 2024),
(39, 5, 'Niagara', 'Pickup', 2025);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id_veiculo` int(11) NOT NULL,
  `id_modelo` int(11) DEFAULT NULL,
  `chassi` varchar(17) NOT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `ano_fabricacao` int(11) DEFAULT NULL,
  `preco_tabela` decimal(12,2) DEFAULT NULL,
  `status_veiculo` enum('Disponível','Vendido','Reservado') DEFAULT 'Disponível'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id_veiculo`, `id_modelo`, `chassi`, `cor`, `ano_fabricacao`, `preco_tabela`, `status_veiculo`) VALUES
(1, 3, 'DA27143E3181F4066', 'Prata', 2013, 175032.85, 'Vendido'),
(2, 1, 'B7927752D59A1D04A', 'Prata', 2011, 94709.19, 'Vendido'),
(3, 17, '00853974712F8CF2E', 'Preto', 2012, 33078.05, 'Vendido'),
(4, 21, '484C3BFFE835C565E', 'Preto', 2019, 45796.38, 'Vendido'),
(5, 28, 'FE558339853737D4C', 'Branco', 2023, 181708.52, 'Vendido'),
(6, 14, '73A2720833F424B25', 'Preto', 2024, 161556.46, 'Vendido'),
(7, 26, 'F1CB7E73122F3993E', 'Preto', 2018, 210608.04, 'Vendido'),
(8, 37, 'AAAC902FD4381F843', 'Azul', 2022, 58653.29, 'Vendido'),
(9, 15, '50AE38637F8020F08', 'Branco', 2022, 205860.61, 'Vendido'),
(10, 2, 'A96D82D6F35B4A2F4', 'Azul', 2018, 61655.70, 'Vendido'),
(11, 5, '2FE4EF419E9B1B9EA', 'Prata', 2016, 188038.67, 'Vendido'),
(12, 33, 'D8881DABD40CF9999', 'Preto', 2025, 44709.86, 'Vendido'),
(13, 20, '92C749BFDAF3F8C15', 'Azul', 2020, 123654.23, 'Vendido'),
(14, 18, 'D230A06B74EE68061', 'Azul', 2012, 195496.39, 'Vendido'),
(15, 30, '2EAA4D8883F6DFB3B', 'Azul', 2012, 179206.35, 'Vendido'),
(16, 14, 'E29A2EE765CF2BFFB', 'Preto', 2019, 93753.06, 'Vendido'),
(17, 35, '525C5147157FD2471', 'Vermelho', 2013, 208626.75, 'Vendido'),
(18, 32, '24DE45E7BADCBC402', 'Cinza', 2018, 212472.06, 'Vendido'),
(19, 2, 'CF5ADC897F61AF607', 'Preto', 2024, 169997.26, 'Vendido'),
(20, 32, '7D200A589170037C7', 'Branco', 2019, 185250.30, 'Vendido'),
(21, 5, '4103AAF90792FA67F', 'Branco', 2020, 204871.72, 'Vendido'),
(22, 18, '525384D4012714F40', 'Azul', 2022, 39966.69, 'Vendido'),
(23, 36, '147A945561B1406C6', 'Branco', 2010, 37040.77, 'Vendido'),
(24, 6, 'DF0DD7B05AE6C6057', 'Cinza', 2015, 193245.14, 'Vendido'),
(25, 2, 'E0379B47AB746C549', 'Vermelho', 2014, 105683.91, 'Vendido'),
(26, 38, '49F7D868F6CBF01B4', 'Prata', 2013, 195211.77, 'Vendido'),
(27, 17, 'B2E86B342733B189F', 'Branco', 2019, 126171.49, 'Vendido'),
(28, 27, '86A16B78F13854FBB', 'Azul', 2024, 136493.95, 'Vendido'),
(29, 38, 'A53B48A6DBEAC495A', 'Preto', 2020, 138906.32, 'Vendido'),
(30, 28, '7FBA65C81C7845B8B', 'Preto', 2017, 188803.45, 'Vendido'),
(31, 20, 'F5FC022DE47828B82', 'Preto', 2021, 200866.28, 'Vendido'),
(32, 6, '4DE4C4B78BD167D06', 'Preto', 2010, 68527.11, 'Vendido'),
(33, 37, 'E9A3919E7EA507279', 'Cinza', 2020, 136989.28, 'Vendido'),
(34, 29, 'EC2D2813E61CA09B0', 'Vermelho', 2012, 77102.99, 'Vendido'),
(35, 30, 'A3861A68D3FA38CC0', 'Azul', 2016, 108524.20, 'Vendido'),
(36, 28, 'A28A0323CFA7EDB77', 'Cinza', 2012, 207170.05, 'Vendido'),
(37, 37, '262FE9FA5E45D22F3', 'Prata', 2020, 74446.37, 'Vendido'),
(38, 6, 'B849E48D2ACAFC1D1', 'Azul', 2013, 136077.17, 'Vendido'),
(39, 37, '88CCAF2B5ECC557F5', 'Vermelho', 2011, 93360.31, 'Vendido'),
(40, 16, 'C167F5ADD9C1D15BE', 'Vermelho', 2021, 109714.35, 'Vendido'),
(41, 33, 'E4445D2514894CEF2', 'Prata', 2017, 212119.05, 'Vendido'),
(42, 5, '2772B1F449C7F8EE0', 'Vermelho', 2014, 85013.18, 'Vendido'),
(43, 18, 'FC8FD522A63582CB5', 'Azul', 2017, 119512.78, 'Vendido'),
(44, 32, 'EE63978139FD6F6E5', 'Branco', 2015, 93159.83, 'Vendido'),
(45, 25, '685FD16CF9B28ECD4', 'Preto', 2022, 39143.58, 'Vendido'),
(46, 34, 'CCF07F5D9467AFDD3', 'Branco', 2025, 168949.38, 'Vendido'),
(47, 21, 'B3EC73CB47F5B7C13', 'Preto', 2013, 158447.30, 'Vendido'),
(48, 20, '74B2605B3AE2778E5', 'Prata', 2019, 125070.59, 'Vendido'),
(49, 25, '3E85B08540A7CE2C0', 'Azul', 2012, 46435.72, 'Vendido'),
(50, 38, 'EBCF8BA4CBB075D7A', 'Branco', 2019, 170544.97, 'Vendido'),
(51, 30, '23804D45DEF832907', 'Branco', 2019, 139962.79, 'Vendido'),
(52, 39, '910685512A23CDFD1', 'Cinza', 2013, 72699.77, 'Vendido'),
(53, 16, 'D0EAABF136ACD37EC', 'Preto', 2020, 91207.68, 'Vendido'),
(54, 24, 'D89AA0E47977DF0AF', 'Cinza', 2020, 135292.15, 'Vendido'),
(55, 27, '3D95043056DCB5F8E', 'Branco', 2011, 62465.69, 'Vendido'),
(56, 20, '7DEE86D6475BA9CFF', 'Prata', 2016, 130899.97, 'Vendido'),
(57, 15, 'FF06D44D197A5BFAF', 'Cinza', 2024, 168306.08, 'Vendido'),
(58, 32, '4119824068DE07D72', 'Preto', 2013, 112782.61, 'Vendido'),
(59, 19, 'DEA5A3BCCF8E2B64E', 'Prata', 2014, 125984.51, 'Vendido'),
(60, 19, '40805CF11F214553B', 'Branco', 2021, 90982.41, 'Vendido'),
(61, 16, '4B02386248F127463', 'Preto', 2021, 54828.59, 'Vendido'),
(62, 16, 'A85CACA6084394689', 'Vermelho', 2014, 33450.94, 'Vendido'),
(63, 8, 'AB1F307325628EF87', 'Branco', 2025, 86800.14, 'Vendido'),
(64, 22, 'B253FA7DA006EE2F5', 'Azul', 2012, 171635.56, 'Vendido'),
(65, 6, '8B639AD76B8D08C22', 'Cinza', 2023, 140021.46, 'Vendido'),
(66, 12, 'E51FC5D05E657725E', 'Branco', 2011, 94213.57, 'Vendido'),
(67, 10, '1121582AE379C72CE', 'Preto', 2021, 209816.39, 'Vendido'),
(68, 12, '12D8C5FAF1B32E80A', 'Vermelho', 2021, 55281.17, 'Vendido'),
(69, 23, '5DC52780E672D2AFD', 'Cinza', 2014, 224355.77, 'Vendido'),
(70, 37, '86FBBEFD700B41254', 'Vermelho', 2019, 161437.75, 'Vendido'),
(71, 23, 'B3EAC7EEA7C88EB4A', 'Cinza', 2020, 72233.63, 'Vendido'),
(72, 7, '14F46DEB0075CB6BF', 'Prata', 2016, 185241.33, 'Vendido'),
(73, 29, '26837100B386ACE9F', 'Prata', 2012, 148191.55, 'Vendido'),
(74, 17, 'F1E9F778948A7E337', 'Cinza', 2018, 38903.21, 'Vendido'),
(75, 26, '1CE2042D1DE70E91A', 'Azul', 2021, 41691.90, 'Vendido'),
(76, 6, '0D0B098F75E602359', 'Preto', 2020, 112084.15, 'Vendido'),
(77, 7, 'EBCD5689EFC41549B', 'Prata', 2014, 63002.77, 'Vendido'),
(78, 1, 'C4B9D88007F1D563F', 'Cinza', 2018, 162642.16, 'Vendido'),
(79, 32, '631B28E6B2CB45A18', 'Azul', 2012, 57517.87, 'Vendido'),
(80, 10, '0500F7F20545571D8', 'Prata', 2019, 186820.45, 'Vendido'),
(81, 4, 'B5495C4AF47B73376', 'Preto', 2021, 53326.78, 'Vendido'),
(82, 14, '73EEB74EDDF90BDD8', 'Vermelho', 2022, 129632.11, 'Vendido'),
(83, 9, '7D0814F2A3312D603', 'Preto', 2013, 118967.52, 'Vendido'),
(84, 25, 'D1C2690AF513B8E8F', 'Prata', 2017, 46495.18, 'Vendido'),
(85, 1, '70B0699A400FD1C66', 'Preto', 2016, 141296.03, 'Vendido'),
(86, 20, '55BF757A76D67BBE2', 'Cinza', 2014, 183318.73, 'Vendido'),
(87, 1, '1358995520FC064F9', 'Cinza', 2023, 130200.63, 'Vendido'),
(88, 36, '5DF87E2B316BE4543', 'Cinza', 2017, 169488.94, 'Vendido'),
(89, 6, '63D41A76C5D2DBD0E', 'Prata', 2017, 227434.16, 'Vendido'),
(90, 23, 'A69DD294553420CED', 'Vermelho', 2025, 149576.29, 'Vendido'),
(91, 6, '8643BB9E53411ED5E', 'Azul', 2025, 228535.11, 'Vendido'),
(92, 6, '6957102001A89A727', 'Preto', 2024, 212262.25, 'Vendido'),
(93, 32, 'EB3AAC25307007FB0', 'Preto', 2012, 222786.78, 'Vendido'),
(94, 17, 'C1B49592C8162DD7D', 'Branco', 2021, 100786.83, 'Vendido'),
(95, 22, '268503D8E77E12786', 'Cinza', 2012, 193392.06, 'Vendido'),
(96, 27, 'D3CDF56B8AA8FB04B', 'Azul', 2015, 32094.74, 'Vendido'),
(97, 5, '9FD468E2901FDF82A', 'Preto', 2025, 215484.09, 'Vendido'),
(98, 29, 'E99664FAEFD0A5029', 'Azul', 2010, 110017.72, 'Vendido'),
(99, 38, 'B444F1B7C68B96730', 'Preto', 2010, 183503.34, 'Vendido'),
(100, 26, '0F52AA655CC2E130C', 'Vermelho', 2014, 203128.04, 'Vendido'),
(101, 21, '0C5C750A9685CBA38', 'Prata', 2011, 92556.97, 'Disponível'),
(102, 9, '78DEC80B89DDFFD15', 'Branco', 2014, 31420.16, 'Disponível'),
(103, 6, '2F41B8BD959D58902', 'Branco', 2019, 123407.42, 'Disponível'),
(104, 24, 'B4276D4926793CF63', 'Azul', 2013, 60857.23, 'Disponível'),
(105, 6, 'FB7B041B8610F310A', 'Cinza', 2012, 46414.34, 'Disponível'),
(106, 39, '88E18C2158D15CD35', 'Cinza', 2020, 142855.85, 'Disponível'),
(107, 35, 'E257C448437ACD70D', 'Branco', 2015, 103697.46, 'Disponível'),
(108, 32, '7FB729E9AE2FE1CBF', 'Azul', 2014, 109788.14, 'Disponível'),
(109, 8, '2DE79B446620F878C', 'Prata', 2016, 209028.73, 'Disponível'),
(110, 12, '40EA3902E8CA3E0B8', 'Preto', 2011, 108872.38, 'Disponível'),
(111, 30, 'DC308DC664FCA3C37', 'Cinza', 2016, 62780.69, 'Disponível'),
(112, 24, '35A7FAC2ECF258A33', 'Cinza', 2014, 215538.31, 'Disponível'),
(113, 28, '03FE307D2213D2177', 'Vermelho', 2015, 133300.45, 'Disponível'),
(114, 22, '25336072AEFB700C6', 'Prata', 2018, 112362.66, 'Disponível'),
(115, 17, 'BBCF58CEFE3804DD2', 'Azul', 2015, 212928.80, 'Disponível'),
(116, 18, 'ABC046135BBF93035', 'Preto', 2025, 35854.82, 'Disponível'),
(117, 6, 'A1739DD4DF518A289', 'Vermelho', 2011, 214174.61, 'Disponível'),
(118, 16, '59403A7182C78A2E7', 'Branco', 2024, 64830.97, 'Disponível'),
(119, 4, 'F17A083B7BEED6916', 'Cinza', 2021, 51262.05, 'Disponível'),
(120, 13, '3FE5BA09DF9901497', 'Prata', 2019, 127604.07, 'Disponível'),
(121, 26, '0DFC1F66B0DE619A7', 'Branco', 2014, 229331.93, 'Disponível'),
(122, 5, 'C88B092F7240FEB4B', 'Prata', 2019, 126819.71, 'Disponível'),
(123, 29, '517B156731B947AFF', 'Vermelho', 2013, 201424.08, 'Disponível'),
(124, 24, 'A3B50B0521EFE34D0', 'Prata', 2010, 153342.03, 'Disponível'),
(125, 3, 'B67EB2A8436279324', 'Azul', 2016, 103443.04, 'Disponível'),
(126, 21, 'F5B7A00B542281222', 'Branco', 2019, 186378.40, 'Disponível'),
(127, 8, '2B0EF279609AFAD03', 'Cinza', 2021, 41494.36, 'Disponível'),
(128, 5, 'A1CEFFFF79FFC8BD9', 'Azul', 2011, 184238.05, 'Disponível'),
(129, 24, '6DFE027CA83416D6E', 'Prata', 2016, 137998.31, 'Disponível'),
(130, 21, '1B82ECD4573EDC35F', 'Vermelho', 2013, 47662.25, 'Disponível'),
(131, 30, '2F923FC45E27BA28B', 'Cinza', 2024, 38244.84, 'Disponível'),
(132, 18, '2118FAA07DCD7C3DC', 'Branco', 2011, 99225.67, 'Disponível'),
(133, 16, 'F65740F1A661110EE', 'Cinza', 2010, 134377.53, 'Disponível'),
(134, 18, '8889ACEDB9F984069', 'Azul', 2021, 165022.36, 'Disponível'),
(135, 12, '0814BADB7EFC9D28E', 'Prata', 2020, 224247.47, 'Disponível'),
(136, 38, '61EBB956278F1B8DC', 'Preto', 2011, 134588.32, 'Disponível'),
(137, 13, 'A0F2581E0E18A5768', 'Preto', 2017, 95643.17, 'Disponível'),
(138, 10, '19477287802A0D101', 'Cinza', 2012, 38725.13, 'Disponível'),
(139, 29, '95EE2DA81CEE7B98E', 'Preto', 2020, 148289.52, 'Disponível'),
(140, 1, '7F1B09D2C1F4EA2C7', 'Prata', 2017, 186847.68, 'Disponível'),
(141, 24, 'C233CADB13BC4A218', 'Cinza', 2021, 35988.06, 'Disponível'),
(142, 37, '10024F45FB7AF80E1', 'Preto', 2013, 148405.05, 'Disponível'),
(143, 9, 'D11E00228619C489F', 'Azul', 2025, 222362.68, 'Disponível'),
(144, 33, '5DB29D53EB1D08279', 'Azul', 2025, 192533.39, 'Disponível'),
(145, 10, '60CB7EF917ABB837B', 'Branco', 2010, 222623.06, 'Disponível'),
(146, 29, '4445AC1F8C9899169', 'Vermelho', 2010, 53409.24, 'Disponível'),
(147, 20, '0531906C175EF43F2', 'Prata', 2022, 151226.95, 'Disponível'),
(148, 24, 'B0CC3F5946FCE38F8', 'Azul', 2018, 151307.19, 'Disponível'),
(149, 19, '804E652D4B862D2BB', 'Preto', 2023, 99962.23, 'Disponível'),
(150, 9, '9514043203222521C', 'Prata', 2021, 146654.28, 'Disponível');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL,
  `id_veiculo` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `data_venda` datetime DEFAULT current_timestamp(),
  `valor_venda_final` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `id_veiculo`, `id_cliente`, `id_vendedor`, `data_venda`, `valor_venda_final`) VALUES
(1, 1, 45, 95, '2023-09-11 00:00:00', 188605.25),
(2, 2, 87, 37, '2023-05-31 00:00:00', 187692.08),
(3, 3, 28, 44, '2023-09-08 00:00:00', 111358.80),
(4, 4, 31, 9, '2024-01-12 00:00:00', 103011.54),
(5, 5, 49, 18, '2023-10-19 00:00:00', 122897.16),
(6, 6, 52, 93, '2023-02-11 00:00:00', 119793.89),
(7, 7, 49, 82, '2024-03-15 00:00:00', 144635.60),
(8, 8, 61, 92, '2024-07-04 00:00:00', 66708.32),
(9, 9, 53, 12, '2024-11-18 00:00:00', 125469.74),
(10, 10, 91, 80, '2023-07-17 00:00:00', 42748.66),
(11, 11, 25, 18, '2023-04-02 00:00:00', 59742.84),
(12, 12, 27, 94, '2024-09-19 00:00:00', 139153.06),
(13, 13, 62, 11, '2024-04-19 00:00:00', 50332.29),
(14, 14, 32, 36, '2024-08-02 00:00:00', 52578.89),
(15, 15, 94, 42, '2023-07-21 00:00:00', 67644.22),
(16, 16, 6, 75, '2024-01-06 00:00:00', 103080.29),
(17, 17, 52, 33, '2023-02-09 00:00:00', 87357.25),
(18, 18, 42, 11, '2023-08-06 00:00:00', 74033.48),
(19, 19, 21, 34, '2023-02-04 00:00:00', 77547.56),
(20, 20, 11, 78, '2024-01-28 00:00:00', 112101.36),
(21, 21, 72, 16, '2024-03-04 00:00:00', 129414.72),
(22, 22, 15, 95, '2023-07-09 00:00:00', 119039.47),
(23, 23, 83, 54, '2023-05-29 00:00:00', 107948.08),
(24, 24, 63, 78, '2023-01-04 00:00:00', 143995.24),
(25, 25, 46, 18, '2024-01-05 00:00:00', 56574.51),
(26, 26, 97, 52, '2024-04-04 00:00:00', 151444.84),
(27, 27, 75, 51, '2023-07-15 00:00:00', 173046.16),
(28, 28, 60, 32, '2024-07-14 00:00:00', 47801.93),
(29, 29, 86, 13, '2023-02-23 00:00:00', 189323.79),
(30, 30, 75, 75, '2023-12-14 00:00:00', 76105.37),
(31, 31, 72, 85, '2023-03-07 00:00:00', 178914.67),
(32, 32, 36, 98, '2024-07-24 00:00:00', 63196.88),
(33, 33, 33, 19, '2024-10-01 00:00:00', 44441.89),
(34, 34, 41, 95, '2023-12-10 00:00:00', 134622.00),
(35, 35, 69, 51, '2023-12-16 00:00:00', 185554.49),
(36, 36, 36, 87, '2023-07-07 00:00:00', 150809.50),
(37, 37, 89, 24, '2023-12-14 00:00:00', 157746.72),
(38, 38, 44, 82, '2024-06-23 00:00:00', 101555.00),
(39, 39, 74, 47, '2023-03-22 00:00:00', 65882.39),
(40, 40, 52, 8, '2024-08-08 00:00:00', 181705.21),
(41, 41, 22, 24, '2024-01-24 00:00:00', 48415.08),
(42, 42, 62, 91, '2024-04-26 00:00:00', 148252.15),
(43, 43, 55, 56, '2023-04-01 00:00:00', 188866.48),
(44, 44, 58, 89, '2024-05-21 00:00:00', 182780.70),
(45, 45, 59, 9, '2024-04-16 00:00:00', 55595.03),
(46, 46, 50, 19, '2023-10-23 00:00:00', 123861.08),
(47, 47, 53, 97, '2023-06-23 00:00:00', 91154.56),
(48, 48, 96, 78, '2023-01-03 00:00:00', 143267.74),
(49, 49, 44, 10, '2023-04-20 00:00:00', 117317.31),
(50, 50, 11, 99, '2024-02-22 00:00:00', 45152.94),
(51, 51, 39, 81, '2024-09-15 00:00:00', 44757.19),
(52, 52, 49, 34, '2023-06-04 00:00:00', 54330.31),
(53, 53, 82, 80, '2023-12-27 00:00:00', 69963.81),
(54, 54, 46, 67, '2024-10-29 00:00:00', 156832.10),
(55, 55, 4, 85, '2023-03-11 00:00:00', 186343.44),
(56, 56, 58, 97, '2023-03-04 00:00:00', 122400.52),
(57, 57, 49, 76, '2023-08-21 00:00:00', 99562.17),
(58, 58, 99, 76, '2024-07-07 00:00:00', 145383.65),
(59, 59, 14, 59, '2023-12-27 00:00:00', 162057.37),
(60, 60, 53, 19, '2023-09-03 00:00:00', 69601.88),
(61, 61, 94, 9, '2024-02-28 00:00:00', 156799.75),
(62, 62, 8, 6, '2023-02-08 00:00:00', 54561.68),
(63, 63, 33, 33, '2024-03-22 00:00:00', 73878.91),
(64, 64, 22, 41, '2023-09-11 00:00:00', 130972.20),
(65, 65, 95, 91, '2024-04-26 00:00:00', 149273.51),
(66, 66, 58, 71, '2024-06-22 00:00:00', 152067.19),
(67, 67, 43, 90, '2023-05-11 00:00:00', 77892.18),
(68, 68, 71, 76, '2024-04-21 00:00:00', 59575.86),
(69, 69, 61, 66, '2023-11-15 00:00:00', 85256.20),
(70, 70, 15, 83, '2024-04-18 00:00:00', 177233.35),
(71, 71, 55, 98, '2023-07-02 00:00:00', 95286.41),
(72, 72, 6, 20, '2024-06-28 00:00:00', 87338.47),
(73, 73, 25, 28, '2024-03-26 00:00:00', 98897.71),
(74, 74, 4, 99, '2024-07-22 00:00:00', 57500.86),
(75, 75, 15, 39, '2023-11-27 00:00:00', 72079.72),
(76, 76, 66, 63, '2023-04-19 00:00:00', 175774.68),
(77, 77, 7, 60, '2024-07-04 00:00:00', 62260.94),
(78, 78, 39, 47, '2023-05-20 00:00:00', 127752.63),
(79, 79, 33, 89, '2023-11-20 00:00:00', 136018.97),
(80, 80, 82, 16, '2023-08-18 00:00:00', 66544.34),
(81, 81, 91, 98, '2023-04-17 00:00:00', 167171.97),
(82, 82, 79, 38, '2023-12-29 00:00:00', 109895.29),
(83, 83, 78, 50, '2023-03-30 00:00:00', 63155.48),
(84, 84, 40, 51, '2023-08-29 00:00:00', 70811.75),
(85, 85, 100, 36, '2024-07-17 00:00:00', 182839.17),
(86, 86, 35, 88, '2023-08-13 00:00:00', 188084.99),
(87, 87, 98, 92, '2024-03-28 00:00:00', 113179.99),
(88, 88, 51, 5, '2024-05-04 00:00:00', 95854.06),
(89, 89, 77, 72, '2023-07-07 00:00:00', 70364.30),
(90, 90, 21, 43, '2023-12-23 00:00:00', 80776.01),
(91, 91, 83, 34, '2023-04-28 00:00:00', 166665.27),
(92, 92, 72, 7, '2023-04-25 00:00:00', 133331.50),
(93, 93, 63, 25, '2023-09-02 00:00:00', 42817.30),
(94, 94, 5, 17, '2024-05-12 00:00:00', 46485.19),
(95, 95, 9, 30, '2023-06-19 00:00:00', 86218.49),
(96, 96, 82, 16, '2023-08-20 00:00:00', 67641.51),
(97, 97, 94, 11, '2024-05-12 00:00:00', 77342.29),
(98, 98, 12, 83, '2024-07-05 00:00:00', 109444.61),
(99, 99, 95, 36, '2024-10-20 00:00:00', 134777.34),
(100, 100, 34, 79, '2024-10-02 00:00:00', 73616.04);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `id_vendedor` int(11) NOT NULL,
  `nome_vendedor` varchar(150) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `data_contratacao` date DEFAULT NULL,
  `percentual_comissao` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendedores`
--

INSERT INTO `vendedores` (`id_vendedor`, `nome_vendedor`, `email`, `cpf`, `data_contratacao`, `percentual_comissao`) VALUES
(1, 'Carlos Silva', 'carlos.silva@autodrive.com', '111.222.333-44', '2015-03-10', 3.50),
(2, 'Adriana Souza', 'adriana.souza@autodrive.com', '222.333.444-55', '2018-07-22', 3.00),
(3, 'Marcos Pontes', 'marcos.pontes@autodrive.com', '333.444.555-66', '2020-01-15', 2.50),
(4, 'Camila Rodrigues', 'vendedor4@autodrive.com', '947.630.207-83', '2021-06-05', 2.57),
(5, 'Patrícia Costa', 'vendedor5@autodrive.com', '976.880.475-52', '2016-04-04', 2.31),
(6, 'Beatriz Rodrigues', 'vendedor6@autodrive.com', '584.364.867-44', '2018-01-31', 3.29),
(7, 'Luiz Santos', 'vendedor7@autodrive.com', '248.566.185-92', '2017-09-03', 3.65),
(8, 'Fernanda Oliveira', 'vendedor8@autodrive.com', '275.889.822-44', '2019-03-21', 2.53),
(9, 'Camila Lima', 'vendedor9@autodrive.com', '391.536.507-82', '2020-09-30', 1.65),
(10, 'Thiago Gomes', 'vendedor10@autodrive.com', '738.951.644-26', '2015-11-02', 3.90),
(11, 'Luiz Ferreira', 'vendedor11@autodrive.com', '393.964.846-33', '2021-10-22', 2.38),
(12, 'Thiago Lima', 'vendedor12@autodrive.com', '843.225.292-68', '2020-02-29', 1.95),
(13, 'Ricardo Ferreira', 'vendedor13@autodrive.com', '560.135.694-26', '2022-10-22', 1.98),
(14, 'Beatriz Barbosa', 'vendedor14@autodrive.com', '513.487.797-62', '2020-01-04', 2.22),
(15, 'André Santos', 'vendedor15@autodrive.com', '994.540.517-85', '2022-02-18', 3.46),
(16, 'Fernanda Pereira', 'vendedor16@autodrive.com', '361.731.672-16', '2018-12-16', 1.93),
(17, 'Luiz Ferreira', 'vendedor17@autodrive.com', '687.564.660-60', '2022-12-10', 1.83),
(18, 'Patrícia Almeida', 'vendedor18@autodrive.com', '781.609.602-18', '2021-07-09', 3.22),
(19, 'Ricardo Santos', 'vendedor19@autodrive.com', '827.522.928-27', '2016-11-17', 2.87),
(20, 'Ricardo Costa', 'vendedor20@autodrive.com', '949.877.536-84', '2020-12-07', 1.76),
(21, 'Fernanda Almeida', 'vendedor21@autodrive.com', '294.741.928-51', '2019-09-12', 2.64),
(22, 'Camila Almeida', 'vendedor22@autodrive.com', '704.941.692-53', '2018-10-31', 3.66),
(23, 'Letícia Oliveira', 'vendedor23@autodrive.com', '530.308.748-91', '2018-05-01', 2.21),
(24, 'Thiago Santos', 'vendedor24@autodrive.com', '383.111.203-57', '2017-11-05', 1.79),
(25, 'Camila Lima', 'vendedor25@autodrive.com', '382.456.134-10', '2022-05-22', 2.72),
(26, 'Patrícia Pereira', 'vendedor26@autodrive.com', '100.340.399-87', '2017-09-09', 1.60),
(27, 'Thiago Barbosa', 'vendedor27@autodrive.com', '311.313.532-71', '2015-03-17', 1.61),
(28, 'Beatriz Costa', 'vendedor28@autodrive.com', '641.264.197-98', '2020-04-21', 2.11),
(29, 'Thiago Rodrigues', 'vendedor29@autodrive.com', '735.449.838-93', '2016-12-26', 2.47),
(30, 'Thiago Gomes', 'vendedor30@autodrive.com', '732.934.578-88', '2021-06-23', 2.28),
(31, 'Beatriz Oliveira', 'vendedor31@autodrive.com', '534.449.542-36', '2015-01-28', 1.88),
(32, 'Patrícia Pereira', 'vendedor32@autodrive.com', '965.194.674-88', '2018-11-19', 3.33),
(33, 'Thiago Barbosa', 'vendedor33@autodrive.com', '242.892.936-10', '2017-01-27', 2.09),
(34, 'Luiz Lima', 'vendedor34@autodrive.com', '722.362.444-13', '2015-05-25', 1.81),
(35, 'Luiz Barbosa', 'vendedor35@autodrive.com', '494.359.215-79', '2019-02-13', 1.94),
(36, 'Fernanda Lima', 'vendedor36@autodrive.com', '540.544.100-56', '2019-11-20', 2.54),
(37, 'Thiago Pereira', 'vendedor37@autodrive.com', '406.963.800-11', '2021-02-03', 3.15),
(38, 'Ricardo Almeida', 'vendedor38@autodrive.com', '836.875.868-71', '2022-02-05', 2.16),
(39, 'Patrícia Gomes', 'vendedor39@autodrive.com', '153.776.625-69', '2019-08-23', 3.59),
(40, 'Luiz Gomes', 'vendedor40@autodrive.com', '124.509.275-64', '2018-10-06', 2.66),
(41, 'Letícia Lima', 'vendedor41@autodrive.com', '986.838.233-35', '2022-11-22', 3.90),
(42, 'Letícia Costa', 'vendedor42@autodrive.com', '760.624.743-83', '2023-02-26', 2.70),
(43, 'Luiz Costa', 'vendedor43@autodrive.com', '118.224.667-76', '2021-09-08', 3.61),
(44, 'Patrícia Lima', 'vendedor44@autodrive.com', '592.642.433-14', '2015-12-11', 2.59),
(45, 'Sérgio Gomes', 'vendedor45@autodrive.com', '949.137.437-76', '2020-03-17', 3.79),
(46, 'André Ferreira', 'vendedor46@autodrive.com', '983.210.699-95', '2021-09-25', 2.02),
(47, 'Camila Pereira', 'vendedor47@autodrive.com', '644.300.368-83', '2016-11-30', 3.22),
(48, 'Patrícia Costa', 'vendedor48@autodrive.com', '948.838.349-92', '2021-05-23', 1.81),
(49, 'Thiago Oliveira', 'vendedor49@autodrive.com', '487.983.657-23', '2022-05-17', 1.59),
(50, 'Luiz Pereira', 'vendedor50@autodrive.com', '988.182.543-26', '2018-11-03', 3.43),
(51, 'Luiz Barbosa', 'vendedor51@autodrive.com', '377.775.848-90', '2015-05-13', 2.74),
(52, 'Fernanda Pereira', 'vendedor52@autodrive.com', '260.244.340-86', '2018-11-26', 3.52),
(53, 'André Costa', 'vendedor53@autodrive.com', '611.803.286-71', '2021-09-05', 1.51),
(54, 'Camila Barbosa', 'vendedor54@autodrive.com', '864.532.871-85', '2020-05-28', 3.38),
(55, 'Patrícia Costa', 'vendedor55@autodrive.com', '959.816.206-27', '2020-03-27', 2.98),
(56, 'Ricardo Almeida', 'vendedor56@autodrive.com', '263.562.123-62', '2022-01-02', 2.76),
(57, 'Letícia Lima', 'vendedor57@autodrive.com', '761.725.342-33', '2019-01-05', 3.16),
(58, 'Sérgio Pereira', 'vendedor58@autodrive.com', '894.593.180-81', '2021-02-09', 2.28),
(59, 'Fernanda Rodrigues', 'vendedor59@autodrive.com', '591.650.482-35', '2016-04-18', 3.82),
(60, 'Beatriz Oliveira', 'vendedor60@autodrive.com', '876.179.866-98', '2018-07-31', 1.96),
(61, 'André Almeida', 'vendedor61@autodrive.com', '592.390.974-89', '2019-07-09', 1.67),
(62, 'André Pereira', 'vendedor62@autodrive.com', '401.836.179-97', '2020-06-08', 2.38),
(63, 'Patrícia Gomes', 'vendedor63@autodrive.com', '828.608.458-36', '2017-04-07', 2.74),
(64, 'André Rodrigues', 'vendedor64@autodrive.com', '976.559.665-64', '2016-05-19', 1.52),
(65, 'Camila Costa', 'vendedor65@autodrive.com', '709.474.143-98', '2021-10-16', 1.88),
(66, 'Thiago Barbosa', 'vendedor66@autodrive.com', '752.911.403-97', '2022-04-09', 2.72),
(67, 'Patrícia Almeida', 'vendedor67@autodrive.com', '895.176.793-63', '2020-09-28', 3.22),
(68, 'Fernanda Costa', 'vendedor68@autodrive.com', '258.966.360-59', '2022-08-02', 3.85),
(69, 'Letícia Gomes', 'vendedor69@autodrive.com', '553.939.239-96', '2018-04-18', 1.71),
(70, 'Thiago Gomes', 'vendedor70@autodrive.com', '679.670.314-35', '2021-01-10', 3.50),
(71, 'Patrícia Ferreira', 'vendedor71@autodrive.com', '485.514.116-73', '2018-12-31', 2.27),
(72, 'Ricardo Ferreira', 'vendedor72@autodrive.com', '327.780.125-87', '2017-02-08', 3.20),
(73, 'André Oliveira', 'vendedor73@autodrive.com', '556.382.144-36', '2018-01-09', 3.83),
(74, 'Camila Barbosa', 'vendedor74@autodrive.com', '288.214.104-67', '2016-10-07', 1.84),
(75, 'Ricardo Rodrigues', 'vendedor75@autodrive.com', '786.542.255-44', '2018-05-23', 3.76),
(76, 'Thiago Rodrigues', 'vendedor76@autodrive.com', '806.761.388-45', '2015-02-28', 3.77),
(77, 'Luiz Rodrigues', 'vendedor77@autodrive.com', '184.399.448-93', '2019-04-01', 3.44),
(78, 'Fernanda Lima', 'vendedor78@autodrive.com', '782.757.443-73', '2018-07-21', 1.54),
(79, 'Patrícia Gomes', 'vendedor79@autodrive.com', '867.783.313-90', '2021-10-29', 2.57),
(80, 'André Barbosa', 'vendedor80@autodrive.com', '900.592.159-71', '2016-11-21', 1.74),
(81, 'Patrícia Costa', 'vendedor81@autodrive.com', '823.218.321-84', '2018-08-07', 3.21),
(82, 'Beatriz Almeida', 'vendedor82@autodrive.com', '192.151.981-75', '2020-10-30', 2.40),
(83, 'André Pereira', 'vendedor83@autodrive.com', '292.411.180-46', '2021-05-17', 3.14),
(84, 'Letícia Rodrigues', 'vendedor84@autodrive.com', '935.452.256-71', '2022-10-04', 3.10),
(85, 'Fernanda Barbosa', 'vendedor85@autodrive.com', '677.416.847-19', '2015-03-04', 3.49),
(86, 'Letícia Santos', 'vendedor86@autodrive.com', '204.165.111-85', '2016-09-03', 2.68),
(87, 'Patrícia Lima', 'vendedor87@autodrive.com', '501.291.749-96', '2020-10-26', 3.04),
(88, 'Letícia Barbosa', 'vendedor88@autodrive.com', '806.222.392-29', '2015-11-04', 3.66),
(89, 'Ricardo Ferreira', 'vendedor89@autodrive.com', '542.934.246-12', '2020-06-05', 2.04),
(90, 'Ricardo Gomes', 'vendedor90@autodrive.com', '799.513.966-49', '2017-07-29', 2.11),
(91, 'Thiago Costa', 'vendedor91@autodrive.com', '612.816.348-97', '2015-12-04', 3.00),
(92, 'André Almeida', 'vendedor92@autodrive.com', '522.897.121-50', '2016-10-19', 3.31),
(93, 'Letícia Ferreira', 'vendedor93@autodrive.com', '213.856.844-65', '2019-12-25', 1.94),
(94, 'Ricardo Rodrigues', 'vendedor94@autodrive.com', '806.586.413-20', '2019-06-30', 2.45),
(95, 'Thiago Santos', 'vendedor95@autodrive.com', '981.506.384-30', '2016-07-03', 2.09),
(96, 'André Almeida', 'vendedor96@autodrive.com', '468.694.170-46', '2021-08-13', 3.50),
(97, 'Camila Ferreira', 'vendedor97@autodrive.com', '119.482.158-14', '2015-05-23', 1.73),
(98, 'Fernanda Pereira', 'vendedor98@autodrive.com', '577.792.333-97', '2016-04-22', 3.58),
(99, 'André Barbosa', 'vendedor99@autodrive.com', '673.431.933-57', '2022-03-31', 3.53),
(100, 'Luiz Costa', 'vendedor100@autodrive.com', '905.637.373-74', '2020-11-18', 2.51);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_comissao_mensal_detalhada`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_comissao_mensal_detalhada` (
`id_vendedor` int(11)
,`nome_vendedor` varchar(150)
,`ano` int(4)
,`mes` int(2)
,`total_mes` bigint(21)
,`faturamento_mensal` decimal(34,2)
,`taxa_comissao` decimal(4,2)
,`valor_comissao_mes` decimal(37,2)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_relatorio_comissoes`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_relatorio_comissoes` (
`id_vendedor` int(11)
,`nome_vendedor` varchar(150)
,`taxa_comissao` decimal(4,2)
,`quantidade_vendas` bigint(21)
,`faturamento_bruto` decimal(34,2)
,`comissao_total` decimal(37,2)
,`ticket_medio` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Estrutura para view `vw_comissao_mensal_detalhada`
--
DROP TABLE IF EXISTS `vw_comissao_mensal_detalhada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_comissao_mensal_detalhada`  AS SELECT `v`.`id_vendedor` AS `id_vendedor`, `v`.`nome_vendedor` AS `nome_vendedor`, year(`vd`.`data_venda`) AS `ano`, month(`vd`.`data_venda`) AS `mes`, count(`vd`.`id_venda`) AS `total_mes`, sum(`vd`.`valor_venda_final`) AS `faturamento_mensal`, `v`.`percentual_comissao` AS `taxa_comissao`, round(sum(`vd`.`valor_venda_final` * (`v`.`percentual_comissao` / 100)),2) AS `valor_comissao_mes` FROM (`vendedores` `v` join `vendas` `vd` on(`v`.`id_vendedor` <> 0)) GROUP BY `v`.`id_vendedor`, `v`.`nome_vendedor`, `v`.`percentual_comissao`, year(`vd`.`data_venda`), month(`vd`.`data_venda`) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw_relatorio_comissoes`
--
DROP TABLE IF EXISTS `vw_relatorio_comissoes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_relatorio_comissoes`  AS SELECT `v`.`id_vendedor` AS `id_vendedor`, `v`.`nome_vendedor` AS `nome_vendedor`, `v`.`percentual_comissao` AS `taxa_comissao`, count(`vd`.`id_venda`) AS `quantidade_vendas`, sum(`vd`.`valor_venda_final`) AS `faturamento_bruto`, round(sum(`vd`.`valor_venda_final` * (`v`.`percentual_comissao` / 100)),2) AS `comissao_total`, round(avg(`vd`.`valor_venda_final`),2) AS `ticket_medio` FROM (`vendedores` `v` join `vendas` `vd` on(`v`.`id_vendedor` = `vd`.`id_vendedor`)) GROUP BY `v`.`id_vendedor`, `v`.`nome_vendedor`, `v`.`percentual_comissao` ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cpf_cnpj` (`cpf_cnpj`);

--
-- Índices de tabela `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`id_fabricante`);

--
-- Índices de tabela `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_modelo`),
  ADD KEY `id_fabricante` (`id_fabricante`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD UNIQUE KEY `chassi` (`chassi`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD UNIQUE KEY `id_veiculo` (`id_veiculo`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- Índices de tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id_vendedor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `id_fabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`id_fabricante`) REFERENCES `fabricantes` (`id_fabricante`);

--
-- Restrições para tabelas `veiculos`
--
ALTER TABLE `veiculos`
  ADD CONSTRAINT `veiculos_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculos` (`id_veiculo`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id_vendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
