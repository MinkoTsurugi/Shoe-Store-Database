-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shoestore
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeID` int NOT NULL AUTO_INCREMENT,
  `employeeFirstName` varchar(45) NOT NULL,
  `employeeLastName` varchar(45) NOT NULL,
  `employeeAddress` varchar(45) NOT NULL,
  `employeeCity` varchar(45) NOT NULL,
  `employeeState` varchar(45) NOT NULL,
  `employeeZip` varchar(45) NOT NULL,
  `employeePhone` varchar(45) NOT NULL,
  `employeeEmail` varchar(45) NOT NULL,
  `employeeSalesRecord` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1001,'Eric','Langston','2348 South Forest Ave','Memphis','TN','38451','956-221-6653','elangston@yahoo.com','13'),(1002,'Lisa','Behkhad','4891 Swellroad Rd','San Jose','CA','13209','801-734-1209','lbehkhad@gmail.com','41'),(1003,'Faroz','Doroodi','112 Seventh Space','Denver','CO','44521','795-666-2411','fdoroodi@outlook.com','87'),(1004,'Sara','Abdolahi','6675 Bristol St','New England','MA','23049','499-122-6598','sAbdolahi@hotmail.com','55'),(1005,'Long','Johnson','16 Piano Dr','Narrangsnett Bay','RI','09244','884-449-0022','lJohnson@gmail.com','26'),(1006,'Gina','Langston','224 Restland Rd','New Orleans','LA','83392','198-489-3554','gLangston@outlook.com','34'),(1007,'Ron','Oakely','001 Cleave Ave','New England','MA','11983','839-012-4893','rOakley@yahoo.com','9'),(1008,'Marina','Diaz','84930 Darsik Blvd','Alberquerque','NM','76428','921-842-3820','mDiaz@hotmail.com','62'),(1009,'Wyatt','Mason','7739 Highland Dr','Miami','FL','37394','754-893-4549','wMason@gmail.com','98'),(1010,'Shakila','Dariush','8490 South Forest Ave','Dallas','TX','55679','928-493-9219','sDariush@outlook.com','79');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 19:49:24
