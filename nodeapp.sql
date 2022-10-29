-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (arm64)
--
-- Host: localhost    Database: nodeapp
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `description` longtext,
  `stock` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Small size tornado potato','30 cm long tornado-shaped fries with a choice of flavors: salty, cheese, grilled corn, BBQ, balado, roast beef with choice of sauce: cheese, mayonnaise, tomato, chili',50,7000),(2,'Big size tornado potato','40 cm long tornado-shaped fries with a choice of flavors: salty, cheese, grilled corn, BBQ, balado, roast beef with choice of sauce: cheese, mayonnaise, tomato, chili',48,10000),(3,'Kuch2 Hotahu for SIngle','Fried Tofu with a choise of sauce: Balado, BBQ, Cheese, Pizza, Black Pepper, Sea Weed',49,7000),(4,'Kuch2 Hotahu for Couple','Big Size Fried Tofu enough for two, with a choise of sauce: Balado, BBQ, Cheese, Pizza, Black Pepper, Sea Weed',30,10000),(5,'Red Velvet Greentea Milk','Milk drinks added with secret syrup with redvelvet and greentea flavors',34,12000),(6,'Greentea Choco Milk','Milk drinks added with secret syrup with greentea flavors',33,12000),(7,'Hazelnut Milk','Milk drinks added with secret syrup with hazelnut flavors',40,10000),(8,'Chocolate filled Mini Sweet Martabak Pancake','Mini street martabak filled with chocolate',38,5000),(9,'Cheese filled Mini Sweet Martabak Pancake','Mini street martabak filled with cheese',43,5000),(10,'Crystal Guava','A Crystal Guava Fruit with a choise of seasoning powder: chilli, sweet & salty',47,10000),(11,'Gudeg Rice with Boiled Egg','A traditional meals called gudeg from Jogja, one of state in Indonesia.',24,15000),(12,'Gudeg Rice with Chicken','A traditional meals called gudeg from Jogja, one of state in Indonesia.',28,20000),(13,'Sroto / Soto Sokaraja','It is a soto with chilli peanut sauce. Sokaraja cuisine',41,15000),(14,'Black Coffee','Fresh black coffee made by skilled baristas',47,10000),(15,'Ginger Coffee','fresh black coffee mixed with ginger made by skilled baristas',28,12000),(16,'Fresh Orange','Fresh orang juice made from real organic orange',34,8000),(17,'Fresh Lemon','Fresh lemon juice made from real organic lemon',9,8000),(18,'Kupat Tofu (Kupat Tahu)','Fried tofu mixed with soybean sprouts and ketupat topped by delicious peanut sauce',31,15000),(19,'Ice Doger Goyobod','Indonesian coconut milk-based shaved ice beverage with pinkish color often served as a dessert.',23,10000),(20,'Mix Fruit (Rujak)','Salad dish of Javanese origin, commonly found in Indonesia, Malaysia and Singapore. Mix fruit topped with spicy peanut sauce',43,10000),(21,'Seblak','Sundanese savoury and spicy dish, originating from West Java, Indonesia. Made of wet krupuk cooked with protein sources in spicy sauce. ',30,12000),(22,'Fried Chicken (Breast)','It is a dish consisting of chicken pieces (breast) that have been coated with seasoned flour or batter and deep fried.',40,8000),(23,'Fried Chicken (Thigh)','It is a dish consisting of chicken pieces (thigh) that have been coated with seasoned flour or batter and deep fried.',31,7000),(24,'Egg Roll (Telor Gulung)','Deep fried egg roll that is rolled in a stick, served with chilli sauce and mayonaise',22,5000),(25,'Avocado Shake','A drink made with shaked avocado served with chocolate / cheese topping',28,5000),(26,'Durian Shake','A drink made with shaked durian served with chocolate / cheese topping',29,5000),(27,'Mix Avocado Durian','A drink made with mixed shaked durian adn avocado served with chocolate / cheese topping',45,8000),(28,'Cassava','Deep fried cassava topped with grated cheese',45,7000),(29,'1 Porsion Meatball','3 meatball sticks topped with sauce of your choise: chilli sauce, BBQ sauce, mayonaise',46,5000),(30,'2 Portion Meatballs','6 meatball sticks topped with sauce of your choise: chilli sauce, BBQ sauce, mayonaise',47,9000),(31,'Kojo Spring Roll','Indonesian sprint roll made with bamboo shoots and sprouts',48,13000),(32,'Iced Cappucino Cincau','An iced cup of cappucino served with cincau as its topping',11,6000),(33,'Iced Cappucino Cincau with Bubble and Cheese','An iced cup of cappucino served with cincau, cubble, and cheese as its topping',22,10000),(34,'Aci Cirambay','A spicy and savory food from Garut, perfect for snack',16,8000),(35,'Arcamanik Spring Roll','Indonesian sprint roll made with bamboo shoots and sprouts',48,15000),(36,'Iced Coconut','An iced beverage made from coconut water ',47,8000),(37,'Iced Green Banana','A dessert from Makassar. Made of green banana with ice and syrup',33,10000),(38,'Savory Noodle Stick','Noodles that are fried and shaped like sticks, topped with savory powder',19,21000),(39,'Spicy Noodle Stick','Noodles that are fried and shaped like sticks , topped with chilli powser',12,21000),(40,'Cilor','Combination of aci and egg, deep fried, and then served with sauce',10,10000),(41,'Macaroni','A deep fried macaroni, a local snacks from Bandung',6,10000),(42,'Cilung','A rolled Aci',43,10000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-30  6:04:23
