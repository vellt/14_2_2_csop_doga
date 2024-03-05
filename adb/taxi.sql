-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 05. 09:38
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
CREATE DATABASE IF NOT EXISTS `taxi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `taxi`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fuvar`
--

CREATE TABLE `fuvar` (
  `id` int(11) NOT NULL,
  `indulas_idopontja` datetime NOT NULL,
  `utazas_idotartama` int(11) NOT NULL,
  `megtett_tavolsag` double NOT NULL,
  `viteldij` double NOT NULL,
  `borravalo` double NOT NULL,
  `fizetes_modja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `fuvar`
--

INSERT INTO `fuvar` (`id`, `indulas_idopontja`, `utazas_idotartama`, `megtett_tavolsag`, `viteldij`, `borravalo`, `fizetes_modja`) VALUES
(1, '2022-01-01 08:00:00', 600, 2.3, 10.5, 2, 'készpénz'),
(2, '2022-01-02 10:15:00', 900, 3.1, 15.75, 3.5, 'bankkártya'),
(3, '2022-01-03 12:30:00', 1200, 4.5, 20.25, 4.75, 'készpénz'),
(4, '2022-01-04 14:45:00', 800, 2.7, 12.75, 2.25, 'bankkártya'),
(5, '2022-01-05 17:00:00', 1000, 3.8, 17.5, 3.75, 'készpénz'),
(6, '2022-01-06 19:15:00', 1100, 4, 18.25, 4, 'bankkártya'),
(7, '2022-01-07 21:30:00', 950, 3.3, 14.5, 3.25, 'készpénz'),
(8, '2022-01-08 23:45:00', 700, 2.1, 9.75, 1.5, 'bankkártya'),
(9, '2022-01-09 02:00:00', 850, 3.5, 16, 3, 'készpénz'),
(10, '2022-01-10 04:15:00', 600, 2, 8.5, 1.75, 'bankkártya');

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
