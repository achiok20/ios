CREATE DATABASE  IF NOT EXISTS `partnerprogram` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `partnerprogram`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: partnerprogram
-- ------------------------------------------------------
-- Server version	5.6.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_partner_client`
--

DROP TABLE IF EXISTS `api_partner_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_partner_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` longtext NOT NULL,
  `lastname` longtext NOT NULL,
  `email` varchar(75) NOT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `leadvarmth` int(11) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `notes` longtext NOT NULL,
  `communicated` tinyint(1) NOT NULL,
  `dateCreate` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `salesperson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_partner_client_4a596263` (`salesperson_id`),
  CONSTRAINT `salesperson_id_refs_id_d0f6f148` FOREIGN KEY (`salesperson_id`) REFERENCES `api_partner_salesperson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_partner_client`
--

LOCK TABLES `api_partner_client` WRITE;
/*!40000 ALTER TABLE `api_partner_client` DISABLE KEYS */;
INSERT INTO `api_partner_client` VALUES (3,'Pauk','Aguilar','paguilar@gmail.com','55625412',4,'Distant Family','jsddbfdosbfpsdbvpsdpv',1,'2014-07-16 16:42:11',1,2),(4,'Andrew','More','a.more@gmail.com','8451512',1,'close family','adavdsaf sdfsdefa asedfg sag',1,'2014-07-16 16:43:21',1,2),(5,'Cesar','Velasquez','c.velasquez@gmail.com','38737283',5,'co-worker','djknfsjdnfsmdslfm fgj  dfsugh usfhg shfug s  sughps',1,'2014-07-16 16:44:33',1,2),(6,'Elias','Valdiviezo','evaldiviezo@gmail.com','(111) 111-1111',5,'friend','u,u',1,'2014-07-16 19:43:18',1,2),(7,'asdas','asdasd','asfasfasf@gmail.com','(151) 515-6146',2,'co-woker','adsfadasdas',0,'2014-07-17 20:59:08',1,4),(8,'asfas','gryt','DFGD@GMAIL.COM','(666) 666-6666',3,'distant family','sdfdsfsdfsdfsd',0,'2014-07-17 21:01:14',1,4),(9,'Elias','ERGEFRG','rthrt@gmail.com','(111) 111-1111',4,'co-woker','asdfasdasdasdas',0,'2014-07-17 21:02:44',1,4),(10,'sdfgdssd','dsfsdf','rthrt@gmail.com','(551) 151-5151',5,'professional acquaintance','sdfgdsfsdfsdfsdfs',1,'2014-07-17 21:03:25',1,4),(11,'asdas','dsghhh','evaldiviezo@gmail.com','(848) 484-8484',5,'friend','asdasdasdas',1,'2014-07-17 21:15:59',1,4),(12,'asd','asd','asd@asd.com','(234) 243-2423',3,'friend','asdasd',1,'2014-07-17 21:25:50',1,4),(13,'dsfs','dsghhh','evaldiviezo@gmail.com','(532) 453-4534',5,'friend','vdxzcfvdsfs',1,'2014-07-17 21:29:24',1,4),(14,'dsfs','dsghhh','evaldiviezo@gmail.com','(532) 453-4534',5,'friend','vdxzcfvdsfs',0,'2014-07-17 21:34:42',1,4),(15,'asdasdasdasdas','asdasdasdas','evaldiviezo@gmail.com','(532) 453-4534',2,'friend','vdxzcfvdsfs',1,'2014-07-17 21:45:51',1,4),(16,'asdasdasdasdas','asdasdasdas','rthrt@gmail.com','(969) 696-9669',1,'cold-call lead','sdf ds fds fsgsggdfs gsg s wsgwg w wgg w ',0,'2014-07-17 21:48:11',1,4),(49,'Ayrton','Garcia','a.chiok@outlook.com','(562) 626-1616',2,'co-woker','Test!',1,'2014-07-18 20:58:54',1,4),(50,'Andres','Garcia ','j.pulidomurga@gmail.com','(626) 191-2619',5,'co-woker','Prueba!',0,'2014-07-18 22:20:04',1,3),(51,'Sebastian','Rodriguez','evaldiviezo@gmail.com','(515) 151-5151',4,'co-woker','Trato cerrado',1,'2014-07-21 16:29:21',1,4),(52,'Guillermo','Garrix','animals@gmail.com','(545) 451-5454',3,'professional acquaintance','requiere un sw que permita...',1,'2014-07-21 16:36:11',1,4),(53,'asfasf','DSFSD','rthrt@gmail.com','(525) 151-5151',5,'friend','safasfasfas',1,'2014-07-21 16:41:44',1,2),(54,'Erick','Oliva','DFGD@GMAIL.COM','(958) 481-5411',5,'cold-call lead','prueba',1,'2014-07-21 16:43:47',1,2),(55,'Jacob','Smith','jsmith@yahoo.com','(650) 241-2676',5,'personal acquaintance','Jacob is looking for a new website for his company, Magic Pancakes. ',1,'2014-07-21 16:49:05',1,4),(56,'Paul','Aguilar','paul@aguil.com','(956) 461-1622',3,' close family','Test',1,'2014-07-21 17:11:18',1,2),(57,'Elvis','Savedra','elvis@savedra.com','(952) 292-9292',4,'professional acquaintance','Prueba',1,'2014-07-21 23:48:31',1,2),(58,'sadgsd','dsghhh','evaldiviezo@gmail.com','(262) 626-2626',5,'distant family','sdgsdfdsf',1,'2014-07-21 23:50:44',1,2),(59,'asd','asdasd','asfasfasf@gmail.com','(959) 121-1515',5,'co-woker','wefdfds',1,'2014-07-21 23:52:17',1,2),(60,'Jose','Pulido Murgaç','asfasfasf@gmail.com','(515) 151-5151',5,'co-woker','Test',1,'2014-07-30 16:15:47',1,2),(61,'Jose','Pulido Murgaç','asfasfasf@gmail.com','(515) 151-5151',5,'co-woker','Test',1,'2014-07-30 16:19:38',1,2),(62,'Jesus','Gonzales','jgonzales@gmail.com','(903) 949-3220',5,'co-woker','Test',0,'2014-07-30 16:21:33',1,2),(63,'Alber','heinsten','j.murga@gmail.com','',3,'','12312',1,'2014-08-06 17:47:17',1,2),(64,'Alber','heinsten','j.murga@gmail.com','',3,'','12312',1,'2014-08-06 18:46:56',1,2),(65,'asdas','asdas','sdaa.chiok@outlook.com','123445',4,'jasjs','asdasdas',1,'2014-08-06 19:18:41',1,2),(66,'ouujj','dd','sda.chiok@outlook.com','',3,'','sds',1,'2014-08-06 19:41:00',1,2),(67,'awf ','sayayay','sda.chiok@outlook.com','',3,'','sdfsdf',0,'2014-08-07 15:17:40',1,2),(68,'Prueba','Prueba','Prueba@gmail.com','',3,'','no hay notas',0,'2014-08-07 16:33:07',1,2),(69,'Martin','Garrix','asa@sdjns.com','asdasda',3,'asdas','dfadfa',1,'2014-08-08 20:54:15',1,2),(70,'','','','',3,'','',0,'2014-08-15 20:26:58',1,2);
/*!40000 ALTER TABLE `api_partner_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_partner_containersalesperson_client`
--

DROP TABLE IF EXISTS `api_partner_containersalesperson_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_partner_containersalesperson_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salesperson_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `dateCreate` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_partner_containersalesperson_client_4a596263` (`salesperson_id`),
  CONSTRAINT `salesperson_id_refs_id_204e6891` FOREIGN KEY (`salesperson_id`) REFERENCES `api_partner_salesperson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_partner_containersalesperson_client`
--

LOCK TABLES `api_partner_containersalesperson_client` WRITE;
/*!40000 ALTER TABLE `api_partner_containersalesperson_client` DISABLE KEYS */;
INSERT INTO `api_partner_containersalesperson_client` VALUES (1,2,11,'2014-07-21 23:52:17',1),(2,2,13,'2014-07-30 16:19:38',1),(3,2,14,'2014-07-30 16:21:35',1),(4,2,15,'2014-08-06 17:47:17',1),(5,2,16,'2014-08-06 18:46:56',1),(6,2,17,'2014-08-06 19:18:41',1),(7,2,18,'2014-08-06 19:41:00',1),(8,2,19,'2014-08-07 15:17:40',1),(9,2,20,'2014-08-07 16:33:08',1),(10,2,21,'2014-08-08 20:54:15',1),(11,2,22,'2014-08-15 20:26:59',1);
/*!40000 ALTER TABLE `api_partner_containersalesperson_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_partner_leads`
--

DROP TABLE IF EXISTS `api_partner_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_partner_leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` varchar(450) NOT NULL,
  `link` varchar(450) NOT NULL,
  `email` varchar(75) NOT NULL,
  `services` varchar(450) NOT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `salesperson_id` int(11) NOT NULL,
  `datecreate` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_partner_leads_4a596263` (`salesperson_id`),
  CONSTRAINT `salesperson_id_refs_id_5360e728` FOREIGN KEY (`salesperson_id`) REFERENCES `api_partner_salesperson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_partner_leads`
--

LOCK TABLES `api_partner_leads` WRITE;
/*!40000 ALTER TABLE `api_partner_leads` DISABLE KEYS */;
INSERT INTO `api_partner_leads` VALUES (1,'aasd','asd','asd','asd@asd.com','asd','123',2,'2014-07-22 11:58:00',1),(2,'Hola','Hola','Hola.com','hola@gmail.com','Hola','5151515',2,'2014-07-22 11:58:00',1),(3,'qwerty','qwerty','www.google.com.pe','qwerty@gmail.com','qwerty','38737283',2,'2014-07-22 11:58:00',1),(4,'Test','Test ','http://www.google.com.pe','test@gmail.com','test','6524514',4,'2014-07-22 20:09:19',1);
/*!40000 ALTER TABLE `api_partner_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_partner_prospect`
--

DROP TABLE IF EXISTS `api_partner_prospect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_partner_prospect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salesperson_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `total` double NOT NULL,
  `commission` double NOT NULL,
  `dateCreate` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `textprogress` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_partner_prospect_4a596263` (`salesperson_id`),
  KEY `api_partner_prospect_4fea5d6a` (`client_id`),
  CONSTRAINT `client_id_refs_id_a3cbaabf` FOREIGN KEY (`client_id`) REFERENCES `api_partner_client` (`id`),
  CONSTRAINT `salesperson_id_refs_id_5818f551` FOREIGN KEY (`salesperson_id`) REFERENCES `api_partner_salesperson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_partner_prospect`
--

LOCK TABLES `api_partner_prospect` WRITE;
/*!40000 ALTER TABLE `api_partner_prospect` DISABLE KEYS */;
INSERT INTO `api_partner_prospect` VALUES (2,2,3,1,500000,2500,'2014-07-16 16:45:31',1,'sdfsd 22 df dfw4'),(3,2,4,1,20000,1000,'2014-07-16 16:46:05',1,'dsf gtr iyk '),(4,2,5,3,6000,500,'2014-07-16 16:46:34',1,'sbdfsd sdfjsdnf '),(5,2,4,3,55222,1000,'2014-07-16 20:05:35',1,'Se cayo la venta'),(29,4,49,2,0,0,'2014-07-18 20:58:54',1,'In-house sales rep call requested'),(30,2,13,2,5000,100,'2014-07-18 22:01:22',1,'En duda'),(31,3,50,2,0,0,'2014-07-18 22:20:04',1,'falta confirmar'),(32,4,51,1,1000,100,'2014-07-21 16:29:21',1,'Hecho'),(33,4,52,2,0,0,'2014-07-21 16:36:11',1,'In-house sales rep call reques'),(34,2,53,2,0,0,'2014-07-21 16:41:44',1,'falta confirmar'),(35,2,54,2,0,0,'2014-07-21 16:43:47',1,'falta confirmar'),(36,4,55,2,0,0,'2014-07-21 16:49:05',1,'In-house sales rep call requested'),(37,2,56,2,0,0,'2014-07-21 17:11:18',1,'In-house sales rep call requested'),(38,2,57,2,0,0,'2014-07-21 23:48:31',1,'In-house sales rep call requested'),(39,2,58,2,0,0,'2014-07-21 23:50:44',1,'In-house sales rep call requested'),(40,2,59,2,0,0,'2014-07-21 23:52:17',1,'In-house sales rep call requested'),(41,2,60,2,0,0,'2014-07-30 16:15:47',1,'In-house sales rep call requested'),(42,2,61,2,0,0,'2014-07-30 16:19:38',1,'In-house sales rep call requested'),(43,2,62,2,0,0,'2014-07-30 16:21:33',1,'In-house sales rep call requested'),(44,2,63,2,0,0,'2014-08-06 17:47:17',1,'In-house sales rep call requested'),(45,2,64,2,0,0,'2014-08-06 18:46:56',1,'In-house sales rep call requested'),(46,2,65,2,0,0,'2014-08-06 19:18:41',1,'In-house sales rep call requested'),(47,2,66,2,0,0,'2014-08-06 19:41:00',1,'In-house sales rep call requested'),(48,2,67,2,0,0,'2014-08-07 15:17:40',1,'In-house sales rep call requested'),(49,2,68,2,0,0,'2014-08-07 16:33:07',1,'In-house sales rep call requested'),(50,2,69,2,0,0,'2014-08-08 20:54:15',1,'In-house sales rep call requested'),(51,2,70,2,0,0,'2014-08-15 20:26:59',1,'In-house sales rep call requested');
/*!40000 ALTER TABLE `api_partner_prospect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_partner_salesperson`
--

DROP TABLE IF EXISTS `api_partner_salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_partner_salesperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `dateCreate` datetime NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `urlphoto` text,
  `levels` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_partner_salesperson`
--

LOCK TABLES `api_partner_salesperson` WRITE;
/*!40000 ALTER TABLE `api_partner_salesperson` DISABLE KEYS */;
INSERT INTO `api_partner_salesperson` VALUES (2,'Ayrton','Garcia Chiok','a.chiok@outlook.com','2014-07-16 16:38:47','123',1,'https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xap1/t1.0-9/1463431_10151815516447607_1269585589_n.jpg',1),(3,'Jose','Pulido Murga','jpulido@gmail.com','2014-07-16 16:39:15','123456',1,'https://scontent-b-sea.xx.fbcdn.net/hphotos-frc3/t1.0-9/285622_489293457764592_1072915194_n.jpg',1),(4,'Gino','Ferrand','gferrand@gmail.com','2014-07-16 16:39:33','123',1,'http://www.mastermagazine.info/termino/wp-content/uploads/Usuario-Icono.jpg',1);
/*!40000 ALTER TABLE `api_partner_salesperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add vendedor',7,'add_vendedor'),(20,'Can change vendedor',7,'change_vendedor'),(21,'Can delete vendedor',7,'delete_vendedor'),(25,'Can add salesperson',9,'add_salesperson'),(26,'Can change salesperson',9,'change_salesperson'),(27,'Can delete salesperson',9,'delete_salesperson'),(28,'Can add client',10,'add_client'),(29,'Can change client',10,'change_client'),(30,'Can delete client',10,'delete_client'),(31,'Can add prospect',11,'add_prospect'),(32,'Can change prospect',11,'change_prospect'),(33,'Can delete prospect',11,'delete_prospect'),(34,'Can add containersalesperson_client',12,'add_containersalesperson_client'),(35,'Can change containersalesperson_client',12,'change_containersalesperson_client'),(36,'Can delete containersalesperson_client',12,'delete_containersalesperson_client'),(37,'Can add leads',13,'add_leads'),(38,'Can change leads',13,'change_leads'),(39,'Can delete leads',13,'delete_leads');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$tflV2gCzFTY7$AlXi9XGOC4hEkidPKClFIE0kj947fHCgikzfVCMuMDw=','2014-08-04 16:42:18',1,'usuario','','','',1,1,'2014-07-15 14:52:49');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-07-15 21:27:27',1,9,'2','salesperson object',1,''),(2,'2014-07-15 21:30:38',1,11,'1','prospect object',1,''),(3,'2014-07-16 00:08:12',1,9,'3','Gino',1,''),(4,'2014-07-16 16:16:33',1,11,'1','1',1,''),(5,'2014-07-16 16:38:00',1,9,'1','1',3,''),(6,'2014-07-16 16:38:47',1,9,'2','Ayrton',1,''),(7,'2014-07-16 16:39:15',1,9,'3','Jose',1,''),(8,'2014-07-16 16:39:33',1,9,'4','Gino',1,''),(9,'2014-07-16 16:42:11',1,10,'3','Pauk',1,''),(10,'2014-07-16 16:43:21',1,10,'4','Andrew',1,''),(11,'2014-07-16 16:44:33',1,10,'5','Cesar',1,''),(12,'2014-07-16 16:45:31',1,11,'2','Ayrton',1,''),(13,'2014-07-16 16:46:05',1,11,'3','Ayrton',1,''),(14,'2014-07-16 16:46:34',1,11,'4','Ayrton',1,''),(15,'2014-07-16 18:38:58',1,11,'4','Ayrton',2,'Changed textprogress.'),(16,'2014-07-16 18:39:05',1,11,'3','Ayrton',2,'Changed textprogress.'),(17,'2014-07-16 18:39:21',1,11,'2','Ayrton',2,'Changed textprogress.'),(18,'2014-07-16 20:05:35',1,11,'5','Ayrton',1,''),(19,'2014-07-17 23:42:37',1,9,'2','Ayrton Garcia Chiok',2,'Changed urlphoto.'),(20,'2014-07-18 15:08:33',1,9,'2','Ayrton Garcia Chiok',2,'Changed urlphoto.'),(21,'2014-07-18 20:52:57',1,10,'48','Alber',3,''),(22,'2014-07-18 20:52:57',1,10,'47','Alber',3,''),(23,'2014-07-18 20:52:57',1,10,'46','Alber',3,''),(24,'2014-07-18 20:52:57',1,10,'45','Alber',3,''),(25,'2014-07-18 20:52:57',1,10,'44','Alber',3,''),(26,'2014-07-18 20:52:57',1,10,'43','Alber',3,''),(27,'2014-07-18 20:52:57',1,10,'42','Alber',3,''),(28,'2014-07-18 20:52:57',1,10,'41','Alber',3,''),(29,'2014-07-18 20:52:57',1,10,'40','Alber',3,''),(30,'2014-07-18 20:52:57',1,10,'39','Alber',3,''),(31,'2014-07-18 20:52:57',1,10,'38','Alber',3,''),(32,'2014-07-18 20:52:57',1,10,'37','Alber',3,''),(33,'2014-07-18 20:52:57',1,10,'36','Alber',3,''),(34,'2014-07-18 20:52:57',1,10,'35','Alber',3,''),(35,'2014-07-18 20:54:12',1,11,'14','prospect object',2,'Changed progress and textprogress.'),(36,'2014-07-18 20:56:02',1,11,'14','HECHOOO!',3,''),(37,'2014-07-18 20:56:02',1,11,'13','falta confirmar',3,''),(38,'2014-07-18 20:56:02',1,11,'12','falta confirmar',3,''),(39,'2014-07-18 20:56:02',1,11,'11','falta confirmar',3,''),(40,'2014-07-18 20:56:02',1,11,'10','falta confirmar',3,''),(41,'2014-07-18 20:56:02',1,11,'8','falta confirmar',3,''),(42,'2014-07-18 20:56:54',1,10,'34','Alber',3,''),(43,'2014-07-18 20:56:54',1,10,'33','Alber',3,''),(44,'2014-07-18 20:56:54',1,10,'32','Alber',3,''),(45,'2014-07-18 20:56:54',1,10,'31','Alber',3,''),(46,'2014-07-18 20:56:54',1,10,'30','Alber',3,''),(47,'2014-07-18 20:56:54',1,10,'29','Alber',3,''),(48,'2014-07-18 20:56:54',1,10,'28','Alber',3,''),(49,'2014-07-18 20:56:54',1,10,'27','El PSYDUCK',3,''),(50,'2014-07-18 20:56:54',1,10,'26','DSFDS',3,''),(51,'2014-07-18 20:56:54',1,10,'25','DSFDS',3,''),(52,'2014-07-18 20:56:54',1,10,'24','DSFDS',3,''),(53,'2014-07-18 20:56:54',1,10,'23','El PSYDUCK',3,''),(54,'2014-07-18 20:56:54',1,10,'22','El PSYDUCK',3,''),(55,'2014-07-18 20:56:54',1,10,'21','El PSYDUCK',3,''),(56,'2014-07-18 20:56:54',1,10,'20','El PSYDUCK',3,''),(57,'2014-07-18 20:56:54',1,10,'19','El PSYDUCK',3,''),(58,'2014-07-18 20:56:54',1,10,'18','El PSYDUCK',3,''),(59,'2014-07-18 20:56:54',1,10,'17','Ayrton',3,''),(60,'2014-07-18 22:01:22',1,11,'30','En duda',1,''),(61,'2014-07-21 16:30:50',1,11,'32','Hecho',2,'Changed progress, total, commission and textprogress.'),(62,'2014-07-22 14:52:38',1,13,'1','leads object',1,''),(63,'2014-07-22 16:45:50',1,13,'2','leads object',1,''),(64,'2014-07-22 16:46:41',1,13,'3','leads object',1,''),(65,'2014-07-22 17:11:30',1,13,'3','leads object',2,'Changed link.'),(66,'2014-07-22 20:09:19',1,13,'4','leads object',1,''),(67,'2014-07-30 16:07:23',1,11,'33','In-house sales rep call reques',2,'Changed textprogress.'),(68,'2014-07-30 16:08:37',1,11,'36','In-house sales rep call reques',2,'Changed textprogress.'),(69,'2014-07-30 16:13:39',1,11,'36','In-house sales rep call requested',2,'Changed textprogress.'),(70,'2014-07-30 16:13:50',1,11,'29','In-house sales rep call requested',2,'Changed textprogress.'),(71,'2014-07-30 16:14:13',1,11,'29','In-house sales rep call requested',2,'No fields changed.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'vendedor','teclalabs','vendedor'),(9,'salesperson','api_partner','salesperson'),(10,'client','api_partner','client'),(11,'prospect','api_partner','prospect'),(12,'containersalesperson_client','api_partner','containersalesperson_client'),(13,'leads','api_partner','leads');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0i465dzge4p4ndax66usbi2v730oukoe','YzIzMTI1MzYyYWEzOTQ2NTZhNDliZWZlMjkzNjBhNDcxMzcxYmVkYzp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayIsImxldmVsIjoxfQ==','2014-08-28 16:58:49'),('0tinft8z6g3wgn60fo1t2eho4fgzbsym','MDhlM2U1NzBiMWY1MGNhODg2MTYyODMxN2NhOTMwM2JlNDJlNTBiNTp7fQ==','2014-08-08 23:38:05'),('18nhj5o7pid092se0cm8yz8g1ddrj9vt','YmE4NTM4Yjg3ZGRmZDA4NGVhNzZkMmNjNTk4YmU2ZmFkYzRmYmUwOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY3MDIyZDQ3MTM5MDllYzM5NzJmY2ZmNGQ4YTQ1MDZhNDg2YjA0OTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-07-29 16:39:58'),('1f9wm1qhqpkxogiyz2yovhopdv0dm7hf','ZmVlZmY1OGRhMjU1NjZhZGQxN2JhNDAxMTU2NmI2NGEyNWNkOTNiNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-08-09 00:47:52'),('238qggug8n07n4q67pibb2v71o6a1l11','NTQ3OWNjYjk4OTc5OWIzNWE0ZGQ3ZmQwMmU0YzQ1NGI1OGVjYTAyNTp7InBob3RvIjoiaHR0cHM6Ly9zY29udGVudC1iLXNlYS54eC5mYmNkbi5uZXQvaHBob3Rvcy1mcmMzL3QxLjAtOS8yODU2MjJfNDg5MjkzNDU3NzY0NTkyXzEwNzI5MTUxOTRfbi5qcGciLCJpZCI6Mywibm9tYnJlIjoiSm9zZSBQdWxpZG8gTXVyZ2EifQ==','2014-08-06 16:42:42'),('3bolskzc45u42du456w2dvtf3jaaefrl','MGJjMjEwNWViNTZkNzY4MzljZmExOWJjNWJhZDQ2MTczODE1ZDM2NTp7Im5vbWJyZSI6IkF5cnRvbiBHYXJjaWEgQ2hpb2siLCJpZCI6Mn0=','2014-07-31 16:26:58'),('6qozdmnqxj9k5orv0z1zzb0spap4qsza','ZmVlZmY1OGRhMjU1NjZhZGQxN2JhNDAxMTU2NmI2NGEyNWNkOTNiNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-08-08 18:37:51'),('6u2x27eokqa6k660hbkuh685t61h8lyj','NWYzNGZkMzU4YzkxYTk4ZWY5ZWVjMDYyYmU0Nzk4YmViZmU4OTljZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkOWU3NDgyYWZlZjQ1Y2I5MWUwZTA2MzIzZjRiZWM3YWU3NmRjOGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-08-01 21:58:49'),('6w72a7a9m4nvazzt8xaj8q2gqoy5cpwd','OWI1NzM4MjQ4NDE3OWZiNzRlMGMyYzEzM2E5NDJkMDRjYWE5ZTQwYzp7InBob3RvIjoiaHR0cDovL3d3dy5tYXN0ZXJtYWdhemluZS5pbmZvL3Rlcm1pbm8vd3AtY29udGVudC91cGxvYWRzL1VzdWFyaW8tSWNvbm8uanBnIiwiaWQiOjQsIm5vbWJyZSI6Ikdpbm8gRmVycmFuZCJ9','2014-08-13 15:56:38'),('6z6s8ngtkiqd1ldjbyqui391vxtu3emk','NzcwYjc5NzNiNWFiNDYxMzgxYTBmNGVlYjQwYmVkMWEzN2IwOTBhOTp7fQ==','2014-08-08 16:42:01'),('74014i3i8tb8s5pv9o094o36szaxrss5','ZmVlZmY1OGRhMjU1NjZhZGQxN2JhNDAxMTU2NmI2NGEyNWNkOTNiNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-29 23:31:19'),('95fs93khtpcd5oj3dv8xjqj5gseoj3zp','ZmVlZmY1OGRhMjU1NjZhZGQxN2JhNDAxMTU2NmI2NGEyNWNkOTNiNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-08-13 17:21:32'),('a0f2ggly7hslonlw4dn7bmxkb4zuiphw','MGJjMjEwNWViNTZkNzY4MzljZmExOWJjNWJhZDQ2MTczODE1ZDM2NTp7Im5vbWJyZSI6IkF5cnRvbiBHYXJjaWEgQ2hpb2siLCJpZCI6Mn0=','2014-07-31 15:12:19'),('bnmlcmlx06dbhm2pzuedw5xzfvakt6js','NTQ3OWNjYjk4OTc5OWIzNWE0ZGQ3ZmQwMmU0YzQ1NGI1OGVjYTAyNTp7InBob3RvIjoiaHR0cHM6Ly9zY29udGVudC1iLXNlYS54eC5mYmNkbi5uZXQvaHBob3Rvcy1mcmMzL3QxLjAtOS8yODU2MjJfNDg5MjkzNDU3NzY0NTkyXzEwNzI5MTUxOTRfbi5qcGciLCJpZCI6Mywibm9tYnJlIjoiSm9zZSBQdWxpZG8gTXVyZ2EifQ==','2014-08-06 18:21:26'),('d2nc38je1s2wk43x6t279du90jmzvbqd','NzcwYjc5NzNiNWFiNDYxMzgxYTBmNGVlYjQwYmVkMWEzN2IwOTBhOTp7fQ==','2014-07-31 20:30:14'),('di3ruov3gdn116iqvdwdeadoa7aodbvq','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-05 19:36:07'),('dvjitq7s6jv2nyzhg2cnws5n5iby1n6n','MGJjMjEwNWViNTZkNzY4MzljZmExOWJjNWJhZDQ2MTczODE1ZDM2NTp7Im5vbWJyZSI6IkF5cnRvbiBHYXJjaWEgQ2hpb2siLCJpZCI6Mn0=','2014-07-30 19:16:35'),('e4xygbqgnseeimdlwrwzst5foxpfu46m','OWI1NzM4MjQ4NDE3OWZiNzRlMGMyYzEzM2E5NDJkMDRjYWE5ZTQwYzp7InBob3RvIjoiaHR0cDovL3d3dy5tYXN0ZXJtYWdhemluZS5pbmZvL3Rlcm1pbm8vd3AtY29udGVudC91cGxvYWRzL1VzdWFyaW8tSWNvbm8uanBnIiwiaWQiOjQsIm5vbWJyZSI6Ikdpbm8gRmVycmFuZCJ9','2014-08-13 19:25:44'),('ejaqvyrkgfolivfyvp16luk3r9wuvw5y','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-05 19:54:03'),('g4ll6w4vjtiimmithqfqe0uplaghp1fv','NWYzNGZkMzU4YzkxYTk4ZWY5ZWVjMDYyYmU0Nzk4YmViZmU4OTljZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkOWU3NDgyYWZlZjQ1Y2I5MWUwZTA2MzIzZjRiZWM3YWU3NmRjOGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-07-31 23:02:58'),('g6r8plx30vcvcahtpghfijcglq3pnd4j','YmE4NTM4Yjg3ZGRmZDA4NGVhNzZkMmNjNTk4YmU2ZmFkYzRmYmUwOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY3MDIyZDQ3MTM5MDllYzM5NzJmY2ZmNGQ4YTQ1MDZhNDg2YjA0OTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-07-29 16:44:51'),('honmlz7972v6qj3p3pkebgkartkaqf2s','NzcwYjc5NzNiNWFiNDYxMzgxYTBmNGVlYjQwYmVkMWEzN2IwOTBhOTp7fQ==','2014-08-08 16:46:43'),('inw4aal7il1dyej7u99ap968e2b6nlwy','ODRlYmQzYzE5MTU3NzdhM2QwNzcwYzcwNTJkNDUwZjlmM2Y2YjE0Zjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJub21icmUiOiJBeXJ0b24gR2FyY2lhIENoaW9rIn0=','2014-08-06 22:19:03'),('iv35i787t6iper3jmf42l9vlwz088kyx','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-01 16:08:12'),('j2vhhbq5ljiyn61f09pkzca9plwlebrj','OWI1NzM4MjQ4NDE3OWZiNzRlMGMyYzEzM2E5NDJkMDRjYWE5ZTQwYzp7InBob3RvIjoiaHR0cDovL3d3dy5tYXN0ZXJtYWdhemluZS5pbmZvL3Rlcm1pbm8vd3AtY29udGVudC91cGxvYWRzL1VzdWFyaW8tSWNvbm8uanBnIiwiaWQiOjQsIm5vbWJyZSI6Ikdpbm8gRmVycmFuZCJ9','2014-08-05 20:01:55'),('mikh37ounpcf3efezs2a9kbe7zak1rlj','ODRlYmQzYzE5MTU3NzdhM2QwNzcwYzcwNTJkNDUwZjlmM2Y2YjE0Zjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJub21icmUiOiJBeXJ0b24gR2FyY2lhIENoaW9rIn0=','2014-08-01 17:40:05'),('oxyzf6caywh879sjal7cnzwgqy4jdbzh','NTQ3OWNjYjk4OTc5OWIzNWE0ZGQ3ZmQwMmU0YzQ1NGI1OGVjYTAyNTp7InBob3RvIjoiaHR0cHM6Ly9zY29udGVudC1iLXNlYS54eC5mYmNkbi5uZXQvaHBob3Rvcy1mcmMzL3QxLjAtOS8yODU2MjJfNDg5MjkzNDU3NzY0NTkyXzEwNzI5MTUxOTRfbi5qcGciLCJpZCI6Mywibm9tYnJlIjoiSm9zZSBQdWxpZG8gTXVyZ2EifQ==','2014-08-01 22:19:00'),('pkk91etccs12bfy46wb6uoyuthpouq6r','ZmVlZmY1OGRhMjU1NjZhZGQxN2JhNDAxMTU2NmI2NGEyNWNkOTNiNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-30 15:19:47'),('qh0bl9mekzqpzmmqar5laoxewqhk8ad0','NTQ3OWNjYjk4OTc5OWIzNWE0ZGQ3ZmQwMmU0YzQ1NGI1OGVjYTAyNTp7InBob3RvIjoiaHR0cHM6Ly9zY29udGVudC1iLXNlYS54eC5mYmNkbi5uZXQvaHBob3Rvcy1mcmMzL3QxLjAtOS8yODU2MjJfNDg5MjkzNDU3NzY0NTkyXzEwNzI5MTUxOTRfbi5qcGciLCJpZCI6Mywibm9tYnJlIjoiSm9zZSBQdWxpZG8gTXVyZ2EifQ==','2014-08-06 18:18:35'),('sg42dat2vx0hlnif6p13rl2mlequ568a','NTQ3OWNjYjk4OTc5OWIzNWE0ZGQ3ZmQwMmU0YzQ1NGI1OGVjYTAyNTp7InBob3RvIjoiaHR0cHM6Ly9zY29udGVudC1iLXNlYS54eC5mYmNkbi5uZXQvaHBob3Rvcy1mcmMzL3QxLjAtOS8yODU2MjJfNDg5MjkzNDU3NzY0NTkyXzEwNzI5MTUxOTRfbi5qcGciLCJpZCI6Mywibm9tYnJlIjoiSm9zZSBQdWxpZG8gTXVyZ2EifQ==','2014-08-13 19:08:55'),('tbxnd006i65ukmcsj9ju5zcurytosup5','ODMyYWJhNTBjOTM2NjQyOTRhOTg4OGNjOGQ1ZGIyNGJhZDlkZTdmOTp7InBob3RvIjoiaHR0cDovL3d3dy5tYXN0ZXJtYWdhemluZS5pbmZvL3Rlcm1pbm8vd3AtY29udGVudC91cGxvYWRzL1VzdWFyaW8tSWNvbm8uanBnIiwibm9tYnJlIjoiR2lubyBGZXJyYW5kIn0=','2014-08-01 21:01:36'),('wv5qamq7eko08cpjcp9b1n664sh930li','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-05 19:53:18'),('x8b2zlk5mc7sqxdxkn37sm0p0uv1rik0','ODMyYWJhNTBjOTM2NjQyOTRhOTg4OGNjOGQ1ZGIyNGJhZDlkZTdmOTp7InBob3RvIjoiaHR0cDovL3d3dy5tYXN0ZXJtYWdhemluZS5pbmZvL3Rlcm1pbm8vd3AtY29udGVudC91cGxvYWRzL1VzdWFyaW8tSWNvbm8uanBnIiwibm9tYnJlIjoiR2lubyBGZXJyYW5kIn0=','2014-08-13 16:06:09'),('xm5u2n02vq7qjo9ievmao2qwkw251t07','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-13 16:15:05'),('xovn581anstcc4mxczxc9jme2ivnnv42','MGJjMjEwNWViNTZkNzY4MzljZmExOWJjNWJhZDQ2MTczODE1ZDM2NTp7Im5vbWJyZSI6IkF5cnRvbiBHYXJjaWEgQ2hpb2siLCJpZCI6Mn0=','2014-07-30 21:12:37'),('xvcqbm6nyvp6dufsgp9snwp6lowvgbnt','ZmVlZmY1OGRhMjU1NjZhZGQxN2JhNDAxMTU2NmI2NGEyNWNkOTNiNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-29 19:52:21'),('yq0b1jjxt2llbp96gtm9vyg0zq8o8914','OWI1NzM4MjQ4NDE3OWZiNzRlMGMyYzEzM2E5NDJkMDRjYWE5ZTQwYzp7InBob3RvIjoiaHR0cDovL3d3dy5tYXN0ZXJtYWdhemluZS5pbmZvL3Rlcm1pbm8vd3AtY29udGVudC91cGxvYWRzL1VzdWFyaW8tSWNvbm8uanBnIiwiaWQiOjQsIm5vbWJyZSI6Ikdpbm8gRmVycmFuZCJ9','2014-08-05 20:18:54'),('zbcu9x2uur0orfhjzsl0xzn0ydmfy5ud','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-04 16:53:01'),('zbz11egx5oqqzue4pxryoqi2c1t6nxip','ZGFiM2FmY2Y5Nzc4NTQxYTJlZjg1MWQ1ZTQwMmY5ODE1Yzg0MjRjMjp7InBob3RvIjoiaHR0cHM6Ly9mYmNkbi1zcGhvdG9zLWItYS5ha2FtYWloZC5uZXQvaHBob3Rvcy1hay14YXAxL3QxLjAtOS8xNDYzNDMxXzEwMTUxODE1NTE2NDQ3NjA3XzEyNjk1ODU1ODlfbi5qcGciLCJpZCI6Miwibm9tYnJlIjoiQXlydG9uIEdhcmNpYSBDaGlvayJ9','2014-08-05 19:35:53'),('zdqmgoikqrt2ustn7e5iacbf6dairj43','MDhlM2U1NzBiMWY1MGNhODg2MTYyODMxN2NhOTMwM2JlNDJlNTBiNTp7fQ==','2014-08-13 17:02:49');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-22 16:44:27
