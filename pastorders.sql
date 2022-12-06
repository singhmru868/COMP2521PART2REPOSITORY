CREATE TABLE `pastorders` (
  `orderID` int NOT NULL,
  `pizza` varchar(45) NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci