-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: Brand_Analysis
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add contact us table',1,'add_contactustable'),(2,'Can change contact us table',1,'change_contactustable'),(3,'Can delete contact us table',1,'delete_contactustable'),(4,'Can view contact us table',1,'view_contactustable'),(5,'Can add full text annotation',2,'add_fulltextannotation'),(6,'Can change full text annotation',2,'change_fulltextannotation'),(7,'Can delete full text annotation',2,'delete_fulltextannotation'),(8,'Can view full text annotation',2,'view_fulltextannotation'),(9,'Can add help table',3,'add_helptable'),(10,'Can change help table',3,'change_helptable'),(11,'Can delete help table',3,'delete_helptable'),(12,'Can view help table',3,'view_helptable'),(13,'Can add landmark annotations',4,'add_landmarkannotations'),(14,'Can change landmark annotations',4,'change_landmarkannotations'),(15,'Can delete landmark annotations',4,'delete_landmarkannotations'),(16,'Can view landmark annotations',4,'view_landmarkannotations'),(17,'Can add upload file',5,'add_uploadfile'),(18,'Can change upload file',5,'change_uploadfile'),(19,'Can delete upload file',5,'delete_uploadfile'),(20,'Can view upload file',5,'view_uploadfile'),(21,'Can add user custom',6,'add_usercustom'),(22,'Can change user custom',6,'change_usercustom'),(23,'Can delete user custom',6,'delete_usercustom'),(24,'Can view user custom',6,'view_usercustom'),(25,'Can add upload file annotations',7,'add_uploadfileannotations'),(26,'Can change upload file annotations',7,'change_uploadfileannotations'),(27,'Can delete upload file annotations',7,'delete_uploadfileannotations'),(28,'Can view upload file annotations',7,'view_uploadfileannotations'),(29,'Can add text annotations',8,'add_textannotations'),(30,'Can change text annotations',8,'change_textannotations'),(31,'Can delete text annotations',8,'delete_textannotations'),(32,'Can view text annotations',8,'view_textannotations'),(33,'Can add safe search annotation',9,'add_safesearchannotation'),(34,'Can change safe search annotation',9,'change_safesearchannotation'),(35,'Can delete safe search annotation',9,'delete_safesearchannotation'),(36,'Can view safe search annotation',9,'view_safesearchannotation'),(37,'Can add report table',10,'add_reporttable'),(38,'Can change report table',10,'change_reporttable'),(39,'Can delete report table',10,'delete_reporttable'),(40,'Can view report table',10,'view_reporttable'),(41,'Can add logo annotations',11,'add_logoannotations'),(42,'Can change logo annotations',11,'change_logoannotations'),(43,'Can delete logo annotations',11,'delete_logoannotations'),(44,'Can view logo annotations',11,'view_logoannotations'),(45,'Can add location annotations',12,'add_locationannotations'),(46,'Can change location annotations',12,'change_locationannotations'),(47,'Can delete location annotations',12,'delete_locationannotations'),(48,'Can view location annotations',12,'view_locationannotations'),(49,'Can add localized object annotations',13,'add_localizedobjectannotations'),(50,'Can change localized object annotations',13,'change_localizedobjectannotations'),(51,'Can delete localized object annotations',13,'delete_localizedobjectannotations'),(52,'Can view localized object annotations',13,'view_localizedobjectannotations'),(53,'Can add language annotations',14,'add_languageannotations'),(54,'Can change language annotations',14,'change_languageannotations'),(55,'Can delete language annotations',14,'delete_languageannotations'),(56,'Can view language annotations',14,'view_languageannotations'),(57,'Can add label annotations',15,'add_labelannotations'),(58,'Can change label annotations',15,'change_labelannotations'),(59,'Can delete label annotations',15,'delete_labelannotations'),(60,'Can view label annotations',15,'view_labelannotations'),(61,'Can add image properties annotation',16,'add_imagepropertiesannotation'),(62,'Can change image properties annotation',16,'change_imagepropertiesannotation'),(63,'Can delete image properties annotation',16,'delete_imagepropertiesannotation'),(64,'Can view image properties annotation',16,'view_imagepropertiesannotation'),(65,'Can add face annotations',17,'add_faceannotations'),(66,'Can change face annotations',17,'change_faceannotations'),(67,'Can delete face annotations',17,'delete_faceannotations'),(68,'Can view face annotations',17,'view_faceannotations'),(69,'Can add log entry',18,'add_logentry'),(70,'Can change log entry',18,'change_logentry'),(71,'Can delete log entry',18,'delete_logentry'),(72,'Can view log entry',18,'view_logentry'),(73,'Can add permission',19,'add_permission'),(74,'Can change permission',19,'change_permission'),(75,'Can delete permission',19,'delete_permission'),(76,'Can view permission',19,'view_permission'),(77,'Can add group',20,'add_group'),(78,'Can change group',20,'change_group'),(79,'Can delete group',20,'delete_group'),(80,'Can view group',20,'view_group'),(81,'Can add user',21,'add_user'),(82,'Can change user',21,'change_user'),(83,'Can delete user',21,'delete_user'),(84,'Can view user',21,'view_user'),(85,'Can add content type',22,'add_contenttype'),(86,'Can change content type',22,'change_contenttype'),(87,'Can delete content type',22,'delete_contenttype'),(88,'Can view content type',22,'view_contenttype'),(89,'Can add session',23,'add_session'),(90,'Can change session',23,'change_session'),(91,'Can delete session',23,'delete_session'),(92,'Can view session',23,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContactUSTable`
--

DROP TABLE IF EXISTS `ContactUSTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ContactUSTable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `details` varchar(2000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactUSTable`
--

LOCK TABLES `ContactUSTable` WRITE;
/*!40000 ALTER TABLE `ContactUSTable` DISABLE KEYS */;
INSERT INTO `ContactUSTable` VALUES (1,'Sahil','shirodkar','vishalkalola196@gmail.com','+338850280682','sdfdsdfsd','2020-06-19 19:19:48.253004','2020-06-19 19:19:48.253061'),(2,'Sahil','shirodkar','vishalkalola196@gmail.com','+338850280682','sfdsfdfsf','2020-06-19 19:37:00.529395','2020-06-19 19:37:00.529422');
/*!40000 ALTER TABLE `ContactUSTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (18,'admin','logentry'),(20,'auth','group'),(19,'auth','permission'),(21,'auth','user'),(1,'BrandAnalysisApp','contactustable'),(17,'BrandAnalysisApp','faceannotations'),(2,'BrandAnalysisApp','fulltextannotation'),(3,'BrandAnalysisApp','helptable'),(16,'BrandAnalysisApp','imagepropertiesannotation'),(15,'BrandAnalysisApp','labelannotations'),(4,'BrandAnalysisApp','landmarkannotations'),(14,'BrandAnalysisApp','languageannotations'),(13,'BrandAnalysisApp','localizedobjectannotations'),(12,'BrandAnalysisApp','locationannotations'),(11,'BrandAnalysisApp','logoannotations'),(10,'BrandAnalysisApp','reporttable'),(9,'BrandAnalysisApp','safesearchannotation'),(8,'BrandAnalysisApp','textannotations'),(5,'BrandAnalysisApp','uploadfile'),(7,'BrandAnalysisApp','uploadfileannotations'),(6,'BrandAnalysisApp','usercustom'),(22,'contenttypes','contenttype'),(23,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'BrandAnalysisApp','0001_initial','2020-06-19 19:16:18.003790'),(2,'contenttypes','0001_initial','2020-06-19 19:16:18.546749'),(3,'auth','0001_initial','2020-06-19 19:16:18.656000'),(4,'admin','0001_initial','2020-06-19 19:16:18.837974'),(5,'admin','0002_logentry_remove_auto_add','2020-06-19 19:16:18.908153'),(6,'admin','0003_logentry_add_action_flag_choices','2020-06-19 19:16:18.928383'),(7,'contenttypes','0002_remove_content_type_name','2020-06-19 19:16:19.020800'),(8,'auth','0002_alter_permission_name_max_length','2020-06-19 19:16:19.057444'),(9,'auth','0003_alter_user_email_max_length','2020-06-19 19:16:19.098787'),(10,'auth','0004_alter_user_username_opts','2020-06-19 19:16:19.109468'),(11,'auth','0005_alter_user_last_login_null','2020-06-19 19:16:19.154480'),(12,'auth','0006_require_contenttypes_0002','2020-06-19 19:16:19.157668'),(13,'auth','0007_alter_validators_add_error_messages','2020-06-19 19:16:19.177099'),(14,'auth','0008_alter_user_username_max_length','2020-06-19 19:16:19.229349'),(15,'auth','0009_alter_user_last_name_max_length','2020-06-19 19:16:19.279354'),(16,'auth','0010_alter_group_name_max_length','2020-06-19 19:16:19.311744'),(17,'auth','0011_update_proxy_permissions','2020-06-19 19:16:19.334080'),(18,'sessions','0001_initial','2020-06-19 19:16:19.361703');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('v1x0e0johryz2gjefl2qr96zg8im69dh','M2VlMDI2ODY1NjEzMDU5NTQwM2JhYzQ4OTE1YmRkYTJhYjBkMjcyNTp7InVzZXJlbWFpbCI6InZpc2hhbGthbG9sYTE5NkBnbWFpbC5jb20iLCJ1c2VydHlwZSI6ImFkbWluIiwidXNlcmlkIjoxfQ==','2020-07-05 19:28:19.923206');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FaceAnnotations`
--

DROP TABLE IF EXISTS `FaceAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FaceAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anger` varchar(100) NOT NULL,
  `blurred` varchar(100) NOT NULL,
  `headwear` varchar(100) NOT NULL,
  `joy` varchar(100) NOT NULL,
  `sorrow` varchar(100) NOT NULL,
  `surprise` varchar(100) NOT NULL,
  `underExposed` varchar(100) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FaceAnnotations_imageid_id_57dfdfd1_fk_UploadFileAnnotations_id` (`imageid_id`),
  KEY `FaceAnnotations_userid_id_30c70b67_fk_user_id` (`userid_id`),
  CONSTRAINT `FaceAnnotations_imageid_id_57dfdfd1_fk_UploadFileAnnotations_id` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `FaceAnnotations_userid_id_30c70b67_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FaceAnnotations`
--

LOCK TABLES `FaceAnnotations` WRITE;
/*!40000 ALTER TABLE `FaceAnnotations` DISABLE KEYS */;
INSERT INTO `FaceAnnotations` VALUES (1,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_LIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:48.336092','2020-06-20 11:11:48.336123',11,1),(2,'VERY_UNLIKELY','VERY_UNLIKELY','LIKELY','VERY_LIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:48.340599','2020-06-20 11:11:48.340615',11,1),(3,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_LIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 12:02:17.956348','2020-06-20 12:02:17.956379',17,1),(4,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','LIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 12:02:32.895839','2020-06-20 12:02:32.895854',18,1);
/*!40000 ALTER TABLE `FaceAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FullTextAnnotation`
--

DROP TABLE IF EXISTS `FullTextAnnotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FullTextAnnotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FullTextAnnotation_imageid_id_c8382b84_fk_UploadFil` (`imageid_id`),
  KEY `FullTextAnnotation_userid_id_94a8d89b_fk_user_id` (`userid_id`),
  CONSTRAINT `FullTextAnnotation_imageid_id_c8382b84_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `FullTextAnnotation_userid_id_94a8d89b_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FullTextAnnotation`
--

LOCK TABLES `FullTextAnnotation` WRITE;
/*!40000 ALTER TABLE `FullTextAnnotation` DISABLE KEYS */;
INSERT INTO `FullTextAnnotation` VALUES (1,'COCO\nMADEMOISELLE\nCHANEL\nCOCO\nPARIS\nNOIR\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-20 11:10:33.165682','2020-06-20 11:10:33.165715',1,1),(2,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-20 11:10:37.474607','2020-06-20 11:10:37.474622',2,1),(3,'CANCES\nASSIS\nlete\nKORA\nBA\nKORAN\nLURE\nCHANEL\nICL\nCH\nPINKOUSK\nALLURE\nCHANEL\nLE VERNIS\nLONGUE TENUE\nLONGWEAR\nNAIL COLOUR\nANEL\nTOM FORD\nROUGE NOIR\nCHANEL\n04FL OZ\nLIP COLOR\nROUGE A LEVRES\n131\nEAU DE PA\n','2020-06-20 11:10:45.668434','2020-06-20 11:10:45.668551',3,1),(4,'CHANEL\nCHANEL\nN°5\nL\'EAU\nCHANEL\nPARIS\nCHANEL\nN°5\nL\'EAU\nCHANEL\nPARIS\n','2020-06-20 11:10:49.113848','2020-06-20 11:10:49.113862',4,1),(5,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-20 11:10:53.347378','2020-06-20 11:10:53.347406',5,1),(6,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-20 11:10:59.082668','2020-06-20 11:10:59.082690',6,1),(7,'CHOTEL\nMADEMOISU\nCOCO\nHEMOS\nnco\nCOCO\nMADEMOISELLE\nPARIS\nCHANEL\n50 ml\nEAU DE PARFUM\nVAPORISATEUR SPRAY\n','2020-06-20 11:11:03.178041','2020-06-20 11:11:03.178054',7,1),(8,'CU\nN°5\nCHANEL\nPARIS\n1991\nPARFUM\nPARFUM\nN\'S\nCHANEL\nPAS\n','2020-06-20 11:11:07.795853','2020-06-20 11:11:07.795876',8,1),(9,'Coco\nGAME CENTER\nCHANEL\nPARIS - BIARRITZ\nCHANEL\nGABRIELLE\nPARIS\nCHANEL\nPARIS\nwwwim\nE PARFUM INTENSE\nPORISATEUR SPRAY\n','2020-06-20 11:11:42.500409','2020-06-20 11:11:42.500425',9,1),(10,'PARIS - DEAUVILLE\nCHANEL\nPARIS\n','2020-06-20 11:11:45.587256','2020-06-20 11:11:45.587283',10,1),(11,'GEDOENT ISIDO\nHE\nNOT\nWAK\nIA\n','2020-06-20 11:11:54.174116','2020-06-20 11:11:54.174152',11,1),(12,'Evening in Paris.\nPERFUME\nLONDON\nBOURJOIS\nMADERAD\nPARIS\n','2020-06-20 11:57:45.956726','2020-06-20 11:57:45.956760',12,1),(13,'Evening in Paris.\nPERFUME\nLONDON\nBOURJOIS\nMADERAD\nPARIS\n','2020-06-20 12:02:11.622940','2020-06-20 12:02:11.622972',14,1),(14,'','2020-06-20 12:02:13.902486','2020-06-20 12:02:13.902502',15,1),(15,'DAISY\nACOES\nCHANEL\nPARIS\n','2020-06-20 12:02:16.866667','2020-06-20 12:02:16.866682',16,1),(16,'DE\nRACING\nLEGE\n','2020-06-20 12:02:20.977151','2020-06-20 12:02:20.977166',17,1),(17,'Chrome\nFile\nEdit\nView\nHistory\nBookmarks People\nTab\nWindow Help\n10%\nFri 11:56 PM\nVisu\nw\nB x\nStalk\nC My\nThe\nC Eng\n0 Clip\nepita\nRenc\nStall\nMy\nW3.\nTryit\nhtml\nG imag\nCSS\nhtml\n+\nk\nС\nNot Secure | 0.0.0.0:8000\nApps\nEPITA\nProject\nFrance Goverment\nApple + Apply Company -...\ntds Using Python to C...\nStalk_Market_Rep...\nStalkMarket\nAbout\nServices\nOur Team\nContact\nLogin\n3 / 3\nJoy\nVery Likely\nSorrow\nVery Unlikely\nAnger\nVery Unlikely\nCOCO\nCHANES\nSurprise\nVery Unlikely\nExposed\nVery Unlikely\nCOCO\nCHANEL\nCHANEL\nBlurred\nVery Unlikely\nHeadwear\nVery Unlikely\ncoco\nCHANEL\nCHANEL\nPERFUMES\nchanel_image_processing3.jpg\nRoll: -4° Tilt: 0° Pan: -4°\nConfidence\n96%\nbackground.jpg\nslider.zip\ntest.html\nslider.rar\nShow All\nx\n','2020-06-20 12:02:54.337895','2020-06-20 12:02:54.337910',18,1);
/*!40000 ALTER TABLE `FullTextAnnotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HelpTable`
--

DROP TABLE IF EXISTS `HelpTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HelpTable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(2000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HelpTable`
--

LOCK TABLES `HelpTable` WRITE;
/*!40000 ALTER TABLE `HelpTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `HelpTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImagePropertiesAnnotation`
--

DROP TABLE IF EXISTS `ImagePropertiesAnnotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ImagePropertiesAnnotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `red` varchar(6) NOT NULL,
  `green` varchar(6) NOT NULL,
  `blue` varchar(6) NOT NULL,
  `pixelFraction` varchar(200) NOT NULL,
  `alpha` varchar(20) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ImagePropertiesAnnot_imageid_id_29e92456_fk_UploadFil` (`imageid_id`),
  KEY `ImagePropertiesAnnotation_userid_id_c9e63ccf_fk_user_id` (`userid_id`),
  CONSTRAINT `ImagePropertiesAnnot_imageid_id_29e92456_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `ImagePropertiesAnnotation_userid_id_c9e63ccf_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImagePropertiesAnnotation`
--

LOCK TABLES `ImagePropertiesAnnotation` WRITE;
/*!40000 ALTER TABLE `ImagePropertiesAnnotation` DISABLE KEYS */;
INSERT INTO `ImagePropertiesAnnotation` VALUES (1,'202.0','195.0','187.0','0.15387074649333954','','2020-06-20 11:10:31.138541','2020-06-20 11:10:31.138572',1,1),(2,'30.0','22.0','24.0','0.2159411758184433','','2020-06-20 11:10:31.143092','2020-06-20 11:10:31.143106',1,1),(3,'162.0','154.0','146.0','0.18269486725330353','','2020-06-20 11:10:31.145291','2020-06-20 11:10:31.145305',1,1),(4,'168.0','154.0','130.0','0.07112792134284973','','2020-06-20 11:10:31.147617','2020-06-20 11:10:31.147632',1,1),(5,'200.0','191.0','168.0','0.017369065433740616','','2020-06-20 11:10:31.151199','2020-06-20 11:10:31.151305',1,1),(6,'137.0','120.0','99.0','0.10037828236818314','','2020-06-20 11:10:31.153774','2020-06-20 11:10:31.153789',1,1),(7,'226.0','217.0','209.0','0.00527465483173728','','2020-06-20 11:10:31.156326','2020-06-20 11:10:31.156339',1,1),(8,'134.0','124.0','119.0','0.05898023396730423','','2020-06-20 11:10:31.158391','2020-06-20 11:10:31.158404',1,1),(9,'48.0','43.0','44.0','0.04560711979866028','','2020-06-20 11:10:31.160598','2020-06-20 11:10:31.160611',1,1),(10,'60.0','48.0','28.0','0.0158239658921957','','2020-06-20 11:10:31.162669','2020-06-20 11:10:31.162682',1,1),(11,'251.0','246.0','235.0','0.10102222114801407','','2020-06-20 11:10:35.151029','2020-06-20 11:10:35.151054',2,1),(12,'15.0','5.0','3.0','0.10026666522026062','','2020-06-20 11:10:35.155774','2020-06-20 11:10:35.155796',2,1),(13,'53.0','16.0','5.0','0.030799999833106995','','2020-06-20 11:10:35.158198','2020-06-20 11:10:35.158212',2,1),(14,'157.0','57.0','11.0','0.02253333292901516','','2020-06-20 11:10:35.160378','2020-06-20 11:10:35.160392',2,1),(15,'135.0','49.0','13.0','0.053555555641651154','','2020-06-20 11:10:35.162562','2020-06-20 11:10:35.162576',2,1),(16,'186.0','81.0','17.0','0.042399998754262924','','2020-06-20 11:10:35.164611','2020-06-20 11:10:35.164624',2,1),(17,'191.0','76.0','15.0','0.010488889180123806','','2020-06-20 11:10:35.166924','2020-06-20 11:10:35.166949',2,1),(18,'250.0','237.0','218.0','0.0563555546104908','','2020-06-20 11:10:35.169689','2020-06-20 11:10:35.169724',2,1),(19,'78.0','40.0','23.0','0.04373333230614662','','2020-06-20 11:10:35.171770','2020-06-20 11:10:35.171783',2,1),(20,'36.0','5.0','1.0','0.013111110776662827','','2020-06-20 11:10:35.173823','2020-06-20 11:10:35.173836',2,1),(21,'144.0','203.0','212.0','0.0338333323597908','','2020-06-20 11:10:41.468982','2020-06-20 11:10:41.469005',3,1),(22,'217.0','109.0','139.0','0.07844444364309311','','2020-06-20 11:10:41.473535','2020-06-20 11:10:41.473553',3,1),(23,'137.0','114.0','143.0','0.01261111069470644','','2020-06-20 11:10:41.476087','2020-06-20 11:10:41.476101',3,1),(24,'224.0','186.0','168.0','0.03511111065745354','','2020-06-20 11:10:41.478318','2020-06-20 11:10:41.478332',3,1),(25,'22.0','20.0','22.0','0.061666667461395264','','2020-06-20 11:10:41.480436','2020-06-20 11:10:41.480449',3,1),(26,'248.0','219.0','162.0','0.010611111298203468','','2020-06-20 11:10:41.482650','2020-06-20 11:10:41.482663',3,1),(27,'114.0','172.0','180.0','0.008222222328186035','','2020-06-20 11:10:41.484698','2020-06-20 11:10:41.484710',3,1),(28,'122.0','167.0','170.0','0.01077777799218893','','2020-06-20 11:10:41.486699','2020-06-20 11:10:41.486713',3,1),(29,'146.0','199.0','202.0','0.01572222262620926','','2020-06-20 11:10:41.489270','2020-06-20 11:10:41.489284',3,1),(30,'156.0','160.0','162.0','0.057055555284023285','','2020-06-20 11:10:41.491404','2020-06-20 11:10:41.491418',3,1),(31,'167.0','156.0','135.0','0.041262004524469376','','2020-06-20 11:10:47.510439','2020-06-20 11:10:47.510475',4,1),(32,'166.0','159.0','154.0','0.14809328317642212','','2020-06-20 11:10:47.514890','2020-06-20 11:10:47.514905',4,1),(33,'193.0','188.0','184.0','0.398244172334671','','2020-06-20 11:10:47.517110','2020-06-20 11:10:47.517125',4,1),(34,'229.0','227.0','229.0','0.38803839683532715','','2020-06-20 11:10:47.519335','2020-06-20 11:10:47.519349',4,1),(35,'192.0','185.0','164.0','0.01042523980140686','','2020-06-20 11:10:47.521583','2020-06-20 11:10:47.521597',4,1),(36,'140.0','128.0','106.0','0.004005487076938152','','2020-06-20 11:10:47.523959','2020-06-20 11:10:47.523976',4,1),(37,'126.0','120.0','115.0','0.006694101728498936','','2020-06-20 11:10:47.526452','2020-06-20 11:10:47.526466',4,1),(38,'90.0','84.0','85.0','0.0018106995848938823','','2020-06-20 11:10:47.528501','2020-06-20 11:10:47.528515',4,1),(39,'61.0','56.0','60.0','0.000548696843907237','','2020-06-20 11:10:47.530438','2020-06-20 11:10:47.530451',4,1),(40,'108.0','97.0','84.0','0.00010973936878144741','','2020-06-20 11:10:47.532375','2020-06-20 11:10:47.532388',4,1),(41,'25.0','14.0','15.0','0.18424691259860992','','2020-06-20 11:10:51.321395','2020-06-20 11:10:51.321411',5,1),(42,'195.0','64.0','16.0','0.015061728656291962','','2020-06-20 11:10:51.324578','2020-06-20 11:10:51.324595',5,1),(43,'218.0','44.0','57.0','0.011506172828376293','','2020-06-20 11:10:51.327478','2020-06-20 11:10:51.327492',5,1),(44,'78.0','36.0','31.0','0.040345679968595505','','2020-06-20 11:10:51.329819','2020-06-20 11:10:51.329833',5,1),(45,'248.0','244.0','242.0','0.03096296265721321','','2020-06-20 11:10:51.332041','2020-06-20 11:10:51.332054',5,1),(46,'243.0','113.0','120.0','0.003555555595085025','','2020-06-20 11:10:51.334124','2020-06-20 11:10:51.334137',5,1),(47,'224.0','182.0','167.0','0.20760494470596313','','2020-06-20 11:10:51.336388','2020-06-20 11:10:51.336412',5,1),(48,'226.0','115.0','21.0','0.0006913580000400543','','2020-06-20 11:10:51.338334','2020-06-20 11:10:51.338347',5,1),(49,'41.0','16.0','16.0','0.054222222417593','','2020-06-20 11:10:51.340274','2020-06-20 11:10:51.340287',5,1),(50,'173.0','45.0','12.0','0.014123456552624702','','2020-06-20 11:10:51.342511','2020-06-20 11:10:51.342524',5,1),(51,'166.0','158.0','147.0','0.12188976258039474','','2020-06-20 11:10:56.009535','2020-06-20 11:10:56.009557',6,1),(52,'165.0','158.0','142.0','0.23149606585502625','','2020-06-20 11:10:56.014805','2020-06-20 11:10:56.014829',6,1),(53,'129.0','122.0','110.0','0.1491338610649109','','2020-06-20 11:10:56.017388','2020-06-20 11:10:56.017401',6,1),(54,'127.0','120.0','105.0','0.16692914068698883','','2020-06-20 11:10:56.019497','2020-06-20 11:10:56.019510',6,1),(55,'190.0','183.0','171.0','0.06110236048698425','','2020-06-20 11:10:56.021673','2020-06-20 11:10:56.021688',6,1),(56,'187.0','180.0','163.0','0.08482939749956131','','2020-06-20 11:10:56.023838','2020-06-20 11:10:56.023852',6,1),(57,'96.0','89.0','79.0','0.038162730634212494','','2020-06-20 11:10:56.025846','2020-06-20 11:10:56.025858',6,1),(58,'98.0','91.0','75.0','0.10839895159006119','','2020-06-20 11:10:56.028108','2020-06-20 11:10:56.028129',6,1),(59,'227.0','221.0','209.0','0.012440945021808147','','2020-06-20 11:10:56.031088','2020-06-20 11:10:56.031102',6,1),(60,'60.0','51.0','42.0','0.006089238915592432','','2020-06-20 11:10:56.033189','2020-06-20 11:10:56.033202',6,1),(61,'237.0','232.0','224.0','0.6289777755737305','','2020-06-20 11:11:00.924719','2020-06-20 11:11:00.924743',7,1),(62,'166.0','157.0','149.0','0.12399999797344208','','2020-06-20 11:11:00.929855','2020-06-20 11:11:00.929872',7,1),(63,'189.0','149.0','128.0','0.04817777872085571','','2020-06-20 11:11:00.932418','2020-06-20 11:11:00.932434',7,1),(64,'193.0','186.0','179.0','0.04075555503368378','','2020-06-20 11:11:00.934644','2020-06-20 11:11:00.934659',7,1),(65,'175.0','156.0','139.0','0.02293333411216736','','2020-06-20 11:11:00.936864','2020-06-20 11:11:00.936877',7,1),(66,'218.0','177.0','158.0','0.04960000142455101','','2020-06-20 11:11:00.939041','2020-06-20 11:11:00.939054',7,1),(67,'202.0','189.0','169.0','0.006577777676284313','','2020-06-20 11:11:00.941243','2020-06-20 11:11:00.941256',7,1),(68,'134.0','128.0','119.0','0.05568888783454895','','2020-06-20 11:11:00.943198','2020-06-20 11:11:00.943210',7,1),(69,'158.0','118.0','96.0','0.008133333176374435','','2020-06-20 11:11:00.945153','2020-06-20 11:11:00.945166',7,1),(70,'133.0','123.0','105.0','0.003777777776122093','','2020-06-20 11:11:00.947458','2020-06-20 11:11:00.947472',7,1),(71,'122.0','68.0','23.0','0.020733334124088287','','2020-06-20 11:11:05.533834','2020-06-20 11:11:05.533858',8,1),(72,'145.0','66.0','5.0','0.010200000368058681','','2020-06-20 11:11:05.538247','2020-06-20 11:11:05.538262',8,1),(73,'171.0','107.0','33.0','0.020600000396370888','','2020-06-20 11:11:05.540527','2020-06-20 11:11:05.540570',8,1),(74,'252.0','227.0','167.0','0.05233333259820938','','2020-06-20 11:11:05.542707','2020-06-20 11:11:05.542721',8,1),(75,'92.0','43.0','6.0','0.022333333268761635','','2020-06-20 11:11:05.544986','2020-06-20 11:11:05.545001',8,1),(76,'203.0','142.0','62.0','0.024266665801405907','','2020-06-20 11:11:05.547143','2020-06-20 11:11:05.547156',8,1),(77,'131.0','58.0','13.0','0.006200000178068876','','2020-06-20 11:11:05.549493','2020-06-20 11:11:05.549538',8,1),(78,'103.0','35.0','1.0','0.007266666740179062','','2020-06-20 11:11:05.552327','2020-06-20 11:11:05.552342',8,1),(79,'223.0','191.0','134.0','0.029466666281223297','','2020-06-20 11:11:05.554434','2020-06-20 11:11:05.554447',8,1),(80,'250.0','238.0','200.0','0.40560001134872437','','2020-06-20 11:11:05.556428','2020-06-20 11:11:05.556441',8,1),(81,'6.0','17.0','72.0','0.4281666576862335','','2020-06-20 11:11:23.840590','2020-06-20 11:11:23.840604',9,1),(82,'133.0','42.0','132.0','0.003777777776122093','','2020-06-20 11:11:23.844128','2020-06-20 11:11:23.844143',9,1),(83,'229.0','241.0','248.0','0.18755555152893066','','2020-06-20 11:11:23.846219','2020-06-20 11:11:23.846232',9,1),(84,'38.0','47.0','76.0','0.01494444441050291','','2020-06-20 11:11:23.848213','2020-06-20 11:11:23.848226',9,1),(85,'237.0','43.0','70.0','0.003611111082136631','','2020-06-20 11:11:23.850171','2020-06-20 11:11:23.850184',9,1),(86,'168.0','34.0','136.0','0.00011111111234640703','','2020-06-20 11:11:23.852164','2020-06-20 11:11:23.852176',9,1),(87,'35.0','6.0','74.0','0.01616666652262211','','2020-06-20 11:11:23.854279','2020-06-20 11:11:23.854291',9,1),(88,'30.0','39.0','92.0','0.030444445088505745','','2020-06-20 11:11:23.857441','2020-06-20 11:11:23.857460',9,1),(89,'242.0','116.0','162.0','0.0023333332501351833','','2020-06-20 11:11:23.867537','2020-06-20 11:11:23.867553',9,1),(90,'73.0','26.0','100.0','0.0030555555131286383','','2020-06-20 11:11:23.885550','2020-06-20 11:11:23.885575',9,1),(91,'179.0','88.0','47.0','0.02978515625','','2020-06-20 11:11:44.137651','2020-06-20 11:11:44.137674',10,1),(92,'211.0','144.0','66.0','0.0224609375','','2020-06-20 11:11:44.141667','2020-06-20 11:11:44.141692',10,1),(93,'84.0','90.0','29.0','0.0164794921875','','2020-06-20 11:11:44.143968','2020-06-20 11:11:44.143982',10,1),(94,'193.0','98.0','45.0','0.017333984375','','2020-06-20 11:11:44.146158','2020-06-20 11:11:44.146172',10,1),(95,'154.0','64.0','34.0','0.01141357421875','','2020-06-20 11:11:44.148377','2020-06-20 11:11:44.148390',10,1),(96,'209.0','121.0','54.0','0.00543212890625','','2020-06-20 11:11:44.150466','2020-06-20 11:11:44.150479',10,1),(97,'169.0','108.0','60.0','0.01275634765625','','2020-06-20 11:11:44.152942','2020-06-20 11:11:44.152955',10,1),(98,'189.0','158.0','64.0','0.02020263671875','','2020-06-20 11:11:44.154920','2020-06-20 11:11:44.154934',10,1),(99,'127.0','75.0','34.0','0.01416015625','','2020-06-20 11:11:44.157168','2020-06-20 11:11:44.157181',10,1),(100,'194.0','140.0','87.0','0.006591796875','','2020-06-20 11:11:44.159085','2020-06-20 11:11:44.159097',10,1),(101,'190.0','145.0','127.0','0.04013333469629288','','2020-06-20 11:11:49.771138','2020-06-20 11:11:49.771164',11,1),(102,'202.0','196.0','191.0','0.10693333297967911','','2020-06-20 11:11:49.775692','2020-06-20 11:11:49.775716',11,1),(103,'215.0','130.0','92.0','0.006533333566039801','','2020-06-20 11:11:49.778109','2020-06-20 11:11:49.778123',11,1),(104,'157.0','110.0','94.0','0.0400666669011116','','2020-06-20 11:11:49.780193','2020-06-20 11:11:49.780206',11,1),(105,'118.0','73.0','60.0','0.03700000047683716','','2020-06-20 11:11:49.782380','2020-06-20 11:11:49.782393',11,1),(106,'177.0','154.0','132.0','0.01873333379626274','','2020-06-20 11:11:49.784491','2020-06-20 11:11:49.784503',11,1),(107,'161.0','154.0','148.0','0.08913332968950272','','2020-06-20 11:11:49.786483','2020-06-20 11:11:49.786495',11,1),(108,'183.0','101.0','63.0','0.006533333566039801','','2020-06-20 11:11:49.788557','2020-06-20 11:11:49.788573',11,1),(109,'128.0','118.0','97.0','0.015599999576807022','','2020-06-20 11:11:49.790835','2020-06-20 11:11:49.790849',11,1),(110,'123.0','118.0','112.0','0.039133332669734955','','2020-06-20 11:11:49.792801','2020-06-20 11:11:49.792813',11,1),(111,'51.0','50.0','59.0','0.24173027276992798','','2020-06-20 11:57:44.263629','2020-06-20 11:57:44.263647',12,1),(112,'171.0','151.0','117.0','0.023929402232170105','','2020-06-20 11:57:44.266737','2020-06-20 11:57:44.266750',12,1),(113,'241.0','240.0','235.0','0.04780466854572296','','2020-06-20 11:57:44.269006','2020-06-20 11:57:44.269020',12,1),(114,'73.0','117.0','170.0','0.012235395610332489','','2020-06-20 11:57:44.271192','2020-06-20 11:57:44.271206',12,1),(115,'52.0','55.0','72.0','0.03979210555553436','','2020-06-20 11:57:44.273510','2020-06-20 11:57:44.273524',12,1),(116,'137.0','120.0','91.0','0.01884034462273121','','2020-06-20 11:57:44.276483','2020-06-20 11:57:44.276498',12,1),(117,'87.0','84.0','81.0','0.22884522378444672','','2020-06-20 11:57:44.279109','2020-06-20 11:57:44.279123',12,1),(118,'174.0','153.0','107.0','0.005197336431592703','','2020-06-20 11:57:44.281383','2020-06-20 11:57:44.281397',12,1),(119,'116.0','113.0','108.0','0.09225272387266159','','2020-06-20 11:57:44.283430','2020-06-20 11:57:44.283444',12,1),(120,'30.0','29.0','28.0','0.08775918930768967','','2020-06-20 11:57:44.285500','2020-06-20 11:57:44.285513',12,1),(121,'200.0','226.0','249.0','0.190443217754364','','2020-06-20 11:57:47.258809','2020-06-20 11:57:47.258835',13,1),(122,'135.0','114.0','95.0','0.02181440405547619','','2020-06-20 11:57:47.262828','2020-06-20 11:57:47.262844',13,1),(123,'80.0','87.0','26.0','0.011080332100391388','','2020-06-20 11:57:47.264912','2020-06-20 11:57:47.264927',13,1),(124,'236.0','243.0','247.0','0.3222529888153076','','2020-06-20 11:57:47.266909','2020-06-20 11:57:47.266924',13,1),(125,'184.0','212.0','243.0','0.18201754987239838','','2020-06-20 11:57:47.268893','2020-06-20 11:57:47.268908',13,1),(126,'103.0','84.0','66.0','0.025392428040504456','','2020-06-20 11:57:47.270872','2020-06-20 11:57:47.270886',13,1),(127,'130.0','117.0','112.0','0.007733148522675037','','2020-06-20 11:57:47.272798','2020-06-20 11:57:47.272812',13,1),(128,'154.0','145.0','142.0','0.008310249075293541','','2020-06-20 11:57:47.274706','2020-06-20 11:57:47.274719',13,1),(129,'98.0','86.0','81.0','0.008079408667981625','','2020-06-20 11:57:47.277024','2020-06-20 11:57:47.277039',13,1),(130,'163.0','144.0','125.0','0.015697138383984566','','2020-06-20 11:57:47.279090','2020-06-20 11:57:47.279105',13,1),(131,'51.0','50.0','59.0','0.24173027276992798','','2020-06-20 12:02:09.889241','2020-06-20 12:02:09.889257',14,1),(132,'171.0','151.0','117.0','0.023929402232170105','','2020-06-20 12:02:09.892329','2020-06-20 12:02:09.892343',14,1),(133,'241.0','240.0','235.0','0.04780466854572296','','2020-06-20 12:02:09.894764','2020-06-20 12:02:09.894778',14,1),(134,'73.0','117.0','170.0','0.012235395610332489','','2020-06-20 12:02:09.896754','2020-06-20 12:02:09.896767',14,1),(135,'52.0','55.0','72.0','0.03979210555553436','','2020-06-20 12:02:09.898700','2020-06-20 12:02:09.898713',14,1),(136,'137.0','120.0','91.0','0.01884034462273121','','2020-06-20 12:02:09.900682','2020-06-20 12:02:09.900695',14,1),(137,'87.0','84.0','81.0','0.22884522378444672','','2020-06-20 12:02:09.902851','2020-06-20 12:02:09.902864',14,1),(138,'174.0','153.0','107.0','0.005197336431592703','','2020-06-20 12:02:09.904923','2020-06-20 12:02:09.904935',14,1),(139,'116.0','113.0','108.0','0.09225272387266159','','2020-06-20 12:02:09.907178','2020-06-20 12:02:09.907191',14,1),(140,'30.0','29.0','28.0','0.08775918930768967','','2020-06-20 12:02:09.909360','2020-06-20 12:02:09.909374',14,1),(141,'200.0','226.0','249.0','0.190443217754364','','2020-06-20 12:02:12.940373','2020-06-20 12:02:12.940387',15,1),(142,'135.0','114.0','95.0','0.02181440405547619','','2020-06-20 12:02:12.945004','2020-06-20 12:02:12.945031',15,1),(143,'80.0','87.0','26.0','0.011080332100391388','','2020-06-20 12:02:12.952509','2020-06-20 12:02:12.952535',15,1),(144,'236.0','243.0','247.0','0.3222529888153076','','2020-06-20 12:02:12.960375','2020-06-20 12:02:12.960416',15,1),(145,'184.0','212.0','243.0','0.18201754987239838','','2020-06-20 12:02:12.964617','2020-06-20 12:02:12.964654',15,1),(146,'103.0','84.0','66.0','0.025392428040504456','','2020-06-20 12:02:12.970518','2020-06-20 12:02:12.970580',15,1),(147,'130.0','117.0','112.0','0.007733148522675037','','2020-06-20 12:02:12.976363','2020-06-20 12:02:12.976379',15,1),(148,'154.0','145.0','142.0','0.008310249075293541','','2020-06-20 12:02:12.984772','2020-06-20 12:02:12.984787',15,1),(149,'98.0','86.0','81.0','0.008079408667981625','','2020-06-20 12:02:12.991656','2020-06-20 12:02:12.991677',15,1),(150,'163.0','144.0','125.0','0.015697138383984566','','2020-06-20 12:02:13.000270','2020-06-20 12:02:13.000293',15,1),(151,'186.0','147.0','124.0','0.023469388484954834','','2020-06-20 12:02:15.419903','2020-06-20 12:02:15.419927',16,1),(152,'13.0','11.0','22.0','0.035871271044015884','','2020-06-20 12:02:15.423215','2020-06-20 12:02:15.423230',16,1),(153,'161.0','28.0','60.0','0.004552590195089579','','2020-06-20 12:02:15.426232','2020-06-20 12:02:15.426254',16,1),(154,'209.0','45.0','89.0','0.002668759785592556','','2020-06-20 12:02:15.430225','2020-06-20 12:02:15.430285',16,1),(155,'85.0','84.0','91.0','0.006357927806675434','','2020-06-20 12:02:15.437770','2020-06-20 12:02:15.437784',16,1),(156,'200.0','78.0','113.0','0.004003139678388834','','2020-06-20 12:02:15.439834','2020-06-20 12:02:15.439847',16,1),(157,'210.0','127.0','150.0','0.004160125739872456','','2020-06-20 12:02:15.441873','2020-06-20 12:02:15.441887',16,1),(158,'181.0','156.0','130.0','0.021664049476385117','','2020-06-20 12:02:15.444268','2020-06-20 12:02:15.444282',16,1),(159,'210.0','189.0','166.0','0.025274725630879402','','2020-06-20 12:02:15.447671','2020-06-20 12:02:15.447691',16,1),(160,'154.0','113.0','90.0','0.008869701996445656','','2020-06-20 12:02:15.453140','2020-06-20 12:02:15.453155',16,1),(161,'135.0','192.0','250.0','0.17778699100017548','','2020-06-20 12:02:18.633492','2020-06-20 12:02:18.633506',17,1),(162,'20.0','19.0','24.0','0.20820555090904236','','2020-06-20 12:02:18.636391','2020-06-20 12:02:18.636406',17,1),(163,'93.0','89.0','66.0','0.05503522604703903','','2020-06-20 12:02:18.638459','2020-06-20 12:02:18.638500',17,1),(164,'242.0','242.0','212.0','0.01682552881538868','','2020-06-20 12:02:18.640604','2020-06-20 12:02:18.640617',17,1),(165,'227.0','192.0','101.0','0.006879403255879879','','2020-06-20 12:02:18.642511','2020-06-20 12:02:18.642524',17,1),(166,'149.0','158.0','124.0','0.008205553516745567','','2020-06-20 12:02:18.644509','2020-06-20 12:02:18.644521',17,1),(167,'114.0','172.0','240.0','0.04633236676454544','','2020-06-20 12:02:18.646564','2020-06-20 12:02:18.646579',17,1),(168,'153.0','191.0','228.0','0.022710319608449936','','2020-06-20 12:02:18.649243','2020-06-20 12:02:18.649257',17,1),(169,'51.0','49.0','52.0','0.046829674392938614','','2020-06-20 12:02:18.651514','2020-06-20 12:02:18.651527',17,1),(170,'122.0','119.0','90.0','0.025031082332134247','','2020-06-20 12:02:18.653525','2020-06-20 12:02:18.653538',17,1),(171,'248.0','248.0','246.0','0.3902836740016937','','2020-06-20 12:02:36.923723','2020-06-20 12:02:36.923746',18,1),(172,'123.0','113.0','106.0','0.2192198634147644','','2020-06-20 12:02:36.928453','2020-06-20 12:02:36.928477',18,1),(173,'48.0','51.0','55.0','0.13539007306098938','','2020-06-20 12:02:36.930642','2020-06-20 12:02:36.930657',18,1),(174,'208.0','197.0','169.0','0.014468085020780563','','2020-06-20 12:02:36.932684','2020-06-20 12:02:36.932698',18,1),(175,'219.0','55.0','118.0','0.0019858155865222216','','2020-06-20 12:02:36.934865','2020-06-20 12:02:36.934879',18,1),(176,'242.0','117.0','167.0','0.0019858155865222216','','2020-06-20 12:02:36.936889','2020-06-20 12:02:36.936903',18,1),(177,'254.0','172.0','221.0','0.0010638297535479069','','2020-06-20 12:02:36.938812','2020-06-20 12:02:36.938825',18,1),(178,'255.0','216.0','250.0','0.0004964538966305554','','2020-06-20 12:02:36.941675','2020-06-20 12:02:36.941691',18,1),(179,'87.0','38.0','0.0','0.0003546099178493023','','2020-06-20 12:02:36.943907','2020-06-20 12:02:36.943920',18,1),(180,'27.0','28.0','32.0','0.05042553320527077','','2020-06-20 12:02:36.945778','2020-06-20 12:02:36.945791',18,1);
/*!40000 ALTER TABLE `ImagePropertiesAnnotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LabelAnnotations`
--

DROP TABLE IF EXISTS `LabelAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LabelAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LabelAnnotations_imageid_id_79cad949_fk_UploadFileAnnotations_id` (`imageid_id`),
  KEY `LabelAnnotations_userid_id_6450c880_fk_user_id` (`userid_id`),
  CONSTRAINT `LabelAnnotations_imageid_id_79cad949_fk_UploadFileAnnotations_id` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LabelAnnotations_userid_id_6450c880_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabelAnnotations`
--

LOCK TABLES `LabelAnnotations` WRITE;
/*!40000 ALTER TABLE `LabelAnnotations` DISABLE KEYS */;
INSERT INTO `LabelAnnotations` VALUES (1,'Product','2020-06-20 11:10:29.902516','2020-06-20 11:10:29.902548',1,1),(2,'Text','2020-06-20 11:10:29.905706','2020-06-20 11:10:29.905720',1,1),(3,'Beauty','2020-06-20 11:10:29.907994','2020-06-20 11:10:29.908009',1,1),(4,'Material property','2020-06-20 11:10:29.910354','2020-06-20 11:10:29.910368',1,1),(5,'Perfume','2020-06-20 11:10:29.912395','2020-06-20 11:10:29.912409',1,1),(6,'Brand','2020-06-20 11:10:29.914515','2020-06-20 11:10:29.914529',1,1),(7,'Cosmetics','2020-06-20 11:10:29.916605','2020-06-20 11:10:29.916625',1,1),(8,'Fluid','2020-06-20 11:10:29.919245','2020-06-20 11:10:29.919259',1,1),(9,'Nail polish','2020-06-20 11:10:33.891363','2020-06-20 11:10:33.891385',2,1),(10,'Nail','2020-06-20 11:10:33.894857','2020-06-20 11:10:33.894872',2,1),(11,'Manicure','2020-06-20 11:10:33.896998','2020-06-20 11:10:33.897012',2,1),(12,'Nail care','2020-06-20 11:10:33.899068','2020-06-20 11:10:33.899107',2,1),(13,'Finger','2020-06-20 11:10:33.901199','2020-06-20 11:10:33.901213',2,1),(14,'Cosmetics','2020-06-20 11:10:33.903259','2020-06-20 11:10:33.903275',2,1),(15,'Brown','2020-06-20 11:10:33.905261','2020-06-20 11:10:33.905273',2,1),(16,'Glitter','2020-06-20 11:10:33.907080','2020-06-20 11:10:33.907092',2,1),(17,'Hand','2020-06-20 11:10:33.908946','2020-06-20 11:10:33.908959',2,1),(18,'Material property','2020-06-20 11:10:33.910853','2020-06-20 11:10:33.910865',2,1),(19,'Pink','2020-06-20 11:10:38.499919','2020-06-20 11:10:38.499942',3,1),(20,'Beauty','2020-06-20 11:10:38.504003','2020-06-20 11:10:38.504020',3,1),(21,'Purple','2020-06-20 11:10:38.506117','2020-06-20 11:10:38.506132',3,1),(22,'Flower','2020-06-20 11:10:38.508110','2020-06-20 11:10:38.508125',3,1),(23,'Plant','2020-06-20 11:10:38.510048','2020-06-20 11:10:38.510061',3,1),(24,'Artificial flower','2020-06-20 11:10:38.511940','2020-06-20 11:10:38.511954',3,1),(25,'Material property','2020-06-20 11:10:38.514003','2020-06-20 11:10:38.514016',3,1),(26,'Bouquet','2020-06-20 11:10:38.515986','2020-06-20 11:10:38.516001',3,1),(27,'Cut flowers','2020-06-20 11:10:38.518881','2020-06-20 11:10:38.518898',3,1),(28,'Rose','2020-06-20 11:10:38.520888','2020-06-20 11:10:38.520901',3,1),(29,'Perfume','2020-06-20 11:10:46.281648','2020-06-20 11:10:46.281680',4,1),(30,'Material property','2020-06-20 11:10:46.285826','2020-06-20 11:10:46.285849',4,1),(31,'Beige','2020-06-20 11:10:46.288073','2020-06-20 11:10:46.288087',4,1),(32,'Cosmetics','2020-06-20 11:10:46.290282','2020-06-20 11:10:46.290307',4,1),(33,'Fashion accessory','2020-06-20 11:10:46.293399','2020-06-20 11:10:46.293414',4,1),(34,'Rectangle','2020-06-20 11:10:46.295251','2020-06-20 11:10:46.295263',4,1),(35,'Perfume','2020-06-20 11:10:49.703189','2020-06-20 11:10:49.703212',5,1),(36,'Lip','2020-06-20 11:10:49.707329','2020-06-20 11:10:49.707353',5,1),(37,'Red','2020-06-20 11:10:49.710182','2020-06-20 11:10:49.710197',5,1),(38,'Nail','2020-06-20 11:10:49.712336','2020-06-20 11:10:49.712351',5,1),(39,'Beauty','2020-06-20 11:10:49.714247','2020-06-20 11:10:49.714262',5,1),(40,'Hand','2020-06-20 11:10:49.716217','2020-06-20 11:10:49.716230',5,1),(41,'Cosmetics','2020-06-20 11:10:49.718152','2020-06-20 11:10:49.718165',5,1),(42,'Nail polish','2020-06-20 11:10:49.720046','2020-06-20 11:10:49.720059',5,1),(43,'Finger','2020-06-20 11:10:49.721868','2020-06-20 11:10:49.721881',5,1),(44,'Liqueur','2020-06-20 11:10:49.723588','2020-06-20 11:10:49.723607',5,1),(45,'Perfume','2020-06-20 11:10:54.063448','2020-06-20 11:10:54.063471',6,1),(46,'Silver','2020-06-20 11:10:54.066801','2020-06-20 11:10:54.066816',6,1),(47,'Product','2020-06-20 11:10:54.068764','2020-06-20 11:10:54.068778',6,1),(48,'Picture frame','2020-06-20 11:10:54.070754','2020-06-20 11:10:54.070769',6,1),(49,'Rectangle','2020-06-20 11:10:54.072653','2020-06-20 11:10:54.072665',6,1),(50,'Metal','2020-06-20 11:10:54.074450','2020-06-20 11:10:54.074462',6,1),(51,'Perfume','2020-06-20 11:10:59.694969','2020-06-20 11:10:59.694981',7,1),(52,'Cosmetics','2020-06-20 11:10:59.698064','2020-06-20 11:10:59.698112',7,1),(53,'Beige','2020-06-20 11:10:59.700039','2020-06-20 11:10:59.700052',7,1),(54,'Material property','2020-06-20 11:10:59.702000','2020-06-20 11:10:59.702015',7,1),(55,'Brand','2020-06-20 11:10:59.704015','2020-06-20 11:10:59.704028',7,1),(56,'Fashion accessory','2020-06-20 11:10:59.705982','2020-06-20 11:10:59.705994',7,1),(57,'Perfume','2020-06-20 11:11:03.791796','2020-06-20 11:11:03.791832',8,1),(58,'Glass bottle','2020-06-20 11:11:03.795828','2020-06-20 11:11:03.795843',8,1),(59,'Material property','2020-06-20 11:11:03.797936','2020-06-20 11:11:03.797952',8,1),(60,'Glass','2020-06-20 11:11:03.800496','2020-06-20 11:11:03.800516',8,1),(61,'Reflection','2020-06-20 11:11:03.802492','2020-06-20 11:11:03.802506',8,1),(62,'Alcohol','2020-06-20 11:11:03.804353','2020-06-20 11:11:03.804366',8,1),(63,'Fluid','2020-06-20 11:11:03.806122','2020-06-20 11:11:03.806135',8,1),(64,'Still life photography','2020-06-20 11:11:03.807857','2020-06-20 11:11:03.807869',8,1),(65,'Perfume','2020-06-20 11:11:12.192053','2020-06-20 11:11:12.192068',9,1),(66,'Product','2020-06-20 11:11:12.196000','2020-06-20 11:11:12.196015',9,1),(67,'Font','2020-06-20 11:11:12.197883','2020-06-20 11:11:12.197897',9,1),(68,'Cosmetics','2020-06-20 11:11:12.200021','2020-06-20 11:11:12.200035',9,1),(69,'Brand','2020-06-20 11:11:12.202083','2020-06-20 11:11:12.202097',9,1),(70,'Liquid','2020-06-20 11:11:12.204590','2020-06-20 11:11:12.204604',9,1),(71,'Fluid','2020-06-20 11:11:12.206409','2020-06-20 11:11:12.206422',9,1),(72,'Label','2020-06-20 11:11:12.208379','2020-06-20 11:11:12.208392',9,1),(73,'Plant','2020-06-20 11:11:42.986702','2020-06-20 11:11:42.986716',10,1),(74,'Leaf','2020-06-20 11:11:42.989084','2020-06-20 11:11:42.989098',10,1),(75,'Basil','2020-06-20 11:11:42.991048','2020-06-20 11:11:42.991061',10,1),(76,'Food','2020-06-20 11:11:42.992945','2020-06-20 11:11:42.992958',10,1),(77,'Flower','2020-06-20 11:11:42.994908','2020-06-20 11:11:42.994920',10,1),(78,'Liquid','2020-06-20 11:11:42.996714','2020-06-20 11:11:42.996727',10,1),(79,'People','2020-06-20 11:11:46.594719','2020-06-20 11:11:46.594733',11,1),(80,'Tourism','2020-06-20 11:11:46.597757','2020-06-20 11:11:46.597772',11,1),(81,'Crowd','2020-06-20 11:11:46.599747','2020-06-20 11:11:46.599761',11,1),(82,'Street','2020-06-20 11:11:46.601792','2020-06-20 11:11:46.601806',11,1),(83,'Vehicle','2020-06-20 11:11:46.604289','2020-06-20 11:11:46.604314',11,1),(84,'Bicycle','2020-06-20 11:11:46.606940','2020-06-20 11:11:46.606955',11,1),(85,'Recreation','2020-06-20 11:11:46.609307','2020-06-20 11:11:46.609321',11,1),(86,'Leisure','2020-06-20 11:11:46.611201','2020-06-20 11:11:46.611214',11,1),(87,'City','2020-06-20 11:11:46.613090','2020-06-20 11:11:46.613103',11,1),(88,'Temple','2020-06-20 11:11:46.614811','2020-06-20 11:11:46.614823',11,1),(89,'Bookend','2020-06-20 11:57:43.035113','2020-06-20 11:57:43.035133',12,1),(90,'Landmark','2020-06-20 11:57:46.387973','2020-06-20 11:57:46.387997',13,1),(91,'Tower','2020-06-20 11:57:46.391718','2020-06-20 11:57:46.391734',13,1),(92,'Monument','2020-06-20 11:57:46.394434','2020-06-20 11:57:46.394450',13,1),(93,'Architecture','2020-06-20 11:57:46.396512','2020-06-20 11:57:46.396527',13,1),(94,'Spire','2020-06-20 11:57:46.398612','2020-06-20 11:57:46.398626',13,1),(95,'Tourist attraction','2020-06-20 11:57:46.400603','2020-06-20 11:57:46.400617',13,1),(96,'Steeple','2020-06-20 11:57:46.402534','2020-06-20 11:57:46.402547',13,1),(97,'Sky','2020-06-20 11:57:46.404275','2020-06-20 11:57:46.404288',13,1),(98,'National historic landmark','2020-06-20 11:57:46.406156','2020-06-20 11:57:46.406170',13,1),(99,'Tourism','2020-06-20 11:57:46.408142','2020-06-20 11:57:46.408157',13,1),(100,'Bookend','2020-06-20 12:02:08.573870','2020-06-20 12:02:08.573888',14,1),(101,'Landmark','2020-06-20 12:02:12.047834','2020-06-20 12:02:12.047858',15,1),(102,'Tower','2020-06-20 12:02:12.051107','2020-06-20 12:02:12.051121',15,1),(103,'Monument','2020-06-20 12:02:12.053336','2020-06-20 12:02:12.053351',15,1),(104,'Architecture','2020-06-20 12:02:12.055416','2020-06-20 12:02:12.055431',15,1),(105,'Spire','2020-06-20 12:02:12.057607','2020-06-20 12:02:12.057620',15,1),(106,'Tourist attraction','2020-06-20 12:02:12.059681','2020-06-20 12:02:12.059695',15,1),(107,'Steeple','2020-06-20 12:02:12.061661','2020-06-20 12:02:12.061674',15,1),(108,'Sky','2020-06-20 12:02:12.063839','2020-06-20 12:02:12.063853',15,1),(109,'National historic landmark','2020-06-20 12:02:12.065778','2020-06-20 12:02:12.065791',15,1),(110,'Tourism','2020-06-20 12:02:12.067761','2020-06-20 12:02:12.067775',15,1),(111,'Perfume','2020-06-20 12:02:14.367154','2020-06-20 12:02:14.367175',16,1),(112,'Product','2020-06-20 12:02:14.370771','2020-06-20 12:02:14.370785',16,1),(113,'Pink','2020-06-20 12:02:14.372800','2020-06-20 12:02:14.372814',16,1),(114,'Beauty','2020-06-20 12:02:14.375697','2020-06-20 12:02:14.375717',16,1),(115,'Glass bottle','2020-06-20 12:02:14.377588','2020-06-20 12:02:14.377601',16,1),(116,'Flower','2020-06-20 12:02:14.379707','2020-06-20 12:02:14.379720',16,1),(117,'Cosmetics','2020-06-20 12:02:14.381719','2020-06-20 12:02:14.381736',16,1),(118,'Bottle','2020-06-20 12:02:14.384606','2020-06-20 12:02:14.384632',16,1),(119,'Plant','2020-06-20 12:02:14.387651','2020-06-20 12:02:14.387665',16,1),(120,'Peony','2020-06-20 12:02:14.389528','2020-06-20 12:02:14.389541',16,1),(121,'Landmark','2020-06-20 12:02:17.316386','2020-06-20 12:02:17.316409',17,1),(122,'Tower','2020-06-20 12:02:17.320238','2020-06-20 12:02:17.320253',17,1),(123,'Spire','2020-06-20 12:02:17.322403','2020-06-20 12:02:17.322416',17,1),(124,'Fun','2020-06-20 12:02:17.324493','2020-06-20 12:02:17.324507',17,1),(125,'Vacation','2020-06-20 12:02:17.326558','2020-06-20 12:02:17.326572',17,1),(126,'Travel','2020-06-20 12:02:17.328469','2020-06-20 12:02:17.328482',17,1),(127,'Tourism','2020-06-20 12:02:17.331319','2020-06-20 12:02:17.331334',17,1),(128,'Building','2020-06-20 12:02:17.333496','2020-06-20 12:02:17.333509',17,1),(129,'National historic landmark','2020-06-20 12:02:17.335427','2020-06-20 12:02:17.335441',17,1),(130,'Photograph','2020-06-20 12:02:26.171126','2020-06-20 12:02:26.171141',18,1),(131,'Text','2020-06-20 12:02:26.173915','2020-06-20 12:02:26.173928',18,1),(132,'Software','2020-06-20 12:02:26.175754','2020-06-20 12:02:26.175766',18,1),(133,'Font','2020-06-20 12:02:26.177688','2020-06-20 12:02:26.177701',18,1),(134,'Screenshot','2020-06-20 12:02:26.179657','2020-06-20 12:02:26.179670',18,1),(135,'Multimedia software','2020-06-20 12:02:26.181709','2020-06-20 12:02:26.181722',18,1),(136,'Multimedia','2020-06-20 12:02:26.183477','2020-06-20 12:02:26.183489',18,1),(137,'Technology','2020-06-20 12:02:26.185722','2020-06-20 12:02:26.185746',18,1),(138,'Design','2020-06-20 12:02:26.188241','2020-06-20 12:02:26.188255',18,1),(139,'Animation','2020-06-20 12:02:26.190042','2020-06-20 12:02:26.190054',18,1);
/*!40000 ALTER TABLE `LabelAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LandmarkAnnotations`
--

DROP TABLE IF EXISTS `LandmarkAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LandmarkAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LandmarkAnnotations_imageid_id_85ce5f11_fk_UploadFil` (`imageid_id`),
  KEY `LandmarkAnnotations_userid_id_5b669468_fk_user_id` (`userid_id`),
  CONSTRAINT `LandmarkAnnotations_imageid_id_85ce5f11_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LandmarkAnnotations_userid_id_5b669468_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LandmarkAnnotations`
--

LOCK TABLES `LandmarkAnnotations` WRITE;
/*!40000 ALTER TABLE `LandmarkAnnotations` DISABLE KEYS */;
INSERT INTO `LandmarkAnnotations` VALUES (1,'Jakarta History Museum','2020-06-20 11:11:52.021615','2020-06-20 11:11:52.021647',11,1),(2,'Fatahillah Square','2020-06-20 11:11:52.027875','2020-06-20 11:11:52.027890',11,1),(3,'Eiffel Tower','2020-06-20 12:02:13.433234','2020-06-20 12:02:13.433265',15,1),(4,'Eiffel Tower','2020-06-20 12:02:19.961101','2020-06-20 12:02:19.961116',17,1),(5,'Trocadéro Gardens','2020-06-20 12:02:19.966836','2020-06-20 12:02:19.966857',17,1);
/*!40000 ALTER TABLE `LandmarkAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LanguageAnnotations`
--

DROP TABLE IF EXISTS `LanguageAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LanguageAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `languageCode` varchar(100) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `fulltextid_id` int(11) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LanguageAnnotations_fulltextid_id_1c737034_fk_FullTextA` (`fulltextid_id`),
  KEY `LanguageAnnotations_imageid_id_f682f5ed_fk_UploadFil` (`imageid_id`),
  KEY `LanguageAnnotations_userid_id_f544b1b9_fk_user_id` (`userid_id`),
  CONSTRAINT `LanguageAnnotations_fulltextid_id_1c737034_fk_FullTextA` FOREIGN KEY (`fulltextid_id`) REFERENCES `fulltextannotation` (`id`),
  CONSTRAINT `LanguageAnnotations_imageid_id_f682f5ed_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LanguageAnnotations_userid_id_f544b1b9_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LanguageAnnotations`
--

LOCK TABLES `LanguageAnnotations` WRITE;
/*!40000 ALTER TABLE `LanguageAnnotations` DISABLE KEYS */;
INSERT INTO `LanguageAnnotations` VALUES (1,'fr','2020-06-20 11:10:33.172625','2020-06-20 11:10:33.172647',1,1,1),(2,'en','2020-06-20 11:10:33.175897','2020-06-20 11:10:33.175912',1,1,1),(3,'fr','2020-06-20 11:10:37.477516','2020-06-20 11:10:37.477530',2,2,1),(4,'en','2020-06-20 11:10:37.479600','2020-06-20 11:10:37.479614',2,2,1),(5,'en','2020-06-20 11:10:45.672698','2020-06-20 11:10:45.672715',3,3,1),(6,'fr','2020-06-20 11:10:45.675067','2020-06-20 11:10:45.675082',3,3,1),(7,'ro','2020-06-20 11:10:45.677324','2020-06-20 11:10:45.677338',3,3,1),(8,'gl','2020-06-20 11:10:45.679222','2020-06-20 11:10:45.679235',3,3,1),(9,'id','2020-06-20 11:10:45.682533','2020-06-20 11:10:45.682546',3,3,1),(10,'pt','2020-06-20 11:10:45.684491','2020-06-20 11:10:45.684503',3,3,1),(11,'en','2020-06-20 11:10:49.116919','2020-06-20 11:10:49.116933',4,4,1),(12,'fr','2020-06-20 11:10:49.119001','2020-06-20 11:10:49.119015',4,4,1),(13,'fr','2020-06-20 11:10:53.351011','2020-06-20 11:10:53.351036',5,5,1),(14,'en','2020-06-20 11:10:53.353170','2020-06-20 11:10:53.353191',5,5,1),(15,'fr','2020-06-20 11:10:59.086088','2020-06-20 11:10:59.086102',6,6,1),(16,'en','2020-06-20 11:10:59.088194','2020-06-20 11:10:59.088208',6,6,1),(17,'fr','2020-06-20 11:11:03.180776','2020-06-20 11:11:03.180791',7,7,1),(18,'en','2020-06-20 11:11:03.184223','2020-06-20 11:11:03.184238',7,7,1),(19,'es','2020-06-20 11:11:03.186381','2020-06-20 11:11:03.186395',7,7,1),(20,'en','2020-06-20 11:11:07.800314','2020-06-20 11:11:07.800340',8,8,1),(21,'id','2020-06-20 11:11:07.803312','2020-06-20 11:11:07.803327',8,8,1),(22,'fr','2020-06-20 11:11:07.805404','2020-06-20 11:11:07.805418',8,8,1),(23,'en','2020-06-20 11:11:42.503791','2020-06-20 11:11:42.503807',9,9,1),(24,'fr','2020-06-20 11:11:42.506077','2020-06-20 11:11:42.506091',9,9,1),(25,'pt','2020-06-20 11:11:42.508136','2020-06-20 11:11:42.508149',9,9,1),(26,'fr','2020-06-20 11:11:45.590410','2020-06-20 11:11:45.590454',10,10,1),(27,'en','2020-06-20 11:11:45.592766','2020-06-20 11:11:45.592815',10,10,1),(28,'af','2020-06-20 11:11:54.177203','2020-06-20 11:11:54.177219',11,11,1),(29,'en','2020-06-20 11:57:45.961309','2020-06-20 11:57:45.961330',12,12,1),(30,'pl','2020-06-20 11:57:45.963962','2020-06-20 11:57:45.963976',12,12,1),(31,'es','2020-06-20 11:57:45.965997','2020-06-20 11:57:45.966011',12,12,1),(32,'fr','2020-06-20 11:57:45.968002','2020-06-20 11:57:45.968017',12,12,1),(33,'en','2020-06-20 12:02:11.627614','2020-06-20 12:02:11.627636',13,14,1),(34,'pl','2020-06-20 12:02:11.630382','2020-06-20 12:02:11.630401',13,14,1),(35,'es','2020-06-20 12:02:11.632742','2020-06-20 12:02:11.632757',13,14,1),(36,'fr','2020-06-20 12:02:11.634930','2020-06-20 12:02:11.634943',13,14,1),(37,'en','2020-06-20 12:02:16.869880','2020-06-20 12:02:16.869895',15,16,1),(38,'fr','2020-06-20 12:02:16.872097','2020-06-20 12:02:16.872112',15,16,1),(39,'pt','2020-06-20 12:02:16.874286','2020-06-20 12:02:16.874299',15,16,1),(40,'en','2020-06-20 12:02:20.980086','2020-06-20 12:02:20.980100',16,17,1),(41,'en','2020-06-20 12:02:54.341105','2020-06-20 12:02:54.341120',17,18,1),(42,'da','2020-06-20 12:02:54.344338','2020-06-20 12:02:54.344352',17,18,1),(43,'gd','2020-06-20 12:02:54.346320','2020-06-20 12:02:54.346333',17,18,1),(44,'ro','2020-06-20 12:02:54.349550','2020-06-20 12:02:54.349580',17,18,1),(45,'de','2020-06-20 12:02:54.352144','2020-06-20 12:02:54.352158',17,18,1),(46,'lv','2020-06-20 12:02:54.354134','2020-06-20 12:02:54.354147',17,18,1);
/*!40000 ALTER TABLE `LanguageAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LocalizedObjectAnnotations`
--

DROP TABLE IF EXISTS `LocalizedObjectAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LocalizedObjectAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LocalizedObjectAnnot_imageid_id_4e38ae33_fk_UploadFil` (`imageid_id`),
  KEY `LocalizedObjectAnnotations_userid_id_c0bfab19_fk_user_id` (`userid_id`),
  CONSTRAINT `LocalizedObjectAnnot_imageid_id_4e38ae33_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LocalizedObjectAnnotations_userid_id_c0bfab19_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocalizedObjectAnnotations`
--

LOCK TABLES `LocalizedObjectAnnotations` WRITE;
/*!40000 ALTER TABLE `LocalizedObjectAnnotations` DISABLE KEYS */;
INSERT INTO `LocalizedObjectAnnotations` VALUES (1,'Packaged goods','2020-06-20 11:10:32.605874','2020-06-20 11:10:32.605894',1,1),(2,'Packaged goods','2020-06-20 11:10:32.608987','2020-06-20 11:10:32.609002',1,1),(3,'Packaged goods','2020-06-20 11:10:36.699241','2020-06-20 11:10:36.699264',2,1),(4,'Packaged goods','2020-06-20 11:10:44.068561','2020-06-20 11:10:44.068583',3,1),(5,'Packaged goods','2020-06-20 11:10:44.073226','2020-06-20 11:10:44.073251',3,1),(6,'Packaged goods','2020-06-20 11:10:44.076155','2020-06-20 11:10:44.076170',3,1),(7,'Packaged goods','2020-06-20 11:10:44.078184','2020-06-20 11:10:44.078198',3,1),(8,'Packaged goods','2020-06-20 11:10:44.080419','2020-06-20 11:10:44.080433',3,1),(9,'Packaged goods','2020-06-20 11:10:44.082567','2020-06-20 11:10:44.082580',3,1),(10,'Bagged packaged goods','2020-06-20 11:10:44.084507','2020-06-20 11:10:44.084520',3,1),(11,'Boxed packaged goods','2020-06-20 11:10:48.729345','2020-06-20 11:10:48.729360',4,1),(12,'Packaged goods','2020-06-20 11:10:48.732308','2020-06-20 11:10:48.732323',4,1),(13,'Packaged goods','2020-06-20 11:10:52.651509','2020-06-20 11:10:52.651532',5,1),(14,'Packaged goods','2020-06-20 11:10:57.978987','2020-06-20 11:10:57.979015',6,1),(15,'Picture frame','2020-06-20 11:10:57.983314','2020-06-20 11:10:57.983338',6,1),(16,'Packaged goods','2020-06-20 11:11:02.479999','2020-06-20 11:11:02.480022',7,1),(17,'Packaged goods','2020-06-20 11:11:02.484940','2020-06-20 11:11:02.484966',7,1),(18,'Packaged goods','2020-06-20 11:11:07.129652','2020-06-20 11:11:07.129676',8,1),(19,'Packaged goods','2020-06-20 11:11:07.133683','2020-06-20 11:11:07.133706',8,1),(20,'Packaged goods','2020-06-20 11:11:35.066149','2020-06-20 11:11:35.066172',9,1),(21,'Boxed packaged goods','2020-06-20 11:11:35.070473','2020-06-20 11:11:35.070497',9,1),(22,'Packaged goods','2020-06-20 11:11:45.248994','2020-06-20 11:11:45.249017',10,1),(23,'Person','2020-06-20 11:11:52.616399','2020-06-20 11:11:52.616421',11,1),(24,'Person','2020-06-20 11:11:52.620358','2020-06-20 11:11:52.620381',11,1),(25,'Person','2020-06-20 11:11:52.622903','2020-06-20 11:11:52.622925',11,1),(26,'Bicycle wheel','2020-06-20 11:11:52.625596','2020-06-20 11:11:52.625619',11,1),(27,'Person','2020-06-20 11:11:52.627746','2020-06-20 11:11:52.627760',11,1),(28,'Person','2020-06-20 11:11:52.629754','2020-06-20 11:11:52.629767',11,1),(29,'Person','2020-06-20 11:11:52.631574','2020-06-20 11:11:52.631587',11,1),(30,'Person','2020-06-20 11:11:52.636463','2020-06-20 11:11:52.636476',11,1),(31,'Person','2020-06-20 11:11:52.638350','2020-06-20 11:11:52.638363',11,1),(32,'Person','2020-06-20 11:11:52.641069','2020-06-20 11:11:52.641084',11,1),(33,'Packaged goods','2020-06-20 11:57:45.562673','2020-06-20 11:57:45.562694',12,1),(34,'Packaged goods','2020-06-20 11:57:45.565881','2020-06-20 11:57:45.565896',12,1),(35,'Packaged goods','2020-06-20 12:02:11.067772','2020-06-20 12:02:11.067789',14,1),(36,'Packaged goods','2020-06-20 12:02:11.071037','2020-06-20 12:02:11.071050',14,1),(37,'Building','2020-06-20 12:02:13.576044','2020-06-20 12:02:13.576067',15,1),(38,'Perfume','2020-06-20 12:02:16.430601','2020-06-20 12:02:16.430624',16,1),(39,'Perfume','2020-06-20 12:02:16.434646','2020-06-20 12:02:16.434661',16,1),(40,'Bottle','2020-06-20 12:02:16.436916','2020-06-20 12:02:16.436932',16,1),(41,'Picture frame','2020-06-20 12:02:16.439032','2020-06-20 12:02:16.439047',16,1),(42,'Vase','2020-06-20 12:02:16.441095','2020-06-20 12:02:16.441108',16,1),(43,'Person','2020-06-20 12:02:20.316129','2020-06-20 12:02:20.316164',17,1),(44,'Top','2020-06-20 12:02:20.320158','2020-06-20 12:02:20.320178',17,1),(45,'Building','2020-06-20 12:02:20.323007','2020-06-20 12:02:20.323026',17,1),(46,'Helmet','2020-06-20 12:02:20.325853','2020-06-20 12:02:20.325868',17,1),(47,'Person','2020-06-20 12:02:47.163085','2020-06-20 12:02:47.163108',18,1);
/*!40000 ALTER TABLE `LocalizedObjectAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LocationAnnotations`
--

DROP TABLE IF EXISTS `LocationAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LocationAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `landmarkid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LocationAnnotations_imageid_id_5f58f4c8_fk_UploadFil` (`imageid_id`),
  KEY `LocationAnnotations_landmarkid_id_9dd4e1ba_fk_LandmarkA` (`landmarkid_id`),
  KEY `LocationAnnotations_userid_id_a8add4b1_fk_user_id` (`userid_id`),
  CONSTRAINT `LocationAnnotations_imageid_id_5f58f4c8_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LocationAnnotations_landmarkid_id_9dd4e1ba_fk_LandmarkA` FOREIGN KEY (`landmarkid_id`) REFERENCES `landmarkannotations` (`id`),
  CONSTRAINT `LocationAnnotations_userid_id_a8add4b1_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocationAnnotations`
--

LOCK TABLES `LocationAnnotations` WRITE;
/*!40000 ALTER TABLE `LocationAnnotations` DISABLE KEYS */;
INSERT INTO `LocationAnnotations` VALUES (1,'-6.135199999999999','106.8133','2020-06-20 11:11:52.024904','2020-06-20 11:11:52.024923',11,1,1),(2,'-6.1347051','106.8132625','2020-06-20 11:11:52.029921','2020-06-20 11:11:52.029935',11,2,1),(3,'48.858461','2.294351','2020-06-20 12:02:13.447748','2020-06-20 12:02:13.447780',15,3,1),(4,'48.858461','2.294351','2020-06-20 12:02:19.964622','2020-06-20 12:02:19.964638',17,4,1),(5,'48.861596299999995','2.2892823','2020-06-20 12:02:19.968983','2020-06-20 12:02:19.968996',17,5,1);
/*!40000 ALTER TABLE `LocationAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogoAnnotations`
--

DROP TABLE IF EXISTS `LogoAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LogoAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LogoAnnotations_imageid_id_a9e2b80f_fk_UploadFileAnnotations_id` (`imageid_id`),
  KEY `LogoAnnotations_userid_id_f200699d_fk_user_id` (`userid_id`),
  CONSTRAINT `LogoAnnotations_imageid_id_a9e2b80f_fk_UploadFileAnnotations_id` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LogoAnnotations_userid_id_f200699d_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogoAnnotations`
--

LOCK TABLES `LogoAnnotations` WRITE;
/*!40000 ALTER TABLE `LogoAnnotations` DISABLE KEYS */;
INSERT INTO `LogoAnnotations` VALUES (1,'Chanel','2020-06-20 11:10:30.086066','2020-06-20 11:10:30.086086',1,1),(2,'Coco Mademoiselle','2020-06-20 11:10:30.089288','2020-06-20 11:10:30.089302',1,1),(3,'Chanel','2020-06-20 11:10:34.099195','2020-06-20 11:10:34.099231',2,1),(4,'Ralph Lauren Corporation','2020-06-20 11:10:39.131183','2020-06-20 11:10:39.131217',3,1),(5,'Buchanan\'s','2020-06-20 11:10:39.135222','2020-06-20 11:10:39.135240',3,1),(6,'Chanel','2020-06-20 11:10:46.442593','2020-06-20 11:10:46.442634',4,1),(7,'Canal+','2020-06-20 11:10:46.446834','2020-06-20 11:10:46.446849',4,1),(8,'Telltale Games','2020-06-20 11:10:54.390364','2020-06-20 11:10:54.390387',6,1),(9,'Coco Mademoiselle','2020-06-20 11:10:59.880606','2020-06-20 11:10:59.880630',7,1),(10,'Coco Mademoiselle','2020-06-20 11:10:59.883883','2020-06-20 11:10:59.883899',7,1),(11,'Chanel','2020-06-20 11:11:03.986298','2020-06-20 11:11:03.986312',8,1),(12,'Chanel','2020-06-20 11:11:03.989241','2020-06-20 11:11:03.989256',8,1),(13,'Coco Mademoiselle','2020-06-20 11:11:15.631574','2020-06-20 11:11:15.631596',9,1),(14,'Chanel','2020-06-20 11:11:43.136737','2020-06-20 11:11:43.136763',10,1),(15,'Chanel','2020-06-20 11:11:43.141015','2020-06-20 11:11:43.141030',10,1),(16,'Chanel','2020-06-20 12:02:14.528557','2020-06-20 12:02:14.528577',16,1),(17,'Rice University','2020-06-20 12:02:17.454707','2020-06-20 12:02:17.454722',17,1);
/*!40000 ALTER TABLE `LogoAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReportTable`
--

DROP TABLE IF EXISTS `ReportTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReportTable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ReportTable_userid_id_4dfc835b_fk_user_id` (`userid_id`),
  CONSTRAINT `ReportTable_userid_id_4dfc835b_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReportTable`
--

LOCK TABLES `ReportTable` WRITE;
/*!40000 ALTER TABLE `ReportTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReportTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SafeSearchAnnotation`
--

DROP TABLE IF EXISTS `SafeSearchAnnotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SafeSearchAnnotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adult` varchar(100) NOT NULL,
  `medical` varchar(100) NOT NULL,
  `racy` varchar(100) NOT NULL,
  `spoof` varchar(100) NOT NULL,
  `violence` varchar(100) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SafeSearchAnnotation_imageid_id_83717910_fk_UploadFil` (`imageid_id`),
  KEY `SafeSearchAnnotation_userid_id_626cefa1_fk_user_id` (`userid_id`),
  CONSTRAINT `SafeSearchAnnotation_imageid_id_83717910_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `SafeSearchAnnotation_userid_id_626cefa1_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SafeSearchAnnotation`
--

LOCK TABLES `SafeSearchAnnotation` WRITE;
/*!40000 ALTER TABLE `SafeSearchAnnotation` DISABLE KEYS */;
INSERT INTO `SafeSearchAnnotation` VALUES (1,'VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:10:32.969861','2020-06-20 11:10:32.969879',1,1),(2,'VERY_UNLIKELY','UNLIKELY','UNLIKELY','UNLIKELY','UNLIKELY','2020-06-20 11:10:37.065426','2020-06-20 11:10:37.065449',2,1),(3,'VERY_UNLIKELY','UNLIKELY','POSSIBLE','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:10:44.847961','2020-06-20 11:10:44.847984',3,1),(4,'VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:10:48.925089','2020-06-20 11:10:48.925106',4,1),(5,'VERY_UNLIKELY','UNLIKELY','POSSIBLE','VERY_UNLIKELY','UNLIKELY','2020-06-20 11:10:52.920255','2020-06-20 11:10:52.920269',5,1),(6,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:10:58.465949','2020-06-20 11:10:58.465989',6,1),(7,'VERY_UNLIKELY','VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:02.721954','2020-06-20 11:11:02.721979',7,1),(8,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:07.476147','2020-06-20 11:11:07.476170',8,1),(9,'VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:38.811496','2020-06-20 11:11:38.811509',9,1),(10,'VERY_UNLIKELY','UNLIKELY','POSSIBLE','UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:45.405947','2020-06-20 11:11:45.405971',10,1),(11,'VERY_UNLIKELY','VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:11:53.267713','2020-06-20 11:11:53.267736',11,1),(12,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 11:57:45.739876','2020-06-20 11:57:45.739932',12,1),(13,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 12:02:11.427304','2020-06-20 12:02:11.427323',14,1),(14,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 12:02:13.801618','2020-06-20 12:02:13.801645',15,1),(15,'VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-20 12:02:16.672594','2020-06-20 12:02:16.672617',16,1),(16,'VERY_UNLIKELY','VERY_UNLIKELY','UNLIKELY','UNLIKELY','UNLIKELY','2020-06-20 12:02:20.800771','2020-06-20 12:02:20.800784',17,1),(17,'VERY_UNLIKELY','VERY_UNLIKELY','UNLIKELY','POSSIBLE','UNLIKELY','2020-06-20 12:02:50.850582','2020-06-20 12:02:50.850662',18,1);
/*!40000 ALTER TABLE `SafeSearchAnnotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TextAnnotations`
--

DROP TABLE IF EXISTS `TextAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TextAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TextAnnotations_imageid_id_f2592438_fk_UploadFileAnnotations_id` (`imageid_id`),
  KEY `TextAnnotations_userid_id_823d1670_fk_user_id` (`userid_id`),
  CONSTRAINT `TextAnnotations_imageid_id_f2592438_fk_UploadFileAnnotations_id` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `TextAnnotations_userid_id_823d1670_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TextAnnotations`
--

LOCK TABLES `TextAnnotations` WRITE;
/*!40000 ALTER TABLE `TextAnnotations` DISABLE KEYS */;
INSERT INTO `TextAnnotations` VALUES (1,'COCO\nMADEMOISELLE\nCHANEL\nCOCO\nPARIS\nNOIR\nCHANEL\nPARIS\nEAU DE PARFUM\nMal\n17832\n','fr','2020-06-20 11:10:31.843916','2020-06-20 11:10:31.843932',1,1),(2,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','fr','2020-06-20 11:10:35.938353','2020-06-20 11:10:35.938368',2,1),(3,'KORA\nKORA\nRA\nTURE\nCHANEL\nICL\nHAND CRE AN\nPINKOUSK\nALLUR\nLE VERNIS\nLONGUE TENUE\nLONGWEAR\nNAIL COLOUR\nCHANEL\nTOM FORD\nROUGE NOIR\nUP COLOR\nROUGE A LEVRES\nCHANEL\nNET W\n0.4 FLOZ\n13 ml\nEAU DE PA\nANEL\n','en','2020-06-20 11:10:42.596673','2020-06-20 11:10:42.596686',3,1),(4,'CHANEL\nN°5\nL\'EAU\nCHANEL\nPARIS\nN° 5\nL\'EAU\nCHANEL\nPARIS\nCHANEL\nCHANEL\n','en','2020-06-20 11:10:48.127401','2020-06-20 11:10:48.127417',4,1),(5,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','fr','2020-06-20 11:10:52.015955','2020-06-20 11:10:52.015979',5,1),(6,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','fr','2020-06-20 11:10:56.932337','2020-06-20 11:10:56.932360',6,1),(7,'COCO\nMADEMOILLE\nCHANEL\nEMOIS\nCoco\nMADEMOISELLE\nCHANEL\nPARIS\nEAU DE PARFUM\nVAPORISATEUR SPRAY\n50 ml\n','fr','2020-06-20 11:11:01.746705','2020-06-20 11:11:01.746728',7,1),(8,'N°5\nCHAM\nCHANEL\nPARIS\nPARFUM\nN\'S\nCHANEL\nPARFUM\nPARIS\n','en','2020-06-20 11:11:06.179736','2020-06-20 11:11:06.179759',8,1),(9,'coco\nGAME CENTER\nCHANEL\nPARIS - BIARRITZ\nCHANEL\nPARIS\nGABRIELLE\nCHANEL\nPARIS\nDE PARF UM INTENSE\nPORISATEUR SPRAY\nwwww\n','fr','2020-06-20 11:11:27.860026','2020-06-20 11:11:27.860117',9,1),(10,'PARIS - DEAUVILLE\nCHANEL\nPARIS\n','fr','2020-06-20 11:11:44.754691','2020-06-20 11:11:44.754706',10,1),(11,'CEDOENG JASNDO\nTA\nTERS\n出\n','id','2020-06-20 11:11:50.874336','2020-06-20 11:11:50.874359',11,1),(12,'Evening in Taris.\nPERFUME\nBOURJOIS\nLONDON\nHADE N ENG\nPARIS\nFenting in tans\n','en','2020-06-20 11:57:44.981964','2020-06-20 11:57:44.981983',12,1),(13,'Evening in Taris.\nPERFUME\nBOURJOIS\nLONDON\nHADE N ENG\nPARIS\nFenting in tans\n','en','2020-06-20 12:02:10.385467','2020-06-20 12:02:10.385487',14,1),(14,'DAISY\nCHANEL\nPARIS\nRESH\n','en','2020-06-20 12:02:15.907249','2020-06-20 12:02:15.907264',16,1),(15,'RACING\nLEGEND\nHONDA\n','en','2020-06-20 12:02:19.335242','2020-06-20 12:02:19.335261',17,1),(16,'Chrome\nFile\nEdit\nView\nHistory\nBookmarks People\nTab\nWindow Help\n10%\nFri 11:56 PM\nVisu\nB X\nStalk\nс Мy F\nC Engl\nThe\nO Clip\nepita\nRenc\nМy ‑\nStall\nW3.\nTryit\nhtml\nG imag\nCSS\nhtml\n+\nO Not Secure 0.0.0.0:8000\nApps\nΕΡITΑ\nProject\nFranceGoverment\nApple + Apply COmpany -..\ntds Using Python to c...\nStalk_Market_Rep...\nStalkMarket\nLogin\nAbout\nServices\nOur Team\nContact\n3/3\nJoy\nVery Likely\nSorrow\nVery Unlikely\nAnger\nVery Unlikely\ncoco\nCHANEL\nSurprise\nVery Unlikely\nExposed\nVery Unlikely\ncoco\nCHANEL\nCHANEL\nBlurred\nVery Unlikely\nHeadwear\nCHANEL\nPERFUMES\nVery Unlikely\ncoco\n(HANEU\nRoll: -4° Tilt: 0° Pan: -4°\nCHANEL\nchanel_image_processing3.jpg\nConfidence\n96%\nbackground.jpg\nA slider.zip\nslider.rar\nShow All\ntest.html\n...\n','en','2020-06-20 12:02:40.615166','2020-06-20 12:02:40.615181',18,1);
/*!40000 ALTER TABLE `TextAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploadFile`
--

DROP TABLE IF EXISTS `uploadFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploadFile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadFile`
--

LOCK TABLES `uploadFile` WRITE;
/*!40000 ALTER TABLE `uploadFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploadFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UploadFileAnnotations`
--

DROP TABLE IF EXISTS `UploadFileAnnotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UploadFileAnnotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(1000) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UploadFileAnnotations_userid_id_62807786_fk_user_id` (`userid_id`),
  CONSTRAINT `UploadFileAnnotations_userid_id_62807786_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UploadFileAnnotations`
--

LOCK TABLES `UploadFileAnnotations` WRITE;
/*!40000 ALTER TABLE `UploadFileAnnotations` DISABLE KEYS */;
INSERT INTO `UploadFileAnnotations` VALUES (1,'2015-01-29_09-53-14_UTC.jpg','2020-06-20 11:10:29.253687','2020-06-20 11:10:29.253708',1),(2,'2015-09-29_18-36-48_UTC.jpg','2020-06-20 11:10:33.179033','2020-06-20 11:10:33.179046',1),(3,'2016-05-18_10-38-32_UTC.jpg','2020-06-20 11:10:37.482526','2020-06-20 11:10:37.482541',1),(4,'2016-12-07_06-53-12_UTC.jpg','2020-06-20 11:10:45.688949','2020-06-20 11:10:45.688965',1),(5,'2017-12-30_19-09-09_UTC.jpg','2020-06-20 11:10:49.122049','2020-06-20 11:10:49.122063',1),(6,'2018-01-02_15-58-24_UTC.jpg','2020-06-20 11:10:53.356561','2020-06-20 11:10:53.356575',1),(7,'2018-02-23_09-07-01_UTC.jpg','2020-06-20 11:10:59.091297','2020-06-20 11:10:59.091319',1),(8,'2018-04-06_06-09-31_UTC.jpg','2020-06-20 11:11:03.189238','2020-06-20 11:11:03.189256',1),(9,'2018-05-30_16-02-35_UTC_6.jpg','2020-06-20 11:11:07.811240','2020-06-20 11:11:07.811264',1),(10,'2018-07-11_07-49-58_UTC.jpg','2020-06-20 11:11:42.511579','2020-06-20 11:11:42.511592',1),(11,'demo-img.jpg','2020-06-20 11:11:45.597210','2020-06-20 11:11:45.597248',1),(12,'35bd77c2fb0b03bb680d24c804c21f27.jpg','2020-06-20 11:57:42.275208','2020-06-20 11:57:42.275229',1),(13,'images.jpeg','2020-06-20 11:57:45.970853','2020-06-20 11:57:45.970868',1),(14,'35bd77c2fb0b03bb680d24c804c21f27.jpg','2020-06-20 12:02:08.030712','2020-06-20 12:02:08.030729',1),(15,'images.jpeg','2020-06-20 12:02:11.638482','2020-06-20 12:02:11.638497',1),(16,'original.jpg','2020-06-20 12:02:13.906025','2020-06-20 12:02:13.906044',1),(17,'pullman-paris-tour-eiffel.jpg','2020-06-20 12:02:16.877519','2020-06-20 12:02:16.877533',1),(18,'Screenshot 2020-06-19 at 11.56.38 PM.png','2020-06-20 12:02:20.985691','2020-06-20 12:02:20.985706',1);
/*!40000 ALTER TABLE `UploadFileAnnotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `unumber` varchar(15) NOT NULL,
  `usemail` varchar(100) NOT NULL,
  `ureportfrequency` varchar(50) NOT NULL,
  `usname` varchar(100) NOT NULL,
  `utoolusage` varchar(100) NOT NULL,
  `ustartdate` date NOT NULL,
  `uemail` varchar(254) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `uactivated` tinyint(1) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'havells','+919979381602','vishal@gmail.com','1','vishal','1','2020-06-20','vishalkalola196@gmail.com','123456','admin',1,'2020-06-20 11:06:50.917029','2020-06-21 19:28:19.917372');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22 15:28:44
