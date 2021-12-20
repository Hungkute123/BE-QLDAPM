-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fahasa
-- ------------------------------------------------------
-- Server version	8.0.22

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
  `Supplier` varchar(500) DEFAULT NULL,
  `PublishingCompany` varchar(500) DEFAULT NULL,
  `CoverForm` varchar(100) DEFAULT NULL,
  `Translator` varchar(100) DEFAULT NULL,
  `PublishingYear` int DEFAULT NULL,
  `NumberOfPage` int DEFAULT NULL,
  PRIMARY KEY (`IDBook`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'3300000002736','Bộ Giáo Dục Và Đào Tạo','	Nhà xuất bản Giáo Dục','	NXB Đại Học Sư Phạm Tp.HCM','Bìa Mềm',NULL,2000,600),(2,'8934974174530','Hitoshi Iwaaki','NXB Trẻ','NXB Trẻ','Bìa Mềm',NULL,2021,60),(3,'8935230000594','Nhiều Tác Giả','Cty Văn Hóa & Truyền Thông Trí Việt.','NXB Hồng Đức','Bìa Mềm',NULL,2021,350),(4,'8935244859829','Masashi Kishimoto','Nhà Xuất Bản Kim Đồng','	Nhà Xuất Bản Kim Đồng','Bìa Mềm','Vương Bảo Long',2021,200),(5,'8935278602286','Philippa Gregory','Saigon Books','NXB Văn hóa - Văn nghệ','Bìa Mềm','	Hitokiri',2021,620),(6,'8935278603191','Don M Green','Saigon Books','NXB Thế Giới','Bìa Mềm',NULL,2021,300),(7,'9786049609688','Nancy Cato','Cty Văn Hóa & Truyền Thông Trí Việt.','NXB Hội Nhà Văn','Bìa Mềm',NULL,2018,600),(8,'3300000001746','Nhiều Tác Giả','	Công ty Cổ Phần Đầu Tư Xuât Bản - Thiết Bị Giáo Dục Việt Nam','NXB Đại Học Sư Phạm TPHCM','Bìa Mềm','Trương Võ Anh Giang, Anh Trần',2018,1978),(9,'3300000004099','Nhiều Tác Giả','	Nhà xuất bản Giáo Dục','NXB Đại Học Sư Phạm TPHCM','Bìa Mềm',NULL,2021,1000),(10,'3300000004150','Nhiều Tác Giả','	Nhà xuất bản Giáo Dục','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2021,2000),(11,'3300000006079','Hikaru Nakamura','Nhà Xuất Bản Kim Đồng','	NXB Kim Đồng','Bìa Mềm','	Liên Vũ',2021,200),(12,'8935244859768','	Takaya Kagami, Yamato Yamamoto, Daisuke Furuya','Nhà Xuất Bản Kim Đồng','	NXB Kim Đồng','Bìa Mềm','	Ukatomai',2021,200),(13,'8935278602606','	Stu Heinecke','Saigon Books','NXB Thế Giới','Bìa Mềm','',2021,400),(14,'9786045469705','Lưu Thị Kim Nhung','	CÔNG TY TNHH ĐẦU TƯ VÀ PHÁT TRIỂN GIÁO DỤC CÁNH BUỒM','NXB Đại Học Sư Phạm','Bìa Mềm',NULL,2020,68),(15,'8935235226272','	Paulo Coelho','	Nhã Nam','	NXB Hội Nhà Văn','Bìa Mềm','	Lê Chu Cầu',2020,227),(16,'8935235228351','	José Mauro de Vasconcelos','	Nhã Nam','	NXB Hội Nhà Văn','Bìa Mềm','Nguyễn Bích Lan, Tô Yến Ly',2020,244),(17,'8935325000980','	Khotudien','	Skybooks','NXB Phụ Nữ Việt Nam','Bìa Mềm',NULL,2021,280),(18,'8935244848335','Tô Hoài','Nhà Xuất Bản Kim Đồng','NXB Kim Đồng','Bìa Cứng',NULL,2020,136),(19,'8936072917248','	Thùy Dương, Như Quỳnh','Crabit Kidbooks','	NXB Hà Nội','Bìa Mềm',NULL,2020,152),(20,'8935244858433','	Takaya Kagami, Yamato Yamamoto, Daisuke Furuya','	Nhà Xuất Bản Kim Đồng','	NXB Kim Đồng','Bìa Mềm','	Ukatomai',2021,192),(21,'3300000001074','	Bộ Giáo Dục Và Đào Tạo','Nhà xuất bản Giáo Dục','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2021,NULL),(22,'9786040237712','Bộ Giáo Dục Và Đào Tạo','	Cty Phương Nam','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2020,63),(23,'3300000002866','Bộ Giáo Dục Và Đào Tạo','	Nhà xuất bản Giáo Dục','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2021,NULL),(24,'3300000000954','Bộ Giáo Dục Và Đào Tạo','	Nhà xuất bản Giáo Dục','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2020,NULL),(25,'3300000001401','Bộ Giáo Dục Và Đào Tạo','Bộ Giáo Dục Và Đào Tạo','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2021,NULL),(26,'9786040234810','Nhiều Tác Giả','	Cty Phương Nam','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2021,71),(27,'8936067590890','	Nguyễn Thị Hương Giang','	Cty Phương Nam','	NXB Văn Học','Bìa Mềm',NULL,2020,23),(28,'8938507001386','	Nguyễn Thị Hương Giang','Bộ Giáo Dục Và Đào Tạo','	NXB Giáo Dục Việt Nam','Bìa Mềm',NULL,2021,33),(29,'8936067599275','Bộ Giáo Dục Và Đào Tạo','Bộ Giáo Dục Và Đào Tạo','	NXB Giáo Dục Việt Nam','Bìa Cứng',NULL,2021,33),(30,'8934978513151','Bộ Giáo Dục Và Đào Tạo','Bộ Giáo Dục Và Đào Tạo','	NXB Giáo Dục Việt Nam','Bìa Cứng',NULL,2021,23),(31,'8935210250551','	Nhiều Tác Giả','	Tân Việt','NXB Thông Tấn','Bìa Cứng',NULL,2020,23),(32,'8935212333696','	Nhiều Tác Giả','	Tân Việt','NXB Thông Tấn','Bìa Cứng',NULL,2017,50),(33,'8935095623709','	Nhiều Tác Giả','Huy Hoang Bookstore','	NXB Dân Trí','	Bìa Mềm',NULL,2018,157),(34,'8935236420556','	Nhiều Tác Giả','Huy Hoang Bookstore','	NXB Dân Trí','	Bìa Mềm',NULL,2015,121),(35,'1116090011532','Jeff Kinney','	Công ty TNHH Sách Hà Giang','Văn Học','	Bìa Mềm',NULL,2012,216),(36,'8935236420501','	Trình Dục Hoa, Trương Du','	Nhà Sách Minh Thắng','NXB Phụ Nữ Việt Nam','	Bìa Mềm',NULL,2020,643),(37,'8935235221734','	Nhiều Tác Giả','Huy Hoang Bookstore','	NXB Dân Trí','	Bìa Mềm',NULL,2020,422),(41,'1639241421469GLJ','Kiem','','Kiem','Kiem','Kiem',2000,100000);
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
INSERT INTO `item` VALUES (1,'1880000187661-mau3','Trung Quốc','OEM','	Trung Quốc','	Cty Văn Hoá Việt Văn','Trắng','	Nhựa, Vải'),(2,'1880000186381-mau4','	Trung Quốc','	OEM','	Trung Quốc','Cty Văn Hoá Việt Văn','Nhiều màu','	Nhựa, Vải'),(3,'6937168773115-mau2','	Trung Quốc','	OEM','	Trung Quốc','Cty TM Hạnh Thuận','Nhiều màu','	Giấy'),(4,'1503040810855-mau12','	Việt Nam','	Ngọc Phương','	Việt Nam','	Cty Văn Hóa Ngọc Phương','Nhiều màu','Giấy'),(5,'1901011575695-mau2','	Trung Quốc','	XIAOQINGWA','	Trung Quốc','	Cty TM Hạnh Thuận','	Xanh Dương','	Nhựa'),(6,'8935276401041-mau1','Việt Nam','	B.bag','Việt Nam','Bình Tây','	Đen','	Vải'),(7,'8851907161446-mau2','	Thương Hiệu Thái Lan','	Elephant','	Ấn Độ','	Cty Fabico','	Nhựa, Kim Loại','	Nhựa, Kim Loại'),(8,'6934274178186-mau1','Trung Quốc','	Kinary','Trung Quốc','Cty Fabico','	Xanh Mint','	Nhựa'),(9,'8938530658243-mau1','	Việt Nam','	Vinashield','	Việt Nam','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Nhiều màu',NULL),(10,'8936098230123','	Việt Nam','Vina Oils','	Việt Nam','CÔNG TY CỔ PHẨN TẬP ĐOÀN QUỐC TẾ HA GROUP','Đen','	Nhựa'),(11,'8938530658243-mau11','	Việt Nam','Vinashield','	Việt Nam','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','	Nhiều màu',NULL),(12,'8934578154204','Việt Nam','Điện Quang','Việt Nam','Cty Bóng Đèn Điện Quang','	Đỏ - Đen','	Nhựa, Kim Loại'),(13,'9900000376697','	Thương Hiệu Nhật','Maxell','Indonesia','Cty Thu Trang','Đỏ - Trắng','	Kim Loại'),(14,'1400000099261-mau3','	Thương Hiệu Nhật','Moshi Moshi','Thái Lan','Dn Tư Nhân Trường Vinh','	Xám','Nhựa'),(15,'1801011716947-mau2','	Trung Quốc','DOTCOM','	Trung Quốc','	Cty Mai Thư','Đen',NULL),(16,'8936183830115','	Việt Nam','	Talk!','	Việt Nam','Công Ty TNHH Headfully','Xám',NULL),(17,'8936081250329','	Việt Nam','WAKAMONO','	Việt Nam','	Công Ty Cổ Phần WAKAMONO','	Trắng','	Vải'),(18,'1507020063682-mau4','Trung Quốc','OEM','Trung Quốc','	Cty TM Hạnh Thuận','Xanh Dương',NULL),(19,'8936195060159','	Việt Nam','	FAMAPRO','	Việt Nam','Công Ty TNHH SX TM Thiết Bị Nam Anh','Đen','	Vải'),(20,'8936115290826','	Việt Nam','Á Châu','	Việt Nam','Công Ty TNHH Sản Xuất Thương Mại Kỹ Thuật Á Châu','	Trắng','Vải'),(21,'8936115290901','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Sản Xuất Thương Mại Kỹ Thuật Á Châu','	Trong Suốt','	Nhựa'),(24,'8936195060142','Việt Nam','Á Châu','Việt Nam','Công Ty TNHH Sản Xuất Thương Mại Kỹ Thuật Á Châu','	Trắng','Vải'),(25,'8936195060135','Việt Nam','	FAMAPRO','Trung Quốc','	Công Ty Cổ Phần WAKAMONO','	Trắng','Vải'),(26,'	8938530658243-mau7','Việt Nam','	Vinashield','Việt Nam','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','	Nhiều màu',NULL),(27,'8938530658120','Trung Quốc','	Vinashield','Trung Quốc','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','Xanh Dương',NULL),(28,'8938530658212','Trung Quốc','	FAMAPRO','Việt Nam','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','	Không Màu','Nhựa'),(29,'8938530658243-mau12','Việt Nam','Á Châu','Việt Nam','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','	Nhiều màu','Nhựa'),(30,'8938530658205','Việt Nam','Á Châu','Việt Nam','	Công Ty TNHH Dược và Trang Thiết Bị Y Tế Á Đông','	Nhiều màu','Nhựa'),(31,'8936130670658','Việt Nam','	Board Game VN','Việt Nam','	Boardgame Việt Nam','	Nhiều màu','	Giấy'),(32,'5702016367768','Việt Nam','	Thương Hiệu Đan Mạch','Việt Nam','	Việt Tinh Anh','	Nhiều màu','Nhựa'),(33,'8936106270837','Việt Nam','	Thương Hiệu Đan Mạch','Việt Nam','	Việt Tinh Anh','	Nhiều màu',NULL),(34,'4904810172765','Việt Nam','Takaratomy','	Trung Quốc','	Việt Tinh Anh','	Đỏ','	Nhựa'),(35,'8936121108290','Trung Quốc','	JIEHUI TOYS','Trung Quốc','	Cty Lâm Ngọc Việt','	Nhiều màu','	Nhựa'),(36,'5702016890914','Trung Quốc','	JIEHUI TOYS','Trung Quốc','	Cty Lâm Ngọc Việt','	Nhiều màu','	Nhựa'),(37,'4549526611483','Thái Lan','	Casio','Thái Lan','	Bình Tây','Hồng','Nhựa, Kim Loại'),(38,'4549526611476','Thái Lan','	Casio','Thái Lan','	Bình Tây','	Xanh Dương','Nhựa, Kim Loại'),(39,'4549526606038','Thái Lan','	Casio','Thái Lan','	Bình Tây','	Đen','Nhựa, Kim Loại'),(40,'4549526607325','Thái Lan','	Casio','Thái Lan','	Bình Tây','	Đen','Nhựa, Kim Loại'),(41,'4549526607370','Thái Lan','	Casio','Thái Lan','	Bình Tây','	Đen','Nhựa, Kim Loại');
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
  `SubImageOne` varchar(400) DEFAULT NULL,
  `SubImageTwo` varchar(400) DEFAULT NULL,
  `SubImageThree` varchar(400) DEFAULT NULL,
  `Price` float NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `PackagingSize` varchar(100) DEFAULT NULL,
  `Description` varchar(10000) DEFAULT NULL,
  `View` int DEFAULT '0',
  `Votes` int DEFAULT '0',
  `Quantity` int DEFAULT NULL,
  `Sold` int DEFAULT NULL,
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
INSERT INTO `product` VALUES ('1116090011532',1,54,'Book','Nhật Ký Chú Bé Nhút Nhát - Tập 1','image_195509_1_20355.jpg',NULL,NULL,NULL,40000,'240','13.5 x 20.5','Sinh động, hài hước, hấp dẫn, từng trang viết của Nhật ký chú bé nhút nhát đã dẫn dắt người đọc đi từ bất ngờ này đến bất ngờ khác qua mỗi ngày cậu bé Greg lớn lên. Bạn đọc chắc chắn sẽ phải cười phá lên khi chứng kiến những rắc rối liên tiếp, những trò đùa tinh quái nhưng hết sức thông minh của cậu. Trẻ con, mơ mộng, bướng bỉnh, Greg đã đi vào văn học với tư cách là một trong những nguyên mẫu trẻ thơ đáng yêu nhất, ấn tượng nhất và chiếm được cảm tình của hàng triệu độc giả trên toàn thế giới. Lối kể chuyện hóm hỉnh rất có duyên cùng những bức hình minh hoạ ngộ nghĩnh của tác giả Jeff Kinney đã tạo cho tác phẩm sức cuốn hút kỳ lạ, đưa nó lên giữ kỷ luật best-seller của New York Times trong 75 tuần liên với số lượng tiêu thụ lên đến 2 triệu cuốn.',0,0,10,NULL,NULL,NULL,1),('1400000099261-mau3',1,80,'Item','Vỉ Treo 4 Móc Moshi 017 - Màu Xám','image_195509_1_32425.jpg',NULL,NULL,NULL,70000,'70','19 x 12 x 2','Vỉ Treo 4 Móc Moshi 017',4,0,10,NULL,NULL,NULL,1),('1503040810855-mau12',1,200,'Item','Bộ 10 Giấy Bao Tập Ngọc Phương - Mẫu 12','b1361582835c4a02134d.jpg',NULL,NULL,NULL,11000,'20','35.5 x 25.5 x 0.2','Bộ 10 Giấy Bao Tập Ngọc Phương',5,0,10,NULL,NULL,NULL,1),('1507020063682-mau4',1,113,'Item','Thước Dây May - Màu Xanh','image_195509_1_12068.jpg',NULL,NULL,NULL,4000,'15','1 x 150','Thước Dây May',6,0,10,NULL,NULL,NULL,1),('1639241421469GLJ',15,34,'Book','Đọc Vị Trẻ Qua Nét Vẽ (Thực Hành)','1639241421299_TiemVaccine_ClassDiagram.png','1639241421302_TiemVaccine_ClassDiagram.png','1639241421305_TiemVaccine_ClassDiagram.png','1639241421307_TiemVaccine_ClassDiagram.png',1000,'1000','1000x1x1','<p>Kh&ocirc;ng chỉ l&agrave; một c&aacute;ch giải tr&iacute;, mẹ c&oacute; biết bức tranh con vẽ cũng phần n&agrave;o thể hiện t&iacute;nh c&aacute;ch kh&ocirc;ng? Theo c&aacute;c nh&agrave; nghi&ecirc;n cứu, bạn c&oacute; thể suy ra nhiều thứ th&ocirc;ng qua từng bức tranh của con, c&aacute;ch b&eacute; cảm nhận vấn đề. Chẳng hạn, khi cảm thấy lo lắng, b&eacute; thường vẽ m&acirc;y, chim bay hay những h&igrave;nh người kh&ocirc;ng c&oacute; mắt. Trong khi đ&oacute;, những b&eacute; hay e thẹn, nh&uacute;t nh&aacute;t thường vẽ những h&igrave;nh người nhỏ, kh&ocirc;ng c&oacute; mũi hoặc miệng với tay nhỏ, gần s&aacute;t th&acirc;n người&hellip; Nhưng một điều kỳ diệu hơn thế l&agrave; c&aacute;c b&eacute; ở tuổi cầm b&uacute;t c&ograve;n chưa vững cũng c&oacute; thể tự mi&ecirc;u tả được suy nghĩ của m&igrave;nh th&ocirc;ng qua những n&eacute;t vẽ nguệch ngoạch. Mỗi giai đoạn ứng với từng bức tranh kh&aacute;c nhau v&agrave; tương ứng với một bước trong sự ph&aacute;t triển của trẻ.</p>',0,0,0,NULL,100,0,0),('1801011716947-mau2',1,NULL,'Item','Đồng Hồ Dotcom 3009 - Màu Đen','image_195509_1_14245.jpg',NULL,NULL,NULL,286000,'40',NULL,'Đồng Hồ Dotcom 3009',7,0,10,NULL,NULL,NULL,1),('1880000186381-mau4',1,80,'Item','Vòng Hoa Có Khăn Voan Hóa Trang Halloween 1607-9-2021 - Hình Ma Bí - Màu Trắng','image_244718_1_2688.jpg',NULL,NULL,NULL,22000,'22','23 x 20 x 1 cm','Vòng Hoa Có Khăn Voan Hóa Trang Halloween 1607-9-2021',4,0,10,NULL,NULL,NULL,1),('1880000187661-mau3',1,80,'Item','Cài Tóc Có Khăn Voan Hoá Trang Halloween YL-35-2021 - Hình Đầu Lâu - Màu Trắng','image_244718_1_2714.jpg',NULL,NULL,NULL,29000,'29','21 x 14 x 4','Cài Tóc Có Khăn Voan Hoá Trang Halloween YL-35-2021',1,0,10,NULL,NULL,NULL,1),('1901011575695-mau2',1,113,'Item','Thước Kẻ 18 cm - XiaoQingWa 2094 - Màu Xanh','1901011575695-mau2-_2_.jpg',NULL,NULL,NULL,6000,'10','19 x 3 x 0.3','Thước Kẻ 18 cm XiaoQingWa 2094',3,0,10,NULL,NULL,NULL,1),('3300000000954',1,164,'Book','Sách Giáo Khoa Bộ Lớp 3 - Bài Học + Bài Tập (Bộ 13 Cuốn) (2021)','3300000000954ddddddd.jpg',NULL,NULL,NULL,115000,'1768','24 x 17 x 5','Sách Giáo Khoa Bộ Lớp 3 - Bài Học + Bài Tập (Bộ 13 Cuốn) (2021)',1,0,10,NULL,NULL,NULL,1),('3300000001074',1,168,'Book','Sách Giáo Khoa Bộ Lớp 7 - Sách Bài Học (Bộ 12 Cuốn) (2021)','3300000001074.jpg',NULL,NULL,NULL,134000,'2105','24 x 17 x 6','Sách Giáo Khoa Bộ Lớp 7 - Sách Bài Học (Bộ 12 Cuốn) (2021)',2,0,10,NULL,NULL,NULL,1),('3300000001401',1,173,'Book','Sách Giáo Khoa Bộ Lớp 12 - Sách Bài Học (Bộ 13 Cuốn - Không Tiếng Anh) (2021)','image_242237.jpg',NULL,NULL,NULL,163000,'4000','24 x 17 x 5','Sách Giáo Khoa Bộ Lớp 12 - Sách Bài Học (Bộ 13 Cuốn - Không Tiếng Anh) (2021)',5,0,10,NULL,NULL,NULL,1),('3300000001746',1,162,'Book','Sách Giáo Khoa Bộ Lớp 1 Cánh Diều - Sách Bài Học (Bộ 9 Cuốn) (2021)','3300000001746_bia.jpg',NULL,NULL,NULL,199000,'1978','26.5 x 19 x 5.5','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Học - Bộ Sách Chân Trời Sáng Tạo (Bộ 9 Cuốn) (2021)',5,0,10,NULL,NULL,NULL,1),('3300000002736',1,162,'Book','Sách Giáo Khoa Bộ Lớp 1 - Sách Bài Tập - Bộ Sách Cánh Diều (Bộ 10 Cuốn - Không Vở Thực Hành Âm Nhạc) (2021)','image_243146.jpg',NULL,NULL,NULL,119000,'2000','24 x 17 x 0.5','Sách Giáo Khoa Bộ Lớp 1 - Sách Bài Tập - Bộ Sách Cánh Diều (Bộ 10 Cuốn - Không Vở Thực Hành Âm Nhạc) (2021)',1,0,10,NULL,NULL,NULL,1),('3300000002866',1,167,'Book','Sách Giáo Khoa Bộ Lớp 6 - Sách Bài Học - Bộ Sách Chân Trời Sáng Tạo (Bộ 12 Cuốn) (2021)','image_242583.jpg',NULL,NULL,NULL,234000,'3500','26.5 x 19','Sách Giáo Khoa Bộ Lớp 6 - Sách Bài Học - Bộ Sách Chân Trời Sáng Tạo (Bộ 12 Cuốn) (2021)',1,0,10,NULL,NULL,NULL,1),('3300000004099',1,162,'Book','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Học - Bộ Sách Chân Trời Sáng Tạo (Bộ 9 Cuốn) (2021)','b_-s_ch-ctst_1_3.jpg',NULL,NULL,NULL,186000,'1000','26.5 x 19','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Tập - Bộ Sách Chân Trời Sáng Tạo (Bộ 11 Cuốn) (2021)',6,0,10,NULL,NULL,NULL,1),('3300000004150',1,162,'Book','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Tập - Bộ Sách Chân Trời Sáng Tạo (Bộ 11 Cuốn) (2021)','1124010357318_3.jpg',NULL,NULL,NULL,138000,'2000','26.5 x 19','Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Tập - Bộ Sách Chân Trời Sáng Tạo (Bộ 11 Cuốn) (2021)',7,0,10,NULL,NULL,NULL,1),('3300000006079',1,37,'Book','Bên Dưới Cây Cầu Arakawa - Arakawa Under The Bridge - Tập 1 - Tặng Kèm Postcard','arakawa---tap-1.jpg',NULL,NULL,NULL,30000,'200','18 x 13','“Giúp tôi hiểu thế nào là yêu nhé?”',4,0,10,NULL,NULL,NULL,1),('4549526606038',1,196,'Item','Máy Tính Casio FX 580 VN X','image_195509_1_8906.jpg',NULL,NULL,NULL,657000,'190','17 x 8.4 x 2.5','Máy Tính Casio FX580VN X thuộc dòng máy tính khoa học ClassWiz, được hãng máy tính Casio Nhật Bản sản xuất dành riêng cho nền giáo dục Việt. Sản phẩm tích hợp tới 521 tính năng, trong đó có rất nhiều tính năng mà các dòng máy tính khoa học trên thị trường hiện nay không có được.',4,0,10,NULL,NULL,NULL,1),('4549526607325',1,196,'Item','Máy Tính Casio Fx500MS','4549526607325.jpg',NULL,NULL,NULL,299000,'180','17 x 8.4 x 2.5','Máy Tính Casio Fx500MS',1,0,10,NULL,NULL,NULL,1),('4549526607370',1,196,'Item','Máy Tính Casio FX 570 MS','4549526607370.jpg',NULL,NULL,NULL,390000,'180','17 x 8.4 x 2.5','Máy Tính Casio FX 570MS (TL)',1,0,10,NULL,NULL,NULL,1),('4549526611476',1,196,'Item','Máy Tính Casio FX580VN X-BU (Màu Xanh)','casio-fx-580vn-x-xanh-body-1-dd.jpg',NULL,NULL,NULL,657000,'190','17 x 8.4 x 2.5','Máy Tính Casio FX580VN X-PK (Màu Hồng) thuộc dòng máy tính khoa học ClassWiz, được hãng máy tính Casio Nhật Bản sản xuất dành riêng cho nền giáo dục Việt. Sản phẩm tích hợp tới 521 tính năng, trong đó có rất nhiều tính năng mà các dòng máy tính khoa học trên thị trường hiện nay không có được.',1,0,10,NULL,NULL,NULL,1),('4549526611483',1,196,'Item','Máy Tính Casio FX580VN X-PK (Màu Hồng)','casio-fx-580vn-x-h_ng-body-1-dd.jpg',NULL,NULL,NULL,657000,'190','17 x 8.4 x 2.5','Máy Tính Casio FX580VN X-PK (Màu Hồng) thuộc dòng máy tính khoa học ClassWiz, được hãng máy tính Casio Nhật Bản sản xuất dành riêng cho nền giáo dục Việt. Sản phẩm tích hợp tới 521 tính năng, trong đó có rất nhiều tính năng mà các dòng máy tính khoa học trên thị trường hiện nay không có được.',2,0,10,NULL,NULL,NULL,1),('4904810172765',1,138,'Item','Robot Nắp Chai Colamaru Phượng Hoàng - Bottleman 172765','image_225628.jpg',NULL,NULL,NULL,139000,'400','16 x 14 x 6','Đối với mùa hè nắng nóng này, các mấy bé nhà mình chỉ thích ở nhà nằm điều hòa và chơi điện thoại thôi, làm mình thấy rất lo lắng cho mắt các bé, mà không làm cách nào cho các bé cách ra điều hòa và điện thoại ra được. Và hôm nay tình cờ mình đã lên Fahasa để tìm mua sách đọc thì thấy Fahasa có bộ bài Lầy - Party Game Lầy Nhất Hệ Mặt Trời, này nên mình đã mua về cho các bé nhà thử chơi xem nào. Sau khi mua về và rủ các bé chơi thì các bé rất thích. Mỗi hộp 2 bịch bài và 1 tờ luật chơi. Hài lòng bởi mức giá 56 nghìn thì chất giấy sẽ không bằng loại trăm mấy trở lên. Nhưng: + Luật chơi khá dễ hiểu. + Hình ảnh nhí nhố vui + Giấy tuy không bóng loáng nhưng tương đối dầy (nhưng chính vì dầy nên cân nhắc nếu ép nhựa sẽ phải cắt chừa biên rộng thì cầm sẽ hơi khó xíu nhé) + Màu sắc sẽ nhạt hơn hình chụp. + Mặt chơi thì bóng hơn mặt lưng. Nên mua chơi, người lớn cũng thấy vui như con nít.',4,0,10,NULL,NULL,NULL,1),('5702016367768',1,138,'Item','Bộ Gạch Classic Ý Tưởng Lego 11001 (123 Chi Tiết)','image_182087.jpg',NULL,NULL,NULL,239000,'400','16 x 14 x 6','Bộ Gạch Classic Ý Tưởng Lego 11001 (123 Chi Tiết)',4,0,10,NULL,NULL,NULL,1),('5702016890914',1,138,'Item','Đồ Chơi Lắp Ráp LEGO 42117 - Race Plane','image_219101.jpg',NULL,NULL,NULL,216000,'155','15.7 x 14.1 x 6.1','Đồ Chơi Lắp Ráp LEGO 42117 - Race Plane',6,0,10,NULL,NULL,NULL,1),('6934274178186-mau1',1,115,'Item','Túi Zip A4 - Kinary FB8041 - Màu Xanh Mint','image_195708_1.jpg',NULL,NULL,NULL,19000,'33','32 x 25 x 0.3','Túi Zip A4 Kinary FB8041',7,0,10,NULL,NULL,NULL,1),('6937168773115-mau2',1,124,'Item','Sổ Bìa Cứng Nhỏ Nút 64144-S002 - Hình Xe - Dây Cài Màu Nâu','6937168773115-mau2-_1_.jpg',NULL,NULL,NULL,83000,'171','14.5 x 10.5 x 2','Sổ Bìa Cứng Nhỏ Nút 64144-S002 vô cùng bắt mắt bởi hình ảnh bìa được thiết kế rất dễ thương và ngộ nghĩnh.',3,0,10,NULL,NULL,NULL,1),('8851907161446-mau2',1,117,'Item','Bấm Kim Số 10 Elephant Neon - Màu Đỏ','8851907161446-mau2-_3_.jpg',NULL,NULL,NULL,30000,'60','9.6 x 3.5 x 2','Bấm Kim Số 10 Elephant Neon',3,0,10,NULL,NULL,NULL,1),('8934578154204',1,3,'Item','Đèn Bàn Điện Quang - ĐQ DKL03 B Chóa Sắt - Đỏ Đen - Có Bóng','image_191710.jpg',NULL,NULL,NULL,192000,'800','20.3 x 16.3 x 14.3','Đèn Bàn Điện Quang - ĐQ DKL03 B Chóa Sắt - Đỏ Đen - Có Bóng',7,0,10,NULL,NULL,NULL,1),('8934974174530',1,38,'Book','Ký Sinh Thú - Tập 2 - Tặng Kèm Bookmark','nxbtre_full_20482021_034813_2.jpg',NULL,NULL,NULL,45000,'200','17.6 x 11.3 ','Izumi Shinichi là một thiếu niên 17 tuổi. Một ngày nọ, những sinh vật lạ ngoài hành tinh đổ bộ xuống trái đất. Chúng ký sinh trong não người và chiếm quyền điều khiển cơ thể họ. Chúng được gọi là Ký sinh thú. Shinichi đã bị một Ký sinh thú chui vào tai nhằm chiếm đóng cơ thể cậu nhưng nó đã thất bại. Sau đó, nó xâm chiếm cánh tay phải của cậu. Shinichi và Ký sinh thú này buộc phải hợp tác, cùng tồn tại với nhau và chiến đấu chống lại những Ký sinh thú khác. Truyện không đơn thuần chỉ để giải trí mà còn ẩn chứa giá trị nhân văn sâu sắc, từng bước bóc trần được bản chất \"con\" của loài người.',37,0,10,NULL,NULL,NULL,1),('8934978513151',1,122,'Book','Lớp Một Thật Vui - Tập Tô 3 - Tô Chữ','8934978513151.jpg',NULL,NULL,NULL,10000,'122','15.7 x 14.1 x 6.1','Tập Tô Chữ Mẫu Giáo Dành Cho Trẻ 5-6 Tuổi',3,0,10,NULL,NULL,NULL,1),('8935095623709',1,54,'Book','Những Câu Chuyện Về Tình Cảm Gia Đình','image_193785.jpg',NULL,NULL,NULL,36000,'240','13.5 x 20.5','Cuốn sách NHỮNG CÂU CHUYỆN VỀ TÌNH CẢM GIA ĐÌNH cho thấy gia đình là nơi thân thương, bình yên nhất, nơi mà mọi người chúng ta sẽ được học những bài học đầu tiên về tình yêu thương.',4,0,10,NULL,NULL,NULL,1),('8935210250551',1,122,'Item','Tự Xóa Thông Minh - Bé Tập Tô Nét (3-5 Tuổi)','image_197195.jpg',NULL,NULL,NULL,71000,'300','28 x 22.7','Bé Tập Tô Nét:',3,0,10,NULL,NULL,NULL,1),('8935212333696',1,122,'Book','Step By Step Drawing - Vẽ Cơ Bản Từ A-Z - Thế Giới Muôn Màu','image_142811.jpg',NULL,NULL,NULL,62000,'300','28 x 22.7','Bé Tập Tô Nét:',3,0,10,NULL,NULL,NULL,1),('8935230000594',1,138,'Book','Cắt Dán Hình 3D - Bé Khéo Tay - Bộ Khéo Tay','image_72851.jpg',NULL,NULL,NULL,29000,'350','35 x 25','Cắt Dán Hình 3D - Bé Khéo Tay - Bộ Khéo Tay',7,0,10,NULL,NULL,NULL,1),('8935235221734',1,54,'Book','Hoàng Tử Bé (Tái Bản 2019)','image_187010.jpg',NULL,NULL,NULL,64000,'240','15.7 x 14.1 x 6.1','Lễ phép và lịch sự là thói quen hữu ích cho bé suốt cả cuộc đời. Bố mẹ hãy cùng tạo dựng thói quen bổ ích này cho bé bằng những câu chuyện kể trước giờ đi ngủ. Cuốn sách gồm 24 câu chuyện đơn giản, thú vị giúp hình thành sự lễ phép và lịch sự cho trẻ.',3,0,10,NULL,NULL,NULL,1),('8935235226272',1,33,'Book','Nhà Giả Kim (Tái Bản 2020)','image_195509_1_36793.jpg',NULL,NULL,NULL,67000,'220','20.5 x 13','Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. ',7,0,10,NULL,NULL,NULL,1),('8935235228351',1,57,'Book','Cây Cam Ngọt Của Tôi','image_217480.jpg',NULL,NULL,NULL,108000,'280','20 x 14.5','“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist',68,0,10,NULL,NULL,NULL,1),('8935236420501',1,54,'Book','Truyện Kể Trước Khi Ngủ - Lễ Phép Và Lịch Sự','image_195509_1_51829.jpg',NULL,NULL,NULL,52000,'300','15.7 x 14.1 x 6.1','Lễ phép và lịch sự là thói quen hữu ích cho bé suốt cả cuộc đời. Bố mẹ hãy cùng tạo dựng thói quen bổ ích này cho bé bằng những câu chuyện kể trước giờ đi ngủ. Cuốn sách gồm 24 câu chuyện đơn giản, thú vị giúp hình thành sự lễ phép và lịch sự cho trẻ.',3,0,10,NULL,NULL,NULL,1),('8935236420556',1,54,'Book','Truyện Kể Trước Khi Ngủ - Phát Triển Trí Tuệ','image_195877.jpg',NULL,NULL,NULL,52000,'240','13.5 x 20.5','Các câu chuyện đều ngắn gọn và hấp dẫn , bao gồm các trò chơi thú vị những câu chuyện hài hước , những câu hỏi cần bé phải suy nghĩ . Cha mẹ hãy cùng trẻ đọc truyện , trả lời câu hỏi nhé . Mỗi ngày cha mẹ chỉ cần dành ra vài phút đọc sách cùng trẻ là đã có thể giúp trẻ bước vào thế giới diệu kỳ của những câu chuyện trí tuệ rồi .',5,0,10,NULL,NULL,NULL,1),('8935244848335',1,93,'Book','Dế Mèn Phiêu Lưu Ký - Ngô Mạnh Lân Minh Họa - Ấn Bản Kỉ Niệm 100 Năm Tô Hoài','image_195509_1_55895.jpg',NULL,NULL,NULL,150000,'300','23 x 17','Gần 80 năm qua, kể từ ngày đầu tiên ra mắt bạn đọc, năm 1941, \"Dế Mèn phiêu lưu ký\" vẫn là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài.',4,0,10,NULL,NULL,NULL,1),('8935244858433',1,35,'Book','Thiên Thần Diệt Thế - Seraph Of The End - Tập 12 (Tái Bản 2021)','thien-than-diet-the---tap-12---tb-2021.jpg',NULL,NULL,NULL,20000,'200','17.6 x 11.3 ','Ferid và Crowley xuất hiện trước mặt đội Shinoa - những người đang rút khỏi Đế Quỷ Quân. Nhận thấy sự chênh lệch sức mạnh quá rõ ràng, Yuichiro cùng đồng đội bị đẩy vào tình thế buộc phải hợp tác, không thể chạy trốn. Thứ Ferid đưa ra chính là!? Trong lúc đó, Guren đã trở về Shinjuku…',46,0,10,NULL,NULL,NULL,1),('8935244859768',1,35,'Book','Thiên Thần Diệt Thế - Tập 17','thien-than-diet-the---tap-17.jpg',NULL,NULL,NULL,20000,'200','17.6 x 11.3','Thiên thần thổi kèn thứ 6 hiện đang bị phong ấn tại nhà riêng của Guren. Yuichiro quyết tâm',6,0,10,NULL,NULL,NULL,1),('8935244859829',1,98,'Book','Naruto Tập 62','naruto-tap-62.jpg',NULL,NULL,NULL,22000,'200','17.6 x 11.3','Itachi đã ngăn chặn được Kabuto và “Uế Thổ Chuyển Sinh” gây hỗn loạn chiến trường cũng bị giải trừ! Dù được tận mắt chứng kiến hành động ấy, oán hận trong Sasuke vẫn không hề nguôi ngoai. Những lời sau cuối mà người anh trai yêu quý để lại cho cậu là gì!? Trong khi đó, cuộc chiến của nhóm Naruto càng lúc càng khốc liệt…!!',5,0,10,NULL,NULL,NULL,1),('8935276401041-mau1',1,195,'Item','Ba Lô \"Tet Holiday\" Phong Cách Nhật B.bag - Màu Đen - B-23-023','image_188256_1.jpg',NULL,NULL,NULL,359000,'490','40 x 37 x 10','Ba Lô Tet Holiday B-23-023 - Màu Đen được thiết kế theo phong cách Nhật Bản và nằm trong bộ sưu tập \"Tet Holiday\". Đây là dòng sản phẩm được giới trẻ rất yêu thích bởi tính tiện lợi và thời trang. Hình ảnh sử dụng mang đậm dấu ấn của ngày Tết như: hoa anh đào, chim én … kết hợp với màu sắc thời trang cá tính, tạo nét độc đáo và nổi bật, giúp người sử dụng dễ dàng kết hợp với nhiều loại trang phục.',8,0,10,NULL,NULL,NULL,1),('8935278602286',1,35,'Book','Vương Triều Tudor Cuối Cùng','image_187926.jpg',NULL,NULL,NULL,220000,'620','16 x 24','Vương triều Tudor cuối cùng là một tác phẩm lịch sử về hoàng gia Anh thời Phục hưng, được sáng tác bởi một người uyên thâm về lịch sử, tác giả #1 theo bình chọn của New York Times - Philippa Gregory.',54,0,10,NULL,NULL,NULL,1),('8935278602606',1,41,'Book','Contact Marketing - Nghệ Thuật Chinh Phục Khách Hàng','image_232602.jpg',NULL,NULL,NULL,180000,'400','20.5 x 14','Contact Marketing là gì?',8,0,10,NULL,NULL,NULL,1),('8935278603191',1,35,'Book','Công Thức Thành Công - Những Bí Quyết Thành Công Vượt Thời Gian Của Napoleon Hill','image_180851.jpg',NULL,NULL,NULL,90000,'300','14 x 20.5','“Nếu là vài năm trước đây, tôi đã không thể viết quyển sách này, bởi như Henry David Thoreau đã viết: “Thật hão huyền khi ngồi viết sách trong khi bạn còn chưa trải nghiệm cuộc sống”\"',3,0,10,NULL,NULL,NULL,1),('8935325000980',1,58,'Book','Từ Điển Tiếng “Em” - Tái Bản 2021','bia_tudientiengem-_1_.jpg',NULL,NULL,NULL,69000,'300','12 x 10','TỪ ĐIỂN TIẾNG “EM” – Định nghĩa về thế giới mới!',4,0,10,NULL,NULL,NULL,1),('8936067590890',1,122,'Book','Tập Tô Chữ Mẫu Giáo Dành Cho Trẻ 5-6 Tuổi','8936067590890.jpg',NULL,NULL,NULL,12000,'150','15.7 x 14.1 x 6.1','Tập Tô Chữ Mẫu Giáo Dành Cho Trẻ 5-6 Tuổi',5,0,10,NULL,NULL,NULL,1),('8936067599275',1,122,'Book','Bé Vào Lớp Một - Tập Tô Tập Ghép Vần Tập 1','be-vao-lop-mot-tap-to-tap-ghep-van-tap-1-440.jpg',NULL,NULL,NULL,9000,'122','15.7 x 14.1 x 6.1','Tập Tô Chữ Mẫu Giáo Dành Cho Trẻ 5-6 Tuổi',7,0,10,NULL,NULL,NULL,1),('8936072917248',1,53,'Book','Bộ Sách “Truyện Đọc Trước Giờ Đi Ngủ” - Bộ 4 Cuốn','b_-truy_n-_c-tr_c-gi_-_i-ng_.jpg',NULL,NULL,NULL,278000,'300',NULL,'Bộ Sách “Truyện Đọc Trước Giờ Đi Ngủ”',6,0,10,NULL,NULL,NULL,1),('8936081250329',1,75,'Item','Khẩu Trang Y Tế 4 Lớp WAKAMONO Diệt Virus Corona 99% (10 Cái/Hộp)','untitled-1gjuj.jpg',NULL,NULL,NULL,45000,'80','	22 x 10 x 3','Khẩu Trang Y Tế 4 Lớp WAKAMONO Diệt Virus Corona 99% (10 Cái/Hộp)',6,0,10,NULL,NULL,NULL,1),('8936098230123',1,80,'Item','Tinh Dầu Tràm Trà 10Ml - Vina Oils VN0011','image_244718_1_1758.jpg',NULL,NULL,NULL,90000,'50','10 x 2 x 2','Tinh Dầu Tràm Trà 10Ml Vina Oils VN0011',3,0,10,NULL,NULL,NULL,1),('8936106270837',1,138,'Item','Bộ Đồ Chơi Cát Động Lực CĐL-002','image_195509_1_1590.jpg',NULL,NULL,NULL,41000,'400','16 x 14 x 6','Đối với mùa hè nắng nóng này, các mấy bé nhà mình chỉ thích ở nhà nằm điều hòa và chơi điện thoại thôi, làm mình thấy rất lo lắng cho mắt các bé, mà không làm cách nào cho các bé cách ra điều hòa và điện thoại ra được. Và hôm nay tình cờ mình đã lên Fahasa để tìm mua sách đọc thì thấy Fahasa có bộ bài Lầy - Party Game Lầy Nhất Hệ Mặt Trời, này nên mình đã mua về cho các bé nhà thử chơi xem nào. Sau khi mua về và rủ các bé chơi thì các bé rất thích. Mỗi hộp 2 bịch bài và 1 tờ luật chơi. Hài lòng bởi mức giá 56 nghìn thì chất giấy sẽ không bằng loại trăm mấy trở lên. Nhưng: + Luật chơi khá dễ hiểu. + Hình ảnh nhí nhố vui + Giấy tuy không bóng loáng nhưng tương đối dầy (nhưng chính vì dầy nên cân nhắc nếu ép nhựa sẽ phải cắt chừa biên rộng thì cầm sẽ hơi khó xíu nhé) + Màu sắc sẽ nhạt hơn hình chụp. + Mặt chơi thì bóng hơn mặt lưng. Nên mua chơi, người lớn cũng thấy vui như con nít.',2,0,10,NULL,NULL,NULL,1),('8936115290826',1,75,'Item','Khẩu Trang Y Tế 4 Lớp Kháng Khuẩn Asia Medic 50 Cái - Màu Trắng','z2146815987279_b7827e08393c3a4777967d1ba09271f6.jpg',NULL,NULL,NULL,53000,'250','16 x 14 x 6','Khẩu Trang Y Tế 4 Lớp Kháng Khuẩn',4,0,10,NULL,NULL,NULL,1),('8936115290901',1,75,'Item','Kính Bảo Hộ Cao Cấp Asia Face Shield','z2567584307905_d9a8ac76153a369709741b7b36d3a184.jpg',NULL,NULL,NULL,52000,'100','17.5 x 16.5 x 14','Kính Bảo Hộ Cao Cấp Asia Face Shield',46,0,10,NULL,NULL,NULL,1),('8936121108290',1,139,'Item','Rubik 3x3 JIEHUI TOYS - 454 LH30','image_202534.jpg',NULL,NULL,NULL,49000,'35','16 x 14 x 6','Đối với mùa hè nắng nóng này, các mấy bé nhà mình chỉ thích ở nhà nằm điều hòa và chơi điện thoại thôi, làm mình thấy rất lo lắng cho mắt các bé, mà không làm cách nào cho các bé cách ra điều hòa và điện thoại ra được. Và hôm nay tình cờ mình đã lên Fahasa để tìm mua sách đọc thì thấy Fahasa có bộ bài Lầy - Party Game Lầy Nhất Hệ Mặt Trời, này nên mình đã mua về cho các bé nhà thử chơi xem nào. Sau khi mua về và rủ các bé chơi thì các bé rất thích. Mỗi hộp 2 bịch bài và 1 tờ luật chơi. Hài lòng bởi mức giá 56 nghìn thì chất giấy sẽ không bằng loại trăm mấy trở lên. Nhưng: + Luật chơi khá dễ hiểu. + Hình ảnh nhí nhố vui + Giấy tuy không bóng loáng nhưng tương đối dầy (nhưng chính vì dầy nên cân nhắc nếu ép nhựa sẽ phải cắt chừa biên rộng thì cầm sẽ hơi khó xíu nhé) + Màu sắc sẽ nhạt hơn hình chụp. + Mặt chơi thì bóng hơn mặt lưng. Nên mua chơi, người lớn cũng thấy vui như con nít.',6,0,10,NULL,NULL,NULL,1),('8936130670658',1,138,'Item','Lầy - Party Game Lầy Nhất Hệ Mặt Trời','image_195509_1_10303.jpg',NULL,NULL,NULL,59000,'35','24 x 17 x 5','Đối với mùa hè nắng nóng này, các mấy bé nhà mình chỉ thích ở nhà nằm điều hòa và chơi điện thoại thôi, làm mình thấy rất lo lắng cho mắt các bé, mà không làm cách nào cho các bé cách ra điều hòa và điện thoại ra được. Và hôm nay tình cờ mình đã lên Fahasa để tìm mua sách đọc thì thấy Fahasa có bộ bài Lầy - Party Game Lầy Nhất Hệ Mặt Trời, này nên mình đã mua về cho các bé nhà thử chơi xem nào. Sau khi mua về và rủ các bé chơi thì các bé rất thích. Mỗi hộp 2 bịch bài và 1 tờ luật chơi. Hài lòng bởi mức giá 56 nghìn thì chất giấy sẽ không bằng loại trăm mấy trở lên. Nhưng: + Luật chơi khá dễ hiểu. + Hình ảnh nhí nhố vui + Giấy tuy không bóng loáng nhưng tương đối dầy (nhưng chính vì dầy nên cân nhắc nếu ép nhựa sẽ phải cắt chừa biên rộng thì cầm sẽ hơi khó xíu nhé) + Màu sắc sẽ nhạt hơn hình chụp. + Mặt chơi thì bóng hơn mặt lưng. Nên mua chơi, người lớn cũng thấy vui như con nít.',3,0,10,NULL,NULL,NULL,1),('8936183830115',1,95,'Item','Túi Đeo Chéo Simple Talk! Stormy Retreat - TDMS00102','image_187782.jpg',NULL,NULL,NULL,130000,'550','35 x 22 x 7','Túi Đeo Chéo Simple Talk! Stormy Retreat - TDMS00102',5,0,10,NULL,NULL,NULL,1),('8936195060135',1,75,'Item','Khẩu Trang Famapro Max 4 Lớp Màu Xanh (40 Cái/Hộp)','8936195060135.jpg',NULL,NULL,NULL,30000,'205','7.5 x 3 x 2 ','Khẩu Trang Famapro Max 4 Lớp Màu Xanh',5,0,10,NULL,NULL,NULL,1),('8936195060142',1,75,'Item','Khẩu Trang Famapro Max 4 Lớp Màu Trắng (40 Cái/Hộp)','8936195060142.jpg',NULL,NULL,NULL,30000,'205','5 × 2.8','Khẩu Trang Famapro Max 4 Lớp Màu Trắng',3,0,10,NULL,NULL,NULL,1),('8936195060159',1,75,'Item','Khẩu Trang Famapro Max 4 Lớp Màu Đen (40 Cái/Hộp)','untitled-6_18_8.jpg',NULL,NULL,NULL,30000,'205','19 x 10 x 8','Khẩu Trang Famapro Max 4 Lớp Màu Xanh',4,0,10,NULL,NULL,NULL,1),('8938507001386',1,122,'Book','Trổ Tài Họa Sĩ Lớp Học Mật Ngữ - Tập 1 - Tặng Kèm 2 Poster + Sticker','d_y-v_-v_-t_-m_u-l_p-h_c-m_t-ng_.jpg',NULL,NULL,NULL,38000,'120','21 x 27.5','Tập Tô Chữ Mẫu Giáo Dành Cho Trẻ 5-6 Tuổi',6,0,10,NULL,NULL,NULL,1),('8938530658120',1,76,'Item','Dung Dịch Rửa Tay Cleanwel 175ml','06e6855848adb0f3e9bc.jpg',NULL,NULL,NULL,32000,'169','14.5 x 4.7','Dung Dịch Rửa Tay Cleanwel 175ml',3,0,10,NULL,NULL,NULL,1),('8938530658205',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel New 250 ml','image_244718_1_1965.jpg',NULL,NULL,NULL,50000,'40','14.5 x 4.7','Dung Dịch Rửa Tay Cleanwel 175ml',5,0,10,NULL,NULL,NULL,1),('8938530658212',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel New 100 ml Nắp Xịt - Vinashield','image_244718_1_1763.jpg',NULL,NULL,NULL,18000,'169','14.5 x 4.7','Dung Dịch Rửa Tay Cleanwel 175ml',5,0,10,NULL,NULL,NULL,1),('8938530658243-mau1',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Nàng Tiên Cá','img-8571_1.jpg',NULL,NULL,NULL,44000,'40','7.5 x 3 x 2','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml',5,0,10,NULL,NULL,NULL,1),('8938530658243-mau11',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Hình Gấu (Mẫu Màu Giao Ngẫu Nhiên)','938530658243-mau11-_1_.jpg',NULL,NULL,NULL,44000,'40','7.5 x 3 x 2','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml',3,0,10,NULL,NULL,NULL,1),('8938530658243-mau12',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Hình Xe Hơi (Mẫu Màu Giao Ngẫu Nhiên)','938530658243-mau12-_1_.jpg',NULL,NULL,NULL,44000,'40','5 × 2.8','Dung Dịch Rửa Tay Cleanwel 175ml',6,0,10,NULL,NULL,NULL,1),('8938530658243-mau7',1,76,'Item','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml - Unicorn (Sắc Độ Màu Giao Ngẫu Nhiên)','img-8567_1.jpg',NULL,NULL,NULL,44000,'40','7.5 x 3 x 2 ','Dung Dịch Rửa Tay Nhanh Cleanwel 30ml',5,0,10,NULL,NULL,NULL,1),('9786040234810',1,168,'Book','Tiếng Anh 7 - Tập 1 - Sách Học Sinh (2021)','image_195509_1_43115_1.jpg',NULL,NULL,NULL,33000,'4000','24 x 17 x 5','Sách được biên soạn dựa trên cơ sở những kinh nghiệm thực tiễn của việc dạy tiếng Anh trung học phổ thông ở Việt Nam với sự hợp tác chặt chẽ về chuyên môn và kĩ thuật của Tập đoàn Xuất bản Giáo dục Pearson và Hội đồng Anh. Sách giúp học sinh bước đầu hình thành và phát triển năng lực giao tiếp bằng tiếng Anh. Nội dung kiến thức trình bày khoa học từ cơ bản đến nâng cao giúp học sinh rèn luyện, củng cố và nâng cao trình độ hiệu quả.',4,0,10,NULL,NULL,NULL,1),('9786040237712',12,171,'Book','Tiếng Anh 10 - Tập 2 - Sách Học Sinh (2021)','image_233254.jpg',NULL,NULL,NULL,30000,'155','26.5 x 19x 0.5','Sách được biên soạn dựa trên cơ sở những kinh nghiệm thực tiễn của việc dạy tiếng Anh trung học phổ thông ở Việt Nam với sự hợp tác chặt chẽ về chuyên môn và kĩ thuật của Tập đoàn Xuất bản Giáo dục Pearson và Hội đồng Anh. Sách giúp học sinh bước đầu hình thành và phát triển năng lực giao tiếp bằng tiếng Anh. Nội dung kiến thức trình bày khoa học từ cơ bản đến nâng cao giúp học sinh rèn luyện, củng cố và nâng cao trình độ hiệu quả.',3,0,10,NULL,NULL,NULL,1),('9786045469705',12,162,'Book','Tiếng Anh 1 English Discovery - Pupil Book','9786045469705.jpg',NULL,NULL,NULL,95000,'169','27 x 20.5 x 0.5','Tiếng Anh 1 English Discovery được Nhà xuất bản Đại học Sư phạm liên kết xuất bản với Nhà xuất bản Pearson biên soạn dành cho học sinh tiểu học mới bắt đầu học tiếng Anh và hoàn toàn phù hợp với Chương trình Làm quen tiếng Anh Lớp 1, 2 và Chương trình tiếng Anh cấp tiểu học trong Chương trình Giáo dục phổ thông mới (ban hành kèm theo Thông tư số 32/2018/TT-BGDĐT). Sách giúp các em học sinh làm quen và phát triển kĩ năng ngoại ngữ thông qua nhiều hoạt động và nội dung hấp dẫn, phù hợp với lứa tuổi và văn hóa, truyền thống Việt Nam, cũng như bổ sung kiến thức và kĩ năng toàn cầu của thế kỉ XXI.',2,0,10,NULL,NULL,NULL,1),('9786049609688',12,38,'Book','Tất Cả Các Dòng Sông Đều Chảy','6976308b510f0637f246c03046d60c60.jpg',NULL,NULL,NULL,83000,'600','14.5 x 20.5','Tất cả các dòng sông.',3,0,10,NULL,NULL,NULL,1),('9900000376697',12,3,'Item','Pin Maxell AA Super Power Ace (2 Viên)','image_195509_1_29332.jpg',NULL,NULL,NULL,8000,'35','5 × 2.8','Pin Maxell AA Super Power Ace',5,0,10,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
INSERT INTO `user` VALUES (6,'Nguyen Ha Anh','Kiem','0123456789','thanhnhien152@gmail.com','$2b$10$IgWjOSDiHf9JrtvqJ30uuuXxV24sXMut31ow.g7YRdWn7jAX3EBuO','2000-01-07','Nam',0,1,'abcd'),(7,'Nguyen Ha Anh','Kiem','0123456789','nguyendinhhung2982000@gmail.com','$2b$10$IJgt8zFlMxcZHNXhiyyfxec10oD3RaMm1/JUDDE0v6LpeUBzVfG2e','2000-01-07','Nam',0,1,'abcd'),(10,'Nguyen Ha Anh','Kiem','0123456789','nguyendinhhung152@gmail.com','$2b$10$GUU0GECV44OOwFHeRf8uOejEKrM7Q7y/KhFxzG7z07IEolBKBxwf.','2000-01-07','Nam',0,1,'abcd'),(12,'Nguyen Ha Anh','Kiem','0123456789','nguyendinhhung298@gmail.com','$2b$10$yfZvR56oAjwes5N6lpO9r.7h7zdhGQxNEn.CQeg7.1H5EmDhNNJLi','2000-01-07','Nam',0,1,'abcd'),(15,'Nguyễn Hà Anh','Kiểm','0886703293','nguyenhaanhkiem@gmail.com','$2b$10$nSvnEq54NTY4DvHF1jxq2OdIzFe00aypoRW43F0B88/TAcZIUrvSu','2000-01-07','Nam',0,1,'Kiểm đẹp trai quá đi :))))');
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
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `IDOrder` INT NOT NULL AUTO_INCREMENT,
  `IDUser` INT NULL,
  `IDProduct` VARCHAR(100) NULL,
  `OrderDate` VARCHAR(45) NULL,
  `Quantity` INT NULL,
  `Status` VARCHAR(25) NULL,
  PRIMARY KEY (`IDOrder`));

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2021-12-12  0:17:31

