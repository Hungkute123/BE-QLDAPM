-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_fahasa
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `IDBook` int NOT NULL AUTO_INCREMENT,
  `IDProduct` varchar(100) DEFAULT NULL,
  `Author` varchar(200) DEFAULT NULL,
  `IDSupplier` varchar(500) DEFAULT NULL,
  `IDPublisher` varchar(500) DEFAULT NULL,
  `CoverForm` varchar(100) DEFAULT NULL,
  `Translator` varchar(100) DEFAULT NULL,
  `PublishingYear` int DEFAULT NULL,
  `NumberOfPage` int DEFAULT NULL,
  PRIMARY KEY (`IDBook`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'3300000002736','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Mềm','',2000,600),(2,'8934974174530','Hitoshi Iwaaki','1','1','Bìa Mềm','',2021,60),(3,'8935230000594','Nhiều Tác Giả','1','1','Bìa Mềm','',2021,350),(4,'8935244859829','Masashi Kishimoto','1','1','Bìa Mềm','Vương Bảo Long',2021,200),(5,'8935278602286','Philippa Gregory','1','1','Bìa Mềm','Hitokiri',2021,620),(6,'8935278603191','Don M Green','1','1','Bìa Mềm','',2021,300),(7,'9786049609688','Nancy Cato','1','1','Bìa Mềm','',2018,600),(8,'3300000001746','Nhiều Tác Giả','1','1','Bìa Mềm','Trương Võ Anh Giang, Anh Trần',2018,1978),(9,'3300000004099','Nhiều Tác Giả','1','1','Bìa Mềm','',2021,1000),(10,'3300000004150','Nhiều Tác Giả','1','1','Bìa Mềm','',2021,2000),(11,'3300000006079','Hikaru Nakamura','1','1','Bìa Mềm','Liên Vũ',2021,200),(12,'8935244859768','Takaya Kagami, Yamato Yamamoto, Daisuke Furuya','1','1','Bìa Mềm','Ukatomai',2021,200),(13,'8935278602606','Stu Heinecke','1','1','Bìa Mềm','',2021,400),(14,'9786045469705','Lưu Thị Kim Nhung','1','1','Bìa Mềm','',2020,68),(15,'8935235226272','Paulo Coelho','1','1','Bìa Mềm','Lê Chu Cầu',2020,227),(16,'8935235228351','José Mauro de Vasconcelos','1','1','Bìa Mềm','Nguyễn Bích Lan, Tô Yến Ly',2020,244),(17,'8935325000980','Khotudien','1','1','Bìa Mềm','',2021,280),(18,'8935244848335','Tô Hoài','1','1','Bìa Cứng','',2020,136),(19,'8936072917248','	Thùy Dương, Như Quỳnh','1','1','Bìa Mềm',NULL,2020,152),(20,'8935244858433','Takaya Kagami, Yamato Yamamoto, Daisuke Furuya','1','1','Bìa Mềm','Ukatomai',2021,192),(21,'3300000001074','	Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Mềm','',2021,100),(22,'9786040237712','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Mềm','',2020,63),(23,'3300000002866','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Mềm','',2021,167),(24,'3300000000954','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Mềm','',2020,100),(25,'3300000001401','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Mềm','',2021,127),(26,'9786040234810','Nhiều Tác Giả','1','1','Bìa Mềm','',2021,71),(27,'8936067590890','Nguyễn Thị Hương Giang','1','1','Bìa Mềm','',2020,23),(28,'8938507001386','Nguyễn Thị Hương Giang','1','1','Bìa Mềm','',2021,33),(29,'8936067599275','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Cứng','',2021,33),(30,'8934978513151','Bộ Giáo Dục Và Đào Tạo','1','1','Bìa Cứng','',2021,23),(31,'8935210250551','	Nhiều Tác Giả','1','1','Bìa Cứng',NULL,2020,23),(32,'8935212333696','	Nhiều Tác Giả','1','1','Bìa Cứng','',2017,50),(33,'8935095623709','Nhiều Tác Giả','1','1','Bìa Mềm','',2018,157),(34,'8935236420556','Nhiều Tác Giả','1','1','Bìa Mềm','',2015,121),(35,'1116090011532','Jeff Kinney','1','1','Bìa Mềm','',2012,216),(36,'8935236420501','Trình Dục Hoa, Trương Du','1','1','Bìa Mềm','',2020,643),(37,'8935235221734','Nhiều Tác Giả','1','1','Bìa Mềm','',2020,422),(42,'1640247218521ocz','Nhiều Tác Giả','1','1','Bìa Mềm','Nguyễn Đình Hùng',2019,2000);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryproduct`
--

DROP TABLE IF EXISTS `categoryproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryproduct` (
  `IDCategory` int NOT NULL AUTO_INCREMENT,
  `IDParent` int DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IDCategory`),
  KEY `FK_parent_id` (`IDParent`),
  CONSTRAINT `FK_parent_id` FOREIGN KEY (`IDParent`) REFERENCES `categoryproduct` (`IDCategory`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryproduct`
--

LOCK TABLES `categoryproduct` WRITE;
/*!40000 ALTER TABLE `categoryproduct` DISABLE KEYS */;
INSERT INTO `categoryproduct` VALUES (1,0,'Sách Trong Nước'),(2,0,'FOREIGN BOOKS'),(3,0,'VPP - Dụng Cụ Học Sinh'),(4,0,'Đồ Chơi'),(5,0,'Làm Đẹp - Sức Khỏe'),(6,0,'Hành Trang Đến Trường'),(7,0,'VPP - DCHS Theo Thương Hiệu'),(8,0,'Đồ Chơi Theo Thương Hiệu'),(9,0,'Bách Hóa Online - Lưu Niệm'),(10,1,'Văn Học'),(11,1,'Kinh Tế'),(12,1,'Tâm Lý - Kỹ Năng Sống'),(13,1,'Nuôi Dạy con'),(14,1,'Sách Thiếu Nhi'),(15,1,'Tiểu Sử - Hồi Ký'),(16,1,'Giáo Khoa - Tham Khảo'),(17,1,'Sách Học Ngoại Ngữ'),(18,2,'Fiction'),(19,2,'Business & Management'),(20,2,'Personal Development'),(21,2,'Children\'s Books'),(22,2,'Dictionaries & Languages'),(23,2,'Other Languages'),(24,2,'Other Categories'),(25,3,'Bút - Viết'),(26,3,'Dụng Cụ Học Sinh'),(27,3,'Dụng Cụ Văn Phòng'),(28,3,'Dụng Cụ Vẽ'),(29,3,'Sản Phẩm Về Giấy'),(30,3,'Sản Phẩm Khác'),(31,3,'Sản Phẩm Điện Tử'),(32,3,'Sản Phẩm Mới'),(33,10,'Tiểu Thuyết'),(34,10,'Truyện Ngắn - Tản Văn'),(35,10,'Light Novel'),(36,10,'Ngôn Tình'),(37,10,'Trinh Thám'),(38,10,'Truyện Ma'),(39,11,'Nhân Vật - Bài Học Kinh Doanh'),(40,11,'Quản Trị - Lãnh Đạo'),(41,11,'Marketing - Bán Hàng'),(42,11,'Phân Tích Kinh Tế'),(43,12,'Kỹ Năng Sống'),(44,12,'Rèn Luyện Nhân Cách'),(45,12,'Tâm Lý'),(46,12,'Sách Cho Tuổi Mới Lớn'),(47,11,'Tài Chính - Ngân Hàng'),(48,12,'Chicken Soup - Hạt Giống Tâm Hồn'),(49,13,'Cẩm Nang Làm Cha Mẹ'),(50,13,'Phương Pháp Giáo Dục Trẻ Các Nước'),(51,13,'Phát Triển Trí Tuệ Cho Trẻ'),(52,13,'Phát Triển Kỹ Năng Cho Trẻ'),(53,13,'Giáo Dục Trẻ Tuổi Teen'),(54,14,'Manga - Comic'),(55,14,'Kiến Thức Bách Khoa'),(56,14,'Sách Tranh Kỹ Năng Sống Cho Trẻ'),(57,14,'Vừa Học - Vừa Học Vừa Chơi Với Trẻ'),(58,14,'Từ Điển Thiếu Nhi'),(59,15,'Câu Chuyện Cuộc Đời'),(60,15,'Chính Trị'),(61,15,'Kinh Tế'),(62,15,'Nghệ Thuật - Giải Trí'),(63,15,'Thể Thao'),(64,16,'Sách Giáo Khoa'),(65,16,'Sách Tham Khảo'),(66,16,'Luyện thi ĐH, CĐ'),(67,16,'Mẫu Giáo'),(68,16,'Đại Học'),(69,17,'Tiếng Anh'),(70,17,'Tiếng Nhật'),(71,17,'Tiếng Hoa'),(72,17,'Tiếng Hàn'),(73,17,'Tiếng Pháp'),(74,5,'Làm Đẹp - Sức Khỏe'),(75,74,'Khẩu Trang'),(76,74,'Các Loại Nước Rửa Tay - Xà Phòng'),(77,74,'Băng Keo Cá Nhân'),(78,74,'Khăn Giấy - Giấy Ướt'),(79,74,'Chăm Sóc Cá Nhân Khác '),(80,74,'Sản Phẩm Làm Đẹp'),(81,18,'Contemporary Fiction'),(82,18,'Romance'),(83,18,'Fantasy'),(84,18,'Classics'),(85,19,'Business & Management'),(86,19,'Economics'),(87,19,'Finance & Accounting'),(88,20,'Popular Psychology'),(89,20,'Advice On Careers & Achieving Success'),(90,20,'Personal Finance'),(91,21,'Picture & Activity Books'),(92,21,'Fiction (For Kids & Teen)'),(93,21,'Education'),(94,21,'Non-Fiction'),(95,22,'ELT: Learning Material & Coursework'),(96,22,'ELT: English For Specific Purposes'),(97,22,'Dictionaries'),(98,23,'Japanese Books'),(99,23,'German Books'),(100,23,'French Books'),(101,24,'Biography'),(102,24,'Society & Social Sciences'),(103,24,'Science & Geography'),(104,24,'Food & Drink'),(105,25,'Bút Bi - Ruột Bút Bi'),(106,25,'Bút Gel - Bút Nước'),(107,25,'Bút Mực - Bút Máy'),(108,25,'Bút Dạ Quang'),(109,25,'Bút Chì - Ruột Bút Chì'),(110,26,'Gôm - Tẩy'),(111,26,'Gọt Bút Chì'),(112,26,'Thước'),(113,26,'Bóp Viết - Hộp Bút'),(114,26,'Bộ Dụng Cụ Học Tập'),(115,27,'Bìa - File Hồ Sơ'),(116,27,'Kẹp Giấy - Kẹp Bướm'),(117,27,'Đồ Bấm Kim - Kim Bấm - Gỡ Kim'),(118,27,'Cắm Bút - Bảng Tên'),(119,28,'Bút Vẽ'),(120,28,'Màu Vẽ'),(121,28,'Khay - Cọ Vẽ'),(122,28,'Tập Vẽ - Giấy Vẽ'),(123,29,'Tập - Vở'),(124,29,'Sổ Tay Các Loại'),(125,29,'Giấy Photo'),(126,29,'Giấy Note'),(127,30,'Dao Rọc Giấy - Lưỡi Dao Rọc Giấy - Kéo'),(128,30,'Băng Keo - Cắt Băng Keo'),(129,30,'Bút Xóa Nước - Xóa Kéo'),(130,30,'Hồ Dán'),(131,31,'Máy Tính Điện Tử'),(132,4,'Đồ Chơi Nổi Bật'),(133,4,'Phương Tiện Các Loại'),(134,4,'Mô Hình Các Loại'),(135,4,'Đồ chơi theo phim'),(136,4,'Đồ Chơi Khác'),(137,132,'Xếp Hình - Lắp Ghép'),(138,132,'Đồ Chơi Giáo Dục'),(139,132,'Đồ Chơi Điều Khiển'),(140,132,'Board Game'),(141,133,'Ô Tô'),(142,133,'Máy Bay'),(143,133,'Tàu Hỏa'),(144,133,'Tàu Thủy'),(145,133,'Phương Tiện Khác'),(146,134,'Mô Hình Giấy'),(147,134,'Mô Hình Gỗ'),(148,134,'Mô Hình Nhân Vật'),(149,134,'Mô Hình Động Vật'),(150,135,'My Little Pony'),(151,135,'Paw Patrol'),(152,135,'Super Wings'),(153,135,'Chiến Thần Vô Cực - NADO'),(154,136,'Bột Nặn - Cát Nặn'),(155,136,'Búp Bê'),(156,136,'Thú Bông'),(157,136,'Hướng Nghiệp Nhập Vai'),(158,6,'Sách Giáo Khoa'),(159,6,'Sách Tham Khảo'),(160,6,'Luyện Thi THPTQG - Lớp 12'),(161,6,'Đồ Nghề Đến Trường'),(162,158,'Lớp 1'),(163,158,'Lớp 2'),(164,158,'Lớp 3'),(165,158,'Lớp 4'),(166,158,'Lớp 5'),(167,158,'Lớp 6'),(168,158,'Lớp 7'),(169,158,'Lớp 8'),(170,158,'Lớp 9'),(171,158,'Lớp 10'),(172,158,'Lớp 11'),(173,158,'Lớp 12'),(174,159,'Mẫu Giáo'),(175,159,'Lớp 1'),(176,159,'Lớp 2'),(177,159,'Lớp 3'),(178,159,'Lớp 4'),(179,159,'Lớp 5'),(180,159,'Lớp 6'),(181,159,'Lớp 7'),(182,159,'Lớp 8'),(183,159,'Lớp 9'),(184,159,'Lớp 10'),(185,159,'Lớp 11'),(186,159,'Lớp 12'),(187,160,'Luyện Thi Môn Toán'),(188,160,'Luyện Thi Môn Ngữ Văn'),(189,160,'Luyện Thi Môn Tiếng Anh'),(190,160,'Luyện Thi Môn Vật Lý'),(191,160,'Luyện Thi Môn Hóa Học'),(192,160,'Luyện Thi Môn Sinh Học'),(193,160,'Luyện Thi Môn Địa Lý'),(194,160,'Luyện Thi Môn Lịch Sử'),(195,161,'Cặp , Ba Lô'),(196,161,'Máy Tính'),(197,161,'Bút Các Loại'),(198,161,'Bóp Viết - Hộp Bút'),(199,161,'Tập Vở'),(200,161,'Bao Tập - Bao Sách'),(201,161,'Mực'),(202,161,'Gôm - Tẩy'),(203,161,'Gọt Bút Chì'),(204,161,'Compa'),(205,161,'Bảng Viết - Bông Lau Bảng'),(206,161,'Phấn - Hộp Đựng Phấn'),(207,7,'Thương hiệu'),(208,207,'Thiên Long'),(209,207,'Thương Hiệu Hàn Quốc - Morning Glory'),(210,207,'Thương Hiệu Hàn Quốc - Kyobo'),(211,207,'Thương Hiệu Nhật - Kinokuniya'),(212,207,'Thương Hiệu Nhật - Artline'),(213,207,'Thương Hiệu Nhật - Marvy'),(214,207,'Thương Hiệu Tây Ban Nha - Milan'),(215,207,'Thương Hiệu Tây Ban Nha - Apli'),(216,207,'Thương Hiệu Anh Quốc - Helix'),(217,207,'Thương Hiệu Đức - Faber-Castell'),(218,207,'Thương Hiệu Đức - Stabilo'),(219,207,'Thương Hiệu Pháp - Maped'),(220,207,'Thương Hiệu Indonesia - Bantex'),(221,8,'Đồ chơi'),(222,221,'Lego'),(223,221,'tiNiToy'),(224,221,'Lắp Ráp DUKA'),(225,221,'Lắp Ráp Sluban'),(226,221,'Lắp Ráp LaQ'),(227,221,'Mô Hình Gỗ DIY - Robotime'),(228,221,'Đồ Chơi VBCare'),(229,221,'Hot Wheels'),(230,221,'Play-Doh'),(231,221,'Barbie'),(232,9,'Đồ dùng cá nhân'),(233,9,'Đồ điện gia dụng'),(234,9,'Nhà cửa đời sống'),(235,9,'Lưu niệm'),(236,9,'Sản phẩm khác'),(237,232,'Túi - Ví Thời Trang'),(238,232,'Đồng Hồ'),(239,232,'Phụ Kiện Du Lịch'),(240,232,'Phụ Kiện Tóc'),(241,233,'Đèn Bàn'),(242,233,'Đèn Ngủ'),(243,233,'Đèn Pin'),(244,233,'Pin & Dụng Cụ Sạc Pin'),(245,234,'Ly, Cốc, Bình Nước'),(246,234,'Hộp Đựng Đồ Cá Nhân'),(247,234,'Trang Trí Nhà Cửa'),(248,234,'Sửa Chữa Nhà Cửa'),(249,235,'Móc Khóa'),(250,235,'Gương - Lược'),(251,235,'Khung Hình'),(252,235,'Tượng'),(253,236,'Thực Phẩm'),(254,236,'Thiết Bị Số - Phụ Kiện Số'),(255,236,'Quạt Các Loại');
/*!40000 ALTER TABLE `categoryproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `IDDiscount` int NOT NULL AUTO_INCREMENT,
  `IDProduct` varchar(100) DEFAULT NULL,
  `DiscountName` varchar(50) DEFAULT NULL,
  `VoucherCode` varchar(5) DEFAULT NULL,
  `StartTime` varchar(50) DEFAULT NULL,
  `EndTime` varchar(50) DEFAULT NULL,
  `PercentDiscount` int DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL,
  `Used` varchar(10) DEFAULT '0',
  PRIMARY KEY (`IDDiscount`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (4,'9900000376697','Lì xì tết','XFAVZ','2021-12-12T16:52','2021-12-15T16:52',3,'30',NULL),(5,'9786040237712','Lì xì tết','adada','2021-12-06T00:00','2021-12-09T00:00',3,'300','0'),(6,'1639241421469GLJ','AK','AK123','2021-12-13T00:03','2022-10-06T00:03',10,'123','0');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `IDProduct` varchar(100) NOT NULL,
  `IDUser` int NOT NULL,
  PRIMARY KEY (`IDProduct`,`IDUser`),
  CONSTRAINT `favorite` FOREIGN KEY (`IDProduct`) REFERENCES `product` (`IDProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES ('1116090011532',1),('1400000099261-mau3',1),('1880000187661-mau3',1);
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_vat`
--

DROP TABLE IF EXISTS `information_vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information_vat` (
  `IDUser` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `CompanyName` varchar(45) NOT NULL,
  `CompanyAddress` varchar(45) NOT NULL,
  `CompanyCode` varchar(45) NOT NULL,
  `CompanyEmail` varchar(45) NOT NULL,
  PRIMARY KEY (`IDUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_vat`
--

LOCK TABLES `information_vat` WRITE;
/*!40000 ALTER TABLE `information_vat` DISABLE KEYS */;
INSERT INTO `information_vat` VALUES (15,'Nguyễn Hà Anh Kiểm','Bán code xuyên quốc gia','Ở đâu cũng được','B123456','contact.anhkiem@gmail.com');
/*!40000 ALTER TABLE `information_vat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `IDItem` int NOT NULL AUTO_INCREMENT,
  `IDProduct` varchar(100) NOT NULL,
  `Origin` varchar(100) DEFAULT NULL,
  `Trademark` varchar(200) DEFAULT NULL,
  `ProcessingPlace` varchar(200) DEFAULT NULL,
  `Supplier` varchar(500) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Material` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDItem`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'1880000187661-mau3','Trung Quốc','OEM','Trung Quốc','Cty Văn Hoá Việt Văn','Trắng','Nhựa, Vải'),(2,'1880000186381-mau4','Trung Quốc','OEM','Trung Quốc','Cty Văn Hoá Việt Văn','Nhiều màu','Nhựa, Vải'),(3,'6937168773115-mau2','Trung Quốc','OEM','Trung Quốc','Cty TM Hạnh Thuận','Nhiều màu','Giấy'),(4,'1503040810855-mau12','Việt Nam','Ngọc Phương','Việt Nam','Cty Văn Hóa Ngọc Phương','Nhiều màu','Giấy'),(5,'1901011575695-mau2','Trung Quốc','XIAOQINGWA','Trung Quốc','Cty TM Hạnh Thuận','Xanh Dương','Nhựa'),(6,'8935276401041-mau1','Việt Nam','B.bag','Việt Nam','Bình Tây','Đen','Vải'),(7,'8851907161446-mau2','Thương Hiệu Thái Lan','Elephant','Ấn Độ','Cty Fabico','Nhựa, Kim Loại','Nhựa, Kim Loại'),(8,'6934274178186-mau1','Trung Quốc','Kinary','Trung Quốc','Cty Fabico','Xanh Mint','Nhựa'),(9,'8938530658243-mau1','Việt Nam','Vinashield','Việt Nam','Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Nhiều màu',''),(10,'8936098230123','Việt Nam','Vina Oils','Việt Nam','CÔNG TY CỔ PHẨN TẬP ĐOÀN QUỐC TẾ HA GROUP','Đen','Nhựa'),(11,'8938530658243-mau11','Việt Nam','Vinashield','Việt Nam','Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Nhiều màu',''),(12,'8934578154204','Việt Nam','Điện Quang','Việt Nam','Cty Bóng Đèn Điện Quang','Đỏ - Đen','Nhựa, Kim Loại'),(13,'9900000376697','Thương Hiệu Nhật','Maxell','Indonesia','Cty Thu Trang','Đỏ - Trắng','Kim Loại'),(14,'1400000099261-mau3','Thương Hiệu Nhật','Moshi Moshi','Thái Lan','Dn Tư Nhân Trường Vinh','Xám','Nhựa'),(15,'1801011716947-mau2','	Trung Quốc','DOTCOM','	Trung Quốc','	Cty Mai Thư','Đen',NULL),(16,'8936183830115','Việt Nam','Talk!','Việt Nam','Công Ty TNHH Headfully','Xám',''),(17,'8936081250329','Việt Nam','WAKAMONO','Việt Nam','Công Ty Cổ Phần WAKAMONO','Trắng','Vải'),(18,'1507020063682-mau4','Trung Quốc','OEM','Trung Quốc','Cty TM Hạnh Thuận','Xanh Dương',''),(19,'8936195060159','Việt Nam','FAMAPRO','Việt Nam','Công Ty TNHH SX TM Thiết Bị Nam Anh','Đen','Vải'),(20,'8936115290826','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Sản Xuất Thương Mại Kỹ Thuật Á Châu','Trắng','Vải'),(21,'8936115290901','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Sản Xuất Thương Mại Kỹ Thuật Á Châu','Trong Suốt','Nhựa'),(24,'8936195060142','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Sản Xuất Thương Mại Kỹ Thuật Á Châu','Trắng','Vải'),(25,'8936195060135','Việt Nam','FAMAPRO','Trung Quốc','Công Ty Cổ Phần WAKAMONO','Trắng','Vải'),(26,'8938530658243-mau7','Việt Nam','Vinashield','Việt Nam','Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Nhiều màu',''),(27,'8938530658120','Trung Quốc','	Vinashield','Trung Quốc','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Xanh Dương',''),(28,'8938530658212','Trung Quốc','FAMAPRO','Việt Nam','Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Không Màu','Nhựa'),(29,'8938530658243-mau12','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Nhiều màu','Nhựa'),(30,'8938530658205','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Nhiều màu','Nhựa'),(31,'8936130670658','Việt Nam','Board Game VN','Việt Nam','Boardgame Việt Nam','Nhiều màu','Giấy'),(32,'5702016367768','Việt Nam','Thương Hiệu Đan Mạch','Việt Nam','Việt Tinh Anh','Nhiều màu','Nhựa'),(33,'8936106270837','Việt Nam','Thương Hiệu Đan Mạch','Việt Nam','Việt Tinh Anh','Nhiều màu',''),(34,'4904810172765','Việt Nam','Takaratomy','Trung Quốc','Việt Tinh Anh','Đỏ','Nhựa'),(35,'8936121108290','Trung Quốc','JIEHUI TOYS','Trung Quốc','Cty Lâm Ngọc Việt','Nhiều màu','Nhựa'),(36,'5702016890914','Trung Quốc','JIEHUI TOYS','Trung Quốc','Cty Lâm Ngọc Việt','Nhiều màu','Nhựa'),(37,'4549526611483','Thái Lan','Casio','Thái Lan','Bình Tây','Hồng','Nhựa, Kim Loại'),(38,'4549526611476','Thái Lan','Casio','Thái Lan','Bình Tây','Xanh Dương','Nhựa, Kim Loại'),(39,'4549526606038','Thái Lan','Casio','Thái Lan','Bình Tây','Đen','Nhựa, Kim Loại'),(40,'4549526607325','Thái Lan','Casio','Thái Lan','Bình Tây','Đen','Nhựa, Kim Loại'),(41,'4549526607370','Thái Lan','Casio','Thái Lan','Bình Tây','Đen','Nhựa, Kim Loại');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `Email` varchar(50) NOT NULL,
  `OTP` varchar(20) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES ('hung@gmail.com','D8Q94j'),('nguyendinhhung152@gmail.com','3gQhBq'),('nguyendinhhung298@gmail.com','zpMcus'),('nguyendinhhung2982000@gmail.com','TJf0wz'),('nguyenhaanhkiem@gmail.com','e18Kdt'),('thanhnhien152@gmail.com','zK7UM5');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `IDProduct` varchar(100) NOT NULL,
  `IDUser` int NOT NULL,
  `IDCategory` int DEFAULT NULL,
  `TypeProduct` varchar(45) DEFAULT NULL,
  `NameProduct` varchar(500) NOT NULL,
  `Image` varchar(400) NOT NULL,
  `City` varchar(400) DEFAULT NULL,
  `District` varchar(400) DEFAULT NULL,
  `Price` float NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `PackagingSize` varchar(100) DEFAULT NULL,
  `Description` varchar(10000) DEFAULT NULL,
  `View` int DEFAULT '0',
  `Votes` int DEFAULT '0',
  `Quantity` int DEFAULT NULL,
  `Sold` int DEFAULT '0',
  `Discount` int DEFAULT '0',
  `Rating` float DEFAULT '0',
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`IDProduct`),
  FULLTEXT KEY `NameProduct` (`NameProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1116090011532',1,54,'Book','Nhật Ký Chú Bé Nhút Nhát - Tập 1','products/lrexgmfjwzzekto3m50g',NULL,NULL,40000,'240','15x2x3','<p>Sinh động, h&agrave;i hước, hấp dẫn, từng trang viết của Nhật k&yacute; ch&uacute; b&eacute; nh&uacute;t nh&aacute;t đ&atilde; dẫn dắt người đọc đi từ bất ngờ n&agrave;y đến bất ngờ kh&aacute;c qua mỗi ng&agrave;y cậu b&eacute; Greg lớn l&ecirc;n. Bạn đọc chắc chắn sẽ phải cười ph&aacute; l&ecirc;n khi chứng kiến những rắc rối li&ecirc;n tiếp, những tr&ograve; đ&ugrave;a tinh qu&aacute;i nhưng hết sức th&ocirc;ng minh của cậu. Trẻ con, mơ mộng, bướng bỉnh, Greg đ&atilde; đi v&agrave;o văn học với tư c&aacute;ch l&agrave; một trong những nguy&ecirc;n mẫu trẻ thơ đ&aacute;ng y&ecirc;u nhất, ấn tượng nhất v&agrave; chiếm được cảm t&igrave;nh của h&agrave;ng triệu độc giả tr&ecirc;n to&agrave;n thế giới. Lối kể chuyện h&oacute;m hỉnh rất c&oacute; duy&ecirc;n c&ugrave;ng những bức h&igrave;nh minh hoạ ngộ nghĩnh của t&aacute;c giả Jeff Kinney đ&atilde; tạo cho t&aacute;c phẩm sức cuốn h&uacute;t kỳ lạ, đưa n&oacute; l&ecirc;n giữ kỷ luật best-seller của New York Times trong 75 tuần li&ecirc;n với số lượng ti&ecirc;u thụ l&ecirc;n đến 2 triệu cuốn.</p>',0,0,10,NULL,0,NULL,1),('1400000099261-mau3',1,80,'Item','Vỉ Treo 4 Móc Moshi 017 - Màu Xám','products/ibgfvksropcomkyhwefm',NULL,NULL,70000,'70','3x4x10','<p>Vỉ Treo 4 M&oacute;c Moshi 017</p>',4,0,10,NULL,0,NULL,1),('1503040810855-mau12',1,200,'Item','Bộ 10 Giấy Bao Tập Ngọc Phương - Mẫu 12','products/mlpm6dqdub8f0rolgdeh',NULL,NULL,11000,'20','1x2x10','<p>Bộ 10 Giấy Bao Tập Ngọc Phương</p>',5,0,10,NULL,3,NULL,1),('1507020063682-mau4',1,113,'Item','Thước Dây May - Màu Xanh','products/ulunjl1jw5eczptszodt',NULL,NULL,4000,'15','3x4x2','<p>Thước D&acirc;y May</p>',6,0,10,NULL,0,NULL,1),('1640247218521ocz',1,34,'Book','Xóm Cầu Mới','products/g2acfbglkabsuu6m3nyx','Tỉnh Tuyên Quang','Huyện Na Hang',300000,'300','10x20x20','<div class=\"product_view_tab_content_ad\">\n<div id=\"product_tabs_description_contents\">\n<div id=\"desc_content\" class=\"std\">\n<p>Đ&acirc;y l&agrave; t&aacute;c phẩm gi&agrave;u tham vọng v&agrave; &yacute; thức đổi mới nghệ thuật tiểu thuyết của Nhất Linh sau khi &ocirc;ng l&ugrave;i xa ch&iacute;nh trường để gắn b&oacute; trở lại với văn chương.</p>\n<p>T&aacute;c phẩm&nbsp;đ&atilde; khắc họa đời sống mọi mặt của c&aacute;c nh&acirc;n vật cư ngụ&nbsp;trong một khu x&oacute;m - như nh&acirc;n quần n&ocirc;ng th&ocirc;n c&oacute; t&iacute;nh điển h&igrave;nh: từ chuyện t&igrave;nh cảm giữa M&ugrave;i v&agrave; Si&ecirc;u, giữa B&eacute; v&agrave; Đỗi;&nbsp;chuyện gia đ&igrave;nh b&aacute;c L&ecirc; ngh&egrave;o kh&oacute;, cơ cực, nhiều c&atilde;i v&atilde; song cũng c&oacute; khi &ecirc;m đềm; chuyện vợ chồng cậu Ấm; cho đến chuyện &ocirc;ng Năm Bụng - người cha mặc cho kh&oacute; khăn nu&ocirc;i con ăn học cho th&agrave;nh người...</p>\n<p>Với t&aacute;c phẩm n&agrave;y, Nhất Linh đ&atilde;&nbsp;chạm đến những biến chuyển ngấm ngầm b&ecirc;n dưới vẻ thanh b&igrave;nh của l&agrave;ng qu&ecirc; giữa thế kỷ XX.</p>\n<p>&ldquo;T&ocirc;i cũng cho rằng - c&oacute; thể t&ocirc;i chủ quan&nbsp;<em>- X&oacute;m Cầu Mới</em>&nbsp;l&agrave; t&aacute;c phẩm hay nhất của Nhất Linh, tr&ecirc;n cả&nbsp;<em>Bướm trắng</em>, tr&ecirc;n cả&nbsp;<em>Đ&ocirc;i bạn</em>, hai t&aacute;c phẩm vẫn thường được đ&aacute;nh gi&aacute; cao nhất trong sự nghiệp trước t&aacute;c của &ocirc;ng. Ngo&agrave;i ra t&ocirc;i cũng tin rằng th&acirc;n phụ t&ocirc;i t&acirc;m đắc nhất t&aacute;c phẩm n&agrave;y.&rdquo; -&nbsp;<strong>Nh&agrave; văn Nguyễn Tường Thiết</strong></p>\n<p>&ldquo;&Ocirc;ng tạo ra một x&atilde; hội nhỏ, trong đ&oacute; mỗi&nbsp;nh&acirc;n&nbsp;c&aacute;ch gi&agrave;u ngh&egrave;o đều c&oacute; tương quan mật thiết với nhau. Mỗi ch&acirc;n dung&nbsp;nh&acirc;n&nbsp;vật đều linh hoạt v&agrave; s&acirc;u sắc về dung mạo cũng như về đời sống t&acirc;m linh.&rdquo;&nbsp; -&nbsp;<strong>Nh&agrave; ph&ecirc; b&igrave;nh Thụy Khu&ecirc;</strong></p>\n<p><strong>TH&Ocirc;NG TIN T&Aacute;C GIẢ</strong></p>\n<p>- Nhất Linh &ndash; Nguyễn Tường Tam&nbsp;(1906 - 1963): nh&agrave; văn, nh&agrave; b&aacute;o, ch&iacute;nh trị gia quan trọng của Việt Nam. L&agrave; người s&aacute;ng lập v&agrave; đ&oacute;ng vai tr&ograve; trụ cột của nh&oacute;m Tự Lực Văn Đo&agrave;n. &Ocirc;ng cũng l&agrave; một trong những nh&agrave; văn c&oacute; ảnh hưởng lớn trong tiến tr&igrave;nh đổi mới tiểu thuyết Việt Nam nửa đầu thế kỷ XX.</p>\n<p>- C&aacute;c t&aacute;c phẩm nổi tiếng: Đoạn tuyệt (1935), Lạnh l&ugrave;ng (1936), Đ&ocirc;i bạn (1937), Bướm trắng (1939), X&oacute;m Cầu Mới (1940-1957)&hellip;</p>\n<div class=\"clear\">&nbsp;</div>\n</div>\n</div>\n</div>\n<div class=\"clear\">&nbsp;</div>\n<div>\n<div class=\"product_view_tab_content_ad_more\">\n<div class=\"product_view_tab_content_additional\">\n<table class=\"data-table table-additional\"><colgroup><col width=\"25%\" /><col /></colgroup>\n<tbody>\n<tr>\n<th class=\"table-label\">M&atilde; h&agrave;ng</th>\n<td class=\"data_sku\">8936144201428</td>\n</tr>\n<tr>\n<th class=\"table-label\">Dự Kiến C&oacute; H&agrave;ng</th>\n<td class=\"data_expected_date\">03/01/2022</td>\n</tr>\n<tr>\n<th class=\"table-label\">T&ecirc;n Nh&agrave; Cung Cấp</th>\n<td class=\"data_supplier\"><a class=\"xem-chi-tiet\" href=\"https://www.fahasa.com/phan-book?fhs_campaign=ATTRIBUTE_PRODUCT\">Phanbook</a></td>\n</tr>\n<tr>\n<th class=\"table-label\">T&aacute;c giả</th>\n<td class=\"data_author\">Nhất Linh</td>\n</tr>\n<tr>\n<th class=\"table-label\">NXB</th>\n<td class=\"data_publisher\">NXB Phụ Nữ Việt Nam</td>\n</tr>\n<tr>\n<th class=\"table-label\">Năm XB</th>\n<td class=\"data_publish_year\">2021</td>\n</tr>\n<tr>\n<th class=\"table-label\">Trọng lượng (gr)</th>\n<td class=\"data_weight\">550</td>\n</tr>\n<tr>\n<th class=\"table-label\">K&iacute;ch Thước Bao B&igrave;</th>\n<td class=\"data_size\">20.5 x 13 cm</td>\n</tr>\n<tr>\n<th class=\"table-label\">Số trang</th>\n<td class=\"data_qty_of_page\">532</td>\n</tr>\n<tr>\n<th class=\"table-label\">H&igrave;nh thức</th>\n<td class=\"data_book_layout\">B&igrave;a Mềm</td>\n</tr>\n<tr>\n<th class=\"table-label\">Sản phẩm hiển thị trong</th>\n<td>\n<ul class=\"fhs_product_link\">\n<li><a href=\"https://www.fahasa.com/phan-book?fhs_campaign=INTERNAL_LINKING\">Phanbook</a></li>\n</ul>\n</td>\n</tr>\n<tr>\n<th class=\"table-label\">Sản phẩm b&aacute;n chạy nhất</th>\n<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month\">Top 100 sản phẩm Tiểu thuyết b&aacute;n chạy của th&aacute;ng</a></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"clear\">&nbsp;</div>\n<div id=\"product_tabs_description_contents\">\n<div id=\"desc_content\" class=\"std\">\n<p><strong>T&aacute;c phẩm quan trọng bậc nhất của văn nghiệp, được nh&agrave; văn Nhất Linh chăm ch&uacute;t v&agrave; viết đi viết lại nhiều lần nhất, bản thảo cũng từng bị thất lạc... nay đ&atilde; trở lại với người đọc Việt Nam sau gần nửa thế kỷ.</strong></p>\n<p>PHANBOOK v&agrave; NXB PHỤ NỮ VIỆT NAM tr&acirc;n trọng giới thiệu!</p>\n<p>------</p>\n<p>Đ&acirc;y l&agrave; t&aacute;c phẩm gi&agrave;u tham vọng v&agrave; &yacute; thức đổi mới nghệ thuật tiểu thuyết của Nhất Linh sau khi &ocirc;ng l&ugrave;i xa ch&iacute;nh trường để gắn b&oacute; trở lại với văn chương.</p>\n<p>T&aacute;c phẩm&nbsp;đ&atilde; khắc họa đời sống mọi mặt của c&aacute;c nh&acirc;n vật cư ngụ&nbsp;trong một khu x&oacute;m - như nh&acirc;n quần n&ocirc;ng th&ocirc;n c&oacute; t&iacute;nh điển h&igrave;nh: từ chuyện t&igrave;nh cảm giữa M&ugrave;i v&agrave; Si&ecirc;u, giữa B&eacute; v&agrave; Đỗi;&nbsp;chuyện gia đ&igrave;nh b&aacute;c L&ecirc; ngh&egrave;o kh&oacute;, cơ cực, nhiều c&atilde;i v&atilde; song cũng c&oacute; khi &ecirc;m đềm; chuyện vợ chồng cậu Ấm; cho đến chuyện &ocirc;ng Năm Bụng - người cha mặc cho kh&oacute; khăn nu&ocirc;i con ăn học cho th&agrave;nh người...</p>\n<p>Với t&aacute;c phẩm n&agrave;y, Nhất Linh đ&atilde;&nbsp;chạm đến những biến chuyển ngấm ngầm b&ecirc;n dưới vẻ thanh b&igrave;nh của l&agrave;ng qu&ecirc; giữa thế kỷ XX.</p>\n<p>&ldquo;T&ocirc;i cũng cho rằng - c&oacute; thể t&ocirc;i chủ quan&nbsp;<em>- X&oacute;m Cầu Mới</em>&nbsp;l&agrave; t&aacute;c phẩm hay nhất của Nhất Linh, tr&ecirc;n cả&nbsp;<em>Bướm trắng</em>, tr&ecirc;n cả&nbsp;<em>Đ&ocirc;i bạn</em>, hai t&aacute;c phẩm vẫn thường được đ&aacute;nh gi&aacute; cao nhất trong sự nghiệp trước t&aacute;c của &ocirc;ng. Ngo&agrave;i ra t&ocirc;i cũng tin rằng th&acirc;n phụ t&ocirc;i t&acirc;m đắc nhất t&aacute;c phẩm n&agrave;y.&rdquo; -&nbsp;<strong>Nh&agrave; văn Nguyễn Tường Thiết</strong></p>\n<p>&ldquo;&Ocirc;ng tạo ra một x&atilde; hội nhỏ, trong đ&oacute; mỗi&nbsp;nh&acirc;n&nbsp;c&aacute;ch gi&agrave;u ngh&egrave;o đều c&oacute; tương quan mật thiết với nhau. Mỗi ch&acirc;n dung&nbsp;nh&acirc;n&nbsp;vật đều linh hoạt v&agrave; s&acirc;u sắc về dung mạo cũng như về đời sống t&acirc;m linh.&rdquo;&nbsp; -&nbsp;<strong>Nh&agrave; ph&ecirc; b&igrave;nh Thụy Khu&ecirc;</strong></p>\n</div>\n</div>\n</div>\n</div>',0,0,10,NULL,0,0,1),('1801011716947-mau2',1,NULL,'Item','Đồng Hồ Dotcom 3009 - Màu Đen','products/image_195509_1_14245_zk9z4s.jpg',NULL,NULL,286000,'40',NULL,'Đồng Hồ Dotcom 3009',7,0,10,NULL,NULL,NULL,1),('1880000186381-mau4',1,80,'Item','Vòng Hoa Có Khăn Voan Hóa Trang Halloween 1607-9-2021 - Hình Ma Bí - Màu Trắng','products/z7ovubbfaukecxwztc6j',NULL,NULL,22000,'22','4x3x1','<p>V&ograve;ng Hoa C&oacute; Khăn Voan H&oacute;a Trang Halloween 1607-9-2021</p>',4,0,10,NULL,0,NULL,1),('1880000187661-mau3',1,80,'Item','Cài Tóc Có Khăn Voan Hoá Trang Halloween YL-35-2021 - Hình Đầu Lâu - Màu Trắng','products/oepwvwkbuvteikswjdql',NULL,NULL,29000,'29','2x1x20','<p>C&agrave;i T&oacute;c C&oacute; Khăn Voan Ho&aacute; Trang Halloween YL-35-2021</p>',1,0,10,NULL,0,NULL,1),('1901011575695-mau2',1,113,'Item','Thước Kẻ 18 cm - XiaoQingWa 2094 - Màu Xanh','products/ulqrbmy0cpkt4klnocld',NULL,NULL,6000,'10','4x18x1','<p>Thước Kẻ 18 cm XiaoQingWa 2094</p>',3,0,10,NULL,0,NULL,1),('3300000000954',1,164,'Book','Sách Giáo Khoa Bộ Lớp 3 - Bài Học + Bài Tập (Bộ 13 Cuốn) (2021)','products/kz7zwxdtfvkjnr3tdknb',NULL,NULL,115000,'1768','3x18x10','<p>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 3 - B&agrave;i Học + B&agrave;i Tập (Bộ 13 Cuốn) (2021)</p>',1,0,10,NULL,0,NULL,1),('3300000001074',1,168,'Book','Sách Giáo Khoa Bộ Lớp 7 - Sách Bài Học (Bộ 12 Cuốn) (2021)','products/oxprcl1inxsz3lc1jhqp',NULL,NULL,134000,'2105','3x10x10','<p>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 7 - S&aacute;ch B&agrave;i Học (Bộ 12 Cuốn) (2021)</p>',2,0,10,NULL,0,NULL,1),('3300000001401',1,173,'Book','Sách Giáo Khoa Bộ Lớp 12 - Sách Bài Học (Bộ 13 Cuốn - Không Tiếng Anh) (2021)','products/xzlpzvaqjqw9y8a2ehqj',NULL,NULL,163000,'4000','3x4x10','<p>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 12 - S&aacute;ch B&agrave;i Học (Bộ 13 Cuốn - Kh&ocirc;ng Tiếng Anh) (2021)</p>',5,0,10,NULL,0,NULL,1),('3300000001746',1,162,'Book','Sách Giáo Khoa Bộ Lớp 1 Cánh Diều - Sách Bài Học (Bộ 9 Cuốn) (2021)','products/z2chayslqkkijnnujp8w',NULL,NULL,199000,'1978','10x20x4','<p>Bộ S&aacute;ch Gi&aacute;o Khoa Lớp 1 - S&aacute;ch B&agrave;i Học - Bộ S&aacute;ch Ch&acirc;n Trời S&aacute;ng Tạo (Bộ 9 Cuốn) (2021)</p>',5,0,10,NULL,3,NULL,1),('3300000002736',1,162,'Book','Sách Giáo Khoa Bộ Lớp 1 - Sách Bài Tập - Bộ Sách Cánh Diều (Bộ 10 Cuốn - Không Vở Thực Hành Âm Nhạc) (2021)','products/qgr1zjeisiwmr6b6cfi0',NULL,NULL,119000,'2000','3x12x10','<p>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 1 - S&aacute;ch B&agrave;i Tập - Bộ S&aacute;ch C&aacute;nh Diều (Bộ 10 Cuốn - Kh&ocirc;ng Vở Thực H&agrave;nh &Acirc;m Nhạc) (2021)</p>',1,0,10,NULL,0,NULL,1),('3300000002866',1,167,'Book','Sách Giáo Khoa Bộ Lớp 6 - Sách Bài Học - Bộ Sách Chân Trời Sáng Tạo (Bộ 12 Cuốn) (2021)','products/numwitynwv8qlywt3ofn',NULL,NULL,234000,'3500','10x9x3','<p>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 6 - S&aacute;ch B&agrave;i Học - Bộ S&aacute;ch Ch&acirc;n Trời S&aacute;ng Tạo (Bộ 12 Cuốn) (2021)</p>',1,0,10,NULL,0,NULL,1),('3300000004099',1,162,'Book','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Học - Bộ Sách Chân Trời Sáng Tạo (Bộ 9 Cuốn) (2021)','products/tyof6rbf8pfmfyxp6lx1',NULL,NULL,186000,'1000','4x9x10','<p>Bộ S&aacute;ch Gi&aacute;o Khoa Lớp 1 - S&aacute;ch B&agrave;i Tập - Bộ S&aacute;ch Ch&acirc;n Trời S&aacute;ng Tạo (Bộ 11 Cuốn) (2021)</p>',6,0,10,NULL,0,NULL,1),('3300000004150',1,162,'Book','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Tập - Bộ Sách Chân Trời Sáng Tạo (Bộ 11 Cuốn) (2021)','products/xsw6nd01fdfrydk4ilex',NULL,NULL,138000,'2000','3x15x2','<p>Bộ S&aacute;ch Gi&aacute;o Khoa Lớp 1 - S&aacute;ch B&agrave;i Tập - Bộ S&aacute;ch Ch&acirc;n Trời S&aacute;ng Tạo (Bộ 11 Cuốn) (2021)</p>',7,0,10,NULL,0,NULL,1),('3300000006079',1,37,'Book','Bên Dưới Cây Cầu Arakawa - Arakawa Under The Bridge - Tập 1 - Tặng Kèm Postcard','products/querb1pfepn6ijndsgde',NULL,NULL,30000,'200','4x14x10','<p>&ldquo;Gi&uacute;p t&ocirc;i hiểu thế n&agrave;o l&agrave; y&ecirc;u nh&eacute;?&rdquo;</p>',4,0,10,NULL,2,NULL,1),('4549526606038',1,196,'Item','Máy Tính Casio FX 580 VN X','products/nqjxrtzcprqsgezpcnpb',NULL,NULL,657000,'190','3x7x6','<p>M&aacute;y T&iacute;nh Casio FX580VN X thuộc d&ograve;ng m&aacute;y t&iacute;nh khoa học ClassWiz, được h&atilde;ng m&aacute;y t&iacute;nh Casio Nhật Bản sản xuất d&agrave;nh ri&ecirc;ng cho nền gi&aacute;o dục Việt. Sản phẩm t&iacute;ch hợp tới 521 t&iacute;nh năng, trong đ&oacute; c&oacute; rất nhiều t&iacute;nh năng m&agrave; c&aacute;c d&ograve;ng m&aacute;y t&iacute;nh khoa học tr&ecirc;n thị trường hiện nay kh&ocirc;ng c&oacute; được.</p>',4,0,10,NULL,0,NULL,1),('4549526607325',1,196,'Item','Máy Tính Casio Fx500MS','products/h4s65vyeft8b7cvxi1dz',NULL,NULL,299000,'180','3x4x5','<p>M&aacute;y T&iacute;nh Casio Fx500MS</p>',1,0,10,NULL,0,NULL,1),('4549526607370',1,196,'Item','Máy Tính Casio FX 570 MS','products/moglbtcc190ssocvnx3e',NULL,NULL,390000,'180','3x4x5','<p>M&aacute;y T&iacute;nh Casio FX 570MS (TL)</p>',1,0,10,NULL,1,NULL,1),('4549526611476',1,196,'Item','Máy Tính Casio FX580VN X-BU (Màu Xanh)','products/eiela7mr1bwjavicl28i',NULL,NULL,657000,'190','3x4x5','<p>M&aacute;y T&iacute;nh Casio FX580VN X-PK (M&agrave;u Hồng) thuộc d&ograve;ng m&aacute;y t&iacute;nh khoa học ClassWiz, được h&atilde;ng m&aacute;y t&iacute;nh Casio Nhật Bản sản xuất d&agrave;nh ri&ecirc;ng cho nền gi&aacute;o dục Việt. Sản phẩm t&iacute;ch hợp tới 521 t&iacute;nh năng, trong đ&oacute; c&oacute; rất nhiều t&iacute;nh năng m&agrave; c&aacute;c d&ograve;ng m&aacute;y t&iacute;nh khoa học tr&ecirc;n thị trường hiện nay kh&ocirc;ng c&oacute; được.</p>',1,0,10,NULL,3,NULL,1),('4549526611483',1,196,'Item','Máy Tính Casio FX580VN X-PK (Màu Hồng)','products/gfyjecgijb0q2twfowof',NULL,NULL,657000,'190','3x4x5','<p>M&aacute;y T&iacute;nh Casio FX580VN X-PK (M&agrave;u Hồng) thuộc d&ograve;ng m&aacute;y t&iacute;nh khoa học ClassWiz, được h&atilde;ng m&aacute;y t&iacute;nh Casio Nhật Bản sản xuất d&agrave;nh ri&ecirc;ng cho nền gi&aacute;o dục Việt. Sản phẩm t&iacute;ch hợp tới 521 t&iacute;nh năng, trong đ&oacute; c&oacute; rất nhiều t&iacute;nh năng m&agrave; c&aacute;c d&ograve;ng m&aacute;y t&iacute;nh khoa học tr&ecirc;n thị trường hiện nay kh&ocirc;ng c&oacute; được.</p>',2,0,10,NULL,4,NULL,1),('4904810172765',1,138,'Item','Robot Nắp Chai Colamaru Phượng Hoàng - Bottleman 172765','products/hhtfwpulryngaot1n0kd',NULL,NULL,139000,'400','3x4x5','<p>Đối với m&ugrave;a h&egrave; nắng n&oacute;ng n&agrave;y, c&aacute;c mấy b&eacute; nh&agrave; m&igrave;nh chỉ th&iacute;ch ở nh&agrave; nằm điều h&ograve;a v&agrave; chơi điện thoại th&ocirc;i, l&agrave;m m&igrave;nh thấy rất lo lắng cho mắt c&aacute;c b&eacute;, m&agrave; kh&ocirc;ng l&agrave;m c&aacute;ch n&agrave;o cho c&aacute;c b&eacute; c&aacute;ch ra điều h&ograve;a v&agrave; điện thoại ra được. V&agrave; h&ocirc;m nay t&igrave;nh cờ m&igrave;nh đ&atilde; l&ecirc;n Fahasa để t&igrave;m mua s&aacute;ch đọc th&igrave; thấy Fahasa c&oacute; bộ b&agrave;i Lầy - Party Game Lầy Nhất Hệ Mặt Trời, n&agrave;y n&ecirc;n m&igrave;nh đ&atilde; mua về cho c&aacute;c b&eacute; nh&agrave; thử chơi xem n&agrave;o. Sau khi mua về v&agrave; rủ c&aacute;c b&eacute; chơi th&igrave; c&aacute;c b&eacute; rất th&iacute;ch. Mỗi hộp 2 bịch b&agrave;i v&agrave; 1 tờ luật chơi. H&agrave;i l&ograve;ng bởi mức gi&aacute; 56 ngh&igrave;n th&igrave; chất giấy sẽ kh&ocirc;ng bằng loại trăm mấy trở l&ecirc;n. Nhưng: + Luật chơi kh&aacute; dễ hiểu. + H&igrave;nh ảnh nh&iacute; nhố vui + Giấy tuy kh&ocirc;ng b&oacute;ng lo&aacute;ng nhưng tương đối dầy (nhưng ch&iacute;nh v&igrave; dầy n&ecirc;n c&acirc;n nhắc nếu &eacute;p nhựa sẽ phải cắt chừa bi&ecirc;n rộng th&igrave; cầm sẽ hơi kh&oacute; x&iacute;u nh&eacute;) + M&agrave;u sắc sẽ nhạt hơn h&igrave;nh chụp. + Mặt chơi th&igrave; b&oacute;ng hơn mặt lưng. N&ecirc;n mua chơi, người lớn cũng thấy vui như con n&iacute;t.</p>',4,0,10,NULL,3,NULL,1),('5702016367768',1,138,'Item','Bộ Gạch Classic Ý Tưởng Lego 11001 (123 Chi Tiết)','products/hh48bzvuxaoxda4up62j',NULL,NULL,239000,'400','6x7x9','<p>Bộ Gạch Classic &Yacute; Tưởng Lego 11001 (123 Chi Tiết)</p>',4,0,10,NULL,6,NULL,1),('5702016890914',1,138,'Item','Đồ Chơi Lắp Ráp LEGO 42117 - Race Plane','products/g4igdkeyysclpdqljsez',NULL,NULL,216000,'155','5x6x3','<p>Đồ Chơi Lắp R&aacute;p LEGO 42117 - Race Plane</p>',6,0,10,NULL,3,NULL,1),('6934274178186-mau1',1,115,'Item','Túi Zip A4 - Kinary FB8041 - Màu Xanh Mint','products/gkecefgnxgjskrdwbr0c',NULL,NULL,19000,'33','10x17x2','<p>T&uacute;i Zip A4 Kinary FB8041</p>',7,0,10,NULL,2,NULL,1),('6937168773115-mau2',1,124,'Item','Sổ Bìa Cứng Nhỏ Nút 64144-S002 - Hình Xe - Dây Cài Màu Nâu','products/zqvzg9yss8grdwvhjyar',NULL,NULL,83000,'171','3x10x12','<p>Sổ B&igrave;a Cứng Nhỏ N&uacute;t 64144-S002 v&ocirc; c&ugrave;ng bắt mắt bởi h&igrave;nh ảnh b&igrave;a được thiết kế rất dễ thương v&agrave; ngộ nghĩnh.</p>',3,0,10,NULL,2,NULL,1),('8851907161446-mau2',1,117,'Item','Bấm Kim Số 10 Elephant Neon - Màu Đỏ','products/bz3lwx9lt8bzpfhc6mij',NULL,NULL,30000,'60','6x2x3','<p>Bấm Kim Số 10 Elephant Neon</p>',3,0,10,NULL,0,NULL,1),('8934578154204',1,3,'Item','Đèn Bàn Điện Quang - ĐQ DKL03 B Chóa Sắt - Đỏ Đen - Có Bóng','products/o7oj9igo23qgfatntman',NULL,NULL,192000,'800','45x10x25','<p>Đ&egrave;n B&agrave;n Điện Quang - ĐQ DKL03 B Ch&oacute;a Sắt - Đỏ Đen - C&oacute; B&oacute;ng</p>',7,0,10,NULL,6,NULL,1),('8934974174530',1,38,'Book','Ký Sinh Thú - Tập 2 - Tặng Kèm Bookmark','products/u3cvufkooabt5mcgpukf',NULL,NULL,45000,'200','10x9x3','<p>Izumi Shinichi l&agrave; một thiếu ni&ecirc;n 17 tuổi. Một ng&agrave;y nọ, những sinh vật lạ ngo&agrave;i h&agrave;nh tinh đổ bộ xuống tr&aacute;i đất. Ch&uacute;ng k&yacute; sinh trong n&atilde;o người v&agrave; chiếm quyền điều khiển cơ thể họ. Ch&uacute;ng được gọi l&agrave; K&yacute; sinh th&uacute;. Shinichi đ&atilde; bị một K&yacute; sinh th&uacute; chui v&agrave;o tai nhằm chiếm đ&oacute;ng cơ thể cậu nhưng n&oacute; đ&atilde; thất bại. Sau đ&oacute;, n&oacute; x&acirc;m chiếm c&aacute;nh tay phải của cậu. Shinichi v&agrave; K&yacute; sinh th&uacute; n&agrave;y buộc phải hợp t&aacute;c, c&ugrave;ng tồn tại với nhau v&agrave; chiến đấu chống lại những K&yacute; sinh th&uacute; kh&aacute;c. Truyện kh&ocirc;ng đơn thuần chỉ để giải tr&iacute; m&agrave; c&ograve;n ẩn chứa gi&aacute; trị nh&acirc;n văn s&acirc;u sắc, từng bước b&oacute;c trần được bản chất \"con\" của lo&agrave;i người.</p>',37,0,10,NULL,3,NULL,1),('8934978513151',1,122,'Book','Lớp Một Thật Vui - Tập Tô 3 - Tô Chữ','products/wp3mwrkdyx4stu4shea2',NULL,NULL,10000,'122','3x9x10','<p>Tập T&ocirc; Chữ Mẫu Gi&aacute;o D&agrave;nh Cho Trẻ 5-6 Tuổi</p>',3,0,10,NULL,0,NULL,1),('8935095623709',1,54,'Book','Những Câu Chuyện Về Tình Cảm Gia Đình','products/nrgvfcikwizlckw2qebi',NULL,NULL,36000,'240','4x5x8','<p>Cuốn s&aacute;ch NHỮNG C&Acirc;U CHUYỆN VỀ T&Igrave;NH CẢM GIA Đ&Igrave;NH cho thấy gia đ&igrave;nh l&agrave; nơi th&acirc;n thương, b&igrave;nh y&ecirc;n nhất, nơi m&agrave; mọi người ch&uacute;ng ta sẽ được học những b&agrave;i học đầu ti&ecirc;n về t&igrave;nh y&ecirc;u thương.</p>',4,0,10,NULL,0,NULL,1),('8935210250551',1,122,'Item','Tự Xóa Thông Minh - Bé Tập Tô Nét (3-5 Tuổi)','products/image_197195_egzld7.jpg',NULL,NULL,71000,'300','28 x 22.7','Bé Tập Tô Nét:',3,0,10,NULL,NULL,NULL,1),('8935212333696',1,122,'Book','Step By Step Drawing - Vẽ Cơ Bản Từ A-Z - Thế Giới Muôn Màu','products/zwlde7ds5spchnoiusiu',NULL,NULL,62000,'300','14x10x10','<p>B&eacute; Tập T&ocirc; N&eacute;t:</p>',3,0,10,NULL,0,NULL,1),('8935230000594',1,138,'Book','Cắt Dán Hình 3D - Bé Khéo Tay - Bộ Khéo Tay','products/cw7wpvxvbmx4vqrneytk',NULL,NULL,29000,'350','4x10x12','<p>Cắt D&aacute;n H&igrave;nh 3D - B&eacute; Kh&eacute;o Tay - Bộ Kh&eacute;o Tay</p>',7,0,10,NULL,0,NULL,1),('8935235221734',1,54,'Book','Hoàng Tử Bé (Tái Bản 2019)','products/yehkk9rindahrhse27uk',NULL,NULL,64000,'240','3x10x4','<p>Lễ ph&eacute;p v&agrave; lịch sự l&agrave; th&oacute;i quen hữu &iacute;ch cho b&eacute; suốt cả cuộc đời. Bố mẹ h&atilde;y c&ugrave;ng tạo dựng th&oacute;i quen bổ &iacute;ch n&agrave;y cho b&eacute; bằng những c&acirc;u chuyện kể trước giờ đi ngủ. Cuốn s&aacute;ch gồm 24 c&acirc;u chuyện đơn giản, th&uacute; vị gi&uacute;p h&igrave;nh th&agrave;nh sự lễ ph&eacute;p v&agrave; lịch sự cho trẻ.</p>',3,0,10,NULL,0,NULL,1),('8935235226272',1,33,'Book','Nhà Giả Kim (Tái Bản 2020)','products/m0dktgrfj5ucrbyoktly',NULL,NULL,67000,'220','4x10x3','<p>Tất cả những trải nghiệm trong chuyến phi&ecirc;u du theo đuổi vận mệnh của m&igrave;nh đ&atilde; gi&uacute;p Santiago thấu hiểu được &yacute; nghĩa s&acirc;u xa nhất của hạnh ph&uacute;c, h&ograve;a hợp với vũ trụ v&agrave; con người.</p>',7,0,10,NULL,0,NULL,1),('8935235228351',1,57,'Book','Cây Cam Ngọt Của Tôi','products/w1vtpaieb1apkxdfu94o',NULL,NULL,108000,'280','3x10x12','<p>&ldquo;Vị chua ch&aacute;t của c&aacute;i ngh&egrave;o h&ograve;a trộn với vị ngọt ng&agrave;o khi kh&aacute;m ph&aacute; ra những điều khiến cuộc đời n&agrave;y đ&aacute;ng sống... một t&aacute;c phẩm kinh điển của Brazil.&rdquo; - Booklist</p>',68,0,10,NULL,0,NULL,1),('8935236420501',1,54,'Book','Truyện Kể Trước Khi Ngủ - Lễ Phép Và Lịch Sự','products/wbl77fek9si0ribskgrg',NULL,NULL,52000,'300','3x10x12','<p>Lễ ph&eacute;p v&agrave; lịch sự l&agrave; th&oacute;i quen hữu &iacute;ch cho b&eacute; suốt cả cuộc đời. Bố mẹ h&atilde;y c&ugrave;ng tạo dựng th&oacute;i quen bổ &iacute;ch n&agrave;y cho b&eacute; bằng những c&acirc;u chuyện kể trước giờ đi ngủ. Cuốn s&aacute;ch gồm 24 c&acirc;u chuyện đơn giản, th&uacute; vị gi&uacute;p h&igrave;nh th&agrave;nh sự lễ ph&eacute;p v&agrave; lịch sự cho trẻ.</p>',3,0,10,NULL,0,NULL,1),('8935236420556',1,54,'Book','Truyện Kể Trước Khi Ngủ - Phát Triển Trí Tuệ','products/ibjmgjhlgditd7y0m2l8',NULL,NULL,52000,'240','9x12x7','<p>C&aacute;c c&acirc;u chuyện đều ngắn gọn v&agrave; hấp dẫn , bao gồm c&aacute;c tr&ograve; chơi th&uacute; vị những c&acirc;u chuyện h&agrave;i hước , những c&acirc;u hỏi cần b&eacute; phải suy nghĩ . Cha mẹ h&atilde;y c&ugrave;ng trẻ đọc truyện , trả lời c&acirc;u hỏi nh&eacute; . Mỗi ng&agrave;y cha mẹ chỉ cần d&agrave;nh ra v&agrave;i ph&uacute;t đọc s&aacute;ch c&ugrave;ng trẻ l&agrave; đ&atilde; c&oacute; thể gi&uacute;p trẻ bước v&agrave;o thế giới diệu kỳ của những c&acirc;u chuyện tr&iacute; tuệ rồi .</p>',5,0,10,NULL,4,NULL,1),('8935244848335',1,93,'Book','Dế Mèn Phiêu Lưu Ký - Ngô Mạnh Lân Minh Họa - Ấn Bản Kỉ Niệm 100 Năm Tô Hoài','products/zodgi5o1eesjd6kgwmra',NULL,NULL,150000,'300','3x10x21','<p>Gần 80 năm qua, kể từ ng&agrave;y đầu ti&ecirc;n ra mắt bạn đọc, năm 1941, \"Dế M&egrave;n phi&ecirc;u lưu k&yacute;\" vẫn l&agrave; một trong những s&aacute;ng t&aacute;c t&acirc;m đắc nhất của nh&agrave; văn T&ocirc; Ho&agrave;i.</p>',4,0,10,NULL,6,NULL,1),('8935244858433',1,35,'Book','Thiên Thần Diệt Thế - Seraph Of The End - Tập 12 (Tái Bản 2021)','products/lu4npuyofc1aahs67bgk',NULL,NULL,20000,'200','10x21x5','<p>Ferid v&agrave; Crowley xuất hiện trước mặt đội Shinoa - những người đang r&uacute;t khỏi Đế Quỷ Qu&acirc;n. Nhận thấy sự ch&ecirc;nh lệch sức mạnh qu&aacute; r&otilde; r&agrave;ng, Yuichiro c&ugrave;ng đồng đội bị đẩy v&agrave;o t&igrave;nh thế buộc phải hợp t&aacute;c, kh&ocirc;ng thể chạy trốn. Thứ Ferid đưa ra ch&iacute;nh l&agrave;!? Trong l&uacute;c đ&oacute;, Guren đ&atilde; trở về Shinjuku&hellip;</p>',46,0,10,NULL,9,NULL,1),('8935244859768',1,35,'Book','Thiên Thần Diệt Thế - Tập 17','products/kj4kd1vilzdcsnmnnpmh',NULL,NULL,20000,'200','10x12x8','<p>Thi&ecirc;n thần thổi k&egrave;n thứ 6 hiện đang bị phong ấn tại nh&agrave; ri&ecirc;ng của Guren. Yuichiro quyết t&acirc;m</p>',6,0,10,NULL,3,NULL,1),('8935244859829',1,98,'Book','Naruto Tập 62','products/uyskm0hgzgegwudn8lcp',NULL,NULL,22000,'200','10x19x3','<p>Itachi đ&atilde; ngăn chặn được Kabuto v&agrave; &ldquo;Uế Thổ Chuyển Sinh&rdquo; g&acirc;y hỗn loạn chiến trường cũng bị giải trừ! D&ugrave; được tận mắt chứng kiến h&agrave;nh động ấy, o&aacute;n hận trong Sasuke vẫn kh&ocirc;ng hề ngu&ocirc;i ngoai. Những lời sau cuối m&agrave; người anh trai y&ecirc;u qu&yacute; để lại cho cậu l&agrave; g&igrave;!? Trong khi đ&oacute;, cuộc chiến của nh&oacute;m Naruto c&agrave;ng l&uacute;c c&agrave;ng khốc liệt&hellip;!!</p>',5,0,10,NULL,2,NULL,1),('8935276401041-mau1',1,195,'Item','Ba Lô \"Tet Holiday\" Phong Cách Nhật B.bag - Màu Đen - B-23-023','products/fxqbmz0r7ajkvqvrquur',NULL,NULL,359000,'490','40x50x30','<p>Ba L&ocirc; Tet Holiday B-23-023 - M&agrave;u Đen được thiết kế theo phong c&aacute;ch Nhật Bản v&agrave; nằm trong bộ sưu tập \"Tet Holiday\". Đ&acirc;y l&agrave; d&ograve;ng sản phẩm được giới trẻ rất y&ecirc;u th&iacute;ch bởi t&iacute;nh tiện lợi v&agrave; thời trang. H&igrave;nh ảnh sử dụng mang đậm dấu ấn của ng&agrave;y Tết như: hoa anh đ&agrave;o, chim &eacute;n &hellip; kết hợp với m&agrave;u sắc thời trang c&aacute; t&iacute;nh, tạo n&eacute;t độc đ&aacute;o v&agrave; nổi bật, gi&uacute;p người sử dụng dễ d&agrave;ng kết hợp với nhiều loại trang phục.</p>',8,0,10,NULL,0,NULL,1),('8935278602286',1,35,'Book','Vương Triều Tudor Cuối Cùng','products/c6zcisteib9llwnt7lez',NULL,NULL,220000,'620','9x12x20','<p>Vương triều Tudor cuối c&ugrave;ng l&agrave; một t&aacute;c phẩm lịch sử về ho&agrave;ng gia Anh thời Phục hưng, được s&aacute;ng t&aacute;c bởi một người uy&ecirc;n th&acirc;m về lịch sử, t&aacute;c giả #1 theo b&igrave;nh chọn của New York Times - Philippa Gregory.</p>',54,0,10,NULL,0,NULL,1),('8935278602606',1,41,'Book','Contact Marketing - Nghệ Thuật Chinh Phục Khách Hàng','products/vtjvbt9z5kyaisguyozb',NULL,NULL,180000,'400','8x7x2','<p>Contact Marketing l&agrave; g&igrave;?</p>',8,0,10,NULL,0,NULL,1),('8935278603191',1,35,'Book','Công Thức Thành Công - Những Bí Quyết Thành Công Vượt Thời Gian Của Napoleon Hill','products/yhzz5gmezs4uuneoty1s',NULL,NULL,90000,'300','5x9x20','<p>&ldquo;Nếu l&agrave; v&agrave;i năm trước đ&acirc;y, t&ocirc;i đ&atilde; kh&ocirc;ng thể viết quyển s&aacute;ch n&agrave;y, bởi như Henry David Thoreau đ&atilde; viết: &ldquo;Thật h&atilde;o huyền khi ngồi viết s&aacute;ch trong khi bạn c&ograve;n chưa trải nghiệm cuộc sống&rdquo;\"</p>',3,0,10,NULL,0,NULL,1),('8935325000980',1,58,'Book','Từ Điển Tiếng “Em” - Tái Bản 2021','products/nttujc0f1f2u9j33ysz9',NULL,NULL,69000,'300','20x12x9','<p>TỪ ĐIỂN TIẾNG &ldquo;EM&rdquo; &ndash; Định nghĩa về thế giới mới!</p>',4,0,10,NULL,8,NULL,1),('8936067590890',1,122,'Book','Tập Tô Chữ Mẫu Giáo Dành Cho Trẻ 5-6 Tuổi','products/ndceuspan6x94srrmri4',NULL,NULL,12000,'150','7x8x15','<p>Tập T&ocirc; Chữ Mẫu Gi&aacute;o D&agrave;nh Cho Trẻ 5-6 Tuổi</p>',5,0,10,NULL,0,NULL,1),('8936067599275',1,122,'Book','Bé Vào Lớp Một - Tập Tô Tập Ghép Vần Tập 1','products/cfmkjyg2qnmb82pwngce',NULL,NULL,9000,'122','9x10x12','<p>Tập T&ocirc; Chữ Mẫu Gi&aacute;o D&agrave;nh Cho Trẻ 5-6 Tuổi</p>',7,0,10,NULL,0,NULL,1),('8936072917248',1,53,'Book','Bộ Sách “Truyện Đọc Trước Giờ Đi Ngủ” - Bộ 4 Cuốn','products/b_-truy_n-_c-tr_c-gi_-_i-ng__qnx9yy.jpg',NULL,NULL,278000,'300',NULL,'Bộ Sách “Truyện Đọc Trước Giờ Đi Ngủ”',6,0,10,NULL,NULL,NULL,1),('8936081250329',1,75,'Item','Khẩu Trang Y Tế 4 Lớp WAKAMONO Diệt Virus Corona 99% (10 Cái/Hộp)','products/ezqszkslzbz3viudji9f',NULL,NULL,45000,'80','10x15x18','<p>Khẩu Trang Y Tế 4 Lớp WAKAMONO Diệt Virus Corona 99% (10 C&aacute;i/Hộp)</p>',6,0,10,NULL,0,NULL,1),('8936098230123',1,80,'Item','Tinh Dầu Tràm Trà 10Ml - Vina Oils VN0011','products/hhehmlsjfi2bhbo7li4l',NULL,NULL,90000,'50','3x12x9','<p>Tinh Dầu Tr&agrave;m Tr&agrave; 10Ml Vina Oils VN0011</p>',3,0,10,NULL,0,NULL,1),('8936106270837',1,138,'Item','Bộ Đồ Chơi Cát Động Lực CĐL-002','products/rdmcnz9dnjnc8nf7beii',NULL,NULL,41000,'400','9x12x9','<p>Đối với m&ugrave;a h&egrave; nắng n&oacute;ng n&agrave;y, c&aacute;c mấy b&eacute; nh&agrave; m&igrave;nh chỉ th&iacute;ch ở nh&agrave; nằm điều h&ograve;a v&agrave; chơi điện thoại th&ocirc;i, l&agrave;m m&igrave;nh thấy rất lo lắng cho mắt c&aacute;c b&eacute;, m&agrave; kh&ocirc;ng l&agrave;m c&aacute;ch n&agrave;o cho c&aacute;c b&eacute; c&aacute;ch ra điều h&ograve;a v&agrave; điện thoại ra được. V&agrave; h&ocirc;m nay t&igrave;nh cờ m&igrave;nh đ&atilde; l&ecirc;n Fahasa để t&igrave;m mua s&aacute;ch đọc th&igrave; thấy Fahasa c&oacute; bộ b&agrave;i Lầy - Party Game Lầy Nhất Hệ Mặt Trời, n&agrave;y n&ecirc;n m&igrave;nh đ&atilde; mua về cho c&aacute;c b&eacute; nh&agrave; thử chơi xem n&agrave;o. Sau khi mua về v&agrave; rủ c&aacute;c b&eacute; chơi th&igrave; c&aacute;c b&eacute; rất th&iacute;ch. Mỗi hộp 2 bịch b&agrave;i v&agrave; 1 tờ luật chơi. H&agrave;i l&ograve;ng bởi mức gi&aacute; 56 ngh&igrave;n th&igrave; chất giấy sẽ kh&ocirc;ng bằng loại trăm mấy trở l&ecirc;n. Nhưng: + Luật chơi kh&aacute; dễ hiểu. + H&igrave;nh ảnh nh&iacute; nhố vui + Giấy tuy kh&ocirc;ng b&oacute;ng lo&aacute;ng nhưng tương đối dầy (nhưng ch&iacute;nh v&igrave; dầy n&ecirc;n c&acirc;n nhắc nếu &eacute;p nhựa sẽ phải cắt chừa bi&ecirc;n rộng th&igrave; cầm sẽ hơi kh&oacute; x&iacute;u nh&eacute;) + M&agrave;u sắc sẽ nhạt hơn h&igrave;nh chụp. + Mặt chơi th&igrave; b&oacute;ng hơn mặt lưng. N&ecirc;n mua chơi, người lớn cũng thấy vui như con n&iacute;t.</p>',2,0,10,NULL,0,NULL,1),('8936115290826',1,75,'Item','Khẩu Trang Y Tế 4 Lớp Kháng Khuẩn Asia Medic 50 Cái - Màu Trắng','products/plqo4545gfmkj5vaekfh',NULL,NULL,53000,'250','5x12x9','<p>Khẩu Trang Y Tế 4 Lớp Kh&aacute;ng Khuẩn</p>',4,0,10,NULL,9,NULL,1),('8936115290901',1,75,'Item','Kính Bảo Hộ Cao Cấp Asia Face Shield','products/xergvlptolwlbirfvcaa',NULL,NULL,52000,'100','8x10x12','<p>K&iacute;nh Bảo Hộ Cao Cấp Asia Face Shield</p>',46,0,10,NULL,0,NULL,1),('8936121108290',1,139,'Item','Rubik 3x3 JIEHUI TOYS - 454 LH30','products/gwlhgnqfzki22ejtvijy',NULL,NULL,49000,'35','7x7x7','<p>Đối với m&ugrave;a h&egrave; nắng n&oacute;ng n&agrave;y, c&aacute;c mấy b&eacute; nh&agrave; m&igrave;nh chỉ th&iacute;ch ở nh&agrave; nằm điều h&ograve;a v&agrave; chơi điện thoại th&ocirc;i, l&agrave;m m&igrave;nh thấy rất lo lắng cho mắt c&aacute;c b&eacute;, m&agrave; kh&ocirc;ng l&agrave;m c&aacute;ch n&agrave;o cho c&aacute;c b&eacute; c&aacute;ch ra điều h&ograve;a v&agrave; điện thoại ra được. V&agrave; h&ocirc;m nay t&igrave;nh cờ m&igrave;nh đ&atilde; l&ecirc;n Fahasa để t&igrave;m mua s&aacute;ch đọc th&igrave; thấy Fahasa c&oacute; bộ b&agrave;i Lầy - Party Game Lầy Nhất Hệ Mặt Trời, n&agrave;y n&ecirc;n m&igrave;nh đ&atilde; mua về cho c&aacute;c b&eacute; nh&agrave; thử chơi xem n&agrave;o. Sau khi mua về v&agrave; rủ c&aacute;c b&eacute; chơi th&igrave; c&aacute;c b&eacute; rất th&iacute;ch. Mỗi hộp 2 bịch b&agrave;i v&agrave; 1 tờ luật chơi. H&agrave;i l&ograve;ng bởi mức gi&aacute; 56 ngh&igrave;n th&igrave; chất giấy sẽ kh&ocirc;ng bằng loại trăm mấy trở l&ecirc;n. Nhưng: + Luật chơi kh&aacute; dễ hiểu. + H&igrave;nh ảnh nh&iacute; nhố vui + Giấy tuy kh&ocirc;ng b&oacute;ng lo&aacute;ng nhưng tương đối dầy (nhưng ch&iacute;nh v&igrave; dầy n&ecirc;n c&acirc;n nhắc nếu &eacute;p nhựa sẽ phải cắt chừa bi&ecirc;n rộng th&igrave; cầm sẽ hơi kh&oacute; x&iacute;u nh&eacute;) + M&agrave;u sắc sẽ nhạt hơn h&igrave;nh chụp. + Mặt chơi th&igrave; b&oacute;ng hơn mặt lưng. N&ecirc;n mua chơi, người lớn cũng thấy vui như con n&iacute;t.</p>',6,0,10,NULL,0,NULL,1),('8936130670658',1,138,'Item','Lầy - Party Game Lầy Nhất Hệ Mặt Trời','products/tkuhwlfk0hudfwhhc6wa',NULL,NULL,59000,'35','10x12x9','<p>Đối với m&ugrave;a h&egrave; nắng n&oacute;ng n&agrave;y, c&aacute;c mấy b&eacute; nh&agrave; m&igrave;nh chỉ th&iacute;ch ở nh&agrave; nằm điều h&ograve;a v&agrave; chơi điện thoại th&ocirc;i, l&agrave;m m&igrave;nh thấy rất lo lắng cho mắt c&aacute;c b&eacute;, m&agrave; kh&ocirc;ng l&agrave;m c&aacute;ch n&agrave;o cho c&aacute;c b&eacute; c&aacute;ch ra điều h&ograve;a v&agrave; điện thoại ra được. V&agrave; h&ocirc;m nay t&igrave;nh cờ m&igrave;nh đ&atilde; l&ecirc;n Fahasa để t&igrave;m mua s&aacute;ch đọc th&igrave; thấy Fahasa c&oacute; bộ b&agrave;i Lầy - Party Game Lầy Nhất Hệ Mặt Trời, n&agrave;y n&ecirc;n m&igrave;nh đ&atilde; mua về cho c&aacute;c b&eacute; nh&agrave; thử chơi xem n&agrave;o. Sau khi mua về v&agrave; rủ c&aacute;c b&eacute; chơi th&igrave; c&aacute;c b&eacute; rất th&iacute;ch. Mỗi hộp 2 bịch b&agrave;i v&agrave; 1 tờ luật chơi. H&agrave;i l&ograve;ng bởi mức gi&aacute; 56 ngh&igrave;n th&igrave; chất giấy sẽ kh&ocirc;ng bằng loại trăm mấy trở l&ecirc;n. Nhưng: + Luật chơi kh&aacute; dễ hiểu. + H&igrave;nh ảnh nh&iacute; nhố vui + Giấy tuy kh&ocirc;ng b&oacute;ng lo&aacute;ng nhưng tương đối dầy (nhưng ch&iacute;nh v&igrave; dầy n&ecirc;n c&acirc;n nhắc nếu &eacute;p nhựa sẽ phải cắt chừa bi&ecirc;n rộng th&igrave; cầm sẽ hơi kh&oacute; x&iacute;u nh&eacute;) + M&agrave;u sắc sẽ nhạt hơn h&igrave;nh chụp. + Mặt chơi th&igrave; b&oacute;ng hơn mặt lưng. N&ecirc;n mua chơi, người lớn cũng thấy vui như con n&iacute;t.</p>',3,0,10,NULL,0,NULL,1),('8936183830115',1,95,'Item','Túi Đeo Chéo Simple Talk! Stormy Retreat - TDMS00102','products/mroqyzbiog0omciajood',NULL,NULL,130000,'550','100x30x40','<p>T&uacute;i Đeo Ch&eacute;o Simple Talk! Stormy Retreat - TDMS00102</p>',5,0,10,NULL,0,NULL,1),('8936195060135',1,75,'Item','Khẩu Trang Famapro Max 4 Lớp Màu Xanh (40 Cái/Hộp)','products/xtsazmfbnve8re7uqysn',NULL,NULL,30000,'205','6x7x9','<p>Khẩu Trang Famapro Max 4 Lớp M&agrave;u Xanh</p>',5,0,10,NULL,0,NULL,1),('8936195060142',1,75,'Item','Khẩu Trang Famapro Max 4 Lớp Màu Trắng (40 Cái/Hộp)','products/mobs3smtrfazzbl02ebc',NULL,NULL,30000,'205','7x8x10','<p>Khẩu Trang Famapro Max 4 Lớp M&agrave;u Trắng</p>',3,0,10,NULL,0,NULL,1),('8936195060159',1,75,'Item','Khẩu Trang Famapro Max 4 Lớp Màu Đen (40 Cái/Hộp)','products/zof92iknp3qvvl1dizaf',NULL,NULL,30000,'205','3x10x6','<p>Khẩu Trang Famapro Max 4 Lớp M&agrave;u Xanh</p>',4,0,10,NULL,2,NULL,1),('8938507001386',1,122,'Book','Trổ Tài Họa Sĩ Lớp Học Mật Ngữ - Tập 1 - Tặng Kèm 2 Poster + Sticker','products/o03xr6at9axxsmrwadrt',NULL,NULL,38000,'120','4x5x6','<p>Tập T&ocirc; Chữ Mẫu Gi&aacute;o D&agrave;nh Cho Trẻ 5-6 Tuổi</p>',6,0,10,NULL,0,NULL,1),('8938530658120',1,76,'Item','Dung Dịch Rửa Tay Cleanwel 175ml','products/g2k9btswz68sadhp68iu',NULL,NULL,32000,'169','3x4x5','<p>Dung Dịch Rửa Tay Cleanwel 175ml</p>',3,0,10,NULL,0,NULL,1),('8938530658205',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel New 250 ml','products/huatv9uyivcqgaabj4kz',NULL,NULL,50000,'40','5x6x7','<p>Dung Dịch Rửa Tay Cleanwel 175ml</p>',5,0,10,NULL,0,NULL,1),('8938530658212',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel New 100 ml Nắp Xịt - Vinashield','products/isfxuewndknq2sxnbibo',NULL,NULL,18000,'169','3x4x5','<p>Dung Dịch Rửa Tay Cleanwel 175ml</p>',5,0,10,NULL,4,NULL,1),('8938530658243-mau1',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Nàng Tiên Cá','products/rh5togphfvudh2thwsnd',NULL,NULL,44000,'40','5x6x7','<p>Dung Dịch Rửa Tay Nhanh Cleanwel 30ml</p>',5,0,10,NULL,2,NULL,1),('8938530658243-mau11',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Hình Gấu (Mẫu Màu Giao Ngẫu Nhiên)','products/oh27qwuqfwolw9dastwa',NULL,NULL,44000,'40','4x5x5','<p>Dung Dịch Rửa Tay Nhanh Cleanwel 30ml</p>',3,0,10,NULL,0,NULL,1),('8938530658243-mau12',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Hình Xe Hơi (Mẫu Màu Giao Ngẫu Nhiên)','products/va6asmtgd7ugddj1o6kf',NULL,NULL,44000,'40','6x7x8','<p>Dung Dịch Rửa Tay Cleanwel 175ml</p>',6,0,10,NULL,0,NULL,1),('8938530658243-mau7',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Unicorn (Sắc Độ Màu Giao Ngẫu Nhiên)','products/qvswoluwgtmtnnwtwcuq',NULL,NULL,44000,'40','10x9x12','<p>Dung Dịch Rửa Tay Nhanh Cleanwel 30ml</p>',5,0,10,NULL,0,NULL,1),('9786040234810',1,168,'Book','Tiếng Anh 7 - Tập 1 - Sách Học Sinh (2021)','products/y9nznser9niegg2bmw9t',NULL,NULL,33000,'4000','10x14x2','<p>S&aacute;ch được bi&ecirc;n soạn dựa tr&ecirc;n cơ sở những kinh nghiệm thực tiễn của việc dạy tiếng Anh trung học phổ th&ocirc;ng ở Việt Nam với sự hợp t&aacute;c chặt chẽ về chuy&ecirc;n m&ocirc;n v&agrave; kĩ thuật của Tập đo&agrave;n Xuất bản Gi&aacute;o dục Pearson v&agrave; Hội đồng Anh. S&aacute;ch gi&uacute;p học sinh bước đầu h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển năng lực giao tiếp bằng tiếng Anh. Nội dung kiến thức tr&igrave;nh b&agrave;y khoa học từ cơ bản đến n&acirc;ng cao gi&uacute;p học sinh r&egrave;n luyện, củng cố v&agrave; n&acirc;ng cao tr&igrave;nh độ hiệu quả.</p>',4,0,10,NULL,0,NULL,1),('9786040237712',12,171,'Book','Tiếng Anh 10 - Tập 2 - Sách Học Sinh (2021)','products/ydlr7wsoi8thb5vwg1af',NULL,NULL,30000,'155','10x20x2','<p>S&aacute;ch được bi&ecirc;n soạn dựa tr&ecirc;n cơ sở những kinh nghiệm thực tiễn của việc dạy tiếng Anh trung học phổ th&ocirc;ng ở Việt Nam với sự hợp t&aacute;c chặt chẽ về chuy&ecirc;n m&ocirc;n v&agrave; kĩ thuật của Tập đo&agrave;n Xuất bản Gi&aacute;o dục Pearson v&agrave; Hội đồng Anh. S&aacute;ch gi&uacute;p học sinh bước đầu h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển năng lực giao tiếp bằng tiếng Anh. Nội dung kiến thức tr&igrave;nh b&agrave;y khoa học từ cơ bản đến n&acirc;ng cao gi&uacute;p học sinh r&egrave;n luyện, củng cố v&agrave; n&acirc;ng cao tr&igrave;nh độ hiệu quả.</p>',3,0,10,NULL,0,NULL,1),('9786045469705',12,162,'Book','Tiếng Anh 1 English Discovery - Pupil Book','products/p7pvwgjtkgmonhlxxnrv',NULL,NULL,95000,'169','3x4x5','<p>Tiếng Anh 1 English Discovery được Nh&agrave; xuất bản Đại học Sư phạm li&ecirc;n kết xuất bản với Nh&agrave; xuất bản Pearson bi&ecirc;n soạn d&agrave;nh cho học sinh tiểu học mới bắt đầu học tiếng Anh v&agrave; ho&agrave;n to&agrave;n ph&ugrave; hợp với Chương tr&igrave;nh L&agrave;m quen tiếng Anh Lớp 1, 2 v&agrave; Chương tr&igrave;nh tiếng Anh cấp tiểu học trong Chương tr&igrave;nh Gi&aacute;o dục phổ th&ocirc;ng mới (ban h&agrave;nh k&egrave;m theo Th&ocirc;ng tư số 32/2018/TT-BGDĐT). S&aacute;ch gi&uacute;p c&aacute;c em học sinh l&agrave;m quen v&agrave; ph&aacute;t triển kĩ năng ngoại ngữ th&ocirc;ng qua nhiều hoạt động v&agrave; nội dung hấp dẫn, ph&ugrave; hợp với lứa tuổi v&agrave; văn h&oacute;a, truyền thống Việt Nam, cũng như bổ sung kiến thức v&agrave; kĩ năng to&agrave;n cầu của thế kỉ XXI.</p>',2,0,10,NULL,0,NULL,1),('9786049609688',12,38,'Book','Tất Cả Các Dòng Sông Đều Chảy','products/r3s0z9valck2ugrq7kjp',NULL,NULL,83000,'600','3x4x5','<p>Tất cả c&aacute;c d&ograve;ng s&ocirc;ng.</p>',3,0,10,NULL,0,NULL,1),('9900000376697',12,3,'Item','Pin Maxell AA Super Power Ace (2 Viên)','products/ouyhdjt2jyvw2wxskm8r',NULL,NULL,8000,'35','4x5x6','<p>Pin Maxell AA Super Power Ace</p>',5,0,10,NULL,0,NULL,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `IDProduct` varchar(100) NOT NULL,
  `Image` varchar(400) NOT NULL,
  `Order` int DEFAULT NULL,
  PRIMARY KEY (`IDProduct`,`Image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES ('1640247218521ocz','products/bzg3hfmcpfo4eahv7ecp',1),('1640247218521ocz','products/nsx5qd3sllohp0uwylku',3),('1640247218521ocz','products/yzcxnliu7kb9xcuytl7r',2);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_publisher`
--

DROP TABLE IF EXISTS `product_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_publisher` (
  `IDPublisher` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `UrlWebsite` varchar(1000) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDPublisher`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_publisher`
--

LOCK TABLES `product_publisher` WRITE;
/*!40000 ALTER TABLE `product_publisher` DISABLE KEYS */;
INSERT INTO `product_publisher` VALUES (1,'Nhà xuất bản Giáo Dục',NULL,NULL,NULL),(2,'Nhà Xuất Bản Kim Đồng',NULL,NULL,NULL),(3,'Cty Văn Hóa & Truyền Thông Trí Việt.',NULL,NULL,NULL),(4,'Công ty Cổ Phần Đầu Tư Xuât Bản - Thiết Bị Giáo Dục Việt Nam',NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_supplier`
--

DROP TABLE IF EXISTS `product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_supplier` (
  `IDSupplier` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `UrlWebsite` varchar(1000) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_supplier`
--

LOCK TABLES `product_supplier` WRITE;
/*!40000 ALTER TABLE `product_supplier` DISABLE KEYS */;
INSERT INTO `product_supplier` VALUES (1,'Nhà xuất bản Giáo Dục',NULL,NULL,NULL),(2,'Nhà Xuất Bản Kim Đồng',NULL,NULL,NULL),(3,'Cty Văn Hóa & Truyền Thông Trí Việt.',NULL,NULL,NULL),(4,'Công ty Cổ Phần Đầu Tư Xuât Bản - Thiết Bị Giáo Dục Việt Nam',NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics` (
  `CountOrder` int DEFAULT NULL,
  `IDMonth` int NOT NULL,
  `IDYear` int NOT NULL,
  `CountUserRegister` int DEFAULT NULL,
  PRIMARY KEY (`IDYear`,`IDMonth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (100,1,2021,10),(140,2,2021,20),(120,3,2021,30),(160,4,2021,50),(200,5,2021,10),(50,6,2021,30),(60,7,2021,40),(80,8,2021,100),(120,9,2021,20),(200,10,2021,40),(400,11,2021,50),(50,12,2021,150);
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `IDUser` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LastName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `DateOfBirth` varchar(15) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `TypeOfUser` int NOT NULL,
  `Active` int NOT NULL,
  `Vip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDUser`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyen Ha Anh','Kiem','0123456789','nguyendinhhung298@gmail.com','$2b$10$yfZvR56oAjwes5N6lpO9r.7h7zdhGQxNEn.CQeg7.1H5EmDhNNJLi','2000-01-07','Nam',1,1,'abcd'),(6,'Nguyen Ha Anh','Kiem','0123456789','thanhnhien152@gmail.com','$2b$10$IgWjOSDiHf9JrtvqJ30uuuXxV24sXMut31ow.g7YRdWn7jAX3EBuO','2000-01-07','Nam',0,1,'abcd'),(7,'Nguyen Ha Anh','Kiem','0123456789','nguyendinhhung2982000@gmail.com','$2b$10$IJgt8zFlMxcZHNXhiyyfxec10oD3RaMm1/JUDDE0v6LpeUBzVfG2e','2000-01-07','Nam',1,1,'abcd'),(10,'Nguyen Ha Anh','Kiem','0123456789','nguyendinhhung152@gmail.com','$2b$10$GUU0GECV44OOwFHeRf8uOejEKrM7Q7y/KhFxzG7z07IEolBKBxwf.','2000-01-07','Nam',0,1,'abcd'),(15,'Nguyễn Hà Anh','Kiểm','0886703293','nguyenhaanhkiem@gmail.com','$2b$10$nSvnEq54NTY4DvHF1jxq2OdIzFe00aypoRW43F0B88/TAcZIUrvSu','2000-01-07','Nam',0,1,'Kiểm đẹp trai quá đi :))))');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `IDUser` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(25) NOT NULL,
  `District` varchar(25) NOT NULL,
  `Warn` varchar(45) NOT NULL,
  `PaymentAddress` int NOT NULL,
  `DeliveryAddress` int NOT NULL,
  PRIMARY KEY (`IDUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (15,'dsds','dsd','','','Thành phố Hà Nội','Quận Ba Đình','Phường Phúc Xá',0,0);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-23 19:33:00
