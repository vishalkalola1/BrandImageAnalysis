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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FaceAnnotations`
--

LOCK TABLES `FaceAnnotations` WRITE;
/*!40000 ALTER TABLE `FaceAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FullTextAnnotation`
--

LOCK TABLES `FullTextAnnotation` WRITE;
/*!40000 ALTER TABLE `FullTextAnnotation` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImagePropertiesAnnotation`
--

LOCK TABLES `ImagePropertiesAnnotation` WRITE;
/*!40000 ALTER TABLE `ImagePropertiesAnnotation` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabelAnnotations`
--

LOCK TABLES `LabelAnnotations` WRITE;
/*!40000 ALTER TABLE `LabelAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LandmarkAnnotations`
--

LOCK TABLES `LandmarkAnnotations` WRITE;
/*!40000 ALTER TABLE `LandmarkAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LanguageAnnotations`
--

LOCK TABLES `LanguageAnnotations` WRITE;
/*!40000 ALTER TABLE `LanguageAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocalizedObjectAnnotations`
--

LOCK TABLES `LocalizedObjectAnnotations` WRITE;
/*!40000 ALTER TABLE `LocalizedObjectAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocationAnnotations`
--

LOCK TABLES `LocationAnnotations` WRITE;
/*!40000 ALTER TABLE `LocationAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogoAnnotations`
--

LOCK TABLES `LogoAnnotations` WRITE;
/*!40000 ALTER TABLE `LogoAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SafeSearchAnnotation`
--

LOCK TABLES `SafeSearchAnnotation` WRITE;
/*!40000 ALTER TABLE `SafeSearchAnnotation` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TextAnnotations`
--

LOCK TABLES `TextAnnotations` WRITE;
/*!40000 ALTER TABLE `TextAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UploadFileAnnotations`
--

LOCK TABLES `UploadFileAnnotations` WRITE;
/*!40000 ALTER TABLE `UploadFileAnnotations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2020-06-20  0:05:59
