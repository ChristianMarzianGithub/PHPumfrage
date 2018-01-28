-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Jan 2018 um 21:36
-- Server-Version: 10.1.29-MariaDB
-- PHP-Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `umfrage`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `benutzer`
--

CREATE TABLE `benutzer` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `benutzer`
--

INSERT INTO `benutzer` (`ID`, `Bezeichnung`) VALUES
(1, 'Standard'),
(2, 'usrTest');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beurteilung`
--

CREATE TABLE `beurteilung` (
  `BenutzerID` int(11) NOT NULL,
  `LehrerID` int(11) NOT NULL,
  `MerkmalID` int(11) NOT NULL,
  `NotenID` int(11) NOT NULL,
  `LerngruppeID` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `beurteilung`
--

INSERT INTO `beurteilung` (`BenutzerID`, `LehrerID`, `MerkmalID`, `NotenID`, `LerngruppeID`, `ID`) VALUES
(1, 1, 1, 4, 2, 1),
(1, 1, 2, 5, 2, 2),
(1, 1, 3, 6, 2, 3),
(1, 1, 4, 4, 2, 4),
(1, 1, 5, 3, 2, 5),
(1, 1, 6, 2, 2, 6),
(1, 2, 1, 2, 2, 7),
(1, 2, 2, 1, 2, 8),
(1, 2, 3, 3, 2, 9),
(1, 2, 4, 2, 2, 10),
(1, 2, 5, 1, 2, 11),
(1, 2, 6, 5, 2, 12),
(2, 1, 1, 1, 2, 13),
(2, 1, 2, 2, 2, 14),
(2, 1, 4, 4, 2, 15),
(2, 1, 5, 1, 2, 16),
(2, 1, 6, 6, 2, 17),
(2, 2, 1, 2, 2, 18),
(2, 2, 2, 4, 2, 19),
(2, 2, 3, 3, 2, 20),
(2, 2, 4, 1, 2, 21),
(2, 2, 5, 5, 2, 22),
(2, 2, 6, 3, 2, 23),
(2, 2, 1, 2, 2, 24),
(2, 2, 2, 4, 2, 25),
(2, 2, 3, 3, 2, 26),
(2, 2, 4, 1, 2, 27),
(2, 2, 5, 5, 2, 28),
(2, 2, 6, 3, 2, 29),
(1, 1, 1, 1, 1, 30),
(1, 1, 2, 2, 1, 31),
(1, 1, 3, 3, 1, 32),
(1, 1, 4, 2, 1, 33),
(1, 1, 5, 1, 1, 34),
(1, 1, 6, 2, 1, 35),
(1, 2, 1, 1, 1, 36),
(1, 2, 2, 2, 1, 37),
(1, 2, 3, 6, 1, 38),
(1, 2, 4, 4, 1, 39),
(1, 2, 5, 1, 1, 40),
(1, 2, 6, 3, 1, 41);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lehrer`
--

CREATE TABLE `lehrer` (
  `ID` int(11) NOT NULL,
  `Kuerzel` text NOT NULL,
  `Vorname` text NOT NULL,
  `Nachname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lehrer`
--

INSERT INTO `lehrer` (`ID`, `Kuerzel`, `Vorname`, `Nachname`) VALUES
(1, 'RZ', 'Reiner', 'Cichoski'),
(2, 'BS', 'Maria', 'Busch'),
(3, '', '', ''),
(87, '', '', ''),
(99, '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lerngruppe`
--

CREATE TABLE `lerngruppe` (
  `Id` int(11) NOT NULL,
  `Bezeichnung` text NOT NULL,
  `Kennwort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lerngruppe`
--

INSERT INTO `lerngruppe` (`Id`, `Bezeichnung`, `Kennwort`) VALUES
(1, 'ae', 'ae'),
(2, 'Blockwoche2', 'Blockwoche2');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `moeglichemerkmale`
--

CREATE TABLE `moeglichemerkmale` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `moeglichemerkmale`
--

INSERT INTO `moeglichemerkmale` (`ID`, `Bezeichnung`) VALUES
(1, 'Kompetenz'),
(2, 'Stoffdarstellung'),
(3, 'Lernklima'),
(4, 'Notengebung'),
(5, 'Schuelerfragen'),
(6, 'Souveraenitaet');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `moeglichenoten`
--

CREATE TABLE `moeglichenoten` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` text NOT NULL,
  `Wert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `moeglichenoten`
--

INSERT INTO `moeglichenoten` (`ID`, `Bezeichnung`, `Wert`) VALUES
(1, 'Sehr gut', 1),
(2, 'Gut', 2),
(3, 'Befriedigend', 3),
(4, 'Ausreichend', 4),
(5, 'Mangelhaft', 5),
(6, 'Ungenuegend', 6);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `beurteilung`
--
ALTER TABLE `beurteilung`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `lehrer`
--
ALTER TABLE `lehrer`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `lerngruppe`
--
ALTER TABLE `lerngruppe`
  ADD PRIMARY KEY (`Id`);

--
-- Indizes für die Tabelle `moeglichemerkmale`
--
ALTER TABLE `moeglichemerkmale`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `moeglichenoten`
--
ALTER TABLE `moeglichenoten`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `beurteilung`
--
ALTER TABLE `beurteilung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT für Tabelle `lehrer`
--
ALTER TABLE `lehrer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT für Tabelle `moeglichemerkmale`
--
ALTER TABLE `moeglichemerkmale`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `moeglichenoten`
--
ALTER TABLE `moeglichenoten`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
