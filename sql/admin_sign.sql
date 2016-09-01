/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : submsg-member

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-09-01 18:05:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_sign
-- ----------------------------
DROP TABLE IF EXISTS `admin_sign`;
CREATE TABLE `admin_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_content` varchar(32) NOT NULL,
  `sign_num` varchar(8) NOT NULL,
  `sign_status` int(11) NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sign_content` (`sign_content`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_sign
-- ----------------------------
INSERT INTO `admin_sign` VALUES ('1', '积分游戏大平台', '02', '1', '2016-09-01 15:48:21');
INSERT INTO `admin_sign` VALUES ('2', '中国一川', '01', '1', '2016-09-01 15:48:03');
INSERT INTO `admin_sign` VALUES ('3', '广运商城', '03', '1', '2016-09-01 15:48:05');
INSERT INTO `admin_sign` VALUES ('4', '一币商城', '04', '1', '2016-09-01 15:48:07');
INSERT INTO `admin_sign` VALUES ('5', '幸福100商城', '05', '1', '2016-09-01 15:48:09');
INSERT INTO `admin_sign` VALUES ('6', 'SUBMSG', '06', '1', '2016-09-01 15:48:12');
INSERT INTO `admin_sign` VALUES ('7', '幸福100', '07', '1', '2016-09-01 15:48:14');
