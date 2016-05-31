/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : submsg-member

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-31 18:27:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_req_error_log
-- ----------------------------
DROP TABLE IF EXISTS `api_req_error_log`;
CREATE TABLE `api_req_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `api_name` varchar(32) NOT NULL,
  `error_code` varchar(16) NOT NULL,
  `error_desc` varchar(64) NOT NULL,
  `req_ip` varchar(32) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_req_error_log
-- ----------------------------

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
  `service_type` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for member_company
-- ----------------------------
DROP TABLE IF EXISTS `member_company`;
CREATE TABLE `member_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `com_industry_big` varchar(64) DEFAULT NULL,
  `com_industry_small` varchar(64) DEFAULT NULL,
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
-- Records of member_company
-- ----------------------------

-- ----------------------------
-- Table structure for member_message_sign
-- ----------------------------
DROP TABLE IF EXISTS `member_message_sign`;
CREATE TABLE `member_message_sign` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sign_content` text NOT NULL,
  `sign_status` int(11) NOT NULL DEFAULT '0',
  `sign_position` int(11) NOT NULL,
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_message_sign
-- ----------------------------

-- ----------------------------
-- Table structure for member_message_temp
-- ----------------------------
DROP TABLE IF EXISTS `member_message_temp`;
CREATE TABLE `member_message_temp` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `temp_id` varchar(16) NOT NULL,
  `temp_title` varchar(255) NOT NULL,
  `temp_content` text NOT NULL,
  `temp_status` int(11) NOT NULL DEFAULT '0',
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_message_temp
-- ----------------------------

-- ----------------------------
-- Table structure for member_msg_info
-- ----------------------------
DROP TABLE IF EXISTS `member_msg_info`;
CREATE TABLE `member_msg_info` (
  `user_id` int(11) NOT NULL,
  `msg_num` int(11) NOT NULL,
  `time_zone` int(11) NOT NULL,
  `remind_type` int(11) NOT NULL,
  `remind_num` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_msg_info
-- ----------------------------

-- ----------------------------
-- Table structure for member_project
-- ----------------------------
DROP TABLE IF EXISTS `member_project`;
CREATE TABLE `member_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_name` varchar(32) NOT NULL,
  `project_key` varchar(32) NOT NULL,
  `max_send_num_daily` int(11) NOT NULL DEFAULT '-1',
  `white_ip` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_project
-- ----------------------------

-- ----------------------------
-- Table structure for msg_send_log
-- ----------------------------
DROP TABLE IF EXISTS `msg_send_log`;
CREATE TABLE `msg_send_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `send_id` varchar(32) NOT NULL,
  `msg_id` varchar(64) NOT NULL,
  `api_name` varchar(16) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_sign` varchar(64) NOT NULL,
  `bill` int(11) NOT NULL,
  `to_mobile` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `req_time` datetime NOT NULL,
  `res_time` datetime NOT NULL,
  `res_code` varchar(32) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_send_log
-- ----------------------------
