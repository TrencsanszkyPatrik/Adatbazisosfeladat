-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 22. 12:17
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
-- Adatbázis: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `releaseDate`) VALUES
(2, 'Exit Smiling', 'Rodolphe Sine', '2024-12-19'),
(3, 'Lost Honor of Katharina Blum, The (Verlorene Ehre der Katharina Blum oder: Wie Gewalt entstehen und wohin sie führen kann, Die)', 'Yolane Muldowney', '2024-12-18'),
(4, 'Pippi on the Run (På rymmen med Pippi Långstrump)', 'Murdoch Pendrick', '2024-09-28'),
(5, 'So It Goes (Korsoteoria)', 'Rab Braybrooke', '2025-04-27'),
(6, 'Trans-Atlantic Tunnel (Tunnel, The)', 'Wenonah Lomis', '2025-02-28'),
(7, 'Seven Swords (Chat gim)', 'Mersey Proudley', '2025-07-27'),
(8, 'Zone Troopers', 'Nicoline Pavlishchev', '2025-01-10'),
(9, 'Mighty Ducks, The', 'Margaretha Baroch', '2025-07-16'),
(10, 'Summer of \'42', 'Sari Rundle', '2025-07-02'),
(11, 'Lilian\'s Story', 'Dorthea McFadyen', '2025-01-24'),
(12, 'Il fiore dai petali d\'acciaio', 'Byrle Napier', '2025-02-10'),
(13, 'Millions Game, The (Das Millionenspiel)', 'Blinnie Theunissen', '2025-04-10'),
(14, 'Pauline at the Beach (Pauline à la Plage)', 'Van Commucci', '2025-03-19'),
(15, 'Rambo: First Blood Part II', 'Arman Dossantos', '2025-08-24'),
(16, 'Hellraiser: Bloodline', 'Jess Dibbin', '2025-05-06'),
(17, 'Sign of Four, The', 'Otes Giamelli', '2024-11-18'),
(18, 'Station West', 'Rorke Jellings', '2025-04-14'),
(19, 'Sex & the Other Man', 'Dasi Start', '2025-01-25'),
(20, 'War Room, The', 'Jodie Newns', '2024-11-29'),
(21, 'Loaded Weapon 1 (National Lampoon\'s Loaded Weapon 1)', 'Alasteir Grinikhin', '2025-09-14'),
(22, 'Emmanuelle 2', 'Jenine Kirsz', '2025-06-21'),
(23, 'Tristram Shandy: A Cock and Bull Story', 'Agnella Choppin', '2025-09-05'),
(24, 'Bus Stop', 'Julieta Fewtrell', '2025-01-12'),
(25, 'King of Ping Pong, The (Ping-pongkingen)', 'Mattheus Bazeley', '2025-08-16'),
(26, 'Enemies: A Love Story', 'Kienan Kendrew', '2024-09-30'),
(27, 'Vampire\'s Kiss', 'Linoel Pitway', '2025-07-19'),
(28, 'Sheik, The', 'Carolan Winscum', '2025-02-03'),
(29, 'Purpose', 'Charles Getch', '2025-03-13'),
(30, 'Baby Geniuses', 'Rochelle Kitchenman', '2025-02-18'),
(31, 'Judge, The', 'Cosimo Swinburne', '2025-03-25'),
(32, 'Allan Quatermain and the Temple of Skulls', 'Alyda Goldsbury', '2025-06-21'),
(33, 'Limits of Control, The', 'Larissa Stedell', '2025-08-08'),
(34, 'Mr. Magorium\'s Wonder Emporium', 'Skylar Shewen', '2025-04-09'),
(35, 'Hurlyburly', 'Clevey Pietesch', '2025-08-15'),
(36, 'Homevideo', 'Gipsy Kirsz', '2025-07-16'),
(37, 'Harvie Krumpet', 'Dean Manneville', '2025-06-20'),
(38, 'Jersey Boys', 'Dorisa Guinness', '2025-04-19'),
(39, 'Brief History of Time, A', 'Niko Ludlam', '2025-01-12'),
(40, 'Sallah', 'Carolin Hixley', '2024-10-19'),
(41, 'Tracey Fragments, The', 'Theo Warr', '2025-07-25'),
(42, 'Dark Skies', 'Jen Wogan', '2025-07-27'),
(43, 'Hard Man, The', 'Hercule Kaszper', '2025-03-15'),
(44, 'Songcatcher', 'Dorri Pillinger', '2025-03-20'),
(45, 'Travellers and Magicians', 'Aila Dunseath', '2025-09-06'),
(46, 'Twilight Saga: New Moon, The', 'Kathrine Jeanesson', '2025-05-23'),
(47, 'Casual Sex?', 'Cassie Haskell', '2025-07-10'),
(48, 'Mad About Mambo', 'Cammi Mustard', '2025-09-08'),
(49, 'Taifu Club (Taifû kurabu)', 'Con Storton', '2025-04-04'),
(50, 'Passing Fancy (Dekigokoro)', 'Elisabetta Porritt', '2025-02-20'),
(51, 'Possession', 'Philomena Debnam', '2025-08-15'),
(52, 'Purple Gang, The', 'Berny Jakucewicz', '2024-11-16'),
(53, 'Cry, the Beloved Country', 'Mort Mace', '2025-02-12'),
(54, 'Art of War III: Retribution, The', 'Reta MacKinnon', '2025-09-12'),
(55, 'Requiem for a Dream', 'Nita Rodrig', '2024-10-19'),
(56, 'Island, The', 'Merrile Ryam', '2025-08-11'),
(57, 'Sushi Girl', 'Jessamine Juste', '2025-03-09'),
(58, 'Along Came Jones', 'Angel Escale', '2025-04-16'),
(59, 'Marc Maron: Thinky Pain', 'Mickie Konke', '2025-01-01'),
(60, 'Vice Squad', 'Dinnie Salzberg', '2025-02-13'),
(61, 'Spiral', 'Betteann Buffey', '2024-11-09'),
(62, 'Escape Plan', 'Kyle McGilbon', '2025-05-11'),
(63, 'Witnesses, The (Les témoins)', 'Nolan Michelotti', '2024-10-23'),
(64, 'Sandra of a Thousand Delights (Vaghe stelle dell\'Orsa...)', 'Hillel Dyet', '2025-03-08'),
(65, 'RKO 281', 'Arlen Lynnett', '2025-03-06'),
(66, 'Pulgasari', 'Bobbie Aluard', '2024-11-10'),
(67, 'Lucky Break (a.k.a. Paperback Romance)', 'Laetitia Klaiser', '2024-09-20'),
(68, 'Big Bird Cage, The', 'Rance Topley', '2024-10-07'),
(69, 'Alpha and Omega 3: The Great Wolf Games', 'Glynn Poone', '2025-06-06'),
(70, 'Lesson of the Evil (Aku no kyôten)', 'Janenna Piccop', '2025-06-26'),
(71, 'Best of Everything, The', 'Candy Palliser', '2024-11-14'),
(72, 'Heli', 'Reagan Eddow', '2024-10-28'),
(73, 'Lucky Ones, The', 'Mirella Impleton', '2024-12-03'),
(74, 'Misfits, The', 'Celie Ewington', '2024-11-29'),
(75, 'Ruby Red', 'Craggie Ibanez', '2025-04-13'),
(76, 'Living in Emergency: Stories of Doctors Without Borders', 'Louise Duffy', '2025-08-15'),
(77, 'Warped Ones, The (Kyonetsu no kisetsu)', 'Fairlie Bayless', '2025-04-19'),
(78, 'House of Games', 'Maude Goligher', '2025-06-10'),
(79, 'Seed', 'Kanya Marqyes', '2025-01-06'),
(80, 'Move Over, Darling', 'Fara Nornable', '2024-11-15'),
(81, 'Zero Dark Thirty', 'Giselle Conibear', '2025-08-20'),
(82, 'Visitor Q (Bizita Q)', 'Nertie Brizland', '2025-01-28'),
(83, 'Island, The (a.k.a. Naked Island) (Hadaka no shima)', 'Lucio Gascoigne', '2025-08-13'),
(84, 'Manborg', 'Fabe Denacamp', '2025-06-23'),
(85, 'One and Only, The (Eneste ene, Den)', 'Curry Moretto', '2024-12-06'),
(86, 'Expelled from Paradise', 'Goldina Earey', '2025-07-14'),
(87, 'Beast Must Die, The', 'Christie Redhills', '2025-08-10'),
(88, 'Watching the Detectives', 'Esra Forte', '2025-03-07'),
(89, 'Sitting Bull', 'Arvie Calcott', '2025-01-23'),
(90, 'Gumby: The Movie', 'Nerte Paterno', '2025-06-17'),
(91, 'Renaissance Man', 'Stacy Ranyell', '2024-12-27'),
(92, 'Muppets Most Wanted', 'Fern Liddicoat', '2025-04-30'),
(93, 'Leontine', 'Hyatt Kerman', '2024-12-11'),
(94, 'She\'s the One', 'Ula Hardwicke', '2025-03-09'),
(95, 'Wicked Blood', 'Tull Prenty', '2025-03-29'),
(96, 'No Time for Love', 'Corrie Crallan', '2025-05-20'),
(97, 'I Love You, Alice B. Toklas!', 'Bren While', '2025-06-07'),
(98, 'Good Neighbor Sam', 'Guinna Demeter', '2025-06-11'),
(99, 'Looking for Lenny ', 'Inge Blinckhorne', '2025-05-12'),
(100, 'OSS 117 - Lost in Rio (OSS 117: Rio ne répond plus)', 'Ros Campo', '2025-02-11'),
(101, 'cim1', 'szerzo1', '2000-01-10'),
(102, 'cim1', 'szerzo1', '2020-01-10');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` text NOT NULL,
  `type` text NOT NULL,
  `mDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `cars`
--

INSERT INTO `cars` (`id`, `brand`, `type`, `mDate`) VALUES
(1, 'Ford', 'Expedition', '2025-07-02'),
(2, 'GMC', 'Sierra 1500', '2024-11-17'),
(3, 'Citroën', 'SM', '2024-10-06'),
(4, 'Lotus', 'Evora', '2025-01-20'),
(6, 'Volvo', 'V70', '2025-02-06'),
(7, 'Mitsubishi', 'L300', '2025-03-23'),
(8, 'Pontiac', 'Bonneville', '2025-06-23'),
(9, 'Bentley', 'Continental GTC', '2025-09-03'),
(10, 'Mitsubishi', 'Mirage', '2025-08-11'),
(11, 'Dodge', 'Journey', '2024-10-14'),
(12, 'Chevrolet', 'Impala', '2025-02-11'),
(13, 'Mercedes-Benz', '190E', '2025-03-22'),
(14, 'Maserati', 'GranTurismo', '2025-06-22'),
(15, 'Mitsubishi', 'Mirage', '2025-02-05'),
(16, 'Ford', 'F-Series', '2025-06-17'),
(17, 'Mitsubishi', 'Lancer Evolution', '2025-05-09'),
(18, 'Chrysler', 'Cirrus', '2025-02-09'),
(19, 'Mitsubishi', 'Galant', '2025-02-07'),
(20, 'Jeep', 'Liberty', '2024-11-25'),
(21, 'Lexus', 'GS', '2024-11-11'),
(22, 'Mazda', 'Mazda6', '2025-06-28'),
(23, 'Volkswagen', 'Golf', '2024-12-04'),
(24, 'Chevrolet', 'Metro', '2025-07-17'),
(25, 'Chevrolet', 'Corvette', '2024-12-15'),
(26, 'Suzuki', 'Reno', '2025-08-19'),
(27, 'Mercedes-Benz', 'S-Class', '2024-10-16'),
(28, 'Ford', 'Mustang', '2024-10-06'),
(29, 'Chrysler', 'Sebring', '2024-10-01'),
(30, 'Ford', 'Tempo', '2025-09-18'),
(31, 'Porsche', 'Cayenne', '2025-05-03'),
(32, 'Mazda', 'Mazda3', '2024-10-24'),
(33, 'Mazda', 'B-Series', '2025-03-25'),
(34, 'Cadillac', 'Escalade ESV', '2024-09-27'),
(35, 'Ford', 'Crown Victoria', '2025-03-04'),
(36, 'Isuzu', 'Rodeo', '2025-02-13'),
(37, 'Dodge', 'Viper', '2025-04-25'),
(38, 'Ford', 'E250', '2024-10-09'),
(39, 'Mercury', 'Grand Marquis', '2025-05-10'),
(40, 'Jeep', 'Wrangler', '2025-01-18'),
(41, 'Mazda', '626', '2025-02-22'),
(42, 'Suzuki', 'SJ', '2025-08-06'),
(43, 'Nissan', 'Pathfinder', '2025-03-28'),
(44, 'Land Rover', 'LR2', '2024-12-04'),
(45, 'Kia', 'Sportage', '2024-12-05'),
(46, 'Maserati', '228', '2024-11-12'),
(47, 'GMC', 'Rally Wagon G3500', '2025-04-13'),
(48, 'Acura', 'Integra', '2024-10-31'),
(49, 'GMC', 'Rally Wagon 2500', '2024-12-20'),
(50, 'Toyota', 'Highlander', '2025-09-09'),
(51, 'Bentley', 'Arnage', '2025-02-22'),
(52, 'Jeep', 'Wrangler', '2025-06-21'),
(53, 'Chevrolet', 'Metro', '2024-09-25'),
(54, 'Volvo', '960', '2025-09-07'),
(55, 'Mercedes-Benz', 'S-Class', '2025-06-17'),
(56, 'Chrysler', 'Town & Country', '2024-11-24'),
(57, 'Saab', '9-3', '2025-09-20'),
(58, 'Toyota', 'Solara', '2024-11-27'),
(59, 'GMC', 'Sierra 3500', '2025-06-20'),
(60, 'Mitsubishi', 'Eclipse', '2025-07-18'),
(61, 'Daihatsu', 'Charade', '2025-03-08'),
(62, 'Dodge', 'Grand Caravan', '2025-02-25'),
(63, 'Dodge', 'Charger', '2024-10-17'),
(64, 'Ford', 'Focus', '2025-01-24'),
(65, 'Infiniti', 'G', '2025-03-19'),
(66, 'Pontiac', 'Grand Am', '2024-10-24'),
(67, 'Ford', 'Expedition', '2025-07-07'),
(68, 'Hyundai', 'Sonata', '2025-06-22'),
(69, 'Mercedes-Benz', 'E-Class', '2025-03-29'),
(70, 'Ford', 'Explorer Sport Trac', '2025-04-08'),
(71, 'Cadillac', 'STS', '2025-04-28'),
(72, 'Saturn', 'VUE', '2024-10-12'),
(73, 'Infiniti', 'FX', '2024-10-10'),
(74, 'Suzuki', 'Grand Vitara', '2025-06-06'),
(75, 'Cadillac', 'XLR-V', '2025-05-05'),
(76, 'Buick', 'Park Avenue', '2025-04-24'),
(77, 'Saab', '9-3', '2024-09-26'),
(78, 'Mazda', 'MX-3', '2025-05-14'),
(79, 'Lexus', 'LS', '2025-09-06'),
(80, 'Chrysler', 'Sebring', '2025-09-15'),
(81, 'Toyota', 'Camry Hybrid', '2024-12-17'),
(82, 'GMC', '3500 Club Coupe', '2025-01-19'),
(83, 'Ford', 'Thunderbird', '2024-11-14'),
(84, 'Dodge', 'Dakota', '2024-12-24'),
(85, 'Kia', 'Spectra', '2025-04-09'),
(86, 'Chevrolet', 'Prizm', '2025-06-11'),
(87, 'Subaru', 'Forester', '2024-10-03'),
(88, 'Mitsubishi', 'Pajero', '2025-07-07'),
(89, 'Toyota', 'Camry', '2025-07-09'),
(90, 'Ford', 'LTD', '2024-12-13'),
(91, 'Toyota', 'Highlander', '2025-02-21'),
(92, 'Mercedes-Benz', 'S-Class', '2025-02-08'),
(93, 'Dodge', 'Ram 2500', '2024-10-13'),
(94, 'Lexus', 'RX', '2024-11-19'),
(95, 'Chevrolet', 'G-Series 2500', '2024-11-16'),
(96, 'Ford', 'Focus', '2025-02-20'),
(97, 'Volvo', 'S80', '2025-04-12'),
(98, 'Lexus', 'RX', '2025-03-07'),
(99, 'Toyota', 'Previa', '2025-05-15'),
(100, 'Lotus', 'Esprit', '2025-05-25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
