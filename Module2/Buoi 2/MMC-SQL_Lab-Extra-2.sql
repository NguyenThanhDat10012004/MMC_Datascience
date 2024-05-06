CREATE DATABASE  IF NOT EXISTS `hr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hr`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hr
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DEPT_ID_DEP` char(9) NOT NULL,
  `DEP_NAME` varchar(15) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `LOC_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID_DEP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('2','Architect Group','30001','L0001'),('5','Software Group','30002','L0002'),('7','Design Team','30003','L0003');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EMP_ID` char(9) NOT NULL,
  `F_NAME` varchar(15) NOT NULL,
  `L_NAME` varchar(15) NOT NULL,
  `SSN` char(9) DEFAULT NULL,
  `B_DATE` date DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `JOB_ID` char(9) DEFAULT NULL,
  `SALARY` decimal(10,2) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `DEP_ID` char(9) NOT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('E1001','John','Thomas','123456','1976-01-09','M','5631 Rice, OakPark,IL','100',100000.00,'30001','2'),('E1002','Alice','James','123457','1972-07-31','F','980 Berry ln, Elgin,IL','200',80000.00,'30002','5'),('E1003','Steve','Wells','123458','1980-08-10','M','291 Springs, Gary,IL','300',50000.00,'30002','5'),('E1004','Santosh','Kumar','123459','1985-07-20','M','511 Aurora Av, Aurora,IL','400',60000.00,'30004','5'),('E1005','Ahmed','Hussain','123410','1981-01-04','M','216 Oak Tree, Geneva,IL','500',70000.00,'30001','2'),('E1006','Nancy','Allen','123411','1978-02-06','F','111 Green Pl, Elgin,IL','600',90000.00,'30001','2'),('E1007','Mary','Thomas','123412','1975-05-05','F','100 Rose Pl, Gary,IL','650',65000.00,'30003','7'),('E1008','Bharath','Gupta','123413','1985-05-06','M','145 Berry Ln, Naperville,IL','660',65000.00,'30003','7'),('E1009','Andrea','Jones','123414','1990-07-09','F','120 Fall Creek, Gary,IL','234',70000.00,'30003','7'),('E1010','Ann','Jacob','123415','1982-03-30','F','111 Britany Springs,Elgin,IL','220',70000.00,'30004','5');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_history`
--

DROP TABLE IF EXISTS `job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_history` (
  `EMPL_ID` char(9) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `JOBS_ID` char(9) NOT NULL,
  `DEPT_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`EMPL_ID`,`JOBS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_history`
--

LOCK TABLES `job_history` WRITE;
/*!40000 ALTER TABLE `job_history` DISABLE KEYS */;
INSERT INTO `job_history` VALUES ('E1001','2000-08-01','100','2'),('E1002','2001-08-01','200','5'),('E1003','2001-08-16','300','5'),('E1004','2000-08-16','400','5'),('E1005','2000-05-30','500','2'),('E1006','2001-08-16','600','2'),('E1007','2002-05-30','650','7'),('E1008','2010-05-06','660','7'),('E1009','2016-08-16','234','7'),('E1010','2016-08-16','220','5');
/*!40000 ALTER TABLE `job_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `JOB_IDENT` char(9) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL,
  `MIN_SALARY` decimal(10,2) DEFAULT NULL,
  `MAX_SALARY` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`JOB_IDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('100','Sr. Architect',60000.00,100000.00),('200','Sr. Software Developer',60000.00,80000.00),('220','Sr. Designer',70000.00,90000.00),('234','Sr. Designer',70000.00,90000.00),('300','Jr.Software Developer',40000.00,60000.00),('400','Jr.Software Developer',40000.00,60000.00),('500','Jr. Architect',50000.00,70000.00),('600','Lead Architect',70000.00,100000.00),('650','Jr. Designer',60000.00,70000.00),('660','Jr. Designer',60000.00,70000.00);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `LOCT_ID` char(9) NOT NULL,
  `DEP_ID_LOC` char(9) NOT NULL,
  PRIMARY KEY (`LOCT_ID`,`DEP_ID_LOC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('L0001','2'),('L0002','5'),('L0003','7');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 21:36:11
