-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Máj 21. 00:23
-- Kiszolgáló verziója: 10.4.18-MariaDB
-- PHP verzió: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `idealchat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `msg_from` int(255) NOT NULL,
  `msg_to` int(255) NOT NULL,
  `msg_information` varchar(1000) NOT NULL,
  `msg_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `message`
--

INSERT INTO `message` (`id`, `msg_from`, `msg_to`, `msg_information`, `msg_time`) VALUES
(107, 8679, 3089, 'Szia', '2022 03 05/06:39:49pm'),
(108, 3089, 8679, 'Csa', '2022 03 05/06:40:36pm'),
(109, 3089, 8679, 'Mizu?', '2022 03 05/06:40:51pm'),
(110, 8679, 3089, 'Semmi', '2022 03 05/06:41:01pm'),
(111, 3089, 8679, 'Szia', '2022 03 20/09:07:17pm'),
(112, 8679, 3089, 'Szia', '2022 03 20/09:07:22pm'),
(113, 3089, 804, 'Hello', '2022 03 23/09:50:41pm'),
(114, 804, 3089, 'Hy', '2022 03 23/09:50:57pm');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1, 'Coder', 'Admin', 'adminmail@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'default.png', 'New'),
(2, 3089, 'Szel', 'Akos', 'szelakosistvan@hotmail.com', '94a2258ea77fd772563a605cf4e8a2ae', 'moto.jpg', 'nem'),
(3, 804, 'Test', 'a', 'asd@mail.com', '7815696ecbf1c96e6894b779456d330e', 'default.png', 'Now'),
(4, 1796, 'Test', 'b', 'cd@gmail.com', '6865aeb3a9ed28f9a79ec454b259e5d0', 'default.png', 'New'),
(5, 7828, 'Test', 'c', 'qw@gmail.com', '006d2143154327a64d86a264aea225f3', 'default.png', 'New'),
(6, 6079, 'Test', 'd', 'kl@gmail.com', '16ec114932520d2b9c18a28121d515af', 'default.png', 'New'),
(7, 3686, 'Test', 'e', 'ddd@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'default.png', 'New'),
(8, 8679, 'Test', 'v', 'v@gmail.com', '9e3669d19b675bd57058fd4664205d2a', 'default.png', 'nem');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
