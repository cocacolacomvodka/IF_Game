
--
-- Table structure for table `Aluno`
--

DROP TABLE IF EXISTS `Aluno`;

CREATE TABLE `Aluno` (
  `ID_Aluno` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Idade` decimal(3,0) NOT NULL,
  `Escolaridade` varchar(45) NOT NULL,
  `Escola` varchar(45) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Estado` varchar(2) NOT NULL,
  `Senha` varchar(6) NOT NULL,
  PRIMARY KEY (`ID_Aluno`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Aluno`
--

LOCK TABLES `Aluno` WRITE;
INSERT INTO `Aluno` VALUES (1,'marlon','marlonminussi@gmail.com',46,'OT','EE','Santa Cruz do sul','RS','1234'),
(2,'JOSE','m@m',23,'Mestre','EE','SCS','RS','123'),
(3,'Xovem','x@x',17,'MT','EESFA','SFA','RS','1234'),
(4,'Willian','w@w',18,'MT','IFSUL','VA','RS','123'),
(5,'joao','joao@joao',12,'EF','ee','VA','RS','1234'),
(6,'a','a@a',19,'EF','IFSUL','Santa Cruz do sul','AC','1234');
UNLOCK TABLES;

SELECT * FROM Aluno;
--
-- Table structure for table `Disciplina`
--

DROP TABLE IF EXISTS `Disciplina`;

CREATE TABLE `Disciplina` (
  `ID_Disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Disciplina`
--

LOCK TABLES `Disciplina` WRITE;
INSERT INTO `Disciplina` VALUES (1,'Biologia');
UNLOCK TABLES;

--
-- Table structure for table `Disciplina_Pergunta`
--

--
-- Table structure for table `Pergunta`
--

DROP TABLE IF EXISTS `Pergunta`;

CREATE TABLE `Pergunta` (
  `ID_Pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `Questao` varchar(250) NOT NULL,
  `Peso` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_Pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pergunta`
--

LOCK TABLES `Pergunta` WRITE;
INSERT INTO `Pergunta` VALUES (1,'O átomo carregado positivamente chama-se:','1'),
(2,'É a menor partícula capaz de identificar um elemento químico e participar de uma reação química:','1'),
(3,'As partículas localizadas na eletrosfera são:','1'),(4,'Reunião de átomos, formando uma substância química:','1'),
(5,'O modelo científico proposto por Dalton, em 1808, poderia ser comparado com:','1'),
(6,'Modelo atômico relacionado com um \"pudim de ameixas\" tem a ver com:','1'),(7,'Eletrosfera é a região do átomo que:','1'),
(8,'Periodicidade da energia de ionização pode ser explicada pelo modelo atômico de:','1'),
(9,'Íons são formados, a partir de átomos neutros, por:','1'),(10,'O ânion tem carga elétrica:','1'),
(11,'Na Tabela Periódica, os _________ são as linhas horizontais, \ne as _________ ou grupos são as colunas (linhas verticais):','1'),
(12,'Qual dos elementos é metal alcalino-terroso','1'),
(13,'São considerados gases nobres:','1'),
(14,'O elemento que não se enquadra em nenhum critério de classificação é o:','1'),
(15,'O único metal que em temperatura ambiente é líquido:','1'),(16,'Dos elementos abaixo o único que é metal?','1'),
(17,'Os únicos elementos estáveis da tabela periódica são:','1'),
(18,'Grupo de substâncias com propriedades químicas semelhantes:','1'),
(19,'Sabor azedo e conduzir bem a eletricidade são duas propriedades da função:','1'),
(20,'Ligação de átomos feita por compartilhamento de elétrons:','1'),
(21,'Os ácidos que possuem oxigênio em sua molécula são chamados:','1'),
(22,'O sabor das bases, que lembra frutas verdes, chama-se:','1'),
(23,'Marque o item que corresponde ao significado correto da sigla pH:','1'),
(24,'Na natureza nada se perde, nada se cria. Tudo se transforma\" relaciona-se com as ideias de:','1'),
(25,'Sublimado corrosivo (HgCl2), cal viva (CaO), potassa cáustica (KOH) e \nespírito de sal (HCl) pertencem, respectivamente, às funções:','1');
UNLOCK TABLES;


DROP TABLE IF EXISTS `Disciplina_Pergunta`;

CREATE TABLE `Disciplina_Pergunta` (
  `Peso` varchar(2) DEFAULT NULL,
  `Disciplina_ID_Disciplina` int(11) NOT NULL,
  `Pergunta_ID_Pergunta` int(11) NOT NULL,
  KEY `fk_Disciplina_Pergunta_Pergunta_idx` (`Pergunta_ID_Pergunta`),
  KEY `fk_Disciplina_Pergunta_Disciplina_idx` (`Disciplina_ID_Disciplina`),
  CONSTRAINT `fk_Disciplina_Pergunta_Disciplina1` FOREIGN KEY (`Disciplina_ID_Disciplina`) REFERENCES `Disciplina` (`ID_Disciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disciplina_Pergunta_Pergunta1` FOREIGN KEY (`Pergunta_ID_Pergunta`) REFERENCES `Pergunta` (`ID_Pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `Disciplina_Pergunta`
--

LOCK TABLES `Disciplina_Pergunta` WRITE;
INSERT INTO `Disciplina_Pergunta` VALUES ('1',1,1),('1',1,2),('1',1,3),('1',1,4),('1',1,5),
('1',1,6),('1',1,7),('1',1,8),('1',1,9),('1',1,10),('1',1,11),('1',1,12),('1',1,13),('1',1,14),
('1',1,15),('1',1,16),('1',1,17),('1',1,18),('1',1,19),('1',1,20),('1',1,21),('1',1,22),('1',1,23),
('1',1,24),('1',1,25);
UNLOCK TABLES;

--
-- Table structure for table `Resposta`
--

DROP TABLE IF EXISTS `Resposta`;

CREATE TABLE `Resposta` (
  `ID_Resposta` int(11) NOT NULL AUTO_INCREMENT,
  `Resposta` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Resposta`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Resposta`
--

LOCK TABLES `Resposta` WRITE;
INSERT INTO `Resposta` VALUES (1,'Elétron'),(2,'Ânion'),(3,'Cátion'),(4,'Íon'),(5,'Próton'),(6,'Nêutron'),
(7,'Átomo'),(8,'Núcleo'),(9,'Molécula'),(10,'Eletrosfera'),(11,'Uma bola de tênis'),(12,'Uma bola de bilhar'),
(13,'Uma bola de pingue-pongue'),(14,'Uma bola de futebol'),(15,'Dalton'),(16,'Thomson'),(17,'Franklin'),
(18,'Rutherford'),(19,'contém as partículas de carga elétrica negativa.'),
(20,'contém as partículas de carga elétrica positiva.'),(21,'contém nêutrons.'),(22,'contém prótons e nêutrons.'),
(23,'Bohr'),(24,'perda de nêutrons'),(25,'ganho de nêutrons'),(26,'ganho ou perda de prótons'),
(27,'ganho ou perda de elétrons'),(28,'negativa'),(29,'neutra'),(30,'positiva'),(31,'igual ao núcleo e na eletrosfera'),
(32,'Períodos, Colunas'),(33,'Grupos, Famílias'),(34,'Períodos, Famílias'),(35,'Períodos, Grupos'),(36,'Ca'),
(37,'P'),(38,'N'),(39,'Cs'),(40,'Hélio, Neônio, Xenônio, Germânio e Radônio.'),
(41,'Radônio, Criptônio, Argônio, Neônio e Xenônio.'),(42,'Argônio, Hélio, Neônio, Escândio e Radônio.'),
(43,'Hélio, Xenônio, Radônio, Estrôncio e Neônio.'),(44,'Hidrogênio'),(45,'Nitrogênio'),(46,'Oxigênio'),(47,'Hélio'),
(48,'Prata'),(49,'Iodo'),(50,'Bromo'),(51,'Mercúrio'),(52,'Sódio'),(53,'Cloro'),(54,'Os metais alcalinos'),
(55,'Os halogênios'),(56,'Os calcogênios'),(57,'Os gases nobres'),(58,'Elemento químico'),(59,'Estrutura química'),
(60,'Funções químicas'),(61,'Transformações químicas'),(62,'base'),(63,'ácido'),(64,'sal'),(65,'hidróxido'),
(66,'covalente'),(67,'iônica '),(68,'eletrovalente'),(69,'eletrônica '),(70,'Hidróxidos'),(71,'Acióxidos'),
(72,'Oxiácidos'),(73,'Hidrácidos'),(74,'Salgado'),(75,'Azedo'),(76,'Amargo'),(77,'Adstringente'),
(78,'potencial de hidrogenação'),(79,'potencial hidrogeniônico'),(80,'potencial de hélio'),(81,'potencial de acidez'),
(82,'Proust'),(83,'Boyle'),(84,'Lavoisier'),(85,'ácido, base, óxido, ácido'),(86,'sal, sal, base, ácido'),
(87,'ácido, base, base, sal'),(88,'sal, óxido, base, ácido');
UNLOCK TABLES;
--
-- Table structure for table `Pergunta_Resposta`
--

DROP TABLE IF EXISTS `Pergunta_Resposta`;

CREATE TABLE `Pergunta_Resposta` (
  `Certo_Errado` char(1) NOT NULL,
  `Pergunta_ID_Pergunta` int(11) NOT NULL,
  `Resposta_ID_Resposta` int(11) NOT NULL,
  KEY `fk_Pergunta_Resposta_Resposta_idx` (`Resposta_ID_Resposta`),
  KEY `fk_Pergunta_Resposta_Pergunta_idx` (`Pergunta_ID_Pergunta`),
  CONSTRAINT `fk_Pergunta_Resposta_Pergunta` FOREIGN KEY (`Pergunta_ID_Pergunta`) REFERENCES `Pergunta` (`ID_Pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pergunta_Resposta_Resposta` FOREIGN KEY (`Resposta_ID_Resposta`) REFERENCES `Resposta` (`ID_Resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pergunta_Resposta`
--

LOCK TABLES `Pergunta_Resposta` WRITE;
INSERT INTO `Pergunta_Resposta` VALUES ('E',1,1),('E',1,2),('C',1,3),('E',1,4),('E',2,1),('E',2,5),('E',2,6),
('C',2,7),('C',3,1),('E',3,2),('E',3,3),('E',3,4),('E',4,8),('E',4,4),('C',4,9),('E',4,10),('E',5,11),('C',5,12),
('E',5,13),('E',5,14),('E',6,15),('C',6,16),('E',6,17),('E',6,18),('C',7,19),('E',7,20),('E',7,21),('E',7,22),
('C',8,23),('E',8,15),('E',8,16),('E',8,18),('C',9,24),('E',9,25),('E',9,26),('E',9,27),('E',10,28),('E',10,29),
('E',10,30),('C',10,31),('E',11,32),('E',11,33),('C',11,34),('E',11,35),('C',12,36),('E',12,37),('E',12,38),('E',12,39),
('E',13,40),('C',13,41),('E',13,42),('E',13,43),('E',14,44),('C',14,45),('E',14,46),('E',14,47),('E',15,48),('E',15,49),
('E',15,50),('C',15,51),('E',16,47),('C',16,52),('E',16,53),('E',16,50),('E',17,54),('E',17,55),('E',17,56),('C',17,57),
('E',18,58),('E',18,59),('C',18,60),('E',18,61),('E',19,62),('C',19,63),('E',19,64),('E',19,65),('C',20,66),('E',20,67),
('E',20,68),('E',20,69),('E',21,70),('E',21,71),('C',21,72),('E',21,73),('E',22,74),('E',22,75),('E',22,76),('C',22,77),
('E',23,78),('C',23,79),('E',23,80),('E',23,81),('E',24,15),('E',24,82),('E',24,83),('C',24,84),('E',25,85),('E',25,86),
('E',25,87),('C',25,88);
UNLOCK TABLES;

--
-- Table structure for table `Score`
--

DROP TABLE IF EXISTS `Score`;

CREATE TABLE `Score` (
  `ID_Score` int(11) NOT NULL AUTO_INCREMENT,
  `Data_Hora` datetime NOT NULL,
  `Score` decimal(3,0) NOT NULL,
  `Aluno_ID_Aluno` int(11) NOT NULL,
  PRIMARY KEY (`ID_Score`),
  KEY `fk_Score_Aluno_idx` (`Aluno_ID_Aluno`),
  CONSTRAINT `fk_Score_Aluno` FOREIGN KEY (`Aluno_ID_Aluno`) REFERENCES `Aluno` (`ID_Aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `Score`
--

LOCK TABLES `Score` WRITE;
INSERT INTO `Score` VALUES (1,'2021-04-16 00:00:00',11,1),(2,'2021-05-31 14:19:56',1,1),
(3,'2021-05-31 14:20:08',0,1),(4,'2021-05-31 14:22:24',1,1),(5,'2021-05-31 14:25:04',1,1),
(6,'2021-05-31 14:26:06',1,1),(7,'2021-05-31 14:28:59',1,1),(8,'2021-05-31 14:54:20',0,2),
(9,'2021-05-31 14:55:06',0,2),(10,'2021-05-31 14:56:01',4,2),(11,'2021-05-31 15:30:17',0,2),
(12,'2021-05-31 16:30:41',1,1),(13,'2021-05-31 16:31:25',2,1),(14,'2021-05-31 16:31:57',0,1),
(15,'2021-05-31 16:32:27',1,1),(16,'2021-07-06 16:18:14',0,2),(17,'2021-07-07 10:19:37',7,1),
(18,'2021-07-07 10:20:00',1,1),(19,'2021-07-07 10:25:38',3,1),(20,'2021-07-07 10:26:15',1,1),
(21,'2021-07-07 10:26:38',2,1),(22,'2021-07-07 10:27:01',1,1),(23,'2021-07-07 10:27:28',2,1),
(24,'2021-07-07 10:27:41',0,1),(25,'2021-07-07 10:28:14',2,1),(26,'2021-07-07 10:28:42',2,1),
(27,'2021-07-07 10:29:01',1,1),(28,'2021-07-07 10:29:25',1,1),(29,'2021-07-07 10:29:34',0,1),
(30,'2021-07-07 10:30:11',2,1),(31,'2021-07-07 10:30:26',1,1),(32,'2021-07-07 10:37:56',0,1),
(33,'2021-07-30 11:06:05',0,1),(34,'2021-07-30 15:43:43',1,1),(35,'2021-08-03 11:15:33',4,2),
(36,'2021-08-03 11:38:55',3,5),(37,'2021-08-03 11:43:43',1,5),(38,'2021-08-03 11:46:32',0,2),
(39,'2021-08-03 11:50:16',0,2),(40,'2021-08-03 11:55:20',2,2),(41,'2021-08-03 11:55:26',0,2),
(42,'2021-08-03 11:57:31',0,2),(43,'2021-08-03 14:37:04',2,5),(44,'2021-08-03 14:37:35',3,5),
(45,'2021-08-03 14:38:20',1,5),(46,'2021-08-03 14:39:26',7,5),(47,'2021-08-06 08:14:55',2,3),
(48,'2021-08-06 08:15:47',2,3),(49,'2021-08-06 08:16:33',2,3),(50,'2021-08-06 08:17:22',4,3),
(51,'2021-08-06 08:37:50',4,6),(52,'2021-08-06 08:46:54',1,6),(53,'2021-08-06 08:47:21',2,6),
(54,'2021-08-06 08:47:45',2,6),(55,'2021-08-06 08:48:59',2,6),(56,'2021-08-06 08:49:28',2,6),
(57,'2021-08-06 08:50:03',4,6);
UNLOCK TABLES;

DROP TABLE IF EXISTS `Recuperacao`;

CREATE TABLE `Recuperacao` (
`utilizador` VARCHAR(255) NOT NULL,
`confirmacao` VARCHAR(40) NOT NULL,
KEY(utilizador, confirmacao)
);

SELECT * FROM Recuperacao;