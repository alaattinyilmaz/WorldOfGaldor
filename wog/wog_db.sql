-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 May 2017, 02:09:09
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `wog_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `boss`
--

CREATE TABLE `boss` (
  `bID` int(11) NOT NULL,
  `bName` varchar(200) NOT NULL,
  `drops` varchar(20) NOT NULL,
  `is_located_at` varchar(20) NOT NULL,
  `rareness` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `boss`
--

INSERT INTO `boss` (`bID`, `bName`, `drops`, `is_located_at`, `rareness`) VALUES
(1, 'Arthas', '3', '2', 'uncommon'),
(2, 'Agent Smith', '1', '3', 'common'),
(3, 'Sauron', '4', '1', 'uncommon'),
(4, 'Darth Sidius', '2', '4', 'rare'),
(5, 'T-Rex', '5', '5', 'common');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `house`
--

CREATE TABLE `house` (
  `hID` int(11) NOT NULL,
  `hName` varchar(200) NOT NULL,
  `lID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `house`
--

INSERT INTO `house` (`hID`, `hName`, `lID`) VALUES
(1, 'Yilmazlar', '3'),
(2, 'Guldallar', '4'),
(3, 'Saraclar', '2'),
(4, 'Barislar', '1'),
(5, 'Bozlar', '5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `in_war_with`
--

CREATE TABLE `in_war_with` (
  `wID` int(11) NOT NULL,
  `declarer` varchar(20) NOT NULL,
  `defensor` varchar(20) NOT NULL,
  `since` varchar(200) NOT NULL,
  `until` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `in_war_with`
--

INSERT INTO `in_war_with` (`wID`, `declarer`, `defensor`, `since`, `until`, `reward`) VALUES
(1, '1', '2', '11-09-2001', '03-02-2002', '800000'),
(2, '2', '1', '03-11-2003', '23-12-2006', '123456'),
(3, '3', '1', '01-01-2004', '18-09-2007', '178965'),
(4, '3', '2', '23-04-2005', '23-09-2008', '145300'),
(5, '3', '1', '19-10-2008', '12-09-2010', '15000'),
(6, '2', '1', '23-02-2010', '21-01-2012', '550000'),
(7, '4', '2', '13-07-2011', '11-08-2013', '100000'),
(8, '5', '1', '07-06-2013', '30-08-2015', '20000'),
(9, '1', '5', '09-09-2016', 'still', '100000'),
(10, '2', '4', '19-03-2017', 'still', '875000'),
(22, '8', '3', '21-05-2017', 'still', '111111');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item`
--

CREATE TABLE `item` (
  `iID` int(11) NOT NULL,
  `iName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `item`
--

INSERT INTO `item` (`iID`, `iName`) VALUES
(0, 'No Item'),
(1, 'Sickle'),
(2, 'Zulfikar'),
(3, 'Excalibur'),
(4, 'Lightsaber'),
(5, 'Dinosaur Armor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `land`
--

CREATE TABLE `land` (
  `lID` int(11) NOT NULL,
  `lName` varchar(200) NOT NULL,
  `notableResources` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `land`
--

INSERT INTO `land` (`lID`, `lName`, `notableResources`) VALUES
(1, 'Up Ayranci', 'iron'),
(2, 'Down Ayranci', 'gold'),
(3, 'Tuzla', 'carbon'),
(4, 'Mordor', 'iron'),
(5, 'Gumussuyu', 'silver');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `person`
--

CREATE TABLE `person` (
  `pID` int(11) NOT NULL,
  `pName` varchar(200) NOT NULL,
  `is_member_of` varchar(20) NOT NULL,
  `iID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `person`
--

INSERT INTO `person` (`pID`, `pName`, `is_member_of`, `iID`) VALUES
(1, 'Aladin Cakiseller', '1', '2'),
(2, 'John HTML', '3', '4'),
(3, 'Hasan Alp Boz', '5', '3'),
(4, 'Dragon Slayer Orhun', '4', '5'),
(5, 'Emptymaker Eguldal', '2', '1'),
(6, 'Nachy Aegean Sarachov', '3', '1'),
(7, 'Sir Hassasin Bozal', '5', '4'),
(8, 'Homer Barack Alamountain', '3', '2'),
(9, 'Fount Front', '2', '4'),
(10, 'Aegean Rosestick', '2', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soldier`
--

CREATE TABLE `soldier` (
  `pID` varchar(20) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `fights` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `soldier`
--

INSERT INTO `soldier` (`pID`, `rank`, `fights`) VALUES
('1', 'high', '1'),
('3', 'low', '2'),
('5', 'middle', '3'),
('7', 'low', '3'),
('9', 'high', '5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `trades_with`
--

CREATE TABLE `trades_with` (
  `tID` int(11) NOT NULL,
  `iID` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `to` varchar(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `trades_with`
--

INSERT INTO `trades_with` (`tID`, `iID`, `from`, `to`, `date`, `price`) VALUES
(1, '2', '1', '2', '10-12-2010', '120'),
(2, '1', '2', '3', '11-12-2011', '150'),
(3, '3', '4', '8', '21-03-2012', '25'),
(4, '3', '2', '1', '12-06-2012', '40'),
(5, '1', '1', '9', '13-07-2013', '50'),
(6, '1', '9', '2', '14-09-2013', '60'),
(7, '3', '1', '3', '16-08-2014', '220'),
(8, '4', '2', '7', '18-06-2015', '230'),
(9, '5', '5', '9', '19-11-2016', '150'),
(10, '2', '9', '10', '19-03-2017', '230');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `worker`
--

CREATE TABLE `worker` (
  `pID` varchar(20) NOT NULL,
  `speciality` varchar(200) NOT NULL,
  `farms` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `worker`
--

INSERT INTO `worker` (`pID`, `speciality`, `farms`) VALUES
('10', 'farmer', '4'),
('2', 'farmer', '1'),
('4', 'miner', '2'),
('6', 'farmer', '3'),
('8', 'collector', '5');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `boss`
--
ALTER TABLE `boss`
  ADD PRIMARY KEY (`bID`);

--
-- Tablo için indeksler `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`hID`);

--
-- Tablo için indeksler `in_war_with`
--
ALTER TABLE `in_war_with`
  ADD PRIMARY KEY (`wID`);

--
-- Tablo için indeksler `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iID`);

--
-- Tablo için indeksler `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`lID`);

--
-- Tablo için indeksler `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`pID`);

--
-- Tablo için indeksler `soldier`
--
ALTER TABLE `soldier`
  ADD PRIMARY KEY (`pID`);

--
-- Tablo için indeksler `trades_with`
--
ALTER TABLE `trades_with`
  ADD PRIMARY KEY (`tID`);

--
-- Tablo için indeksler `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`pID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `house`
--
ALTER TABLE `house`
  MODIFY `hID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `in_war_with`
--
ALTER TABLE `in_war_with`
  MODIFY `wID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Tablo için AUTO_INCREMENT değeri `land`
--
ALTER TABLE `land`
  MODIFY `lID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `person`
--
ALTER TABLE `person`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
