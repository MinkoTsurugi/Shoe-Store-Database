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
-- Table structure for table `order_has_shoes`
--

DROP TABLE IF EXISTS `order_has_shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_has_shoes` (
  `shoes_shoesID` int NOT NULL,
  `Order_orderID` int NOT NULL,
  `Order_Employee_employeeID` int DEFAULT NULL,
  PRIMARY KEY (`Order_orderID`,`shoes_shoesID`),
  KEY `order_has_shoes_FK2` (`Order_orderID`),
  KEY `order_has_shoes_FK3` (`Order_Employee_employeeID`) /*!80000 INVISIBLE */,
  KEY `order_has_shoes_FK1` (`shoes_shoesID`),
  CONSTRAINT `order_has_shoes_FK1` FOREIGN KEY (`shoes_shoesID`) REFERENCES `shoes` (`ShoeID`),
  CONSTRAINT `order_has_shoes_FK2` FOREIGN KEY (`Order_orderID`) REFERENCES `orders` (`orderID`),
  CONSTRAINT `order_has_shoes_FK3` FOREIGN KEY (`Order_Employee_employeeID`) REFERENCES `orders` (`Employee_employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_has_shoes`
--

LOCK TABLES `order_has_shoes` WRITE;
/*!40000 ALTER TABLE `order_has_shoes` DISABLE KEYS */;
INSERT INTO `order_has_shoes` VALUES (5008,3001,1001),(5002,3002,1002),(5001,3003,1005),(5005,3004,1005),(5004,3005,1008),(5003,3006,1006),(5007,3007,1003),(5006,3008,1008),(5009,3009,1009),(5010,3010,1010);
/*!40000 ALTER TABLE `order_has_shoes` ENABLE KEYS */;
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
