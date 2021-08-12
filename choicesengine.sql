-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 06:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `choicesengine`
--

CREATE TABLE `choicesengine` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choicesengine`
--

INSERT INTO `choicesengine` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, ' Ventilate'),
(2, 1, 0, ' Vacant'),
(3, 1, 0, ' Escape'),
(4, 1, 0, ' Wash'),
(5, 2, 1, ' \"Man Overboard\"'),
(6, 2, 0, ' \"Man Jump Overboard\"'),
(7, 2, 0, ' \"Man Swim Overboard\"'),
(8, 2, 0, ' \"Help Me\"'),
(9, 3, 1, ' Master'),
(10, 3, 0, ' Chief Engineer'),
(11, 3, 0, ' 2nd Engineer'),
(12, 3, 0, ' Chief Officer'),
(13, 4, 1, ' ignition'),
(14, 4, 0, ' fire'),
(15, 4, 0, ' steam'),
(16, 4, 0, ' thermal'),
(17, 5, 1, ' downward'),
(18, 5, 0, ' Going down'),
(19, 5, 0, ' Bring down'),
(20, 5, 0, ' Go down'),
(21, 6, 1, ' Used'),
(22, 6, 0, ' Use'),
(23, 6, 0, ' Using'),
(24, 7, 1, ' Operation'),
(25, 7, 0, ' Running'),
(26, 7, 0, ' Engagement'),
(27, 8, 1, ' Ignition'),
(28, 8, 0, ' Fire'),
(29, 8, 0, ' Heat'),
(30, 8, 0, ' Smoke'),
(31, 9, 1, ' Leaking'),
(32, 9, 0, ' Leak'),
(33, 9, 0, ' Leaked'),
(34, 9, 0, ' Leaks'),
(35, 10, 1, ' Carefully'),
(36, 10, 0, ' Careful'),
(37, 10, 0, ' Caring'),
(38, 10, 0, ' Cared'),
(39, 11, 1, ' Is'),
(40, 11, 0, ' Are'),
(41, 11, 0, ' Does'),
(42, 11, 0, ' Do'),
(43, 12, 1, ' Immersion Suit'),
(44, 12, 0, ' Lifesaving Suit'),
(45, 12, 0, ' Emergency Escape Suit'),
(46, 12, 0, ' Floating Suit'),
(47, 13, 1, ' Fixing'),
(48, 13, 0, ' Fix'),
(49, 13, 0, ' Fixed'),
(50, 14, 1, ' Grind'),
(51, 14, 0, ' Grinding'),
(52, 14, 0, ' Grinder'),
(53, 14, 0, ' Grinded'),
(54, 15, 1, ' Check'),
(55, 15, 0, ' Checks'),
(56, 15, 0, ' Checked'),
(57, 15, 0, ' Checking'),
(58, 16, 1, ' Lifted'),
(59, 16, 0, ' Lift'),
(60, 16, 0, ' Lifting'),
(61, 16, 0, ' Lifts'),
(62, 17, 1, ' Was'),
(63, 17, 0, ' Were'),
(64, 17, 0, ' Is'),
(65, 17, 0, ' Are'),
(66, 18, 0, ' Hot work permit'),
(67, 18, 0, ' Enclosed space entry permit'),
(68, 18, 0, ' Working aloft permit'),
(69, 18, 1, ' Underwater work permit'),
(70, 19, 1, ' Operates'),
(71, 19, 0, ' Operate'),
(72, 19, 0, ' Operating'),
(73, 19, 0, ' Operated'),
(74, 20, 1, ' Renewed'),
(75, 20, 0, ' Renewal'),
(76, 20, 0, ' Renew'),
(77, 20, 0, ' Renewing'),
(78, 21, 1, ' Connecting, came'),
(79, 21, 0, ' Connect, came'),
(80, 21, 0, ' Connecting,come'),
(81, 21, 0, ' Connected, came'),
(82, 22, 1, ' Were'),
(83, 22, 0, ' Are'),
(84, 22, 0, ' Is'),
(85, 22, 0, ' Was'),
(86, 23, 1, ' Were'),
(87, 23, 0, ' Was'),
(88, 23, 0, ' Is'),
(89, 23, 0, ' Are'),
(90, 24, 1, ' Safe Working Load'),
(91, 24, 0, ' Safe Working Limit'),
(92, 24, 0, ' Safe Work Loading'),
(93, 24, 0, ' Safety Without Limit'),
(94, 25, 1, ' Snap back zone'),
(95, 25, 0, ' Dangerous zone'),
(96, 25, 0, ' Standby zone'),
(97, 25, 0, ' Winching zone'),
(98, 26, 1, ' NINETEEN SEVENTY-FIVE'),
(99, 26, 0, ' NINETY SEVENTY-FIVE'),
(100, 26, 0, ' NINETEEN SEVEN-FIVE'),
(101, 27, 0, ' Cook'),
(102, 27, 0, ' Chief Steward'),
(103, 27, 0, ' Messman'),
(104, 27, 1, ' Ordinary Seaman'),
(105, 28, 0, ' Suggested'),
(106, 28, 0, ' Increased'),
(107, 28, 0, ' Permitted'),
(108, 28, 1, ' Invited'),
(109, 29, 0, ' Suggested'),
(110, 29, 0, ' Increased'),
(111, 29, 0, ' Left'),
(112, 29, 1, ' Written'),
(113, 30, 0, ' make'),
(114, 30, 1, ' do'),
(115, 31, 1, ' make'),
(116, 31, 0, ' do'),
(117, 32, 1, ' make'),
(118, 32, 0, ' do'),
(119, 33, 0, ' Boatswain'),
(120, 33, 0, ' Chief Cook'),
(121, 33, 1, ' Ordinary Seaman'),
(122, 33, 0, ' Wiper'),
(123, 34, 0, ' Oiler'),
(124, 34, 1, ' Fitter'),
(125, 34, 0, ' 2nd Engineer'),
(126, 34, 0, ' Chief Officer'),
(127, 35, 0, ' Greaser'),
(128, 35, 0, ' Oiler'),
(129, 35, 0, ' Junior Engineer'),
(130, 35, 1, ' Wiper'),
(131, 36, 0, ' for'),
(132, 36, 1, ' with'),
(133, 36, 0, ' to'),
(134, 37, 0, ' true'),
(135, 37, 1, ' valid'),
(136, 37, 0, ' real'),
(137, 38, 1, ' Conventional'),
(138, 38, 0, ' Convenient'),
(139, 39, 1, ' prevent'),
(140, 39, 0, ' improve'),
(141, 40, 0, ' leak'),
(142, 40, 1, ' lighter'),
(143, 41, 1, ' build in'),
(144, 41, 0, ' arrange'),
(145, 42, 0, ' Release'),
(146, 42, 0, ' Lower'),
(147, 42, 0, ' Inflate'),
(148, 42, 1, ' Reduce');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choicesengine`
--
ALTER TABLE `choicesengine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choicesengine`
--
ALTER TABLE `choicesengine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
