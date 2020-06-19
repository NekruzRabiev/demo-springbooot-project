CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES 
	(1,'Nekruz ','Rabiev','nekruz@gmail.com'),
	(2,'Den','Vasilyev','den@gmail.com'),
	(3,'Anvar','Gupta','anvar@gmail.com'),
	(4,'Yuri','Petrov','yuri@gmail.com'),
	(5,'Alex','Volkov','alex@gmail.com');

