/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : submsg-member

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-28 12:21:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `com_industry_big` varchar(64) DEFAULT NULL,
  `com_industry _small` varchar(64) DEFAULT NULL,
  `com_name` varchar(16) NOT NULL,
  `com_site` varchar(64) DEFAULT NULL,
  `com_telphone` varchar(32) DEFAULT NULL,
  `com_fax` varchar(32) DEFAULT NULL,
  `com_province` varchar(16) DEFAULT NULL,
  `com_city` varchar(16) DEFAULT NULL,
  `com_town` varchar(16) DEFAULT NULL,
  `com_address_details` varchar(64) DEFAULT NULL,
  `com_post_code` varchar(16) DEFAULT NULL,
  `business_licence_pic_id` int(11) DEFAULT NULL,
  `organization_code_pic_id` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `second_name` varchar(32) NOT NULL,
  `head_pic_id` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birth_day` varchar(32) DEFAULT NULL,
  `mobile` varchar(32) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `id_card_num` varchar(32) DEFAULT NULL,
  `id_card_pic_id` int(11) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `area` varchar(16) DEFAULT NULL,
  `address_details` varchar(64) DEFAULT NULL,
  `post_code` varchar(16) DEFAULT NULL,
  `lang` int(11) DEFAULT NULL,
  `time_zone` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
