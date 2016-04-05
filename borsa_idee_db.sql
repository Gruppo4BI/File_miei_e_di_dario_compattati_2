-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Apr 05, 2016 alle 15:52
-- Versione del server: 10.1.9-MariaDB
-- Versione PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borsa_idee_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `azienda`
--

CREATE TABLE `azienda` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `nome_azienda` varchar(50) NOT NULL,
  `persona_di_riferimento` varchar(50) NOT NULL,
  `p_ivaOcf` varchar(25) NOT NULL,
  `indirizzo` varchar(30) NOT NULL,
  `citta` varchar(30) NOT NULL,
  `cap` int(11) NOT NULL,
  `sito_web` varchar(30) DEFAULT NULL,
  `stato_account` tinyint(1) DEFAULT NULL,
  `parlaci` longtext,
  `reputazione` int(11) DEFAULT NULL,
  `idTel` int(11) DEFAULT NULL,
  `idCat` int(11) DEFAULT NULL,
  `idProv` int(11) DEFAULT NULL,
  `ruolo` varchar(40) NOT NULL,
  `domanda` varchar(60) NOT NULL,
  `risposta` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `azienda`
--

INSERT INTO `azienda` (`id`, `email`, `psw`, `nome_azienda`, `persona_di_riferimento`, `p_ivaOcf`, `indirizzo`, `citta`, `cap`, `sito_web`, `stato_account`, `parlaci`, `reputazione`, `idTel`, `idCat`, `idProv`, `ruolo`, `domanda`, `risposta`) VALUES
(69, 'mario.ultra@live.it', '1234', 'Mario', 'Mario', 'bviygvkjhbjh', 'via mille', 'Napoli', 80145, NULL, 1, NULL, 50, 98, 6, 17, 'tecnico', '', ''),
(70, 'test@test.it', '1234', 'Mario', 'Mario', 'vrlmra96c15f875f', 'via mille', 'Napoli', 80456, '', 1, '', 50, 99, 2, 61, 'gestore', '', ''),
(71, 'testa@test.it', '1234', 'Mario', 'Mario', 'vrlmra96c13f834d', 'Via Torciolano', 'Napoli', 80125, NULL, 1, NULL, 50, 100, 3, 61, 'gestore', '', ''),
(72, 'tesst@test.it', '1234', 'Mario', 'Mario', 'vbgfrdfgj', 'via mille', 'Napoli', 85475, NULL, 1, NULL, 50, 101, 2, 18, 'inserviente', '', ''),
(73, 'AAtest@test.it', '1234', 'Bella', 'Mario', 'lkjhgfdsdfghj', 'via mille', 'Napoli', 80745, NULL, 1, NULL, 50, 102, 4, 61, 'tecnico', '', ''),
(78, 'aaa@a.it', '1234', 'Mario', 'M', 'gvkhgvj', 'via mille', 'Napoli', 80125, NULL, 1, NULL, 50, 108, 18, 18, 'capo', '', ''),
(79, 'mario.varlese@hotmail.it', '1234', 'Mario', 'M', 'vrlmra96c13f839j', 'Via Torciolano', 'Napoli', 80126, 'www.web.it', 1, NULL, 50, 109, 19, 7, 'tecnico', '', ''),
(80, 'test@test.com', '1234', 'Brazindesk', 'Mario', 'vrlmra96c13dre2', 'Via Torciolano', 'Napoli', 80124, 'www.web.it', 1, NULL, 50, 112, 17, 61, 'gestore', '', ''),
(81, 'test@test.dot', '1234', 'square enix', 'Mario', 'vrlmra96c14f835j', 'Via Torciolano', 'Napoli', 80123, NULL, 1, NULL, 50, 113, 14, 61, 'manager', '', ''),
(82, 'test@test.fof', '1234', 'Ubisoft', 'Kirijama', 'jksaad895623', 'via mille', 'Napoli', 80126, NULL, 0, NULL, 50, 114, 14, 59, 'analista', 'Luogo di nascita?', 'napoli');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria`
--

CREATE TABLE `categoria` (
  `idCat` int(11) NOT NULL,
  `categoria` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoria`
--

INSERT INTO `categoria` (`idCat`, `categoria`) VALUES
(1, 'Abbigliamento e Moda'),
(2, 'Auto, trasporti, imballaggi'),
(3, 'Alimentazione e ristoranti'),
(4, 'Arredamento e mobili'),
(5, 'Carta e stampa'),
(6, 'Chimica, materie plastiche '),
(7, 'Ecologia'),
(8, 'Edilizia e lavori pubblici'),
(9, 'Editoria, arte e cultura'),
(10, 'Elettronica'),
(11, 'Enti pubblici'),
(12, 'Finanza,assicurazioni,credito'),
(13, 'Forniture per aziende'),
(14, 'Informatica, telefonia'),
(15, 'Meccanica'),
(16, 'Medicina, estetica'),
(17, 'Gioielli,orologi,beni di lusso'),
(18, 'Professionisti - consulenti'),
(19, 'Sport e tempo libero'),
(20, 'Turismo e viaggi'),
(21, 'Pubblicita'' e servizi'),
(23, 'Professionisti - studi '),
(24, 'Informatica  e telecomunicazio');

-- --------------------------------------------------------

--
-- Struttura della tabella `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `provincia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `province`
--

INSERT INTO `province` (`id`, `provincia`) VALUES
(1, 'Agrigento'),
(2, '	\r\nAlessandria'),
(3, 'Ancona'),
(4, 'Aosta'),
(5, 'L''Aquila'),
(6, 'Arezzo'),
(7, 'Ascoli-Piceno'),
(8, 'Asti'),
(9, 'Avellino'),
(10, 'Bari'),
(11, 'Barletta-Andria-Tran'),
(12, '	\r\nBelluno'),
(13, 'Benevento'),
(14, 'Bergamo'),
(15, 'Biella'),
(16, 'Bologna'),
(17, 'Bolzano'),
(18, 'Brescia'),
(19, 'Brindisi'),
(20, 'Cagliari'),
(21, 'Caltanissetta'),
(22, 'Campobasso'),
(23, 'Carbonia Iglesias'),
(24, 'Caserta'),
(25, 'Catania'),
(26, 'Catanzaro'),
(27, 'Chieti'),
(28, 'Como'),
(29, 'Cosenza'),
(30, 'Cremona'),
(31, 'Crotone'),
(32, 'Cuneo'),
(33, 'Enna'),
(34, 'Fermo'),
(35, 'Ferrara'),
(36, 'Firenza'),
(37, 'Foggia'),
(38, '	\r\nForli-Cesena'),
(39, 'Frosinone'),
(40, 'Genova'),
(41, 'Gorizia'),
(42, '	\r\nGrosseto'),
(43, 'Imperia'),
(44, 'Isernia'),
(45, 'La-Spezia'),
(46, 'Latina'),
(47, 'Lecce'),
(48, 'Lecco'),
(49, 'Livorno'),
(50, 'Lodi'),
(51, 'Lucca'),
(52, 'Macerata'),
(53, 'Mantova'),
(54, 'Massa-Carrara'),
(55, 'Matera'),
(56, 'Messina'),
(57, 'Medio Campidano'),
(58, 'Milano'),
(59, 'Modena'),
(60, 'Monza-Brianza'),
(61, 'Napoli'),
(62, 'Novara'),
(63, 'Nuoro'),
(64, 'Ogliastra'),
(65, '	\r\nOlbia Tempio'),
(66, 'Oristano'),
(67, 'Padova'),
(68, 'Palermo'),
(69, 'Parma'),
(70, 'Pavia'),
(71, 'Perugia'),
(72, 'Pesaro-Urbino'),
(73, 'Pescara'),
(74, 'Piacenza'),
(75, 'Pisa'),
(76, 'Pistoia'),
(77, 'Pordenone'),
(78, 'Potenza'),
(79, 'Prato'),
(80, 'Ragusa'),
(81, 'Ravenna'),
(82, 'Reggio-Calabria'),
(83, 'Reggio-Emilia'),
(84, 'Rieti'),
(85, 'Rimini'),
(86, 'Roma'),
(87, 'Rovigo'),
(88, 'Salerno'),
(89, 'Sassari'),
(90, 'Savona'),
(91, 'Siena'),
(92, 'Siracusa'),
(93, 'Sondrio'),
(94, 'Taranto'),
(95, 'Teramo'),
(96, 'Terni'),
(97, 'Torino'),
(98, 'Trapani'),
(99, 'Trento'),
(100, 'Treviso'),
(101, 'Trieste'),
(102, 'Udine'),
(103, 'Varese'),
(104, 'Venezia'),
(105, 'Verbania'),
(106, 'Vacelli'),
(107, 'Verona'),
(108, 'Vibo-Valentia'),
(109, 'Vicenza'),
(110, 'Viterbo');

-- --------------------------------------------------------

--
-- Struttura della tabella `telefoni`
--

CREATE TABLE `telefoni` (
  `id` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `numero2` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `cellulare` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `telefoni`
--

INSERT INTO `telefoni` (`id`, `numero`, `numero2`, `fax`, `cellulare`) VALUES
(98, '05526515156', NULL, NULL, NULL),
(99, '0815883145', '', '', ''),
(100, '0213256', NULL, NULL, NULL),
(101, '021478569', NULL, NULL, NULL),
(102, '45632145558', NULL, NULL, NULL),
(108, '02154548', NULL, NULL, NULL),
(109, '0812416547', NULL, NULL, NULL),
(110, '0812478546', NULL, '22212145', '3472564820'),
(112, '087563214', NULL, NULL, NULL),
(113, '01254789', NULL, NULL, NULL),
(114, '45682648', '854255', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `stato_account` tinyint(1) DEFAULT NULL,
  `cf` char(16) NOT NULL,
  `Citta_nascita` varchar(30) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `idTel` int(11) DEFAULT NULL,
  `idProv` int(11) DEFAULT NULL,
  `reputazione` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `email`, `psw`, `nome`, `cognome`, `stato_account`, `cf`, `Citta_nascita`, `data_nascita`, `idTel`, `idProv`, `reputazione`) VALUES
(1, 'mario@mail.it', '1234', 'Mario', 'Varlese', 1, 'vrlmra96c15f839h', 'Napoli', '1996-03-15', 110, 1, 50);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `azienda`
--
ALTER TABLE `azienda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `p_ivaOcf` (`p_ivaOcf`),
  ADD UNIQUE KEY `idTel` (`idTel`),
  ADD KEY `idCat` (`idCat`),
  ADD KEY `azienda_ibfk_3` (`idProv`),
  ADD KEY `azienda_ibfk_4` (`domanda`);

--
-- Indici per le tabelle `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCat`);

--
-- Indici per le tabelle `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `telefoni`
--
ALTER TABLE `telefoni`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cf` (`cf`),
  ADD KEY `idTel` (`idTel`),
  ADD KEY `idProv` (`idProv`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `azienda`
--
ALTER TABLE `azienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT per la tabella `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT per la tabella `telefoni`
--
ALTER TABLE `telefoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `azienda`
--
ALTER TABLE `azienda`
  ADD CONSTRAINT `azienda_ibfk_1` FOREIGN KEY (`idTel`) REFERENCES `telefoni` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `azienda_ibfk_2` FOREIGN KEY (`idCat`) REFERENCES `categoria` (`idCat`) ON DELETE SET NULL,
  ADD CONSTRAINT `azienda_ibfk_3` FOREIGN KEY (`idProv`) REFERENCES `province` (`id`) ON DELETE SET NULL;

--
-- Limiti per la tabella `utenti`
--
ALTER TABLE `utenti`
  ADD CONSTRAINT `utenti_ibfk_1` FOREIGN KEY (`idTel`) REFERENCES `telefoni` (`id`) ON DELETE CASCADE ON UPDATE SET NULL,
  ADD CONSTRAINT `utenti_ibfk_2` FOREIGN KEY (`idProv`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
