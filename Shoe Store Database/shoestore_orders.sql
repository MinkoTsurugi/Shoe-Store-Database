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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `orderMethod` varchar(45) NOT NULL,
  `orderTracking` varchar(45) NOT NULL,
  `orderAddress` varchar(45) NOT NULL,
  `orderCity` varchar(45) NOT NULL,
  `orderState` varchar(45) NOT NULL,
  `orderZip` varchar(45) NOT NULL,
  `Employee_employeeID` int DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `order_FK1` (`Employee_employeeID`),
  CONSTRAINT `order_FK1` FOREIGN KEY (`Employee_employeeID`) REFERENCES `employee` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=31093 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3001,'Standard','5135680','6443 Blair St','Portland','OR','99772',1001),(3002,'Express','4439901','4891 Swellroad Rd','Sacramento','CA','13209',1002),(3003,'Premium','0278117','01542 Ionway Blvd','Miami','FL','59836',1005),(3004,'Express','6383902','888 North Forest Ave','Memphis','TN','16432',1005),(3005,'Standard','5783043','32 Wayward St','Boston','MA','23900',1008),(3006,'Standard','2889303','666 Foster Rd','Atlanta','GA','54758',1006),(3007,'Premium','8579028','9135 Triton Ave','Tulsa','OK','50348',1003),(3008,'Premium','7389465','4 Forkson Alley','Boulder City','NV','72677',1008),(3009,'Express','3924823','82 Wilkson Blvd','Sioux Falls','SD','48952',1009),(3010,'Express','4730589','09123 Terry St','Kalamazoo','MN','57390',1010);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
