-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.27 - MySQL Community Server - GPL
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para sysschool
CREATE DATABASE IF NOT EXISTS `sysschool` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sysschool`;

-- Copiando estrutura para tabela sysschool.aluno
CREATE TABLE IF NOT EXISTS `aluno` (
  `cdaluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'aluno@gbi.com',
  `senha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'aluno123',
  `cpf` varchar(15) NOT NULL,
  `nmatricula` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `cidade` varchar(15) DEFAULT NULL,
  `estadocivil` varchar(15) DEFAULT NULL,
  `ativa` tinyint(1) DEFAULT NULL,
  `nivel` int NOT NULL DEFAULT '4',
  `periodo` int DEFAULT NULL,
  PRIMARY KEY (`cdaluno`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.aluno: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`cdaluno`, `nome`, `email`, `senha`, `cpf`, `nmatricula`, `status`, `dataNascimento`, `estado`, `cidade`, `estadocivil`, `ativa`, `nivel`, `periodo`) VALUES
	(1, 'Antonio Bandeiras', 'aluno@gbi.com', 'aluno123', '000102018', NULL, 'MT', '2022-02-09', 'Bahia', 'Pindai', 'solteiro', 1, 4, NULL),
	(2, 'Bill Gates', 'aluno@gbi.com', 'aluno123', '00002-2018', NULL, 'MT', '2022-02-11', 'null', 'null', '1', 1, 4, NULL),
	(3, 'Steve Sniack', 'aluno@gbi.com', 'aluno123', '00003-2018', NULL, 'MT', NULL, NULL, NULL, NULL, 1, 4, NULL),
	(4, 'Linus Torvals', 'aluno@gbi.com', 'aluno123', '000404-2018', NULL, 'MT', NULL, NULL, NULL, NULL, 1, 4, NULL),
	(5, 'icaro dias dos santos', 'aluno@gbi.com', 'aluno123', '799.164.420-02', '202201GBI0', 'MT', '2022-02-16', '332', 'er', 'morto', 0, 4, 1),
	(7, 'antonio carlos de jesus teixeira', 'aluno@gbi.com', 'aluno123', '755.164.420-02', '202201GBI1', 'MT', '2022-02-18', '332', 'er2313', '1', 1, 4, 1),
	(8, 'eeeeeeeeeeeeee', 'aluno@gbi.com', 'aluno123', '999999999', '202201GBI2', 'MT', '2022-02-18', '9999', '9999', '999', 1, 4, 1),
	(13, 'icaro dias dos santos', 'aluno@gbi.com', 'aluno123', 'ef', '202201GBI3', 'MT', '2022-02-25', '332', 'er', '332', 1, 4, 1),
	(15, 'icaro dias dos santos', 'aluno@gbi.com', 'aluno123', 'w', '202201GBI4', 'MT', '2022-02-25', '332', 'er', '332', 1, 4, 1),
	(16, 'icaro dias dos santos', 'aluno@gbi.com', 'aluno123', '799.164.420', '202201GBI5', 'MT', '2022-02-24', '332', 'er', '332', 1, 4, 1),
	(19, 'icaro dias dos santos', 'aluno@gbi.com', 'aluno123', '345', '202201GBI6', 'MT', '2022-03-03', '332', 'er', '332', 1, 4, 1),
	(20, 'icaro dias dos santos', 'aluno@gbi.com', 'aluno123', 'dwefewf', '202201GBI7', 'MT', '2022-02-09', '332', 'er', '332', 1, 4, 1),
	(21, 'Samara da Trindade Torquato', 'aluno@gbi.com', 'aluno123', '17494689378', '202201GBI8', 'MT', '2002-04-16', 'Bahia ', 'Cocos ', 'Solteira', 1, 4, 1),
	(22, 'Teste Teste', 'aluno@gbi.com', 'aluno123', '999.777.888-22', '202201GBI9', 'MT', '2022-02-23', 'Bahia', 'Qualquer', '1', 1, 4, 1),
	(24, 'Komarol', 'aluno@gbi.com', 'aluno123', '0945321452', '202201GBI10', 'MT', '2001-04-06', 'Bahia', 'Malhada', 'comedor', 1, 4, 1),
	(25, 'wwwwww', 'aluno@gbi.com', 'aluno123', '1', '202201GBI11', 'MT', '2022-02-16', '332', 'er', 'wwwww', 1, 4, 1),
	(27, 'icaro dias dos santos', '202201GBI12@gmail.com', 'aluno123', '799.164.420-02e', '202201GBI12', 'MT', '2022-02-11', '332', 'er', 'Selecione', 1, 4, 1),
	(28, 'icaro dias dos santos', '202201GBI13@gbi.com', 'aluno123', '21', '202201GBI13', 'MT', '2022-02-16', '332', 'er', '332', 1, 4, 1),
	(30, 'icaro dias dos santos', '202201GBI14@gbi.com', 'aluno123', '212121212121', '202201GBI14', 'MT', '2022-02-16', '332', 'er', 'Selecione', 1, 4, 1),
	(31, 'icaro dias dos santos', '202201GBI15@gbi.com', 'aluno123', '323', '202201GBI15', 'MT', '2022-02-17', '332', 'er', '332', 1, 4, 1);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.curso
CREATE TABLE IF NOT EXISTS `curso` (
  `cdcurso` int NOT NULL AUTO_INCREMENT,
  `nomecurso` varchar(20) DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`cdcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.curso: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` (`cdcurso`, `nomecurso`, `valor`) VALUES
	(1, 'ADS', 800.00),
	(2, 'Quimica', 900.00),
	(3, 'Agronomia', 1000.00),
	(9, 'Dificil', 33.00),
	(10, 'Dificil', 43335.00),
	(11, 'Dificil', 44.00),
	(12, 'Dificil', 22.00),
	(13, 'w', 555.00),
	(14, 'tyjyetjj', 6565.00),
	(15, 'Dificil', 3231.00),
	(18, 'Dificil', 654.00),
	(20, 'biologia', 5.00);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.dados
CREATE TABLE IF NOT EXISTS `dados` (
  `valorMatDis` double DEFAULT NULL,
  `valorMat` double DEFAULT NULL,
  `numMatPadrao` varchar(25) DEFAULT NULL,
  `numMat` int DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.dados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dados` DISABLE KEYS */;
INSERT INTO `dados` (`valorMatDis`, `valorMat`, `numMatPadrao`, `numMat`, `email`) VALUES
	(300, 400, '202201GBI', 16, '@gbi.com');
/*!40000 ALTER TABLE `dados` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.disciplina
CREATE TABLE IF NOT EXISTS `disciplina` (
  `cddisciplina` int NOT NULL AUTO_INCREMENT,
  `nomedisciplina` varchar(40) DEFAULT NULL,
  `cdprofessor` int DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`cddisciplina`),
  KEY `cdprofessor` (`cdprofessor`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`cdprofessor`) REFERENCES `professor` (`cdprofessor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.disciplina: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` (`cddisciplina`, `nomedisciplina`, `cdprofessor`, `valor`) VALUES
	(1, 'ALGORITMO', 1, 500.00),
	(2, 'BANCO DE DADOS', 2, 600.00),
	(3, 'TABD', 2, 600.00),
	(4, 'SO', 2, 700.00),
	(5, 'SD', 2, 700.00),
	(6, 'IHM', 2, 700.00),
	(7, 'ESTAGIO 1', 3, 900.00),
	(8, 'ESTAGIO I1', 3, 900.00),
	(9, 'ESTATISTICA', 3, 900.00),
	(10, 'PORTUGUES', 3, 900.00),
	(11, 'FISICA 1', 4, 1000.00),
	(12, 'ROBOTICA', 4, 1000.00),
	(13, '2', 1, 11.00),
	(14, 'd', 2, 2.00),
	(15, 'Teste', 3, 100.00),
	(16, '3', 1, 3.00),
	(17, 'Teste', 1, 55.00),
	(18, 'Teste', 1, 12.00),
	(19, 'd', 3, 22.00),
	(20, 'Teste', 1, 636.00),
	(21, 'Teste', 1, 4234.00),
	(22, 'd', 1, 15.00),
	(23, 'Teste', 1, 43634.00);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `nome` varchar(40) NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'funcionario@gbi.com',
  `senha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'funcionario123',
  `cdFuncionario` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `cidade` varchar(15) DEFAULT NULL,
  `estadocivil` varchar(15) DEFAULT NULL,
  `ativa` tinyint(1) DEFAULT NULL,
  `nivel` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`cdFuncionario`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.funcionario: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`nome`, `email`, `senha`, `cdFuncionario`, `cpf`, `dataNascimento`, `estado`, `cidade`, `estadocivil`, `ativa`, `nivel`) VALUES
	('admin', 'admin@admin.com', 'admin', 1, '0', NULL, NULL, NULL, NULL, 1, 1),
	('icaro dias dos santos', 'aluno@gmail.com', 'admin', 2, '799.164.420-02', '2022-02-17', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'funcionario@gmail.com', 'admin', 3, '799.164.42043', '2022-03-02', '332', 'er', '332', 1, 2),
	('icaro dias dos santos', 'professor@gmail.com', 'admin', 4, '1', '2022-02-04', '332', 'er', '332', 1, 3),
	('icaro dias dos santos', 'icarodias2222@gmail.com', 'admin', 6, '755.164.420-02', '2022-02-10', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'admin@admin.com', 'admin', 7, '2', '2022-02-10', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'icarodias2222@gmail.com', 'admin', 8, 'ww-02', '2022-02-17', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'icarodias2222@gmail.com', 'admin', 10, '121212', '2022-02-10', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'icarodias2222@gmail.com', 'admin', 11, '755.164.420-04', '2022-03-04', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'icarodias2222@gmail.com', 'admin', 12, '799.164.420', '2022-02-24', '332', 'er', '332', 1, 4),
	('icaro dias dos santos', 'admin@admin.com', 'admin', 13, '111111', '2022-02-24', '332', 'er', '332', 1, 1),
	('icaro dias dos santos', 'professor@gmail.com', '22222222dkbcvdfjf22222222dkbcvdfjf22222222', 18, '3', '2022-02-17', '332', 'er', 'Selecione', 1, 2);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.grafic
CREATE TABLE IF NOT EXISTS `grafic` (
  `cdnotas` int NOT NULL AUTO_INCREMENT,
  `notas` double NOT NULL,
  PRIMARY KEY (`cdnotas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.grafic: ~38 rows (aproximadamente)
/*!40000 ALTER TABLE `grafic` DISABLE KEYS */;
INSERT INTO `grafic` (`cdnotas`, `notas`) VALUES
	(1, 5),
	(2, 4.5),
	(3, 3),
	(4, 6),
	(5, 9),
	(6, 6.12),
	(7, 6.08),
	(8, 6),
	(9, 9.21),
	(10, 7),
	(11, 7),
	(12, 7),
	(13, 7),
	(14, 7),
	(15, 7),
	(16, 7),
	(17, 7),
	(18, 7),
	(19, 7),
	(20, 7),
	(21, 7),
	(22, 7),
	(23, 6.01),
	(24, 5.94),
	(25, 5.98),
	(26, 6.05),
	(27, 6.02),
	(28, 6.05),
	(29, 6.07),
	(30, 6.06),
	(31, 6.08),
	(32, 6.06),
	(33, 6.04),
	(34, 6.02),
	(35, 6),
	(36, 5.98),
	(37, 5.96),
	(38, 5.95),
	(39, 5.95),
	(40, 5.76);
/*!40000 ALTER TABLE `grafic` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.matdisciplina
CREATE TABLE IF NOT EXISTS `matdisciplina` (
  `cdmatdisciplina` int NOT NULL AUTO_INCREMENT,
  `cdmatricula` int DEFAULT NULL,
  `cddisciplina` int DEFAULT NULL,
  `media` decimal(7,2) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `cdprofessor` int DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`cdmatdisciplina`),
  KEY `cdmatricula` (`cdmatricula`),
  KEY `cddisciplina` (`cddisciplina`),
  KEY `cdprofessor` (`cdprofessor`),
  CONSTRAINT `matdisciplina_ibfk_1` FOREIGN KEY (`cdmatricula`) REFERENCES `matricula` (`cdmatricula`),
  CONSTRAINT `matdisciplina_ibfk_2` FOREIGN KEY (`cddisciplina`) REFERENCES `disciplina` (`cddisciplina`),
  CONSTRAINT `matdisciplina_ibfk_3` FOREIGN KEY (`cdprofessor`) REFERENCES `professor` (`cdprofessor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.matdisciplina: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `matdisciplina` DISABLE KEYS */;
INSERT INTO `matdisciplina` (`cdmatdisciplina`, `cdmatricula`, `cddisciplina`, `media`, `status`, `cdprofessor`, `valor`) VALUES
	(1, 1, 3, 5.00, 'MT', NULL, 500.00),
	(2, 1, 1, 4.50, 'MT', NULL, 600.00),
	(3, 1, 2, 8.00, 'MT', NULL, 600.00),
	(4, 1, 3, 8.00, 'MT', NULL, 500.00),
	(5, 3, 10, 5.00, 'MT', NULL, 500.00),
	(6, 3, 3, 7.00, 'MT', NULL, 350.00),
	(7, 3, 4, 5.00, 'MT', NULL, 400.00),
	(8, 2, 5, 4.95, 'MT', NULL, 350.00),
	(9, 2, 5, 8.50, 'MT', NULL, 300.00),
	(10, 8, 6, 6.00, 'MT', NULL, 660.00),
	(11, 9, 7, 5.00, 'MT', NULL, 760.00),
	(12, 1, 8, 6.00, 'MT', NULL, 900.00),
	(13, 1, 9, 4.00, 'MT', NULL, 800.00),
	(14, 15, 2, 6.40, 'MT', NULL, 300.00),
	(15, 15, 9, NULL, 'MT', NULL, 300.00),
	(16, 15, 1, NULL, 'MT', NULL, 300.00),
	(17, 11, 1, NULL, 'MT', NULL, 300.00),
	(18, 10, 1, 3.00, 'MT', NULL, 300.00),
	(19, 10, 1, NULL, 'MT', NULL, 300.00),
	(20, 10, 1, NULL, 'MT', NULL, 300.00),
	(21, 10, 1, NULL, 'MT', NULL, 300.00),
	(22, 10, 1, NULL, 'MT', NULL, 300.00),
	(23, 10, 1, NULL, 'MT', NULL, 300.00),
	(24, 10, 18, NULL, 'MT', NULL, 300.00),
	(25, 10, 1, NULL, 'MT', NULL, 300.00);
/*!40000 ALTER TABLE `matdisciplina` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.matricula
CREATE TABLE IF NOT EXISTS `matricula` (
  `cdmatricula` int NOT NULL AUTO_INCREMENT,
  `cdcurso` int DEFAULT NULL,
  `cdaluno` int DEFAULT NULL,
  `cdsemestre` int DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  `cdturma` int DEFAULT NULL,
  PRIMARY KEY (`cdmatricula`),
  KEY `cdcurso` (`cdcurso`),
  KEY `cdaluno` (`cdaluno`),
  KEY `cdsemestre` (`cdsemestre`),
  KEY `cdturma` (`cdturma`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`cdcurso`) REFERENCES `curso` (`cdcurso`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`cdaluno`) REFERENCES `aluno` (`cdaluno`),
  CONSTRAINT `matricula_ibfk_3` FOREIGN KEY (`cdsemestre`) REFERENCES `semestre` (`cdsemestre`),
  CONSTRAINT `matricula_ibfk_4` FOREIGN KEY (`cdturma`) REFERENCES `turma` (`cdturma`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.matricula: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` (`cdmatricula`, `cdcurso`, `cdaluno`, `cdsemestre`, `valor`, `cdturma`) VALUES
	(1, 1, 1, 4, 300.00, 1),
	(2, 1, 2, 4, 400.00, 1),
	(3, 2, 3, 4, 500.00, 2),
	(4, 3, 4, 4, 500.00, 2),
	(5, 1, 1, 1, 300.00, 1),
	(6, 1, 2, 1, 400.00, 1),
	(7, 2, 3, 1, 500.00, 2),
	(8, 1, 4, 1, 500.00, 2),
	(9, 1, 1, 2, 300.00, 1),
	(10, 1, 2, 2, 400.00, 1),
	(11, 2, 3, 3, 500.00, 2),
	(12, 2, 4, 3, 500.00, 2),
	(13, 1, 4, 4, 300.00, 1),
	(14, 1, 4, 4, 300.00, 1),
	(15, 1, 5, 4, 300.00, 1),
	(16, 1, 7, 4, 300.00, 1),
	(17, 1, 8, 4, 300.00, 1),
	(18, 1, 8, 4, 300.00, 1),
	(19, 1, 8, 4, 300.00, 1),
	(20, 1, 8, 4, 300.00, 1),
	(21, 1, 8, 4, 300.00, 1),
	(22, 1, 13, 4, 300.00, 1),
	(23, 1, 13, 4, 300.00, 1),
	(24, 1, 15, 4, 300.00, 1),
	(25, 1, 16, 4, 300.00, 1),
	(26, 1, 16, 4, 300.00, 1),
	(27, 10, 16, 16, 300.00, 10),
	(28, 10, 19, 16, 300.00, 10),
	(29, 10, 20, 16, 300.00, 10),
	(30, 10, 20, 16, 300.00, 10),
	(32, 10, 22, 16, 300.00, 10),
	(33, 10, 22, 16, 300.00, 10),
	(34, 10, 24, 16, 300.00, 10),
	(35, 10, 25, 16, 300.00, 10),
	(36, 1, 25, 16, 300.00, 1),
	(37, 20, 25, 16, 300.00, 14),
	(38, 18, 25, 16, 300.00, 16),
	(39, 1, 25, 16, 300.00, 1),
	(40, 1, 25, 16, 300.00, 1),
	(41, 1, 25, 16, 300.00, 1),
	(42, 1, 25, 16, 300.00, 1),
	(43, 1, 25, 16, 300.00, 1),
	(44, 1, 25, 16, 300.00, 1),
	(45, 1, 25, 16, 300.00, 1),
	(46, 1, 27, 16, 300.00, 1),
	(47, 1, 28, 16, 300.00, 1),
	(48, 1, 28, 16, 300.00, 1),
	(49, 1, 30, 16, 300.00, 1),
	(50, 1, 31, 16, 300.00, 1);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.nota
CREATE TABLE IF NOT EXISTS `nota` (
  `cdnota` int NOT NULL AUTO_INCREMENT,
  `cdmatdisciplina` int DEFAULT NULL,
  `nota` decimal(7,2) DEFAULT NULL,
  `referencia` varchar(20) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`cdnota`),
  KEY `cdmatdisciplina` (`cdmatdisciplina`),
  CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`cdmatdisciplina`) REFERENCES `matdisciplina` (`cdmatdisciplina`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.nota: ~59 rows (aproximadamente)
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` (`cdnota`, `cdmatdisciplina`, `nota`, `referencia`, `status`) VALUES
	(1, 1, 8.00, 'Av I', 'AP'),
	(2, 1, 4.00, 'AV II', 'RP'),
	(3, 1, 3.00, 'AV III', 'RP'),
	(4, 2, 6.00, 'Av I', 'RP'),
	(5, 2, 4.00, 'AV II', 'RP'),
	(6, 3, 8.00, 'Av I', 'AP'),
	(7, 4, 8.00, 'AV I', 'AP'),
	(8, 5, 8.00, 'Av I', 'AP'),
	(9, 5, 4.00, 'AV II', 'RP'),
	(10, 5, 3.00, 'AV III', 'RP'),
	(11, 6, 5.00, 'Av I', 'RP'),
	(12, 6, 5.00, 'AV II', 'RP'),
	(13, 7, 7.00, 'Av I', 'AP'),
	(14, 7, 3.00, 'AV II', 'RP'),
	(15, 7, 6.00, 'Av III', 'RP'),
	(16, 7, 4.00, 'AV IV', 'RP'),
	(17, 8, 9.00, 'AV I', 'AP'),
	(18, 9, 10.00, 'AV I', 'AP'),
	(19, 9, 7.00, 'AV II', 'AP'),
	(20, 10, 6.00, 'AV I', 'RP'),
	(21, 11, 3.00, 'AV I', 'AP'),
	(22, 11, 7.00, 'AV II', 'AP'),
	(23, 12, 6.00, 'AV I', 'RP'),
	(24, 13, 5.00, 'AV I', 'RP'),
	(25, 13, 3.00, 'AV II', 'RP'),
	(26, 13, 4.00, 'AV III', 'RP'),
	(27, 2, 5.00, 'AV I', NULL),
	(28, 2, 3.00, 'AV IW', NULL),
	(29, 14, 5.00, 'AV IW', NULL),
	(30, 8, 8.00, 'mt', NULL),
	(31, 6, 8.00, 'AV IW', NULL),
	(32, 14, 8.00, 'AV I', NULL),
	(33, 14, 8.00, 'AV I', NULL),
	(34, 14, 8.00, 'AV I', NULL),
	(35, 14, 7.00, 'AV IW', NULL),
	(36, 14, 7.00, 'AV I', NULL),
	(37, 14, 7.00, 'AV I', NULL),
	(38, 14, 0.00, 'AV I', NULL),
	(39, 14, 7.00, 'AV IW', NULL),
	(40, 14, 7.00, 'AV IW', NULL),
	(41, 8, 3.00, 'AV IW', NULL),
	(42, 8, 5.00, 'mt', NULL),
	(43, 8, 10.00, 'AV IW', NULL),
	(44, 8, 5.00, 'AV I', NULL),
	(45, 8, 0.00, 'AV I', NULL),
	(46, 8, 10.00, 'AV I', NULL),
	(47, 6, 10.00, 'AV IW', NULL),
	(48, 8, 3.00, 'ee', NULL),
	(49, 8, 10.00, 'dcsvdfff', NULL),
	(50, 8, 10.00, 'dcsvdfff', NULL),
	(51, 8, 5.00, 'dcsvdfff', NULL),
	(52, 8, 10.00, 'AV IW', NULL),
	(53, 8, 2.00, 'ee', NULL),
	(54, 8, 3.00, 'AV IW', NULL),
	(55, 8, 0.00, 'ee', NULL),
	(56, 8, 3.00, 'dcsvdfff', NULL),
	(57, 8, 0.00, 'dcsvdfff', NULL),
	(58, 8, 0.00, 'dcsvdfff', NULL),
	(59, 8, 3.00, 'dcsvdfff', NULL),
	(60, 8, 5.00, 'dcsvdfff', NULL),
	(61, 18, 3.00, 'dcsvdfff', NULL);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.professor
CREATE TABLE IF NOT EXISTS `professor` (
  `cdprofessor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'professor@gbi.com',
  `senha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'professor123',
  `cpf` varchar(15) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `cidade` varchar(15) DEFAULT NULL,
  `estadocivil` varchar(15) DEFAULT NULL,
  `ativa` tinyint(1) DEFAULT NULL,
  `nivel` int NOT NULL DEFAULT '3',
  PRIMARY KEY (`cdprofessor`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.professor: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` (`cdprofessor`, `nome`, `email`, `senha`, `cpf`, `dataNascimento`, `estado`, `cidade`, `estadocivil`, `ativa`, `nivel`) VALUES
	(1, 'icaro dias dos santos', '1@gbi.com', 'professor123', '1', '2022-03-11', '332', 'er', 'Solteiro', 1, 3),
	(2, 'MARQUESA LIMA', 'professor@gbi.com', 'professor123', '2', NULL, NULL, NULL, NULL, 1, 3),
	(3, 'GEORGINA COTRIM', 'professor@gbi.com', 'professor123', '3', NULL, NULL, NULL, NULL, 1, 3),
	(4, 'PAULITA FERREIRA', 'professor@gbi.com', 'professor123', '4', NULL, NULL, NULL, NULL, 1, 3),
	(5, 'ICARO DIAS', 'professor@gbi.com', 'professor123', '5', NULL, NULL, NULL, NULL, 1, 3),
	(6, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', '799.164.420-02', '2022-01-06', '332', 'er', '332', 1, 3),
	(8, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', '755.164.420-02', '2022-02-16', '332', 'er', '332', 1, 3),
	(11, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', 'dd', '2022-02-26', '332', 'er', '332', 1, 3),
	(13, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', '123', '2022-02-18', '332', 'er', '332', 1, 3),
	(14, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', '1515545143', '2022-03-05', '332', 'er', '332', 1, 3),
	(15, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', '4364634', '2022-02-14', '332', 'er', '332', 1, 3),
	(18, 'icaro dias dos santos', 'professor@gbi.com', 'professor123', '755.16d-02', '2022-02-12', '332', 'er', 'Selecione', 1, 3);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.semestre
CREATE TABLE IF NOT EXISTS `semestre` (
  `cdsemestre` int NOT NULL AUTO_INCREMENT,
  `ano` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cdsemestre`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.semestre: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
INSERT INTO `semestre` (`cdsemestre`, `ano`) VALUES
	(1, '2017.1'),
	(2, '2017.2'),
	(3, '2018.1'),
	(4, '2018.2'),
	(5, '2017-1'),
	(6, '2017-1'),
	(7, '2017-1'),
	(8, '2017-1'),
	(9, '2017-1'),
	(10, '17'),
	(11, '17'),
	(12, '2017-1'),
	(13, '2017-1'),
	(14, '17'),
	(15, '2017-1'),
	(16, 'dcdsc'),
	(17, '2017-1'),
	(18, '1551'),
	(19, '34646'),
	(20, '17-1');
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;

-- Copiando estrutura para tabela sysschool.turma
CREATE TABLE IF NOT EXISTS `turma` (
  `cdturma` int NOT NULL AUTO_INCREMENT,
  `nometurma` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cdturma`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela sysschool.turma: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` (`cdturma`, `nometurma`) VALUES
	(1, 'PROGRAMADORES'),
	(2, 'ANALISTAS'),
	(3, '5647'),
	(4, 'Develops'),
	(5, 'Develops'),
	(8, 'Da bagun�a'),
	(9, 'Da bagun�a'),
	(10, 'Develops'),
	(11, 'Develops'),
	(12, '5647'),
	(13, 'Da bagun�a'),
	(14, 'Develops'),
	(15, 'Develops'),
	(16, 'Develops'),
	(17, 'Develops'),
	(18, 'Develops'),
	(20, 'Engenharia'),
	(26, 'Develops'),
	(27, 'Da bagun�a'),
	(29, '242'),
	(32, '6436'),
	(33, '5647'),
	(34, '2'),
	(35, 'Develops'),
	(38, 'Develops'),
	(41, 'eee'),
	(52, 'u'),
	(53, 'u'),
	(54, 'u'),
	(55, 'Develops');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;

-- Copiando estrutura para procedure sysschool.updateMedia
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateMedia`()
BEGIN
      DECLARE a INT DEFAULT(SELECT COUNT(cdmatdisciplina)+1 FROM matdisciplina);
      simple_loop: LOOP
         SET a=a-1;
			UPDATE matdisciplina SET media = (SELECT AVG(nota) FROM nota WHERE cdmatdisciplina = a)
			WHERE  cdmatdisciplina = a;
         IF a=1 THEN
            LEAVE simple_loop;
         END IF;
   END LOOP simple_loop;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
