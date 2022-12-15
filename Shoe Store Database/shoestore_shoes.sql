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
-- Table structure for table `shoes`
--

DROP TABLE IF EXISTS `shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoes` (
  `ShoeID` int NOT NULL AUTO_INCREMENT,
  `ShoeName` varchar(45) NOT NULL,
  `ShoeSize` varchar(45) NOT NULL,
  `ShoeGender` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `ShoeType` varchar(45) NOT NULL,
  `ShoeBrand` varchar(45) NOT NULL,
  `inventory_productID` int DEFAULT NULL,
  PRIMARY KEY (`ShoeID`),
  KEY `shoes_FK1` (`inventory_productID`) /*!80000 INVISIBLE */,
  CONSTRAINT `shoes_FK1` FOREIGN KEY (`inventory_productID`) REFERENCES `inventory` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=5011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoes`
--

LOCK TABLES `shoes` WRITE;
/*!40000 ALTER TABLE `shoes` DISABLE KEYS */;
INSERT INTO `shoes` VALUES (5001,'Fusion Black','11.5','Men','29.93','Sneaker','ECCO',5001),(5002,'Kelimae Faux','11','Women','129.99','Flat','Style & Co.',5002),(5003,'Chelsea Beige','12','Men','39.95','Boot','Steve Madden',5003),(5004,'Flex Tavil','6','Women','19.96','Mid-Heel','INC International Concepts',5004),(5005,'Flex Tavil','8.5','Women','19.96','Mid-Heel','INC International Concepts',5004),(5006,'Fusion Black','8','Men','19.96','Sneaker','ECCO',5001),(5007,'Eureka Brown','12','Men','24.99','Slip-On','Rockport',5007),(5008,'Natural Designer','7','Men','79.99','Sneaker','Michael Kors',5008),(5009,'Kelimae Faux','10','Women','129.99','Flat','Alfani',5009),(5010,'Traditional White','9','Women','29.93','Sport','Club Room',5010);
/*!40000 ALTER TABLE `shoes` ENABLE KEYS */;
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
