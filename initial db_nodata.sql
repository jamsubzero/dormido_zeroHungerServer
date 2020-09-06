-- --------------------------------------------------------
-- Host:                         166.62.10.227
-- Server version:               5.6.49-cll-lve - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for agri
CREATE DATABASE IF NOT EXISTS `agri` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agri`;

-- Dumping structure for table agri.needhavedb
CREATE TABLE IF NOT EXISTS `needhavedb` (
  `recID` bigint(20) NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'static hardcoded values, may be make dynamic later',
  `item_name` varchar(50) NOT NULL,
  `quan` double NOT NULL,
  `unit` varchar(50) NOT NULL,
  `year` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL COMMENT 'geocoded city (locality)',
  `province` varchar(50) NOT NULL COMMENT 'geocoded provice(admin / sub admin)',
  `need_have` int(11) NOT NULL COMMENT '0 for need, 1 for have, 2 for waste',
  `date_time` datetime NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`recID`),
  KEY `FK_needhavedb_user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2919 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table agri.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `registered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
