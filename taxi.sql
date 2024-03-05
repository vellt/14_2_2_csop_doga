-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 05. 09:22
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `taxi`
--
CREATE DATABASE IF NOT EXISTS `taxi` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `taxi`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fuvar`
--

CREATE TABLE `fuvar` (
  `id` int(11) NOT NULL,
  `indulas_idopontja` int(11) NOT NULL,
  `utazas_idotartma` int(11) NOT NULL,
  `megtett_tavolsag` int(11) NOT NULL,
  `viteldij` int(11) NOT NULL,
  `borravalo` int(11) NOT NULL,
  `fizetes_modja` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `fuvar`
--

INSERT INTO `fuvar` (`id`, `indulas_idopontja`, `utazas_idotartma`, `megtett_tavolsag`, `viteldij`, `borravalo`, `fizetes_modja`) VALUES
(1, 2022, 600, 2, 11, 2, 'készpénz'),
(2, 2022, 900, 3, 16, 4, 'bankkártya'),
(3, 2022, 1200, 5, 20, 5, 'készpénz'),
(4, 2022, 800, 3, 13, 2, 'bankkártya'),
(5, 2022, 1000, 4, 18, 4, 'készpénz'),
(6, 2022, 1100, 4, 18, 4, 'bankkártya'),
(7, 2022, 950, 3, 15, 3, 'készpénz'),
(8, 2022, 700, 2, 10, 2, 'bankkártya'),
(9, 2022, 850, 4, 16, 3, 'készpénz'),
(10, 2022, 600, 2, 9, 2, 'bankkártya');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `fuvar`
--
ALTER TABLE `fuvar`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `fuvar`
--
ALTER TABLE `fuvar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
