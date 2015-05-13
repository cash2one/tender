# MySQL-Front 5.1  (Build 3.58)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 10.2.161.10    Database: confmgr
# ------------------------------------------------------
# Server version 5.0.95-log

USE `confmgr`;

#
# Source for table account_userprofile
#

DROP TABLE IF EXISTS `account_userprofile`;
CREATE TABLE `account_userprofile` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `department` varchar(128) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Dumping data for table account_userprofile
#
LOCK TABLES `account_userprofile` WRITE;
/*!40000 ALTER TABLE `account_userprofile` DISABLE KEYS */;

INSERT INTO `account_userprofile` VALUES (1,1,'超级管理员部门','84100000');
INSERT INTO `account_userprofile` VALUES (2,2,'运维技术部','84107146');
INSERT INTO `account_userprofile` VALUES (3,3,'架构平台中心','01012345678');
INSERT INTO `account_userprofile` VALUES (4,4,'','84107145');
INSERT INTO `account_userprofile` VALUES (5,5,'','');
INSERT INTO `account_userprofile` VALUES (6,6,'','');
INSERT INTO `account_userprofile` VALUES (7,7,'','');
INSERT INTO `account_userprofile` VALUES (8,8,'','');
INSERT INTO `account_userprofile` VALUES (9,9,'','');
INSERT INTO `account_userprofile` VALUES (10,10,'','');
INSERT INTO `account_userprofile` VALUES (11,11,'','');
INSERT INTO `account_userprofile` VALUES (12,12,'','');
INSERT INTO `account_userprofile` VALUES (13,13,'','');
/*!40000 ALTER TABLE `account_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table account_userprofile
#

ALTER TABLE `account_userprofile`
ADD CONSTRAINT `user_id_refs_id_5ef8aa5f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
