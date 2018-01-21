-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Jan 2018 um 15:55
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
(1, 'CZ', 'Reiner', 'Cichoski'),
(2, 'BS', 'Maria', 'Busch');

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
-- Indizes für die Tabelle `lehrer`
--
ALTER TABLE `lehrer`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT für Tabelle `lehrer`
--
ALTER TABLE `lehrer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
