/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : submsg-member

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-03 18:56:11
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
  PRIMARY KEY (`id`),
  KEY `user_id,project_id` (`user_id`,`project_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_req_error_log
-- ----------------------------

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
INSERT INTO `member` VALUES ('19', 'dogdog7788@qq.com', 'd08fed5671cca518c3bfda017f63c928', '孟', '潮', null, null, null, null, 'dogdog7788@qq.com', null, null, null, null, null, null, null, null, null, '0', '2016-06-03 17:30:40', '2016-06-03 17:30:40');

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
-- Table structure for member_invoice
-- ----------------------------
DROP TABLE IF EXISTS `member_invoice`;
CREATE TABLE `member_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `invoice_name` varchar(64) NOT NULL,
  `invoice_type` int(11) NOT NULL COMMENT '1 普通发票  2专用发票',
  `taxpayer_tag` varchar(32) DEFAULT NULL COMMENT '纳税人标识',
  `com_address` varchar(128) DEFAULT NULL COMMENT '公司地址',
  `com_phone` varchar(16) DEFAULT NULL COMMENT '公司电话',
  `com_bank_name` varchar(16) DEFAULT NULL COMMENT '公司账户开户行',
  `com_bank_account` varchar(32) DEFAULT NULL COMMENT '公司对公账号',
  `first_name` varchar(16) NOT NULL,
  `second_name` varchar(16) NOT NULL,
  `provice` varchar(16) NOT NULL,
  `city` varchar(16) NOT NULL,
  `area` varchar(16) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_invoice
-- ----------------------------
INSERT INTO `member_invoice` VALUES ('2', '19', '欣明信息科技（深圳）有限公司', '2', '1125884452', '深圳市翻身路新厦苑一栋新怡阁6c', '0755-27898854', '中国银行', '5588774455566554', '孟', '潮哥', '广东', '深圳', '宝安区', '翻身路新厦苑新怡阁6C', '15919820372', '2016-08-01 15:32:46');
INSERT INTO `member_invoice` VALUES ('3', '19', '测试公司地址', '1', null, null, null, null, null, '黄', '明', '广东', '深圳', '福田区', '少时诵诗书', '13534277314', '2016-08-01 16:01:18');

-- ----------------------------
-- Table structure for member_message_sign
-- ----------------------------
DROP TABLE IF EXISTS `member_message_sign`;
CREATE TABLE `member_message_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sign_content` varchar(64) NOT NULL,
  `sign_status` int(11) NOT NULL DEFAULT '0',
  `sign_position` int(11) NOT NULL,
  `sign_num` varchar(255) DEFAULT NULL,
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `sign_content` (`sign_content`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_message_sign
-- ----------------------------
INSERT INTO `member_message_sign` VALUES ('1', '19', '积分游戏大平台', '1', '0', '02', '2016-07-06 11:00:00', '2016-07-06 11:00:03');
INSERT INTO `member_message_sign` VALUES ('2', '19', '中国一川', '1', '0', '01', '2016-07-06 11:05:12', '2016-07-06 11:05:15');
INSERT INTO `member_message_sign` VALUES ('3', '19', '广运商城', '1', '0', '03', '2016-07-06 11:05:44', '2016-07-06 11:05:46');
INSERT INTO `member_message_sign` VALUES ('4', '19', '一币商城', '1', '0', '04', '2016-07-06 11:06:09', '2016-07-06 11:06:11');
INSERT INTO `member_message_sign` VALUES ('5', '19', 'test1', '0', '0', '', '2016-08-03 17:05:14', '2016-08-03 17:05:16');
INSERT INTO `member_message_sign` VALUES ('6', '19', '爱一生', '0', '0', null, '2016-08-03 17:06:37', '2016-08-03 17:06:37');
INSERT INTO `member_message_sign` VALUES ('7', '19', '票一百', '0', '0', null, '2016-08-03 17:12:27', '2016-08-03 17:12:27');

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
  UNIQUE KEY `tempid` (`temp_id`) USING BTREE,
  KEY `user_id` (`user_id`),
  KEY `sign_id` (`sign_id`)
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
INSERT INTO `member_msg_info` VALUES ('19', '3647', '0', '0', '0', '2016-07-06 11:52:27');

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
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_project
-- ----------------------------
INSERT INTO `member_project` VALUES ('6', '19', '6你好', '5f677f6e642a114504ac12e3571ee456', '-1', '', '1', '2016-07-21 17:55:34', '2016-07-21 17:55:34');

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
  PRIMARY KEY (`id`),
  KEY `verify_str` (`verify_str`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

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
INSERT INTO `member_verify` VALUES ('31', 'bcaa3093afabb67c', '19', '30', '2', '2016-07-16 11:30:59', '2016-07-16 11:30:22');

-- ----------------------------
-- Table structure for msg_delever_log
-- ----------------------------
DROP TABLE IF EXISTS `msg_delever_log`;
CREATE TABLE `msg_delever_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(32) NOT NULL,
  `stat` varchar(32) NOT NULL,
  `destnation_id` varchar(32) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msg_id` (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_delever_log
-- ----------------------------

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
  KEY `send_id` (`send_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_send_log
-- ----------------------------

-- ----------------------------
-- Table structure for payment_order
-- ----------------------------
DROP TABLE IF EXISTS `payment_order`;
CREATE TABLE `payment_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_num` int(11) NOT NULL COMMENT '商品数量',
  `product_desc` varchar(128) NOT NULL DEFAULT '',
  `product_amount` decimal(10,2) NOT NULL COMMENT '该笔订单的交易额',
  `invoice_id` int(11) NOT NULL COMMENT '发票类型  0 不需要  非0  为发票信息id',
  `status` int(11) NOT NULL DEFAULT '0',
  `pay_user_id` int(11) DEFAULT NULL,
  `pay_type` int(11) DEFAULT NULL,
  `bank_order_id` varchar(128) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_order
-- ----------------------------
INSERT INTO `payment_order` VALUES ('1', 'SM201608011533271001', '19', '2', '1', '购买数量：20000', '1059.00', '0', '0', null, null, null, null, '2016-08-01 15:33:28');
INSERT INTO `payment_order` VALUES ('2', 'SM201608011535341002', '19', '3', '3', '购买数量：100000', '14997.00', '2', '0', null, null, null, null, '2016-08-01 15:35:35');
INSERT INTO `payment_order` VALUES ('3', 'SM201608011601491003', '19', '2', '1', '购买数量：20000', '1059.00', '3', '0', null, null, null, null, '2016-08-01 16:01:49');
INSERT INTO `payment_order` VALUES ('4', 'SM201608011616051001', '19', '3', '1', '购买数量：100000', '4999.00', '0', '0', null, null, null, null, '2016-08-01 16:16:05');
INSERT INTO `payment_order` VALUES ('5', 'SM201608011621391002', '19', '3', '1', '购买数量：100000', '4999.00', '3', '0', null, null, null, null, '2016-08-01 16:21:39');
