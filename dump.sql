-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.16 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              7.0.0.4327
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных prakt
CREATE DATABASE IF NOT EXISTS `prakt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prakt`;


-- Dumping structure for таблица prakt.lot_animals
CREATE TABLE IF NOT EXISTS `lot_animals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `specie` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `phone` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `photo` tinyint(1) unsigned zerofill DEFAULT NULL,
  `price` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `checked` tinyint(1) unsigned zerofill DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='об''яви';

-- Дамп данных таблицы prakt.lot_animals: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `lot_animals` DISABLE KEYS */;
INSERT INTO `lot_animals` (`id`, `title`, `specie`, `category`, `phone`, `email`, `photo`, `price`, `birth_date`, `checked`, `date`) VALUES
	(1, '????????? ????????', '????????', 15, '0502345678', 'labrador@gmail.com', 1, '2500 ???', '2013-04-16', 1, '2013-05-16 03:33:28');
/*!40000 ALTER TABLE `lot_animals` ENABLE KEYS */;


-- Dumping structure for таблица prakt.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'праймари',
  `phone` varchar(10) NOT NULL DEFAULT '0' COMMENT 'телефон',
  `login` varchar(15) NOT NULL DEFAULT '0' COMMENT 'логін',
  `email` varchar(25) NOT NULL DEFAULT '0' COMMENT 'пошта',
  `salt` varchar(15) NOT NULL DEFAULT '0' COMMENT 'рандом',
  `hash` varchar(32) NOT NULL DEFAULT '0' COMMENT 'дайджест',
  `banned` date DEFAULT NULL COMMENT 'контроллер доступу',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата регістрації',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Дамп данных таблицы prakt.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `phone`, `login`, `email`, `salt`, `hash`, `banned`, `reg_date`) VALUES
	(1, '0507772201', 'user01', 'liza.cat@mail.ru', 'qWE2R@3#R@sdfg:', 'aa4c1567eb398e79448ff5bd5d08eb87', NULL, '2013-05-16 03:29:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
