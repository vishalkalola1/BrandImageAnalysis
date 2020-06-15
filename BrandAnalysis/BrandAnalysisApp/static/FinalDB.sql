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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add full text annotation',1,'add_fulltextannotation'),(2,'Can change full text annotation',1,'change_fulltextannotation'),(3,'Can delete full text annotation',1,'delete_fulltextannotation'),(4,'Can view full text annotation',1,'view_fulltextannotation'),(5,'Can add landmark annotations',2,'add_landmarkannotations'),(6,'Can change landmark annotations',2,'change_landmarkannotations'),(7,'Can delete landmark annotations',2,'delete_landmarkannotations'),(8,'Can view landmark annotations',2,'view_landmarkannotations'),(9,'Can add upload file',3,'add_uploadfile'),(10,'Can change upload file',3,'change_uploadfile'),(11,'Can delete upload file',3,'delete_uploadfile'),(12,'Can view upload file',3,'view_uploadfile'),(13,'Can add user custom',4,'add_usercustom'),(14,'Can change user custom',4,'change_usercustom'),(15,'Can delete user custom',4,'delete_usercustom'),(16,'Can view user custom',4,'view_usercustom'),(17,'Can add upload file annotations',5,'add_uploadfileannotations'),(18,'Can change upload file annotations',5,'change_uploadfileannotations'),(19,'Can delete upload file annotations',5,'delete_uploadfileannotations'),(20,'Can view upload file annotations',5,'view_uploadfileannotations'),(21,'Can add text annotations',6,'add_textannotations'),(22,'Can change text annotations',6,'change_textannotations'),(23,'Can delete text annotations',6,'delete_textannotations'),(24,'Can view text annotations',6,'view_textannotations'),(25,'Can add safe search annotation',7,'add_safesearchannotation'),(26,'Can change safe search annotation',7,'change_safesearchannotation'),(27,'Can delete safe search annotation',7,'delete_safesearchannotation'),(28,'Can view safe search annotation',7,'view_safesearchannotation'),(29,'Can add report table',8,'add_reporttable'),(30,'Can change report table',8,'change_reporttable'),(31,'Can delete report table',8,'delete_reporttable'),(32,'Can view report table',8,'view_reporttable'),(33,'Can add logo annotations',9,'add_logoannotations'),(34,'Can change logo annotations',9,'change_logoannotations'),(35,'Can delete logo annotations',9,'delete_logoannotations'),(36,'Can view logo annotations',9,'view_logoannotations'),(37,'Can add location annotations',10,'add_locationannotations'),(38,'Can change location annotations',10,'change_locationannotations'),(39,'Can delete location annotations',10,'delete_locationannotations'),(40,'Can view location annotations',10,'view_locationannotations'),(41,'Can add localized object annotations',11,'add_localizedobjectannotations'),(42,'Can change localized object annotations',11,'change_localizedobjectannotations'),(43,'Can delete localized object annotations',11,'delete_localizedobjectannotations'),(44,'Can view localized object annotations',11,'view_localizedobjectannotations'),(45,'Can add language annotations',12,'add_languageannotations'),(46,'Can change language annotations',12,'change_languageannotations'),(47,'Can delete language annotations',12,'delete_languageannotations'),(48,'Can view language annotations',12,'view_languageannotations'),(49,'Can add label annotations',13,'add_labelannotations'),(50,'Can change label annotations',13,'change_labelannotations'),(51,'Can delete label annotations',13,'delete_labelannotations'),(52,'Can view label annotations',13,'view_labelannotations'),(53,'Can add image properties annotation',14,'add_imagepropertiesannotation'),(54,'Can change image properties annotation',14,'change_imagepropertiesannotation'),(55,'Can delete image properties annotation',14,'delete_imagepropertiesannotation'),(56,'Can view image properties annotation',14,'view_imagepropertiesannotation'),(57,'Can add face annotations',15,'add_faceannotations'),(58,'Can change face annotations',15,'change_faceannotations'),(59,'Can delete face annotations',15,'delete_faceannotations'),(60,'Can view face annotations',15,'view_faceannotations'),(61,'Can add log entry',16,'add_logentry'),(62,'Can change log entry',16,'change_logentry'),(63,'Can delete log entry',16,'delete_logentry'),(64,'Can view log entry',16,'view_logentry'),(65,'Can add permission',17,'add_permission'),(66,'Can change permission',17,'change_permission'),(67,'Can delete permission',17,'delete_permission'),(68,'Can view permission',17,'view_permission'),(69,'Can add group',18,'add_group'),(70,'Can change group',18,'change_group'),(71,'Can delete group',18,'delete_group'),(72,'Can view group',18,'view_group'),(73,'Can add user',19,'add_user'),(74,'Can change user',19,'change_user'),(75,'Can delete user',19,'delete_user'),(76,'Can view user',19,'view_user'),(77,'Can add content type',20,'add_contenttype'),(78,'Can change content type',20,'change_contenttype'),(79,'Can delete content type',20,'delete_contenttype'),(80,'Can view content type',20,'view_contenttype'),(81,'Can add session',21,'add_session'),(82,'Can change session',21,'change_session'),(83,'Can delete session',21,'delete_session'),(84,'Can view session',21,'view_session'),(85,'Can add help table',22,'add_helptable'),(86,'Can change help table',22,'change_helptable'),(87,'Can delete help table',22,'delete_helptable'),(88,'Can view help table',22,'view_helptable');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (16,'admin','logentry'),(18,'auth','group'),(17,'auth','permission'),(19,'auth','user'),(15,'BrandAnalysisApp','faceannotations'),(1,'BrandAnalysisApp','fulltextannotation'),(22,'BrandAnalysisApp','helptable'),(14,'BrandAnalysisApp','imagepropertiesannotation'),(13,'BrandAnalysisApp','labelannotations'),(2,'BrandAnalysisApp','landmarkannotations'),(12,'BrandAnalysisApp','languageannotations'),(11,'BrandAnalysisApp','localizedobjectannotations'),(10,'BrandAnalysisApp','locationannotations'),(9,'BrandAnalysisApp','logoannotations'),(8,'BrandAnalysisApp','reporttable'),(7,'BrandAnalysisApp','safesearchannotation'),(6,'BrandAnalysisApp','textannotations'),(3,'BrandAnalysisApp','uploadfile'),(5,'BrandAnalysisApp','uploadfileannotations'),(4,'BrandAnalysisApp','usercustom'),(20,'contenttypes','contenttype'),(21,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'BrandAnalysisApp','0001_initial','2020-06-08 15:37:15.786376'),(2,'contenttypes','0001_initial','2020-06-08 15:37:16.372484'),(3,'auth','0001_initial','2020-06-08 15:37:16.481852'),(4,'admin','0001_initial','2020-06-08 15:37:16.681662'),(5,'admin','0002_logentry_remove_auto_add','2020-06-08 15:37:16.752489'),(6,'admin','0003_logentry_add_action_flag_choices','2020-06-08 15:37:16.774683'),(7,'contenttypes','0002_remove_content_type_name','2020-06-08 15:37:16.878597'),(8,'auth','0002_alter_permission_name_max_length','2020-06-08 15:37:16.926106'),(9,'auth','0003_alter_user_email_max_length','2020-06-08 15:37:16.966038'),(10,'auth','0004_alter_user_username_opts','2020-06-08 15:37:16.977966'),(11,'auth','0005_alter_user_last_login_null','2020-06-08 15:37:17.022850'),(12,'auth','0006_require_contenttypes_0002','2020-06-08 15:37:17.026450'),(13,'auth','0007_alter_validators_add_error_messages','2020-06-08 15:37:17.043606'),(14,'auth','0008_alter_user_username_max_length','2020-06-08 15:37:17.108465'),(15,'auth','0009_alter_user_last_name_max_length','2020-06-08 15:37:17.167276'),(16,'auth','0010_alter_group_name_max_length','2020-06-08 15:37:17.203980'),(17,'auth','0011_update_proxy_permissions','2020-06-08 15:37:17.238851'),(18,'sessions','0001_initial','2020-06-08 15:37:17.295604'),(19,'BrandAnalysisApp','0002_auto_20200608_1650','2020-06-08 16:50:08.098370'),(20,'BrandAnalysisApp','0003_auto_20200608_1655','2020-06-08 16:55:49.602948'),(21,'BrandAnalysisApp','0004_auto_20200608_1657','2020-06-08 16:57:36.357327'),(22,'BrandAnalysisApp','0005_helptable','2020-06-14 18:55:31.479777');
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
INSERT INTO `django_session` VALUES ('6aw5da124yq68xcow2y9dnomk7udz42e','NzU0MzViYzQ3NDE0ZGFmNDE5Yzg0Yzg1NmI5MTQ2Njc0MjY0ZmIzOTp7InVzZXJlbWFpbCI6InZpc2hhbGthbG9sYTE5NkBnbWFpbC5jb20iLCJ1c2VydHlwZSI6ImFkbWluIn0=','2020-06-29 11:28:10.549641'),('zlp01wc28uk2q1oadx5n3qflkhf502yb','YzA0YTc4MTYxZjZhMWQyMGE5NWZhOWQzNWNmYTlhZmRlN2JkMjEzODp7InVzZXJlbWFpbCI6InZpc2hhbGthbG9sYTE5NkBnbWFpbC5jb20iLCJ1c2VydHlwZSI6InVzZXIiLCJ1c2VyaWQiOjF9','2020-06-22 22:55:37.964538');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FullTextAnnotation`
--

LOCK TABLES `FullTextAnnotation` WRITE;
/*!40000 ALTER TABLE `FullTextAnnotation` DISABLE KEYS */;
INSERT INTO `FullTextAnnotation` VALUES (29,'CHANEL\nCHANEL\nN°5\nL\'EAU\nCHANEL\nPARIS\nCHANEL\nN°5\nL\'EAU\nCHANEL\nPARIS\n','2020-06-11 23:51:47.745094','2020-06-11 23:51:47.745128',32,10),(30,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-15 10:47:10.604008','2020-06-15 10:47:10.604041',33,10),(31,'CHOTEL\nMADEMOISU\nCOCO\nHEMOS\nnco\nCOCO\nMADEMOISELLE\nPARIS\nCHANEL\n50 ml\nEAU DE PARFUM\nVAPORISATEUR SPRAY\n','2020-06-15 11:15:16.819871','2020-06-15 11:15:16.819885',34,10),(32,'CHOTEL\nMADEMOISU\nCOCO\nHEMOS\nnco\nCOCO\nMADEMOISELLE\nPARIS\nCHANEL\n50 ml\nEAU DE PARFUM\nVAPORISATEUR SPRAY\n','2020-06-15 11:15:58.292910','2020-06-15 11:15:58.292944',35,10),(33,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-15 11:16:16.827229','2020-06-15 11:16:16.827252',36,10),(34,'COCO\nMADEMOISELLE\nCHANEL\nCOCO\nPARIS\nNOIR\nCHANEL\nPARIS\nEAU DE PARFUM\n','2020-06-15 11:22:13.645662','2020-06-15 11:22:13.645676',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HelpTable`
--

LOCK TABLES `HelpTable` WRITE;
/*!40000 ALTER TABLE `HelpTable` DISABLE KEYS */;
INSERT INTO `HelpTable` VALUES (1,'sfkjdfksdfjsdfh fsfkjshkf sfkjhsfhksf hsdfskfhkjdshfk sfskfhksf','2020-06-14 19:23:46.686949','2020-06-14 19:23:46.686958'),(2,'dfdsfs dsfsf sdfsf sfs','2020-06-14 19:24:32.483146','2020-06-14 19:24:32.483161'),(3,'fsfs sfhsfh dsfhdsjfsf sfsfhsfgds fshjfds fjdshgf sf','2020-06-14 19:25:10.966063','2020-06-14 19:25:10.966072'),(4,'fsfsf sfs fsf sf sf s fsdf s f sf sf sf fd s fs','2020-06-14 19:26:14.608247','2020-06-14 19:26:14.608303'),(5,'fsfsf sdkjfskfs sdfjksdfhsf sfsdfj sdfkhs fshf sk','2020-06-14 19:28:27.265858','2020-06-14 19:28:27.265866'),(6,'sfsffsdf','2020-06-14 19:28:45.677426','2020-06-14 19:28:45.677446'),(7,'sfsffsdf','2020-06-14 19:28:58.180236','2020-06-14 19:28:58.180249'),(8,'fsdfsfsdf','2020-06-14 19:29:26.917965','2020-06-14 19:29:26.917988'),(9,'fsfssf','2020-06-14 19:30:12.353172','2020-06-14 19:30:12.353190'),(10,'vishafdsfsfd','2020-06-14 19:36:07.583977','2020-06-14 19:36:07.584000'),(11,'vishafdsfsfd','2020-06-14 19:37:06.134552','2020-06-14 19:37:06.134573'),(12,'ffdsfsdf','2020-06-14 19:38:38.550977','2020-06-14 19:38:38.551005'),(13,'ffdsfsdf','2020-06-14 19:43:37.150184','2020-06-14 19:43:37.150205'),(14,'sdfsfs','2020-06-14 19:50:31.253325','2020-06-14 19:50:31.253336');
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
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImagePropertiesAnnotation`
--

LOCK TABLES `ImagePropertiesAnnotation` WRITE;
/*!40000 ALTER TABLE `ImagePropertiesAnnotation` DISABLE KEYS */;
INSERT INTO `ImagePropertiesAnnotation` VALUES (308,'167.0','156.0','135.0','0.041262004524469376','','2020-06-11 23:51:45.818617','2020-06-11 23:51:45.818650',32,10),(309,'166.0','159.0','154.0','0.14809328317642212','','2020-06-11 23:51:45.823164','2020-06-11 23:51:45.823179',32,10),(310,'193.0','188.0','184.0','0.398244172334671','','2020-06-11 23:51:45.826043','2020-06-11 23:51:45.826061',32,10),(311,'229.0','227.0','229.0','0.38803839683532715','','2020-06-11 23:51:45.828928','2020-06-11 23:51:45.828943',32,10),(312,'192.0','185.0','164.0','0.01042523980140686','','2020-06-11 23:51:45.831273','2020-06-11 23:51:45.831288',32,10),(313,'140.0','128.0','106.0','0.004005487076938152','','2020-06-11 23:51:45.833328','2020-06-11 23:51:45.833342',32,10),(314,'126.0','120.0','115.0','0.006694101728498936','','2020-06-11 23:51:45.835341','2020-06-11 23:51:45.835355',32,10),(315,'90.0','84.0','85.0','0.0018106995848938823','','2020-06-11 23:51:45.837401','2020-06-11 23:51:45.837415',32,10),(316,'61.0','56.0','60.0','0.000548696843907237','','2020-06-11 23:51:45.839637','2020-06-11 23:51:45.839650',32,10),(317,'108.0','97.0','84.0','0.00010973936878144741','','2020-06-11 23:51:45.842330','2020-06-11 23:51:45.842356',32,10),(318,'251.0','246.0','235.0','0.10102222114801407','','2020-06-15 10:47:08.614936','2020-06-15 10:47:08.614953',33,10),(319,'15.0','5.0','3.0','0.10026666522026062','','2020-06-15 10:47:08.620836','2020-06-15 10:47:08.620849',33,10),(320,'53.0','16.0','5.0','0.030799999833106995','','2020-06-15 10:47:08.623275','2020-06-15 10:47:08.623288',33,10),(321,'157.0','57.0','11.0','0.02253333292901516','','2020-06-15 10:47:08.625488','2020-06-15 10:47:08.625503',33,10),(322,'135.0','49.0','13.0','0.053555555641651154','','2020-06-15 10:47:08.627865','2020-06-15 10:47:08.627879',33,10),(323,'186.0','81.0','17.0','0.042399998754262924','','2020-06-15 10:47:08.630296','2020-06-15 10:47:08.630320',33,10),(324,'191.0','76.0','15.0','0.010488889180123806','','2020-06-15 10:47:08.633328','2020-06-15 10:47:08.633342',33,10),(325,'250.0','237.0','218.0','0.0563555546104908','','2020-06-15 10:47:08.636138','2020-06-15 10:47:08.636151',33,10),(326,'78.0','40.0','23.0','0.04373333230614662','','2020-06-15 10:47:08.639218','2020-06-15 10:47:08.639231',33,10),(327,'36.0','5.0','1.0','0.013111110776662827','','2020-06-15 10:47:08.641640','2020-06-15 10:47:08.641652',33,10),(328,'237.0','232.0','224.0','0.6289777755737305','','2020-06-15 11:15:14.156318','2020-06-15 11:15:14.156331',34,10),(329,'166.0','157.0','149.0','0.12399999797344208','','2020-06-15 11:15:14.158606','2020-06-15 11:15:14.158619',34,10),(330,'189.0','149.0','128.0','0.04817777872085571','','2020-06-15 11:15:14.160819','2020-06-15 11:15:14.160834',34,10),(331,'193.0','186.0','179.0','0.04075555503368378','','2020-06-15 11:15:14.164279','2020-06-15 11:15:14.164310',34,10),(332,'175.0','156.0','139.0','0.02293333411216736','','2020-06-15 11:15:14.166613','2020-06-15 11:15:14.166627',34,10),(333,'218.0','177.0','158.0','0.04960000142455101','','2020-06-15 11:15:14.168969','2020-06-15 11:15:14.168983',34,10),(334,'202.0','189.0','169.0','0.006577777676284313','','2020-06-15 11:15:14.172104','2020-06-15 11:15:14.172117',34,10),(335,'134.0','128.0','119.0','0.05568888783454895','','2020-06-15 11:15:14.174127','2020-06-15 11:15:14.174141',34,10),(336,'158.0','118.0','96.0','0.008133333176374435','','2020-06-15 11:15:14.176352','2020-06-15 11:15:14.176365',34,10),(337,'133.0','123.0','105.0','0.003777777776122093','','2020-06-15 11:15:14.179121','2020-06-15 11:15:14.179136',34,10),(338,'237.0','232.0','224.0','0.6289777755737305','','2020-06-15 11:15:56.039257','2020-06-15 11:15:56.039277',35,10),(339,'166.0','157.0','149.0','0.12399999797344208','','2020-06-15 11:15:56.042625','2020-06-15 11:15:56.042639',35,10),(340,'189.0','149.0','128.0','0.04817777872085571','','2020-06-15 11:15:56.044753','2020-06-15 11:15:56.044767',35,10),(341,'193.0','186.0','179.0','0.04075555503368378','','2020-06-15 11:15:56.047468','2020-06-15 11:15:56.047482',35,10),(342,'175.0','156.0','139.0','0.02293333411216736','','2020-06-15 11:15:56.049596','2020-06-15 11:15:56.049610',35,10),(343,'218.0','177.0','158.0','0.04960000142455101','','2020-06-15 11:15:56.051734','2020-06-15 11:15:56.051751',35,10),(344,'202.0','189.0','169.0','0.006577777676284313','','2020-06-15 11:15:56.053935','2020-06-15 11:15:56.053947',35,10),(345,'134.0','128.0','119.0','0.05568888783454895','','2020-06-15 11:15:56.055898','2020-06-15 11:15:56.055911',35,10),(346,'158.0','118.0','96.0','0.008133333176374435','','2020-06-15 11:15:56.058694','2020-06-15 11:15:56.058707',35,10),(347,'133.0','123.0','105.0','0.003777777776122093','','2020-06-15 11:15:56.060634','2020-06-15 11:15:56.060647',35,10),(348,'25.0','14.0','15.0','0.18424691259860992','','2020-06-15 11:16:14.713629','2020-06-15 11:16:14.713643',36,10),(349,'195.0','64.0','16.0','0.015061728656291962','','2020-06-15 11:16:14.716234','2020-06-15 11:16:14.716247',36,10),(350,'218.0','44.0','57.0','0.011506172828376293','','2020-06-15 11:16:14.718332','2020-06-15 11:16:14.718344',36,10),(351,'78.0','36.0','31.0','0.040345679968595505','','2020-06-15 11:16:14.720478','2020-06-15 11:16:14.720490',36,10),(352,'248.0','244.0','242.0','0.03096296265721321','','2020-06-15 11:16:14.722736','2020-06-15 11:16:14.722761',36,10),(353,'243.0','113.0','120.0','0.003555555595085025','','2020-06-15 11:16:14.725519','2020-06-15 11:16:14.725533',36,10),(354,'224.0','182.0','167.0','0.20760494470596313','','2020-06-15 11:16:14.727579','2020-06-15 11:16:14.727599',36,10),(355,'226.0','115.0','21.0','0.0006913580000400543','','2020-06-15 11:16:14.729880','2020-06-15 11:16:14.729893',36,10),(356,'41.0','16.0','16.0','0.054222222417593','','2020-06-15 11:16:14.731942','2020-06-15 11:16:14.731957',36,10),(357,'173.0','45.0','12.0','0.014123456552624702','','2020-06-15 11:16:14.734406','2020-06-15 11:16:14.734420',36,10),(358,'202.0','195.0','187.0','0.15387074649333954','','2020-06-15 11:22:11.948518','2020-06-15 11:22:11.948543',37,10),(359,'30.0','22.0','24.0','0.2159411758184433','','2020-06-15 11:22:11.951976','2020-06-15 11:22:11.951992',37,10),(360,'162.0','154.0','146.0','0.18269486725330353','','2020-06-15 11:22:11.954175','2020-06-15 11:22:11.954190',37,10),(361,'168.0','154.0','130.0','0.07112792134284973','','2020-06-15 11:22:11.956306','2020-06-15 11:22:11.956320',37,10),(362,'200.0','191.0','168.0','0.017369065433740616','','2020-06-15 11:22:11.958553','2020-06-15 11:22:11.958566',37,10),(363,'137.0','120.0','99.0','0.10037828236818314','','2020-06-15 11:22:11.960720','2020-06-15 11:22:11.960732',37,10),(364,'226.0','217.0','209.0','0.00527465483173728','','2020-06-15 11:22:11.962856','2020-06-15 11:22:11.962869',37,10),(365,'134.0','124.0','119.0','0.05898023396730423','','2020-06-15 11:22:11.964923','2020-06-15 11:22:11.964941',37,10),(366,'48.0','43.0','44.0','0.04560711979866028','','2020-06-15 11:22:11.967264','2020-06-15 11:22:11.967279',37,10),(367,'60.0','48.0','28.0','0.0158239658921957','','2020-06-15 11:22:11.969942','2020-06-15 11:22:11.969975',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabelAnnotations`
--

LOCK TABLES `LabelAnnotations` WRITE;
/*!40000 ALTER TABLE `LabelAnnotations` DISABLE KEYS */;
INSERT INTO `LabelAnnotations` VALUES (253,'Perfume','2020-06-11 23:51:44.262379','2020-06-11 23:51:44.262400',32,10),(254,'Material property','2020-06-11 23:51:44.265949','2020-06-11 23:51:44.265964',32,10),(255,'Beige','2020-06-11 23:51:44.268774','2020-06-11 23:51:44.268790',32,10),(256,'Cosmetics','2020-06-11 23:51:44.270985','2020-06-11 23:51:44.270999',32,10),(257,'Fashion accessory','2020-06-11 23:51:44.274086','2020-06-11 23:51:44.274218',32,10),(258,'Rectangle','2020-06-11 23:51:44.278230','2020-06-11 23:51:44.278251',32,10),(259,'Nail polish','2020-06-15 10:47:07.335069','2020-06-15 10:47:07.335088',33,10),(260,'Nail','2020-06-15 10:47:07.341484','2020-06-15 10:47:07.341497',33,10),(261,'Manicure','2020-06-15 10:47:07.344105','2020-06-15 10:47:07.344119',33,10),(262,'Nail care','2020-06-15 10:47:07.346847','2020-06-15 10:47:07.346875',33,10),(263,'Finger','2020-06-15 10:47:07.349649','2020-06-15 10:47:07.349662',33,10),(264,'Cosmetics','2020-06-15 10:47:07.351692','2020-06-15 10:47:07.351704',33,10),(265,'Brown','2020-06-15 10:47:07.354013','2020-06-15 10:47:07.354027',33,10),(266,'Glitter','2020-06-15 10:47:07.356369','2020-06-15 10:47:07.356383',33,10),(267,'Hand','2020-06-15 10:47:07.358417','2020-06-15 10:47:07.358431',33,10),(268,'Material property','2020-06-15 10:47:07.360996','2020-06-15 10:47:07.361011',33,10),(269,'Perfume','2020-06-15 11:15:12.723164','2020-06-15 11:15:12.723178',34,10),(270,'Cosmetics','2020-06-15 11:15:12.726482','2020-06-15 11:15:12.726497',34,10),(271,'Beige','2020-06-15 11:15:12.729019','2020-06-15 11:15:12.729034',34,10),(272,'Material property','2020-06-15 11:15:12.731472','2020-06-15 11:15:12.731486',34,10),(273,'Brand','2020-06-15 11:15:12.733530','2020-06-15 11:15:12.733543',34,10),(274,'Fashion accessory','2020-06-15 11:15:12.735488','2020-06-15 11:15:12.735502',34,10),(275,'Perfume','2020-06-15 11:15:54.707415','2020-06-15 11:15:54.707519',35,10),(276,'Cosmetics','2020-06-15 11:15:54.711237','2020-06-15 11:15:54.711256',35,10),(277,'Beige','2020-06-15 11:15:54.714224','2020-06-15 11:15:54.714241',35,10),(278,'Material property','2020-06-15 11:15:54.716275','2020-06-15 11:15:54.716289',35,10),(279,'Brand','2020-06-15 11:15:54.718266','2020-06-15 11:15:54.718280',35,10),(280,'Fashion accessory','2020-06-15 11:15:54.720238','2020-06-15 11:15:54.720251',35,10),(281,'Perfume','2020-06-15 11:16:12.991347','2020-06-15 11:16:12.991361',36,10),(282,'Lip','2020-06-15 11:16:12.994352','2020-06-15 11:16:12.994367',36,10),(283,'Red','2020-06-15 11:16:12.996247','2020-06-15 11:16:12.996260',36,10),(284,'Nail','2020-06-15 11:16:12.998225','2020-06-15 11:16:12.998238',36,10),(285,'Beauty','2020-06-15 11:16:13.000241','2020-06-15 11:16:13.000256',36,10),(286,'Hand','2020-06-15 11:16:13.002753','2020-06-15 11:16:13.002769',36,10),(287,'Cosmetics','2020-06-15 11:16:13.005208','2020-06-15 11:16:13.005230',36,10),(288,'Nail polish','2020-06-15 11:16:13.008577','2020-06-15 11:16:13.008601',36,10),(289,'Finger','2020-06-15 11:16:13.010589','2020-06-15 11:16:13.010602',36,10),(290,'Liqueur','2020-06-15 11:16:13.012488','2020-06-15 11:16:13.012500',36,10),(291,'Product','2020-06-15 11:22:10.618793','2020-06-15 11:22:10.618817',37,10),(292,'Text','2020-06-15 11:22:10.623143','2020-06-15 11:22:10.623168',37,10),(293,'Beauty','2020-06-15 11:22:10.625893','2020-06-15 11:22:10.625908',37,10),(294,'Material property','2020-06-15 11:22:10.627906','2020-06-15 11:22:10.627921',37,10),(295,'Perfume','2020-06-15 11:22:10.630031','2020-06-15 11:22:10.630045',37,10),(296,'Brand','2020-06-15 11:22:10.632153','2020-06-15 11:22:10.632168',37,10),(297,'Cosmetics','2020-06-15 11:22:10.634294','2020-06-15 11:22:10.634310',37,10),(298,'Fluid','2020-06-15 11:22:10.636466','2020-06-15 11:22:10.636481',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LanguageAnnotations`
--

LOCK TABLES `LanguageAnnotations` WRITE;
/*!40000 ALTER TABLE `LanguageAnnotations` DISABLE KEYS */;
INSERT INTO `LanguageAnnotations` VALUES (74,'en','2020-06-11 23:51:47.749483','2020-06-11 23:51:47.749503',29,32,10),(75,'fr','2020-06-11 23:51:47.752127','2020-06-11 23:51:47.752142',29,32,10),(76,'fr','2020-06-15 10:47:10.610874','2020-06-15 10:47:10.610895',30,33,10),(77,'en','2020-06-15 10:47:10.616637','2020-06-15 10:47:10.616652',30,33,10),(78,'fr','2020-06-15 11:15:16.823121','2020-06-15 11:15:16.823136',31,34,10),(79,'en','2020-06-15 11:15:16.825642','2020-06-15 11:15:16.825657',31,34,10),(80,'es','2020-06-15 11:15:16.827803','2020-06-15 11:15:16.827817',31,34,10),(81,'fr','2020-06-15 11:15:58.297070','2020-06-15 11:15:58.297091',32,35,10),(82,'en','2020-06-15 11:15:58.299926','2020-06-15 11:15:58.299941',32,35,10),(83,'es','2020-06-15 11:15:58.302210','2020-06-15 11:15:58.302225',32,35,10),(84,'fr','2020-06-15 11:16:16.831238','2020-06-15 11:16:16.831263',33,36,10),(85,'en','2020-06-15 11:16:16.834075','2020-06-15 11:16:16.834090',33,36,10),(86,'fr','2020-06-15 11:22:13.648706','2020-06-15 11:22:13.648720',34,37,10),(87,'en','2020-06-15 11:22:13.651056','2020-06-15 11:22:13.651070',34,37,10);
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
  `name` varchar(100) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `imageid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LocalizedObjectAnnot_imageid_id_4e38ae33_fk_UploadFil` (`imageid_id`),
  KEY `LocalizedObjectAnnotations_userid_id_c0bfab19_fk_user_id` (`userid_id`),
  CONSTRAINT `LocalizedObjectAnnot_imageid_id_4e38ae33_fk_UploadFil` FOREIGN KEY (`imageid_id`) REFERENCES `uploadfileannotations` (`id`),
  CONSTRAINT `LocalizedObjectAnnotations_userid_id_c0bfab19_fk_user_id` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocalizedObjectAnnotations`
--

LOCK TABLES `LocalizedObjectAnnotations` WRITE;
/*!40000 ALTER TABLE `LocalizedObjectAnnotations` DISABLE KEYS */;
INSERT INTO `LocalizedObjectAnnotations` VALUES (70,'Boxed packaged goods','2020-06-11 23:51:47.031161','2020-06-11 23:51:47.031194',32,10),(71,'Packaged goods','2020-06-11 23:51:47.035057','2020-06-11 23:51:47.035072',32,10),(72,'Packaged goods','2020-06-15 10:47:09.970288','2020-06-15 10:47:09.970308',33,10),(73,'Packaged goods','2020-06-15 11:15:15.975024','2020-06-15 11:15:15.975040',34,10),(74,'Packaged goods','2020-06-15 11:15:15.983763','2020-06-15 11:15:15.983778',34,10),(75,'Packaged goods','2020-06-15 11:15:57.587061','2020-06-15 11:15:57.587093',35,10),(76,'Packaged goods','2020-06-15 11:15:57.591081','2020-06-15 11:15:57.591096',35,10),(77,'Packaged goods','2020-06-15 11:16:16.012217','2020-06-15 11:16:16.012231',36,10),(78,'Packaged goods','2020-06-15 11:22:13.222652','2020-06-15 11:22:13.222676',37,10),(79,'Packaged goods','2020-06-15 11:22:13.226674','2020-06-15 11:22:13.226689',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogoAnnotations`
--

LOCK TABLES `LogoAnnotations` WRITE;
/*!40000 ALTER TABLE `LogoAnnotations` DISABLE KEYS */;
INSERT INTO `LogoAnnotations` VALUES (50,'Chanel','2020-06-11 23:51:44.515946','2020-06-11 23:51:44.515977',32,10),(51,'Canal+','2020-06-11 23:51:44.520840','2020-06-11 23:51:44.520863',32,10),(52,'Chanel','2020-06-15 10:47:07.556338','2020-06-15 10:47:07.556371',33,10),(53,'Coco Mademoiselle','2020-06-15 11:15:12.942250','2020-06-15 11:15:12.942263',34,10),(54,'Coco Mademoiselle','2020-06-15 11:15:12.945451','2020-06-15 11:15:12.945465',34,10),(55,'Coco Mademoiselle','2020-06-15 11:15:54.923369','2020-06-15 11:15:54.923400',35,10),(56,'Coco Mademoiselle','2020-06-15 11:15:54.927455','2020-06-15 11:15:54.927471',35,10),(57,'Chanel','2020-06-15 11:22:10.775850','2020-06-15 11:22:10.775871',37,10),(58,'Coco Mademoiselle','2020-06-15 11:22:10.778694','2020-06-15 11:22:10.778708',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SafeSearchAnnotation`
--

LOCK TABLES `SafeSearchAnnotation` WRITE;
/*!40000 ALTER TABLE `SafeSearchAnnotation` DISABLE KEYS */;
INSERT INTO `SafeSearchAnnotation` VALUES (30,'VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-11 23:51:47.334714','2020-06-11 23:51:47.334734',32,10),(31,'VERY_UNLIKELY','UNLIKELY','UNLIKELY','UNLIKELY','UNLIKELY','2020-06-15 10:47:10.318735','2020-06-15 10:47:10.318753',33,10),(32,'VERY_UNLIKELY','VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-15 11:15:16.409616','2020-06-15 11:15:16.409630',34,10),(33,'VERY_UNLIKELY','VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-15 11:15:57.853768','2020-06-15 11:15:57.853799',35,10),(34,'VERY_UNLIKELY','UNLIKELY','POSSIBLE','VERY_UNLIKELY','UNLIKELY','2020-06-15 11:16:16.416660','2020-06-15 11:16:16.416686',36,10),(35,'VERY_UNLIKELY','UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','VERY_UNLIKELY','2020-06-15 11:22:13.427261','2020-06-15 11:22:13.427284',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TextAnnotations`
--

LOCK TABLES `TextAnnotations` WRITE;
/*!40000 ALTER TABLE `TextAnnotations` DISABLE KEYS */;
INSERT INTO `TextAnnotations` VALUES (437,'CHANEL\nN°5\nL\'EAU\nCHANEL\nPARIS\nN° 5\nL\'EAU\nCHANEL\nPARIS\nCHANEL\nCHANEL\n','en','2020-06-11 23:51:46.354539','2020-06-11 23:51:46.354571',32,10),(438,'CHANEL','','2020-06-11 23:51:46.358970','2020-06-11 23:51:46.358985',32,10),(439,'N°5','','2020-06-11 23:51:46.361115','2020-06-11 23:51:46.361130',32,10),(440,'L\'EAU','','2020-06-11 23:51:46.363897','2020-06-11 23:51:46.363915',32,10),(441,'CHANEL','','2020-06-11 23:51:46.366445','2020-06-11 23:51:46.366459',32,10),(442,'PARIS','','2020-06-11 23:51:46.368389','2020-06-11 23:51:46.368403',32,10),(443,'N°','','2020-06-11 23:51:46.370235','2020-06-11 23:51:46.370248',32,10),(444,'5','','2020-06-11 23:51:46.372131','2020-06-11 23:51:46.372144',32,10),(445,'L\'EAU','','2020-06-11 23:51:46.374155','2020-06-11 23:51:46.374196',32,10),(446,'CHANEL','','2020-06-11 23:51:46.376615','2020-06-11 23:51:46.376630',32,10),(447,'PARIS','','2020-06-11 23:51:46.378559','2020-06-11 23:51:46.378573',32,10),(448,'CHANEL','','2020-06-11 23:51:46.380406','2020-06-11 23:51:46.380419',32,10),(449,'CHANEL','','2020-06-11 23:51:46.382513','2020-06-11 23:51:46.382526',32,10),(450,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','fr','2020-06-15 10:47:09.267563','2020-06-15 10:47:09.267582',33,10),(451,'N°5','','2020-06-15 10:47:09.272590','2020-06-15 10:47:09.272616',33,10),(452,'CHANEL','','2020-06-15 10:47:09.275638','2020-06-15 10:47:09.275656',33,10),(453,'PARIS','','2020-06-15 10:47:09.278277','2020-06-15 10:47:09.278291',33,10),(454,'EAU','','2020-06-15 10:47:09.280778','2020-06-15 10:47:09.280792',33,10),(455,'DE','','2020-06-15 10:47:09.282834','2020-06-15 10:47:09.282848',33,10),(456,'PARFUM','','2020-06-15 10:47:09.284730','2020-06-15 10:47:09.284744',33,10),(457,'COCO\nMADEMOILLE\nCHANEL\nEMOIS\nCoco\nMADEMOISELLE\nCHANEL\nPARIS\nEAU DE PARFUM\nVAPORISATEUR SPRAY\n50 ml\n','fr','2020-06-15 11:15:14.978387','2020-06-15 11:15:14.978403',34,10),(458,'COCO','','2020-06-15 11:15:14.981875','2020-06-15 11:15:14.981891',34,10),(459,'MADEMOILLE','','2020-06-15 11:15:14.984049','2020-06-15 11:15:14.984063',34,10),(460,'CHANEL','','2020-06-15 11:15:14.986183','2020-06-15 11:15:14.986196',34,10),(461,'EMOIS','','2020-06-15 11:15:14.988112','2020-06-15 11:15:14.988125',34,10),(462,'Coco','','2020-06-15 11:15:14.990130','2020-06-15 11:15:14.990143',34,10),(463,'MADEMOISELLE','','2020-06-15 11:15:14.992080','2020-06-15 11:15:14.992093',34,10),(464,'CHANEL','','2020-06-15 11:15:14.994171','2020-06-15 11:15:14.994186',34,10),(465,'PARIS','','2020-06-15 11:15:14.996231','2020-06-15 11:15:14.996245',34,10),(466,'EAU','','2020-06-15 11:15:14.998649','2020-06-15 11:15:14.998664',34,10),(467,'DE','','2020-06-15 11:15:15.000649','2020-06-15 11:15:15.000663',34,10),(468,'PARFUM','','2020-06-15 11:15:15.003104','2020-06-15 11:15:15.003158',34,10),(469,'VAPORISATEUR','','2020-06-15 11:15:15.006325','2020-06-15 11:15:15.006339',34,10),(470,'SPRAY','','2020-06-15 11:15:15.008554','2020-06-15 11:15:15.008568',34,10),(471,'50','','2020-06-15 11:15:15.010433','2020-06-15 11:15:15.010446',34,10),(472,'ml','','2020-06-15 11:15:15.012802','2020-06-15 11:15:15.012816',34,10),(473,'COCO\nMADEMOILLE\nCHANEL\nEMOIS\nCoco\nMADEMOISELLE\nCHANEL\nPARIS\nEAU DE PARFUM\nVAPORISATEUR SPRAY\n50 ml\n','fr','2020-06-15 11:15:56.682922','2020-06-15 11:15:56.682953',35,10),(474,'COCO','','2020-06-15 11:15:56.686936','2020-06-15 11:15:56.686950',35,10),(475,'MADEMOILLE','','2020-06-15 11:15:56.688923','2020-06-15 11:15:56.688937',35,10),(476,'CHANEL','','2020-06-15 11:15:56.691027','2020-06-15 11:15:56.691041',35,10),(477,'EMOIS','','2020-06-15 11:15:56.693728','2020-06-15 11:15:56.693745',35,10),(478,'Coco','','2020-06-15 11:15:56.696428','2020-06-15 11:15:56.696441',35,10),(479,'MADEMOISELLE','','2020-06-15 11:15:56.698441','2020-06-15 11:15:56.698455',35,10),(480,'CHANEL','','2020-06-15 11:15:56.700478','2020-06-15 11:15:56.700491',35,10),(481,'PARIS','','2020-06-15 11:15:56.702431','2020-06-15 11:15:56.702444',35,10),(482,'EAU','','2020-06-15 11:15:56.704282','2020-06-15 11:15:56.704294',35,10),(483,'DE','','2020-06-15 11:15:56.706121','2020-06-15 11:15:56.706134',35,10),(484,'PARFUM','','2020-06-15 11:15:56.707960','2020-06-15 11:15:56.707973',35,10),(485,'VAPORISATEUR','','2020-06-15 11:15:56.710012','2020-06-15 11:15:56.710024',35,10),(486,'SPRAY','','2020-06-15 11:15:56.712599','2020-06-15 11:15:56.712617',35,10),(487,'50','','2020-06-15 11:15:56.715538','2020-06-15 11:15:56.715553',35,10),(488,'ml','','2020-06-15 11:15:56.717487','2020-06-15 11:15:56.717500',35,10),(489,'N°5\nCHANEL\nPARIS\nEAU DE PARFUM\n','fr','2020-06-15 11:16:15.392605','2020-06-15 11:16:15.392621',36,10),(490,'N°5','','2020-06-15 11:16:15.396053','2020-06-15 11:16:15.396067',36,10),(491,'CHANEL','','2020-06-15 11:16:15.398294','2020-06-15 11:16:15.398309',36,10),(492,'PARIS','','2020-06-15 11:16:15.400703','2020-06-15 11:16:15.400718',36,10),(493,'EAU','','2020-06-15 11:16:15.402817','2020-06-15 11:16:15.402831',36,10),(494,'DE','','2020-06-15 11:16:15.404724','2020-06-15 11:16:15.404738',36,10),(495,'PARFUM','','2020-06-15 11:16:15.406810','2020-06-15 11:16:15.406822',36,10),(496,'COCO\nMADEMOISELLE\nCHANEL\nCOCO\nPARIS\nNOIR\nCHANEL\nPARIS\nEAU DE PARFUM\nMal\n17832\n','fr','2020-06-15 11:22:12.564213','2020-06-15 11:22:12.564227',37,10),(497,'COCO','','2020-06-15 11:22:12.567758','2020-06-15 11:22:12.567773',37,10),(498,'MADEMOISELLE','','2020-06-15 11:22:12.569910','2020-06-15 11:22:12.569925',37,10),(499,'CHANEL','','2020-06-15 11:22:12.572025','2020-06-15 11:22:12.572039',37,10),(500,'COCO','','2020-06-15 11:22:12.573988','2020-06-15 11:22:12.574002',37,10),(501,'PARIS','','2020-06-15 11:22:12.576014','2020-06-15 11:22:12.576027',37,10),(502,'NOIR','','2020-06-15 11:22:12.577824','2020-06-15 11:22:12.577836',37,10),(503,'CHANEL','','2020-06-15 11:22:12.579557','2020-06-15 11:22:12.579569',37,10),(504,'PARIS','','2020-06-15 11:22:12.581676','2020-06-15 11:22:12.581691',37,10),(505,'EAU','','2020-06-15 11:22:12.584739','2020-06-15 11:22:12.584766',37,10),(506,'DE','','2020-06-15 11:22:12.587204','2020-06-15 11:22:12.587219',37,10),(507,'PARFUM','','2020-06-15 11:22:12.589117','2020-06-15 11:22:12.589130',37,10),(508,'Mal','','2020-06-15 11:22:12.590989','2020-06-15 11:22:12.591002',37,10),(509,'17832','','2020-06-15 11:22:12.592753','2020-06-15 11:22:12.592765',37,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UploadFileAnnotations`
--

LOCK TABLES `UploadFileAnnotations` WRITE;
/*!40000 ALTER TABLE `UploadFileAnnotations` DISABLE KEYS */;
INSERT INTO `UploadFileAnnotations` VALUES (32,'2016-12-07_06-53-12_UTC.jpg','2020-06-11 23:51:43.554538','2020-06-11 23:51:43.554556',10),(33,'2015-09-29_18-36-48_UTC.jpg','2020-06-15 10:47:06.533869','2020-06-15 10:47:06.533890',10),(34,'2018-02-23_09-07-01_UTC.jpg','2020-06-15 11:15:11.997644','2020-06-15 11:15:11.997661',10),(35,'2018-02-23_09-07-01_UTC.jpg','2020-06-15 11:15:54.036761','2020-06-15 11:15:54.036778',10),(36,'2017-12-30_19-09-09_UTC.jpg','2020-06-15 11:16:11.681443','2020-06-15 11:16:11.681455',10),(37,'2015-01-29_09-53-14_UTC.jpg','2020-06-15 11:22:10.025897','2020-06-15 11:22:10.025950',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'havells pvt ltd','+919979381602','vishalkalola196@gmail.com','3','vishal kalola1','','2020-06-11','vishalkalola196@gmail.com','123456','admin',1,'2020-06-10 17:32:39.420053','2020-06-15 11:21:47.571118'),(12,'fsfsfsf','+91123131232','sfsfs@gmail.com','1','fsfsfsdf','1','2020-06-15','sfsfsdf@gmail.com','123456','user',0,'2020-06-14 22:27:23.243344','2020-06-14 22:27:23.243367'),(13,'gfhhfhf','+919979381602','sfsfs@gmail.com','1','hhjgg','1','2020-06-15','kalola@gmail.com','123456','user',0,'2020-06-14 22:35:42.072715','2020-06-14 22:35:42.072741');
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

-- Dump completed on 2020-06-15 19:04:36
