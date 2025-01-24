/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.18-log : Database - mychat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`mychat` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mychat`;

/*Table structure for table `chatmessage` */

DROP TABLE IF EXISTS `chatmessage`;

CREATE TABLE `chatmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `username` varchar(100) DEFAULT NULL COMMENT 'Username',
  `avatar` varchar(300) DEFAULT NULL COMMENT 'Avatar',
  `timestamp` varchar(50) DEFAULT NULL COMMENT 'Timestamp for getting standard time',
  `content` text COMMENT 'Message content',
  `unreadpoint` int(11) DEFAULT NULL COMMENT 'Unread status, 0 = read, 1 = unread',
  `type` int(11) DEFAULT NULL COMMENT 'Message type: 1 = user message, 2 = group message',
  `toid` int(255) DEFAULT NULL COMMENT 'Recipient/User ID',
  `from` int(255) DEFAULT NULL COMMENT 'Sender ID',
  `unreadnumbers` text COMMENT 'For group messages: list of users who haven’t read it',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1142 DEFAULT CHARSET=utf8 COMMENT='Chat records table';

/*Table structure for table `flock` */

DROP TABLE IF EXISTS `flock`;

CREATE TABLE `flock` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `userid` int(11) DEFAULT NULL COMMENT 'Creator ID',
  `groupname` varchar(30) DEFAULT NULL COMMENT 'Group Name',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'Avatar',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Groups';

/* Custom metadata description */

-- Meta information for search engines
-- Description: Lulichat is the ultimate business chat software, helping teams streamline their communication and boost productivity. Get started now!
