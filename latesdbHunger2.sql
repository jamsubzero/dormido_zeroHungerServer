-- --------------------------------------------------------
-- Host:                         148.66.138.153
-- Server version:               5.6.39-cll-lve - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for emergencydb
CREATE DATABASE IF NOT EXISTS `emergencydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `emergencydb`;

-- Dumping structure for table emergencydb.clientprofile
CREATE TABLE IF NOT EXISTS `clientprofile` (
  `clientUN` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cont` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`clientUN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table emergencydb.clientprofile: ~42 rows (approximately)
/*!40000 ALTER TABLE `clientprofile` DISABLE KEYS */;
INSERT INTO `clientprofile` (`clientUN`, `fname`, `mname`, `lname`, `age`, `gender`, `cont`, `address`) VALUES
	('a', 'dan', 'gag', 'shhs', '12', 'Male', '0667464', 'kati, Zamboanga del Norte'),
	('Ace', 'Dan', 'A.', 'Garzon', '20', 'Male', '09300205522', 'Katipunan, Zamboanga del Norte'),
	('bass', 'Danes', 'Palomero', 'Tumabing', '48', 'Male', '09174513925', 'Bacolod'),
	('bass2', 'Danes', 'Palomero', 'Tumabing', '23', 'Male', '09174513925', 'Bacolod'),
	('Bern', 'Nard', 'A', 'Quintero', '12', 'Male', '0986554544', 'Kati, Zamboanga del Norte'),
	('Black', 'Mr. T', 'B.', 'Boy', '12', 'Male', '096855', 'Katipunan, Zamboanga del Norte'),
	('butiti', 'james', 'morado', 'siso', '20', 'Male', '09098992952', 'roxas, Zamboanga del Norte'),
	('cg', 'hy', 'ghh', 'gh', '58', 'Male', '09178806503', 'gjhg, Bacolod City, Negros Occidental'),
	('D. Ace', 'Eleazar', 'D', 'Mario', '23', 'Male', '09502216449', 'Katipunan, Zamboanga del Norte'),
	('dale', 'danes', 'p', 'tumabing', '31', 'Male', '09085473925', 'Bacolod'),
	('DAN', 'DANTE', 'M', 'GAR', '12', 'Male', '0998766', 'Katipunan, Zamboanga del Norte'),
	('danes', 'Danes', 'Palomero', 'Tumabing', '45', 'Male', '09174513925', 'Bacolod'),
	('Dantex', 'A', 'Dante', 'Garzon', '18', 'Male', '09300205512', 'Katipunan, Zamboanga del Norte'),
	('Dong', 'Mark', 'H.', 'Jumawan', '26', 'Male', '0968553445', 'Katipunan, Zamboanga del Norte'),
	('Gang\'s', 'James', 'M', 'Sido', '20', 'Male', '09104794910', 'Katipunan, Zamboanga del Norte'),
	('Gangster', 'James', 'M', 'Sido', '20', 'Male', '09104794910', 'Katipunan, Zamboanga del Norte'),
	('gggfff', 'ggg', 'gggff', 'ffff', '555', 'Female', '555', 'ffvggg, Zamboanga del Norte'),
	('Gray', 'Edgar', 'M.', 'Reganion', '25', 'Male', '09104767050', 'Katipunan, Zamboanga del Norte'),
	('jam', 'Jose Armin', 'Gabuan', 'Maningo', '20', 'Male', '09178806503', 'Bacolod'),
	('jamppp', 'd', 'f', 'f', '4', 'Male', '09886', 'ddff, Bacolod City, Negros Occidental'),
	('john', 'danes', 'p', 'tumabing', '30', 'Male', '09085479707', 'Bacolod'),
	('katol', 'Lem', 'Yur', 'ong', '20', 'Male', '09487556144', 'katip, Zamboanga del Norte'),
	('Lang', 'Aliza', 'Cabasag', 'Yurong', '20', 'Male', '09487556144', 'Katipunan, Zamboanga del Norte'),
	('Lem', 'Lang', 'Yur', 'Duma', '60', 'Male', '09487556144', 'katipunan, Zamboanga del Norte'),
	('Lit', 'Mar', 'B.', 'Gallon', '12', 'Male', '09500999826', 'Katipunan, Zamboanga del Norte'),
	('Lor', 'Lovely lorraine', 'sumal', 'pong', '16', 'Female', '0948561328', 'katipunan, Zamboanga del Norte'),
	('Lorr', 'Lorre', 'M.', 'Sum', '12', 'Female', '09308744', 'Katipunan, Zamboanga del Norte'),
	('Lov', 'Lovely', 'K', 'Mar', '15', 'Male', '09300205577', 'Kat, Zamboanga del Norte'),
	('Mee', 'Theresa', 'Sarenas', 'Habagat', '38', 'Male', '09877573757', 'Katipunan , Zamboanga del Norte'),
	('Mel', 'Romel', 'D.', 'Orong', '15', 'Male', '0912586477', 'Katipunan, Zamboanga del Norte'),
	('Muel', 'Mari', 'Ela', 'zar', '20', 'Male', '09487556144', 'katipunan, Zamboanga del Norte'),
	('Ngal', 'Mel', 'Ang', 'Booo', '45', 'Male', '09755123461', 'Katipunan, Zamboanga del Norte'),
	('Nonoy', 'Halo', 'Hala', 'Toara', '21', 'Male', '09500999826', 'Manukan, Zamboanga del Norte'),
	('onee', 'ruben', 'm', 'lladoc', '12', 'Male', '09388085300', 'Bacolod'),
	('rescue one', 'filomena', 'jumawak', 'valencia', '56', 'Female', '09462940511', 'katipunan, Zamboanga del Norte'),
	('Rose', 'Rose', 'Go', 'Bali', '33', 'Female', '090', 'katipunan, Zamboanga del Norte'),
	('tata', 'jechanry', 'magtuba', 'ceprado', '35', 'Female', '0999', 'katipunan, Zamboanga del Norte'),
	('uno', 'ruben', 'm', 'lladoc', '18', 'Male', '09388085300', 'ilog, Bacolod City, Negros Occidental'),
	('uno1', 'ruben', 'm', 'lladoc', '18', 'Male', '09388085300', 'ilog, Bacolod City, Negros Occidental'),
	('Ven', 'Venal', 'Rom', 'Andog', '20', 'Male', '09500999826', 'MANUKAN ZAMBOANGA DEL NORTE, Zamboanga del Norte'),
	('Venz', 'Intoy', 'Bagutoy', 'Atotoy', '41', 'Male', '09500999826', 'Manukan, Zamboanga del Norte'),
	('Walker', 'Knight-Walk', 'D.', 'Light', '22', 'Male', '09300250446', 'Roxas, Zamboanga del Norte'),
	('zh3l', 'leizle', 'p', 'tumabing', '31', 'Female', '09087186629', 'Bacolod');
/*!40000 ALTER TABLE `clientprofile` ENABLE KEYS */;

-- Dumping structure for table emergencydb.needhavedb
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
  PRIMARY KEY (`recID`),
  KEY `FK_needhavedb_user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Dumping data for table emergencydb.needhavedb: ~17 rows (approximately)
/*!40000 ALTER TABLE `needhavedb` DISABLE KEYS */;
INSERT INTO `needhavedb` (`recID`, `userID`, `type`, `item_name`, `quan`, `unit`, `year`, `month`, `latitude`, `longitude`, `city`, `province`, `need_have`, `date_time`) VALUES
	(50, 'jam', 'Grain', 'Rice', 55, 'kg', '2021', 'February', '14.5366301', '120.9941054', 'Pasay', 'Metro Manila', 0, '2018-11-24 20:02:02'),
	(51, 'jam', 'Meat', 'Chicken', 585, 'kg', '2019', 'January', '14.53663', '120.9941054', 'Pasay', 'Metro Manila', 0, '2018-11-24 20:06:43'),
	(52, 'jam', 'Grain', 'Rice', 88, 'kg', '2020', 'February', '14.5366296', '120.9941053', 'Pasay', 'Metro Manila', 1, '2018-11-24 20:09:37'),
	(54, 'jam', 'Vegetables', 'Tangkong', 58, 'kg', '2019', 'February', '14.5366303', '120.9941054', 'Pasay', 'Metro Manila', 1, '2018-11-24 20:13:34'),
	(55, 'jam', 'Fruits', 'Mango', 88, 'kg', '2019', 'March', '14.5366305', '120.9941056', 'Pasay', 'Metro Manila', 1, '2018-11-24 20:15:44'),
	(57, 'jam', 'Poultry', 'Chicken Egg', 88, 'kg', '2020', 'February', '14.5366298', '120.9941051', 'Pasay', 'Metro Manila', 1, '2018-11-24 20:24:08'),
	(62, 'jam', 'Poultry', 'Chicken Egg', 88, 'kg', '2020', 'February', '14.5366162', '120.9941016', 'Pasay', 'Metro Manila', 0, '2018-11-24 20:40:00'),
	(63, 'jam', 'Grain', 'Rice', 15, 'kg', '2020', 'March', '14.5366152', '120.9941019', 'Pasay', 'Metro Manila', 0, '2018-11-24 21:07:35'),
	(64, 'jam', 'Seafood', 'Crab', 55, 'g', '2021', 'March', '14.536644', '120.9941063', 'Pasay', 'Metro Manila', 0, '2018-11-24 21:35:30'),
	(65, 'jam', 'Seafood', 'Fish', 89, 'kg', '2020', 'May', '10.1999593    ', '122.8664849', 'Binalbagan', 'Negros Occidental', 0, '2018-11-24 22:52:13'),
	(66, 'jam', 'Grain', 'Rice', 85, 'kg', 'N/A', 'N/A', '14.5366175', '120.9941019', 'Pasay', 'Metro Manila', 2, '2018-11-24 23:12:13'),
	(67, 'jam', 'Seafood', 'Shrimp', 56, 'kg', '2021', 'April', '14.5366306', '120.9941036', 'Pasay', 'Metro Manila', 0, '2018-11-25 09:41:32'),
	(68, 'jam', 'Seafood', 'Alimango', 5, 'kg', '2020', 'May', '10.0902184    ', '122.8683684 ', 'Himamaylan City', 'Negros Occidental', 1, '2018-11-25 09:42:28'),
	(69, 'jam', 'Meat', 'Ham', 6, 'kg', 'N/A', 'N/A', '14.5366415', '120.9941059', 'Pasay', 'Metro Manila', 2, '2018-11-25 09:43:12'),
	(70, 'jam', 'Vegetables', 'Lettuce', 45, 'kg', 'N/A', 'N/A', '14.5366304', '120.9941058', 'Pasay', 'Metro Manila', 2, '2018-11-25 10:09:32'),
	(72, 'jam', 'Seafood', 'Alimango', 5, 'kg', '2020', 'May', '9.8481883', ' 126.0458437 ', 'Siargao', 'Surigao', 1, '2018-11-25 09:42:28'),
	(73, 'jam', 'Seafood', 'Alimango', 5, 'kg', '2020', 'May', '9.8481883', ' 126.0458437 ', 'Pasay', 'Metro Manila', 1, '2018-11-25 09:42:28'),
	(74, 'jam', 'Seafood', 'Alimango', 5, 'kg', '2020', 'May', '10.0902184    ', '122.8683684 ', 'Himamaylan City', 'Negros Occidental', 1, '2018-11-25 09:42:28');
/*!40000 ALTER TABLE `needhavedb` ENABLE KEYS */;

-- Dumping structure for table emergencydb.need_wants_flag
CREATE TABLE IF NOT EXISTS `need_wants_flag` (
  `flag` int(11) DEFAULT NULL,
  `meaning` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table emergencydb.need_wants_flag: 3 rows
/*!40000 ALTER TABLE `need_wants_flag` DISABLE KEYS */;
INSERT INTO `need_wants_flag` (`flag`, `meaning`) VALUES
	(0, 'Need'),
	(1, 'Have'),
	(2, 'Waste');
/*!40000 ALTER TABLE `need_wants_flag` ENABLE KEYS */;

-- Dumping structure for table emergencydb.notifsbebers
CREATE TABLE IF NOT EXISTS `notifsbebers` (
  `notifID` int(11) NOT NULL AUTO_INCREMENT,
  `clientUN` varchar(50) NOT NULL,
  `date_Time` datetime NOT NULL,
  `lati` varchar(100) NOT NULL,
  `longi` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `method` varchar(50) DEFAULT NULL COMMENT 'SMS or OL',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread, 1 responded',
  `dt_responded` datetime DEFAULT NULL,
  `incid_details` longtext,
  `geocodedAdd` longtext,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

-- Dumping data for table emergencydb.notifsbebers: ~16 rows (approximately)
/*!40000 ALTER TABLE `notifsbebers` DISABLE KEYS */;
INSERT INTO `notifsbebers` (`notifID`, `clientUN`, `date_Time`, `lati`, `longi`, `type`, `method`, `status`, `dt_responded`, `incid_details`, `geocodedAdd`) VALUES
	(22, 'Rose', '2018-05-14 06:55:11', '8.50978454', '123.2854985', 2, 'Online', 1, NULL, NULL, 'Regional Hwy Dipolog - Sindangan, Katipunan, Zamboanga del Norte, Philippines'),
	(123, 'bass2', '2018-10-20 14:20:11', '10.663656125520058', '122.95018541177353', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(124, 'dale', '2018-10-20 14:20:32', '10.6635395', '122.9499819', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(125, 'bass2', '2018-10-20 14:36:16', '10.6628284', '122.9509977', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(126, 'bass2', '2018-10-20 14:50:56', '10.662839', '122.9510197', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(127, 'bass2', '2018-10-20 14:51:42', '10.662846', '122.951012', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(128, 'bass2', '2018-10-20 14:57:58', '10.662856', '122.9510622', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(129, 'bass2', '2018-10-20 14:59:10', '10.662856', '122.9510622', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(130, 'bass2', '2018-10-20 15:00:00', '10.6628431', '122.9510064', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(131, 'bass2', '2018-10-20 15:05:14', '10.6628431', '122.9510064', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(132, 'dale', '2018-10-20 15:07:35', '10.6628533', '122.9510303', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(133, 'dale', '2018-10-20 16:14:12', '10.6628765', '122.9510634', 2, 'Online', 2, '2018-10-20 16:16:56', 'The problem is solved', '(Unknown Address)'),
	(134, 'dale', '2018-10-20 16:25:22', '10.6628432', '122.9510295', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(135, 'dale', '2018-10-20 16:32:26', '10.6635022', '122.950825', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(136, 'dale', '2018-10-20 16:50:50', '10.6643308', '122.9511423', 2, 'Online', 1, NULL, NULL, '(Unknown Address)'),
	(137, 'jam', '2018-10-20 16:50:54', '10.662812', '122.9509739', 2, 'Online', 1, NULL, NULL, '(Unknown Address)');
/*!40000 ALTER TABLE `notifsbebers` ENABLE KEYS */;

-- Dumping structure for table emergencydb.user
CREATE TABLE IF NOT EXISTS `user` (
  `userID` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table emergencydb.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userID`, `password`, `name`, `address`, `contactNumber`) VALUES
	('jam', 'jam', 'Armin', 'Himamaylan City', '09178806503');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table emergencydb.useracc
CREATE TABLE IF NOT EXISTS `useracc` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table emergencydb.useracc: ~6 rows (approximately)
/*!40000 ALTER TABLE `useracc` DISABLE KEYS */;
INSERT INTO `useracc` (`username`, `pass`) VALUES
	('alimar', '1418c40237ee713b2752a18beb0b3335c688b68b'),
	('dan', '9a79be611e0267e1d943da0737c6c51be67865a0'),
	('garzon', '00'),
	('jam', 'da3dd5c2657fecad769c041097dbd8ecd725687d'),
	('lem', 'b62731a5c9e69711feca5ed01e1974998aba33c1'),
	('lor', '813bee93ab6fa289818ebeaebca612fefc3730cc');
/*!40000 ALTER TABLE `useracc` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
