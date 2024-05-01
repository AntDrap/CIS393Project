-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 06:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bradleygamearchive`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_ID` int(11) NOT NULL,
  `game_name` varchar(64) NOT NULL,
  `game_release` text NOT NULL,
  `game_description` text NOT NULL,
  `game_link` text NOT NULL,
  `game_videoID` text NOT NULL,
  `game_contributors` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_ID`, `game_name`, `game_release`, `game_description`, `game_link`, `game_videoID`, `game_contributors`) VALUES
(7, 'Nightmare Arts', '2021-09-21', 'Nightmare Arts is an endless bullet hell where the player is equipped with a magic paint brush that they must use to slay hoards of demons.', 'https://mundanepixel.itch.io/nightmare-arts', 'qQSvTo840aM', 'Anthony Drapeau'),
(9, 'Nowhere Here Then and Now', '2023-06-28', 'Horror survival game where you explore different liminal environments. ', 'https://creaturebox.itch.io/nowhere-here-then-and-now', 'AsDFLUE2aJQ', 'Anthony Drapeau, Nick Junkas'),
(10, 'Free Looters', '2023-04-25', 'Freelooters is an action FPS where the player has a wide selection of different weapons that all grant a new unique mode of movement.', 'https://mundanepixel.itch.io/freelooters-prototype', 'wjTlol6A9-A', 'Quin Cheek, Tyler Colander, Jason Czech, Anthony Drapeau, Samuel Dwyer, Nicholas Junkas, Austin Schillage, Kadin White'),
(11, 'Kubler Ct.', '2022-12-27', 'Kubler Ct. is a horror game about exploring a dream-like cul-de-sac trying to find your way out. You have the ability to use the blueprints of these houses to move objects and protect yourself.', 'https://mundanepixel.itch.io/kublerct', 'nl1xfu42pe8', 'M McKeever, Justin Clemens, Casey Vande Hey, Alex Gruber'),
(12, 'Kaiju Hunter', '2022-02-09', 'Kaiju Hunter is a monster hunting platformer, where the player must defeat three massive monsters to progress.', 'https://mundanepixel.itch.io/kaiju-hunter', 'VcrUPyN55us', 'Anthony Drapeau'),
(13, 'Off The Rails', '2022-01-02', 'Off The Rails is an endless arcade train shooter. Drive through the wasteland fighting enemies and collecting parts to grow your train and become more powerful.', 'https://mundanepixel.itch.io/off-the-rails', 'TsyI2v4seYk', 'Anthony Drapeau, Nicholas Junkas, Seth Weeks'),
(14, 'Sun Root', '2021-12-06', 'SunRoot is an action exploration game in which the player assumes control of a light mage named Willow, who must find the next settlement spot for their underground civilization. ', 'https://mundanepixel.itch.io/sunroot', 'R9wm8Qv_01M', 'Anthony Drapeau, Casey Vandehey, Addy Crowell, Nicholas Junkas'),
(15, 'Beyond', '2021-09-15', 'Beyond is a simple platformer where the player needs to shift the world around them to progress through levels. made for the 4th Ninja Game Jam.', 'https://mundanepixel.itch.io/beyond', 'JmveDvFYC7w', 'Anthony Drapeau'),
(16, 'Wakey Wakey', '2024-01-28', '2D puzzle platformer about playing with an ever shifting set of controls and rules.', 'https://lwjproductions.itch.io/wakey-wakey', 'fL3hDBIkImo', 'Justin Clemens, William Dietert, Anthony Drapeau, Samuel Dwyer, Lucas Johnson, Jacob Zydorowicz ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
