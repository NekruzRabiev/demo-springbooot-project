DROP DATABASE  IF EXISTS `spring_security_demo_bcrypt`;

CREATE DATABASE  IF NOT EXISTS `spring_security_demo_bcrypt`;
USE `spring_security_demo_bcrypt`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--
-- A generation tool is avail at: https://www.bcryptcalculator.com
--
-- Default passwords here are: password
--

INSERT INTO `users` 
VALUES 
('kostya','{bcrypt}$2a$10$PyIzlZmhqxFNa/Yaoc9fBe8DAoWOLN5er.KyzYG/HAWUribKf.3L6',1),
('mary','{bcrypt}$2a$10$I47ix5o7r5fDMn8rUBrzYOj3le4vaxNSGiT.8f0xmmSLu2l5Fp86y',1),
('kiril','{bcrypt}$2a$10$k8jp..76MFwbATXK5h2Wxuugy5IoRKi//qLGTAmQxG5RK/mSNL6.2',1);


--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
('kostya','ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('kiril','ROLE_EMPLOYEE'),
('kiril','ROLE_ADMIN');


