-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 09:55 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vishal`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE IF NOT EXISTS `chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `reply` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `message`, `reply`) VALUES
(1, 'hello||hi', 'hello, how are you'),
(2, 'where are you from', 'I am from Delhi,India'),
(3, 'Where do you live', 'in your heart'),
(4, 'what is your name', 'I am Demon'),
(5, 'who are you', 'Demon'),
(6, 'what is your hobby', 'my hobby is traveling'),
(7, 'what is your mother name', 'Angle'),
(8, 'what is your father name', 'Lucifer'),
(9, 'what is your favorit color', 'Lime');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `type`) VALUES
(1, 'Hi', 'user'),
(2, 'hello, how are you', 'bot'),
(3, 'iamvishal', 'user'),
(4, 'Sorry I can''t Tell You This.', 'bot'),
(5, 'where are you from', 'user'),
(6, 'I am from Delhi,India', 'bot'),
(7, 'who are you', 'user'),
(8, 'Demon', 'bot'),
(9, 'what is your name', 'user'),
(10, 'I am Demon', 'bot'),
(11, 'what is your hobby', 'user'),
(12, 'my hobby is traveling', 'bot'),
(13, 'gujguj', 'user'),
(14, 'Sorry I can''t Tell You This.', 'bot'),
(15, 'mother name', 'user'),
(16, 'Angle', 'bot'),
(17, 'color', 'user'),
(18, 'Sorry I can''t Tell You This.', 'bot'),
(19, 'father', 'user'),
(20, 'Lucifer', 'bot'),
(21, 'color', 'user'),
(22, 'Lime', 'bot'),
(23, 'sister', 'user'),
(24, 'Sorry I can''t Tell You This.', 'bot'),
(25, 'where do you live', 'user'),
(26, 'in your heart', 'bot'),
(27, 'live', 'user'),
(28, 'in your heart', 'bot');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
