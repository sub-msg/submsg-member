/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : submsg-member

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-07-06 18:46:40
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_req_error_log
-- ----------------------------
INSERT INTO `api_req_error_log` VALUES ('1', '19', '1', 'xsend.json', '2', '签名校验不正确', '127.0.0.1', '2016-07-06 11:50:58');
INSERT INTO `api_req_error_log` VALUES ('2', '19', '1', 'xsend.json', '6', '发送许可数量不足！', '127.0.0.1', '2016-07-06 11:51:23');
INSERT INTO `api_req_error_log` VALUES ('3', '19', '1', 'xsend.json', '6', '发送许可数量不足！', '127.0.0.1', '2016-07-06 11:52:38');
INSERT INTO `api_req_error_log` VALUES ('4', '19', '1', 'xsend.json', '6', '发送许可数量不足！', '127.0.0.1', '2016-07-06 11:54:55');
INSERT INTO `api_req_error_log` VALUES ('5', '19', '1', 'xsend.json', '6', '发送许可数量不足！', '127.0.0.1', '2016-07-06 11:56:49');
INSERT INTO `api_req_error_log` VALUES ('6', '19', '1', 'xsend.json', '6', '发送许可数量不足！', '127.0.0.1', '2016-07-06 11:59:32');

-- ----------------------------
-- Table structure for mall_products
-- ----------------------------
DROP TABLE IF EXISTS `mall_products`;
CREATE TABLE `mall_products` (
  `id` int(11) NOT NULL,
  `nums` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mall_products
-- ----------------------------
INSERT INTO `mall_products` VALUES ('1', '5000', '275', 'images/store-icon01.png', '2016-06-01 12:10:10');
INSERT INTO `mall_products` VALUES ('2', '20000', '1059', 'images/store-icon02.png', '2016-06-01 12:11:23');
INSERT INTO `mall_products` VALUES ('3', '100000', '4999', 'images/store-icon03.png', '2016-06-01 12:11:57');
INSERT INTO `mall_products` VALUES ('4', '500000', '23999', 'images/store-icon04.png', '2016-06-01 13:32:56');
INSERT INTO `mall_products` VALUES ('5', '2000000', '89999', 'images/store-icon05.png', '2016-06-01 13:33:22');

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
  `mobile` varchar(32) DEFAULT NULL,
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
  `status` int(11) NOT NULL DEFAULT '0',
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('19', 'dogdog7788@qq.com', '96e79218965eb72c92a549dd5a330112', '孟', '潮', null, null, null, null, 'dogdog7788@qq.com', null, null, null, null, null, null, null, null, null, '0', '2016-06-03 17:30:40', '2016-06-03 17:30:40');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sign_content` text NOT NULL,
  `sign_status` int(11) NOT NULL DEFAULT '0',
  `sign_position` int(11) NOT NULL,
  `sign_num` varchar(255) NOT NULL,
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_message_sign
-- ----------------------------
INSERT INTO `member_message_sign` VALUES ('1', '19', '积分游戏大平台', '1', '0', '02', '2016-07-06 11:00:00', '2016-07-06 11:00:03');
INSERT INTO `member_message_sign` VALUES ('2', '19', '中国一川', '1', '0', '01', '2016-07-06 11:05:12', '2016-07-06 11:05:15');
INSERT INTO `member_message_sign` VALUES ('3', '19', '广运商城', '1', '0', '03', '2016-07-06 11:05:44', '2016-07-06 11:05:46');
INSERT INTO `member_message_sign` VALUES ('4', '19', '一币商城', '1', '0', '04', '2016-07-06 11:06:09', '2016-07-06 11:06:11');

-- ----------------------------
-- Table structure for member_message_temp
-- ----------------------------
DROP TABLE IF EXISTS `member_message_temp`;
CREATE TABLE `member_message_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `temp_id` varchar(16) NOT NULL,
  `temp_title` varchar(255) NOT NULL,
  `temp_content` text NOT NULL,
  `temp_status` int(11) NOT NULL DEFAULT '0',
  `sign_id` int(11) NOT NULL,
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tempid` (`temp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_message_temp
-- ----------------------------
INSERT INTO `member_message_temp` VALUES ('1', '19', '1', 'sUb981', '开户通知', '尊敬的@var(name)先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为@var(numStr)，用户名为：@var(userName)，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 @var(date)]', '1', '1', '2016-07-06 11:17:38', '2016-07-06 11:17:40');
INSERT INTO `member_message_temp` VALUES ('2', '19', '1', 'BlQ9X', '卖出一币通知', '您卖出的一币对方已打款，请在48小时内登录用户中心确认,否则将扣除您一颗信誉星。5天后未进行操作将暂封您的一币卖出功能！', '1', '1', '2016-07-06 11:18:01', '2016-07-06 11:18:05');
INSERT INTO `member_message_temp` VALUES ('3', '19', '1', 'R630D1', '卖出一币通知', '您有一笔交易的一币已失效（对方2小时内未付款），请登录用户中心处理该订单。', '1', '1', '2016-07-06 11:18:55', '2016-07-06 11:18:58');
INSERT INTO `member_message_temp` VALUES ('4', '19', '1', 'WKkt32', '卖出一币通知', '您挂出的一币已被执行买入操作，请确认对方是否转款，如已转款请登录用户中心确认卖出操作。', '1', '1', '2016-07-06 11:19:33', '2016-07-06 11:19:35');
INSERT INTO `member_message_temp` VALUES ('5', '19', '1', 'NFgnN3', '操作通知', '尊敬的@var(userName) 玩家：您正在进行@var(op)操作，验证码为：@var(code) ，如非本人操作请忽略', '1', '1', '2016-07-06 11:20:38', '2016-07-06 11:20:40');

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
INSERT INTO `member_msg_info` VALUES ('19', '28', '0', '0', '0', '2016-07-06 11:52:27');

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
  `white_ip` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_project
-- ----------------------------
INSERT INTO `member_project` VALUES ('1', '19', '一川', 'bf8f897336973401f8d08fd5134c7464', '-1', '', '1', '2016-07-06 11:16:13', '2016-07-06 11:16:16');

-- ----------------------------
-- Table structure for member_verify
-- ----------------------------
DROP TABLE IF EXISTS `member_verify`;
CREATE TABLE `member_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `verify_str` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `effect_time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `verify_time` datetime DEFAULT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_verify
-- ----------------------------
INSERT INTO `member_verify` VALUES ('4', 'd28905c4ed7d9af0', '6', '180', '1', null, '2016-06-02 19:08:03');
INSERT INTO `member_verify` VALUES ('5', '66a71328bd0e8614', '7', '180', '1', null, '2016-06-02 19:10:08');
INSERT INTO `member_verify` VALUES ('7', '80010d8b469698ab', '9', '180', '1', '2016-06-02 19:20:53', '2016-06-02 19:15:19');
INSERT INTO `member_verify` VALUES ('9', '053ad3a336ac66a8', '11', '180', '1', '2016-06-03 14:47:58', '2016-06-03 14:46:44');
INSERT INTO `member_verify` VALUES ('10', '2c00d7fdad7b0e99', '12', '180', '1', null, '2016-06-03 14:57:34');
INSERT INTO `member_verify` VALUES ('11', '4b174793867a02c0', '13', '180', '1', null, '2016-06-03 15:24:01');
INSERT INTO `member_verify` VALUES ('12', 'dfbd1ccd46f0db02', '13', '180', '2', null, '2016-06-03 16:30:30');
INSERT INTO `member_verify` VALUES ('13', '952d9f51dc94bbbf', '13', '180', '2', '2016-06-03 16:34:13', '2016-06-03 16:33:52');
INSERT INTO `member_verify` VALUES ('14', 'edba9f09f7652f4b', '13', '180', '2', '2016-06-03 16:39:20', '2016-06-03 16:38:27');
INSERT INTO `member_verify` VALUES ('15', 'f553a3d75032dbaf', '14', '180', '1', null, '2016-06-03 16:41:04');
INSERT INTO `member_verify` VALUES ('16', '008c68c455484d9c', '15', '180', '1', null, '2016-06-03 16:45:25');
INSERT INTO `member_verify` VALUES ('17', '639a80dd66907e2c', '15', '180', '1', null, '2016-06-03 16:45:36');
INSERT INTO `member_verify` VALUES ('18', 'dec62403f9bf3dcd', '15', '180', '1', null, '2016-06-03 16:45:50');
INSERT INTO `member_verify` VALUES ('19', 'd46fc0eab15dceb7', '15', '180', '2', null, '2016-06-03 16:51:14');
INSERT INTO `member_verify` VALUES ('20', '170b3a6c7433815d', '16', '180', '1', null, '2016-06-03 16:52:30');
INSERT INTO `member_verify` VALUES ('21', '523e0912408e61f9', '16', '180', '1', null, '2016-06-03 16:53:23');
INSERT INTO `member_verify` VALUES ('22', 'abeadbb5118f67e9', '17', '30', '1', null, '2016-06-03 17:09:10');
INSERT INTO `member_verify` VALUES ('23', '1f96f92a42b45e7b', '17', '30', '1', '2016-06-03 17:13:27', '2016-06-03 17:09:35');
INSERT INTO `member_verify` VALUES ('24', 'ca3ca7ea5c2d5a91', '18', '30', '1', '2016-06-03 17:24:28', '2016-06-03 17:24:21');
INSERT INTO `member_verify` VALUES ('25', '9140c746e42cf4ab', '19', '30', '1', null, '2016-06-03 17:30:40');
INSERT INTO `member_verify` VALUES ('26', '12906a965f13d724', '19', '30', '1', null, '2016-06-03 17:30:50');
INSERT INTO `member_verify` VALUES ('27', '597a854ecd125482', '19', '30', '1', null, '2016-06-03 17:33:23');
INSERT INTO `member_verify` VALUES ('28', '3001109d393a4cfa', '19', '30', '1', null, '2016-06-03 17:35:03');
INSERT INTO `member_verify` VALUES ('29', '5b0fa82ca53ffd4f', '19', '30', '1', '2016-06-03 17:36:26', '2016-06-03 17:36:17');
INSERT INTO `member_verify` VALUES ('30', '37d148b95cad1746', '19', '30', '1', '2016-06-03 18:35:10', '2016-06-03 18:35:01');

-- ----------------------------
-- Table structure for msg_send_log
-- ----------------------------
DROP TABLE IF EXISTS `msg_send_log`;
CREATE TABLE `msg_send_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `send_id` varchar(32) NOT NULL,
  `msg_id` varchar(64) DEFAULT NULL,
  `api_name` varchar(16) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_sign` varchar(64) NOT NULL,
  `bill` int(11) NOT NULL,
  `to_mobile` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `req_time` datetime NOT NULL,
  `send_time` datetime DEFAULT NULL,
  `res_time` datetime DEFAULT NULL,
  `res_code` varchar(32) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `send_id` (`send_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_send_log
-- ----------------------------
INSERT INTO `msg_send_log` VALUES ('1', '19', '1', '714a764164b3d9ee7dd9b5d5a7f80135', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '0', '2016-07-06 12:12:19', null, null, null, '2016-07-06 12:12:19');
INSERT INTO `msg_send_log` VALUES ('2', '19', '1', 'e34d0d013ee0a54171cc206797cb3f0e', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '0', '2016-07-06 17:47:43', null, null, null, '2016-07-06 17:47:43');
INSERT INTO `msg_send_log` VALUES ('3', '19', '1', '1ae672064797c8b62bb548e834107e31', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '0', '2016-07-06 17:48:46', null, null, null, '2016-07-06 17:48:46');
INSERT INTO `msg_send_log` VALUES ('4', '19', '1', 'fed7589c254812d7150067d47a81c90a', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '3', '2016-07-06 17:49:57', '2016-07-06 17:50:00', '2016-07-06 17:50:01', null, '2016-07-06 17:49:57');
INSERT INTO `msg_send_log` VALUES ('5', '19', '1', 'bd3564f7feef3eaf467549c228010ddc', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '3', '2016-07-06 18:23:30', '2016-07-06 18:23:30', '2016-07-06 18:23:30', null, '2016-07-06 18:23:30');
INSERT INTO `msg_send_log` VALUES ('6', '19', '1', '250b33770070beb9affb6888bdd6fc72', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '3', '2016-07-06 18:26:11', '2016-07-06 18:26:15', '2016-07-06 18:26:15', null, '2016-07-06 18:26:11');
INSERT INTO `msg_send_log` VALUES ('7', '19', '1', '80f5e69613f3452b869205679d05433f', null, 'xsend.json', '【积分游戏大平台】尊敬的潮哥先生/女士：恭喜您成为中国一川（澳门）国际有限公司的理财客户，您所注册的账户资金为20，用户名为：dogdog7788，祝福您跨入了财富自由的大门。[中国一川（澳门）国际有限公司 2016-07-06]', '积分游戏大平台', '2', '18516632554', '1', '2016-07-06 18:28:01', '2016-07-06 18:28:06', '2016-07-06 18:28:22', null, '2016-07-06 18:28:01');
