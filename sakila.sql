-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sakila
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `admin`
--
USE sakila;

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Last_Login` timestamp NULL DEFAULT NULL,
  `ID` varchar(38) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user_k` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (NULL,'1412');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit` (
  `Date_Of_Deposition` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID` varchar(38) NOT NULL,
  `Deposited_amount` int NOT NULL,
  `RUser_SSN` varchar(38) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RUser_SSN` (`RUser_SSN`),
  CONSTRAINT `deposit_ibfk_1` FOREIGN KEY (`RUser_SSN`) REFERENCES `regular_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit`
--

LOCK TABLES `deposit` WRITE;
/*!40000 ALTER TABLE `deposit` DISABLE KEYS */;
INSERT INTO `deposit` VALUES ('2024-04-29 04:07:51','0c2e38b9-05de-11ef-adb1-48ba4e4564fe',5000,'89167479-0198-11ef-b094-48ba4e4564fe'),('2024-05-01 22:30:03','5a890c8a-080a-11ef-812f-48ba4e4564fe',5000,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),('2024-04-29 02:38:06','82966124-05d1-11ef-adb1-48ba4e4564fe',10000,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('2024-04-28 15:27:49','deec1e62-0573-11ef-8bc5-48ba4e4564fe',1000,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('2024-04-28 15:42:19','e5f4e47b-0575-11ef-8bc5-48ba4e4564fe',19000,'5bee8bd4-0575-11ef-8bc5-48ba4e4564fe'),('2024-04-28 15:28:04','e8538111-0573-11ef-8bc5-48ba4e4564fe',10000,'98b31f5a-011f-11ef-b005-48ba4e4564fe');
/*!40000 ALTER TABLE `deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_k`
--

DROP TABLE IF EXISTS `order_k`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_k` (
  `ID` varchar(38) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(10) DEFAULT NULL,
  `Payment_Type` varchar(20) NOT NULL,
  `Total_Price` int NOT NULL,
  `buyer_ID` varchar(38) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `buyer_ID` (`buyer_ID`),
  CONSTRAINT `order_k_ibfk_1` FOREIGN KEY (`buyer_ID`) REFERENCES `regular_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_k`
--

LOCK TABLES `order_k` WRITE;
/*!40000 ALTER TABLE `order_k` DISABLE KEYS */;
INSERT INTO `order_k` VALUES ('011f8a4f-04e2-11ef-9092-48ba4e4564fe','2024-04-27 22:03:39',NULL,'Wallet',4100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('13a643ef-04e2-11ef-9092-48ba4e4564fe','2024-04-27 22:04:11',NULL,'Wallet',100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('1a7a3565-04e2-11ef-9092-48ba4e4564fe','2024-04-27 22:04:22',NULL,'Wallet',100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('1b02ca38-04e2-11ef-9092-48ba4e4564fe','2024-04-27 22:04:23',NULL,'Wallet',100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('1b680b2e-04e2-11ef-9092-48ba4e4564fe','2024-04-27 22:04:24',NULL,'Wallet',100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('1c2ed73c-0519-11ef-9092-48ba4e4564fe','2024-04-28 04:38:07',NULL,'Wallet',2100,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('2a493b52-05d2-11ef-adb1-48ba4e4564fe','2024-04-29 02:42:48',NULL,'Wallet',50,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('2a722a6f-0501-11ef-9092-48ba4e4564fe','2024-04-28 01:46:43',NULL,'Wallet',5614,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('2d2610a1-04ef-11ef-9092-48ba4e4564fe','2024-04-27 23:37:57',NULL,'Wallet',27876,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('346b066c-0519-11ef-9092-48ba4e4564fe','2024-04-28 04:38:48',NULL,'Wallet',400,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('3eab8f4a-080b-11ef-812f-48ba4e4564fe','2024-05-01 22:36:26',NULL,'Wallet',799,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),('43e417d4-05d3-11ef-adb1-48ba4e4564fe','2024-04-29 02:50:40',NULL,'Wallet',909,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('46eae060-058b-11ef-8bc5-48ba4e4564fe','2024-04-28 18:15:22',NULL,'Wallet',910,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('4754de65-04fa-11ef-9092-48ba4e4564fe','2024-04-28 00:57:25',NULL,'Wallet',1797,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('52609606-058a-11ef-8bc5-48ba4e4564fe','2024-04-28 18:08:31',NULL,'Wallet',899,'89167479-0198-11ef-b094-48ba4e4564fe'),('55cd7415-05d3-11ef-adb1-48ba4e4564fe','2024-04-29 02:51:10',NULL,'Wallet',909,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('56c6907f-07bc-11ef-812f-48ba4e4564fe','2024-05-01 13:11:36',NULL,'Wallet',599,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('5f948d54-0518-11ef-9092-48ba4e4564fe','2024-04-28 04:32:51',NULL,'Wallet',500,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('61c65066-05cf-11ef-adb1-48ba4e4564fe','2024-04-29 02:22:52',NULL,'Wallet',1399,'89167479-0198-11ef-b094-48ba4e4564fe'),('625f8ebd-05d1-11ef-adb1-48ba4e4564fe','2024-04-29 02:37:12',NULL,'Wallet',3897,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('6fe93892-0507-11ef-9092-48ba4e4564fe','2024-04-28 02:31:37',NULL,'Wallet',80,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('73838893-0507-11ef-9092-48ba4e4564fe','2024-04-28 02:31:43',NULL,'Wallet',0,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('749b4c26-04ed-11ef-9092-48ba4e4564fe','2024-04-27 23:25:38',NULL,'Wallet',1000,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('7e53fa55-080b-11ef-812f-48ba4e4564fe','2024-05-01 22:38:12',NULL,'Wallet',1,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),('7f84f019-0824-11ef-812f-48ba4e4564fe','2024-05-02 01:37:12',NULL,'Wallet',55550,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('847e301c-05dd-11ef-adb1-48ba4e4564fe','2024-04-29 04:04:04',NULL,'Wallet',1797,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('85aebe2e-0574-11ef-8bc5-48ba4e4564fe','2024-04-28 15:32:28',NULL,'Wallet',1600,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('87b0a2a3-04e1-11ef-9092-48ba4e4564fe','2024-04-27 22:00:16',NULL,'Wallet',4000,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('89c731a5-080a-11ef-812f-48ba4e4564fe','2024-05-01 22:31:22',NULL,'Wallet',100,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),('8c457a09-05cd-11ef-adb1-48ba4e4564fe','2024-04-29 02:09:45',NULL,'Wallet',698969,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('8f5c3fbb-04e5-11ef-9092-48ba4e4564fe','2024-04-27 22:29:07',NULL,'Wallet',2000,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('932a6f55-05dd-11ef-adb1-48ba4e4564fe','2024-04-29 04:04:28',NULL,'Wallet',100,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('97c16655-0575-11ef-8bc5-48ba4e4564fe','2024-04-28 15:40:08',NULL,'Wallet',4000,'5bee8bd4-0575-11ef-8bc5-48ba4e4564fe'),('9d3c2b28-0596-11ef-8bc5-48ba4e4564fe','2024-04-28 19:36:31',NULL,'Wallet',1,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('a04066d7-058b-11ef-8bc5-48ba4e4564fe','2024-04-28 18:17:51',NULL,'Wallet',6995,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('a1609bbb-04ed-11ef-9092-48ba4e4564fe','2024-04-27 23:26:53',NULL,'Wallet',0,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('b3d97432-04e3-11ef-9092-48ba4e4564fe','2024-04-27 22:15:49',NULL,'Wallet',100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('c2983c6a-080a-11ef-812f-48ba4e4564fe','2024-05-01 22:32:57',NULL,'Wallet',1000,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),('cea3b57c-04e1-11ef-9092-48ba4e4564fe','2024-04-27 22:02:15',NULL,'Wallet',4100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('d4f75821-0589-11ef-8bc5-48ba4e4564fe','2024-04-28 18:05:01',NULL,'Wallet',100,'89167479-0198-11ef-b094-48ba4e4564fe'),('d84bc9a8-04e2-11ef-9092-48ba4e4564fe','2024-04-27 22:09:40',NULL,'Wallet',100,'0de817ba-0295-11ef-a766-48ba4e4564fe'),('d8b6c1d1-05bf-11ef-adb1-48ba4e4564fe','2024-04-29 00:31:40',NULL,'Wallet',6100,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),('ea39ae76-080a-11ef-812f-48ba4e4564fe','2024-05-01 22:34:04',NULL,'Wallet',30099,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),('f24b551f-057c-11ef-8bc5-48ba4e4564fe','2024-04-28 16:32:47',NULL,'Wallet',4000,'89167479-0198-11ef-b094-48ba4e4564fe'),('f6fd39f0-0518-11ef-9092-48ba4e4564fe','2024-04-28 04:37:05',NULL,'Wallet',500,'98b31f5a-011f-11ef-b005-48ba4e4564fe');
/*!40000 ALTER TABLE `order_k` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `Quantity` int NOT NULL,
  `Order_ID` varchar(38) NOT NULL,
  `Product_ID` varchar(38) NOT NULL,
  PRIMARY KEY (`Order_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `order_k` (`ID`),
  CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (10,'011f8a4f-04e2-11ef-9092-48ba4e4564fe','4'),(10,'13a643ef-04e2-11ef-9092-48ba4e4564fe','4'),(10,'1a7a3565-04e2-11ef-9092-48ba4e4564fe','4'),(10,'1b02ca38-04e2-11ef-9092-48ba4e4564fe','4'),(10,'1b680b2e-04e2-11ef-9092-48ba4e4564fe','4'),(10,'1c2ed73c-0519-11ef-9092-48ba4e4564fe','4'),(5,'2a493b52-05d2-11ef-adb1-48ba4e4564fe','4'),(2,'2a722a6f-0501-11ef-9092-48ba4e4564fe','1'),(2,'2a722a6f-0501-11ef-9092-48ba4e4564fe','2'),(2,'2a722a6f-0501-11ef-9092-48ba4e4564fe','3'),(2,'2a722a6f-0501-11ef-9092-48ba4e4564fe','4'),(1,'3eab8f4a-080b-11ef-812f-48ba4e4564fe','5'),(1,'43e417d4-05d3-11ef-adb1-48ba4e4564fe','3'),(1,'43e417d4-05d3-11ef-adb1-48ba4e4564fe','4'),(1,'46eae060-058b-11ef-8bc5-48ba4e4564fe','4'),(3,'4754de65-04fa-11ef-9092-48ba4e4564fe','1'),(1,'52609606-058a-11ef-8bc5-48ba4e4564fe','3'),(1,'55cd7415-05d3-11ef-adb1-48ba4e4564fe','3'),(1,'55cd7415-05d3-11ef-adb1-48ba4e4564fe','4'),(1,'56c6907f-07bc-11ef-812f-48ba4e4564fe','1'),(1,'61c65066-05cf-11ef-adb1-48ba4e4564fe','6'),(3,'625f8ebd-05d1-11ef-adb1-48ba4e4564fe','2'),(8,'6fe93892-0507-11ef-9092-48ba4e4564fe','4'),(1,'7e53fa55-080b-11ef-812f-48ba4e4564fe','5496cf68-080b-11ef-812f-48ba4e4564fe'),(10,'7f84f019-0824-11ef-812f-48ba4e4564fe','28591be1-0824-11ef-812f-48ba4e4564fe'),(3,'847e301c-05dd-11ef-adb1-48ba4e4564fe','1'),(10,'89c731a5-080a-11ef-812f-48ba4e4564fe','4'),(10,'932a6f55-05dd-11ef-adb1-48ba4e4564fe','4'),(5,'a04066d7-058b-11ef-8bc5-48ba4e4564fe','6'),(10,'b3d97432-04e3-11ef-9092-48ba4e4564fe','4'),(10,'cea3b57c-04e1-11ef-9092-48ba4e4564fe','4'),(10,'d4f75821-0589-11ef-8bc5-48ba4e4564fe','4'),(10,'d84bc9a8-04e2-11ef-9092-48ba4e4564fe','4'),(2,'ea39ae76-080a-11ef-812f-48ba4e4564fe','8'),(1,'ea39ae76-080a-11ef-812f-48ba4e4564fe','9'),(1,'ea39ae76-080a-11ef-812f-48ba4e4564fe','e4e37f82-04ca-11ef-9092-48ba4e4564fe');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Name` varchar(50) NOT NULL,
  `ID` varchar(38) NOT NULL,
  `Brand` varchar(30) DEFAULT NULL,
  `Specification` varchar(600) DEFAULT NULL,
  `Available_Quantity` int NOT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Description` varchar(600) DEFAULT NULL,
  `Price` int NOT NULL,
  `Seller_ID` varchar(38) NOT NULL,
  `Image` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Seller_ID` (`Seller_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Seller_ID`) REFERENCES `regular_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES 
('Laptop Pro 15','1','Dell','15.6" FHD, Intel i7, 16GB RAM, 512GB SSD',50,'Laptops','High-performance laptop for professionals',1200,'0de817ba-0295-11ef-a766-48ba4e4564fe','https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/inspiron-notebooks/15-3530-intel/media-gallery/black/notebook-inspiron-15-3530-nt-plastic-black-gallery-2.psd?fmt=png-alpha&pscan=auto&scl=1&hei=402&wid=606&qlt=100,1&resMode=sharp2&size=606,402&chrss=full'),
('Wireless Mouse','2','Logitech','Ergonomic design, 2.4GHz wireless',200,'Accessories','Comfortable wireless mouse',25,'89167479-0198-11ef-b094-48ba4e4564fe','https://m.media-amazon.com/images/I/5181UFuvoBL._AC_SL1500_.jpg'),
('4K Smart TV','3','Samsung','55" 4K UHD, HDR, Smart OS',30,'Electronics','Immersive viewing experience',699,'98b31f5a-011f-11ef-b005-48ba4e4564fe','https://btech.com/media/catalog/product/cache/22b1bed05f04d71c4a848d770186c3c4/g/u/gu43du7179uxzg_006_front2_black_4.webp'),
('Bluetooth Speaker','4','JBL','Portable, 20W output, IPX7 waterproof',100,'Audio','Waterproof outdoor speaker',89,'5bee8bd4-0575-11ef-8bc5-48ba4e4564fe','https://www.jbl.com/dw/image/v2/BFND_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw483cf18b/JBL_FLIP_7_HERO_BLUE_079_x1.png?sw=300&sh=300'),
('Mechanical Keyboard','5','Razer','RGB backlight, Cherry MX switches',75,'Accessories','Gaming-grade keyboard',150,'0de817ba-0295-11ef-a766-48ba4e4564fe','https://m.media-amazon.com/images/I/815XJdl7fXL._SX522_.jpg'),
('Running Shoes','6','Nike','Size 10, Breathable mesh',500,'Footwear','Lightweight running shoes',110,'98b31f5a-011f-11ef-b005-48ba4e4564fe','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/9b6f6f1d-56bb-4c94-bb15-d24da76f606f/NIKE+VOMERO+18.png'),
('Wireless Earbuds','7','Apple','AirPods Pro, Noise cancellation',200,'Audio','Premium sound quality',249,'89167479-0198-11ef-b094-48ba4e4564fe','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSfOve5Hp190zaGQgArbp1ROh3oW0AIvluxYsBCQXQtr60ssJ1LwLaGhjdMAjBZLZnNaLkiQi9AxfFkqWogMCXP57M3rmJY3_O4eoguEymRcqWIKtLClcrgjCxNyw-ij5mWZCdI_A&usqp=CAc'),
('Gaming Monitor','8','ASUS','27" 144Hz, 1ms response',45,'Electronics','Smooth gaming display',299,'0de817ba-0295-11ef-a766-48ba4e4564fe','https://dlcdnwebimgs.asus.com/gain/9a728e58-d03d-4ac9-8ea3-1ddf87dea8a7/w692'),
('Yoga Mat','9','Adidas','Eco-friendly, 6mm thickness',300,'Fitness','Non-slip yoga mat',35,'5bee8bd4-0575-11ef-8bc5-48ba4e4564fe','https://m.media-amazon.com/images/I/81-vE-h4HPL._AC_SX679_.jpg'),
('Backpack','10','Samsonite','Water-resistant, 30L capacity',150,'Accessories','Durable travel backpack',75,'98b31f5a-011f-11ef-b005-48ba4e4564fe','https://shop.samsonite.com/dw/image/v2/BBZB_PRD/on/demandware.static/-/Sites-product-catalog/default/dwb75c76b1/collections/_samsonite/Elevation/500x500/147935-1549-FRONT34.jpg?sw=912&sh=912'),
('Electric Kettle','11','Philips','1.7L, Auto-shutoff',80,'Kitchen','Fast-boiling kettle',45,'89167479-0198-11ef-b094-48ba4e4564fe','https://m.media-amazon.com/images/I/61nnFg77WlL._AC_SX679_.jpg'),
('Smartwatch','12','Garmin','Heart rate monitor, GPS',120,'Wearables','Fitness tracking smartwatch',199,'0de817ba-0295-11ef-a766-48ba4e4564fe','https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTs0PBlt4TKpSaQYON0mie03rdSZmiUxtzmip4l67fXxq5PTx6MW_QqvmgLrn7vng_ZjhN1CI4uYSTtwZ9JloI4vQ4AUaOwsXfhZOV2w36nAeQFPafL01vN49QUbzIdfB4C4Hmtbg&usqp=CAc');/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `Image` varbinary(65000) NOT NULL,
  `Product_ID` varchar(38) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review` (
  `Rating` int NOT NULL,
  `Comment` varchar(200) NOT NULL,
  `Product_ID` varchar(38) NOT NULL,
  PRIMARY KEY (`Rating`,`Comment`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regular_user`
--

DROP TABLE IF EXISTS `regular_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regular_user` (
  `Birth_Date` date DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Street` varchar(30) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Phone_Number` varchar(16) DEFAULT NULL,
  `Country` varchar(16) DEFAULT NULL,
  `Balance` int NOT NULL DEFAULT '0',
  `ID` varchar(38) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `regular_user_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user_k` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regular_user`
--

LOCK TABLES `regular_user` WRITE;
/*!40000 ALTER TABLE `regular_user` DISABLE KEYS */;
INSERT INTO `regular_user` VALUES (NULL,NULL,NULL,NULL,NULL,NULL,37820,'0de817ba-0295-11ef-a766-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,4099,'2bb69e53-080a-11ef-812f-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,100,'537ffdee-01c2-11ef-b094-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,19100,'5bee8bd4-0575-11ef-8bc5-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,100,'5f0e12cd-018b-11ef-b094-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,14391,'89167479-0198-11ef-b094-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,164239,'98b31f5a-011f-11ef-b005-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,600,'b19b4a22-0366-11ef-b74b-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,100,'cb8d6d8d-01dd-11ef-b094-48ba4e4564fe'),(NULL,NULL,NULL,NULL,NULL,NULL,19100,'eb225339-0423-11ef-adc8-48ba4e4564fe');
/*!40000 ALTER TABLE `regular_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_k`
--

DROP TABLE IF EXISTS `user_k`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_k` (
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `ID` varchar(38) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_k`
--

LOCK TABLES `user_k` WRITE;
/*!40000 ALTER TABLE `user_k` DISABLE KEYS */;
INSERT INTO `user_k` VALUES ('lmao','lmao','123','0de817ba-0295-11ef-a766-48ba4e4564fe','lmao@gmail.com'),('admin','admin','admin','1412','admin@admin.com'),('ahmed','khaled','123','2bb69e53-080a-11ef-812f-48ba4e4564fe','ahmedkhaled@hotmail.com'),('undefined','undefined','undefined','537ffdee-01c2-11ef-b094-48ba4e4564fe','undefined'),('saleh','khodair','1234567890','5bee8bd4-0575-11ef-8bc5-48ba4e4564fe','salehkhodier1@gmail.com'),('os','os','123','5f0e12cd-018b-11ef-b094-48ba4e4564fe','os@gmail.com'),('abdallah','محنك','123','89167479-0198-11ef-b094-48ba4e4564fe','m7nk@gmail.com'),('Shawky','Shawky','123','98b31f5a-011f-11ef-b005-48ba4e4564fe','shawky@gmail.com'),('bakr','bakr','123','b19b4a22-0366-11ef-b74b-48ba4e4564fe','bakr@gmail.com'),('xy','xy','123','cb8d6d8d-01dd-11ef-b094-48ba4e4564fe','xy@gmail.com'),('omar','saleh','123','eb225339-0423-11ef-adc8-48ba4e4564fe','os@yahoo.com');
/*!40000 ALTER TABLE `user_k` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03  0:19:59
