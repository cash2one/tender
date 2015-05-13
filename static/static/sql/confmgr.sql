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

DROP DATABASE IF EXISTS `confmgr`;
CREATE DATABASE `confmgr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `confmgr`;

#
# Source for table account_userprofile
#

DROP TABLE IF EXISTS `account_userprofile`;
CREATE TABLE `account_userprofile` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `usertype` int(11) NOT NULL,
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

INSERT INTO `account_userprofile` VALUES (1,1,4,'超级管理员部门','84100000');
INSERT INTO `account_userprofile` VALUES (2,2,4,'运维技术部','84107146');
INSERT INTO `account_userprofile` VALUES (3,3,1,'架构平台中心','01012345678');
INSERT INTO `account_userprofile` VALUES (4,4,1,'','84107145');
INSERT INTO `account_userprofile` VALUES (5,5,1,'','');
INSERT INTO `account_userprofile` VALUES (6,6,1,'','');
INSERT INTO `account_userprofile` VALUES (7,7,1,'','');
INSERT INTO `account_userprofile` VALUES (8,8,1,'','');
INSERT INTO `account_userprofile` VALUES (9,9,1,'','');
INSERT INTO `account_userprofile` VALUES (10,10,1,'','');
INSERT INTO `account_userprofile` VALUES (11,11,1,'','');
INSERT INTO `account_userprofile` VALUES (12,12,1,'','');
INSERT INTO `account_userprofile` VALUES (13,13,1,'','');
/*!40000 ALTER TABLE `account_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table applyresource_applyresource
#

DROP TABLE IF EXISTS `applyresource_applyresource`;
CREATE TABLE `applyresource_applyresource` (
  `id` int(11) NOT NULL auto_increment,
  `work_id` varchar(20) NOT NULL,
  `division` varchar(64) NOT NULL,
  `department` varchar(64) NOT NULL,
  `apply_time` date NOT NULL,
  `business_description` varchar(256) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `cpu_num` int(11) NOT NULL,
  `disk_num` int(11) NOT NULL,
  `memory_num` int(11) NOT NULL,
  `net_type` int(11) NOT NULL,
  `os_type` int(11) NOT NULL,
  `other_soft` varchar(256) NOT NULL,
  `applicant` varchar(16) NOT NULL,
  `division_leader_views` varchar(16) NOT NULL,
  `resource_management_views` varchar(16) NOT NULL,
  `implementer` varchar(16) default NULL,
  `flowId` varchar(32) NOT NULL,
  `templateCode` varchar(32) NOT NULL,
  `flow_state` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Dumping data for table applyresource_applyresource
#
LOCK TABLES `applyresource_applyresource` WRITE;
/*!40000 ALTER TABLE `applyresource_applyresource` DISABLE KEYS */;

INSERT INTO `applyresource_applyresource` VALUES (4,'ARF20121012174940058','云架构平台中心1','运维技术部1','2012-10-12','去','2012-10-12','2016-10-01',1,2,3,0,0,'','jingwen.wu','','','','101959055457206474','YW_ServerApply7',3);
INSERT INTO `applyresource_applyresource` VALUES (6,'ARF20121016155102058','云架构平台中心2','运维技术部2','2012-10-16','业务说明','2012-10-16','2013-10-01',1,2,3,0,10,'软件','admin','','','','-6609933851892889634','YW_ServerApply7',1);
INSERT INTO `applyresource_applyresource` VALUES (7,'ARF20121016170624028','云架构平台中心2','运维技术部2','2012-10-16','业务说明','2012-10-31','2013-10-01',1,0,1,0,10,'软件','jingwen.wu','同意','同意','吴静文','202403119913062243','YW_ServerApply7',9);
/*!40000 ALTER TABLE `applyresource_applyresource` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_group
#

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_group
#
LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;

/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_group_permissions
#

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_group_permissions
#
LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;

/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_permission
#

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_permission
#
LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission');
INSERT INTO `auth_permission` VALUES (2,'Can change permission',1,'change_permission');
INSERT INTO `auth_permission` VALUES (3,'Can delete permission',1,'delete_permission');
INSERT INTO `auth_permission` VALUES (4,'Can add group',2,'add_group');
INSERT INTO `auth_permission` VALUES (5,'Can change group',2,'change_group');
INSERT INTO `auth_permission` VALUES (6,'Can delete group',2,'delete_group');
INSERT INTO `auth_permission` VALUES (7,'Can add user',3,'add_user');
INSERT INTO `auth_permission` VALUES (8,'Can change user',3,'change_user');
INSERT INTO `auth_permission` VALUES (9,'Can delete user',3,'delete_user');
INSERT INTO `auth_permission` VALUES (10,'Can add content type',4,'add_contenttype');
INSERT INTO `auth_permission` VALUES (11,'Can change content type',4,'change_contenttype');
INSERT INTO `auth_permission` VALUES (12,'Can delete content type',4,'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13,'Can add session',5,'add_session');
INSERT INTO `auth_permission` VALUES (14,'Can change session',5,'change_session');
INSERT INTO `auth_permission` VALUES (15,'Can delete session',5,'delete_session');
INSERT INTO `auth_permission` VALUES (16,'Can add site',6,'add_site');
INSERT INTO `auth_permission` VALUES (17,'Can change site',6,'change_site');
INSERT INTO `auth_permission` VALUES (18,'Can delete site',6,'delete_site');
INSERT INTO `auth_permission` VALUES (19,'Can add log entry',7,'add_logentry');
INSERT INTO `auth_permission` VALUES (20,'Can change log entry',7,'change_logentry');
INSERT INTO `auth_permission` VALUES (21,'Can delete log entry',7,'delete_logentry');
INSERT INTO `auth_permission` VALUES (22,'Can add user profile',8,'add_userprofile');
INSERT INTO `auth_permission` VALUES (23,'Can change user profile',8,'change_userprofile');
INSERT INTO `auth_permission` VALUES (24,'Can delete user profile',8,'delete_userprofile');
INSERT INTO `auth_permission` VALUES (25,'Can add isp model',9,'add_ispmodel');
INSERT INTO `auth_permission` VALUES (26,'Can change isp model',9,'change_ispmodel');
INSERT INTO `auth_permission` VALUES (27,'Can delete isp model',9,'delete_ispmodel');
INSERT INTO `auth_permission` VALUES (28,'Can add noc info',10,'add_nocinfo');
INSERT INTO `auth_permission` VALUES (29,'Can change noc info',10,'change_nocinfo');
INSERT INTO `auth_permission` VALUES (30,'Can delete noc info',10,'delete_nocinfo');
INSERT INTO `auth_permission` VALUES (31,'Can add noc net info',11,'add_nocnetinfo');
INSERT INTO `auth_permission` VALUES (32,'Can change noc net info',11,'change_nocnetinfo');
INSERT INTO `auth_permission` VALUES (33,'Can delete noc net info',11,'delete_nocnetinfo');
INSERT INTO `auth_permission` VALUES (34,'Can add rack',12,'add_rack');
INSERT INTO `auth_permission` VALUES (35,'Can change rack',12,'change_rack');
INSERT INTO `auth_permission` VALUES (36,'Can delete rack',12,'delete_rack');
INSERT INTO `auth_permission` VALUES (37,'Can add equipment',13,'add_equipment');
INSERT INTO `auth_permission` VALUES (38,'Can change equipment',13,'change_equipment');
INSERT INTO `auth_permission` VALUES (39,'Can delete equipment',13,'delete_equipment');
INSERT INTO `auth_permission` VALUES (40,'Can add server conf',14,'add_serverconf');
INSERT INTO `auth_permission` VALUES (41,'Can change server conf',14,'change_serverconf');
INSERT INTO `auth_permission` VALUES (42,'Can delete server conf',14,'delete_serverconf');
INSERT INTO `auth_permission` VALUES (43,'Can add cpu',15,'add_cpu');
INSERT INTO `auth_permission` VALUES (44,'Can change cpu',15,'change_cpu');
INSERT INTO `auth_permission` VALUES (45,'Can delete cpu',15,'delete_cpu');
INSERT INTO `auth_permission` VALUES (46,'Can add memory',16,'add_memory');
INSERT INTO `auth_permission` VALUES (47,'Can change memory',16,'change_memory');
INSERT INTO `auth_permission` VALUES (48,'Can delete memory',16,'delete_memory');
INSERT INTO `auth_permission` VALUES (49,'Can add disk',17,'add_disk');
INSERT INTO `auth_permission` VALUES (50,'Can change disk',17,'change_disk');
INSERT INTO `auth_permission` VALUES (51,'Can delete disk',17,'delete_disk');
INSERT INTO `auth_permission` VALUES (52,'Can add net card',18,'add_netcard');
INSERT INTO `auth_permission` VALUES (53,'Can change net card',18,'change_netcard');
INSERT INTO `auth_permission` VALUES (54,'Can delete net card',18,'delete_netcard');
INSERT INTO `auth_permission` VALUES (55,'Can add raid card',19,'add_raidcard');
INSERT INTO `auth_permission` VALUES (56,'Can change raid card',19,'change_raidcard');
INSERT INTO `auth_permission` VALUES (57,'Can delete raid card',19,'delete_raidcard');
INSERT INTO `auth_permission` VALUES (58,'Can add manage card',20,'add_managecard');
INSERT INTO `auth_permission` VALUES (59,'Can change manage card',20,'change_managecard');
INSERT INTO `auth_permission` VALUES (60,'Can delete manage card',20,'delete_managecard');
INSERT INTO `auth_permission` VALUES (61,'Can add app manage',21,'add_appmanage');
INSERT INTO `auth_permission` VALUES (62,'Can change app manage',21,'change_appmanage');
INSERT INTO `auth_permission` VALUES (63,'Can delete app manage',21,'delete_appmanage');
INSERT INTO `auth_permission` VALUES (64,'Can add basic info',22,'add_basicinfo');
INSERT INTO `auth_permission` VALUES (65,'Can change basic info',22,'change_basicinfo');
INSERT INTO `auth_permission` VALUES (66,'Can delete basic info',22,'delete_basicinfo');
INSERT INTO `auth_permission` VALUES (67,'Can add virtual machine',23,'add_virtualmachine');
INSERT INTO `auth_permission` VALUES (68,'Can change virtual machine',23,'change_virtualmachine');
INSERT INTO `auth_permission` VALUES (69,'Can delete virtual machine',23,'delete_virtualmachine');
INSERT INTO `auth_permission` VALUES (70,'Can add ip model',24,'add_ipmodel');
INSERT INTO `auth_permission` VALUES (71,'Can change ip model',24,'change_ipmodel');
INSERT INTO `auth_permission` VALUES (72,'Can delete ip model',24,'delete_ipmodel');
INSERT INTO `auth_permission` VALUES (73,'Can add log',25,'add_log');
INSERT INTO `auth_permission` VALUES (74,'Can change log',25,'change_log');
INSERT INTO `auth_permission` VALUES (75,'Can delete log',25,'delete_log');
INSERT INTO `auth_permission` VALUES (76,'Can add table',26,'add_table');
INSERT INTO `auth_permission` VALUES (77,'Can change table',26,'change_table');
INSERT INTO `auth_permission` VALUES (78,'Can delete table',26,'delete_table');
INSERT INTO `auth_permission` VALUES (79,'Can add field',27,'add_field');
INSERT INTO `auth_permission` VALUES (80,'Can change field',27,'change_field');
INSERT INTO `auth_permission` VALUES (81,'Can delete field',27,'delete_field');
INSERT INTO `auth_permission` VALUES (82,'Can add module',28,'add_module');
INSERT INTO `auth_permission` VALUES (83,'Can change module',28,'change_module');
INSERT INTO `auth_permission` VALUES (84,'Can delete module',28,'delete_module');
INSERT INTO `auth_permission` VALUES (88,'Can add button',30,'add_button');
INSERT INTO `auth_permission` VALUES (89,'Can change button',30,'change_button');
INSERT INTO `auth_permission` VALUES (90,'Can delete button',30,'delete_button');
INSERT INTO `auth_permission` VALUES (91,'Can add role',31,'add_role');
INSERT INTO `auth_permission` VALUES (92,'Can change role',31,'change_role');
INSERT INTO `auth_permission` VALUES (93,'Can delete role',31,'delete_role');
INSERT INTO `auth_permission` VALUES (94,'Can add module field',32,'add_modulefield');
INSERT INTO `auth_permission` VALUES (95,'Can change module field',32,'change_modulefield');
INSERT INTO `auth_permission` VALUES (96,'Can delete module field',32,'delete_modulefield');
INSERT INTO `auth_permission` VALUES (97,'Can add apply resource',33,'add_applyresource');
INSERT INTO `auth_permission` VALUES (98,'Can change apply resource',33,'change_applyresource');
INSERT INTO `auth_permission` VALUES (99,'Can delete apply resource',33,'delete_applyresource');
INSERT INTO `auth_permission` VALUES (100,'Can add organization',34,'add_organization');
INSERT INTO `auth_permission` VALUES (101,'Can change organization',34,'change_organization');
INSERT INTO `auth_permission` VALUES (102,'Can delete organization',34,'delete_organization');
INSERT INTO `auth_permission` VALUES (103,'Can add ldap conf',35,'add_ldapconf');
INSERT INTO `auth_permission` VALUES (104,'Can change ldap conf',35,'change_ldapconf');
INSERT INTO `auth_permission` VALUES (105,'Can delete ldap conf',35,'delete_ldapconf');
INSERT INTO `auth_permission` VALUES (106,'Can add open stack conf',36,'add_openstackconf');
INSERT INTO `auth_permission` VALUES (107,'Can change open stack conf',36,'change_openstackconf');
INSERT INTO `auth_permission` VALUES (108,'Can delete open stack conf',36,'delete_openstackconf');
INSERT INTO `auth_permission` VALUES (109,'Can add a8 conf',37,'add_a8conf');
INSERT INTO `auth_permission` VALUES (110,'Can change a8 conf',37,'change_a8conf');
INSERT INTO `auth_permission` VALUES (111,'Can delete a8 conf',37,'delete_a8conf');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_user
#

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_user
#
LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;

INSERT INTO `auth_user` VALUES (1,'admin','','','admin@autonavi.com','pbkdf2_sha256$10000$rASB6vWiyuwv$htNyX4/1x9YCf1kcyEKkD9V/WUqe48Hw9S5Y7jgK/Lo=',1,1,1,'2012-10-22 01:41:17','2012-07-25 11:57:18');
INSERT INTO `auth_user` VALUES (2,'dashan.yin','','','dashan.yin@autonavi.com','pbkdf2_sha256$10000$W3EsWXOkW9fP$v1SPM/lya+oY5d09/uEQ0SnC6VBOhWaM1KjgfWK+mNY=',0,1,0,'2012-10-19 09:01:18','2012-08-29 06:08:12');
INSERT INTO `auth_user` VALUES (3,'tao.lu','','','tao.lu@autonavi.com','pbkdf2_sha256$10000$Lobw3y3xTHmO$pxs7tt/AxQppRezQpGiIWE3ywwzYthY5MwItC0MBUTA=',0,1,0,'2012-10-12 09:23:27','2012-09-14 01:35:31');
INSERT INTO `auth_user` VALUES (4,'jingwen.wu','','','jingwen.wu@autonavi.com','pbkdf2_sha256$10000$W4Bjh7eRpibj$jHTODZjOWQzYhGWwMoDruLAUYDHftgLQn7X6uxoBgkM=',0,1,0,'2012-10-19 09:41:39','2012-09-14 01:35:47');
INSERT INTO `auth_user` VALUES (5,'te.fu','','','te.fu@autonavi.com','pbkdf2_sha256$10000$7LWxJw7XDgxQ$OLym0OxzDzj/U523qTdpKdMvAcjAX6Hl+myTnJEOHx8=',0,1,0,'2012-09-14 01:36:00','2012-09-14 01:36:00');
INSERT INTO `auth_user` VALUES (6,'zhu.wei','','','zhu.wei@autonavi.com','pbkdf2_sha256$10000$wUGlopCcTD4B$pIJZKioyzwAQofkORL/66yEHT/BRvZ2o5x6jzQeZdiA=',0,1,0,'2012-09-14 01:36:19','2012-09-14 01:36:19');
INSERT INTO `auth_user` VALUES (7,'congguang.yang','','','congguang.yang@autonavi.com','pbkdf2_sha256$10000$Jo88n72LyZ5A$vwyYw9adpe2yaXUMYGCB2Lx1Rhw54wyg+4/vDCjwdLE=',0,1,0,'2012-09-14 01:36:37','2012-09-14 01:36:37');
INSERT INTO `auth_user` VALUES (8,'fanghua.xu','','','fanghua.xu@autonavi.com','pbkdf2_sha256$10000$EClmu0jAGjhi$lHXD4XCrC/oS1fvkbImd/GCKWCIqxjXYCHhO3pATI7Q=',0,1,0,'2012-09-14 01:36:57','2012-09-14 01:36:57');
INSERT INTO `auth_user` VALUES (9,'jiangtao.zhang','','','jiangtao.zhang@autonavi.com','pbkdf2_sha256$10000$i2ajAQl3yoIW$hkrL6jq53GPWZmd7tBTQ1LO1snojqIKiBCHW7ZN8SfM=',0,1,0,'2012-09-14 01:37:19','2012-09-14 01:37:19');
INSERT INTO `auth_user` VALUES (10,'tao.yu','','','tao.yu@autonavi.com','pbkdf2_sha256$10000$K6rm3P3mNiBE$izuersHcfIhnmaGaaBy86sJLQIcKHVP/XgGeXxJ6ue8=',0,1,0,'2012-09-14 01:37:36','2012-09-14 01:37:36');
INSERT INTO `auth_user` VALUES (11,'yuzhou.huang','','','yuzhou.huang@autonavi.com','pbkdf2_sha256$10000$9gD2V2DAuUGA$J514jznIOLxv5rgikAWkYO+UBTnOpjYBnmyR06c2XyI=',0,1,0,'2012-09-14 01:38:04','2012-09-14 01:38:04');
INSERT INTO `auth_user` VALUES (12,'yan.shi','','','yan.shi@autonavi.com','pbkdf2_sha256$10000$aLrmX8QYWkgQ$GRBtMdARccn+yOaT2LWKJdsttc3yX/q/xgTbPRWomMs=',0,1,0,'2012-09-14 01:38:18','2012-09-14 01:38:18');
INSERT INTO `auth_user` VALUES (13,'dong.zhang','','','dong.zhang@autonavi.com','pbkdf2_sha256$10000$eA6qBx5TBePi$P65HvmAo5JQ3Ujvp00CAwPgoisM8AvxecOZdSooGzN8=',0,1,0,'2012-09-14 01:38:32','2012-09-14 01:38:32');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_user_groups
#

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_user_groups
#
LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;

/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_user_user_permissions
#

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_user_user_permissions
#
LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;

/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_button
#

DROP TABLE IF EXISTS `authority_button`;
CREATE TABLE `authority_button` (
  `id` int(11) NOT NULL auto_increment,
  `button_name` varchar(64) NOT NULL,
  `button_type` varchar(64) NOT NULL default '',
  `order` int(11) default NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `authority_button_ac126a2` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_button
#
LOCK TABLES `authority_button` WRITE;
/*!40000 ALTER TABLE `authority_button` DISABLE KEYS */;

INSERT INTO `authority_button` VALUES (3,'修改','edit',3,'2012-09-05 05:46:26','2012-09-12 02:32:06',1);
INSERT INTO `authority_button` VALUES (4,'添加','add',2,'2012-09-11 12:24:05','2012-09-11 12:24:05',2);
INSERT INTO `authority_button` VALUES (5,'修改','edit',3,'2012-09-11 12:24:26','2012-09-12 09:24:22',2);
INSERT INTO `authority_button` VALUES (6,'查询','select',1,'2012-09-11 12:24:48','2012-09-12 09:23:59',2);
INSERT INTO `authority_button` VALUES (7,'删除','delete',4,'2012-09-11 12:25:06','2012-09-12 09:24:29',2);
INSERT INTO `authority_button` VALUES (8,'导入','import',5,'2012-09-11 12:25:23','2012-09-12 09:24:49',2);
INSERT INTO `authority_button` VALUES (9,'导出','export',6,'2012-09-11 12:25:40','2012-09-12 09:24:55',2);
INSERT INTO `authority_button` VALUES (10,'添加','add',2,'2012-09-12 03:10:24','2012-09-12 09:24:11',1);
INSERT INTO `authority_button` VALUES (11,'查询','select',1,'2012-09-13 03:01:05','2012-09-13 03:01:16',1);
INSERT INTO `authority_button` VALUES (12,'删除','delete',4,'2012-09-13 03:01:37','2012-09-13 03:01:37',1);
INSERT INTO `authority_button` VALUES (13,'导入','import',5,'2012-09-13 03:01:51','2012-09-13 03:01:51',1);
INSERT INTO `authority_button` VALUES (14,'导出','export',6,'2012-09-13 03:02:11','2012-09-13 03:02:11',1);
INSERT INTO `authority_button` VALUES (15,'查询','select',1,'2012-09-13 03:02:43','2012-09-13 03:02:49',3);
INSERT INTO `authority_button` VALUES (16,'添加','add',2,'2012-09-13 03:03:09','2012-09-13 03:03:09',3);
INSERT INTO `authority_button` VALUES (17,'修改','edit',3,'2012-09-13 03:03:28','2012-09-13 03:03:28',3);
INSERT INTO `authority_button` VALUES (18,'删除','delete',4,'2012-09-13 03:03:43','2012-09-13 03:03:43',3);
INSERT INTO `authority_button` VALUES (19,'导入','import',5,'2012-09-13 03:04:00','2012-09-13 03:04:00',3);
INSERT INTO `authority_button` VALUES (20,'导出','export',6,'2012-09-13 03:04:14','2012-09-13 03:04:14',3);
INSERT INTO `authority_button` VALUES (21,'查询','select',1,'2012-09-13 03:04:37','2012-09-13 03:04:37',4);
INSERT INTO `authority_button` VALUES (22,'添加','add',2,'2012-09-13 03:04:56','2012-09-13 03:04:56',4);
INSERT INTO `authority_button` VALUES (23,'修改','edit',3,'2012-09-13 03:05:12','2012-09-13 03:05:12',4);
INSERT INTO `authority_button` VALUES (24,'删除','delete',4,'2012-09-13 03:05:27','2012-09-13 03:05:27',4);
INSERT INTO `authority_button` VALUES (25,'导入','import',5,'2012-09-13 03:05:43','2012-09-13 03:05:43',4);
INSERT INTO `authority_button` VALUES (26,'导出','export',6,'2012-09-13 03:05:58','2012-09-13 03:05:58',4);
INSERT INTO `authority_button` VALUES (27,'查询','select',1,'2012-09-13 03:06:51','2012-09-13 03:06:51',5);
INSERT INTO `authority_button` VALUES (28,'添加','add',2,'2012-09-13 03:07:04','2012-09-13 03:07:04',5);
INSERT INTO `authority_button` VALUES (29,'修改','edit',3,'2012-09-13 03:07:17','2012-09-13 03:07:17',5);
INSERT INTO `authority_button` VALUES (30,'删除','delete',4,'2012-09-13 03:07:34','2012-09-13 03:07:34',5);
INSERT INTO `authority_button` VALUES (32,'查询','select',1,'2012-09-13 03:08:36','2012-09-13 03:08:36',6);
INSERT INTO `authority_button` VALUES (33,'添加','add',2,'2012-09-13 03:08:49','2012-09-13 03:08:49',6);
INSERT INTO `authority_button` VALUES (34,'修改','edit',3,'2012-09-13 03:09:04','2012-09-13 03:09:04',6);
INSERT INTO `authority_button` VALUES (35,'删除','delete',4,'2012-09-13 03:09:21','2012-09-13 03:09:21',6);
INSERT INTO `authority_button` VALUES (36,'导入','import',5,'2012-09-13 03:09:34','2012-09-13 03:09:34',6);
INSERT INTO `authority_button` VALUES (37,'查询','select',1,'2012-09-13 03:09:54','2012-09-13 03:09:54',9);
INSERT INTO `authority_button` VALUES (38,'添加','add',2,'2012-09-13 03:10:12','2012-09-13 03:10:12',9);
INSERT INTO `authority_button` VALUES (39,'修改','edit',3,'2012-09-13 03:10:27','2012-09-13 03:10:27',9);
INSERT INTO `authority_button` VALUES (40,'删除','delete',4,'2012-09-13 03:10:45','2012-09-13 03:10:45',9);
INSERT INTO `authority_button` VALUES (41,'导入','import',5,'2012-09-13 03:11:08','2012-09-13 03:11:08',9);
INSERT INTO `authority_button` VALUES (42,'查询','select',1,'2012-09-13 03:12:09','2012-09-13 03:12:09',7);
INSERT INTO `authority_button` VALUES (43,'查询','select',1,'2012-09-13 03:13:08','2012-09-13 03:13:08',8);
INSERT INTO `authority_button` VALUES (45,'查询','select',1,'2012-09-19 05:31:49','2012-09-19 05:31:49',10);
INSERT INTO `authority_button` VALUES (46,'申请','apply',2,'2012-09-19 05:32:42','2012-09-19 05:32:42',10);
INSERT INTO `authority_button` VALUES (47,'查看详情','detail',3,'2012-09-19 05:33:39','2012-09-19 05:33:39',10);
INSERT INTO `authority_button` VALUES (48,'查询','select',1,'2012-09-19 09:53:22','2012-09-19 09:53:22',12);
INSERT INTO `authority_button` VALUES (49,'添加','add',2,'2012-09-19 09:53:56','2012-09-19 09:53:56',12);
INSERT INTO `authority_button` VALUES (50,'修改','edit',3,'2012-09-19 09:54:13','2012-09-19 09:54:13',12);
INSERT INTO `authority_button` VALUES (51,'删除','delete',4,'2012-09-19 09:54:32','2012-09-19 09:54:32',12);
INSERT INTO `authority_button` VALUES (52,'超级管理','superuser',5,'2012-09-19 10:10:27','2012-09-24 05:32:56',12);
INSERT INTO `authority_button` VALUES (53,'超级管理','super',5,'2012-09-24 05:34:50','2012-09-24 05:34:50',5);
INSERT INTO `authority_button` VALUES (54,'超级管理','super',6,'2012-09-24 05:35:46','2012-09-24 05:35:46',9);
INSERT INTO `authority_button` VALUES (55,'查询','select',1,'2012-09-28 06:37:18','2012-09-28 06:37:18',13);
INSERT INTO `authority_button` VALUES (56,'添加','add',2,'2012-09-28 06:37:37','2012-09-28 06:37:37',13);
INSERT INTO `authority_button` VALUES (57,'修改','edit',3,'2012-09-28 06:37:52','2012-09-28 06:37:52',13);
INSERT INTO `authority_button` VALUES (58,'删除','delete',4,'2012-09-28 06:38:22','2012-09-28 06:38:22',13);
/*!40000 ALTER TABLE `authority_button` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_field
#

DROP TABLE IF EXISTS `authority_field`;
CREATE TABLE `authority_field` (
  `id` int(11) NOT NULL auto_increment,
  `field_name` varchar(64) NOT NULL,
  `field_type` varchar(64) NOT NULL,
  `field_size` varchar(64) NOT NULL,
  `field_desc` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `authority_field_3f3c6161` (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_field
#
LOCK TABLES `authority_field` WRITE;
/*!40000 ALTER TABLE `authority_field` DISABLE KEYS */;

INSERT INTO `authority_field` VALUES (1,'phone1','charField','16','客服电话','2012-09-05 01:40:10','2012-09-19 05:40:45',1);
INSERT INTO `authority_field` VALUES (2,'address','charField','255','运营商地址','2012-09-05 01:40:34','2012-09-05 01:40:34',1);
INSERT INTO `authority_field` VALUES (3,'address','CharField','255','机房地址','2012-09-13 01:59:48','2012-09-19 05:42:09',2);
INSERT INTO `authority_field` VALUES (4,'noc_username','CharField','64','机房联系人','2012-09-13 02:00:49','2012-09-19 05:42:42',2);
INSERT INTO `authority_field` VALUES (5,'ip_mark','CharField','32','子网掩码','2012-09-13 02:01:34','2012-09-19 05:43:59',3);
INSERT INTO `authority_field` VALUES (6,'gateway','CharField','32','默认网关','2012-09-13 02:02:38','2012-09-19 05:44:15',3);
INSERT INTO `authority_field` VALUES (7,'rated_amp','IntegerField','11','额定电流','2012-09-13 02:03:39','2012-09-13 02:03:39',4);
INSERT INTO `authority_field` VALUES (8,'used_amp','IntegerField','11','已使用电流','2012-09-13 02:04:07','2012-09-13 02:04:07',4);
INSERT INTO `authority_field` VALUES (9,'space','IntegerField','11','机架总空间','2012-09-13 02:04:52','2012-09-13 02:04:52',4);
INSERT INTO `authority_field` VALUES (10,'left_space','IntegerField','11','机架剩余空间','2012-09-13 02:05:18','2012-09-13 02:05:18',4);
INSERT INTO `authority_field` VALUES (12,'sequence','CharField','64','设备序列号','2012-09-13 02:07:06','2012-09-19 06:10:42',5);
INSERT INTO `authority_field` VALUES (16,'manage_account','CharField','32','管理帐号','2012-09-13 02:15:10','2012-09-13 02:15:10',6);
INSERT INTO `authority_field` VALUES (17,'manage_password','CharField','32','管理密码','2012-09-13 02:15:29','2012-09-13 02:15:29',6);
INSERT INTO `authority_field` VALUES (18,'manage_account','CharField','32','管理帐号','2012-09-13 02:17:21','2012-10-18 10:12:30',7);
INSERT INTO `authority_field` VALUES (19,'manage_password','CharField','32','管理密码','2012-09-13 02:17:50','2012-09-19 06:37:46',7);
INSERT INTO `authority_field` VALUES (21,'manage_port','IntegerField','32','管理端口','2012-09-13 02:18:42','2012-09-13 02:18:42',7);
INSERT INTO `authority_field` VALUES (23,'ipMask','CharField','15','子网掩码','2012-09-13 02:20:10','2012-09-19 06:40:07',8);
INSERT INTO `authority_field` VALUES (26,'phone2','CharField','16','常用电话','2012-09-19 05:41:19','2012-09-19 05:41:19',1);
INSERT INTO `authority_field` VALUES (27,'phone','CharField','64','联系方式','2012-09-19 05:43:15','2012-09-19 05:43:15',2);
INSERT INTO `authority_field` VALUES (28,'ldns1','CharField','32','本地DNS1','2012-09-19 05:44:44','2012-09-19 05:44:44',3);
INSERT INTO `authority_field` VALUES (29,'ldns2','CharField','32','本地DNS2','2012-09-19 05:45:09','2012-09-19 05:45:09',3);
INSERT INTO `authority_field` VALUES (30,'service_no','CharField','64','售后编号','2012-09-19 05:48:20','2012-09-19 05:48:20',5);
INSERT INTO `authority_field` VALUES (31,'buy_time','DateTimeField','0','采购时间','2012-09-19 06:32:49','2012-09-19 06:32:49',5);
INSERT INTO `authority_field` VALUES (32,'deadline','DateTimeField','0','保修期限','2012-09-19 06:33:35','2012-09-19 06:33:35',5);
INSERT INTO `authority_field` VALUES (33,'manage_ip','CharField','32','管理IP','2012-09-19 06:36:53','2012-10-18 10:12:35',6);
INSERT INTO `authority_field` VALUES (34,'manage_port','CharField','32','管理端口','2012-09-19 06:37:13','2012-10-18 10:12:43',6);
/*!40000 ALTER TABLE `authority_field` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_module
#

DROP TABLE IF EXISTS `authority_module`;
CREATE TABLE `authority_module` (
  `id` int(11) NOT NULL auto_increment,
  `module_name` varchar(64) NOT NULL,
  `module_type` varchar(64) NOT NULL default '',
  `order` int(11) default NULL,
  `module_desc` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_module
#
LOCK TABLES `authority_module` WRITE;
/*!40000 ALTER TABLE `authority_module` DISABLE KEYS */;

INSERT INTO `authority_module` VALUES (1,'运营商管理','isp',1,'运营商管理模块','2012-09-05 01:40:55','2012-09-05 01:40:55');
INSERT INTO `authority_module` VALUES (2,'机房管理','nocinfo',2,'机房管理模块','2012-09-05 01:41:11','2012-09-05 01:41:11');
INSERT INTO `authority_module` VALUES (3,'机房网络管理','nocnetinfo',3,'机房网络管理模块','2012-09-13 02:23:08','2012-09-13 02:23:08');
INSERT INTO `authority_module` VALUES (4,'机架管理','rack',4,'机架管理模块','2012-09-13 02:23:19','2012-09-13 02:23:19');
INSERT INTO `authority_module` VALUES (5,'设备管理','equipment',5,'设备管理模块','2012-09-13 02:23:29','2012-09-13 02:23:29');
INSERT INTO `authority_module` VALUES (6,'服务器配置管理','serverconf',6,'服务器配置管理模块','2012-09-13 02:23:54','2012-09-13 02:23:54');
INSERT INTO `authority_module` VALUES (7,'IP管理','ippool',8,'IP管理模块','2012-09-13 02:24:07','2012-09-13 02:24:07');
INSERT INTO `authority_module` VALUES (8,'日志管理','log',14,'日志管理模块','2012-09-13 02:24:25','2012-10-18 10:02:43');
INSERT INTO `authority_module` VALUES (9,'虚拟机管理','virtualmachine',7,'虚拟机管理模块','2012-09-13 02:52:19','2012-09-13 02:52:19');
INSERT INTO `authority_module` VALUES (10,'申请资源管理','applyresource',9,'申请资源管理模块','2012-09-18 07:59:57','2012-09-19 09:47:43');
INSERT INTO `authority_module` VALUES (11,'权限管理','authority',13,'权限管理模块','2012-09-18 08:01:24','2012-10-18 08:34:13');
INSERT INTO `authority_module` VALUES (12,'帐号管理','account',12,'帐号管理模块','2012-09-19 09:49:33','2012-10-18 10:02:39');
INSERT INTO `authority_module` VALUES (13,'组织机构管理','organization',10,'组织机构管理','2012-09-28 06:33:03','2012-09-28 06:33:03');
INSERT INTO `authority_module` VALUES (14,'动态配置管理','dynamicconf',11,'动态配置管理','2012-10-18 08:33:43','2012-10-18 08:33:43');
/*!40000 ALTER TABLE `authority_module` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_modulefield
#

DROP TABLE IF EXISTS `authority_modulefield`;
CREATE TABLE `authority_modulefield` (
  `id` int(11) NOT NULL auto_increment,
  `modulefield_name` varchar(64) NOT NULL default '',
  `modulefield_type` varchar(64) NOT NULL default '',
  `order` int(11) default NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `module_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `authority_modulefield_ac126a2` (`module_id`),
  KEY `authority_modulefield_4b60cce9` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_modulefield
#
LOCK TABLES `authority_modulefield` WRITE;
/*!40000 ALTER TABLE `authority_modulefield` DISABLE KEYS */;

INSERT INTO `authority_modulefield` VALUES (1,'客服电话','phone1',2,'2012-09-05 03:04:34','2012-09-19 07:11:15',1,1);
INSERT INTO `authority_modulefield` VALUES (2,'运营商地址','address',1,'2012-09-05 03:04:52','2012-09-19 07:11:04',1,2);
INSERT INTO `authority_modulefield` VALUES (3,'机房地址','address',1,'2012-09-13 02:34:51','2012-09-19 07:11:57',2,3);
INSERT INTO `authority_modulefield` VALUES (4,'机房联系人','noc_username',2,'2012-09-13 02:35:20','2012-09-19 07:12:26',2,4);
INSERT INTO `authority_modulefield` VALUES (5,'子网掩码','ip_mark',1,'2012-09-13 02:36:00','2012-09-19 07:13:54',3,5);
INSERT INTO `authority_modulefield` VALUES (7,'机架额定电流','rated_amp',1,'2012-09-13 02:39:39','2012-09-19 07:20:22',4,7);
INSERT INTO `authority_modulefield` VALUES (8,'机架已使用电流','used_amp',2,'2012-09-13 02:40:16','2012-09-19 07:20:31',4,8);
INSERT INTO `authority_modulefield` VALUES (9,'机架总空间','space',3,'2012-09-13 02:40:47','2012-09-19 07:20:45',4,9);
INSERT INTO `authority_modulefield` VALUES (10,'机架剩余空间','left_space',4,'2012-09-13 02:41:12','2012-09-19 07:20:56',4,10);
INSERT INTO `authority_modulefield` VALUES (12,'设备序列号','sequence',1,'2012-09-13 02:46:40','2012-09-19 07:16:26',5,12);
INSERT INTO `authority_modulefield` VALUES (16,'管理帐号','manage_account',1,'2012-09-13 02:51:06','2012-09-19 07:19:44',6,16);
INSERT INTO `authority_modulefield` VALUES (17,'管理密码','manage_password',2,'2012-09-13 02:51:24','2012-09-19 07:19:59',6,17);
INSERT INTO `authority_modulefield` VALUES (18,'管理帐号','manage_account',1,'2012-09-13 02:52:49','2012-09-28 02:14:27',9,18);
INSERT INTO `authority_modulefield` VALUES (19,'管理密码','manage_password',2,'2012-09-13 02:53:10','2012-09-28 02:14:43',9,19);
INSERT INTO `authority_modulefield` VALUES (21,'管理端口','manage_port',4,'2012-09-13 02:53:51','2012-09-28 02:15:23',9,21);
INSERT INTO `authority_modulefield` VALUES (23,'子网掩码','ipMask',1,'2012-09-13 02:54:27','2012-09-19 07:25:31',7,23);
INSERT INTO `authority_modulefield` VALUES (26,'默认网关','gateway',2,'2012-09-13 05:45:20','2012-09-19 07:14:05',3,6);
INSERT INTO `authority_modulefield` VALUES (28,'联系方式','phone',3,'2012-09-19 07:13:02','2012-09-19 07:13:02',2,27);
INSERT INTO `authority_modulefield` VALUES (29,'本地DNS1','ldns1',3,'2012-09-19 07:14:48','2012-09-19 07:14:48',3,28);
INSERT INTO `authority_modulefield` VALUES (30,'本地DNS2','ldns2',4,'2012-09-19 07:15:15','2012-09-19 07:15:15',3,29);
INSERT INTO `authority_modulefield` VALUES (31,'售后编号','service_no',2,'2012-09-19 07:17:01','2012-09-19 07:17:01',5,30);
INSERT INTO `authority_modulefield` VALUES (32,'采购时间','buy_time',3,'2012-09-19 07:17:47','2012-09-19 07:17:47',5,31);
INSERT INTO `authority_modulefield` VALUES (33,'保修期限','deadline',4,'2012-09-19 07:19:05','2012-09-19 07:19:05',5,32);
INSERT INTO `authority_modulefield` VALUES (34,'管理IP','manage_ip',3,'2012-09-19 07:21:59','2012-09-19 07:21:59',6,33);
INSERT INTO `authority_modulefield` VALUES (35,'管理端口','manage_port',4,'2012-09-19 07:22:30','2012-09-19 07:22:30',6,34);
INSERT INTO `authority_modulefield` VALUES (37,'常用电话','phone2',3,'2012-09-28 03:16:36','2012-09-28 03:16:36',1,26);
/*!40000 ALTER TABLE `authority_modulefield` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_role
#

DROP TABLE IF EXISTS `authority_role`;
CREATE TABLE `authority_role` (
  `id` int(11) NOT NULL auto_increment,
  `role_name` varchar(64) NOT NULL,
  `role_desc` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_role
#
LOCK TABLES `authority_role` WRITE;
/*!40000 ALTER TABLE `authority_role` DISABLE KEYS */;

INSERT INTO `authority_role` VALUES (9,'超级管理员','超级管理员','2012-09-19 07:42:57','2012-10-18 08:35:08');
INSERT INTO `authority_role` VALUES (10,'测试角色','测试角色','2012-09-19 07:48:52','2012-10-10 09:30:40');
INSERT INTO `authority_role` VALUES (11,'testrole','testrole','2012-09-20 02:27:20','2012-10-15 02:11:13');
INSERT INTO `authority_role` VALUES (12,'testrole2','testrole2','2012-10-10 09:30:12','2012-10-15 02:05:07');
/*!40000 ALTER TABLE `authority_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_role_buttons
#

DROP TABLE IF EXISTS `authority_role_buttons`;
CREATE TABLE `authority_role_buttons` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `button_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `role_id` (`role_id`,`button_id`),
  KEY `authority_role_buttons_40f80fc0` (`role_id`),
  KEY `authority_role_buttons_504613b2` (`button_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2803 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_role_buttons
#
LOCK TABLES `authority_role_buttons` WRITE;
/*!40000 ALTER TABLE `authority_role_buttons` DISABLE KEYS */;

INSERT INTO `authority_role_buttons` VALUES (2641,10,11);
INSERT INTO `authority_role_buttons` VALUES (2642,10,10);
INSERT INTO `authority_role_buttons` VALUES (2643,10,3);
INSERT INTO `authority_role_buttons` VALUES (2644,10,12);
INSERT INTO `authority_role_buttons` VALUES (2645,10,6);
INSERT INTO `authority_role_buttons` VALUES (2646,10,4);
INSERT INTO `authority_role_buttons` VALUES (2647,10,5);
INSERT INTO `authority_role_buttons` VALUES (2648,10,7);
INSERT INTO `authority_role_buttons` VALUES (2649,10,15);
INSERT INTO `authority_role_buttons` VALUES (2650,10,16);
INSERT INTO `authority_role_buttons` VALUES (2651,10,21);
INSERT INTO `authority_role_buttons` VALUES (2652,10,22);
INSERT INTO `authority_role_buttons` VALUES (2653,10,27);
INSERT INTO `authority_role_buttons` VALUES (2654,10,28);
INSERT INTO `authority_role_buttons` VALUES (2655,10,32);
INSERT INTO `authority_role_buttons` VALUES (2656,10,33);
INSERT INTO `authority_role_buttons` VALUES (2657,10,37);
INSERT INTO `authority_role_buttons` VALUES (2658,10,38);
INSERT INTO `authority_role_buttons` VALUES (2659,10,48);
INSERT INTO `authority_role_buttons` VALUES (2660,10,49);
INSERT INTO `authority_role_buttons` VALUES (2661,10,50);
INSERT INTO `authority_role_buttons` VALUES (2662,10,51);
INSERT INTO `authority_role_buttons` VALUES (2738,12,27);
INSERT INTO `authority_role_buttons` VALUES (2739,12,28);
INSERT INTO `authority_role_buttons` VALUES (2740,12,42);
INSERT INTO `authority_role_buttons` VALUES (2741,12,48);
INSERT INTO `authority_role_buttons` VALUES (2742,11,6);
INSERT INTO `authority_role_buttons` VALUES (2743,11,4);
INSERT INTO `authority_role_buttons` VALUES (2744,11,5);
INSERT INTO `authority_role_buttons` VALUES (2745,11,7);
INSERT INTO `authority_role_buttons` VALUES (2746,11,8);
INSERT INTO `authority_role_buttons` VALUES (2747,11,32);
INSERT INTO `authority_role_buttons` VALUES (2748,11,55);
INSERT INTO `authority_role_buttons` VALUES (2749,9,11);
INSERT INTO `authority_role_buttons` VALUES (2750,9,10);
INSERT INTO `authority_role_buttons` VALUES (2751,9,3);
INSERT INTO `authority_role_buttons` VALUES (2752,9,12);
INSERT INTO `authority_role_buttons` VALUES (2753,9,13);
INSERT INTO `authority_role_buttons` VALUES (2754,9,14);
INSERT INTO `authority_role_buttons` VALUES (2755,9,6);
INSERT INTO `authority_role_buttons` VALUES (2756,9,4);
INSERT INTO `authority_role_buttons` VALUES (2757,9,5);
INSERT INTO `authority_role_buttons` VALUES (2758,9,7);
INSERT INTO `authority_role_buttons` VALUES (2759,9,8);
INSERT INTO `authority_role_buttons` VALUES (2760,9,9);
INSERT INTO `authority_role_buttons` VALUES (2761,9,15);
INSERT INTO `authority_role_buttons` VALUES (2762,9,16);
INSERT INTO `authority_role_buttons` VALUES (2763,9,17);
INSERT INTO `authority_role_buttons` VALUES (2764,9,18);
INSERT INTO `authority_role_buttons` VALUES (2765,9,19);
INSERT INTO `authority_role_buttons` VALUES (2766,9,20);
INSERT INTO `authority_role_buttons` VALUES (2767,9,21);
INSERT INTO `authority_role_buttons` VALUES (2768,9,22);
INSERT INTO `authority_role_buttons` VALUES (2769,9,23);
INSERT INTO `authority_role_buttons` VALUES (2770,9,24);
INSERT INTO `authority_role_buttons` VALUES (2771,9,25);
INSERT INTO `authority_role_buttons` VALUES (2772,9,26);
INSERT INTO `authority_role_buttons` VALUES (2773,9,27);
INSERT INTO `authority_role_buttons` VALUES (2774,9,28);
INSERT INTO `authority_role_buttons` VALUES (2775,9,29);
INSERT INTO `authority_role_buttons` VALUES (2776,9,30);
INSERT INTO `authority_role_buttons` VALUES (2777,9,53);
INSERT INTO `authority_role_buttons` VALUES (2778,9,32);
INSERT INTO `authority_role_buttons` VALUES (2779,9,33);
INSERT INTO `authority_role_buttons` VALUES (2780,9,34);
INSERT INTO `authority_role_buttons` VALUES (2781,9,35);
INSERT INTO `authority_role_buttons` VALUES (2782,9,36);
INSERT INTO `authority_role_buttons` VALUES (2783,9,37);
INSERT INTO `authority_role_buttons` VALUES (2784,9,38);
INSERT INTO `authority_role_buttons` VALUES (2785,9,39);
INSERT INTO `authority_role_buttons` VALUES (2786,9,40);
INSERT INTO `authority_role_buttons` VALUES (2787,9,41);
INSERT INTO `authority_role_buttons` VALUES (2788,9,54);
INSERT INTO `authority_role_buttons` VALUES (2789,9,42);
INSERT INTO `authority_role_buttons` VALUES (2790,9,45);
INSERT INTO `authority_role_buttons` VALUES (2791,9,46);
INSERT INTO `authority_role_buttons` VALUES (2792,9,47);
INSERT INTO `authority_role_buttons` VALUES (2793,9,55);
INSERT INTO `authority_role_buttons` VALUES (2794,9,56);
INSERT INTO `authority_role_buttons` VALUES (2795,9,57);
INSERT INTO `authority_role_buttons` VALUES (2796,9,58);
INSERT INTO `authority_role_buttons` VALUES (2797,9,48);
INSERT INTO `authority_role_buttons` VALUES (2798,9,49);
INSERT INTO `authority_role_buttons` VALUES (2799,9,50);
INSERT INTO `authority_role_buttons` VALUES (2800,9,51);
INSERT INTO `authority_role_buttons` VALUES (2801,9,52);
INSERT INTO `authority_role_buttons` VALUES (2802,9,43);
/*!40000 ALTER TABLE `authority_role_buttons` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_role_modulefields
#

DROP TABLE IF EXISTS `authority_role_modulefields`;
CREATE TABLE `authority_role_modulefields` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `modulefield_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `role_id` (`role_id`,`modulefield_id`),
  KEY `authority_role_modulefields_40f80fc0` (`role_id`),
  KEY `authority_role_modulefields_4bc74309` (`modulefield_id`)
) ENGINE=InnoDB AUTO_INCREMENT=678 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_role_modulefields
#
LOCK TABLES `authority_role_modulefields` WRITE;
/*!40000 ALTER TABLE `authority_role_modulefields` DISABLE KEYS */;

INSERT INTO `authority_role_modulefields` VALUES (599,10,2);
INSERT INTO `authority_role_modulefields` VALUES (600,10,3);
INSERT INTO `authority_role_modulefields` VALUES (648,12,23);
INSERT INTO `authority_role_modulefields` VALUES (649,11,3);
INSERT INTO `authority_role_modulefields` VALUES (650,11,4);
INSERT INTO `authority_role_modulefields` VALUES (651,11,28);
INSERT INTO `authority_role_modulefields` VALUES (652,9,2);
INSERT INTO `authority_role_modulefields` VALUES (653,9,1);
INSERT INTO `authority_role_modulefields` VALUES (654,9,37);
INSERT INTO `authority_role_modulefields` VALUES (655,9,3);
INSERT INTO `authority_role_modulefields` VALUES (656,9,4);
INSERT INTO `authority_role_modulefields` VALUES (657,9,28);
INSERT INTO `authority_role_modulefields` VALUES (658,9,5);
INSERT INTO `authority_role_modulefields` VALUES (659,9,26);
INSERT INTO `authority_role_modulefields` VALUES (660,9,29);
INSERT INTO `authority_role_modulefields` VALUES (661,9,30);
INSERT INTO `authority_role_modulefields` VALUES (662,9,7);
INSERT INTO `authority_role_modulefields` VALUES (663,9,8);
INSERT INTO `authority_role_modulefields` VALUES (664,9,9);
INSERT INTO `authority_role_modulefields` VALUES (665,9,10);
INSERT INTO `authority_role_modulefields` VALUES (666,9,12);
INSERT INTO `authority_role_modulefields` VALUES (667,9,31);
INSERT INTO `authority_role_modulefields` VALUES (668,9,32);
INSERT INTO `authority_role_modulefields` VALUES (669,9,33);
INSERT INTO `authority_role_modulefields` VALUES (670,9,16);
INSERT INTO `authority_role_modulefields` VALUES (671,9,17);
INSERT INTO `authority_role_modulefields` VALUES (672,9,34);
INSERT INTO `authority_role_modulefields` VALUES (673,9,35);
INSERT INTO `authority_role_modulefields` VALUES (674,9,18);
INSERT INTO `authority_role_modulefields` VALUES (675,9,19);
INSERT INTO `authority_role_modulefields` VALUES (676,9,21);
INSERT INTO `authority_role_modulefields` VALUES (677,9,23);
/*!40000 ALTER TABLE `authority_role_modulefields` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_role_modules
#

DROP TABLE IF EXISTS `authority_role_modules`;
CREATE TABLE `authority_role_modules` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `role_id` (`role_id`,`module_id`),
  KEY `authority_role_modules_40f80fc0` (`role_id`),
  KEY `authority_role_modules_ac126a2` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1228 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_role_modules
#
LOCK TABLES `authority_role_modules` WRITE;
/*!40000 ALTER TABLE `authority_role_modules` DISABLE KEYS */;

INSERT INTO `authority_role_modules` VALUES (1166,10,1);
INSERT INTO `authority_role_modules` VALUES (1167,10,2);
INSERT INTO `authority_role_modules` VALUES (1168,10,3);
INSERT INTO `authority_role_modules` VALUES (1169,10,4);
INSERT INTO `authority_role_modules` VALUES (1170,10,5);
INSERT INTO `authority_role_modules` VALUES (1171,10,6);
INSERT INTO `authority_role_modules` VALUES (1172,10,9);
INSERT INTO `authority_role_modules` VALUES (1173,10,7);
INSERT INTO `authority_role_modules` VALUES (1174,10,10);
INSERT INTO `authority_role_modules` VALUES (1175,10,12);
INSERT INTO `authority_role_modules` VALUES (1176,10,8);
INSERT INTO `authority_role_modules` VALUES (1208,12,5);
INSERT INTO `authority_role_modules` VALUES (1209,12,7);
INSERT INTO `authority_role_modules` VALUES (1210,12,12);
INSERT INTO `authority_role_modules` VALUES (1211,11,2);
INSERT INTO `authority_role_modules` VALUES (1212,11,6);
INSERT INTO `authority_role_modules` VALUES (1213,11,13);
INSERT INTO `authority_role_modules` VALUES (1214,9,1);
INSERT INTO `authority_role_modules` VALUES (1215,9,2);
INSERT INTO `authority_role_modules` VALUES (1216,9,3);
INSERT INTO `authority_role_modules` VALUES (1217,9,4);
INSERT INTO `authority_role_modules` VALUES (1218,9,5);
INSERT INTO `authority_role_modules` VALUES (1219,9,6);
INSERT INTO `authority_role_modules` VALUES (1220,9,9);
INSERT INTO `authority_role_modules` VALUES (1221,9,7);
INSERT INTO `authority_role_modules` VALUES (1222,9,10);
INSERT INTO `authority_role_modules` VALUES (1223,9,13);
INSERT INTO `authority_role_modules` VALUES (1224,9,14);
INSERT INTO `authority_role_modules` VALUES (1225,9,12);
INSERT INTO `authority_role_modules` VALUES (1226,9,11);
INSERT INTO `authority_role_modules` VALUES (1227,9,8);
/*!40000 ALTER TABLE `authority_role_modules` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_role_users
#

DROP TABLE IF EXISTS `authority_role_users`;
CREATE TABLE `authority_role_users` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `role_id` (`role_id`,`user_id`),
  KEY `authority_role_users_40f80fc0` (`role_id`),
  KEY `authority_role_users_403f60f` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_role_users
#
LOCK TABLES `authority_role_users` WRITE;
/*!40000 ALTER TABLE `authority_role_users` DISABLE KEYS */;

INSERT INTO `authority_role_users` VALUES (256,10,1);
INSERT INTO `authority_role_users` VALUES (272,12,2);
INSERT INTO `authority_role_users` VALUES (273,12,3);
INSERT INTO `authority_role_users` VALUES (274,11,1);
INSERT INTO `authority_role_users` VALUES (275,11,2);
INSERT INTO `authority_role_users` VALUES (277,9,1);
INSERT INTO `authority_role_users` VALUES (278,9,4);
/*!40000 ALTER TABLE `authority_role_users` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table authority_table
#

DROP TABLE IF EXISTS `authority_table`;
CREATE TABLE `authority_table` (
  `id` int(11) NOT NULL auto_increment,
  `table_name` varchar(64) NOT NULL,
  `table_desc` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Dumping data for table authority_table
#
LOCK TABLES `authority_table` WRITE;
/*!40000 ALTER TABLE `authority_table` DISABLE KEYS */;

INSERT INTO `authority_table` VALUES (1,'运营商表','运营商表','2012-09-05 01:39:30','2012-09-05 01:39:30');
INSERT INTO `authority_table` VALUES (2,'机房表','机房表','2012-09-13 01:51:37','2012-09-13 01:51:37');
INSERT INTO `authority_table` VALUES (3,'机房网络表','机房网络表','2012-09-13 01:52:25','2012-09-13 01:52:25');
INSERT INTO `authority_table` VALUES (4,'机架表','机架表','2012-09-13 01:52:38','2012-09-13 01:52:38');
INSERT INTO `authority_table` VALUES (5,'设备表','设备表','2012-09-13 01:52:50','2012-09-13 01:52:50');
INSERT INTO `authority_table` VALUES (6,'服务器基本信息表','服务器基本信息表','2012-09-13 01:53:50','2012-09-13 01:53:50');
INSERT INTO `authority_table` VALUES (7,'虚拟机表','虚拟机表','2012-09-13 01:54:07','2012-09-13 02:16:15');
INSERT INTO `authority_table` VALUES (8,'IP地址表','IP地址表','2012-09-13 01:54:43','2012-09-13 02:16:31');
INSERT INTO `authority_table` VALUES (9,'日志表','日志表','2012-09-13 01:55:46','2012-09-13 01:55:46');
INSERT INTO `authority_table` VALUES (10,'申请资源表','申请资源表','2012-09-19 05:36:08','2012-09-19 05:36:08');
/*!40000 ALTER TABLE `authority_table` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_admin_log
#

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table django_admin_log
#
LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_content_type
#

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Dumping data for table django_content_type
#
LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission');
INSERT INTO `django_content_type` VALUES (2,'group','auth','group');
INSERT INTO `django_content_type` VALUES (3,'user','auth','user');
INSERT INTO `django_content_type` VALUES (4,'content type','contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (5,'session','sessions','session');
INSERT INTO `django_content_type` VALUES (6,'site','sites','site');
INSERT INTO `django_content_type` VALUES (7,'log entry','admin','logentry');
INSERT INTO `django_content_type` VALUES (8,'user profile','account','userprofile');
INSERT INTO `django_content_type` VALUES (9,'isp model','isp','ispmodel');
INSERT INTO `django_content_type` VALUES (10,'noc info','nocinfo','nocinfo');
INSERT INTO `django_content_type` VALUES (11,'noc net info','nocnetinfo','nocnetinfo');
INSERT INTO `django_content_type` VALUES (12,'rack','rack','rack');
INSERT INTO `django_content_type` VALUES (13,'equipment','equipment','equipment');
INSERT INTO `django_content_type` VALUES (14,'server conf','serverconf','serverconf');
INSERT INTO `django_content_type` VALUES (15,'cpu','serverconf','cpu');
INSERT INTO `django_content_type` VALUES (16,'memory','serverconf','memory');
INSERT INTO `django_content_type` VALUES (17,'disk','serverconf','disk');
INSERT INTO `django_content_type` VALUES (18,'net card','serverconf','netcard');
INSERT INTO `django_content_type` VALUES (19,'raid card','serverconf','raidcard');
INSERT INTO `django_content_type` VALUES (20,'manage card','serverconf','managecard');
INSERT INTO `django_content_type` VALUES (21,'app manage','serverconf','appmanage');
INSERT INTO `django_content_type` VALUES (22,'basic info','serverconf','basicinfo');
INSERT INTO `django_content_type` VALUES (23,'virtual machine','serverconf','virtualmachine');
INSERT INTO `django_content_type` VALUES (24,'ip model','ippool','ipmodel');
INSERT INTO `django_content_type` VALUES (25,'log','log','log');
INSERT INTO `django_content_type` VALUES (26,'table','authority','table');
INSERT INTO `django_content_type` VALUES (27,'field','authority','field');
INSERT INTO `django_content_type` VALUES (28,'module','authority','module');
INSERT INTO `django_content_type` VALUES (30,'button','authority','button');
INSERT INTO `django_content_type` VALUES (31,'role','authority','role');
INSERT INTO `django_content_type` VALUES (32,'module field','authority','modulefield');
INSERT INTO `django_content_type` VALUES (33,'apply resource','applyresource','applyresource');
INSERT INTO `django_content_type` VALUES (34,'organization','organization','organization');
INSERT INTO `django_content_type` VALUES (35,'ldap conf','dynamicconf','ldapconf');
INSERT INTO `django_content_type` VALUES (36,'open stack conf','dynamicconf','openstackconf');
INSERT INTO `django_content_type` VALUES (37,'a8 conf','dynamicconf','a8conf');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_session
#

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table django_session
#
LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` VALUES ('039019b18a582a04c1df29c2f942f3c5','ODk0ODA2M2ZlN2FmOThkYzc3ZTRhYTFmNDgzMjQyMDliNzVjMDZlZTqAAn1xAShVBHJvbGVjZGph\nbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVsX3VucGlja2xlCnECY2F1dGhvcml0eS5tb2RlbHMKUm9s\nZQpxA11jZGphbmdvLmRiLm1vZGVscy5iYXNlCnNpbXBsZV9jbGFzc19mYWN0b3J5CnEEh1JxBX1x\nBihVCnN0YXJ0X3RpbWVxB2NkYXRldGltZQpkYXRldGltZQpxCFUKB9wJBQ4QKwAAAGNkamFuZ28u\ndXRpbHMudGltZXpvbmUKVVRDCnEJKVJxCoZScQtVBl9zdGF0ZXEMY2RqYW5nby5kYi5tb2RlbHMu\nYmFzZQpNb2RlbFN0YXRlCnENKYFxDn1xDyhVBmFkZGluZ3EQiVUCZGJxEVUHZGVmYXVsdHESdWJV\nCXJvbGVfZGVzY3ETWA8AAADotoXnuqfnrqHnkIblkZhVCXJvbGVfbmFtZXEUWA8AAADotoXnuqfn\nrqHnkIblkZhVCGVuZF90aW1lcRVoCFUKB9wJEQcCMwAAAGgKhlJxFlUCaWRxF4oBBHViVRJfYXV0\naF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5k\ncRhVDV9hdXRoX3VzZXJfaWSKAQF1Lg==\n','2012-10-01 10:31:27');
INSERT INTO `django_session` VALUES ('0fbcbfc64dbfc7a382efb73bd4481832','ODI2NTEzMjc0NDkzYTBhMWU0ZGI3Y2E2OTlmNGNjMjM2YTVkZGE5MTqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWAoAAABub2NuZXRpbmZvcQdYBAAAAHJhY2txCFgJAAAAZXF1aXBtZW50cQlYCgAAAHNl\ncnZlcmNvbmZxClgOAAAAdmlydHVhbG1hY2hpbmVxC1gGAAAAaXBwb29scQxYDQAAAGFwcGx5cmVz\nb3VyY2VxDVgMAAAAb3JnYW5pemF0aW9ucQ5YBwAAAGFjY291bnRxD1gJAAAAYXV0aG9yaXR5cRBY\nAwAAAGxvZ3ERZVUSX2F1dGhfdXNlcl9iYWNrZW5kcRJVKWRqYW5nby5jb250cmliLmF1dGguYmFj\na2VuZHMuTW9kZWxCYWNrZW5kcRNVFWF1dGhvcml0eV9saXN0X2J1dHRvbnEUXXEVKFgJAAAAaXNw\nc2VsZWN0cRZYBgAAAGlzcGFkZHEXWAcAAABpc3BlZGl0cRhYCQAAAGlzcGRlbGV0ZXEZWAkAAABp\nc3BpbXBvcnRxGlgJAAAAaXNwZXhwb3J0cRtYDQAAAG5vY2luZm9zZWxlY3RxHFgKAAAAbm9jaW5m\nb2FkZHEdWAsAAABub2NpbmZvZWRpdHEeWA0AAABub2NpbmZvZGVsZXRlcR9YDQAAAG5vY2luZm9p\nbXBvcnRxIFgNAAAAbm9jaW5mb2V4cG9ydHEhWBAAAABub2NuZXRpbmZvc2VsZWN0cSJYDQAAAG5v\nY25ldGluZm9hZGRxI1gOAAAAbm9jbmV0aW5mb2VkaXRxJFgQAAAAbm9jbmV0aW5mb2RlbGV0ZXEl\nWBAAAABub2NuZXRpbmZvaW1wb3J0cSZYEAAAAG5vY25ldGluZm9leHBvcnRxJ1gKAAAAcmFja3Nl\nbGVjdHEoWAcAAAByYWNrYWRkcSlYCAAAAHJhY2tlZGl0cSpYCgAAAHJhY2tkZWxldGVxK1gKAAAA\ncmFja2ltcG9ydHEsWAoAAAByYWNrZXhwb3J0cS1YDwAAAGVxdWlwbWVudHNlbGVjdHEuWAwAAABl\ncXVpcG1lbnRhZGRxL1gNAAAAZXF1aXBtZW50ZWRpdHEwWA8AAABlcXVpcG1lbnRkZWxldGVxMVgO\nAAAAZXF1aXBtZW50c3VwZXJxMlgQAAAAc2VydmVyY29uZnNlbGVjdHEzWA0AAABzZXJ2ZXJjb25m\nYWRkcTRYDgAAAHNlcnZlcmNvbmZlZGl0cTVYEAAAAHNlcnZlcmNvbmZkZWxldGVxNlgQAAAAc2Vy\ndmVyY29uZmltcG9ydHE3WBQAAAB2aXJ0dWFsbWFjaGluZXNlbGVjdHE4WBEAAAB2aXJ0dWFsbWFj\naGluZWFkZHE5WBIAAAB2aXJ0dWFsbWFjaGluZWVkaXRxOlgUAAAAdmlydHVhbG1hY2hpbmVkZWxl\ndGVxO1gUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRxPFgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnE9\nWAwAAABpcHBvb2xzZWxlY3RxPlgTAAAAYXBwbHlyZXNvdXJjZXNlbGVjdHE/WBIAAABhcHBseXJl\nc291cmNlYXBwbHlxQFgTAAAAYXBwbHlyZXNvdXJjZWRldGFpbHFBWBIAAABvcmdhbml6YXRpb25z\nZWxlY3RxQlgPAAAAb3JnYW5pemF0aW9uYWRkcUNYEAAAAG9yZ2FuaXphdGlvbmVkaXRxRFgSAAAA\nb3JnYW5pemF0aW9uZGVsZXRlcUVYDQAAAGFjY291bnRzZWxlY3RxRlgKAAAAYWNjb3VudGFkZHFH\nWAsAAABhY2NvdW50ZWRpdHFIWA0AAABhY2NvdW50ZGVsZXRlcUlYEAAAAGFjY291bnRzdXBlcnVz\nZXJxSlgJAAAAbG9nc2VsZWN0cUtlVQRyb2xlcUxjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVs\nX3VucGlja2xlCnFNY2F1dGhvcml0eS5tb2RlbHMKUm9sZQpxTl1jZGphbmdvLmRiLm1vZGVscy5i\nYXNlCnNpbXBsZV9jbGFzc19mYWN0b3J5CnFPh1JxUH1xUShVCnN0YXJ0X3RpbWVxUmNkYXRldGlt\nZQpkYXRldGltZQpxU1UKB9wJEwcqOQAAAGNweXR6Cl9VVEMKcVQpUnFVhlJxVlUGX3N0YXRlcVdj\nZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcVgpgXFZfXFaKFUGYWRkaW5ncVuJVQJk\nYnFcVQdkZWZhdWx0cV11YlUJcm9sZV9kZXNjcV5YDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9u\nYW1lcV9YDwAAAOi2hee6p+euoeeQhuWRmFUIZW5kX3RpbWVxYGhTVQoH3AkcBiYlAAAAaFWGUnFh\nVQJpZHFiigEJdWJVGmF1dGhvcml0eV9saXN0X21vZHVsZWZpZWxkcWNdcWQoWAoAAABpc3BhZGRy\nZXNzcWVYCQAAAGlzcHBob25lMXFmWAkAAABpc3BwaG9uZTJxZ1gOAAAAbm9jaW5mb2FkZHJlc3Nx\naFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFpWAwAAABub2NpbmZvcGhvbmVxalgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxa1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxbFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncW1YDwAAAG5vY25ldGluZm9sZG5zMnFuWA0AAAByYWNrcmF0ZWRfYW1wcW9YDAAAAHJhY2t1c2Vk\nX2FtcHFwWAkAAAByYWNrc3BhY2VxcVgOAAAAcmFja2xlZnRfc3BhY2VxclgRAAAAZXF1aXBtZW50\nc2VxdWVuY2Vxc1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3F0WBEAAABlcXVpcG1lbnRidXlfdGlt\nZXF1WBEAAABlcXVpcG1lbnRkZWFkbGluZXF2WBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nd1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHF4WBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncXlYFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHF6WBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cXtYHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcXxYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcX1YGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxflgMAAAAaXBw\nb29saXBNYXNrcX9ldS4=\n','2012-10-24 09:07:55');
INSERT INTO `django_session` VALUES ('12a16917bbafd0067dd1c5395ee580ec','YjExYTkxMDY0NGExN2ViZTRkYzRjNGY0MGZiYzYwMTNmZTY0ZTdhYjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxAnUu\n','2012-09-26 09:51:42');
INSERT INTO `django_session` VALUES ('1391a443785175b793815985dd88b15b','MzA1NTZiNDA5OWQxYTRkZjc5YzM5NjVmZmFiMGZlYjNjZWIyNGY2NTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-23 06:18:06');
INSERT INTO `django_session` VALUES ('223393798c2dd6ee60d0638fe5232294','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 06:24:25');
INSERT INTO `django_session` VALUES ('2af414571a45186c885e01f277612ba6','MGQyZjJiMDRlMGRkZjc3NDgyMDNkYzJiZmExYTVjOTJjM2E1N2EzOTqAAn1xAShVBHJvbGVxAmNk\namFuZ28uZGIubW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQNjYXV0aG9yaXR5Lm1vZGVscwpS\nb2xlCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEG\nfXEHKFUKc3RhcnRfdGltZXEIY2RhdGV0aW1lCmRhdGV0aW1lCnEJVQoH3AkFDhArAAAAY2RqYW5n\nby51dGlscy50aW1lem9uZQpVVEMKcQopUnELhlJxDFUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVs\ncy5iYXNlCk1vZGVsU3RhdGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1\nYlUJcm9sZV9kZXNjcRRYDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9uYW1lcRVYDwAAAOi2hee6\np+euoeeQhuWRmFUIZW5kX3RpbWVxFmgJVQoH3AkRBwIzAAAAaAuGUnEXVQJpZHEYigEEdWJVEl9h\ndXRoX3VzZXJfYmFja2VuZHEZVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHEaVQ1fYXV0aF91c2VyX2lkcRuKAQF1Lg==\n','2012-10-02 10:23:45');
INSERT INTO `django_session` VALUES ('2af6396e35f2d91e3507faf6c89bdc5e','NDU4YTZhNzAxNWE4YjIzZjg1ODZmMWM2OWVkZjc1NzM5MzJkN2ExOTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgMAAAAaXBwb29sc2VsZWN0cQRYCQAAAGlzcHNlbGVjdHEFWAYA\nAABpc3BhZGRxBlgHAAAAaXNwZWRpdHEHWAkAAABpc3BkZWxldGVxCFgJAAAAaXNwaW1wb3J0cQlY\nDQAAAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0A\nAABub2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgQAAAAbm9jbmV0aW5mb3NlbGVj\ndHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0cRFYEAAAAG5vY25ldGlu\nZm9leHBvcnRxElgKAAAAcmFja3NlbGVjdHETWAcAAAByYWNrYWRkcRRYDwAAAGVxdWlwbWVudHNl\nbGVjdHEVWAwAAABlcXVpcG1lbnRhZGRxFlgQAAAAc2VydmVyY29uZnNlbGVjdHEXWA0AAABzZXJ2\nZXJjb25mYWRkcRhYDgAAAHNlcnZlcmNvbmZlZGl0cRlYFAAAAHZpcnR1YWxtYWNoaW5lc2VsZWN0\ncRpYEwAAAGFwcGx5cmVzb3VyY2VzZWxlY3RxG1gSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cRxYEwAA\nAGFwcGx5cmVzb3VyY2VkZXRhaWxxHVgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cR5YDwAAAG9yZ2Fu\naXphdGlvbmFkZHEfWBAAAABvcmdhbml6YXRpb25lZGl0cSBYEgAAAG9yZ2FuaXphdGlvbmRlbGV0\nZXEhWA0AAABhY2NvdW50c2VsZWN0cSJYCgAAAGFjY291bnRhZGRxI1gLAAAAYWNjb3VudGVkaXRx\nJFgNAAAAYWNjb3VudGRlbGV0ZXElWBAAAABhY2NvdW50c3VwZXJ1c2VycSZYCQAAAGxvZ3NlbGVj\ndHEnZVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcShdcSkoWAYAAABpcHBvb2xxKlgDAAAAaXNwcStY\nBwAAAG5vY2luZm9xLFgKAAAAbm9jbmV0aW5mb3EtWAQAAAByYWNrcS5YCQAAAGVxdWlwbWVudHEv\nWAoAAABzZXJ2ZXJjb25mcTBYDgAAAHZpcnR1YWxtYWNoaW5lcTFYDQAAAGFwcGx5cmVzb3VyY2Vx\nMlgMAAAAb3JnYW5pemF0aW9ucTNYBwAAAGFjY291bnRxNFgJAAAAYXV0aG9yaXR5cTVYAwAAAGxv\nZ3E2ZVUSX2F1dGhfdXNlcl9iYWNrZW5kcTdVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMu\nTW9kZWxCYWNrZW5kcThVDV9hdXRoX3VzZXJfaWRxOYoBAlUaYXV0aG9yaXR5X2xpc3RfbW9kdWxl\nZmllbGRxOl1xOyhYDAAAAGlwcG9vbGlwTWFza3E8WAoAAABpc3BhZGRyZXNzcT1YCQAAAGlzcHBo\nb25lMXE+WAkAAABpc3BwaG9uZTJxP1gOAAAAbm9jaW5mb2FkZHJlc3NxQFgTAAAAbm9jaW5mb25v\nY191c2VybmFtZXFBWAwAAABub2NpbmZvcGhvbmVxQlgRAAAAbm9jbmV0aW5mb2lwX21hcmtxQ1gR\nAAAAbm9jbmV0aW5mb2dhdGV3YXlxRFgPAAAAbm9jbmV0aW5mb2xkbnMxcUVYDwAAAG5vY25ldGlu\nZm9sZG5zMnFGWA0AAAByYWNrcmF0ZWRfYW1wcUdYDAAAAHJhY2t1c2VkX2FtcHFIWAkAAAByYWNr\nc3BhY2VxSVgOAAAAcmFja2xlZnRfc3BhY2VxSlgRAAAAZXF1aXBtZW50c2VxdWVuY2VxS1gTAAAA\nZXF1aXBtZW50c2VydmljZV9ub3FMWBEAAABlcXVpcG1lbnRidXlfdGltZXFNWBEAAABlcXVpcG1l\nbnRkZWFkbGluZXFOWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRxT1gZAAAAc2VydmVyY29u\nZm1hbmFnZV9wYXNzd29yZHFQWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lwcVFYFQAAAHNlcnZlcmNv\nbmZtYW5hZ2VfcG9ydHFSWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cVNYHQAAAHZp\ncnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcVRYFwAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX2lw\ncVVYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxVmV1Lg==\n','2012-10-24 09:42:53');
INSERT INTO `django_session` VALUES ('2c26f98ed77e778d9a0119c6c4169f3f','YjY3MzMzMDM3M2M1ZjJlYmU4ZTBmMThjM2Q1ZGFjMmRiNzcwMTRiMDqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAsAAABkeW5hbWljY29uZnFEWAcAAABhY2NvdW50cUVYCQAAAGF1dGhvcml0eXFGWAMAAABs\nb2dxR2VVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRy\naWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxSFUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmll\nbGRdcUkoWAoAAABpc3BhZGRyZXNzcUpYCQAAAGlzcHBob25lMXFLWAkAAABpc3BwaG9uZTJxTFgO\nAAAAbm9jaW5mb2FkZHJlc3NxTVgTAAAAbm9jaW5mb25vY191c2VybmFtZXFOWAwAAABub2NpbmZv\ncGhvbmVxT1gRAAAAbm9jbmV0aW5mb2lwX21hcmtxUFgRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUVgP\nAAAAbm9jbmV0aW5mb2xkbnMxcVJYDwAAAG5vY25ldGluZm9sZG5zMnFTWA0AAAByYWNrcmF0ZWRf\nYW1wcVRYDAAAAHJhY2t1c2VkX2FtcHFVWAkAAAByYWNrc3BhY2VxVlgOAAAAcmFja2xlZnRfc3Bh\nY2VxV1gRAAAAZXF1aXBtZW50c2VxdWVuY2VxWFgTAAAAZXF1aXBtZW50c2VydmljZV9ub3FZWBEA\nAABlcXVpcG1lbnRidXlfdGltZXFaWBEAAABlcXVpcG1lbnRkZWFkbGluZXFbWBgAAABzZXJ2ZXJj\nb25mbWFuYWdlX2FjY291bnRxXFgZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFdWBMAAABz\nZXJ2ZXJjb25mbWFuYWdlX2lwcV5YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFfWBwAAAB2aXJ0\ndWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cWBYHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3\nb3JkcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBwb29saXBNYXNrcWNl\ndS4=\n','2012-11-02 09:20:30');
INSERT INTO `django_session` VALUES ('2cbe570787fe9bfc1128e0a3a75d178d','N2FmMWU4MTQxMGUxODBjNTU5YmQ5ZDdjZGE3ZmYwNWM0OWI3ZjZmOTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAcAAABhY2NvdW50cURYCQAAAGF1dGhvcml0eXFFWAMAAABsb2dxRmVVEl9hdXRoX3VzZXJf\nYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxR1UNX2F1\ndGhfdXNlcl9pZIoBAVUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmllbGRdcUgoWAoAAABpc3BhZGRy\nZXNzcUlYCQAAAGlzcHBob25lMXFKWAkAAABpc3BwaG9uZTJxS1gOAAAAbm9jaW5mb2FkZHJlc3Nx\nTFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFNWAwAAABub2NpbmZvcGhvbmVxTlgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxT1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncVFYDwAAAG5vY25ldGluZm9sZG5zMnFSWA0AAAByYWNrcmF0ZWRfYW1wcVNYDAAAAHJhY2t1c2Vk\nX2FtcHFUWAkAAAByYWNrc3BhY2VxVVgOAAAAcmFja2xlZnRfc3BhY2VxVlgRAAAAZXF1aXBtZW50\nc2VxdWVuY2VxV1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3FYWBEAAABlcXVpcG1lbnRidXlfdGlt\nZXFZWBEAAABlcXVpcG1lbnRkZWFkbGluZXFaWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nW1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFcWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncV1YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFeWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cV9YHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcWBYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBw\nb29saXBNYXNrcWNldS4=\n','2012-10-25 02:48:50');
INSERT INTO `django_session` VALUES ('3089c55b005c276147d24030b3403806','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-09 10:18:53');
INSERT INTO `django_session` VALUES ('357121947168bda0379eb9953b186e91','MmVhZGMzYTY1MmY5NTEyMDY3YWRiM2JhMjc1MmRlNDQ0N2ZlNDBjMzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgPAAAAZXF1aXBtZW50c2VsZWN0cQRYDAAAAGVxdWlwbWVudGFk\nZHEFWAwAAABpcHBvb2xzZWxlY3RxBlgJAAAAaXNwc2VsZWN0cQdYBgAAAGlzcGFkZHEIWAcAAABp\nc3BlZGl0cQlYCQAAAGlzcGRlbGV0ZXEKWAkAAABpc3BpbXBvcnRxC1gNAAAAbm9jaW5mb3NlbGVj\ndHEMWAoAAABub2NpbmZvYWRkcQ1YCwAAAG5vY2luZm9lZGl0cQ5YDQAAAG5vY2luZm9kZWxldGVx\nD1gNAAAAbm9jaW5mb2ltcG9ydHEQZVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcRFdcRIoWAkAAABl\ncXVpcG1lbnRxE1gGAAAAaXBwb29scRRYCQAAAGF1dGhvcml0eXEVWAMAAABpc3BxFlgHAAAAbm9j\naW5mb3EXWAwAAABvcmdhbml6YXRpb25xGFgHAAAAYWNjb3VudHEZWAMAAABsb2dxGmVVEl9hdXRo\nX3VzZXJfYmFja2VuZHEbVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2Vu\nZHEcVQ1fYXV0aF91c2VyX2lkcR2KAQJVGmF1dGhvcml0eV9saXN0X21vZHVsZWZpZWxkcR5dcR8o\nWAwAAABpcHBvb2xpcE1hc2txIFgKAAAAaXNwYWRkcmVzc3EhWAkAAABpc3BwaG9uZTFxIlgJAAAA\naXNwcGhvbmUycSNYDgAAAG5vY2luZm9hZGRyZXNzcSRYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVx\nJVgMAAAAbm9jaW5mb3Bob25lcSZldS4=\n','2012-10-25 01:54:25');
INSERT INTO `django_session` VALUES ('366e2b6f1912355cc589feb693fde229','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-05 02:20:49');
INSERT INTO `django_session` VALUES ('39a09733bd88228f3b375752c1ed02c7','ZTBkNzQwNzBhMjQ1OGU0ZGFkY2FhNmYyY2U1YjNhYjIzYzQwNmJhNzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAcAAABhY2NvdW50cURYCQAAAGF1dGhvcml0eXFFWAMAAABsb2dxRmVVDV9hdXRoX3VzZXJf\naWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5N\nb2RlbEJhY2tlbmRxR1UaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmllbGRdcUgoWAoAAABpc3BhZGRy\nZXNzcUlYCQAAAGlzcHBob25lMXFKWAkAAABpc3BwaG9uZTJxS1gOAAAAbm9jaW5mb2FkZHJlc3Nx\nTFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFNWAwAAABub2NpbmZvcGhvbmVxTlgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxT1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncVFYDwAAAG5vY25ldGluZm9sZG5zMnFSWA0AAAByYWNrcmF0ZWRfYW1wcVNYDAAAAHJhY2t1c2Vk\nX2FtcHFUWAkAAAByYWNrc3BhY2VxVVgOAAAAcmFja2xlZnRfc3BhY2VxVlgRAAAAZXF1aXBtZW50\nc2VxdWVuY2VxV1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3FYWBEAAABlcXVpcG1lbnRidXlfdGlt\nZXFZWBEAAABlcXVpcG1lbnRkZWFkbGluZXFaWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nW1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFcWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncV1YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFeWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cV9YHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcWBYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBw\nb29saXBNYXNrcWNldS4=\n','2012-10-30 09:27:47');
INSERT INTO `django_session` VALUES ('3ada4b6444a8f3c04335f3a161f7933e','N2FmMWU4MTQxMGUxODBjNTU5YmQ5ZDdjZGE3ZmYwNWM0OWI3ZjZmOTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAcAAABhY2NvdW50cURYCQAAAGF1dGhvcml0eXFFWAMAAABsb2dxRmVVEl9hdXRoX3VzZXJf\nYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxR1UNX2F1\ndGhfdXNlcl9pZIoBAVUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmllbGRdcUgoWAoAAABpc3BhZGRy\nZXNzcUlYCQAAAGlzcHBob25lMXFKWAkAAABpc3BwaG9uZTJxS1gOAAAAbm9jaW5mb2FkZHJlc3Nx\nTFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFNWAwAAABub2NpbmZvcGhvbmVxTlgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxT1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncVFYDwAAAG5vY25ldGluZm9sZG5zMnFSWA0AAAByYWNrcmF0ZWRfYW1wcVNYDAAAAHJhY2t1c2Vk\nX2FtcHFUWAkAAAByYWNrc3BhY2VxVVgOAAAAcmFja2xlZnRfc3BhY2VxVlgRAAAAZXF1aXBtZW50\nc2VxdWVuY2VxV1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3FYWBEAAABlcXVpcG1lbnRidXlfdGlt\nZXFZWBEAAABlcXVpcG1lbnRkZWFkbGluZXFaWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nW1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFcWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncV1YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFeWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cV9YHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcWBYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBw\nb29saXBNYXNrcWNldS4=\n','2012-11-01 02:37:32');
INSERT INTO `django_session` VALUES ('3f568aa1c60c2e9bf7c290d8c1849a7a','OTdhNmVjODFkODQwZDc2MmExOGQzNGZiMmZlOTkwMWFlNGU3MWFiZjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVFWF1dGhvcml0eV9saXN0X21vZHVsZV1xAihYAwAAAGlzcHEDWAcAAABub2NpbmZv\ncQRYCgAAAG5vY25ldGluZm9xBVgEAAAAcmFja3EGWAkAAABlcXVpcG1lbnRxB1gKAAAAc2VydmVy\nY29uZnEIWA4AAAB2aXJ0dWFsbWFjaGluZXEJWAYAAABpcHBvb2xxClgNAAAAYXBwbHlyZXNvdXJj\nZXELWAwAAABvcmdhbml6YXRpb25xDFgLAAAAZHluYW1pY2NvbmZxDVgHAAAAYWNjb3VudHEOWAkA\nAABhdXRob3JpdHlxD1gDAAAAbG9ncRBlVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250\ncmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVRVhdXRob3JpdHlfbGlzdF9idXR0b25dcREo\nWAkAAABpc3BzZWxlY3RxElgGAAAAaXNwYWRkcRNYBwAAAGlzcGVkaXRxFFgJAAAAaXNwZGVsZXRl\ncRVYCQAAAGlzcGltcG9ydHEWWAkAAABpc3BleHBvcnRxF1gNAAAAbm9jaW5mb3NlbGVjdHEYWAoA\nAABub2NpbmZvYWRkcRlYCwAAAG5vY2luZm9lZGl0cRpYDQAAAG5vY2luZm9kZWxldGVxG1gNAAAA\nbm9jaW5mb2ltcG9ydHEcWA0AAABub2NpbmZvZXhwb3J0cR1YEAAAAG5vY25ldGluZm9zZWxlY3Rx\nHlgNAAAAbm9jbmV0aW5mb2FkZHEfWA4AAABub2NuZXRpbmZvZWRpdHEgWBAAAABub2NuZXRpbmZv\nZGVsZXRlcSFYEAAAAG5vY25ldGluZm9pbXBvcnRxIlgQAAAAbm9jbmV0aW5mb2V4cG9ydHEjWAoA\nAAByYWNrc2VsZWN0cSRYBwAAAHJhY2thZGRxJVgIAAAAcmFja2VkaXRxJlgKAAAAcmFja2RlbGV0\nZXEnWAoAAAByYWNraW1wb3J0cShYCgAAAHJhY2tleHBvcnRxKVgPAAAAZXF1aXBtZW50c2VsZWN0\ncSpYDAAAAGVxdWlwbWVudGFkZHErWA0AAABlcXVpcG1lbnRlZGl0cSxYDwAAAGVxdWlwbWVudGRl\nbGV0ZXEtWA4AAABlcXVpcG1lbnRzdXBlcnEuWBAAAABzZXJ2ZXJjb25mc2VsZWN0cS9YDQAAAHNl\ncnZlcmNvbmZhZGRxMFgOAAAAc2VydmVyY29uZmVkaXRxMVgQAAAAc2VydmVyY29uZmRlbGV0ZXEy\nWBAAAABzZXJ2ZXJjb25maW1wb3J0cTNYFAAAAHZpcnR1YWxtYWNoaW5lc2VsZWN0cTRYEQAAAHZp\ncnR1YWxtYWNoaW5lYWRkcTVYEgAAAHZpcnR1YWxtYWNoaW5lZWRpdHE2WBQAAAB2aXJ0dWFsbWFj\naGluZWRlbGV0ZXE3WBQAAAB2aXJ0dWFsbWFjaGluZWltcG9ydHE4WBMAAAB2aXJ0dWFsbWFjaGlu\nZXN1cGVycTlYDAAAAGlwcG9vbHNlbGVjdHE6WBMAAABhcHBseXJlc291cmNlc2VsZWN0cTtYEgAA\nAGFwcGx5cmVzb3VyY2VhcHBseXE8WBMAAABhcHBseXJlc291cmNlZGV0YWlscT1YEgAAAG9yZ2Fu\naXphdGlvbnNlbGVjdHE+WA8AAABvcmdhbml6YXRpb25hZGRxP1gQAAAAb3JnYW5pemF0aW9uZWRp\ndHFAWBIAAABvcmdhbml6YXRpb25kZWxldGVxQVgNAAAAYWNjb3VudHNlbGVjdHFCWAoAAABhY2Nv\ndW50YWRkcUNYCwAAAGFjY291bnRlZGl0cURYDQAAAGFjY291bnRkZWxldGVxRVgQAAAAYWNjb3Vu\ndHN1cGVydXNlcnFGWAkAAABsb2dzZWxlY3RxR2VVGmF1dGhvcml0eV9saXN0X21vZHVsZWZpZWxk\nXXFIKFgKAAAAaXNwYWRkcmVzc3FJWAkAAABpc3BwaG9uZTFxSlgJAAAAaXNwcGhvbmUycUtYDgAA\nAG5vY2luZm9hZGRyZXNzcUxYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxTVgMAAAAbm9jaW5mb3Bo\nb25lcU5YEQAAAG5vY25ldGluZm9pcF9tYXJrcU9YEQAAAG5vY25ldGluZm9nYXRld2F5cVBYDwAA\nAG5vY25ldGluZm9sZG5zMXFRWA8AAABub2NuZXRpbmZvbGRuczJxUlgNAAAAcmFja3JhdGVkX2Ft\ncHFTWAwAAAByYWNrdXNlZF9hbXBxVFgJAAAAcmFja3NwYWNlcVVYDgAAAHJhY2tsZWZ0X3NwYWNl\ncVZYEQAAAGVxdWlwbWVudHNlcXVlbmNlcVdYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xWFgRAAAA\nZXF1aXBtZW50YnV5X3RpbWVxWVgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxWlgYAAAAc2VydmVyY29u\nZm1hbmFnZV9hY2NvdW50cVtYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxXFgTAAAAc2Vy\ndmVyY29uZm1hbmFnZV9pcHFdWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxXlgcAAAAdmlydHVh\nbG1hY2hpbmVtYW5hZ2VfYWNjb3VudHFfWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29y\nZHFgWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0cWFYDAAAAGlwcG9vbGlwTWFza3FiZXUu\n','2012-11-05 01:43:53');
INSERT INTO `django_session` VALUES ('41bec0e39e10ca131778b87b4f6f4667','N2FmMWU4MTQxMGUxODBjNTU5YmQ5ZDdjZGE3ZmYwNWM0OWI3ZjZmOTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAcAAABhY2NvdW50cURYCQAAAGF1dGhvcml0eXFFWAMAAABsb2dxRmVVEl9hdXRoX3VzZXJf\nYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxR1UNX2F1\ndGhfdXNlcl9pZIoBAVUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmllbGRdcUgoWAoAAABpc3BhZGRy\nZXNzcUlYCQAAAGlzcHBob25lMXFKWAkAAABpc3BwaG9uZTJxS1gOAAAAbm9jaW5mb2FkZHJlc3Nx\nTFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFNWAwAAABub2NpbmZvcGhvbmVxTlgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxT1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncVFYDwAAAG5vY25ldGluZm9sZG5zMnFSWA0AAAByYWNrcmF0ZWRfYW1wcVNYDAAAAHJhY2t1c2Vk\nX2FtcHFUWAkAAAByYWNrc3BhY2VxVVgOAAAAcmFja2xlZnRfc3BhY2VxVlgRAAAAZXF1aXBtZW50\nc2VxdWVuY2VxV1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3FYWBEAAABlcXVpcG1lbnRidXlfdGlt\nZXFZWBEAAABlcXVpcG1lbnRkZWFkbGluZXFaWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nW1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFcWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncV1YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFeWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cV9YHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcWBYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBw\nb29saXBNYXNrcWNldS4=\n','2012-11-01 02:42:28');
INSERT INTO `django_session` VALUES ('49eb299cc72c8d661e66d1e7f3b25d72','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-01 08:11:09');
INSERT INTO `django_session` VALUES ('4c308bcb4d92ee3b634e46610e75bddd','ZDc2YzZhYmRkZGE3ZDQ2YTBmMjg5OTk0N2VjNGZkNzllOWFmMGRkYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n','2012-09-24 07:07:40');
INSERT INTO `django_session` VALUES ('4d93c26674db305d6a7b3f934195a983','MGQyZjJiMDRlMGRkZjc3NDgyMDNkYzJiZmExYTVjOTJjM2E1N2EzOTqAAn1xAShVBHJvbGVxAmNk\namFuZ28uZGIubW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQNjYXV0aG9yaXR5Lm1vZGVscwpS\nb2xlCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEG\nfXEHKFUKc3RhcnRfdGltZXEIY2RhdGV0aW1lCmRhdGV0aW1lCnEJVQoH3AkFDhArAAAAY2RqYW5n\nby51dGlscy50aW1lem9uZQpVVEMKcQopUnELhlJxDFUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVs\ncy5iYXNlCk1vZGVsU3RhdGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1\nYlUJcm9sZV9kZXNjcRRYDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9uYW1lcRVYDwAAAOi2hee6\np+euoeeQhuWRmFUIZW5kX3RpbWVxFmgJVQoH3AkRBwIzAAAAaAuGUnEXVQJpZHEYigEEdWJVEl9h\ndXRoX3VzZXJfYmFja2VuZHEZVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHEaVQ1fYXV0aF91c2VyX2lkcRuKAQF1Lg==\n','2012-10-01 08:55:31');
INSERT INTO `django_session` VALUES ('50299f12e8ec366a300ee247640496d2','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-31 02:26:37');
INSERT INTO `django_session` VALUES ('5095d90b1c5b8274facf2ff58ddbb727','MmZmNmE5YmY5OTYwYTYyMDAxZTJhMDM2N2IxM2M1ZDJjNDU1MzZlNjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYDQAAAG5vY2luZm9zZWxlY3RxA1gKAAAAbm9jaW5mb2FkZHEEWAsA\nAABub2NpbmZvZWRpdHEFWA0AAABub2NpbmZvZGVsZXRlcQZYDQAAAG5vY2luZm9pbXBvcnRxB1gS\nAAAAb3JnYW5pemF0aW9uc2VsZWN0cQhYDwAAAGVxdWlwbWVudHNlbGVjdHEJWAwAAABlcXVpcG1l\nbnRhZGRxClgMAAAAaXBwb29sc2VsZWN0cQtlVRVhdXRob3JpdHlfbGlzdF9tb2R1bGVdcQwoWAcA\nAABub2NpbmZvcQ1YDAAAAG9yZ2FuaXphdGlvbnEOWAkAAABlcXVpcG1lbnRxD1gGAAAAaXBwb29s\ncRBlVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9k\nZWxCYWNrZW5kcRFVDV9hdXRoX3VzZXJfaWSKAQJVGmF1dGhvcml0eV9saXN0X21vZHVsZWZpZWxk\nXXESKFgOAAAAbm9jaW5mb2FkZHJlc3NxE1gTAAAAbm9jaW5mb25vY191c2VybmFtZXEUWAwAAABu\nb2NpbmZvcGhvbmVxFVgMAAAAaXBwb29saXBNYXNrcRZldS4=\n','2012-10-25 02:06:05');
INSERT INTO `django_session` VALUES ('55a254af1b73bd38fe8ff3dc48acd8e8','MmY5OTkwNTdmODk0NTUyYjM1M2Q1YzFhMmQ4NDY2ODMwYmVhM2Y1MTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYDwAAAGVxdWlwbWVudHNlbGVjdHEDWAwAAABlcXVpcG1lbnRhZGRx\nBFgMAAAAaXBwb29sc2VsZWN0cQVYCQAAAGlzcHNlbGVjdHEGWAYAAABpc3BhZGRxB1gHAAAAaXNw\nZWRpdHEIWAkAAABpc3BkZWxldGVxCVgJAAAAaXNwaW1wb3J0cQpYDQAAAG5vY2luZm9zZWxlY3Rx\nC1gKAAAAbm9jaW5mb2FkZHEMWAsAAABub2NpbmZvZWRpdHENWA0AAABub2NpbmZvZGVsZXRlcQ5Y\nDQAAAG5vY2luZm9pbXBvcnRxD2VVFWF1dGhvcml0eV9saXN0X21vZHVsZV1xEChYCQAAAGVxdWlw\nbWVudHERWAYAAABpcHBvb2xxElgJAAAAYXV0aG9yaXR5cRNYAwAAAGlzcHEUWAcAAABub2NpbmZv\ncRVYDAAAAG9yZ2FuaXphdGlvbnEWWAcAAABhY2NvdW50cRdYAwAAAGxvZ3EYZVUSX2F1dGhfdXNl\ncl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEZVQ1f\nYXV0aF91c2VyX2lkigECVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZF1xGihYDAAAAGlwcG9v\nbGlwTWFza3EbWAoAAABpc3BhZGRyZXNzcRxYCQAAAGlzcHBob25lMXEdWAkAAABpc3BwaG9uZTJx\nHlgOAAAAbm9jaW5mb2FkZHJlc3NxH1gTAAAAbm9jaW5mb25vY191c2VybmFtZXEgWAwAAABub2Np\nbmZvcGhvbmVxIWV1Lg==\n','2012-10-24 10:50:54');
INSERT INTO `django_session` VALUES ('58f38534ece1d026c18f2fc2b92dfe92','ODI2NTEzMjc0NDkzYTBhMWU0ZGI3Y2E2OTlmNGNjMjM2YTVkZGE5MTqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWAoAAABub2NuZXRpbmZvcQdYBAAAAHJhY2txCFgJAAAAZXF1aXBtZW50cQlYCgAAAHNl\ncnZlcmNvbmZxClgOAAAAdmlydHVhbG1hY2hpbmVxC1gGAAAAaXBwb29scQxYDQAAAGFwcGx5cmVz\nb3VyY2VxDVgMAAAAb3JnYW5pemF0aW9ucQ5YBwAAAGFjY291bnRxD1gJAAAAYXV0aG9yaXR5cRBY\nAwAAAGxvZ3ERZVUSX2F1dGhfdXNlcl9iYWNrZW5kcRJVKWRqYW5nby5jb250cmliLmF1dGguYmFj\na2VuZHMuTW9kZWxCYWNrZW5kcRNVFWF1dGhvcml0eV9saXN0X2J1dHRvbnEUXXEVKFgJAAAAaXNw\nc2VsZWN0cRZYBgAAAGlzcGFkZHEXWAcAAABpc3BlZGl0cRhYCQAAAGlzcGRlbGV0ZXEZWAkAAABp\nc3BpbXBvcnRxGlgJAAAAaXNwZXhwb3J0cRtYDQAAAG5vY2luZm9zZWxlY3RxHFgKAAAAbm9jaW5m\nb2FkZHEdWAsAAABub2NpbmZvZWRpdHEeWA0AAABub2NpbmZvZGVsZXRlcR9YDQAAAG5vY2luZm9p\nbXBvcnRxIFgNAAAAbm9jaW5mb2V4cG9ydHEhWBAAAABub2NuZXRpbmZvc2VsZWN0cSJYDQAAAG5v\nY25ldGluZm9hZGRxI1gOAAAAbm9jbmV0aW5mb2VkaXRxJFgQAAAAbm9jbmV0aW5mb2RlbGV0ZXEl\nWBAAAABub2NuZXRpbmZvaW1wb3J0cSZYEAAAAG5vY25ldGluZm9leHBvcnRxJ1gKAAAAcmFja3Nl\nbGVjdHEoWAcAAAByYWNrYWRkcSlYCAAAAHJhY2tlZGl0cSpYCgAAAHJhY2tkZWxldGVxK1gKAAAA\ncmFja2ltcG9ydHEsWAoAAAByYWNrZXhwb3J0cS1YDwAAAGVxdWlwbWVudHNlbGVjdHEuWAwAAABl\ncXVpcG1lbnRhZGRxL1gNAAAAZXF1aXBtZW50ZWRpdHEwWA8AAABlcXVpcG1lbnRkZWxldGVxMVgO\nAAAAZXF1aXBtZW50c3VwZXJxMlgQAAAAc2VydmVyY29uZnNlbGVjdHEzWA0AAABzZXJ2ZXJjb25m\nYWRkcTRYDgAAAHNlcnZlcmNvbmZlZGl0cTVYEAAAAHNlcnZlcmNvbmZkZWxldGVxNlgQAAAAc2Vy\ndmVyY29uZmltcG9ydHE3WBQAAAB2aXJ0dWFsbWFjaGluZXNlbGVjdHE4WBEAAAB2aXJ0dWFsbWFj\naGluZWFkZHE5WBIAAAB2aXJ0dWFsbWFjaGluZWVkaXRxOlgUAAAAdmlydHVhbG1hY2hpbmVkZWxl\ndGVxO1gUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRxPFgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnE9\nWAwAAABpcHBvb2xzZWxlY3RxPlgTAAAAYXBwbHlyZXNvdXJjZXNlbGVjdHE/WBIAAABhcHBseXJl\nc291cmNlYXBwbHlxQFgTAAAAYXBwbHlyZXNvdXJjZWRldGFpbHFBWBIAAABvcmdhbml6YXRpb25z\nZWxlY3RxQlgPAAAAb3JnYW5pemF0aW9uYWRkcUNYEAAAAG9yZ2FuaXphdGlvbmVkaXRxRFgSAAAA\nb3JnYW5pemF0aW9uZGVsZXRlcUVYDQAAAGFjY291bnRzZWxlY3RxRlgKAAAAYWNjb3VudGFkZHFH\nWAsAAABhY2NvdW50ZWRpdHFIWA0AAABhY2NvdW50ZGVsZXRlcUlYEAAAAGFjY291bnRzdXBlcnVz\nZXJxSlgJAAAAbG9nc2VsZWN0cUtlVQRyb2xlcUxjZGphbmdvLmRiLm1vZGVscy5iYXNlCm1vZGVs\nX3VucGlja2xlCnFNY2F1dGhvcml0eS5tb2RlbHMKUm9sZQpxTl1jZGphbmdvLmRiLm1vZGVscy5i\nYXNlCnNpbXBsZV9jbGFzc19mYWN0b3J5CnFPh1JxUH1xUShVCnN0YXJ0X3RpbWVxUmNkYXRldGlt\nZQpkYXRldGltZQpxU1UKB9wJEwcqOQAAAGNweXR6Cl9VVEMKcVQpUnFVhlJxVlUGX3N0YXRlcVdj\nZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUKcVgpgXFZfXFaKFUGYWRkaW5ncVuJVQJk\nYnFcVQdkZWZhdWx0cV11YlUJcm9sZV9kZXNjcV5YDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9u\nYW1lcV9YDwAAAOi2hee6p+euoeeQhuWRmFUIZW5kX3RpbWVxYGhTVQoH3AkcBiYlAAAAaFWGUnFh\nVQJpZHFiigEJdWJVGmF1dGhvcml0eV9saXN0X21vZHVsZWZpZWxkcWNdcWQoWAoAAABpc3BhZGRy\nZXNzcWVYCQAAAGlzcHBob25lMXFmWAkAAABpc3BwaG9uZTJxZ1gOAAAAbm9jaW5mb2FkZHJlc3Nx\naFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFpWAwAAABub2NpbmZvcGhvbmVxalgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxa1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxbFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncW1YDwAAAG5vY25ldGluZm9sZG5zMnFuWA0AAAByYWNrcmF0ZWRfYW1wcW9YDAAAAHJhY2t1c2Vk\nX2FtcHFwWAkAAAByYWNrc3BhY2VxcVgOAAAAcmFja2xlZnRfc3BhY2VxclgRAAAAZXF1aXBtZW50\nc2VxdWVuY2Vxc1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3F0WBEAAABlcXVpcG1lbnRidXlfdGlt\nZXF1WBEAAABlcXVpcG1lbnRkZWFkbGluZXF2WBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nd1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHF4WBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncXlYFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHF6WBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cXtYHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcXxYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcX1YGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxflgMAAAAaXBw\nb29saXBNYXNrcX9ldS4=\n','2012-10-22 06:03:07');
INSERT INTO `django_session` VALUES ('5c8f6e59ff2dc832b3ca79c4e5d2834a','MzA1NTZiNDA5OWQxYTRkZjc5YzM5NjVmZmFiMGZlYjNjZWIyNGY2NTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-23 08:07:38');
INSERT INTO `django_session` VALUES ('6181ecac3631a7341ced99b2e9978b10','ZjM3MjQxYmRkMTNjNzQyOWQ1OGZhNmMwMGNjYzAyNTE2YjIzMzAwYjqAAn1xAS4=\n','2012-11-02 03:20:49');
INSERT INTO `django_session` VALUES ('6284f544a8cdce203ea8f597f4069bc3','YzgzNjM4MjYyNThkODBhZDJlOTA4ZGZiNzc5NTZjNzVjZmY0ZTk3YjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWAoAAABub2NuZXRpbmZvcQdYBAAAAHJhY2txCFgJAAAAZXF1aXBtZW50cQlYCgAAAHNl\ncnZlcmNvbmZxClgOAAAAdmlydHVhbG1hY2hpbmVxC1gGAAAAaXBwb29scQxYDQAAAGFwcGx5cmVz\nb3VyY2VxDVgHAAAAYWNjb3VudHEOWAMAAABsb2dxD2VVEl9hdXRoX3VzZXJfYmFja2VuZHEQVSlk\namFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHERVRVhdXRob3JpdHlfbGlz\ndF9idXR0b25xEl1xEyhYCQAAAGlzcHNlbGVjdHEUWAYAAABpc3BhZGRxFVgHAAAAaXNwZWRpdHEW\nWAkAAABpc3BkZWxldGVxF1gNAAAAbm9jaW5mb3NlbGVjdHEYWAoAAABub2NpbmZvYWRkcRlYCwAA\nAG5vY2luZm9lZGl0cRpYDQAAAG5vY2luZm9kZWxldGVxG1gQAAAAbm9jbmV0aW5mb3NlbGVjdHEc\nWA0AAABub2NuZXRpbmZvYWRkcR1YCgAAAHJhY2tzZWxlY3RxHlgHAAAAcmFja2FkZHEfWA8AAABl\ncXVpcG1lbnRzZWxlY3RxIFgMAAAAZXF1aXBtZW50YWRkcSFYEAAAAHNlcnZlcmNvbmZzZWxlY3Rx\nIlgNAAAAc2VydmVyY29uZmFkZHEjWBQAAAB2aXJ0dWFsbWFjaGluZXNlbGVjdHEkWBEAAAB2aXJ0\ndWFsbWFjaGluZWFkZHElWA0AAABhY2NvdW50c2VsZWN0cSZYCgAAAGFjY291bnRhZGRxJ1gLAAAA\nYWNjb3VudGVkaXRxKFgNAAAAYWNjb3VudGRlbGV0ZXEpZVUEcm9sZXEqY2RqYW5nby5kYi5tb2Rl\nbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxK2NhdXRob3JpdHkubW9kZWxzClJvbGUKcSxdY2RqYW5n\nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxLYdScS59cS8oVQpzdGFydF90\naW1lcTBjZGF0ZXRpbWUKZGF0ZXRpbWUKcTFVCgfcCRMHMDQAAABjcHl0egpfVVRDCnEyKVJxM4ZS\ncTRVBl9zdGF0ZXE1Y2RqYW5nby5kYi5tb2RlbHMuYmFzZQpNb2RlbFN0YXRlCnE2KYFxN31xOChV\nBmFkZGluZ3E5iVUCZGJxOlUHZGVmYXVsdHE7dWJVCXJvbGVfZGVzY3E8WAwAAADmtYvor5Xop5Lo\nibJVCXJvbGVfbmFtZXE9WAwAAADmtYvor5Xop5LoibJVCGVuZF90aW1lcT5oMVUKB9wJFQgREAAA\nAGgzhlJxP1UCaWRxQIoBCnViVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFBXXFCKFgKAAAA\naXNwYWRkcmVzc3FDWA4AAABub2NpbmZvYWRkcmVzc3FEZXUu\n','2012-10-12 08:52:05');
INSERT INTO `django_session` VALUES ('6446db8b5fe89343ca1cb6d9ade8a7c4','MzczMTMwN2JlM2U5NmJmZDI4MGVlYTA5MzlhM2QzNzZiMWRlZDdkYTqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWA0AAABhcHBseXJlc291cmNlcQdYBwAAAGFjY291bnRxCFgDAAAAbG9ncQllVRJfYXV0\naF91c2VyX2JhY2tlbmRxClUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tl\nbmRxC1UVYXV0aG9yaXR5X2xpc3RfYnV0dG9ucQxdcQ1YEgAAAGFwcGx5cmVzb3VyY2VhcHBseXEO\nYVUEcm9sZXEPY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxEGNhdXRob3Jp\ndHkubW9kZWxzClJvbGUKcRFdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFj\ndG9yeQpxEodScRN9cRQoVQpzdGFydF90aW1lcRVjZGF0ZXRpbWUKZGF0ZXRpbWUKcRZVCgfcCRQC\nGxQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxFylScRiGUnEZVQZfc3RhdGVxGmNkamFu\nZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxGymBcRx9cR0oVQZhZGRpbmdxHolVAmRicR9V\nB2RlZmF1bHRxIHViVQlyb2xlX2Rlc2NxIVgIAAAAdGVzdHJvbGVVCXJvbGVfbmFtZXEiWAgAAAB0\nZXN0cm9sZVUIZW5kX3RpbWVxI2gWVQoH3AkUBxs2AAAAaBiGUnEkVQJpZHEligELdWJVGmF1dGhv\ncml0eV9saXN0X21vZHVsZWZpZWxkcSZddS4=\n','2012-10-04 08:37:18');
INSERT INTO `django_session` VALUES ('64748387f1e19be70229eed3a51400cd','YjY3MzMzMDM3M2M1ZjJlYmU4ZTBmMThjM2Q1ZGFjMmRiNzcwMTRiMDqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAsAAABkeW5hbWljY29uZnFEWAcAAABhY2NvdW50cUVYCQAAAGF1dGhvcml0eXFGWAMAAABs\nb2dxR2VVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRy\naWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxSFUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmll\nbGRdcUkoWAoAAABpc3BhZGRyZXNzcUpYCQAAAGlzcHBob25lMXFLWAkAAABpc3BwaG9uZTJxTFgO\nAAAAbm9jaW5mb2FkZHJlc3NxTVgTAAAAbm9jaW5mb25vY191c2VybmFtZXFOWAwAAABub2NpbmZv\ncGhvbmVxT1gRAAAAbm9jbmV0aW5mb2lwX21hcmtxUFgRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUVgP\nAAAAbm9jbmV0aW5mb2xkbnMxcVJYDwAAAG5vY25ldGluZm9sZG5zMnFTWA0AAAByYWNrcmF0ZWRf\nYW1wcVRYDAAAAHJhY2t1c2VkX2FtcHFVWAkAAAByYWNrc3BhY2VxVlgOAAAAcmFja2xlZnRfc3Bh\nY2VxV1gRAAAAZXF1aXBtZW50c2VxdWVuY2VxWFgTAAAAZXF1aXBtZW50c2VydmljZV9ub3FZWBEA\nAABlcXVpcG1lbnRidXlfdGltZXFaWBEAAABlcXVpcG1lbnRkZWFkbGluZXFbWBgAAABzZXJ2ZXJj\nb25mbWFuYWdlX2FjY291bnRxXFgZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFdWBMAAABz\nZXJ2ZXJjb25mbWFuYWdlX2lwcV5YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFfWBwAAAB2aXJ0\ndWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cWBYHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3\nb3JkcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBwb29saXBNYXNrcWNl\ndS4=\n','2012-11-02 03:27:19');
INSERT INTO `django_session` VALUES ('65124650b6f2a14db9e44a244d5bcf51','ZTBkNzQwNzBhMjQ1OGU0ZGFkY2FhNmYyY2U1YjNhYjIzYzQwNmJhNzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAcAAABhY2NvdW50cURYCQAAAGF1dGhvcml0eXFFWAMAAABsb2dxRmVVDV9hdXRoX3VzZXJf\naWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5N\nb2RlbEJhY2tlbmRxR1UaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmllbGRdcUgoWAoAAABpc3BhZGRy\nZXNzcUlYCQAAAGlzcHBob25lMXFKWAkAAABpc3BwaG9uZTJxS1gOAAAAbm9jaW5mb2FkZHJlc3Nx\nTFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFNWAwAAABub2NpbmZvcGhvbmVxTlgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxT1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncVFYDwAAAG5vY25ldGluZm9sZG5zMnFSWA0AAAByYWNrcmF0ZWRfYW1wcVNYDAAAAHJhY2t1c2Vk\nX2FtcHFUWAkAAAByYWNrc3BhY2VxVVgOAAAAcmFja2xlZnRfc3BhY2VxVlgRAAAAZXF1aXBtZW50\nc2VxdWVuY2VxV1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3FYWBEAAABlcXVpcG1lbnRidXlfdGlt\nZXFZWBEAAABlcXVpcG1lbnRkZWFkbGluZXFaWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nW1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFcWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncV1YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFeWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cV9YHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcWBYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBw\nb29saXBNYXNrcWNldS4=\n','2012-10-25 10:32:39');
INSERT INTO `django_session` VALUES ('6ae0ab890de11f8e3bbd255d2b2552e7','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 06:35:00');
INSERT INTO `django_session` VALUES ('6cb2d986ebf85ffec0d8a5a44c706f06','ODZkMmJhYTk1ZGMxMzUxMDliNTVkYjBjYWZiOGUyNjhhYmU2YjlmYzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAsAAABkeW5hbWljY29uZnFEWAcAAABhY2NvdW50cUVYCQAAAGF1dGhvcml0eXFGWAMAAABs\nb2dxR2VVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5N\nb2RlbEJhY2tlbmRxSFUNX2F1dGhfdXNlcl9pZIoBBFUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmll\nbGRdcUkoWAoAAABpc3BhZGRyZXNzcUpYCQAAAGlzcHBob25lMXFLWAkAAABpc3BwaG9uZTJxTFgO\nAAAAbm9jaW5mb2FkZHJlc3NxTVgTAAAAbm9jaW5mb25vY191c2VybmFtZXFOWAwAAABub2NpbmZv\ncGhvbmVxT1gRAAAAbm9jbmV0aW5mb2lwX21hcmtxUFgRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUVgP\nAAAAbm9jbmV0aW5mb2xkbnMxcVJYDwAAAG5vY25ldGluZm9sZG5zMnFTWA0AAAByYWNrcmF0ZWRf\nYW1wcVRYDAAAAHJhY2t1c2VkX2FtcHFVWAkAAAByYWNrc3BhY2VxVlgOAAAAcmFja2xlZnRfc3Bh\nY2VxV1gRAAAAZXF1aXBtZW50c2VxdWVuY2VxWFgTAAAAZXF1aXBtZW50c2VydmljZV9ub3FZWBEA\nAABlcXVpcG1lbnRidXlfdGltZXFaWBEAAABlcXVpcG1lbnRkZWFkbGluZXFbWBgAAABzZXJ2ZXJj\nb25mbWFuYWdlX2FjY291bnRxXFgZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFdWBMAAABz\nZXJ2ZXJjb25mbWFuYWdlX2lwcV5YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFfWBwAAAB2aXJ0\ndWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cWBYHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3\nb3JkcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBwb29saXBNYXNrcWNl\ndS4=\n','2012-11-02 09:41:39');
INSERT INTO `django_session` VALUES ('6f3b691b39c61de55ecc9ea5da332a5c','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-25 03:22:48');
INSERT INTO `django_session` VALUES ('714d3ebd1187ba8de3e8b5b0d63f22e2','MjcwNTNiMjZhOTkwNzdlOGZhMDVkNDVhODYwMzYxZTA2OGE3Yzc1NzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgLAAAAZHluYW1pY2NvbmZxRlgHAAAAYWNjb3VudHFHWAkAAABhdXRob3JpdHlxSFgD\nAAAAbG9ncUllVRJfYXV0aF91c2VyX2JhY2tlbmRxSlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNr\nZW5kcy5Nb2RlbEJhY2tlbmRxS1UNX2F1dGhfdXNlcl9pZHFMigEBVRphdXRob3JpdHlfbGlzdF9t\nb2R1bGVmaWVsZHFNXXFOKFgKAAAAaXNwYWRkcmVzc3FPWAkAAABpc3BwaG9uZTFxUFgJAAAAaXNw\ncGhvbmUycVFYDgAAAG5vY2luZm9hZGRyZXNzcVJYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxU1gM\nAAAAbm9jaW5mb3Bob25lcVRYEQAAAG5vY25ldGluZm9pcF9tYXJrcVVYEQAAAG5vY25ldGluZm9n\nYXRld2F5cVZYDwAAAG5vY25ldGluZm9sZG5zMXFXWA8AAABub2NuZXRpbmZvbGRuczJxWFgNAAAA\ncmFja3JhdGVkX2FtcHFZWAwAAAByYWNrdXNlZF9hbXBxWlgJAAAAcmFja3NwYWNlcVtYDgAAAHJh\nY2tsZWZ0X3NwYWNlcVxYEQAAAGVxdWlwbWVudHNlcXVlbmNlcV1YEwAAAGVxdWlwbWVudHNlcnZp\nY2Vfbm9xXlgRAAAAZXF1aXBtZW50YnV5X3RpbWVxX1gRAAAAZXF1aXBtZW50ZGVhZGxpbmVxYFgY\nAAAAc2VydmVyY29uZm1hbmFnZV9hY2NvdW50cWFYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dv\ncmRxYlgTAAAAc2VydmVyY29uZm1hbmFnZV9pcHFjWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRx\nZFgcAAAAdmlydHVhbG1hY2hpbmVtYW5hZ2VfYWNjb3VudHFlWB0AAAB2aXJ0dWFsbWFjaGluZW1h\nbmFnZV9wYXNzd29yZHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0cWdYDAAAAGlwcG9v\nbGlwTWFza3FoZXUu\n','2012-11-02 03:21:43');
INSERT INTO `django_session` VALUES ('7add5f91f8a03d8776cd8f463bd955a0','MGQyZjJiMDRlMGRkZjc3NDgyMDNkYzJiZmExYTVjOTJjM2E1N2EzOTqAAn1xAShVBHJvbGVxAmNk\namFuZ28uZGIubW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQNjYXV0aG9yaXR5Lm1vZGVscwpS\nb2xlCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEG\nfXEHKFUKc3RhcnRfdGltZXEIY2RhdGV0aW1lCmRhdGV0aW1lCnEJVQoH3AkFDhArAAAAY2RqYW5n\nby51dGlscy50aW1lem9uZQpVVEMKcQopUnELhlJxDFUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVs\ncy5iYXNlCk1vZGVsU3RhdGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1\nYlUJcm9sZV9kZXNjcRRYDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9uYW1lcRVYDwAAAOi2hee6\np+euoeeQhuWRmFUIZW5kX3RpbWVxFmgJVQoH3AkRBwIzAAAAaAuGUnEXVQJpZHEYigEEdWJVEl9h\ndXRoX3VzZXJfYmFja2VuZHEZVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHEaVQ1fYXV0aF91c2VyX2lkcRuKAQF1Lg==\n','2012-10-01 11:49:42');
INSERT INTO `django_session` VALUES ('7e6fcd5f422e5c46323ad2f66044ffcf','ZjMzMWI1ODI3ZTM1YTRkOTBiYmU0ZjViY2UxYWY1NmZhYjRmNDg1YjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQNVFWF1dGhvcml0eV9saXN0X21vZHVsZV1xAihYCQAAAGVxdWlwbWVudHEDWAYAAABp\ncHBvb2xxBGVVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRVFWF1dGhvcml0eV9saXN0X2J1dHRvbl1xBShYDwAAAGVxdWlwbWVudHNl\nbGVjdHEGWAwAAABlcXVpcG1lbnRhZGRxB1gMAAAAaXBwb29sc2VsZWN0cQhlVRphdXRob3JpdHlf\nbGlzdF9tb2R1bGVmaWVsZF1xCVgMAAAAaXBwb29saXBNYXNrcQphVQllbGVtZW50aWRxC1gLAAAA\nZWxlbWVudDEwMDF1Lg==\n','2012-10-26 09:23:32');
INSERT INTO `django_session` VALUES ('7e76704566b508ddf5d39042ec90f6a1','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-11 01:17:33');
INSERT INTO `django_session` VALUES ('846328062ed5b3e2be545f34f47c0004','YWI2NTQzMGI0MzY2ZDU2ODIxMzg0Y2Y1MjNkYjQ2MWFhOTkxZjU3YTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUN\nX2F1dGhfdXNlcl9pZIoBAXUu\n','2012-09-12 02:51:48');
INSERT INTO `django_session` VALUES ('84de4f83a812fac8d29a4c989fe487e5','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-25 09:20:35');
INSERT INTO `django_session` VALUES ('87a2ec26890ab9e87ac49d58942667c8','MzczMTMwN2JlM2U5NmJmZDI4MGVlYTA5MzlhM2QzNzZiMWRlZDdkYTqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWA0AAABhcHBseXJlc291cmNlcQdYBwAAAGFjY291bnRxCFgDAAAAbG9ncQllVRJfYXV0\naF91c2VyX2JhY2tlbmRxClUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tl\nbmRxC1UVYXV0aG9yaXR5X2xpc3RfYnV0dG9ucQxdcQ1YEgAAAGFwcGx5cmVzb3VyY2VhcHBseXEO\nYVUEcm9sZXEPY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxEGNhdXRob3Jp\ndHkubW9kZWxzClJvbGUKcRFdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFj\ndG9yeQpxEodScRN9cRQoVQpzdGFydF90aW1lcRVjZGF0ZXRpbWUKZGF0ZXRpbWUKcRZVCgfcCRQC\nGxQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxFylScRiGUnEZVQZfc3RhdGVxGmNkamFu\nZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxGymBcRx9cR0oVQZhZGRpbmdxHolVAmRicR9V\nB2RlZmF1bHRxIHViVQlyb2xlX2Rlc2NxIVgIAAAAdGVzdHJvbGVVCXJvbGVfbmFtZXEiWAgAAAB0\nZXN0cm9sZVUIZW5kX3RpbWVxI2gWVQoH3AkUBxs2AAAAaBiGUnEkVQJpZHEligELdWJVGmF1dGhv\ncml0eV9saXN0X21vZHVsZWZpZWxkcSZddS4=\n','2012-10-04 08:56:21');
INSERT INTO `django_session` VALUES ('885e8e51f3044548523e7c6399fbfcd1','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 05:50:20');
INSERT INTO `django_session` VALUES ('8dae16b6c3192e987142453a1ad91d0e','YjY3MzMzMDM3M2M1ZjJlYmU4ZTBmMThjM2Q1ZGFjMmRiNzcwMTRiMDqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAsAAABkeW5hbWljY29uZnFEWAcAAABhY2NvdW50cUVYCQAAAGF1dGhvcml0eXFGWAMAAABs\nb2dxR2VVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRy\naWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxSFUaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmll\nbGRdcUkoWAoAAABpc3BhZGRyZXNzcUpYCQAAAGlzcHBob25lMXFLWAkAAABpc3BwaG9uZTJxTFgO\nAAAAbm9jaW5mb2FkZHJlc3NxTVgTAAAAbm9jaW5mb25vY191c2VybmFtZXFOWAwAAABub2NpbmZv\ncGhvbmVxT1gRAAAAbm9jbmV0aW5mb2lwX21hcmtxUFgRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUVgP\nAAAAbm9jbmV0aW5mb2xkbnMxcVJYDwAAAG5vY25ldGluZm9sZG5zMnFTWA0AAAByYWNrcmF0ZWRf\nYW1wcVRYDAAAAHJhY2t1c2VkX2FtcHFVWAkAAAByYWNrc3BhY2VxVlgOAAAAcmFja2xlZnRfc3Bh\nY2VxV1gRAAAAZXF1aXBtZW50c2VxdWVuY2VxWFgTAAAAZXF1aXBtZW50c2VydmljZV9ub3FZWBEA\nAABlcXVpcG1lbnRidXlfdGltZXFaWBEAAABlcXVpcG1lbnRkZWFkbGluZXFbWBgAAABzZXJ2ZXJj\nb25mbWFuYWdlX2FjY291bnRxXFgZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFdWBMAAABz\nZXJ2ZXJjb25mbWFuYWdlX2lwcV5YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFfWBwAAAB2aXJ0\ndWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cWBYHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3\nb3JkcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBwb29saXBNYXNrcWNl\ndS4=\n','2012-11-02 03:18:51');
INSERT INTO `django_session` VALUES ('8df1579c8e54460ee6a0a1f5f715a54f','YWI2NTQzMGI0MzY2ZDU2ODIxMzg0Y2Y1MjNkYjQ2MWFhOTkxZjU3YTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUN\nX2F1dGhfdXNlcl9pZIoBAXUu\n','2012-09-03 04:24:11');
INSERT INTO `django_session` VALUES ('92f708d1f72c7d03da0e773c7d57cf0c','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-25 01:47:56');
INSERT INTO `django_session` VALUES ('94c854691690354633eb8df9fafa09d6','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-11 07:41:51');
INSERT INTO `django_session` VALUES ('a151936e55d11783182d7c8b62f6c270','MzA1NTZiNDA5OWQxYTRkZjc5YzM5NjVmZmFiMGZlYjNjZWIyNGY2NTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-23 06:18:10');
INSERT INTO `django_session` VALUES ('a43ee5c94088230ccf60fe1743b871f1','MzA1NTZiNDA5OWQxYTRkZjc5YzM5NjVmZmFiMGZlYjNjZWIyNGY2NTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-23 08:04:36');
INSERT INTO `django_session` VALUES ('a9234713b86d7bfdbc431cd4ebd28fa0','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-08 11:59:13');
INSERT INTO `django_session` VALUES ('b1f92f0e0e415a697607ea471efff9ed','ZTBkNzQwNzBhMjQ1OGU0ZGFkY2FhNmYyY2U1YjNhYjIzYzQwNmJhNzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbl1xAihYCQAAAGlzcHNlbGVjdHEDWAYAAABpc3BhZGRxBFgHAAAAaXNwZWRp\ndHEFWAkAAABpc3BkZWxldGVxBlgJAAAAaXNwaW1wb3J0cQdYCQAAAGlzcGV4cG9ydHEIWA0AAABu\nb2NpbmZvc2VsZWN0cQlYCgAAAG5vY2luZm9hZGRxClgLAAAAbm9jaW5mb2VkaXRxC1gNAAAAbm9j\naW5mb2RlbGV0ZXEMWA0AAABub2NpbmZvaW1wb3J0cQ1YDQAAAG5vY2luZm9leHBvcnRxDlgQAAAA\nbm9jbmV0aW5mb3NlbGVjdHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0\ncRFYEAAAAG5vY25ldGluZm9kZWxldGVxElgQAAAAbm9jbmV0aW5mb2ltcG9ydHETWBAAAABub2Nu\nZXRpbmZvZXhwb3J0cRRYCgAAAHJhY2tzZWxlY3RxFVgHAAAAcmFja2FkZHEWWAgAAAByYWNrZWRp\ndHEXWAoAAAByYWNrZGVsZXRlcRhYCgAAAHJhY2tpbXBvcnRxGVgKAAAAcmFja2V4cG9ydHEaWA8A\nAABlcXVpcG1lbnRzZWxlY3RxG1gMAAAAZXF1aXBtZW50YWRkcRxYDQAAAGVxdWlwbWVudGVkaXRx\nHVgPAAAAZXF1aXBtZW50ZGVsZXRlcR5YDgAAAGVxdWlwbWVudHN1cGVycR9YEAAAAHNlcnZlcmNv\nbmZzZWxlY3RxIFgNAAAAc2VydmVyY29uZmFkZHEhWA4AAABzZXJ2ZXJjb25mZWRpdHEiWBAAAABz\nZXJ2ZXJjb25mZGVsZXRlcSNYEAAAAHNlcnZlcmNvbmZpbXBvcnRxJFgUAAAAdmlydHVhbG1hY2hp\nbmVzZWxlY3RxJVgRAAAAdmlydHVhbG1hY2hpbmVhZGRxJlgSAAAAdmlydHVhbG1hY2hpbmVlZGl0\ncSdYFAAAAHZpcnR1YWxtYWNoaW5lZGVsZXRlcShYFAAAAHZpcnR1YWxtYWNoaW5laW1wb3J0cSlY\nEwAAAHZpcnR1YWxtYWNoaW5lc3VwZXJxKlgMAAAAaXBwb29sc2VsZWN0cStYEwAAAGFwcGx5cmVz\nb3VyY2VzZWxlY3RxLFgSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cS1YEwAAAGFwcGx5cmVzb3VyY2Vk\nZXRhaWxxLlgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cS9YDwAAAG9yZ2FuaXphdGlvbmFkZHEwWBAA\nAABvcmdhbml6YXRpb25lZGl0cTFYEgAAAG9yZ2FuaXphdGlvbmRlbGV0ZXEyWA0AAABhY2NvdW50\nc2VsZWN0cTNYCgAAAGFjY291bnRhZGRxNFgLAAAAYWNjb3VudGVkaXRxNVgNAAAAYWNjb3VudGRl\nbGV0ZXE2WBAAAABhY2NvdW50c3VwZXJ1c2VycTdYCQAAAGxvZ3NlbGVjdHE4ZVUVYXV0aG9yaXR5\nX2xpc3RfbW9kdWxlXXE5KFgDAAAAaXNwcTpYBwAAAG5vY2luZm9xO1gKAAAAbm9jbmV0aW5mb3E8\nWAQAAAByYWNrcT1YCQAAAGVxdWlwbWVudHE+WAoAAABzZXJ2ZXJjb25mcT9YDgAAAHZpcnR1YWxt\nYWNoaW5lcUBYBgAAAGlwcG9vbHFBWA0AAABhcHBseXJlc291cmNlcUJYDAAAAG9yZ2FuaXphdGlv\nbnFDWAcAAABhY2NvdW50cURYCQAAAGF1dGhvcml0eXFFWAMAAABsb2dxRmVVDV9hdXRoX3VzZXJf\naWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5N\nb2RlbEJhY2tlbmRxR1UaYXV0aG9yaXR5X2xpc3RfbW9kdWxlZmllbGRdcUgoWAoAAABpc3BhZGRy\nZXNzcUlYCQAAAGlzcHBob25lMXFKWAkAAABpc3BwaG9uZTJxS1gOAAAAbm9jaW5mb2FkZHJlc3Nx\nTFgTAAAAbm9jaW5mb25vY191c2VybmFtZXFNWAwAAABub2NpbmZvcGhvbmVxTlgRAAAAbm9jbmV0\naW5mb2lwX21hcmtxT1gRAAAAbm9jbmV0aW5mb2dhdGV3YXlxUFgPAAAAbm9jbmV0aW5mb2xkbnMx\ncVFYDwAAAG5vY25ldGluZm9sZG5zMnFSWA0AAAByYWNrcmF0ZWRfYW1wcVNYDAAAAHJhY2t1c2Vk\nX2FtcHFUWAkAAAByYWNrc3BhY2VxVVgOAAAAcmFja2xlZnRfc3BhY2VxVlgRAAAAZXF1aXBtZW50\nc2VxdWVuY2VxV1gTAAAAZXF1aXBtZW50c2VydmljZV9ub3FYWBEAAABlcXVpcG1lbnRidXlfdGlt\nZXFZWBEAAABlcXVpcG1lbnRkZWFkbGluZXFaWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRx\nW1gZAAAAc2VydmVyY29uZm1hbmFnZV9wYXNzd29yZHFcWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lw\ncV1YFQAAAHNlcnZlcmNvbmZtYW5hZ2VfcG9ydHFeWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9h\nY2NvdW50cV9YHQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcWBYFwAAAHZpcnR1YWxt\nYWNoaW5lbWFuYWdlX2lwcWFYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxYlgMAAAAaXBw\nb29saXBNYXNrcWNldS4=\n','2012-10-29 05:04:45');
INSERT INTO `django_session` VALUES ('b558c6851e64f6efb125721c364de185','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 09:21:29');
INSERT INTO `django_session` VALUES ('b78fdfd0d4c48b47841b459edc43ee3c','ZTQzMjU4NjBiNmZhN2E0OGZiOTM2OGU1NGI5ZjNmMzg3OTAwYWY0MTqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAlUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWA0AAABhcHBseXJlc291cmNlcQdYBwAAAGFjY291bnRxCFgDAAAAbG9ncQllVRJfYXV0\naF91c2VyX2JhY2tlbmRxClUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tl\nbmRxC1UVYXV0aG9yaXR5X2xpc3RfYnV0dG9ucQxdcQ1YEgAAAGFwcGx5cmVzb3VyY2VhcHBseXEO\nYVUEcm9sZXEPY2RqYW5nby5kYi5tb2RlbHMuYmFzZQptb2RlbF91bnBpY2tsZQpxEGNhdXRob3Jp\ndHkubW9kZWxzClJvbGUKcRFdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFj\ndG9yeQpxEodScRN9cRQoVQpzdGFydF90aW1lcRVjZGF0ZXRpbWUKZGF0ZXRpbWUKcRZVCgfcCRQC\nGxQAAABjZGphbmdvLnV0aWxzLnRpbWV6b25lClVUQwpxFylScRiGUnEZVQZfc3RhdGVxGmNkamFu\nZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0ZQpxGymBcRx9cR0oVQZhZGRpbmdxHolVAmRicR9V\nB2RlZmF1bHRxIHViVQlyb2xlX2Rlc2NxIVgIAAAAdGVzdHJvbGVVCXJvbGVfbmFtZXEiWAgAAAB0\nZXN0cm9sZVUIZW5kX3RpbWVxI2gWVQoH3AkUAiIgAAAAaBiGUnEkVQJpZHEligELdWJVGmF1dGhv\ncml0eV9saXN0X21vZHVsZWZpZWxkcSZddS4=\n','2012-10-04 07:20:29');
INSERT INTO `django_session` VALUES ('ba881943ee494c6c9abe824140bce78d','NDU4YTZhNzAxNWE4YjIzZjg1ODZmMWM2OWVkZjc1NzM5MzJkN2ExOTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgMAAAAaXBwb29sc2VsZWN0cQRYCQAAAGlzcHNlbGVjdHEFWAYA\nAABpc3BhZGRxBlgHAAAAaXNwZWRpdHEHWAkAAABpc3BkZWxldGVxCFgJAAAAaXNwaW1wb3J0cQlY\nDQAAAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0A\nAABub2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgQAAAAbm9jbmV0aW5mb3NlbGVj\ndHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0cRFYEAAAAG5vY25ldGlu\nZm9leHBvcnRxElgKAAAAcmFja3NlbGVjdHETWAcAAAByYWNrYWRkcRRYDwAAAGVxdWlwbWVudHNl\nbGVjdHEVWAwAAABlcXVpcG1lbnRhZGRxFlgQAAAAc2VydmVyY29uZnNlbGVjdHEXWA0AAABzZXJ2\nZXJjb25mYWRkcRhYDgAAAHNlcnZlcmNvbmZlZGl0cRlYFAAAAHZpcnR1YWxtYWNoaW5lc2VsZWN0\ncRpYEwAAAGFwcGx5cmVzb3VyY2VzZWxlY3RxG1gSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cRxYEwAA\nAGFwcGx5cmVzb3VyY2VkZXRhaWxxHVgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cR5YDwAAAG9yZ2Fu\naXphdGlvbmFkZHEfWBAAAABvcmdhbml6YXRpb25lZGl0cSBYEgAAAG9yZ2FuaXphdGlvbmRlbGV0\nZXEhWA0AAABhY2NvdW50c2VsZWN0cSJYCgAAAGFjY291bnRhZGRxI1gLAAAAYWNjb3VudGVkaXRx\nJFgNAAAAYWNjb3VudGRlbGV0ZXElWBAAAABhY2NvdW50c3VwZXJ1c2VycSZYCQAAAGxvZ3NlbGVj\ndHEnZVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcShdcSkoWAYAAABpcHBvb2xxKlgDAAAAaXNwcStY\nBwAAAG5vY2luZm9xLFgKAAAAbm9jbmV0aW5mb3EtWAQAAAByYWNrcS5YCQAAAGVxdWlwbWVudHEv\nWAoAAABzZXJ2ZXJjb25mcTBYDgAAAHZpcnR1YWxtYWNoaW5lcTFYDQAAAGFwcGx5cmVzb3VyY2Vx\nMlgMAAAAb3JnYW5pemF0aW9ucTNYBwAAAGFjY291bnRxNFgJAAAAYXV0aG9yaXR5cTVYAwAAAGxv\nZ3E2ZVUSX2F1dGhfdXNlcl9iYWNrZW5kcTdVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMu\nTW9kZWxCYWNrZW5kcThVDV9hdXRoX3VzZXJfaWRxOYoBAlUaYXV0aG9yaXR5X2xpc3RfbW9kdWxl\nZmllbGRxOl1xOyhYDAAAAGlwcG9vbGlwTWFza3E8WAoAAABpc3BhZGRyZXNzcT1YCQAAAGlzcHBo\nb25lMXE+WAkAAABpc3BwaG9uZTJxP1gOAAAAbm9jaW5mb2FkZHJlc3NxQFgTAAAAbm9jaW5mb25v\nY191c2VybmFtZXFBWAwAAABub2NpbmZvcGhvbmVxQlgRAAAAbm9jbmV0aW5mb2lwX21hcmtxQ1gR\nAAAAbm9jbmV0aW5mb2dhdGV3YXlxRFgPAAAAbm9jbmV0aW5mb2xkbnMxcUVYDwAAAG5vY25ldGlu\nZm9sZG5zMnFGWA0AAAByYWNrcmF0ZWRfYW1wcUdYDAAAAHJhY2t1c2VkX2FtcHFIWAkAAAByYWNr\nc3BhY2VxSVgOAAAAcmFja2xlZnRfc3BhY2VxSlgRAAAAZXF1aXBtZW50c2VxdWVuY2VxS1gTAAAA\nZXF1aXBtZW50c2VydmljZV9ub3FMWBEAAABlcXVpcG1lbnRidXlfdGltZXFNWBEAAABlcXVpcG1l\nbnRkZWFkbGluZXFOWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRxT1gZAAAAc2VydmVyY29u\nZm1hbmFnZV9wYXNzd29yZHFQWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lwcVFYFQAAAHNlcnZlcmNv\nbmZtYW5hZ2VfcG9ydHFSWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cVNYHQAAAHZp\ncnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcVRYFwAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX2lw\ncVVYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxVmV1Lg==\n','2012-10-24 09:43:17');
INSERT INTO `django_session` VALUES ('bbf787d0de2b59525f040913a714b5d8','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 06:45:34');
INSERT INTO `django_session` VALUES ('be63035d8d1cfbd5738e41bd689bd6ed','YjExYTkxMDY0NGExN2ViZTRkYzRjNGY0MGZiYzYwMTNmZTY0ZTdhYjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxAnUu\n','2012-10-10 06:37:18');
INSERT INTO `django_session` VALUES ('c0b4b3720abc5deb50b92b3dac3fa8b6','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-19 09:35:23');
INSERT INTO `django_session` VALUES ('c2aaacc7c884d9f34bae0368a982d09c','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-22 07:21:45');
INSERT INTO `django_session` VALUES ('c6e874c1214b6eb126b4f2c165bc09d6','NWU1NzViNDg4NjNkNDNhOTk1NjEwZWY3MTEwNzBkNjdjOWRmYTMyYjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWRxAooBAVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcQNdcQQoWAMAAABpc3BxBVgHAAAAbm9j\naW5mb3EGWAoAAABub2NuZXRpbmZvcQdYBAAAAHJhY2txCFgJAAAAZXF1aXBtZW50cQlYCgAAAHNl\ncnZlcmNvbmZxClgOAAAAdmlydHVhbG1hY2hpbmVxC1gGAAAAaXBwb29scQxYDQAAAGFwcGx5cmVz\nb3VyY2VxDVgHAAAAYWNjb3VudHEOWAkAAABhdXRob3JpdHlxD1gDAAAAbG9ncRBlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxEVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nElUVYXV0aG9yaXR5X2xpc3RfYnV0dG9ucRNdcRQoWAkAAABpc3BzZWxlY3RxFVgGAAAAaXNwYWRk\ncRZYBwAAAGlzcGVkaXRxF1gJAAAAaXNwZGVsZXRlcRhYCQAAAGlzcGltcG9ydHEZWAkAAABpc3Bl\neHBvcnRxGlgNAAAAbm9jaW5mb3NlbGVjdHEbWAoAAABub2NpbmZvYWRkcRxYCwAAAG5vY2luZm9l\nZGl0cR1YDQAAAG5vY2luZm9kZWxldGVxHlgNAAAAbm9jaW5mb2ltcG9ydHEfWA0AAABub2NpbmZv\nZXhwb3J0cSBYEAAAAG5vY25ldGluZm9zZWxlY3RxIVgNAAAAbm9jbmV0aW5mb2FkZHEiWA4AAABu\nb2NuZXRpbmZvZWRpdHEjWBAAAABub2NuZXRpbmZvZGVsZXRlcSRYEAAAAG5vY25ldGluZm9pbXBv\ncnRxJVgQAAAAbm9jbmV0aW5mb2V4cG9ydHEmWAoAAAByYWNrc2VsZWN0cSdYBwAAAHJhY2thZGRx\nKFgIAAAAcmFja2VkaXRxKVgKAAAAcmFja2RlbGV0ZXEqWAoAAAByYWNraW1wb3J0cStYCgAAAHJh\nY2tleHBvcnRxLFgPAAAAZXF1aXBtZW50c2VsZWN0cS1YDAAAAGVxdWlwbWVudGFkZHEuWA0AAABl\ncXVpcG1lbnRlZGl0cS9YDwAAAGVxdWlwbWVudGRlbGV0ZXEwWBAAAABzZXJ2ZXJjb25mc2VsZWN0\ncTFYDQAAAHNlcnZlcmNvbmZhZGRxMlgOAAAAc2VydmVyY29uZmVkaXRxM1gQAAAAc2VydmVyY29u\nZmRlbGV0ZXE0WBAAAABzZXJ2ZXJjb25maW1wb3J0cTVYFAAAAHZpcnR1YWxtYWNoaW5lc2VsZWN0\ncTZYEQAAAHZpcnR1YWxtYWNoaW5lYWRkcTdYEgAAAHZpcnR1YWxtYWNoaW5lZWRpdHE4WBQAAAB2\naXJ0dWFsbWFjaGluZWRlbGV0ZXE5WBQAAAB2aXJ0dWFsbWFjaGluZWltcG9ydHE6WAwAAABpcHBv\nb2xzZWxlY3RxO1gTAAAAYXBwbHlyZXNvdXJjZXNlbGVjdHE8WBIAAABhcHBseXJlc291cmNlYXBw\nbHlxPVgTAAAAYXBwbHlyZXNvdXJjZWRldGFpbHE+WA0AAABhY2NvdW50c2VsZWN0cT9YCgAAAGFj\nY291bnRhZGRxQFgLAAAAYWNjb3VudGVkaXRxQVgNAAAAYWNjb3VudGRlbGV0ZXFCWBAAAABhY2Nv\ndW50c3VwZXJ1c2VycUNYCQAAAGxvZ3NlbGVjdHFEZVUEcm9sZXFFY2RqYW5nby5kYi5tb2RlbHMu\nYmFzZQptb2RlbF91bnBpY2tsZQpxRmNhdXRob3JpdHkubW9kZWxzClJvbGUKcUddY2RqYW5nby5k\nYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxSIdScUl9cUooVQpzdGFydF90aW1l\ncUtjZGF0ZXRpbWUKZGF0ZXRpbWUKcUxVCgfcCRMHKjkAAABjZGphbmdvLnV0aWxzLnRpbWV6b25l\nClVUQwpxTSlScU6GUnFPVQZfc3RhdGVxUGNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxTdGF0\nZQpxUSmBcVJ9cVMoVQZhZGRpbmdxVIlVAmRicVVVB2RlZmF1bHRxVnViVQlyb2xlX2Rlc2NxV1gP\nAAAA6LaF57qn566h55CG5ZGYVQlyb2xlX25hbWVxWFgPAAAA6LaF57qn566h55CG5ZGYVQhlbmRf\ndGltZXFZaExVCgfcCRMKFQYAAABoToZScVpVAmlkcVuKAQl1YlUaYXV0aG9yaXR5X2xpc3RfbW9k\ndWxlZmllbGRxXF1xXShYCgAAAGlzcGFkZHJlc3NxXlgJAAAAaXNwcGhvbmUxcV9YCQAAAGlzcHBo\nb25lMnFgWA4AAABub2NpbmZvYWRkcmVzc3FhWBMAAABub2NpbmZvbm9jX3VzZXJuYW1lcWJYDAAA\nAG5vY2luZm9waG9uZXFjWBEAAABub2NuZXRpbmZvaXBfbWFya3FkWBEAAABub2NuZXRpbmZvZ2F0\nZXdheXFlWA8AAABub2NuZXRpbmZvbGRuczFxZlgPAAAAbm9jbmV0aW5mb2xkbnMycWdYDQAAAHJh\nY2tyYXRlZF9hbXBxaFgMAAAAcmFja3VzZWRfYW1wcWlYCQAAAHJhY2tzcGFjZXFqWA4AAAByYWNr\nbGVmdF9zcGFjZXFrWBEAAABlcXVpcG1lbnRzZXF1ZW5jZXFsWBMAAABlcXVpcG1lbnRzZXJ2aWNl\nX25vcW1YEQAAAGVxdWlwbWVudGJ1eV90aW1lcW5YEQAAAGVxdWlwbWVudGRlYWRsaW5lcW9YGAAA\nAHNlcnZlcmNvbmZtYW5hZ2VfYWNjb3VudHFwWBkAAABzZXJ2ZXJjb25mbWFuYWdlX3Bhc3N3b3Jk\ncXFYEwAAAHNlcnZlcmNvbmZtYW5hZ2VfaXBxclgVAAAAc2VydmVyY29uZm1hbmFnZV9wb3J0cXNY\nHAAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX2FjY291bnRxdFgdAAAAdmlydHVhbG1hY2hpbmVtYW5h\nZ2VfcGFzc3dvcmRxdVgXAAAAdmlydHVhbG1hY2hpbmVtYW5hZ2VfaXBxdlgZAAAAdmlydHVhbG1h\nY2hpbmVtYW5hZ2VfcG9ydHF3WAwAAABpcHBvb2xpcE1hc2txeGV1Lg==\n','2012-10-04 08:37:03');
INSERT INTO `django_session` VALUES ('c8d4074a84a48305710596158f02ce27','MjcwNTNiMjZhOTkwNzdlOGZhMDVkNDVhODYwMzYxZTA2OGE3Yzc1NzqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgLAAAAZHluYW1pY2NvbmZxRlgHAAAAYWNjb3VudHFHWAkAAABhdXRob3JpdHlxSFgD\nAAAAbG9ncUllVRJfYXV0aF91c2VyX2JhY2tlbmRxSlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNr\nZW5kcy5Nb2RlbEJhY2tlbmRxS1UNX2F1dGhfdXNlcl9pZHFMigEBVRphdXRob3JpdHlfbGlzdF9t\nb2R1bGVmaWVsZHFNXXFOKFgKAAAAaXNwYWRkcmVzc3FPWAkAAABpc3BwaG9uZTFxUFgJAAAAaXNw\ncGhvbmUycVFYDgAAAG5vY2luZm9hZGRyZXNzcVJYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxU1gM\nAAAAbm9jaW5mb3Bob25lcVRYEQAAAG5vY25ldGluZm9pcF9tYXJrcVVYEQAAAG5vY25ldGluZm9n\nYXRld2F5cVZYDwAAAG5vY25ldGluZm9sZG5zMXFXWA8AAABub2NuZXRpbmZvbGRuczJxWFgNAAAA\ncmFja3JhdGVkX2FtcHFZWAwAAAByYWNrdXNlZF9hbXBxWlgJAAAAcmFja3NwYWNlcVtYDgAAAHJh\nY2tsZWZ0X3NwYWNlcVxYEQAAAGVxdWlwbWVudHNlcXVlbmNlcV1YEwAAAGVxdWlwbWVudHNlcnZp\nY2Vfbm9xXlgRAAAAZXF1aXBtZW50YnV5X3RpbWVxX1gRAAAAZXF1aXBtZW50ZGVhZGxpbmVxYFgY\nAAAAc2VydmVyY29uZm1hbmFnZV9hY2NvdW50cWFYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dv\ncmRxYlgTAAAAc2VydmVyY29uZm1hbmFnZV9pcHFjWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRx\nZFgcAAAAdmlydHVhbG1hY2hpbmVtYW5hZ2VfYWNjb3VudHFlWB0AAAB2aXJ0dWFsbWFjaGluZW1h\nbmFnZV9wYXNzd29yZHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0cWdYDAAAAGlwcG9v\nbGlwTWFza3FoZXUu\n','2012-11-05 01:26:28');
INSERT INTO `django_session` VALUES ('c9de5cec22e312122c9f924546ff3907','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-25 05:34:16');
INSERT INTO `django_session` VALUES ('cb906453f794676aa8ce9a301fcaa438','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 09:23:42');
INSERT INTO `django_session` VALUES ('cf0da6c2ca35154e2eaa2aba0c3c623c','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-11 01:53:29');
INSERT INTO `django_session` VALUES ('d9f97d88bb82d15aa9a2062573fa6e80','NDU4YTZhNzAxNWE4YjIzZjg1ODZmMWM2OWVkZjc1NzM5MzJkN2ExOTqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgMAAAAaXBwb29sc2VsZWN0cQRYCQAAAGlzcHNlbGVjdHEFWAYA\nAABpc3BhZGRxBlgHAAAAaXNwZWRpdHEHWAkAAABpc3BkZWxldGVxCFgJAAAAaXNwaW1wb3J0cQlY\nDQAAAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0A\nAABub2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgQAAAAbm9jbmV0aW5mb3NlbGVj\ndHEPWA0AAABub2NuZXRpbmZvYWRkcRBYDgAAAG5vY25ldGluZm9lZGl0cRFYEAAAAG5vY25ldGlu\nZm9leHBvcnRxElgKAAAAcmFja3NlbGVjdHETWAcAAAByYWNrYWRkcRRYDwAAAGVxdWlwbWVudHNl\nbGVjdHEVWAwAAABlcXVpcG1lbnRhZGRxFlgQAAAAc2VydmVyY29uZnNlbGVjdHEXWA0AAABzZXJ2\nZXJjb25mYWRkcRhYDgAAAHNlcnZlcmNvbmZlZGl0cRlYFAAAAHZpcnR1YWxtYWNoaW5lc2VsZWN0\ncRpYEwAAAGFwcGx5cmVzb3VyY2VzZWxlY3RxG1gSAAAAYXBwbHlyZXNvdXJjZWFwcGx5cRxYEwAA\nAGFwcGx5cmVzb3VyY2VkZXRhaWxxHVgSAAAAb3JnYW5pemF0aW9uc2VsZWN0cR5YDwAAAG9yZ2Fu\naXphdGlvbmFkZHEfWBAAAABvcmdhbml6YXRpb25lZGl0cSBYEgAAAG9yZ2FuaXphdGlvbmRlbGV0\nZXEhWA0AAABhY2NvdW50c2VsZWN0cSJYCgAAAGFjY291bnRhZGRxI1gLAAAAYWNjb3VudGVkaXRx\nJFgNAAAAYWNjb3VudGRlbGV0ZXElWBAAAABhY2NvdW50c3VwZXJ1c2VycSZYCQAAAGxvZ3NlbGVj\ndHEnZVUVYXV0aG9yaXR5X2xpc3RfbW9kdWxlcShdcSkoWAYAAABpcHBvb2xxKlgDAAAAaXNwcStY\nBwAAAG5vY2luZm9xLFgKAAAAbm9jbmV0aW5mb3EtWAQAAAByYWNrcS5YCQAAAGVxdWlwbWVudHEv\nWAoAAABzZXJ2ZXJjb25mcTBYDgAAAHZpcnR1YWxtYWNoaW5lcTFYDQAAAGFwcGx5cmVzb3VyY2Vx\nMlgMAAAAb3JnYW5pemF0aW9ucTNYBwAAAGFjY291bnRxNFgJAAAAYXV0aG9yaXR5cTVYAwAAAGxv\nZ3E2ZVUSX2F1dGhfdXNlcl9iYWNrZW5kcTdVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMu\nTW9kZWxCYWNrZW5kcThVDV9hdXRoX3VzZXJfaWRxOYoBAlUaYXV0aG9yaXR5X2xpc3RfbW9kdWxl\nZmllbGRxOl1xOyhYDAAAAGlwcG9vbGlwTWFza3E8WAoAAABpc3BhZGRyZXNzcT1YCQAAAGlzcHBo\nb25lMXE+WAkAAABpc3BwaG9uZTJxP1gOAAAAbm9jaW5mb2FkZHJlc3NxQFgTAAAAbm9jaW5mb25v\nY191c2VybmFtZXFBWAwAAABub2NpbmZvcGhvbmVxQlgRAAAAbm9jbmV0aW5mb2lwX21hcmtxQ1gR\nAAAAbm9jbmV0aW5mb2dhdGV3YXlxRFgPAAAAbm9jbmV0aW5mb2xkbnMxcUVYDwAAAG5vY25ldGlu\nZm9sZG5zMnFGWA0AAAByYWNrcmF0ZWRfYW1wcUdYDAAAAHJhY2t1c2VkX2FtcHFIWAkAAAByYWNr\nc3BhY2VxSVgOAAAAcmFja2xlZnRfc3BhY2VxSlgRAAAAZXF1aXBtZW50c2VxdWVuY2VxS1gTAAAA\nZXF1aXBtZW50c2VydmljZV9ub3FMWBEAAABlcXVpcG1lbnRidXlfdGltZXFNWBEAAABlcXVpcG1l\nbnRkZWFkbGluZXFOWBgAAABzZXJ2ZXJjb25mbWFuYWdlX2FjY291bnRxT1gZAAAAc2VydmVyY29u\nZm1hbmFnZV9wYXNzd29yZHFQWBMAAABzZXJ2ZXJjb25mbWFuYWdlX2lwcVFYFQAAAHNlcnZlcmNv\nbmZtYW5hZ2VfcG9ydHFSWBwAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9hY2NvdW50cVNYHQAAAHZp\ncnR1YWxtYWNoaW5lbWFuYWdlX3Bhc3N3b3JkcVRYFwAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX2lw\ncVVYGQAAAHZpcnR1YWxtYWNoaW5lbWFuYWdlX3BvcnRxVmV1Lg==\n','2012-10-24 09:42:31');
INSERT INTO `django_session` VALUES ('dd4542471ad7ac7265755da345bb7a1c','MGQyZjJiMDRlMGRkZjc3NDgyMDNkYzJiZmExYTVjOTJjM2E1N2EzOTqAAn1xAShVBHJvbGVxAmNk\namFuZ28uZGIubW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQNjYXV0aG9yaXR5Lm1vZGVscwpS\nb2xlCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEG\nfXEHKFUKc3RhcnRfdGltZXEIY2RhdGV0aW1lCmRhdGV0aW1lCnEJVQoH3AkFDhArAAAAY2RqYW5n\nby51dGlscy50aW1lem9uZQpVVEMKcQopUnELhlJxDFUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVs\ncy5iYXNlCk1vZGVsU3RhdGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1\nYlUJcm9sZV9kZXNjcRRYDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9uYW1lcRVYDwAAAOi2hee6\np+euoeeQhuWRmFUIZW5kX3RpbWVxFmgJVQoH3AkRBwIzAAAAaAuGUnEXVQJpZHEYigEEdWJVEl9h\ndXRoX3VzZXJfYmFja2VuZHEZVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHEaVQ1fYXV0aF91c2VyX2lkcRuKAQF1Lg==\n','2012-10-01 08:29:10');
INSERT INTO `django_session` VALUES ('e1d172bf5af1fb6938fdf365a167b145','YWI2NTQzMGI0MzY2ZDU2ODIxMzg0Y2Y1MjNkYjQ2MWFhOTkxZjU3YTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUN\nX2F1dGhfdXNlcl9pZIoBAXUu\n','2012-09-19 06:30:48');
INSERT INTO `django_session` VALUES ('eb9873740df3db27703c3335f33db037','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-30 09:25:59');
INSERT INTO `django_session` VALUES ('ebab70d06162d08f7c727c69a2d420a9','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 08:41:27');
INSERT INTO `django_session` VALUES ('f3eb39314a18e97ff476e1d507d305f1','MzA1NTZiNDA5OWQxYTRkZjc5YzM5NjVmZmFiMGZlYjNjZWIyNGY2NTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-23 08:07:42');
INSERT INTO `django_session` VALUES ('f4b3a2ca51147d23fd051c3f7e4ad0eb','MGQyZjJiMDRlMGRkZjc3NDgyMDNkYzJiZmExYTVjOTJjM2E1N2EzOTqAAn1xAShVBHJvbGVxAmNk\namFuZ28uZGIubW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQNjYXV0aG9yaXR5Lm1vZGVscwpS\nb2xlCnEEXWNkamFuZ28uZGIubW9kZWxzLmJhc2UKc2ltcGxlX2NsYXNzX2ZhY3RvcnkKcQWHUnEG\nfXEHKFUKc3RhcnRfdGltZXEIY2RhdGV0aW1lCmRhdGV0aW1lCnEJVQoH3AkFDhArAAAAY2RqYW5n\nby51dGlscy50aW1lem9uZQpVVEMKcQopUnELhlJxDFUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVs\ncy5iYXNlCk1vZGVsU3RhdGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1\nYlUJcm9sZV9kZXNjcRRYDwAAAOi2hee6p+euoeeQhuWRmFUJcm9sZV9uYW1lcRVYDwAAAOi2hee6\np+euoeeQhuWRmFUIZW5kX3RpbWVxFmgJVQoH3AkRBwIzAAAAaAuGUnEXVQJpZHEYigEEdWJVEl9h\ndXRoX3VzZXJfYmFja2VuZHEZVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHEaVQ1fYXV0aF91c2VyX2lkcRuKAQF1Lg==\n','2012-10-01 09:46:24');
INSERT INTO `django_session` VALUES ('f6609415ecfce26a8466f029bdcb8822','OWNkNzEzMDgxOGUzYTdjOTNiOWE5YWJkMTU2YWQ1NmUwMjAyNWQ1YjqAAn1xAShVFWF1dGhvcml0\neV9saXN0X2J1dHRvbnECXXEDKFgJAAAAaXNwc2VsZWN0cQRYBgAAAGlzcGFkZHEFWAcAAABpc3Bl\nZGl0cQZYCQAAAGlzcGRlbGV0ZXEHWAkAAABpc3BpbXBvcnRxCFgJAAAAaXNwZXhwb3J0cQlYDQAA\nAG5vY2luZm9zZWxlY3RxClgKAAAAbm9jaW5mb2FkZHELWAsAAABub2NpbmZvZWRpdHEMWA0AAABu\nb2NpbmZvZGVsZXRlcQ1YDQAAAG5vY2luZm9pbXBvcnRxDlgNAAAAbm9jaW5mb2V4cG9ydHEPWBAA\nAABub2NuZXRpbmZvc2VsZWN0cRBYDQAAAG5vY25ldGluZm9hZGRxEVgOAAAAbm9jbmV0aW5mb2Vk\naXRxElgQAAAAbm9jbmV0aW5mb2RlbGV0ZXETWBAAAABub2NuZXRpbmZvaW1wb3J0cRRYEAAAAG5v\nY25ldGluZm9leHBvcnRxFVgKAAAAcmFja3NlbGVjdHEWWAcAAAByYWNrYWRkcRdYCAAAAHJhY2tl\nZGl0cRhYCgAAAHJhY2tkZWxldGVxGVgKAAAAcmFja2ltcG9ydHEaWAoAAAByYWNrZXhwb3J0cRtY\nDwAAAGVxdWlwbWVudHNlbGVjdHEcWAwAAABlcXVpcG1lbnRhZGRxHVgNAAAAZXF1aXBtZW50ZWRp\ndHEeWA8AAABlcXVpcG1lbnRkZWxldGVxH1gOAAAAZXF1aXBtZW50c3VwZXJxIFgQAAAAc2VydmVy\nY29uZnNlbGVjdHEhWA0AAABzZXJ2ZXJjb25mYWRkcSJYDgAAAHNlcnZlcmNvbmZlZGl0cSNYEAAA\nAHNlcnZlcmNvbmZkZWxldGVxJFgQAAAAc2VydmVyY29uZmltcG9ydHElWBQAAAB2aXJ0dWFsbWFj\naGluZXNlbGVjdHEmWBEAAAB2aXJ0dWFsbWFjaGluZWFkZHEnWBIAAAB2aXJ0dWFsbWFjaGluZWVk\naXRxKFgUAAAAdmlydHVhbG1hY2hpbmVkZWxldGVxKVgUAAAAdmlydHVhbG1hY2hpbmVpbXBvcnRx\nKlgTAAAAdmlydHVhbG1hY2hpbmVzdXBlcnErWAwAAABpcHBvb2xzZWxlY3RxLFgTAAAAYXBwbHly\nZXNvdXJjZXNlbGVjdHEtWBIAAABhcHBseXJlc291cmNlYXBwbHlxLlgTAAAAYXBwbHlyZXNvdXJj\nZWRldGFpbHEvWBIAAABvcmdhbml6YXRpb25zZWxlY3RxMFgPAAAAb3JnYW5pemF0aW9uYWRkcTFY\nEAAAAG9yZ2FuaXphdGlvbmVkaXRxMlgSAAAAb3JnYW5pemF0aW9uZGVsZXRlcTNYDQAAAGFjY291\nbnRzZWxlY3RxNFgKAAAAYWNjb3VudGFkZHE1WAsAAABhY2NvdW50ZWRpdHE2WA0AAABhY2NvdW50\nZGVsZXRlcTdYEAAAAGFjY291bnRzdXBlcnVzZXJxOFgJAAAAbG9nc2VsZWN0cTllVRVhdXRob3Jp\ndHlfbGlzdF9tb2R1bGVxOl1xOyhYAwAAAGlzcHE8WAcAAABub2NpbmZvcT1YCgAAAG5vY25ldGlu\nZm9xPlgEAAAAcmFja3E/WAkAAABlcXVpcG1lbnRxQFgKAAAAc2VydmVyY29uZnFBWA4AAAB2aXJ0\ndWFsbWFjaGluZXFCWAYAAABpcHBvb2xxQ1gNAAAAYXBwbHlyZXNvdXJjZXFEWAwAAABvcmdhbml6\nYXRpb25xRVgHAAAAYWNjb3VudHFGWAkAAABhdXRob3JpdHlxR1gDAAAAbG9ncUhlVRJfYXV0aF91\nc2VyX2JhY2tlbmRxSVUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRx\nSlUNX2F1dGhfdXNlcl9pZHFLigEBVRphdXRob3JpdHlfbGlzdF9tb2R1bGVmaWVsZHFMXXFNKFgK\nAAAAaXNwYWRkcmVzc3FOWAkAAABpc3BwaG9uZTFxT1gJAAAAaXNwcGhvbmUycVBYDgAAAG5vY2lu\nZm9hZGRyZXNzcVFYEwAAAG5vY2luZm9ub2NfdXNlcm5hbWVxUlgMAAAAbm9jaW5mb3Bob25lcVNY\nEQAAAG5vY25ldGluZm9pcF9tYXJrcVRYEQAAAG5vY25ldGluZm9nYXRld2F5cVVYDwAAAG5vY25l\ndGluZm9sZG5zMXFWWA8AAABub2NuZXRpbmZvbGRuczJxV1gNAAAAcmFja3JhdGVkX2FtcHFYWAwA\nAAByYWNrdXNlZF9hbXBxWVgJAAAAcmFja3NwYWNlcVpYDgAAAHJhY2tsZWZ0X3NwYWNlcVtYEQAA\nAGVxdWlwbWVudHNlcXVlbmNlcVxYEwAAAGVxdWlwbWVudHNlcnZpY2Vfbm9xXVgRAAAAZXF1aXBt\nZW50YnV5X3RpbWVxXlgRAAAAZXF1aXBtZW50ZGVhZGxpbmVxX1gYAAAAc2VydmVyY29uZm1hbmFn\nZV9hY2NvdW50cWBYGQAAAHNlcnZlcmNvbmZtYW5hZ2VfcGFzc3dvcmRxYVgTAAAAc2VydmVyY29u\nZm1hbmFnZV9pcHFiWBUAAABzZXJ2ZXJjb25mbWFuYWdlX3BvcnRxY1gcAAAAdmlydHVhbG1hY2hp\nbmVtYW5hZ2VfYWNjb3VudHFkWB0AAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wYXNzd29yZHFlWBcA\nAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9pcHFmWBkAAAB2aXJ0dWFsbWFjaGluZW1hbmFnZV9wb3J0\ncWdYDAAAAGlwcG9vbGlwTWFza3FoZXUu\n','2012-10-25 03:22:48');
INSERT INTO `django_session` VALUES ('fb6b8ee9b927985623eb661a5e82c23f','NWIzOTFjYjFkNjYyNWM3ODY0MWE0NzM1MjY0ODU3YzE3ODQxZTI4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-21 05:37:13');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_site
#

DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table django_site
#
LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;

INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table dynamicconf_a8conf
#

DROP TABLE IF EXISTS `dynamicconf_a8conf`;
CREATE TABLE `dynamicconf_a8conf` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table dynamicconf_a8conf
#
LOCK TABLES `dynamicconf_a8conf` WRITE;
/*!40000 ALTER TABLE `dynamicconf_a8conf` DISABLE KEYS */;

INSERT INTO `dynamicconf_a8conf` VALUES (2,'https://cms.autonavi.com','service-admin','123456','2012-10-18 08:21:14','2012-10-18 08:21:14');
/*!40000 ALTER TABLE `dynamicconf_a8conf` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table dynamicconf_ldapconf
#

DROP TABLE IF EXISTS `dynamicconf_ldapconf`;
CREATE TABLE `dynamicconf_ldapconf` (
  `id` int(11) NOT NULL auto_increment,
  `server` varchar(64) NOT NULL,
  `base_dn` varchar(64) NOT NULL,
  `domainname` varchar(64) NOT NULL,
  `loginname` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table dynamicconf_ldapconf
#
LOCK TABLES `dynamicconf_ldapconf` WRITE;
/*!40000 ALTER TABLE `dynamicconf_ldapconf` DISABLE KEYS */;

INSERT INTO `dynamicconf_ldapconf` VALUES (2,'ldap://10.2.145.102:389','dc=autonavi,dc=com','autonavi','sAMAccountName','service02','Service02','2012-10-18 07:36:46','2012-10-18 07:36:46');
/*!40000 ALTER TABLE `dynamicconf_ldapconf` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table dynamicconf_openstackconf
#

DROP TABLE IF EXISTS `dynamicconf_openstackconf`;
CREATE TABLE `dynamicconf_openstackconf` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `tenant_name` varchar(64) NOT NULL,
  `auth_url` varchar(64) NOT NULL,
  `computer_api_version` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table dynamicconf_openstackconf
#
LOCK TABLES `dynamicconf_openstackconf` WRITE;
/*!40000 ALTER TABLE `dynamicconf_openstackconf` DISABLE KEYS */;

INSERT INTO `dynamicconf_openstackconf` VALUES (3,'user1','123456','api-test','http://10.2.169.6:5000/v2.0','1.1','2012-10-18 08:20:13','2012-10-18 08:20:13');
/*!40000 ALTER TABLE `dynamicconf_openstackconf` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table equipment_equipment
#

DROP TABLE IF EXISTS `equipment_equipment`;
CREATE TABLE `equipment_equipment` (
  `id` int(11) NOT NULL auto_increment,
  `elementid` varchar(64) NOT NULL,
  `element_type` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `element_model` varchar(64) NOT NULL,
  `sequence` varchar(64) NOT NULL,
  `service_no` varchar(64) NOT NULL,
  `buy_time` datetime NOT NULL,
  `deadline` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `department` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `rack_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `equipment_equipment_75ca7e39` (`rack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table equipment_equipment
#
LOCK TABLES `equipment_equipment` WRITE;
/*!40000 ALTER TABLE `equipment_equipment` DISABLE KEYS */;

INSERT INTO `equipment_equipment` VALUES (1,'element1001','1','1','1','1','1','2012-08-09 16:00:00','2012-08-23 16:00:00',0,10,'架构平台中心','2012-08-29 12:59:42','2012-10-12 09:23:14',1);
INSERT INTO `equipment_equipment` VALUES (2,'element1002','2','2','2','2','2','2012-09-02 16:00:00','2012-09-25 16:00:00',0,10,'政企事业部','2012-09-24 08:59:57','2012-10-12 08:49:09',1);
INSERT INTO `equipment_equipment` VALUES (3,'cloud-node1','9','9','9','9','9','2012-10-15 16:00:00','2016-09-30 16:00:00',1,2,'运维持术部','2012-10-16 09:39:50','2012-10-16 09:39:50',1);
INSERT INTO `equipment_equipment` VALUES (4,'1','1','1','1','1','1','2012-10-03 16:00:00','2012-10-19 16:00:00',0,11,'高德集团','2012-10-18 02:06:51','2012-10-18 02:06:51',1);
/*!40000 ALTER TABLE `equipment_equipment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table ippool_ipmodel
#

DROP TABLE IF EXISTS `ippool_ipmodel`;
CREATE TABLE `ippool_ipmodel` (
  `id` int(11) NOT NULL auto_increment,
  `ipAddress` varchar(15) NOT NULL,
  `ipMask` varchar(15) NOT NULL,
  `ipType` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `noc_id` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ippool_ipmodel_5c9aa40f` (`noc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

#
# Dumping data for table ippool_ipmodel
#
LOCK TABLES `ippool_ipmodel` WRITE;
/*!40000 ALTER TABLE `ippool_ipmodel` DISABLE KEYS */;

INSERT INTO `ippool_ipmodel` VALUES (1,'192.168.1.1','255.255.255.0',0,1,1,'');
INSERT INTO `ippool_ipmodel` VALUES (2,'192.168.1.2','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (3,'192.168.1.3','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (4,'192.168.1.4','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (5,'192.168.1.5','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (6,'192.168.1.6','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (7,'192.168.1.7','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (8,'192.168.1.8','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (9,'192.168.1.9','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (10,'192.168.1.10','255.255.255.0',0,1,1,'');
INSERT INTO `ippool_ipmodel` VALUES (11,'192.168.1.11','255.255.255.0',0,1,1,'');
INSERT INTO `ippool_ipmodel` VALUES (12,'192.168.1.12','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (13,'192.168.1.13','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (14,'192.168.1.14','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (15,'192.168.1.15','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (16,'192.168.1.16','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (17,'192.168.1.17','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (18,'192.168.1.18','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (19,'192.168.1.19','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (20,'192.168.1.20','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (21,'192.168.1.21','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (22,'192.168.1.22','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (23,'192.168.1.23','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (24,'192.168.1.24','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (25,'192.168.1.25','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (26,'192.168.1.26','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (27,'192.168.1.27','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (28,'192.168.1.28','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (29,'192.168.1.29','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (30,'192.168.1.30','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (31,'192.168.1.31','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (32,'192.168.1.32','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (33,'192.168.1.33','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (34,'192.168.1.34','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (35,'192.168.1.35','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (36,'192.168.1.36','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (37,'192.168.1.37','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (38,'192.168.1.38','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (39,'192.168.1.39','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (40,'192.168.1.40','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (41,'192.168.1.41','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (42,'192.168.1.42','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (43,'192.168.1.43','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (44,'192.168.1.44','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (45,'192.168.1.45','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (46,'192.168.1.46','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (47,'192.168.1.47','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (48,'192.168.1.48','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (49,'192.168.1.49','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (50,'192.168.1.50','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (51,'192.168.2.1','255.255.255.0',1,1,1,'');
INSERT INTO `ippool_ipmodel` VALUES (52,'192.168.2.2','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (53,'192.168.2.3','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (54,'192.168.2.4','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (55,'192.168.2.5','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (56,'192.168.2.6','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (57,'192.168.2.7','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (58,'192.168.2.8','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (59,'192.168.2.9','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (60,'192.168.2.10','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (61,'192.168.2.11','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (62,'192.168.2.12','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (63,'192.168.2.13','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (64,'192.168.2.14','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (65,'192.168.2.15','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (66,'192.168.2.16','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (67,'192.168.2.17','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (68,'192.168.2.18','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (69,'192.168.2.19','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (70,'192.168.2.20','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (71,'192.168.2.21','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (72,'192.168.2.22','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (73,'192.168.2.23','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (74,'192.168.2.24','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (75,'192.168.2.25','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (76,'192.168.2.26','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (77,'192.168.2.27','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (78,'192.168.2.28','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (79,'192.168.2.29','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (80,'192.168.2.30','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (81,'192.168.2.31','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (82,'192.168.2.32','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (83,'192.168.2.33','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (84,'192.168.2.34','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (85,'192.168.2.35','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (86,'192.168.2.36','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (87,'192.168.2.37','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (88,'192.168.2.38','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (89,'192.168.2.39','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (90,'192.168.2.40','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (91,'192.168.2.41','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (92,'192.168.2.42','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (93,'192.168.2.43','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (94,'192.168.2.44','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (95,'192.168.2.45','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (96,'192.168.2.46','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (97,'192.168.2.47','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (98,'192.168.2.48','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (99,'192.168.2.49','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (100,'192.168.2.50','255.255.255.0',1,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (101,'10.2.169.20','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (102,'10.2.169.21','255.255.255.0',0,1,1,'');
INSERT INTO `ippool_ipmodel` VALUES (103,'10.2.169.22','255.255.255.0',0,1,1,'');
INSERT INTO `ippool_ipmodel` VALUES (104,'10.2.169.23','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (105,'10.2.169.24','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (106,'10.2.169.25','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (107,'10.2.169.26','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (108,'10.2.169.27','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (109,'10.2.169.28','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (110,'10.2.169.29','255.255.255.0',0,0,1,'');
INSERT INTO `ippool_ipmodel` VALUES (111,'10.2.169.30','255.255.255.0',0,0,1,'');
/*!40000 ALTER TABLE `ippool_ipmodel` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table isp_ispmodel
#

DROP TABLE IF EXISTS `isp_ispmodel`;
CREATE TABLE `isp_ispmodel` (
  `id` int(11) NOT NULL auto_increment,
  `ispName` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone1` varchar(16) NOT NULL,
  `phone2` varchar(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Dumping data for table isp_ispmodel
#
LOCK TABLES `isp_ispmodel` WRITE;
/*!40000 ALTER TABLE `isp_ispmodel` DISABLE KEYS */;

INSERT INTO `isp_ispmodel` VALUES (1,'世纪互联','海淀区','84107146','84107100');
INSERT INTO `isp_ispmodel` VALUES (2,'中国移动','北京','00001111','00000000');
INSERT INTO `isp_ispmodel` VALUES (5,'1','1','11111111','11111111');
INSERT INTO `isp_ispmodel` VALUES (6,'2','2','22222222','');
/*!40000 ALTER TABLE `isp_ispmodel` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table log_log
#

DROP TABLE IF EXISTS `log_log`;
CREATE TABLE `log_log` (
  `id` int(11) NOT NULL auto_increment,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `username` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL default '',
  `log_type` int(11) NOT NULL default '0',
  `relate_id` int(11) default NULL,
  `sequence` varchar(64) default NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1164 DEFAULT CHARSET=utf8;

#
# Dumping data for table log_log
#
LOCK TABLES `log_log` WRITE;
/*!40000 ALTER TABLE `log_log` DISABLE KEYS */;

INSERT INTO `log_log` VALUES (2,'2012-08-29 08:33:02','2012-08-29 08:33:02','dashan.yin','运营商世纪互联的总部地址由北京望京改为海淀区大恒',1,1,'1',1);
INSERT INTO `log_log` VALUES (3,'2012-08-29 08:33:02','2012-08-29 08:33:02','dashan.yin','运营商世纪互联的客服电话由84100000改为84107146',1,1,'1',1);
INSERT INTO `log_log` VALUES (4,'2012-08-29 08:33:02','2012-08-29 08:33:02','dashan.yin','运营商世纪互联的常用电话由84107146改为84100000',1,1,'1',1);
INSERT INTO `log_log` VALUES (6,'2012-08-29 08:34:25','2012-08-29 08:34:25','dashan.yin','运营商世纪互联的总部地址由海淀区大恒改为海淀区',1,1,'1',1);
INSERT INTO `log_log` VALUES (22,'2012-08-29 10:16:16','2012-08-29 10:16:16','admin','运营商世纪互联的常用电话由84100000改为84107100',1,1,'1',1);
INSERT INTO `log_log` VALUES (47,'2012-08-30 03:32:40','2012-08-30 03:32:40','admin','机房北京机房的机房地址由北京改为北京望京',2,2,'1.2',1);
INSERT INTO `log_log` VALUES (48,'2012-08-30 03:35:59','2012-08-30 03:35:59','admin','机房南京机房的机房地址由南京市改为南京市某某区',2,1,'1.1',1);
INSERT INTO `log_log` VALUES (49,'2012-08-30 03:36:01','2012-08-30 03:36:01','admin','机房南京机房的机房联系人由user1改为user1+user2',2,1,'1.1',1);
INSERT INTO `log_log` VALUES (50,'2012-08-30 03:36:04','2012-08-30 03:36:04','admin','机房南京机房的机房联系方式由84100000改为84107146',2,1,'1.1',1);
INSERT INTO `log_log` VALUES (52,'2012-08-30 03:46:26','2012-08-30 03:46:26','admin','运营商中国移动的客服电话由00000000改为00001111',1,2,'2',1);
INSERT INTO `log_log` VALUES (54,'2012-08-30 03:48:34','2012-08-30 03:48:34','admin','机房亦庄机房的机房备注信息由这是亦庄机房改为这是亦庄机房，欢迎光临！',2,3,'2.3',1);
INSERT INTO `log_log` VALUES (57,'2012-08-30 03:59:14','2012-08-30 03:59:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (58,'2012-08-30 05:00:11','2012-08-30 05:00:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (59,'2012-08-30 05:06:58','2012-08-30 05:06:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (60,'2012-08-30 05:08:24','2012-08-30 05:08:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (61,'2012-08-30 05:11:00','2012-08-30 05:11:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (62,'2012-08-30 05:34:45','2012-08-30 05:34:45','admin','机房亦庄机房的机房备注信息由这是亦庄机房，欢迎光临！改为亦庄机房',2,3,'2.3',1);
INSERT INTO `log_log` VALUES (63,'2012-08-30 05:37:02','2012-08-30 05:37:02','admin','机房亦庄机房的机房状态由0改为1',2,3,'2.3',1);
INSERT INTO `log_log` VALUES (64,'2012-08-30 06:01:35','2012-08-30 06:01:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (65,'2012-08-30 06:01:45','2012-08-30 06:01:45','admin','机房亦庄机房的机房状态由使用改为备用',2,3,'2.3',1);
INSERT INTO `log_log` VALUES (66,'2012-08-30 06:09:05','2012-08-30 06:09:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (67,'2012-08-30 06:09:15','2012-08-30 06:09:15','admin','机房亦庄机房的机房状态由报废改为使用',2,3,'2.3',1);
INSERT INTO `log_log` VALUES (68,'2012-08-30 06:20:20','2012-08-30 06:20:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (69,'2012-08-30 06:27:20','2012-08-30 06:27:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (70,'2012-08-30 06:27:51','2012-08-30 06:27:51','admin','机架rack1001的机架状态由备用改为使用',3,1,'1.1.1',1);
INSERT INTO `log_log` VALUES (71,'2012-08-30 06:36:32','2012-08-30 06:36:32','admin','execute add nocnetinfo:192.168.1.1-192.168.1.50 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (72,'2012-08-30 06:38:34','2012-08-30 06:38:34','admin','execute add nocnetinfo:192.168.2.1-192.168.2.50 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (73,'2012-08-30 06:42:43','2012-08-30 06:42:43','admin','execute edit nocnetinfo:192.168.2.1-192.168.2.50 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (74,'2012-08-30 06:43:00','2012-08-30 06:43:00','admin','execute edit nocnetinfo:192.168.2.1-192.168.2.50 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (75,'2012-08-30 06:45:56','2012-08-30 06:45:56','admin','execute edit nocnetinfo:192.168.2.1-192.168.2.50 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (76,'2012-08-30 06:59:52','2012-08-30 06:59:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (77,'2012-08-30 07:00:22','2012-08-30 07:00:22','admin','机房南京机房的网络管理中本地DNS1由10.2.161.10改为10.2.161.15',2,1,'1.1',1);
INSERT INTO `log_log` VALUES (78,'2012-08-30 07:12:38','2012-08-30 07:12:38','admin','机房南京机房的网络管理中本地DNS2由10.2.161.10改为10.2.121.10',3,2,'1.1',1);
INSERT INTO `log_log` VALUES (79,'2012-08-30 07:37:11','2012-08-30 07:37:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (80,'2012-08-30 07:40:45','2012-08-30 07:40:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (81,'2012-08-30 07:47:19','2012-08-30 07:47:19','admin','物理机element1001的设备序列号由1改为1.1.1.1',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (82,'2012-08-30 07:47:19','2012-08-30 07:47:19','admin','物理机element1001的售后编号由1改为1',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (83,'2012-08-30 07:47:19','2012-08-30 07:47:19','admin','execute edit equipment:element1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (84,'2012-08-30 07:57:06','2012-08-30 07:57:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (85,'2012-08-30 07:57:33','2012-08-30 07:57:33','admin','物理机element1001的设备序列号由1.1.1.1改为1',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (86,'2012-08-30 08:04:34','2012-08-30 08:04:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (87,'2012-08-30 08:04:54','2012-08-30 08:04:54','admin','物理机element1001的设备序列号由1.1.1.1改为1',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (88,'2012-08-30 08:06:43','2012-08-30 08:06:43','admin','物理机element1001的设备序列号由1.1.1.1改为1',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (89,'2012-08-30 08:15:00','2012-08-30 08:15:00','admin','execute add_basicinfo basicinfo:basicinfo1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (90,'2012-08-30 08:17:08','2012-08-30 08:17:08','admin','execute add_cpu cpu:cpu1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (91,'2012-08-30 08:17:35','2012-08-30 08:17:35','admin','execute add_memory memory:memory1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (92,'2012-08-30 08:17:55','2012-08-30 08:17:55','admin','execute add_disk disk:disk1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (93,'2012-08-30 08:22:36','2012-08-30 08:22:36','admin','execute add_virtualmachine virtualmachine:virtualmachine1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (94,'2012-08-30 09:34:41','2012-08-30 09:34:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (95,'2012-08-30 09:34:56','2012-08-30 09:34:56','admin','虚拟机virtualmachine1001的硬盘大小由250GB改为250GB',5,1,'1.1.1.1.1',1);
INSERT INTO `log_log` VALUES (96,'2012-08-30 09:34:56','2012-08-30 09:34:56','admin','虚拟机virtualmachine1001的管理方式由1改为1asdf',5,1,'1.1.1.1.1',1);
INSERT INTO `log_log` VALUES (97,'2012-08-30 09:41:35','2012-08-30 09:41:35','admin','虚拟机virtualmachine1001的硬盘大小由250GB改为250GB',5,1,'1.1.1.1.1',1);
INSERT INTO `log_log` VALUES (98,'2012-08-30 09:41:35','2012-08-30 09:41:35','admin','虚拟机virtualmachine1001的管理方式由1asdf改为远程管理',5,1,'1.1.1.1.1',1);
INSERT INTO `log_log` VALUES (99,'2012-08-30 10:06:35','2012-08-30 10:06:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (100,'2012-08-30 10:07:03','2012-08-30 10:07:03','admin','虚拟机virtualmachine1001的管理IP由192.168.1.13改为192.168.1.18',5,1,'1.1.1.1.1',1);
INSERT INTO `log_log` VALUES (101,'2012-08-30 10:13:42','2012-08-30 10:13:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (102,'2012-08-30 10:14:35','2012-08-30 10:14:35','admin','execute edit_basicinfo basicinfo:basicinfo1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (103,'2012-08-30 10:55:00','2012-08-30 10:55:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (104,'2012-08-30 10:55:37','2012-08-30 10:55:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (105,'2012-08-30 10:55:47','2012-08-30 10:55:47','admin','物理机element1001的管理方式由1改为1asdf',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (106,'2012-08-30 10:55:47','2012-08-30 10:55:47','admin','execute edit_basicinfo basicinfo:basicinfo1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (107,'2012-08-30 11:15:56','2012-08-30 11:15:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (108,'2012-08-30 11:16:09','2012-08-30 11:16:09','admin','物理机element1001的CPU制造商由1改为cpu1111',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (109,'2012-08-30 11:16:09','2012-08-30 11:16:09','admin','execute edit_cpu cpu:cpu1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (110,'2012-08-30 11:16:19','2012-08-30 11:16:19','admin','物理机element1001的内存制造商由1改为memory1111',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (111,'2012-08-30 11:16:19','2012-08-30 11:16:19','admin','execute edit_memory memory:memory1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (112,'2012-08-30 11:16:28','2012-08-30 11:16:28','admin','物理机element1001的硬盘制造商由1改为disk1111',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (113,'2012-08-30 11:16:28','2012-08-30 11:16:28','admin','execute edit_disk disk:disk1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (114,'2012-08-31 01:33:22','2012-08-31 01:33:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (115,'2012-08-31 02:22:28','2012-08-31 02:22:28','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (116,'2012-08-31 02:25:51','2012-08-31 02:25:51','admin','execute query user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (117,'2012-08-31 02:26:14','2012-08-31 02:26:14','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (118,'2012-09-03 01:57:20','2012-09-03 01:57:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (119,'2012-09-03 02:46:40','2012-09-03 02:46:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (120,'2012-09-04 08:08:38','2012-09-04 08:08:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (121,'2012-09-04 08:11:54','2012-09-04 08:11:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (122,'2012-09-04 09:16:05','2012-09-04 09:16:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (123,'2012-09-04 09:17:51','2012-09-04 09:17:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (124,'2012-09-04 09:20:38','2012-09-04 09:20:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (125,'2012-09-04 10:01:10','2012-09-04 10:01:10','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (126,'2012-09-04 10:05:56','2012-09-04 10:05:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (127,'2012-09-04 10:09:13','2012-09-04 10:09:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (128,'2012-09-04 10:35:13','2012-09-04 10:35:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (129,'2012-09-04 10:36:14','2012-09-04 10:36:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (130,'2012-09-04 10:36:50','2012-09-04 10:36:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (131,'2012-09-05 01:26:34','2012-09-05 01:26:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (132,'2012-09-05 01:39:16','2012-09-05 01:39:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (133,'2012-09-05 02:28:16','2012-09-05 02:28:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (134,'2012-09-05 02:36:11','2012-09-05 02:36:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (135,'2012-09-05 03:00:48','2012-09-05 03:00:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (136,'2012-09-05 03:02:07','2012-09-05 03:02:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (137,'2012-09-05 03:03:48','2012-09-05 03:03:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (138,'2012-09-05 03:44:38','2012-09-05 03:44:38','admin','execute add isp:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (139,'2012-09-05 05:24:19','2012-09-05 05:24:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (140,'2012-09-05 05:27:16','2012-09-05 05:27:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (141,'2012-09-05 06:30:48','2012-09-05 06:30:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (142,'2012-09-05 09:35:22','2012-09-05 09:35:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (143,'2012-09-05 14:00:18','2012-09-05 14:00:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (144,'2012-09-05 14:01:35','2012-09-05 14:01:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (145,'2012-09-05 14:04:55','2012-09-05 14:04:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (146,'2012-09-05 14:08:57','2012-09-05 14:08:57','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (147,'2012-09-05 14:11:11','2012-09-05 14:11:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (148,'2012-09-06 01:33:12','2012-09-06 01:33:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (149,'2012-09-06 01:56:52','2012-09-06 01:56:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (150,'2012-09-06 02:51:45','2012-09-06 02:51:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (151,'2012-09-06 03:18:50','2012-09-06 03:18:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (152,'2012-09-06 03:34:00','2012-09-06 03:34:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (153,'2012-09-06 06:28:43','2012-09-06 06:28:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (154,'2012-09-06 09:43:02','2012-09-06 09:43:02','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (155,'2012-09-06 09:43:11','2012-09-06 09:43:11','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (156,'2012-09-06 09:43:20','2012-09-06 09:43:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (157,'2012-09-06 09:46:35','2012-09-06 09:46:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (158,'2012-09-06 09:46:38','2012-09-06 09:46:38','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (159,'2012-09-06 09:57:07','2012-09-06 09:57:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (160,'2012-09-06 09:57:12','2012-09-06 09:57:12','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (161,'2012-09-07 01:52:15','2012-09-07 01:52:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (162,'2012-09-07 05:09:13','2012-09-07 05:09:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (163,'2012-09-07 05:18:31','2012-09-07 05:18:31','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (164,'2012-09-07 05:19:17','2012-09-07 05:19:17','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (165,'2012-09-07 05:33:04','2012-09-07 05:33:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (166,'2012-09-07 05:33:28','2012-09-07 05:33:28','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (167,'2012-09-07 05:37:13','2012-09-07 05:37:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (168,'2012-09-07 05:37:13','2012-09-07 05:37:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (169,'2012-09-07 05:42:40','2012-09-07 05:42:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (170,'2012-09-07 05:46:47','2012-09-07 05:46:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (171,'2012-09-07 05:46:47','2012-09-07 05:46:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (172,'2012-09-07 05:47:08','2012-09-07 05:47:08','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (173,'2012-09-07 05:50:19','2012-09-07 05:50:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (174,'2012-09-07 05:50:19','2012-09-07 05:50:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (175,'2012-09-07 05:50:31','2012-09-07 05:50:31','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (176,'2012-09-07 06:02:34','2012-09-07 06:02:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (177,'2012-09-07 06:05:40','2012-09-07 06:05:40','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (178,'2012-09-07 06:24:25','2012-09-07 06:24:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (179,'2012-09-07 06:24:25','2012-09-07 06:24:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (180,'2012-09-07 06:25:10','2012-09-07 06:25:10','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (181,'2012-09-07 06:31:52','2012-09-07 06:31:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (182,'2012-09-07 06:32:14','2012-09-07 06:32:14','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (183,'2012-09-07 06:35:00','2012-09-07 06:35:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (184,'2012-09-07 06:35:00','2012-09-07 06:35:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (185,'2012-09-07 06:39:53','2012-09-07 06:39:53','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (186,'2012-09-07 06:40:53','2012-09-07 06:40:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (187,'2012-09-07 06:43:50','2012-09-07 06:43:50','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (188,'2012-09-07 06:44:39','2012-09-07 06:44:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (189,'2012-09-07 06:45:13','2012-09-07 06:45:13','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (190,'2012-09-07 06:45:33','2012-09-07 06:45:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (191,'2012-09-07 06:45:33','2012-09-07 06:45:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (192,'2012-09-07 06:46:29','2012-09-07 06:46:29','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (193,'2012-09-07 07:23:01','2012-09-07 07:23:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (194,'2012-09-07 07:27:19','2012-09-07 07:27:19','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (195,'2012-09-07 07:59:21','2012-09-07 07:59:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (196,'2012-09-07 08:00:01','2012-09-07 08:00:01','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (197,'2012-09-07 08:08:30','2012-09-07 08:08:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (198,'2012-09-07 08:28:04','2012-09-07 08:28:04','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (199,'2012-09-07 08:37:12','2012-09-07 08:37:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (200,'2012-09-07 08:37:40','2012-09-07 08:37:40','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (201,'2012-09-07 08:38:13','2012-09-07 08:38:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (202,'2012-09-07 08:39:14','2012-09-07 08:39:14','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (203,'2012-09-07 08:40:21','2012-09-07 08:40:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (204,'2012-09-07 08:40:24','2012-09-07 08:40:24','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (205,'2012-09-07 08:40:52','2012-09-07 08:40:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (206,'2012-09-07 08:40:55','2012-09-07 08:40:55','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (207,'2012-09-07 08:41:26','2012-09-07 08:41:26','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (208,'2012-09-07 08:41:26','2012-09-07 08:41:26','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (209,'2012-09-07 09:01:13','2012-09-07 09:01:13','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (210,'2012-09-07 09:01:39','2012-09-07 09:01:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (211,'2012-09-07 09:20:13','2012-09-07 09:20:13','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (212,'2012-09-07 09:21:29','2012-09-07 09:21:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (213,'2012-09-07 09:21:29','2012-09-07 09:21:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (214,'2012-09-07 09:21:45','2012-09-07 09:21:45','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (215,'2012-09-07 09:22:41','2012-09-07 09:22:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (216,'2012-09-07 09:22:56','2012-09-07 09:22:56','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (217,'2012-09-07 09:23:09','2012-09-07 09:23:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (218,'2012-09-07 09:23:42','2012-09-07 09:23:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (219,'2012-09-07 09:23:42','2012-09-07 09:23:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (220,'2012-09-07 09:29:58','2012-09-07 09:29:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (221,'2012-09-07 09:30:12','2012-09-07 09:30:12','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (222,'2012-09-07 09:31:09','2012-09-07 09:31:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (223,'2012-09-07 09:31:28','2012-09-07 09:31:28','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (224,'2012-09-07 09:33:04','2012-09-07 09:33:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (225,'2012-09-07 09:39:22','2012-09-07 09:39:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (226,'2012-09-07 09:39:22','2012-09-07 09:39:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (227,'2012-09-07 10:19:07','2012-09-07 10:19:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (228,'2012-09-07 10:19:30','2012-09-07 10:19:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (229,'2012-09-10 01:45:37','2012-09-10 01:45:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (230,'2012-09-10 01:45:37','2012-09-10 01:45:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (231,'2012-09-10 07:07:26','2012-09-10 07:07:26','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (232,'2012-09-10 07:07:39','2012-09-10 07:07:39','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (233,'2012-09-10 07:07:39','2012-09-10 07:07:39','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (234,'2012-09-10 07:26:56','2012-09-10 07:26:56','dashan.yin','execute add isp:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (235,'2012-09-11 03:23:29','2012-09-11 03:23:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (236,'2012-09-11 06:51:35','2012-09-11 06:51:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (237,'2012-09-11 07:35:33','2012-09-11 07:35:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (238,'2012-09-11 08:23:35','2012-09-11 08:23:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (239,'2012-09-11 08:24:13','2012-09-11 08:24:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (240,'2012-09-11 08:31:48','2012-09-11 08:31:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (241,'2012-09-11 08:33:15','2012-09-11 08:33:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (242,'2012-09-11 08:36:04','2012-09-11 08:36:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (243,'2012-09-11 08:39:24','2012-09-11 08:39:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (244,'2012-09-11 08:41:27','2012-09-11 08:41:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (245,'2012-09-11 09:16:56','2012-09-11 09:16:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (246,'2012-09-11 09:20:46','2012-09-11 09:20:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (247,'2012-09-11 09:43:59','2012-09-11 09:43:59','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (248,'2012-09-11 10:02:42','2012-09-11 10:02:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (249,'2012-09-11 12:17:21','2012-09-11 12:17:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (250,'2012-09-11 12:23:16','2012-09-11 12:23:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (251,'2012-09-12 01:52:14','2012-09-12 01:52:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (252,'2012-09-12 01:52:14','2012-09-12 01:52:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (253,'2012-09-12 02:24:30','2012-09-12 02:24:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (254,'2012-09-12 02:36:33','2012-09-12 02:36:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (255,'2012-09-12 03:32:56','2012-09-12 03:32:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (256,'2012-09-12 03:45:29','2012-09-12 03:45:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (257,'2012-09-12 03:47:01','2012-09-12 03:47:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (258,'2012-09-12 03:49:01','2012-09-12 03:49:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (259,'2012-09-12 03:50:14','2012-09-12 03:50:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (260,'2012-09-12 06:52:42','2012-09-12 06:52:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (261,'2012-09-12 06:53:21','2012-09-12 06:53:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (262,'2012-09-12 06:56:13','2012-09-12 06:56:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (263,'2012-09-12 09:26:40','2012-09-12 09:26:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (264,'2012-09-12 09:39:53','2012-09-12 09:39:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (265,'2012-09-12 09:51:41','2012-09-12 09:51:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (266,'2012-09-13 01:38:23','2012-09-13 01:38:23','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (267,'2012-09-13 01:38:58','2012-09-13 01:38:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (268,'2012-09-13 01:40:47','2012-09-13 01:40:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (269,'2012-09-13 01:41:08','2012-09-13 01:41:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (270,'2012-09-13 02:30:42','2012-09-13 02:30:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (271,'2012-09-13 02:32:01','2012-09-13 02:32:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (272,'2012-09-13 02:33:43','2012-09-13 02:33:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (273,'2012-09-13 02:34:27','2012-09-13 02:34:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (274,'2012-09-13 05:24:31','2012-09-13 05:24:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (275,'2012-09-13 05:38:31','2012-09-13 05:38:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (276,'2012-09-13 06:07:07','2012-09-13 06:07:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (277,'2012-09-13 06:09:41','2012-09-13 06:09:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (278,'2012-09-13 06:21:11','2012-09-13 06:21:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (279,'2012-09-13 06:45:38','2012-09-13 06:45:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (280,'2012-09-13 06:57:19','2012-09-13 06:57:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (281,'2012-09-13 07:39:18','2012-09-13 07:39:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (282,'2012-09-13 08:03:06','2012-09-13 08:03:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (283,'2012-09-13 08:05:35','2012-09-13 08:05:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (284,'2012-09-13 08:14:14','2012-09-13 08:14:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (285,'2012-09-13 08:14:40','2012-09-13 08:14:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (286,'2012-09-13 08:17:54','2012-09-13 08:17:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (287,'2012-09-13 08:18:36','2012-09-13 08:18:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (288,'2012-09-13 08:20:22','2012-09-13 08:20:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (289,'2012-09-13 08:28:16','2012-09-13 08:28:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (290,'2012-09-13 08:29:31','2012-09-13 08:29:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (291,'2012-09-13 08:34:56','2012-09-13 08:34:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (292,'2012-09-13 08:43:14','2012-09-13 08:43:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (293,'2012-09-13 08:45:44','2012-09-13 08:45:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (294,'2012-09-13 08:51:25','2012-09-13 08:51:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (295,'2012-09-13 09:06:34','2012-09-13 09:06:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (296,'2012-09-13 09:12:41','2012-09-13 09:12:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (297,'2012-09-13 09:17:06','2012-09-13 09:17:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (298,'2012-09-13 09:22:30','2012-09-13 09:22:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (299,'2012-09-13 09:24:01','2012-09-13 09:24:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (300,'2012-09-13 09:58:25','2012-09-13 09:58:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (301,'2012-09-13 10:13:22','2012-09-13 10:13:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (302,'2012-09-13 10:36:49','2012-09-13 10:36:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (303,'2012-09-13 10:39:31','2012-09-13 10:39:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (304,'2012-09-14 01:33:35','2012-09-14 01:33:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (305,'2012-09-14 01:33:35','2012-09-14 01:33:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (306,'2012-09-14 01:35:31','2012-09-14 01:35:31','admin','execute register user:tao.lu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (307,'2012-09-14 01:35:47','2012-09-14 01:35:47','admin','execute register user:jingwen.wu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (308,'2012-09-14 01:36:00','2012-09-14 01:36:00','admin','execute register user:te.fu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (309,'2012-09-14 01:36:19','2012-09-14 01:36:19','admin','execute register user:zhu.wei success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (310,'2012-09-14 01:36:37','2012-09-14 01:36:37','admin','execute register user:congguang.yang success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (311,'2012-09-14 01:36:57','2012-09-14 01:36:57','admin','execute register user:fanghua.xu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (312,'2012-09-14 01:37:19','2012-09-14 01:37:19','admin','execute register user:jiangtao.zhang success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (313,'2012-09-14 01:37:36','2012-09-14 01:37:36','admin','execute register user:tao.yu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (314,'2012-09-14 01:38:04','2012-09-14 01:38:04','admin','execute register user:yuzhou.huang success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (315,'2012-09-14 01:38:18','2012-09-14 01:38:18','admin','execute register user:yan.shi success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (316,'2012-09-14 01:38:32','2012-09-14 01:38:32','admin','execute register user:dong.zhang success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (317,'2012-09-14 02:04:04','2012-09-14 02:04:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (318,'2012-09-14 02:40:18','2012-09-14 02:40:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (319,'2012-09-14 03:07:07','2012-09-14 03:07:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (320,'2012-09-14 03:18:04','2012-09-14 03:18:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (321,'2012-09-14 03:21:30','2012-09-14 03:21:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (322,'2012-09-14 03:21:49','2012-09-14 03:21:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (323,'2012-09-14 03:22:21','2012-09-14 03:22:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (324,'2012-09-14 03:23:17','2012-09-14 03:23:17','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (325,'2012-09-14 03:23:39','2012-09-14 03:23:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (326,'2012-09-14 03:25:46','2012-09-14 03:25:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (327,'2012-09-14 03:29:12','2012-09-14 03:29:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (328,'2012-09-14 03:29:58','2012-09-14 03:29:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (329,'2012-09-14 03:31:08','2012-09-14 03:31:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (330,'2012-09-14 03:32:15','2012-09-14 03:32:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (331,'2012-09-14 03:33:38','2012-09-14 03:33:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (332,'2012-09-14 03:34:11','2012-09-14 03:34:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (333,'2012-09-14 03:36:38','2012-09-14 03:36:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (334,'2012-09-14 16:02:20','2012-09-14 16:02:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (335,'2012-09-15 00:59:10','2012-09-15 00:59:10','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (336,'2012-09-15 01:02:53','2012-09-15 01:02:53','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (337,'2012-09-15 01:05:16','2012-09-15 01:05:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (338,'2012-09-15 01:33:17','2012-09-15 01:33:17','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (339,'2012-09-15 01:42:05','2012-09-15 01:42:05','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (340,'2012-09-15 01:43:01','2012-09-15 01:43:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (341,'2012-09-15 01:45:50','2012-09-15 01:45:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (342,'2012-09-15 02:48:52','2012-09-15 02:48:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (343,'2012-09-15 02:52:53','2012-09-15 02:52:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (344,'2012-09-15 02:54:49','2012-09-15 02:54:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (345,'2012-09-15 02:56:03','2012-09-15 02:56:03','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (346,'2012-09-15 02:59:27','2012-09-15 02:59:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (347,'2012-09-15 03:20:45','2012-09-15 03:20:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (348,'2012-09-15 03:22:44','2012-09-15 03:22:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (349,'2012-09-15 03:24:07','2012-09-15 03:24:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (350,'2012-09-15 03:27:14','2012-09-15 03:27:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (351,'2012-09-17 02:25:25','2012-09-17 02:25:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (352,'2012-09-17 02:46:42','2012-09-17 02:46:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (353,'2012-09-17 02:49:01','2012-09-17 02:49:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (354,'2012-09-17 02:53:08','2012-09-17 02:53:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (355,'2012-09-17 03:37:07','2012-09-17 03:37:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (356,'2012-09-17 04:56:35','2012-09-17 04:56:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (357,'2012-09-17 05:49:57','2012-09-17 05:49:57','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (358,'2012-09-17 06:23:15','2012-09-17 06:23:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (359,'2012-09-17 06:58:47','2012-09-17 06:58:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (360,'2012-09-17 07:27:21','2012-09-17 07:27:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (361,'2012-09-17 08:02:08','2012-09-17 08:02:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (362,'2012-09-17 08:04:57','2012-09-17 08:04:57','admin','execute edit user:admin success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (363,'2012-09-17 08:08:55','2012-09-17 08:08:55','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (364,'2012-09-17 08:09:50','2012-09-17 08:09:50','fanghua.xu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (365,'2012-09-17 08:11:02','2012-09-17 08:11:02','fanghua.xu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (366,'2012-09-17 08:11:09','2012-09-17 08:11:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (367,'2012-09-17 08:11:09','2012-09-17 08:11:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (368,'2012-09-17 08:23:02','2012-09-17 08:23:02','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (369,'2012-09-17 08:25:02','2012-09-17 08:25:02','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (370,'2012-09-17 08:28:56','2012-09-17 08:28:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (371,'2012-09-17 08:29:04','2012-09-17 08:29:04','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (372,'2012-09-17 08:29:09','2012-09-17 08:29:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (373,'2012-09-17 08:29:09','2012-09-17 08:29:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (374,'2012-09-17 08:30:01','2012-09-17 08:30:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (375,'2012-09-17 08:30:06','2012-09-17 08:30:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (376,'2012-09-17 08:30:28','2012-09-17 08:30:28','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (377,'2012-09-17 08:32:22','2012-09-17 08:32:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (378,'2012-09-17 08:47:03','2012-09-17 08:47:03','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (379,'2012-09-17 08:49:18','2012-09-17 08:49:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (380,'2012-09-17 08:51:54','2012-09-17 08:51:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (381,'2012-09-17 08:51:55','2012-09-17 08:51:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (382,'2012-09-17 08:52:04','2012-09-17 08:52:04','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (383,'2012-09-17 08:55:31','2012-09-17 08:55:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (384,'2012-09-17 08:55:36','2012-09-17 08:55:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (385,'2012-09-17 09:21:02','2012-09-17 09:21:02','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (386,'2012-09-17 09:21:14','2012-09-17 09:21:14','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (387,'2012-09-17 09:21:27','2012-09-17 09:21:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (388,'2012-09-17 09:32:20','2012-09-17 09:32:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (389,'2012-09-17 09:32:49','2012-09-17 09:32:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (390,'2012-09-17 09:32:57','2012-09-17 09:32:57','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (391,'2012-09-17 09:33:07','2012-09-17 09:33:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (392,'2012-09-17 09:35:18','2012-09-17 09:35:18','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (393,'2012-09-17 09:35:35','2012-09-17 09:35:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (394,'2012-09-17 09:46:24','2012-09-17 09:46:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (395,'2012-09-17 09:46:24','2012-09-17 09:46:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (396,'2012-09-17 10:26:33','2012-09-17 10:26:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (397,'2012-09-17 10:31:27','2012-09-17 10:31:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (398,'2012-09-17 11:02:55','2012-09-17 11:02:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (399,'2012-09-17 11:03:31','2012-09-17 11:03:31','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (400,'2012-09-17 11:03:39','2012-09-17 11:03:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (401,'2012-09-17 11:06:43','2012-09-17 11:06:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (402,'2012-09-17 11:46:33','2012-09-17 11:46:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (403,'2012-09-17 11:46:34','2012-09-17 11:46:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (404,'2012-09-17 11:49:33','2012-09-17 11:49:33','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (405,'2012-09-17 11:49:42','2012-09-17 11:49:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (406,'2012-09-17 11:49:42','2012-09-17 11:49:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (407,'2012-09-18 01:41:35','2012-09-18 01:41:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (408,'2012-09-18 03:49:55','2012-09-18 03:49:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (409,'2012-09-18 06:01:34','2012-09-18 06:01:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (410,'2012-09-18 06:46:42','2012-09-18 06:46:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (411,'2012-09-18 06:46:42','2012-09-18 06:46:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (412,'2012-09-18 06:52:55','2012-09-18 06:52:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (413,'2012-09-18 06:52:55','2012-09-18 06:52:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (414,'2012-09-18 07:01:04','2012-09-18 07:01:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (415,'2012-09-18 07:25:54','2012-09-18 07:25:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (416,'2012-09-18 10:21:56','2012-09-18 10:21:56','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (417,'2012-09-18 10:23:00','2012-09-18 10:23:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (418,'2012-09-19 03:12:54','2012-09-19 03:12:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (419,'2012-09-19 06:30:40','2012-09-19 06:30:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (420,'2012-09-19 07:40:21','2012-09-19 07:40:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (421,'2012-09-19 07:44:25','2012-09-19 07:44:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (422,'2012-09-19 07:55:44','2012-09-19 07:55:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (423,'2012-09-19 07:56:05','2012-09-19 07:56:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (424,'2012-09-19 07:56:05','2012-09-19 07:56:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (425,'2012-09-19 07:57:05','2012-09-19 07:57:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (426,'2012-09-19 07:58:01','2012-09-19 07:58:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (427,'2012-09-19 08:26:40','2012-09-19 08:26:40','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (428,'2012-09-19 08:28:38','2012-09-19 08:28:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (429,'2012-09-19 08:28:48','2012-09-19 08:28:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (430,'2012-09-19 08:28:57','2012-09-19 08:28:57','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (431,'2012-09-19 08:32:21','2012-09-19 08:32:21','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (432,'2012-09-19 08:32:32','2012-09-19 08:32:32','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (433,'2012-09-19 08:32:45','2012-09-19 08:32:45','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (434,'2012-09-19 08:34:18','2012-09-19 08:34:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (435,'2012-09-19 08:44:00','2012-09-19 08:44:00','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (436,'2012-09-19 08:44:21','2012-09-19 08:44:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (437,'2012-09-19 08:46:56','2012-09-19 08:46:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (438,'2012-09-19 08:47:36','2012-09-19 08:47:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (439,'2012-09-19 08:47:36','2012-09-19 08:47:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (440,'2012-09-19 08:49:48','2012-09-19 08:49:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (441,'2012-09-19 08:49:48','2012-09-19 08:49:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (442,'2012-09-19 08:54:38','2012-09-19 08:54:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (443,'2012-09-19 08:55:10','2012-09-19 08:55:10','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (444,'2012-09-19 08:55:17','2012-09-19 08:55:17','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (445,'2012-09-19 08:58:24','2012-09-19 08:58:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (446,'2012-09-19 08:59:25','2012-09-19 08:59:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (447,'2012-09-19 08:59:28','2012-09-19 08:59:28','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (448,'2012-09-19 08:59:33','2012-09-19 08:59:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (449,'2012-09-19 09:05:58','2012-09-19 09:05:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (450,'2012-09-19 09:06:02','2012-09-19 09:06:02','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (451,'2012-09-19 09:06:09','2012-09-19 09:06:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (452,'2012-09-19 09:10:02','2012-09-19 09:10:02','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (453,'2012-09-19 09:10:31','2012-09-19 09:10:31','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (454,'2012-09-19 09:10:35','2012-09-19 09:10:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (455,'2012-09-19 09:11:05','2012-09-19 09:11:05','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (456,'2012-09-19 09:11:12','2012-09-19 09:11:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (457,'2012-09-19 09:22:18','2012-09-19 09:22:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (458,'2012-09-19 09:23:19','2012-09-19 09:23:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (459,'2012-09-19 09:24:08','2012-09-19 09:24:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (460,'2012-09-19 09:24:50','2012-09-19 09:24:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (461,'2012-09-19 09:27:05','2012-09-19 09:27:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (462,'2012-09-19 09:34:14','2012-09-19 09:34:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (463,'2012-09-19 09:42:30','2012-09-19 09:42:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (464,'2012-09-19 09:42:53','2012-09-19 09:42:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (465,'2012-09-19 09:46:46','2012-09-19 09:46:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (466,'2012-09-19 09:57:00','2012-09-19 09:57:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (467,'2012-09-19 09:57:30','2012-09-19 09:57:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (468,'2012-09-19 10:01:49','2012-09-19 10:01:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (469,'2012-09-19 10:02:26','2012-09-19 10:02:26','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (470,'2012-09-19 10:03:44','2012-09-19 10:03:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (471,'2012-09-19 10:20:45','2012-09-19 10:20:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (472,'2012-09-19 10:21:13','2012-09-19 10:21:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (473,'2012-09-19 10:21:40','2012-09-19 10:21:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (474,'2012-09-19 10:43:23','2012-09-19 10:43:23','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (475,'2012-09-19 10:53:37','2012-09-19 10:53:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (476,'2012-09-19 10:55:12','2012-09-19 10:55:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (477,'2012-09-19 10:56:47','2012-09-19 10:56:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (478,'2012-09-19 11:17:18','2012-09-19 11:17:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (479,'2012-09-19 11:22:21','2012-09-19 11:22:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (480,'2012-09-19 11:25:12','2012-09-19 11:25:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (481,'2012-09-19 11:25:27','2012-09-19 11:25:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (482,'2012-09-19 11:26:49','2012-09-19 11:26:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (483,'2012-09-19 11:27:48','2012-09-19 11:27:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (484,'2012-09-19 11:46:32','2012-09-19 11:46:32','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (485,'2012-09-19 11:46:56','2012-09-19 11:46:56','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (486,'2012-09-19 12:01:33','2012-09-19 12:01:33','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (487,'2012-09-19 12:01:39','2012-09-19 12:01:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (488,'2012-09-19 12:10:00','2012-09-19 12:10:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (489,'2012-09-19 12:16:15','2012-09-19 12:16:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (490,'2012-09-19 13:09:07','2012-09-19 13:09:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (491,'2012-09-19 13:10:30','2012-09-19 13:10:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (492,'2012-09-19 13:11:14','2012-09-19 13:11:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (493,'2012-09-19 13:13:48','2012-09-19 13:13:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (494,'2012-09-20 01:29:58','2012-09-20 01:29:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (495,'2012-09-20 01:30:40','2012-09-20 01:30:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (496,'2012-09-20 01:36:33','2012-09-20 01:36:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (497,'2012-09-20 01:36:52','2012-09-20 01:36:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (498,'2012-09-20 01:37:06','2012-09-20 01:37:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (499,'2012-09-20 01:47:19','2012-09-20 01:47:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (500,'2012-09-20 01:48:15','2012-09-20 01:48:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (501,'2012-09-20 01:48:48','2012-09-20 01:48:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (502,'2012-09-20 01:49:06','2012-09-20 01:49:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (503,'2012-09-20 01:50:01','2012-09-20 01:50:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (504,'2012-09-20 01:50:12','2012-09-20 01:50:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (505,'2012-09-20 02:11:12','2012-09-20 02:11:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (506,'2012-09-20 02:20:41','2012-09-20 02:20:41','admin','execute edit user:dashan.yin success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (507,'2012-09-20 02:23:31','2012-09-20 02:23:31','admin','execute edit user:dashan.yin success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (508,'2012-09-20 02:29:45','2012-09-20 02:29:45','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (509,'2012-09-20 02:29:58','2012-09-20 02:29:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (510,'2012-09-20 02:33:36','2012-09-20 02:33:36','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (511,'2012-09-20 02:33:42','2012-09-20 02:33:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (512,'2012-09-20 02:33:59','2012-09-20 02:33:59','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (513,'2012-09-20 02:34:35','2012-09-20 02:34:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (514,'2012-09-20 02:38:55','2012-09-20 02:38:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (515,'2012-09-20 03:13:40','2012-09-20 03:13:40','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (516,'2012-09-20 03:20:53','2012-09-20 03:20:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (517,'2012-09-20 03:29:46','2012-09-20 03:29:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (518,'2012-09-20 03:31:24','2012-09-20 03:31:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (519,'2012-09-20 04:59:12','2012-09-20 04:59:12','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (520,'2012-09-20 04:59:17','2012-09-20 04:59:17','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (521,'2012-09-20 05:26:37','2012-09-20 05:26:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (522,'2012-09-20 05:26:50','2012-09-20 05:26:50','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (523,'2012-09-20 05:26:55','2012-09-20 05:26:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (524,'2012-09-20 05:29:46','2012-09-20 05:29:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (525,'2012-09-20 05:34:49','2012-09-20 05:34:49','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (526,'2012-09-20 05:35:55','2012-09-20 05:35:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (527,'2012-09-20 06:15:18','2012-09-20 06:15:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (528,'2012-09-20 06:16:52','2012-09-20 06:16:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (529,'2012-09-20 06:29:42','2012-09-20 06:29:42','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (530,'2012-09-20 06:30:43','2012-09-20 06:30:43','dashan.yin','execute delete isp:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (531,'2012-09-20 06:30:46','2012-09-20 06:30:46','dashan.yin','execute delete isp:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (532,'2012-09-20 06:34:36','2012-09-20 06:34:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (533,'2012-09-20 06:36:53','2012-09-20 06:36:53','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (534,'2012-09-20 07:20:04','2012-09-20 07:20:04','admin','execute edit user:dashan.yin success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (535,'2012-09-20 07:20:20','2012-09-20 07:20:20','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (536,'2012-09-20 07:20:29','2012-09-20 07:20:29','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (537,'2012-09-20 07:20:29','2012-09-20 07:20:29','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (538,'2012-09-20 07:21:47','2012-09-20 07:21:47','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (539,'2012-09-20 07:22:08','2012-09-20 07:22:08','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (540,'2012-09-20 07:28:00','2012-09-20 07:28:00','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (541,'2012-09-20 08:37:03','2012-09-20 08:37:03','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (542,'2012-09-20 08:37:03','2012-09-20 08:37:03','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (543,'2012-09-20 08:37:10','2012-09-20 08:37:10','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (544,'2012-09-20 08:37:18','2012-09-20 08:37:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (545,'2012-09-20 08:37:18','2012-09-20 08:37:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (546,'2012-09-20 08:37:30','2012-09-20 08:37:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (547,'2012-09-20 08:43:18','2012-09-20 08:43:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (548,'2012-09-20 08:43:25','2012-09-20 08:43:25','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (549,'2012-09-20 08:53:06','2012-09-20 08:53:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (550,'2012-09-20 08:56:12','2012-09-20 08:56:12','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (551,'2012-09-20 08:56:21','2012-09-20 08:56:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (552,'2012-09-20 08:56:21','2012-09-20 08:56:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (553,'2012-09-20 09:02:28','2012-09-20 09:02:28','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (554,'2012-09-20 09:02:34','2012-09-20 09:02:34','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (555,'2012-09-20 09:06:51','2012-09-20 09:06:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (556,'2012-09-20 09:07:29','2012-09-20 09:07:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (557,'2012-09-20 09:07:35','2012-09-20 09:07:35','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (558,'2012-09-20 09:07:46','2012-09-20 09:07:46','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (559,'2012-09-20 09:07:50','2012-09-20 09:07:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (560,'2012-09-20 09:18:45','2012-09-20 09:18:45','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (561,'2012-09-20 09:19:27','2012-09-20 09:19:27','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (562,'2012-09-20 09:20:05','2012-09-20 09:20:05','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (563,'2012-09-20 09:20:21','2012-09-20 09:20:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (564,'2012-09-20 09:20:52','2012-09-20 09:20:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (565,'2012-09-20 09:21:32','2012-09-20 09:21:32','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (566,'2012-09-20 09:33:06','2012-09-20 09:33:06','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (567,'2012-09-20 09:33:38','2012-09-20 09:33:38','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (568,'2012-09-20 09:34:00','2012-09-20 09:34:00','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (569,'2012-09-20 09:55:46','2012-09-20 09:55:46','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (570,'2012-09-20 10:20:35','2012-09-20 10:20:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (571,'2012-09-20 10:26:27','2012-09-20 10:26:27','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (572,'2012-09-20 10:26:46','2012-09-20 10:26:46','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (573,'2012-09-20 10:27:02','2012-09-20 10:27:02','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (574,'2012-09-20 10:49:56','2012-09-20 10:49:56','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (575,'2012-09-20 10:50:03','2012-09-20 10:50:03','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (576,'2012-09-20 11:02:54','2012-09-20 11:02:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (577,'2012-09-20 11:03:41','2012-09-20 11:03:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (578,'2012-09-20 11:03:55','2012-09-20 11:03:55','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (579,'2012-09-20 11:04:43','2012-09-20 11:04:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (580,'2012-09-20 11:04:52','2012-09-20 11:04:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (581,'2012-09-20 11:05:09','2012-09-20 11:05:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (582,'2012-09-20 11:05:39','2012-09-20 11:05:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (583,'2012-09-20 11:05:51','2012-09-20 11:05:51','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (584,'2012-09-20 11:07:05','2012-09-20 11:07:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (585,'2012-09-20 11:07:41','2012-09-20 11:07:41','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (586,'2012-09-21 01:34:27','2012-09-21 01:34:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (587,'2012-09-21 01:36:16','2012-09-21 01:36:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (588,'2012-09-21 01:36:55','2012-09-21 01:36:55','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (589,'2012-09-21 01:37:03','2012-09-21 01:37:03','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (590,'2012-09-21 06:25:04','2012-09-21 06:25:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (591,'2012-09-21 06:56:43','2012-09-21 06:56:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (592,'2012-09-21 08:01:39','2012-09-21 08:01:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (593,'2012-09-21 08:15:13','2012-09-21 08:15:13','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (594,'2012-09-21 08:15:21','2012-09-21 08:15:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (595,'2012-09-21 08:15:47','2012-09-21 08:15:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (596,'2012-09-21 08:17:20','2012-09-21 08:17:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (597,'2012-09-21 08:46:54','2012-09-21 08:46:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (598,'2012-09-21 08:47:02','2012-09-21 08:47:02','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (599,'2012-09-21 08:47:12','2012-09-21 08:47:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (600,'2012-09-21 08:48:06','2012-09-21 08:48:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (601,'2012-09-24 02:04:29','2012-09-24 02:04:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (602,'2012-09-24 02:04:29','2012-09-24 02:04:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (603,'2012-09-24 02:15:04','2012-09-24 02:15:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (604,'2012-09-24 02:16:45','2012-09-24 02:16:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (605,'2012-09-24 02:16:49','2012-09-24 02:16:49','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (606,'2012-09-24 02:17:04','2012-09-24 02:17:04','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (607,'2012-09-24 02:18:09','2012-09-24 02:18:09','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (608,'2012-09-24 02:20:01','2012-09-24 02:20:01','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (609,'2012-09-24 02:26:31','2012-09-24 02:26:31','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (610,'2012-09-24 02:32:52','2012-09-24 02:32:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (611,'2012-09-24 02:32:52','2012-09-24 02:32:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (612,'2012-09-24 02:36:40','2012-09-24 02:36:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (613,'2012-09-24 02:39:43','2012-09-24 02:39:43','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (614,'2012-09-24 02:39:52','2012-09-24 02:39:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (615,'2012-09-24 02:50:34','2012-09-24 02:50:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (616,'2012-09-24 02:50:45','2012-09-24 02:50:45','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (617,'2012-09-24 06:42:03','2012-09-24 06:42:03','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (618,'2012-09-24 06:42:58','2012-09-24 06:42:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (619,'2012-09-24 06:44:00','2012-09-24 06:44:00','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (620,'2012-09-24 06:50:48','2012-09-24 06:50:48','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (621,'2012-09-24 06:56:44','2012-09-24 06:56:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (622,'2012-09-24 06:58:24','2012-09-24 06:58:24','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (623,'2012-09-24 07:00:03','2012-09-24 07:00:03','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (624,'2012-09-24 07:36:48','2012-09-24 07:36:48','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (625,'2012-09-24 07:40:05','2012-09-24 07:40:05','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (626,'2012-09-24 07:42:24','2012-09-24 07:42:24','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (627,'2012-09-24 07:46:34','2012-09-24 07:46:34','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (628,'2012-09-24 07:58:00','2012-09-24 07:58:00','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (629,'2012-09-24 07:58:08','2012-09-24 07:58:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (630,'2012-09-24 07:58:39','2012-09-24 07:58:39','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (631,'2012-09-24 07:58:43','2012-09-24 07:58:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (632,'2012-09-24 07:59:08','2012-09-24 07:59:08','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (633,'2012-09-24 08:01:08','2012-09-24 08:01:08','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (634,'2012-09-24 08:01:59','2012-09-24 08:01:59','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (635,'2012-09-24 08:11:44','2012-09-24 08:11:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (636,'2012-09-24 08:12:08','2012-09-24 08:12:08','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (637,'2012-09-24 08:12:30','2012-09-24 08:12:30','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (638,'2012-09-24 08:16:04','2012-09-24 08:16:04','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (639,'2012-09-24 08:16:50','2012-09-24 08:16:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (640,'2012-09-24 08:38:58','2012-09-24 08:38:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (641,'2012-09-24 08:39:40','2012-09-24 08:39:40','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (642,'2012-09-24 08:40:32','2012-09-24 08:40:32','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (643,'2012-09-24 08:40:54','2012-09-24 08:40:54','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (644,'2012-09-24 08:41:18','2012-09-24 08:41:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (645,'2012-09-24 08:52:36','2012-09-24 08:52:36','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (646,'2012-09-24 08:53:02','2012-09-24 08:53:02','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (647,'2012-09-24 08:53:18','2012-09-24 08:53:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (648,'2012-09-24 08:53:45','2012-09-24 08:53:45','dashan.yin','execute add isp:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (649,'2012-09-24 08:54:27','2012-09-24 08:54:27','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (650,'2012-09-24 08:54:46','2012-09-24 08:54:46','dashan.yin','execute add rack:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (651,'2012-09-24 08:55:57','2012-09-24 08:55:57','admin','execute delete rack:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (652,'2012-09-24 08:59:20','2012-09-24 08:59:20','dashan.yin','物理机element1001的使用部门由开发部改为运维技术部',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (653,'2012-09-24 08:59:57','2012-09-24 08:59:57','dashan.yin','execute add equipment:element1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (654,'2012-09-24 09:08:39','2012-09-24 09:08:39','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (655,'2012-09-24 09:08:58','2012-09-24 09:08:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (656,'2012-09-24 09:21:09','2012-09-24 09:21:09','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (657,'2012-09-24 09:23:37','2012-09-24 09:23:37','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (658,'2012-09-24 09:25:10','2012-09-24 09:25:10','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (659,'2012-09-24 09:27:30','2012-09-24 09:27:30','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (660,'2012-09-24 09:27:56','2012-09-24 09:27:56','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (661,'2012-09-24 09:28:50','2012-09-24 09:28:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (662,'2012-09-24 09:30:19','2012-09-24 09:30:19','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (663,'2012-09-24 09:32:04','2012-09-24 09:32:04','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (664,'2012-09-24 09:40:11','2012-09-24 09:40:11','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (665,'2012-09-24 09:50:43','2012-09-24 09:50:43','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (666,'2012-09-24 09:51:41','2012-09-24 09:51:41','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (667,'2012-09-24 09:52:36','2012-09-24 09:52:36','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (668,'2012-09-24 10:11:00','2012-09-24 10:11:00','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (669,'2012-09-24 10:11:05','2012-09-24 10:11:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (670,'2012-09-24 10:12:27','2012-09-24 10:12:27','dashan.yin','execute add_netcard netcard:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (671,'2012-09-24 10:12:37','2012-09-24 10:12:37','dashan.yin','execute add_raidcard raidcard:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (672,'2012-09-24 10:12:46','2012-09-24 10:12:46','dashan.yin','execute add_managecard managecard:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (673,'2012-09-24 10:13:10','2012-09-24 10:13:10','dashan.yin','execute add_appmanage appmanage:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (674,'2012-09-24 10:33:10','2012-09-24 10:33:10','dashan.yin','execute add_basicinfo basicinfo:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (675,'2012-09-24 10:33:33','2012-09-24 10:33:33','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (676,'2012-09-24 10:58:44','2012-09-24 10:58:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (677,'2012-09-24 10:59:12','2012-09-24 10:59:12','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (678,'2012-09-24 11:01:41','2012-09-24 11:01:41','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (679,'2012-09-24 11:01:41','2012-09-24 11:01:41','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (680,'2012-09-24 11:01:58','2012-09-24 11:01:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (681,'2012-09-24 11:12:44','2012-09-24 11:12:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (682,'2012-09-24 11:21:35','2012-09-24 11:21:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (683,'2012-09-24 11:21:49','2012-09-24 11:21:49','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (684,'2012-09-24 11:39:08','2012-09-24 11:39:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (685,'2012-09-24 11:39:27','2012-09-24 11:39:27','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (686,'2012-09-24 11:40:02','2012-09-24 11:40:02','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (687,'2012-09-25 01:29:24','2012-09-25 01:29:24','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (688,'2012-09-25 01:29:24','2012-09-25 01:29:24','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (689,'2012-09-25 01:39:44','2012-09-25 01:39:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (690,'2012-09-25 01:40:51','2012-09-25 01:40:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (691,'2012-09-25 01:41:18','2012-09-25 01:41:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (692,'2012-09-25 01:43:34','2012-09-25 01:43:34','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (693,'2012-09-25 01:47:44','2012-09-25 01:47:44','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (694,'2012-09-25 01:48:13','2012-09-25 01:48:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (695,'2012-09-25 02:21:14','2012-09-25 02:21:14','admin','execute add_cpu cpu:cpu1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (696,'2012-09-25 02:21:25','2012-09-25 02:21:25','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (697,'2012-09-25 02:25:19','2012-09-25 02:25:19','admin','execute add_memory memory:memory1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (698,'2012-09-25 02:25:44','2012-09-25 02:25:44','admin','execute add_disk disk:disk1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (699,'2012-09-25 02:28:17','2012-09-25 02:28:17','admin','execute add_netcard netcard:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (700,'2012-09-25 02:28:31','2012-09-25 02:28:31','admin','execute add_raidcard raidcard:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (701,'2012-09-25 02:28:44','2012-09-25 02:28:44','admin','execute add_managecard managecard:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (702,'2012-09-25 02:29:08','2012-09-25 02:29:08','admin','execute add_appmanage appmanage:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (703,'2012-09-25 02:33:18','2012-09-25 02:33:18','admin','execute add_virtualmachine virtualmachine:virtualmachine1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (704,'2012-09-25 02:34:53','2012-09-25 02:34:53','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (705,'2012-09-25 02:43:54','2012-09-25 02:43:54','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (706,'2012-09-25 02:59:46','2012-09-25 02:59:46','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (707,'2012-09-25 04:35:50','2012-09-25 04:35:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (708,'2012-09-25 04:36:38','2012-09-25 04:36:38','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (709,'2012-09-25 04:37:22','2012-09-25 04:37:22','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (710,'2012-09-25 05:17:06','2012-09-25 05:17:06','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (711,'2012-09-25 05:17:44','2012-09-25 05:17:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (712,'2012-09-25 05:23:35','2012-09-25 05:23:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (713,'2012-09-25 05:32:35','2012-09-25 05:32:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (714,'2012-09-25 05:43:24','2012-09-25 05:43:24','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (715,'2012-09-25 06:06:11','2012-09-25 06:06:11','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (716,'2012-09-25 06:11:52','2012-09-25 06:11:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (717,'2012-09-25 06:18:12','2012-09-25 06:18:12','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (718,'2012-09-25 06:19:13','2012-09-25 06:19:13','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (719,'2012-09-25 06:23:44','2012-09-25 06:23:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (720,'2012-09-25 06:25:08','2012-09-25 06:25:08','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (721,'2012-09-25 06:38:21','2012-09-25 06:38:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (722,'2012-09-25 06:38:45','2012-09-25 06:38:45','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (723,'2012-09-25 06:39:09','2012-09-25 06:39:09','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (724,'2012-09-25 06:40:52','2012-09-25 06:40:52','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (725,'2012-09-25 06:59:50','2012-09-25 06:59:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (726,'2012-09-25 07:01:15','2012-09-25 07:01:15','dashan.yin','execute edit user:dashan.yin success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (727,'2012-09-25 07:04:47','2012-09-25 07:04:47','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (728,'2012-09-25 07:06:08','2012-09-25 07:06:08','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (729,'2012-09-25 07:21:20','2012-09-25 07:21:20','admin','execute edit user:dashan.yin success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (730,'2012-09-25 07:21:25','2012-09-25 07:21:25','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (731,'2012-09-25 07:21:35','2012-09-25 07:21:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (732,'2012-09-25 07:34:10','2012-09-25 07:34:10','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (733,'2012-09-25 07:38:16','2012-09-25 07:38:16','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (734,'2012-09-25 07:38:33','2012-09-25 07:38:33','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (735,'2012-09-25 07:40:33','2012-09-25 07:40:33','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (736,'2012-09-25 07:53:21','2012-09-25 07:53:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (737,'2012-09-25 07:53:44','2012-09-25 07:53:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (738,'2012-09-25 07:55:29','2012-09-25 07:55:29','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (739,'2012-09-25 07:56:28','2012-09-25 07:56:28','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (740,'2012-09-25 08:00:30','2012-09-25 08:00:30','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (741,'2012-09-25 08:00:44','2012-09-25 08:00:44','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (742,'2012-09-25 08:02:04','2012-09-25 08:02:04','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (743,'2012-09-25 08:02:09','2012-09-25 08:02:09','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (744,'2012-09-25 08:02:11','2012-09-25 08:02:11','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (745,'2012-09-25 08:02:12','2012-09-25 08:02:12','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (746,'2012-09-25 08:06:56','2012-09-25 08:06:56','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (747,'2012-09-25 08:06:57','2012-09-25 08:06:57','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (748,'2012-09-25 08:06:58','2012-09-25 08:06:58','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (749,'2012-09-25 08:06:59','2012-09-25 08:06:59','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (750,'2012-09-25 08:07:00','2012-09-25 08:07:00','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (751,'2012-09-25 08:07:01','2012-09-25 08:07:01','dashan.yin','execute search user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (752,'2012-09-25 10:18:53','2012-09-25 10:18:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (753,'2012-09-26 05:52:28','2012-09-26 05:52:28','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (754,'2012-09-26 06:37:17','2012-09-26 06:37:17','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (755,'2012-09-26 07:30:00','2012-09-26 07:30:00','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (756,'2012-09-26 08:24:29','2012-09-26 08:24:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (757,'2012-09-26 08:24:51','2012-09-26 08:24:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (758,'2012-09-26 08:25:57','2012-09-26 08:25:57','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (759,'2012-09-26 08:26:05','2012-09-26 08:26:05','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (760,'2012-09-27 01:17:33','2012-09-27 01:17:33','admin','execute login user:admin ip:10.2.144.41 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (761,'2012-09-27 01:53:29','2012-09-27 01:53:29','admin','execute login user:admin ip:10.2.144.93 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (762,'2012-09-27 01:59:11','2012-09-27 01:59:11','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (763,'2012-09-27 01:59:15','2012-09-27 01:59:15','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (764,'2012-09-27 01:59:29','2012-09-27 01:59:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (765,'2012-09-28 01:42:26','2012-09-28 01:42:26','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (766,'2012-09-28 06:31:07','2012-09-28 06:31:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (767,'2012-09-28 06:35:28','2012-09-28 06:35:28','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (768,'2012-09-28 06:35:33','2012-09-28 06:35:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (769,'2012-09-28 06:38:41','2012-09-28 06:38:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (770,'2012-09-28 06:41:15','2012-09-28 06:41:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (771,'2012-09-28 06:47:21','2012-09-28 06:47:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (772,'2012-09-28 06:54:29','2012-09-28 06:54:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (773,'2012-09-28 06:55:42','2012-09-28 06:55:42','admin','execute add organization:高德集团 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (774,'2012-09-28 06:59:43','2012-09-28 06:59:43','admin','execute add organization:test success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (775,'2012-09-28 07:00:58','2012-09-28 07:00:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (776,'2012-09-28 07:05:41','2012-09-28 07:05:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (777,'2012-09-28 07:06:12','2012-09-28 07:06:12','admin','execute add organization:高德集团 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (778,'2012-09-28 07:06:54','2012-09-28 07:06:54','admin','execute add organization:test success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (779,'2012-09-28 07:09:10','2012-09-28 07:09:10','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (780,'2012-09-28 07:10:26','2012-09-28 07:10:26','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (781,'2012-09-28 07:12:18','2012-09-28 07:12:18','admin','execute delete organization:test success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (782,'2012-09-28 07:12:46','2012-09-28 07:12:46','admin','execute add organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (783,'2012-09-28 07:14:23','2012-09-28 07:14:23','admin','execute delete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (784,'2012-09-28 07:16:02','2012-09-28 07:16:02','admin','execute delete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (785,'2012-09-28 07:16:25','2012-09-28 07:16:25','admin','execute add organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (786,'2012-09-28 07:17:11','2012-09-28 07:17:11','admin','execute delete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (787,'2012-09-28 07:17:42','2012-09-28 07:17:42','admin','execute add organization:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (788,'2012-09-28 07:17:54','2012-09-28 07:17:54','admin','execute add organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (789,'2012-09-28 07:18:11','2012-09-28 07:18:11','admin','execute add organization:22 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (790,'2012-09-28 07:21:10','2012-09-28 07:21:10','admin','execute selecteddelete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (791,'2012-09-28 07:25:05','2012-09-28 07:25:05','admin','execute delete organization:22 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (792,'2012-09-28 07:52:36','2012-09-28 07:52:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (793,'2012-09-28 07:53:09','2012-09-28 07:53:09','admin','execute selecteddelete organization:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (794,'2012-09-28 07:53:20','2012-09-28 07:53:20','admin','execute selecteddelete organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (795,'2012-09-28 07:53:31','2012-09-28 07:53:31','admin','execute add organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (796,'2012-09-28 07:53:38','2012-09-28 07:53:38','admin','execute add organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (797,'2012-09-28 07:55:36','2012-09-28 07:55:36','admin','execute delete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (798,'2012-09-28 07:56:58','2012-09-28 07:56:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (799,'2012-09-28 07:57:40','2012-09-28 07:57:40','admin','execute selecteddelete organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (800,'2012-09-28 07:57:57','2012-09-28 07:57:57','admin','execute add organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (801,'2012-09-28 07:59:14','2012-09-28 07:59:14','admin','execute add organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (802,'2012-09-28 08:00:00','2012-09-28 08:00:00','admin','execute delete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (803,'2012-09-28 08:00:16','2012-09-28 08:00:16','admin','execute add organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (804,'2012-09-28 08:00:20','2012-09-28 08:00:20','admin','execute selecteddelete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (805,'2012-09-28 08:03:32','2012-09-28 08:03:32','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (806,'2012-09-28 08:04:57','2012-09-28 08:04:57','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (807,'2012-09-28 08:05:17','2012-09-28 08:05:17','admin','execute delete organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (808,'2012-09-28 08:05:27','2012-09-28 08:05:27','admin','execute add organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (809,'2012-09-28 08:05:38','2012-09-28 08:05:38','admin','execute add organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (810,'2012-09-28 08:07:03','2012-09-28 08:07:03','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (811,'2012-09-28 08:08:14','2012-09-28 08:08:14','admin','execute selecteddelete organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (812,'2012-09-28 08:08:14','2012-09-28 08:08:14','admin','execute selecteddelete organization:11 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (813,'2012-09-28 08:08:23','2012-09-28 08:08:23','admin','execute add organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (814,'2012-09-28 08:08:29','2012-09-28 08:08:29','admin','execute add organization:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (815,'2012-09-28 08:08:37','2012-09-28 08:08:37','admin','execute add organization:22 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (816,'2012-09-28 08:09:00','2012-09-28 08:09:00','admin','execute selecteddelete organization:22 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (817,'2012-09-28 08:09:00','2012-09-28 08:09:00','admin','execute selecteddelete organization:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (818,'2012-09-28 08:09:00','2012-09-28 08:09:00','admin','execute selecteddelete organization:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (819,'2012-09-28 08:16:21','2012-09-28 08:16:21','admin','execute add organization:云平台中心 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (820,'2012-09-28 08:16:46','2012-09-28 08:16:46','admin','execute add organization:架构平台中心 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (821,'2012-09-28 08:17:04','2012-09-28 08:17:04','admin','execute add organization:运维持术部 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (822,'2012-09-28 08:17:42','2012-09-28 08:17:42','admin','execute add organization:基础平台部 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (823,'2012-09-28 08:17:57','2012-09-28 08:17:57','admin','execute add organization:在线导航部 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (824,'2012-09-28 08:18:43','2012-09-28 08:18:43','admin','execute add organization:移动应用群 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (825,'2012-09-28 08:19:14','2012-09-28 08:19:14','admin','execute add organization:政企事业部 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (826,'2012-09-28 08:35:34','2012-09-28 08:35:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (827,'2012-09-28 08:38:08','2012-09-28 08:38:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (828,'2012-09-28 08:51:51','2012-09-28 08:51:51','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (829,'2012-09-28 08:52:05','2012-09-28 08:52:05','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (830,'2012-09-28 08:52:05','2012-09-28 08:52:05','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (831,'2012-09-28 08:52:25','2012-09-28 08:52:25','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (832,'2012-09-28 08:52:35','2012-09-28 08:52:35','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (833,'2012-09-28 08:53:29','2012-09-28 08:53:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (834,'2012-09-28 08:53:55','2012-09-28 08:53:55','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (835,'2012-09-28 08:54:15','2012-09-28 08:54:15','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (836,'2012-09-28 08:54:41','2012-09-28 08:54:41','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (837,'2012-09-28 08:55:18','2012-09-28 08:55:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (838,'2012-09-29 02:44:36','2012-09-29 02:44:36','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (839,'2012-09-29 02:44:58','2012-09-29 02:44:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (840,'2012-10-08 06:03:07','2012-10-08 06:03:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (841,'2012-10-08 06:03:07','2012-10-08 06:03:07','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (842,'2012-10-08 06:06:14','2012-10-08 06:06:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (843,'2012-10-08 07:21:22','2012-10-08 07:21:22','fanghua.xu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (844,'2012-10-08 07:21:44','2012-10-08 07:21:44','admin','execute login user:admin ip:10.2.144.80 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (845,'2012-10-09 01:21:41','2012-10-09 01:21:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (846,'2012-10-09 03:36:54','2012-10-09 03:36:54','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (847,'2012-10-09 06:42:45','2012-10-09 06:42:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (848,'2012-10-09 06:55:48','2012-10-09 06:55:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (849,'2012-10-10 02:01:38','2012-10-10 02:01:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (850,'2012-10-10 02:01:38','2012-10-10 02:01:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (851,'2012-10-10 02:11:51','2012-10-10 02:11:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (852,'2012-10-10 02:25:17','2012-10-10 02:25:17','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (853,'2012-10-10 02:25:24','2012-10-10 02:25:24','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (854,'2012-10-10 02:25:57','2012-10-10 02:25:57','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (855,'2012-10-10 02:26:06','2012-10-10 02:26:06','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (856,'2012-10-10 02:26:19','2012-10-10 02:26:19','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (857,'2012-10-10 02:26:50','2012-10-10 02:26:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (858,'2012-10-10 02:27:11','2012-10-10 02:27:11','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (859,'2012-10-10 02:30:01','2012-10-10 02:30:01','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (860,'2012-10-10 02:30:22','2012-10-10 02:30:22','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (861,'2012-10-10 02:30:38','2012-10-10 02:30:38','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (862,'2012-10-10 02:32:57','2012-10-10 02:32:57','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (863,'2012-10-10 02:40:09','2012-10-10 02:40:09','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (864,'2012-10-10 02:40:32','2012-10-10 02:40:32','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (865,'2012-10-10 02:46:29','2012-10-10 02:46:29','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (866,'2012-10-10 02:46:44','2012-10-10 02:46:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (867,'2012-10-10 02:46:58','2012-10-10 02:46:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (868,'2012-10-10 03:19:03','2012-10-10 03:19:03','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (869,'2012-10-10 03:19:21','2012-10-10 03:19:21','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (870,'2012-10-10 03:19:38','2012-10-10 03:19:38','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (871,'2012-10-10 03:31:30','2012-10-10 03:31:30','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (872,'2012-10-10 03:31:47','2012-10-10 03:31:47','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (873,'2012-10-10 03:45:46','2012-10-10 03:45:46','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (874,'2012-10-10 03:46:11','2012-10-10 03:46:11','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (875,'2012-10-10 07:25:34','2012-10-10 07:25:34','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (876,'2012-10-10 07:25:51','2012-10-10 07:25:51','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (877,'2012-10-10 07:27:58','2012-10-10 07:27:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (878,'2012-10-10 07:28:50','2012-10-10 07:28:50','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (879,'2012-10-10 07:29:12','2012-10-10 07:29:12','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (880,'2012-10-10 07:38:41','2012-10-10 07:38:41','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (881,'2012-10-10 07:38:58','2012-10-10 07:38:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (882,'2012-10-10 07:39:15','2012-10-10 07:39:15','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (883,'2012-10-10 08:55:45','2012-10-10 08:55:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (884,'2012-10-10 09:01:39','2012-10-10 09:01:39','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (885,'2012-10-10 09:01:44','2012-10-10 09:01:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (886,'2012-10-10 09:03:32','2012-10-10 09:03:32','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (887,'2012-10-10 09:07:47','2012-10-10 09:07:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (888,'2012-10-10 09:07:50','2012-10-10 09:07:50','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (889,'2012-10-10 09:07:55','2012-10-10 09:07:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (890,'2012-10-10 09:07:55','2012-10-10 09:07:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (891,'2012-10-10 09:08:36','2012-10-10 09:08:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (892,'2012-10-10 09:12:51','2012-10-10 09:12:51','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (893,'2012-10-10 09:18:16','2012-10-10 09:18:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (894,'2012-10-10 09:26:30','2012-10-10 09:26:30','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (895,'2012-10-10 09:26:48','2012-10-10 09:26:48','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (896,'2012-10-10 09:27:25','2012-10-10 09:27:25','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (897,'2012-10-10 09:27:33','2012-10-10 09:27:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (898,'2012-10-10 09:31:22','2012-10-10 09:31:22','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (899,'2012-10-10 09:35:09','2012-10-10 09:35:09','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (900,'2012-10-10 09:36:04','2012-10-10 09:36:04','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (901,'2012-10-10 09:41:26','2012-10-10 09:41:26','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (902,'2012-10-10 09:41:39','2012-10-10 09:41:39','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (903,'2012-10-10 09:42:02','2012-10-10 09:42:02','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (904,'2012-10-10 09:42:20','2012-10-10 09:42:20','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (905,'2012-10-10 09:42:31','2012-10-10 09:42:31','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (906,'2012-10-10 09:42:41','2012-10-10 09:42:41','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (907,'2012-10-10 09:42:53','2012-10-10 09:42:53','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (908,'2012-10-10 09:42:58','2012-10-10 09:42:58','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (909,'2012-10-10 09:43:05','2012-10-10 09:43:05','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (910,'2012-10-10 09:43:16','2012-10-10 09:43:16','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (911,'2012-10-10 09:43:17','2012-10-10 09:43:17','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (912,'2012-10-10 09:45:10','2012-10-10 09:45:10','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (913,'2012-10-10 09:45:38','2012-10-10 09:45:38','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (914,'2012-10-10 09:45:44','2012-10-10 09:45:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (915,'2012-10-10 10:02:51','2012-10-10 10:02:51','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (916,'2012-10-10 10:02:57','2012-10-10 10:02:57','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (917,'2012-10-10 10:03:53','2012-10-10 10:03:53','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (918,'2012-10-10 10:04:03','2012-10-10 10:04:03','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (919,'2012-10-10 10:12:06','2012-10-10 10:12:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (920,'2012-10-10 10:12:44','2012-10-10 10:12:44','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (921,'2012-10-10 10:14:54','2012-10-10 10:14:54','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (922,'2012-10-10 10:19:33','2012-10-10 10:19:33','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (923,'2012-10-10 10:30:37','2012-10-10 10:30:37','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (924,'2012-10-10 10:33:39','2012-10-10 10:33:39','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (925,'2012-10-10 10:38:45','2012-10-10 10:38:45','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (926,'2012-10-10 10:48:01','2012-10-10 10:48:01','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (927,'2012-10-10 10:50:54','2012-10-10 10:50:54','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (928,'2012-10-11 01:47:55','2012-10-11 01:47:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (929,'2012-10-11 01:47:55','2012-10-11 01:47:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (930,'2012-10-11 01:52:55','2012-10-11 01:52:55','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (931,'2012-10-11 01:54:15','2012-10-11 01:54:15','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (932,'2012-10-11 01:54:25','2012-10-11 01:54:25','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (933,'2012-10-11 01:54:25','2012-10-11 01:54:25','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (934,'2012-10-11 01:56:40','2012-10-11 01:56:40','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (935,'2012-10-11 01:57:28','2012-10-11 01:57:28','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (936,'2012-10-11 01:58:18','2012-10-11 01:58:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (937,'2012-10-11 02:06:05','2012-10-11 02:06:05','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (938,'2012-10-11 02:13:11','2012-10-11 02:13:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (939,'2012-10-11 02:48:50','2012-10-11 02:48:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (940,'2012-10-11 03:22:48','2012-10-11 03:22:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (941,'2012-10-11 03:22:48','2012-10-11 03:22:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (942,'2012-10-11 05:34:16','2012-10-11 05:34:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (943,'2012-10-11 08:15:22','2012-10-11 08:15:22','dashan.yin','execute login user:dashan.yin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (944,'2012-10-11 09:20:35','2012-10-11 09:20:35','admin','execute login user:admin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (945,'2012-10-11 09:20:35','2012-10-11 09:20:35','admin','execute login user:admin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (946,'2012-10-11 10:32:39','2012-10-11 10:32:39','admin','execute login user:admin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (947,'2012-10-11 10:32:39','2012-10-11 10:32:39','admin','execute login user:admin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (948,'2012-10-12 07:56:34','2012-10-12 07:56:34','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (949,'2012-10-12 07:56:42','2012-10-12 07:56:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (950,'2012-10-12 07:57:01','2012-10-12 07:57:01','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (951,'2012-10-12 07:57:06','2012-10-12 07:57:06','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (952,'2012-10-12 07:57:14','2012-10-12 07:57:14','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (953,'2012-10-12 07:57:42','2012-10-12 07:57:42','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (954,'2012-10-12 08:25:42','2012-10-12 08:25:42','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (955,'2012-10-12 08:33:57','2012-10-12 08:33:57','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (956,'2012-10-12 08:44:07','2012-10-12 08:44:07','admin','execute login user:admin ip:10.2.144.91 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (957,'2012-10-12 08:49:09','2012-10-12 08:49:09','admin','物理机element1002的使用部门由某开发部改为政企事业部',4,2,'1.1.1.2',1);
INSERT INTO `log_log` VALUES (958,'2012-10-12 09:19:30','2012-10-12 09:19:30','admin','execute edit user:tao.lu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (959,'2012-10-12 09:19:37','2012-10-12 09:19:37','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (960,'2012-10-12 09:19:44','2012-10-12 09:19:44','tao.lu','execute login user:tao.lu ip:10.2.144.91 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (961,'2012-10-12 09:19:50','2012-10-12 09:19:50','tao.lu','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (962,'2012-10-12 09:19:54','2012-10-12 09:19:54','admin','execute login user:admin ip:10.2.144.91 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (963,'2012-10-12 09:20:24','2012-10-12 09:20:24','admin','execute edit user:tao.lu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (964,'2012-10-12 09:20:27','2012-10-12 09:20:27','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (965,'2012-10-12 09:20:35','2012-10-12 09:20:35','tao.lu','execute login user:tao.lu ip:10.2.144.91 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (966,'2012-10-12 09:20:54','2012-10-12 09:20:54','tao.lu','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (967,'2012-10-12 09:20:59','2012-10-12 09:20:59','admin','execute login user:admin ip:10.2.144.91 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (968,'2012-10-12 09:22:49','2012-10-12 09:22:49','admin','execute edit user:tao.lu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (969,'2012-10-12 09:23:14','2012-10-12 09:23:14','admin','物理机element1001的使用部门由运维技术部改为架构平台中心',4,1,'1.1.1.1',1);
INSERT INTO `log_log` VALUES (970,'2012-10-12 09:23:17','2012-10-12 09:23:17','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (971,'2012-10-12 09:23:27','2012-10-12 09:23:27','tao.lu','execute login user:tao.lu ip:10.2.144.91 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (972,'2012-10-15 02:04:12','2012-10-15 02:04:12','admin','execute login user:admin ip:10.2.144.114 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (973,'2012-10-15 02:04:32','2012-10-15 02:04:32','dashan.yin','execute login user:dashan.yin ip:10.2.144.114 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (974,'2012-10-15 02:05:13','2012-10-15 02:05:13','dashan.yin','execute login user:dashan.yin ip:10.2.144.114 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (975,'2012-10-15 02:11:18','2012-10-15 02:11:18','dashan.yin','execute login user:dashan.yin ip:10.2.144.114 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (976,'2012-10-15 03:37:00','2012-10-15 03:37:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (977,'2012-10-15 05:04:45','2012-10-15 05:04:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (978,'2012-10-15 08:11:57','2012-10-15 08:11:57','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (979,'2012-10-15 08:12:03','2012-10-15 08:12:03','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (980,'2012-10-15 08:17:42','2012-10-15 08:17:42','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (981,'2012-10-15 08:18:00','2012-10-15 08:18:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (982,'2012-10-16 02:01:35','2012-10-16 02:01:35','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (983,'2012-10-16 06:54:39','2012-10-16 06:54:39','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (984,'2012-10-16 06:54:58','2012-10-16 06:54:58','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (985,'2012-10-16 07:33:58','2012-10-16 07:33:58','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (986,'2012-10-16 07:34:21','2012-10-16 07:34:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (987,'2012-10-16 09:01:17','2012-10-16 09:01:17','admin','execute edit user:jingwen.wu success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (988,'2012-10-16 09:01:36','2012-10-16 09:01:36','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (989,'2012-10-16 09:25:45','2012-10-16 09:25:45','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (990,'2012-10-16 09:25:59','2012-10-16 09:25:59','admin','execute login user:admin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (991,'2012-10-16 09:27:02','2012-10-16 09:27:02','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (992,'2012-10-16 09:27:47','2012-10-16 09:27:47','admin','execute login user:admin ip:10.2.144.79 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (993,'2012-10-16 09:28:53','2012-10-16 09:28:53','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (994,'2012-10-16 09:29:23','2012-10-16 09:29:23','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (995,'2012-10-16 09:39:50','2012-10-16 09:39:50','admin','execute add equipment:cloud-node3 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (996,'2012-10-16 09:49:43','2012-10-16 09:49:43','admin','execute add nocnetinfo:10.2.169.20-10.2.169.25 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (997,'2012-10-16 09:51:36','2012-10-16 09:51:36','admin','execute add_basicinfo basicinfo:9 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (998,'2012-10-16 09:55:38','2012-10-16 09:55:38','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (999,'2012-10-17 01:39:37','2012-10-17 01:39:37','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1000,'2012-10-17 02:26:37','2012-10-17 02:26:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1001,'2012-10-17 08:16:04','2012-10-17 08:16:04','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1002,'2012-10-18 01:46:10','2012-10-18 01:46:10','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1003,'2012-10-18 01:49:23','2012-10-18 01:49:23','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1004,'2012-10-18 01:50:12','2012-10-18 01:50:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1005,'2012-10-18 01:54:45','2012-10-18 01:54:45','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1006,'2012-10-18 02:01:17','2012-10-18 02:01:17','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1007,'2012-10-18 02:02:58','2012-10-18 02:02:58','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1008,'2012-10-18 02:06:11','2012-10-18 02:06:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1009,'2012-10-18 02:06:51','2012-10-18 02:06:51','admin','execute add equipment:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1010,'2012-10-18 02:08:40','2012-10-18 02:08:40','admin','execute add isp:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1011,'2012-10-18 02:19:59','2012-10-18 02:19:59','admin','execute delete_basicinfo basicinfo:9 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1012,'2012-10-18 02:20:28','2012-10-18 02:20:28','admin','execute delete_virtualmachine virtualmachine:virtualmachine1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1013,'2012-10-18 02:20:39','2012-10-18 02:20:39','admin','execute delete_virtualmachine virtualmachine:virtualmachine1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1014,'2012-10-18 02:20:57','2012-10-18 02:20:57','admin','execute selecteddelete_cpu cpu:cpu1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1015,'2012-10-18 02:20:57','2012-10-18 02:20:57','admin','execute selecteddelete_cpu cpu:cpu1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1016,'2012-10-18 02:21:03','2012-10-18 02:21:03','admin','execute selecteddelete_memory memory:memory1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1017,'2012-10-18 02:21:03','2012-10-18 02:21:03','admin','execute selecteddelete_memory memory:memory1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1018,'2012-10-18 02:21:08','2012-10-18 02:21:08','admin','execute selecteddelete_disk disk:disk1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1019,'2012-10-18 02:21:08','2012-10-18 02:21:08','admin','execute selecteddelete_disk disk:disk1002 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1020,'2012-10-18 02:21:22','2012-10-18 02:21:22','admin','execute delete_basicinfo basicinfo:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1021,'2012-10-18 02:21:36','2012-10-18 02:21:36','admin','execute delete_basicinfo basicinfo:basicinfo1001 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1022,'2012-10-18 02:24:30','2012-10-18 02:24:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1023,'2012-10-18 02:26:50','2012-10-18 02:26:50','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1024,'2012-10-18 02:26:54','2012-10-18 02:26:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1025,'2012-10-18 02:30:44','2012-10-18 02:30:44','admin','execute add_basicinfo basicinfo:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1026,'2012-10-18 02:32:13','2012-10-18 02:32:13','admin','execute delete_basicinfo basicinfo:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1027,'2012-10-18 02:35:10','2012-10-18 02:35:10','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1028,'2012-10-18 02:35:14','2012-10-18 02:35:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1029,'2012-10-18 02:36:11','2012-10-18 02:36:11','admin','execute add_basicinfo basicinfo:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1030,'2012-10-18 02:37:10','2012-10-18 02:37:10','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1031,'2012-10-18 02:37:26','2012-10-18 02:37:26','jingwen.wu','execute login user error!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1032,'2012-10-18 02:37:32','2012-10-18 02:37:32','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1033,'2012-10-18 02:41:23','2012-10-18 02:41:23','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1034,'2012-10-18 02:42:27','2012-10-18 02:42:27','admin','execute login user:admin ip:10.2.144.76 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1035,'2012-10-18 02:43:48','2012-10-18 02:43:48','admin','execute add_basicinfo basicinfo:9 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1036,'2012-10-18 02:46:42','2012-10-18 02:46:42','jingwen.wu','execute add_virtualmachine virtualmachine:a1c6db13-976c-4aaf-b6d4-d52fa2a34305 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1037,'2012-10-18 02:48:53','2012-10-18 02:48:53','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1038,'2012-10-18 02:49:51','2012-10-18 02:49:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1039,'2012-10-18 02:57:01','2012-10-18 02:57:01','admin','execute add_virtualmachine virtualmachine:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1040,'2012-10-18 02:57:24','2012-10-18 02:57:24','admin','物理机1的SNMP端口由None改为1',4,1,'1.1.1.4',1);
INSERT INTO `log_log` VALUES (1041,'2012-10-18 03:03:30','2012-10-18 03:03:30','admin','execute delete_virtualmachine virtualmachine:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1042,'2012-10-18 03:03:39','2012-10-18 03:03:39','admin','execute delete_basicinfo basicinfo:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1043,'2012-10-18 03:07:32','2012-10-18 03:07:32','admin','execute add_basicinfo basicinfo:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1044,'2012-10-18 03:08:18','2012-10-18 03:08:18','admin','execute add_virtualmachine virtualmachine:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1045,'2012-10-18 03:08:24','2012-10-18 03:08:24','jingwen.wu','execute add_virtualmachine virtualmachine:8a4a4887-22af-4d4a-af5f-f3707d23188a success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1046,'2012-10-18 03:23:16','2012-10-18 03:23:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1047,'2012-10-18 03:24:15','2012-10-18 03:24:15','admin','execute add_virtualmachine virtualmachine:2 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1048,'2012-10-18 03:27:13','2012-10-18 03:27:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1049,'2012-10-18 03:34:21','2012-10-18 03:34:21','admin','虚拟机1的管理端口由1改为2',5,4,'1.1.1.4.4',1);
INSERT INTO `log_log` VALUES (1050,'2012-10-18 05:25:40','2012-10-18 05:25:40','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1051,'2012-10-18 06:30:35','2012-10-18 06:30:35','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1052,'2012-10-18 06:30:39','2012-10-18 06:30:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1053,'2012-10-18 06:46:30','2012-10-18 06:46:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1054,'2012-10-18 07:12:57','2012-10-18 07:12:57','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1055,'2012-10-18 07:15:34','2012-10-18 07:15:34','admin','execute add nocnetinfo:10.2.169.26-10.2.169.30 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1056,'2012-10-18 07:16:46','2012-10-18 07:16:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1057,'2012-10-18 07:17:37','2012-10-18 07:17:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1058,'2012-10-18 07:33:22','2012-10-18 07:33:22','admin','execute add ldapconf:ldap://10.2.145.102:389 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1059,'2012-10-18 07:35:55','2012-10-18 07:35:55','admin','execute delete ldapconf:ldap://10.2.145.102:389 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1060,'2012-10-18 07:36:46','2012-10-18 07:36:46','admin','execute add ldapconf:ldap://10.2.145.102:389 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1061,'2012-10-18 07:42:32','2012-10-18 07:42:32','jingwen.wu','execute add_virtualmachine virtualmachine:fa7a90cc-e44a-4791-a72f-d6e9634c01dc success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1062,'2012-10-18 08:16:14','2012-10-18 08:16:14','jingwen.wu','execute add_virtualmachine virtualmachine:9607655d-51d6-46f2-89eb-0078b22d240e success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1063,'2012-10-18 08:17:20','2012-10-18 08:17:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1064,'2012-10-18 08:17:30','2012-10-18 08:17:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1065,'2012-10-18 08:17:50','2012-10-18 08:17:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1066,'2012-10-18 08:18:01','2012-10-18 08:18:01','admin','execute add openstackconf:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1067,'2012-10-18 08:18:12','2012-10-18 08:18:12','admin','execute delete openstackconf:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1068,'2012-10-18 08:18:17','2012-10-18 08:18:17','admin','execute add openstackconf:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1069,'2012-10-18 08:19:36','2012-10-18 08:19:36','admin','execute delete openstackconf:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1070,'2012-10-18 08:20:13','2012-10-18 08:20:13','admin','execute add openstackconf:http://10.2.169.6:5000/v2.0 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1071,'2012-10-18 08:20:31','2012-10-18 08:20:31','admin','execute add a8conf:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1072,'2012-10-18 08:20:46','2012-10-18 08:20:46','admin','execute delete a8conf:1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1073,'2012-10-18 08:21:14','2012-10-18 08:21:14','admin','execute add a8conf:https://cms.autonavi.com success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1074,'2012-10-18 08:36:24','2012-10-18 08:36:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1075,'2012-10-18 08:39:28','2012-10-18 08:39:28','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1076,'2012-10-18 08:43:06','2012-10-18 08:43:06','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1077,'2012-10-18 08:43:50','2012-10-18 08:43:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1078,'2012-10-18 08:44:30','2012-10-18 08:44:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1079,'2012-10-18 08:45:47','2012-10-18 08:45:47','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1080,'2012-10-18 08:51:18','2012-10-18 08:51:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1081,'2012-10-18 08:52:24','2012-10-18 08:52:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1082,'2012-10-18 08:53:21','2012-10-18 08:53:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1083,'2012-10-18 09:46:33','2012-10-18 09:46:33','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1084,'2012-10-18 09:51:15','2012-10-18 09:51:15','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1085,'2012-10-18 09:51:24','2012-10-18 09:51:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1086,'2012-10-18 10:01:59','2012-10-18 10:01:59','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1087,'2012-10-18 10:12:19','2012-10-18 10:12:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1088,'2012-10-18 10:20:36','2012-10-18 10:20:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1089,'2012-10-18 10:40:11','2012-10-18 10:40:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1090,'2012-10-18 10:41:44','2012-10-18 10:41:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1091,'2012-10-18 10:47:16','2012-10-18 10:47:16','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1092,'2012-10-18 10:50:15','2012-10-18 10:50:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1093,'2012-10-18 10:51:09','2012-10-18 10:51:09','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1094,'2012-10-18 10:53:22','2012-10-18 10:53:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1095,'2012-10-18 10:55:20','2012-10-18 10:55:20','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1096,'2012-10-18 10:55:43','2012-10-18 10:55:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1097,'2012-10-18 11:00:12','2012-10-18 11:00:12','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1098,'2012-10-18 11:00:31','2012-10-18 11:00:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1099,'2012-10-18 11:09:44','2012-10-18 11:09:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1100,'2012-10-18 11:11:13','2012-10-18 11:11:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1101,'2012-10-18 11:13:14','2012-10-18 11:13:14','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1102,'2012-10-18 11:14:38','2012-10-18 11:14:38','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1103,'2012-10-18 11:15:25','2012-10-18 11:15:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1104,'2012-10-19 01:23:44','2012-10-19 01:23:44','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1105,'2012-10-19 01:31:08','2012-10-19 01:31:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1106,'2012-10-19 01:33:37','2012-10-19 01:33:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1107,'2012-10-19 01:34:36','2012-10-19 01:34:36','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1108,'2012-10-19 01:35:27','2012-10-19 01:35:27','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1109,'2012-10-19 01:37:22','2012-10-19 01:37:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1110,'2012-10-19 01:41:15','2012-10-19 01:41:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1111,'2012-10-19 01:42:13','2012-10-19 01:42:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1112,'2012-10-19 01:42:52','2012-10-19 01:42:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1113,'2012-10-19 01:44:01','2012-10-19 01:44:01','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1114,'2012-10-19 01:55:48','2012-10-19 01:55:48','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1115,'2012-10-19 01:56:22','2012-10-19 01:56:22','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1116,'2012-10-19 02:02:50','2012-10-19 02:02:50','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1117,'2012-10-19 02:39:54','2012-10-19 02:39:54','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1118,'2012-10-19 02:42:04','2012-10-19 02:42:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1119,'2012-10-19 02:43:11','2012-10-19 02:43:11','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1120,'2012-10-19 02:44:13','2012-10-19 02:44:13','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1121,'2012-10-19 02:46:08','2012-10-19 02:46:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1122,'2012-10-19 02:50:30','2012-10-19 02:50:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1123,'2012-10-19 02:54:24','2012-10-19 02:54:24','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1124,'2012-10-19 02:57:42','2012-10-19 02:57:42','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1125,'2012-10-19 03:02:41','2012-10-19 03:02:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1126,'2012-10-19 03:06:37','2012-10-19 03:06:37','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1127,'2012-10-19 03:07:52','2012-10-19 03:07:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1128,'2012-10-19 03:09:31','2012-10-19 03:09:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1129,'2012-10-19 03:10:41','2012-10-19 03:10:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1130,'2012-10-19 03:11:04','2012-10-19 03:11:04','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1131,'2012-10-19 03:12:41','2012-10-19 03:12:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1132,'2012-10-19 03:13:29','2012-10-19 03:13:29','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1133,'2012-10-19 03:13:57','2012-10-19 03:13:57','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1134,'2012-10-19 03:18:51','2012-10-19 03:18:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1135,'2012-10-19 03:20:49','2012-10-19 03:20:49','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1136,'2012-10-19 03:21:43','2012-10-19 03:21:43','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1137,'2012-10-19 03:26:15','2012-10-19 03:26:15','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1138,'2012-10-19 03:26:25','2012-10-19 03:26:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1139,'2012-10-19 03:27:19','2012-10-19 03:27:19','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1140,'2012-10-19 03:28:46','2012-10-19 03:28:46','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1141,'2012-10-19 04:50:31','2012-10-19 04:50:31','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1142,'2012-10-19 04:51:34','2012-10-19 04:51:34','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1143,'2012-10-19 04:58:03','2012-10-19 04:58:03','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1144,'2012-10-19 04:58:28','2012-10-19 04:58:28','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1145,'2012-10-19 04:59:00','2012-10-19 04:59:00','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1146,'2012-10-19 05:00:25','2012-10-19 05:00:25','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1147,'2012-10-19 05:02:08','2012-10-19 05:02:08','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1148,'2012-10-19 05:05:52','2012-10-19 05:05:52','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1149,'2012-10-19 05:10:41','2012-10-19 05:10:41','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1150,'2012-10-19 07:35:39','2012-10-19 07:35:39','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1151,'2012-10-19 08:38:21','2012-10-19 08:38:21','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1152,'2012-10-19 08:56:58','2012-10-19 08:56:58','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1153,'2012-10-19 08:57:48','2012-10-19 08:57:48','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1154,'2012-10-19 09:00:20','2012-10-19 09:00:20','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1155,'2012-10-19 09:01:18','2012-10-19 09:01:18','dashan.yin','execute login user:dashan.yin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1156,'2012-10-19 09:04:48','2012-10-19 09:04:48','dashan.yin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1157,'2012-10-19 09:04:51','2012-10-19 09:04:51','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1158,'2012-10-19 09:05:14','2012-10-19 09:05:14','admin','execute logout user success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1159,'2012-10-19 09:05:18','2012-10-19 09:05:18','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1160,'2012-10-19 09:20:30','2012-10-19 09:20:30','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1161,'2012-10-19 09:41:39','2012-10-19 09:41:39','jingwen.wu','execute login user:jingwen.wu ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1162,'2012-10-22 01:26:28','2012-10-22 01:26:28','admin','execute login user:admin ip:127.0.0.1 success!',0,NULL,'',1);
INSERT INTO `log_log` VALUES (1163,'2012-10-22 01:41:17','2012-10-22 01:41:17','admin','execute login user:admin ip:10.2.144.96 success!',0,NULL,'',1);
/*!40000 ALTER TABLE `log_log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table nocinfo_nocinfo
#

DROP TABLE IF EXISTS `nocinfo_nocinfo`;
CREATE TABLE `nocinfo_nocinfo` (
  `id` int(11) NOT NULL auto_increment,
  `nocid` varchar(64) NOT NULL,
  `nocname` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `noc_username` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `isp_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `nocinfo_nocinfo_733979b` (`isp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table nocinfo_nocinfo
#
LOCK TABLES `nocinfo_nocinfo` WRITE;
/*!40000 ALTER TABLE `nocinfo_nocinfo` DISABLE KEYS */;

INSERT INTO `nocinfo_nocinfo` VALUES (1,'nocinfo1001','南京机房','南京',0,'南京市某某区','user1+user2','84107146','这是南京的机房','2012-08-17 02:14:35','2012-08-30 03:36:07',1);
INSERT INTO `nocinfo_nocinfo` VALUES (2,'nocinfo1002','北京机房','北京',0,'北京望京','user1','84107146','test','2012-08-28 09:34:01','2012-08-30 03:33:00',1);
INSERT INTO `nocinfo_nocinfo` VALUES (3,'nocinfo1003','亦庄机房','北京',1,'北京亦庄','user3','84100000','亦庄机房','2012-08-30 03:47:53','2012-08-30 06:09:15',2);
/*!40000 ALTER TABLE `nocinfo_nocinfo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table nocnetinfo_nocnetinfo
#

DROP TABLE IF EXISTS `nocnetinfo_nocnetinfo`;
CREATE TABLE `nocnetinfo_nocnetinfo` (
  `id` int(11) NOT NULL auto_increment,
  `ip_start` varchar(32) NOT NULL,
  `ip_end` varchar(32) NOT NULL,
  `ipType` int(11) NOT NULL,
  `ip_mark` varchar(32) NOT NULL,
  `gateway` varchar(32) NOT NULL,
  `ldns1` varchar(32) NOT NULL,
  `ldns2` varchar(32) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `nocinfo_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `nocnetinfo_nocnetinfo_55315171` (`nocinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table nocnetinfo_nocnetinfo
#
LOCK TABLES `nocnetinfo_nocnetinfo` WRITE;
/*!40000 ALTER TABLE `nocnetinfo_nocnetinfo` DISABLE KEYS */;

INSERT INTO `nocnetinfo_nocnetinfo` VALUES (1,'192.168.1.1','192.168.1.50',0,'255.255.255.0','192.168.1.1','10.2.161.15','10.2.161.10','2012-08-30 06:36:32','2012-08-30 07:00:22',1);
INSERT INTO `nocnetinfo_nocnetinfo` VALUES (2,'192.168.2.1','192.168.2.50',1,'255.255.255.0','192.168.2.1','10.2.161.10','10.2.121.10','2012-08-30 06:38:34','2012-08-30 07:12:38',1);
INSERT INTO `nocnetinfo_nocnetinfo` VALUES (3,'10.2.169.20','10.2.169.25',0,'255.255.255.0','10.2.169.1','10.2.161.10','','2012-10-16 09:49:43','2012-10-16 09:49:43',1);
INSERT INTO `nocnetinfo_nocnetinfo` VALUES (4,'10.2.169.26','10.2.169.30',0,'255.255.255.0','10.2.169.1','10.2.161.10','','2012-10-18 07:15:34','2012-10-18 07:15:34',1);
/*!40000 ALTER TABLE `nocnetinfo_nocnetinfo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table organization_organization
#

DROP TABLE IF EXISTS `organization_organization`;
CREATE TABLE `organization_organization` (
  `id` int(11) NOT NULL auto_increment,
  `organization_name` varchar(64) NOT NULL,
  `organization_desc` varchar(64) NOT NULL,
  `level` int(11) NOT NULL default '0',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `parent_organization_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `organization_organization_45a6fd1b` (`parent_organization_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Dumping data for table organization_organization
#
LOCK TABLES `organization_organization` WRITE;
/*!40000 ALTER TABLE `organization_organization` DISABLE KEYS */;

INSERT INTO `organization_organization` VALUES (1,'高德集团','高德集团',0,'2012-09-28 07:06:02','2012-09-28 07:06:11',1);
INSERT INTO `organization_organization` VALUES (20,'云平台中心','云平台中心',1,'2012-09-28 08:16:21','2012-09-28 08:35:53',1);
INSERT INTO `organization_organization` VALUES (21,'架构平台中心','架构平台中心',2,'2012-09-28 08:16:46','2012-09-28 08:36:02',20);
INSERT INTO `organization_organization` VALUES (22,'运维持术部','运维技术部',3,'2012-09-28 08:17:04','2012-09-28 08:36:08',21);
INSERT INTO `organization_organization` VALUES (23,'基础平台部','基础平台部',3,'2012-09-28 08:17:42','2012-09-28 08:36:17',21);
INSERT INTO `organization_organization` VALUES (24,'在线导航部','在线导航部',3,'2012-09-28 08:17:57','2012-09-28 08:36:41',21);
INSERT INTO `organization_organization` VALUES (25,'移动应用群','移动应用群',1,'2012-09-28 08:18:43','2012-09-28 08:36:49',1);
INSERT INTO `organization_organization` VALUES (26,'政企事业部','政企事业部',1,'2012-09-28 08:19:14','2012-09-28 08:36:54',1);
/*!40000 ALTER TABLE `organization_organization` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table rack_rack
#

DROP TABLE IF EXISTS `rack_rack`;
CREATE TABLE `rack_rack` (
  `id` int(11) NOT NULL auto_increment,
  `rackid` varchar(64) NOT NULL,
  `rated_amp` int(11) NOT NULL,
  `used_amp` int(11) NOT NULL,
  `space` int(11) NOT NULL,
  `left_space` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `nocinfo_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `rack_rack_55315171` (`nocinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table rack_rack
#
LOCK TABLES `rack_rack` WRITE;
/*!40000 ALTER TABLE `rack_rack` DISABLE KEYS */;

INSERT INTO `rack_rack` VALUES (1,'rack1001',10,8,48,15,1,'2012-08-29 12:54:43','2012-10-18 02:06:51',1);
/*!40000 ALTER TABLE `rack_rack` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_appmanage
#

DROP TABLE IF EXISTS `serverconf_appmanage`;
CREATE TABLE `serverconf_appmanage` (
  `id` int(11) NOT NULL auto_increment,
  `appmanageid` varchar(64) NOT NULL,
  `appmanage_name_zh` varchar(64) NOT NULL,
  `appmanage_name_cn` varchar(64) NOT NULL,
  `department` varchar(64) NOT NULL,
  `developer` varchar(32) NOT NULL,
  `developer_phone` varchar(32) NOT NULL,
  `maintainer` varchar(32) NOT NULL,
  `maintainer_phone` varchar(32) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_appmanage_57fa5429` (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_appmanage
#
LOCK TABLES `serverconf_appmanage` WRITE;
/*!40000 ALTER TABLE `serverconf_appmanage` DISABLE KEYS */;

INSERT INTO `serverconf_appmanage` VALUES (1,'1','1','asdfasdf','1','1','111111111111','1','111111111111','2012-09-24 10:13:10','2012-09-24 10:13:10',1);
INSERT INTO `serverconf_appmanage` VALUES (2,'2','2','asdasdf','2','2','222222222222','2','222222222222','2012-09-25 02:29:08','2012-09-25 02:29:08',2);
/*!40000 ALTER TABLE `serverconf_appmanage` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_basicinfo
#

DROP TABLE IF EXISTS `serverconf_basicinfo`;
CREATE TABLE `serverconf_basicinfo` (
  `id` int(11) NOT NULL auto_increment,
  `basicinfoid` varchar(64) NOT NULL,
  `os_type` varchar(64) NOT NULL,
  `os_byte` varchar(64) NOT NULL,
  `os_version` varchar(64) NOT NULL,
  `cpu` int(11) NOT NULL,
  `left_cpu` int(11) NOT NULL,
  `memory` int(11) NOT NULL,
  `left_memory` int(11) NOT NULL,
  `disk` int(11) NOT NULL,
  `left_disk` int(11) NOT NULL,
  `manage_way` varchar(32) NOT NULL,
  `manage_account` varchar(32) NOT NULL,
  `manage_password` varchar(32) NOT NULL,
  `manage_ip` varchar(32) NOT NULL,
  `manage_port` int(11) NOT NULL,
  `snmp_port` int(11) default NULL,
  `in_ip` varchar(32) NOT NULL,
  `out_ip` varchar(32) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `equipment_id` (`equipment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_basicinfo
#
LOCK TABLES `serverconf_basicinfo` WRITE;
/*!40000 ALTER TABLE `serverconf_basicinfo` DISABLE KEYS */;

INSERT INTO `serverconf_basicinfo` VALUES (2,'9','9','32','9',4,1,2,-1,199,199,'9','9','9','',9,9,'10.2.169.22','','2012-10-18 02:43:48','2012-10-18 08:16:13',3);
INSERT INTO `serverconf_basicinfo` VALUES (3,'1','1','1','1',0,-3,0,-3,0,-3,'1','1','1','192.168.1.1',1,NULL,'192.168.1.10','192.168.2.1','2012-10-18 03:07:32','2012-10-18 03:34:21',4);
/*!40000 ALTER TABLE `serverconf_basicinfo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_cpu
#

DROP TABLE IF EXISTS `serverconf_cpu`;
CREATE TABLE `serverconf_cpu` (
  `id` int(11) NOT NULL auto_increment,
  `cpuid` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `model` varchar(32) NOT NULL,
  `core` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_cpu_57fa5429` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_cpu
#
LOCK TABLES `serverconf_cpu` WRITE;
/*!40000 ALTER TABLE `serverconf_cpu` DISABLE KEYS */;

/*!40000 ALTER TABLE `serverconf_cpu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_disk
#

DROP TABLE IF EXISTS `serverconf_disk`;
CREATE TABLE `serverconf_disk` (
  `id` int(11) NOT NULL auto_increment,
  `diskid` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `disk_type` varchar(64) NOT NULL,
  `model` varchar(32) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_disk_57fa5429` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_disk
#
LOCK TABLES `serverconf_disk` WRITE;
/*!40000 ALTER TABLE `serverconf_disk` DISABLE KEYS */;

/*!40000 ALTER TABLE `serverconf_disk` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_managecard
#

DROP TABLE IF EXISTS `serverconf_managecard`;
CREATE TABLE `serverconf_managecard` (
  `id` int(11) NOT NULL auto_increment,
  `managecardid` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `model` varchar(32) NOT NULL,
  `managecard_no` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_managecard_57fa5429` (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_managecard
#
LOCK TABLES `serverconf_managecard` WRITE;
/*!40000 ALTER TABLE `serverconf_managecard` DISABLE KEYS */;

INSERT INTO `serverconf_managecard` VALUES (1,'1','1','1','1','2012-09-24 10:12:46','2012-09-24 10:12:46',1);
INSERT INTO `serverconf_managecard` VALUES (2,'2','2','2','2','2012-09-25 02:28:44','2012-09-25 02:28:44',2);
/*!40000 ALTER TABLE `serverconf_managecard` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_memory
#

DROP TABLE IF EXISTS `serverconf_memory`;
CREATE TABLE `serverconf_memory` (
  `id` int(11) NOT NULL auto_increment,
  `memoryid` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `model` varchar(32) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_memory_57fa5429` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_memory
#
LOCK TABLES `serverconf_memory` WRITE;
/*!40000 ALTER TABLE `serverconf_memory` DISABLE KEYS */;

/*!40000 ALTER TABLE `serverconf_memory` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_netcard
#

DROP TABLE IF EXISTS `serverconf_netcard`;
CREATE TABLE `serverconf_netcard` (
  `id` int(11) NOT NULL auto_increment,
  `netcardid` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `netcard_type` varchar(64) NOT NULL,
  `mac_address` varchar(64) NOT NULL,
  `model` varchar(32) NOT NULL,
  `count` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_netcard_57fa5429` (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_netcard
#
LOCK TABLES `serverconf_netcard` WRITE;
/*!40000 ALTER TABLE `serverconf_netcard` DISABLE KEYS */;

INSERT INTO `serverconf_netcard` VALUES (1,'1','1','1','1','1',1,'2012-09-24 10:12:27','2012-09-24 10:12:27',1);
INSERT INTO `serverconf_netcard` VALUES (2,'2','2','2','2','2',1,'2012-09-25 02:28:17','2012-09-25 02:28:17',2);
/*!40000 ALTER TABLE `serverconf_netcard` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_raidcard
#

DROP TABLE IF EXISTS `serverconf_raidcard`;
CREATE TABLE `serverconf_raidcard` (
  `id` int(11) NOT NULL auto_increment,
  `raidcardid` varchar(64) NOT NULL,
  `manufacture` varchar(64) NOT NULL,
  `model` varchar(32) NOT NULL,
  `raidcard_no` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_raidcard_57fa5429` (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_raidcard
#
LOCK TABLES `serverconf_raidcard` WRITE;
/*!40000 ALTER TABLE `serverconf_raidcard` DISABLE KEYS */;

INSERT INTO `serverconf_raidcard` VALUES (1,'1','1','1','1','2012-09-24 10:12:37','2012-09-24 10:12:37',1);
INSERT INTO `serverconf_raidcard` VALUES (2,'2','2','2','2','2012-09-25 02:28:31','2012-09-25 02:28:31',2);
/*!40000 ALTER TABLE `serverconf_raidcard` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_serverconf
#

DROP TABLE IF EXISTS `serverconf_serverconf`;
CREATE TABLE `serverconf_serverconf` (
  `id` int(11) NOT NULL auto_increment,
  `in_ip` varchar(32) NOT NULL,
  `out_ip` varchar(32) NOT NULL,
  `cpu` varchar(64) NOT NULL,
  `memory` varchar(64) NOT NULL,
  `disk` varchar(64) NOT NULL,
  `netcard` varchar(64) NOT NULL,
  `raidcard` varchar(64) NOT NULL,
  `managercard` varchar(64) NOT NULL,
  `os` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `equipment_id` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_serverconf
#
LOCK TABLES `serverconf_serverconf` WRITE;
/*!40000 ALTER TABLE `serverconf_serverconf` DISABLE KEYS */;

/*!40000 ALTER TABLE `serverconf_serverconf` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table serverconf_virtualmachine
#

DROP TABLE IF EXISTS `serverconf_virtualmachine`;
CREATE TABLE `serverconf_virtualmachine` (
  `id` int(11) NOT NULL auto_increment,
  `virtualmachineid` varchar(64) NOT NULL,
  `os_type` varchar(64) NOT NULL,
  `os_byte` varchar(64) NOT NULL,
  `os_version` varchar(64) NOT NULL,
  `cpu` int(11) NOT NULL,
  `memory` int(11) NOT NULL,
  `disk` int(11) NOT NULL,
  `manage_account` varchar(32) NOT NULL,
  `manage_password` varchar(32) NOT NULL,
  `manage_port` int(11) NOT NULL,
  `snmp_port` int(11) default NULL,
  `in_ip` varchar(32) NOT NULL,
  `out_ip` varchar(32) NOT NULL,
  `department` varchar(64) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `serverconf_virtualmachine_57fa5429` (`equipment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Dumping data for table serverconf_virtualmachine
#
LOCK TABLES `serverconf_virtualmachine` WRITE;
/*!40000 ALTER TABLE `serverconf_virtualmachine` DISABLE KEYS */;

INSERT INTO `serverconf_virtualmachine` VALUES (4,'1','1','1','1',1,1,1,'1','1',2,NULL,'192.168.1.12','192.168.2.10','高德集团','2012-10-18 03:08:18','2012-10-18 03:34:21',4);
INSERT INTO `serverconf_virtualmachine` VALUES (5,'2','2','2','2',2,2,2,'2','2',2,NULL,'192.168.1.12','192.168.2.15','高德集团','2012-10-18 03:24:15','2012-10-18 03:28:34',4);
INSERT INTO `serverconf_virtualmachine` VALUES (7,'9607655d-51d6-46f2-89eb-0078b22d240e','centos-i386','32','',1,1,0,'root','123456',22,NULL,'10.2.169.21','','运维技术部2','2012-10-18 08:16:10','2012-10-18 08:16:10',3);
/*!40000 ALTER TABLE `serverconf_virtualmachine` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table account_userprofile
#

ALTER TABLE `account_userprofile`
ADD CONSTRAINT `user_id_refs_id_5ef8aa5f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

#
#  Foreign keys for table auth_group_permissions
#

ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

#
#  Foreign keys for table auth_permission
#

ALTER TABLE `auth_permission`
ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

#
#  Foreign keys for table auth_user_groups
#

ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

#
#  Foreign keys for table auth_user_user_permissions
#

ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

#
#  Foreign keys for table authority_button
#

ALTER TABLE `authority_button`
ADD CONSTRAINT `module_id_refs_id_6c5e77e3` FOREIGN KEY (`module_id`) REFERENCES `authority_module` (`id`);

#
#  Foreign keys for table authority_field
#

ALTER TABLE `authority_field`
ADD CONSTRAINT `table_id_refs_id_42f11435` FOREIGN KEY (`table_id`) REFERENCES `authority_table` (`id`);

#
#  Foreign keys for table authority_modulefield
#

ALTER TABLE `authority_modulefield`
ADD CONSTRAINT `field_id_refs_id_4d4d1461` FOREIGN KEY (`field_id`) REFERENCES `authority_field` (`id`),
ADD CONSTRAINT `module_id_refs_id_41dd01aa` FOREIGN KEY (`module_id`) REFERENCES `authority_module` (`id`);

#
#  Foreign keys for table authority_role_buttons
#

ALTER TABLE `authority_role_buttons`
ADD CONSTRAINT `button_id_refs_id_58b8b20b` FOREIGN KEY (`button_id`) REFERENCES `authority_button` (`id`),
ADD CONSTRAINT `role_id_refs_id_387fa5c7` FOREIGN KEY (`role_id`) REFERENCES `authority_role` (`id`);

#
#  Foreign keys for table authority_role_modulefields
#

ALTER TABLE `authority_role_modulefields`
ADD CONSTRAINT `modulefield_id_refs_id_7a008b6f` FOREIGN KEY (`modulefield_id`) REFERENCES `authority_modulefield` (`id`),
ADD CONSTRAINT `role_id_refs_id_323b9c6` FOREIGN KEY (`role_id`) REFERENCES `authority_role` (`id`);

#
#  Foreign keys for table authority_role_modules
#

ALTER TABLE `authority_role_modules`
ADD CONSTRAINT `module_id_refs_id_3917287b` FOREIGN KEY (`module_id`) REFERENCES `authority_module` (`id`),
ADD CONSTRAINT `role_id_refs_id_159aea45` FOREIGN KEY (`role_id`) REFERENCES `authority_role` (`id`);

#
#  Foreign keys for table authority_role_users
#

ALTER TABLE `authority_role_users`
ADD CONSTRAINT `role_id_refs_id_40365130` FOREIGN KEY (`role_id`) REFERENCES `authority_role` (`id`),
ADD CONSTRAINT `user_id_refs_id_55574569` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

#
#  Foreign keys for table django_admin_log
#

ALTER TABLE `django_admin_log`
ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

#
#  Foreign keys for table equipment_equipment
#

ALTER TABLE `equipment_equipment`
ADD CONSTRAINT `rack_id_refs_id_a06bbd7` FOREIGN KEY (`rack_id`) REFERENCES `rack_rack` (`id`);

#
#  Foreign keys for table ippool_ipmodel
#

ALTER TABLE `ippool_ipmodel`
ADD CONSTRAINT `noc_id_refs_id_2d814141` FOREIGN KEY (`noc_id`) REFERENCES `nocinfo_nocinfo` (`id`);

#
#  Foreign keys for table nocinfo_nocinfo
#

ALTER TABLE `nocinfo_nocinfo`
ADD CONSTRAINT `isp_id_refs_id_74b9eca1` FOREIGN KEY (`isp_id`) REFERENCES `isp_ispmodel` (`id`);

#
#  Foreign keys for table nocnetinfo_nocnetinfo
#

ALTER TABLE `nocnetinfo_nocnetinfo`
ADD CONSTRAINT `nocinfo_id_refs_id_a1d2cdd` FOREIGN KEY (`nocinfo_id`) REFERENCES `nocinfo_nocinfo` (`id`);

#
#  Foreign keys for table rack_rack
#

ALTER TABLE `rack_rack`
ADD CONSTRAINT `nocinfo_id_refs_id_410754df` FOREIGN KEY (`nocinfo_id`) REFERENCES `nocinfo_nocinfo` (`id`);

#
#  Foreign keys for table serverconf_appmanage
#

ALTER TABLE `serverconf_appmanage`
ADD CONSTRAINT `equipment_id_refs_id_5d28cbf` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_cpu
#

ALTER TABLE `serverconf_cpu`
ADD CONSTRAINT `equipment_id_refs_id_5913db39` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_disk
#

ALTER TABLE `serverconf_disk`
ADD CONSTRAINT `equipment_id_refs_id_5a72349f` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_managecard
#

ALTER TABLE `serverconf_managecard`
ADD CONSTRAINT `equipment_id_refs_id_7a223801` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_memory
#

ALTER TABLE `serverconf_memory`
ADD CONSTRAINT `equipment_id_refs_id_121f1445` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_netcard
#

ALTER TABLE `serverconf_netcard`
ADD CONSTRAINT `equipment_id_refs_id_2d8f3a6e` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_raidcard
#

ALTER TABLE `serverconf_raidcard`
ADD CONSTRAINT `equipment_id_refs_id_4005cbc6` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);

#
#  Foreign keys for table serverconf_serverconf
#

ALTER TABLE `serverconf_serverconf`
ADD CONSTRAINT `equipment_id_refs_id_71395563` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
