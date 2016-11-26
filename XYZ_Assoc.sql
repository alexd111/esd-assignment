-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2016 at 03:50 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `XYZ_Assoc`
--
CREATE DATABASE IF NOT EXISTS `XYZ_Assoc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `XYZ_Assoc`;

-- --------------------------------------------------------

--
-- Table structure for table `Claims`
--

DROP TABLE IF EXISTS `Claims`;
CREATE TABLE IF NOT EXISTS `Claims` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` text NOT NULL,
  `date` date NOT NULL,
  `rationale` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Claims`:
--

--
-- Truncate table before insert `Claims`
--

TRUNCATE TABLE `Claims`;

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('me-aydin', '2016-01-27', 'Damage to the front bumper', 'APPROVED', 90);

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('me-aydin', '2016-09-15', 'Damage to right wing mirror', 'APPROVED', 50);
-- --------------------------------------------------------

--
-- Table structure for table `Members`
--

DROP TABLE IF EXISTS `Members`;
CREATE TABLE IF NOT EXISTS `Members` (
  `id` text CHARACTER SET ascii NOT NULL,
  `name` text CHARACTER SET ascii,
  `address` text CHARACTER SET ascii,
  `dob` date DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `status` text NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `Members`:
--

--
-- Truncate table before insert `Members`
--

TRUNCATE TABLE `Members`;
--
-- Dumping data for table `Members`
--

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('me-aydin', 'Mehmet Aydin', '148 Station Rd, London, N3 2SG', '1968-10-20', '2015-01-26', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('j-atkinson', 'Joel Atkinson', '3 Annfield Rd, Bearwood, BH11 7EF', '1980-11-20', '2016-01-23', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('b-walters', 'Ben Walters', '18 Memory Rd, Cardiff, CF18 8QW', '1983-10-18', '2016-03-26', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('s-gerrard', 'Stevie Gerrard', '15 Alegend Rd, Liverpool, L1 8LV', '1980-05-30', '2016-11-24', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('m-channon', 'Mick Channon', '228 Upfront Rd, Southampton, S9 2SO', '1948-11-28', '2015-10-17', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('m-davis', 'Mike Davis', '1 Green St, London, LN1 5PQ', '1975-07-12', '2015-06-20', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('s-evans', 'Susan Evans', '17 Baker St, Bristol, BS10 1UX', '1973-09-28', '2016-10-16', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('k-holland', 'Kim Holland', '16 Sesh Rd, London, L3 7SG', '1980-10-20', '2015-05-219', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('e-frand', 'Emma Frand', '10 Local Rd, Bristol, BS11 2FG', '1974-03-20', '2015-01-21', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('a-tompson', 'Anna Tompson', '132, Brook Ln, RE7 1JG', '1988-04-22', '2015-03-14', 'APPLIED', 0);
INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('s-simpson', 'Sam Simpson ', '16 Clair St, Bath, BT3 2QP', '1974-02-11', '2015-05-12', 'APPLIED', 0);


-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` text NOT NULL,
  `type_of_payment` char(10) NOT NULL,
  `amount` float NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `payments`:
--   `mem_id`
--       `Members` -> `id`
--

--
-- Truncate table before insert `payments`
--

TRUNCATE TABLE `payments`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` text CHARACTER SET ascii NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `users`:
--   `id`
--       `Members` -> `id`
--

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('me-aydin', '201068', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('j-atkinson','201180', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('b-walters', '181083', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('s-gerrard', '300580', 'APPLIED';
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('m-channon', '281148', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('m-davis', '120775', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('s-evans', '280973', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('k-holland','201080', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('e-frand', '200374', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('a-tompson', '220488', 'APPLIED');
INSERT INTO `users` (`id`, `password`, `status`) VALUES
('s-simpson', '110274', 'APPLIED');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
