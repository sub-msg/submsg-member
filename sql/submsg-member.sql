/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : submsg-member

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-17 16:31:24
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
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` varchar(16) DEFAULT NULL,
  `doc_title` varchar(128) NOT NULL,
  `doc_contnet` text,
  `type` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '0 一级目录  1 二级目录',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `order_num` int(11) NOT NULL,
  `admin_user` varchar(255) DEFAULT NULL,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES ('1', null, 'SUBMSG API基础知识', null, '1', '0', '0', '1', null, '2016-08-09 18:18:16', '2016-08-09 18:18:18');
INSERT INTO `doc` VALUES ('2', null, '开始', null, '1', '0', '0', '2', null, '2016-08-09 18:20:10', '2016-08-09 18:20:13');
INSERT INTO `doc` VALUES ('3', null, '变量和内置变量', null, '1', '0', '0', '3', null, '2016-08-09 18:21:01', '2016-08-09 18:21:03');
INSERT INTO `doc` VALUES ('4', null, '短信API', null, '1', '0', '0', '4', null, '2016-08-09 18:21:38', '2016-08-09 18:21:40');
INSERT INTO `doc` VALUES ('6', null, 'SDK开发包下载', null, '1', '0', '0', '5', null, '2016-08-09 18:22:48', '2016-08-09 18:22:50');
INSERT INTO `doc` VALUES ('7', 'fWVfw3', '什么是SUBMSG API', '<h2>什么是SUBMSG API</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG API 是基于云端的短信服务接口。用户通过接入和集成 SUBMSG API 可以方便、高效地向用户发送短信。不仅如此，SUBMSG 具备强大的数据分析与用户行为跟踪功能，让接入方轻松、高效地，以超低成本费用构建自己的系统。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;SUBMSG API 为哪些客户服务</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG API 为所有在中国大陆地区具有合法经营资质的企业和机构提供短信服务（短信服务对个人用户暂不开放）。</p>\n\n<p>&nbsp;</p>\n\n<p>此外，SUBMSG 的垃圾内容过滤机制是短信服务高送达率的保证，SUBMSG 对于尝试发送垃圾短信的用户进行限制。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '1', '1', null, '2016-08-09 18:24:07', '2016-08-09 18:24:09');
INSERT INTO `doc` VALUES ('8', 'k6PQb2', '欣明 SUBMSG 开发者公约', '<h2>《欣明&nbsp;SUBMSG 开发者公约》</h2> \n\n<p>&nbsp;</p> \n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;1.总则</strong></a> \n\n<div class=\"res-table\"> \n<p style=\"text-align:justify\"><span style=\"color:#007ffc\">1.1&nbsp;</span>欣明开发者平台：指由欣明信息科技（深圳）有限公司（Submail.cn Technology (Shanghai) Co.,Ltd）（以下简称<span style=\"font-family:times\">“</span>欣明<span style=\"font-family:times\">”</span>）基于欣明的用户及传播力、品牌影响力，接入第三方合作伙伴服务，向用户提供丰富应用和完善服务的开放平台。</p> \n\n<p style=\"text-align:justify\">&nbsp;</p> \n\n<p style=\"text-align:justify\"><span style=\"color:#007ffc\">1.2</span>&nbsp;本公约所称第三方合作伙伴（下文亦称“第三方”或“开发者”），指在欣明开发者平台合作接入应用或网站，向个人或企业提供服务的第三方。</p> \n\n<p style=\"text-align:justify\">&nbsp;</p> \n\n<p style=\"text-align:justify\"><span style=\"color:#007ffc\">1.3</span>&nbsp;欣明、开发者均同意和理解：</p> \n\n<p style=\"text-align:justify\">&nbsp;</p> \n\n<ul> \n    <li style=\"text-align:justify\">&nbsp;欣明开发者平台是一个中立的平台服务提供者，仅向开发者提供信息存储空间、链接等中立的网络服务或相关中立的技术支持服务，以供开发者在中立的开放平台上自主发布、运营、推广其应用等；</li> \n</ul> \n\n<p style=\"text-align:justify\">&nbsp;</p> \n\n<ul> \n    <li style=\"text-align:justify\">开发者的应用由开发者自主开发、独立运营并独立承担全部责任。欣明不会、也不可能参与开发者应用的研发、运营等任何活动，欣明也不会对开发者的应用进行任何的修改、编辑或整理等；</li> \n</ul> \n\n<p style=\"text-align:justify\">&nbsp;</p> \n\n<ul> \n    <li style=\"text-align:justify\">因开发者应用及服务产生的任何纠纷、责任等，以及开发者违反相关法律法规或本协议约定引发的任何后果，均由开发者独立承担责任、赔偿损失，与欣明无关。如侵害到创邮或他人权益的，开发者须自行承担全部责任和赔偿一切损失。</li> \n</ul> \n\n<p>&nbsp;</p> \n</div> \n</div> \n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;2.开发者行为准则</strong></a> \n\n<div class=\"res-table\"> \n<p><span style=\"color:#007ffc\">2.1&nbsp;</span>开发者在<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>上提交的应用和服务，不得含有任何违反国家法律法规政策规章的内容。</p> \n\n<p>&nbsp;</p> \n\n<p><span style=\"color:#007ffc\">2.2&nbsp;</span>开发者须遵守<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>的隐私保护条款，并承诺与创邮承担同等的保护用户隐私的责任。开发者对用户个人信息的收集、使用等行为须以获得用户的合法授权为前提，未经用户允许，不得将用户的个人信息等数据披露给任何第三人或用于授权范围以外的用途。</p> \n\n<p>&nbsp;</p> \n\n<p><span style=\"color:#007ffc\">2.3&nbsp;</span>对于<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>提供的全部数据及资源，开发者仅用于接入应用或网站之用，不得用于其它任何用途使用，未经<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>书面同意，开发者不得将上述信息及资源披露给任何第三方，否则，<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>有权利随时终止合作并追究开发者的赔偿责任。</p> \n\n<p>&nbsp;</p> \n\n<p><span style=\"color:#007ffc\">2.4&nbsp;</span>开发者不得通过误导、迷惑、作弊等任何手段对用户进行骚扰。</p> \n\n<p>&nbsp;</p> \n\n<p><span style=\"color:#007ffc\">2.5&nbsp;</span>开发者在开发者平台上的所有行为须遵守<a href=\"/doc/index.sm?type=2#8Ah141\">《欣明 SUBMSG 网站使用协议》</a>及<a href=\"/doc/index.sm?type=2#QTvOw3\">《欣明 SUBMSG 短信服务协议》</a>，不得侵犯任何组织或个人的合法权益。</p> \n\n<p>&nbsp;</p> \n</div> \n</div> \n\n', '1', '1', '1', '2', null, '2016-08-10 15:26:58', '2016-08-10 15:27:01');
INSERT INTO `doc` VALUES ('9', '0nEKR4', '获取开发者身份', '<h2>获取开发者身份</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG 提供易用的 API 帮助您更容易地集成我们的服务到你的网站或应用，实现大量的短信发送。</p>\n\n<p>开始集成 SUBMSG 之前，其中的部分应用我们需要验证你的开发者身份。</p>\n\n<p>SUBMSG API 为所有在中国大陆地区具有合法经营资质的企业和机构提供短信服务（短信服务对个人用户暂不开放）。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;获取短信服务开发者身份</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG API 为所有在中国大陆地区具有合法经营资质的企业和机构提供短信服务（短信服务对个人用户暂不开放）。</p>\n\n<p>要成为 SUBMSG 的短信服务开发者，您需要同意<a href=\"/doc/index.sm?type=2#QTvOw3\">《欣明 SUBMSG 短信服务协议》</a>，并上传提交你所在企业的相关证照。请前往你的账户提交资料并获取短信开发者身份。</p>\n\n<p>由于短信数据发送服务的特殊性，你必须严格遵守服务协议，创邮对用户的短信发送行为和短信发送内容无审核监督义务。</p>\n\n<p>因用户行为给欣明造成的一切损失，欣明有权向用户追偿。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '1', '3', null, '2016-08-10 15:27:35', '2016-08-10 15:27:37');
INSERT INTO `doc` VALUES ('10', 'ApyTd2', '短信发送机制', '<h2>SUBMSG API 短信发送机制</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>本文所提到的发送机制仅指通过 SUBMSG WEB API 发送的短信处理机制。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;短信发送机制</strong></a>\n\n<div class=\"res-table\">\n<p>由于短信行业的特殊性，和国家相关部门的一些规定，SUBMSG 触发类短信将仅能使用单收件人模式发送，且此类短信通道仅能发送提醒、各类验证码、和服务类短信。</p>\n\n<p>&nbsp;</p>\n\n<p>另外短信发送中还需注意以下几点：</p>\n\n<p>&nbsp;</p>\n\n<ol>\n    <li><span style=\"color:rgb(0, 0, 0); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">完全相同的短信（即100%相同），对同一个手机号码在同一天内发送间隔时间不能低于30秒。</span></li>\n</ol>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '1', '4', null, '2016-08-10 15:29:08', '2016-08-10 15:29:11');
INSERT INTO `doc` VALUES ('11', 'LHJvQ', '账户违规使用惩罚机制', '<h2>SUBMSG 账户违规使用惩罚机制</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 一、垃圾短信举报率超 5‰ 的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>短信被举报次数过多，且超过当前发送量的 5‰ 时，账户也将会受到封停惩罚。</p>\n\n<ul>\n    <li>首次违规，将封停账户3天（72小时）。</li>\n    <li>第二次违规，将封停账户9天。</li>\n    <li>第三次违规，将封停账户27天。</li>\n    <li>超过三次违规的账户将被系统永久封停，账户中的发送服务将不予退还。</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 二、虚假、欺诈和钓鱼类信息的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>虚假、欺诈和钓鱼类的信息在 SUBMSG 不被允许，一经发现违规行为，SUBMSG 将立即对违规账户执行永久封停，违规行为包括但不仅限于以上内容。</p>\n\n<p>视违规行为的严重性，SUBMSG 有义务向公安机关或政府相关部门报案，并提供账户的身份信息、IP 地址或位置等信息配合相关机关立案调查。</p>\n\n<p>因用户行为导致 SUBMSG 遭受诉讼、索赔或处罚的，用户应赔偿 SUBMSG 因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 三、涉及黄、赌、毒、网赚、过于敏感的成人内容的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG 不允许信息中包含任何黄、赌、毒、网赚或过于敏感的成人内容，一经发现违规，SUBMSG 将立即对违规账户执行永久封停，违规行为包括但不仅限于以上内容。</p>\n\n<p>视违规行为的严重性，SUBMSG 有义务向公安机关或政府相关部门报案，并提供账户的身份信息、IP 地址或位置等信息配合相关机关立案调查。</p>\n\n<p>因用户行为导致 SUBMSG 遭受诉讼、索赔或处罚的，用户应赔偿 SUBMSG 因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 四、短信模板 API 滥用，或通过在线提交等方式过多次频繁提交无效模板的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>对于过多次无效提交模板审核的用户（当天无效提交模板次数到达一定数量）</p>\n\n<ul>\n    <li>首次违规，将封停账户2小时。</li>\n    <li>第二次违规，将封停账户1天。</li>\n    <li>第三次以上违规，将封停账户3天。</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '1', '5', null, '2016-08-10 15:29:45', '2016-08-10 15:29:47');
INSERT INTO `doc` VALUES ('12', 'f706A2', '概览', '<h2>API 概览</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>本文档中列出的所有 API 基础调用 URL 是 <code>https://api.submsg.cn</code> （&nbsp;如 API：<code>message/xsend.json</code> 实际请求 URL <code>https://api.submsg.cn/message/xsend.json</code> ） 。SUBMSG 暂时只支持 <code>json</code> (默认) 格式。</p>\n\n<p>&nbsp;</p>\n\n<p>API URL 规则 ：<code> https://api.submsg.cn/[model]/[function].[format]</code></p>\n\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;RESTful API</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG API 基于 RESTful API 风格，它具备完整的 HTTP 请求规范，多数的 SUBMSG API 需采用 POST 方式发送请求，少量的服务类 API 使用 GET 方式获取数据。除 API 列举的请求方式外，其他方法都不被支持。</p>\n\n<p>&nbsp;</p>\n\n<p>继承 RESTful API 风格，所有的 SUBMSG API 都具有 HTTP 返回代码</p>\n\n<ul>\n    <li><code>2XX</code> - 请求成功。</li>\n    <li><code>4XX</code> - 请求失败。（具体出错原因，会在返回数据中标注错误代码和原因）</li>\n    <li><code>5XX</code> - 服务器错误。</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>参阅 <a href=\"/doc/index.sm#c8ujr\">API 错误代码</a></p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;SUBMSG WEB API</strong></a>\n\n<div class=\"res-table\">\n<ul>\n    <li><code><a href=\"/doc/index.sm#t2f1J2\">message/xsend</a></code> ( 短信发送 API)</li>\n    <li><code><a href=\"/doc/index.sm#jXMkj3\">service/timestamp</a></code> ( 服务器 UNIX 时间戳 )</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '2', '1', null, '2016-08-10 15:30:30', '2016-08-10 15:30:32');
INSERT INTO `doc` VALUES ('13', 'b1hC31', '创建应用', '<h2>创建应用</h2>\n\n<p>&nbsp;</p>\n\n<p>要使用 SUBMSG API，你需要创建一个应用以获取 API 的应用 ID 和应用密匙。</p>\n\n<ol>\n    <li>登入SUBMSG</a> 后进入帐户首页，点击顶部导航菜单应用管理按钮，进入应用页面。</li>\n    <li>&nbsp;点击右侧 <span style=\"color:#ff6699\">新建应用&nbsp;</span>按钮，开始创建应用。</li>\n    <li>填写应用名称，和应用配置后点击创建应用按钮后，此应用将被创建。</li>\n    <li>创建后将可以获取此应用的 应用ID和密匙。</li>\n    <li>要更改密匙或更改此应用的配置，请点击该应用下方的编辑按钮进行编辑。</li>\n</ol>\n\n<p>&nbsp;</p>\n<blockquote>\n<p><span style=\"color:#696969\"><em>在创建短信应用之前，你需要提交你的开发者资料，用以验证你的开发者身份</em></span>。</p>\n</blockquote>\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '1', '1', '2', '2', null, '2016-08-10 15:31:04', '2016-08-10 15:31:06');
INSERT INTO `doc` VALUES ('14', 'gbibb3', 'API 授权与验证机制', '<h2>API 授权与验证机制</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>传统 API 而言，授权与验证机制一直是被高度重视的安全问题之一，API 安全一直是被开发者们所讨论。SUBMSG API 在设计之初便已将 API 安全问题融入到我们的 DNA 。</p>\n\n<p>SUBMSG&nbsp; 有两种验证方式：密匙明文验证模式和数字签名验证模式，选择一种适合你生产环境的验证机制。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;密匙明文验证模式</strong></a>\n\n<div class=\"res-table\">\n<p>明文的密匙验证模式，这种验证方式在集成接入过程中非常高效。</p>\n\n<p>要使用密匙明文验证模式，请在 <code>signature</code> 参数 中提交你的应用密匙。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;数字签名验证模式</strong></a>\n\n<div class=\"res-table\">\n<p>数字签名验证模式，适用于安全要求较高的应用。</p>\n\n<p>&nbsp;</p>\n\n<h4>数字签名方法与规则</h4>\n\n<p>&nbsp;</p>\n\n<ol>\n    <li>将所有提交的参数升序排列：仅单次提交的参数，不包括 <code>signature</code> 字段升序（A-Z）排列</li>\n    <li>创建签名字符串：以<code>\"key=value\" </code>&nbsp;+<code> \"&amp;\"（</code>连接符）+<code> \"key=value\" </code>的方式连接所有参数。此签名字符串类似与&nbsp;<code> HTTP GET/POST </code>请求时的字符串。</li>\n    <li>创建签名：在创建的字符串前后加上 APPID 和 APPKEY 拼接签名字符串（以 PHP 为例：<code>string=appid.appkey.signature.appid.appkey</code>），然后使用&nbsp;<code>md5(string)</code> 或<code> sha1(string)</code>创建签名。</li>\n</ol>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<p><strong>要使用数字签名验证模式，请将 sign_type 参数设为 md5 或 sha1 , 然后将&nbsp;signature 参数设为你计算的签名字符串</strong></p>\n\n<p><span style=\"color:#696969\"><em>（作为参考，此签名方法在 SUBMSG SDK 中有完整的签名创建方法和案例）</em></span></p>\n</blockquote>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;<code>Timestamp</code> UNIX 时间戳</strong></a>\n\n<div class=\"res-table\">\n<p>你需要在每条API 请求中加入<code> timestamp</code> UNIX 时间戳，且此参数将必须被包含在签名字符串中，参与计算签名。</p>\n\n<p>UNIX 时间戳 是安全 API 请求中非常重要的概念，在 API 请求或签名被创建之前，你需要从 SUBMSG 服务器端获取 UNIX 时间戳，并确保请求 UNIX 时间戳至发送请求的过程小于6秒。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '2', '3', null, '2016-08-10 15:31:38', '2016-08-10 15:31:40');
INSERT INTO `doc` VALUES ('15', 'MmSw12', '获取开发者标识', '<h2><strong>获取开发者标识</strong></h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>&nbsp;</p>\n\n<p>开发者标识是 SUBMSG API 的核心概念之一。使用开发者标识极大的简化 API 的请求和日常维护事务，你可以使用开发者标识在 API 中使用短信模板。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;获取短信模版标识</strong></a>\n\n<div class=\"res-table\">\n<p>要获取短信模版标识，请登录后进入帐户首页 -&gt; 模版列表页面，点击需要获取的模版底部开发者图标获取开发者标识，如下图所示。</p>\n\n<p><img alt=\"\" class=\"img-responsive\" src=\"/libraries/zh_cn/images/eg/sign-2.png\"></p>\n\n<p>&nbsp;</p>\n</div>\n</div>', '1', '1', '2', '4', null, '2016-08-10 15:32:26', '2016-08-10 15:32:28');
INSERT INTO `doc` VALUES ('16', 'oKraS3', '文本变量', '<h2>文本变量 <code>@var(key_name)</code></h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>文本变量可以动态的控制短信模板中的文本内容 。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;适用 API</strong></a>\n\n<div class=\"res-table\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code><a href=\"/chs/documents/developer/t2f1J2\">message/xsend.json</a></code></h5>\n            </td>\n            <td>\n            <h5 style=\"text-align:right\">短信 API</h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;格式</strong></a>\n\n<div class=\"res-table\">\n<p><code>@var(自定义的变量名)</code></p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;创建变量</strong></a>\n\n<div class=\"res-table\">\n<p>在 SUBMSG EDITOR 中创建短信模版，在需要动态控制的文本位置键入 <code>@var(key_name)，</code>。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;使用变量</strong></a>\n\n<div class=\"res-table\">\n<p>在你使用 API 发送时，请以 json 字符串<code>（key:value）</code>方式连接你的变量&nbsp; &nbsp; e.g.<code> {”key”:”value”,”key”:”value”}</code>，并将此字符串放在 <code>vars </code>参数中提交。</p>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<p>注：例中的 key 表示你设定的变量名，value 表示你想替换此变量的文本</p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>例：如果你在短信模版中创建了 3 个变量，分别为 <code>@var(title) </code>,&nbsp; <code>@var(username)</code> , <code>@var(number)</code>，</p>\n\n<div>\n<p>在 <code>vars</code> 参数中将 <code>vars={”username”:”Leo”,”title”:”测试标题”,”number”:”300”} </code>提交至 SUBMSG，</p>\n\n<blockquote>\n<p>请注意：vars 参数要求严格的 JSON 格式，以下是将参数转换为 JSON 格式的注意事项</p>\n\n<ol>\n    <li>json 字符串必须以双引号包含</li>\n    <li>&nbsp;json 字符串必须是 utf8 编码</li>\n    <li>不能有多余的逗号 如：[1,2,]</li>\n    <li>&nbsp;json 字符串首尾必须被大括号{}包含&nbsp;</li>\n</ol>\n\n<p>&nbsp;</p>\n\n<p>PS:大多数的语言都有专属的JSON解析器（ ENCODING 和 DECODEING 方法）。如 PHP，首先将需要的变量以数组形式（如 $var[‘key’]=value）创建后，使用 &nbsp;json_encode($var)方法创建 JSON 字符串；</p>\n</blockquote>\n\n<p>&nbsp;</p>\n</div>\n</div>\n</div>', '1', '1', '3', '1', null, '2016-08-10 15:43:24', '2016-08-10 15:43:26');
INSERT INTO `doc` VALUES ('17', 't2f1J2', 'message/xsend(国内)', '<h2><strong>API: <code>message/xsend </code></strong><span style=\"font-family:helvetica\"><strong>&nbsp;</strong></span></h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>&nbsp;</p>\n\n<p><code>message/xsend</code> 是 SUBMSG 的短信 API 的升级版本。</p>\n\n<p><code>message/xsend</code> &nbsp;提供完整且强大的短信发送功能，<code>message/xsend</code> 无需提交短信内容和短信签名，仅需提交你在 SUBMSG 应用程序中创建的短信项目的标记（<em>请参见&nbsp;<a href=\"/doc/index.sm#MmSw12\">获取模版的开发者标识</a></em>），并可以使用文本变量动态的控制每封短信的内容。 了解如何使用<a href=\"/doc/index.sm#oKraS3\">文本变量</a>。</p>\n\n<p>使用 <code>message/xsend</code> API 你将可以使用 SUBMSG SMS EDITOR 高效、可视化地创建你的短信模板。当用户请求使用此项目进行触发时，SUBMSG 会立即执行发送动作，无需担心发送延迟问题。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;URL</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code>https://api.submsg.cn/message/xsend.json</code></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;支持格式</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code>json</code></h5>\n            </td>\n            <td>\n            <h5><code>https://api.submsg.cn/message/xsend.json</code></h5>\n            </td>\n            <td>\n            <h5><strong>默认</strong></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;http 请求方式</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code><strong>POST</strong></code></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;是否需要授权</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><strong>是</strong></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n\n<p>参阅 <a href=“/doc/index.sm#gbibb3\">API&nbsp;授权和验证机制</a></p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;请求参数</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5>参数</h5>\n            </td>\n            <td>\n            <h5 style=\"text-align:center\">类型</h5>\n            </td>\n            <td style=\"width:80px\">\n            <h5 style=\"text-align:center\">必需/可选</h5>\n            </td>\n            <td>\n            <h5 style=\"text-align:center\">默认</h5>\n            </td>\n            <td>\n            <h5>描述</h5>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>appid</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>string</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></p>\n            </td>\n            <td style=\"text-align:center\">无</td>\n            <td>\n            <p>在 SUBMSG 应用集成中创建的短信应用 ID</p>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>to</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>string</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><span style=\"color:rgb(255, 0, 0)\">必需</span></p>\n            </td>\n            <td style=\"text-align:center\">无</td>\n            <td>\n            <p>收件人手机号码，现在短信仅支持一对一模式（即单条API请求仅能发送一个联系人），该参数现在仅能提交一个位联系人</p>\n\n            <blockquote>\n            <p>仅支持单个手机号码</p>\n            </blockquote>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>tempid</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>string</code></p>\n            </td>\n            <td style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></td>\n            <td style=\"text-align:center\">无</td>\n            <td>\n            <p>短信模版标记 (ID)</p>\n\n            <blockquote>\n            <p>在 SUBMSG &gt; 模版列表 &gt;中查看你所创建的短信模版标记。<em>请参见&nbsp;<a href=\"/doc/index.sm#MmSw12\">获取该短信模版的开发者标识</a></em></p>\n            </blockquote>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>vars</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>json string</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\">可选</p>\n            </td>\n            <td style=\"text-align:center\">无</td>\n            <td>\n            <p>使用文本变量动态控制短信中的文本</p>\n\n            <p>参阅&nbsp;<a href=\"/doc/index.sm#oKraS3\">了解如何创建和使用文本变量</a></p>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>timestamp</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>string</code></p>\n            </td>\n            <td style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></td>\n            <td style=\"text-align:center\">无</td>\n            <td>参阅 <a href=\"/doc/index.sm#gbibb3\">API 授权与验证机制</a>&nbsp; &gt; &nbsp;<code>Timestamp</code> UNIX 时间戳</td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>sign_type</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>string</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\">可选</p>\n            </td>\n            <td style=\"text-align:center\"><code>normal</code></td>\n            <td>\n            <p>API 授权模式（ &nbsp;<code>md5 or sha1 or normal</code>&nbsp;）</p>\n\n            <p>参阅&nbsp;<a href=\"/doc/index.sm#gbibb3\">API 授权与验证机制</a>&nbsp; &gt; &nbsp;授权和验证方式</p>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <p><code>signature</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><code>string</code></p>\n            </td>\n            <td>\n            <p style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></p>\n            </td>\n            <td style=\"text-align:center\">无</td>\n            <td>\n            <p>应用密匙&nbsp;<em>或&nbsp;</em>数字签名</p>\n\n            <p>参阅&nbsp;<a href=\"/doc/index.sm#gbibb3\">API 授权与验证机制</a>&nbsp; &gt; &nbsp;授权和验证方式</p>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;代码示例</strong></a>\n\n<div class=\"res-table table-responsive\">\n<h4>发送一封测试短信</h4>\n\n<hr>\n<div class=\"nav-table-active\">\n<ul>\n    <li class=\"active\"><a class=\"nag-tab-ctr\" href=\"javascript:void(0)\">JSON</a></li>\n</ul>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<div class=\"nav-table-container\">\n<div class=\"nav-tab-views table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code>POST</code></h5>\n            </td>\n            <td>\n            <pre class=\"prettyprint prettyprinted\" style=\"\"><span class=\"pln\">https</span><span class=\"pun\">:</span><span class=\"com\">//api.submsg.cn/message/xsend.json</span></pre>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <h5><code>POST Data</code></h5>\n            </td>\n            <td>\n            <pre class=\"prettyprint prettyprinted\" style=\"\"><span class=\"pln\">appid</span><span class=\"pun\">=</span><span class=\"pln\">your_app_id\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">to</span><span class=\"pun\">=</span><span class=\"lit\">138xxxxxxxx</span><span class=\"pln\">\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">tempid</span><span class=\"pun\">=</span><span class=\"typ\">ThJBE4</span><span class=\"pln\">\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">signature</span><span class=\"pun\">=</span><span class=\"pln\">your_app_key</span>\n<span class=\"pun\">&amp;</span><span class=\"pln\"> timestamp</span><span class=\"pun\">=</span><span class=\"typ\">1470906322553</span>\n</pre>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <h5><code>返回</code></h5>\n            </td>\n            <td>\n            <pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"success\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"rc\"</span><span class=\"pun\">:</span>\n        <span class=\"pun\">{</span>\n          <span class=\"str\">\"sendId\"</span><span class=\"pun\">:</span><span class=\"str\">\"093c0a7df143c087d6cba9cdf0cf3738\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"fee\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msgNum\"</span><span class=\"pun\">:</span><span class=\"str\">0</span>\n        <span class=\"pun\">}</span>\n     <span class=\"pun\">}</span></pre>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<p>&nbsp;</p>\n<!-- nav table end --></div>\n<!-- nav container end -->\n\n<hr>\n<h4>&nbsp;</h4>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;返回码</strong></a>\n\n<div class=\"res-table\"><!-- nav table start -->\n<div class=\"nav-table-active\">\n<ul>\n    <li class=\"active\"><a class=\"nag-tab-ctr\" href=\"javascript:void(0)\">JSON</a></li>\n</ul>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<div class=\"nav-table-container\">\n<div class=\"nav-tab-views table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code>请求成功</code></h5>\n            </td>\n            <td>\n            <pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"success\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"rc\"</span><span class=\"pun\">:</span>\n        <span class=\"pun\">{</span>\n          <span class=\"str\">\"sendId\"</span><span class=\"pun\">:</span><span class=\"str\">\"093c0a7df143c087d6cba9cdf0cf3738\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"fee\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msgNum\"</span><span class=\"pun\">:</span><span class=\"str\">0</span>\n        <span class=\"pun\">}</span>\n     <span class=\"pun\">}</span></pre>\n            </td>\n        </tr>\n        <tr>\n            <td>\n            <h5><code>请求失败</code></h5>\n            </td>\n            <td>\n            <pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">1</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"错误信息\"</span><span class=\"pln\">,</span>\n     <span class=\"pun\">}</span></pre>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n<!-- nav  table 1 end -->\n\n\n<!-- nav  table 2 end --><!-- nav table end --></div>\n\n<p>&nbsp;</p>\n<!-- nav container end --></div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;错误代码</strong></a>\n\n<div class=\"res-table\">\n<div class=\"rs-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:120px\">错误代码(flag)</td>\n			<td>描述(msg)</td>\n		</tr>\n		<tr>\n			<td>1</td>\n			<td>\n			<p>消息已过期（发送时间超过6秒）</p>\n			</td>\n		</tr>\n		<tr>\n			<td>2</td>\n			<td>\n			<p>签名校验不正确</p>\n			</td>\n		</tr>\n		<tr>\n			<td>3</td>\n			<td>\n			<p>手机号码不符合规则</p>\n			</td>\n		</tr>\n		<tr>\n			<td>4</td>\n			<td>\n			<p>无效的模板id（没通过审核或不存在）</p>\n			</td>\n		</tr>\n		<tr>\n			<td>5</td>\n			<td>\n			<p>模版中包含的签名没有通过审核或不存在</p>\n			</td>\n		</tr>\n		<tr>\n			<td>6</td>\n			<td>\n			<p>发送服务数量不足</p>\n			</td>\n		</tr>\n		<tr>\n			<td>7</td>\n			<td>\n			<p>ip不在白名单内</p>\n			</td>\n		</tr>\n                <tr>\n			<td>8</td>\n			<td>\n			<p>时间戳不能为空</p>\n			</td>\n		</tr>\n		<tr>\n			<td>1000</td>\n			<td>\n			<p>不正确的 APP ID</p>\n			</td>\n		</tr>\n		<tr>\n			<td>1001</td>\n			<td>\n			<p>相同手机号，相同内容间隔时间不能小于30秒</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n\n\n\n', '1', '1', '4', '1', null, '2016-08-10 15:45:22', '2016-08-10 15:45:24');
INSERT INTO `doc` VALUES ('18', 'jXMkj3', 'service/timestamp', '<h2><strong>API: <code>service/timestamp</code></strong></h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>&nbsp;</p>\n\n<p>UNIX 时间戳在 SUBMSG API 中有着非常重要的作用，它是大多数提交 API 请求时 (几乎所有的 <strong>POST</strong> 请求) 必要的签名参数。</p>\n\n<p><code>timestamp</code> API 请求时使用 <code>http <strong>GET</strong></code> 方法，返回一个服务器 UNIX 时间戳。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;URL</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code><span style=\"font-size:14px\">https://api.submsg.cn/service/timestamp.json</span>&nbsp;</code></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;支持格式</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code>json</code></h5>\n            </td>\n            <td>\n            <h5><code>https://api.submsg.cn/service/timestamp.json</code></h5>\n            </td>\n            <td>\n            <h5><strong>默认</strong></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;http 请求方式</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code><strong>GET</strong></code></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;是否需要授权</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><strong>否</strong></h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;请求参数</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><span style=\"font-size:14px\">无</span>&nbsp;</h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;返回码</strong></a>\n\n<div class=\"res-table\"><!-- nav table start -->\n<div class=\"nav-table-active\">\n<ul>\n    <li class=\"active\"><a class=\"nag-tab-ctr\" href=\"javascript:void(0)\">JSON</a></li>\n</ul>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<div class=\"nav-table-container\">\n<div class=\"nav-tab-views table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><code>请求成功</code></h5>\n            </td>\n            <td>\n<pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"success\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"rc\"</span><span class=\"pun\">:</span>\n        <span class=\"pun\">{</span>\n          <span class=\"str\">\"timestamp\"</span><span class=\"pun\">:</span><span class=\"str\">1414253462</span>\n        <span class=\"pun\">}</span>\n     <span class=\"pun\">}</span></pre>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n<!-- nav  table 1 end -->\n\n<!-- nav  table 2 end --><!-- nav table end --></div>\n\n<p>&nbsp;</p>\n<!-- nav container end --></div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;错误代码</strong></a>\n\n<div class=\"res-table\">\n<table class=\"table table-hover\" style=\"width:100%\">\n    <tbody>\n        <tr>\n            <td>\n            <h5><span style=\"font-size:14px\">无</span>&nbsp;</h5>\n            </td>\n        </tr>\n    </tbody>\n</table>\n</div>\n</div>\n\n<p>&nbsp;</p>', '1', '1', '4', '3', null, '2016-08-10 15:46:11', '2016-08-10 15:46:13');
INSERT INTO `doc` VALUES ('20', 'yQZyA', 'Java', null, '1', '1', '6', '1', null, '2016-08-10 15:47:46', '2016-08-10 15:47:48');
INSERT INTO `doc` VALUES ('21', 'BSx2b3', 'PHP', null, '1', '1', '6', '2', null, '2016-08-10 15:48:23', '2016-08-10 15:48:25');
INSERT INTO `doc` VALUES ('22', null, '关于SUBMSG', null, '2', '0', '0', '1', null, '2016-08-10 15:59:18', '2016-08-10 15:59:20');
INSERT INTO `doc` VALUES ('23', null, '购买与付款', null, '2', '0', '0', '2', null, '2016-08-10 15:59:51', '2016-08-10 15:59:54');
INSERT INTO `doc` VALUES ('24', null, '服务协议', null, '2', '0', '0', '3', null, '2016-08-10 16:00:26', '2016-08-10 16:00:29');
INSERT INTO `doc` VALUES ('25', null, '加入我们', null, '2', '0', '0', '4', null, '2016-08-10 16:00:56', '2016-08-10 16:00:58');
INSERT INTO `doc` VALUES ('26', 'dTHNB3', '公司简介', '<p>&nbsp;</p>\n\n<h2>公司简介</h2>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:justify\">SUBMSG （欣明信息科技(深圳)有限公司）是专业的企业端通讯服务提供商，SUBMSG 提供一套完整、高效、直观、便利且自动化的 CRM 客户关系管理系统。通过集成 SUBMSG API，你可以向客户触发短信，并可通过 SUBMSG 应用程序发送短信。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">我们注重用户体验，并且拥有丰富的产品研发经验和专业知识，为数以万计的用户提供触发邮件、推广短信和触发短信的综合数据营销服务。倍受业界好评的 。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">SUBMSG 将通过最佳的用户体验和最领先的行业技术不断地为用户提供全方位的企业通讯云服务。</p>', '2', '1', '22', '1', null, '2016-08-10 16:02:51', '2016-08-10 16:02:53');
INSERT INTO `doc` VALUES ('27', '7Zm1y2', '联系我们', '<h2 style=\"text-align:justify\">联系我们</h2>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">仍有疑问？请通过以下号码联系我们，我们很高兴为您解答疑问。&nbsp;</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">要了解有关产品和定价的信息，请拨打 4008－753－368&nbsp;联系 SUBMSG 客户服务。&nbsp;</p>\n\n<p style=\"text-align:justify\">客户服务人员的工作时间为周一至周五上午10点到下午6点 （不含中国公众假期）。&nbsp;</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">QQ：3346618712</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n\n<p style=\"text-align:justify\">服务邮箱 service@submsg.cn&nbsp;</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>', '2', '1', '22', '2', null, '2016-08-10 16:03:24', '2016-08-10 16:03:27');
INSERT INTO `doc` VALUES ('28', 'pOjYF4', '大客户服务', '<h1>大客户服务</h1>\n\n<h3>&nbsp;</h3>\n\n<h3 style=\"text-align:justify\">短信大客户服务</h3>\n\n<p style=\"text-align:justify\">我们为每月发送量超过50万条短信的用户，提供独立的短信大客户服务，服务包含：</p>\n\n<ol>\n	<li style=\"text-align:justify\">独立的短信端口号</li>\n	<li style=\"text-align:justify\">固定签名报备服务</li>\n	<li style=\"text-align:justify\">开通营销类（推广）短信</li>\n	<li style=\"text-align:justify\">更宽松的短信模板审核政策</li>\n	<li style=\"text-align:justify\">7x24 故障排除服务</li>\n	<li style=\"text-align:justify\">一对一大客户服务经理</li>\n</ol>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n\n', '2', '1', '22', '3', null, '2016-08-10 16:03:56', '2016-08-10 16:03:58');
INSERT INTO `doc` VALUES ('29', '0o64G', '关注我们', null, '2', '-1', '22', '4', null, '2016-08-10 16:04:33', '2016-08-10 16:04:35');
INSERT INTO `doc` VALUES ('30', 'VozyF', '支付方式', '<h2 style=\"text-align:justify\">支付方式</h2>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">SUBMSG 在线商店接受许多种付款方式</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;支付宝</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\">SUBMSG 在线商店支持使用支付宝为订单付款。</p>\n\n<p style=\"text-align:justify\"><img alt=\"pastedGraphic_1.png\" src=\"/libraries/images/InfoDoc-zfb.png\" style=\"height:49px; width:188px\"></p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;本地信用卡/借记卡</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\">SUBMSG 在线商店接受多种本地信用卡和借记卡。“结帐”的付款部分列出了目前所接受的本地信用卡和借记卡。几乎涵盖所有大中型银行发行的银行卡，覆盖率达98％。选择在线支付，您的银行卡需要开通相应的在线支付功能或购买相关支付卡。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><img alt=\"pastedGraphic.png\" src=\"/libraries/images/InfoDoc-bank.png\" style=\"width:100%\"></p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">银行卡的开通手续因各地银行政策不同，建议您在网上支付前拨打所在地银行电话，咨询该行可供网上支付的银行卡种类及开通手续。支付金额上限目前各银行对于网上支付均有一定金额的限制，由于各银行政策不同，建议您在申请网上支付功能时向银行咨询相关事宜。&nbsp;</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n\n', '2', '1', '23', '1', null, '2016-08-10 16:05:26', '2016-08-10 16:05:28');
INSERT INTO `doc` VALUES ('31', '6utoQ2', '关于发票', '<h2>关于发票</h2>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:justify\">SUBMSG 提供的是增值税普通发票和增值税专用发票，该发票是官方购买凭证，可在请求个人或公司补偿时使用。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">请在提交订单前在“发票开具”处填写发票抬头。一张订单对应一张发票，发票会在我们收到您的订单付款后的三个工作日内寄出。&nbsp;</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n', '2', '1', '23', '2', null, '2016-08-10 16:07:02', '2016-08-10 16:07:05');
INSERT INTO `doc` VALUES ('32', 'r4isU', '欣明 SUBMSG 开发者公约', '<h2>《欣明&nbsp;SUBMSG 开发者公约》</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;1.总则</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\"><span style=\"color:#007ffc\">1.1&nbsp;</span>欣明开发者平台：指由欣明信息科技（深圳）有限公司（Submail.cn Technology (Shanghai) Co.,Ltd）（以下简称<span style=\"font-family:times\">“</span>欣明<span style=\"font-family:times\">”</span>）基于欣明的用户及传播力、品牌影响力，接入第三方合作伙伴服务，向用户提供丰富应用和完善服务的开放平台。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007ffc\">1.2</span>&nbsp;本公约所称第三方合作伙伴（下文亦称“第三方”或“开发者”），指在欣明开发者平台合作接入应用或网站，向个人或企业提供服务的第三方。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007ffc\">1.3</span>&nbsp;欣明、开发者均同意和理解：</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;欣明开发者平台是一个中立的平台服务提供者，仅向开发者提供信息存储空间、链接等中立的网络服务或相关中立的技术支持服务，以供开发者在中立的开放平台上自主发布、运营、推广其应用等；</li>\n</ul>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:justify\">开发者的应用由开发者自主开发、独立运营并独立承担全部责任。欣明不会、也不可能参与开发者应用的研发、运营等任何活动，欣明也不会对开发者的应用进行任何的修改、编辑或整理等；</li>\n</ul>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:justify\">因开发者应用及服务产生的任何纠纷、责任等，以及开发者违反相关法律法规或本协议约定引发的任何后果，均由开发者独立承担责任、赔偿损失，与欣明无关。如侵害到欣明或他人权益的，开发者须自行承担全部责任和赔偿一切损失。</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;2.开发者行为准则</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007ffc\">2.1&nbsp;</span>开发者在<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>上提交的应用和服务，不得含有任何违反国家法律法规政策规章的内容。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007ffc\">2.2&nbsp;</span>开发者须遵守<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>的隐私保护条款，并承诺与欣明承担同等的保护用户隐私的责任。开发者对用户个人信息的收集、使用等行为须以获得用户的合法授权为前提，未经用户允许，不得将用户的个人信息等数据披露给任何第三人或用于授权范围以外的用途。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007ffc\">2.3&nbsp;</span>对于<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>提供的全部数据及资源，开发者仅用于接入应用或网站之用，不得用于其它任何用途使用，未经<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>书面同意，开发者不得将上述信息及资源披露给任何第三方，否则，<span style=\"color:rgb(0, 0, 0)\">欣明开发者平台</span>有权利随时终止合作并追究开发者的赔偿责任。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007ffc\">2.4&nbsp;</span>开发者不得通过误导、迷惑、作弊等任何手段对用户进行骚扰。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007ffc\">2.5&nbsp;</span>开发者在开发者平台上的所有行为须遵守<a href=\"/doc/index.sm?type=2#8Ah141\">《欣明 SUBMAIL 用户服务协议》</a>及<a href=\"/doc/index.sm?type=2#QTvOw3\">《欣明 SUBMAIL 短信服务协议》</a>，不得侵犯任何组织或个人的合法权益。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>', '2', '1', '24', '1', null, '2016-08-10 16:08:05', '2016-08-10 16:08:08');
INSERT INTO `doc` VALUES ('33', '8Ah141', '欣明 SUBMSG 网站使用协议', '<h2>《欣明&nbsp;SUBMAIL 网站使用协议》</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;1.特别提示</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">1.1</span><span style=\"color:#007FFC\">&nbsp;</span>欣明信息科技（深圳）有限公司（Submail.cn&nbsp;Technology (Shanghai) Co.,Ltd）（以下简称“欣明”）同意按照本协议的规定及其不时发布的操作规则提供基于互联网以及移动网络的相关服务（以下称“网络服务”），为获得网络服务，服务使用人（以下称“用户”）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击并勾选“同意此协议”按钮即表示用户完全接受本协议项下的全部条款。</p>\n\n<p><span style=\"color:#007FFC\">1.2</span>&nbsp;用户注册成功后，欣明将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;2.服务内容</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">2.1</span>&nbsp;用户理解，欣明仅提供相关的网络服务，除此之外与相关网络服务有关的设备（如个人电脑、手机、及其他与接入互联网或移动网有关的装置）及所需的费用（如为接入互联网而支付的电话费及上网费、为使用移动网而支付的手机费）均应由用户自行负担。</p>\n\n<p><span style=\"color:#007FFC\">2.2</span>&nbsp;欣明对用户行为无审核监督义务。因用户行为给欣明造成的一切损失，欣明有权向用户追偿。</p>\n\n<p><span style=\"color:#007FFC\">2.3&nbsp;</span>欣明有权随时调整欣明的资费，但该调整不会对用户已购买的服务产生影响。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;3.服务变更、中断或终止</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">3.1</span>&nbsp;鉴于网络服务的特殊性，用户同意欣明有权随时变更、中断或终止部分或全部的网络服务（包括收费网络服务及免费网络服务）。如变更、中断或终止的网络服务属于免费网络服务，欣明无需通知用户，也无需对任何用户或任何第三方承担任何责任；如变更、中断或终止的网络服务属于收费网络服务，欣明应当在变更、中断或终止之前事先通知用户，如欣明终止该服务，用户已经向欣明支付的服务费，欣明应当按照该用户实际使用相应收费网络服务的情况扣除相应服务费之后将剩余的服务费退还给该用户。</p>\n\n<p><span style=\"color:#007FFC\">3.2</span>&nbsp;用户理解，欣明需要定期或不定期地对提供网络服务的平台（如互联网网站、移动网络等）或相关的设备进行检修或者维护，如因此类情况而造成收费网络服务在合理时间内的中断，欣明无需为此承担任何责任，但欣明应尽可能事先进行通告。</p>\n\n<p><span style=\"color:#007FFC\">3.3&nbsp;</span>欣明有权根据自己的判断对用户是否违反本协议约定及欣明使用规则做出认定。用户若有违反的，欣明有权随时中止或终止本协议。欣明无需就此征得用户同意或提前通知用户。包括但不仅限于发生下列任何一种情形，欣明有权随时中断或终止向用户提供本协议项下的网络服务（该网络服务包括但不限于收费及免费网络服务）无需对用户或任何第三方承担任何责任：</p>\n\n<ul>\n	<li style=\"text-align:justify\">用户提供的个人资料不真实；</li>\n	<li style=\"text-align:justify\">用户违反本协议中规定的使用规则；</li>\n	<li style=\"text-align:justify\">用户在使用收费网络服务时未按规定向欣明支付相应的服务费。</li>\n</ul>\n\n<p><span style=\"color:#007FFC\">3.4</span>&nbsp;如用户注册的网络服务的帐号在任何连续90日内未实际使用，或者用户注册的网络服务的帐号在其订购的收费网络服务的服务期满之后连续180日内未实际使用，则欣明有权删除该帐号并停止为该用户提供相关的网络服务。</p>\n\n<p><span style=\"color:#007FFC\">3.5</span>&nbsp;因非欣明原因导致的本协议提前终止，用户已经支付而尚未使用的费用欣明有权不予退还。</p>\n\n<p><span style=\"color:#007FFC\">3.6</span>&nbsp;用户注册的帐号昵称如存在违反法律法规或国家政策要求，或侵犯任何第三方合法权益的情况，欣明有权收回该账号昵称。&nbsp;</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;4.使用规则</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">4.1</span>&nbsp;解释和定义：</p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;欣明 SUBMSG 短信发送平台：是基于云端技术提供的短信高效送达、短信跟踪及其他服务的短信发送平台服务。以下简称“欣明”。</li>\n	<li style=\"text-align:justify\">用户自有短信地址有效性约定：用户承诺保证所提供的数据地址的有效性。即对所提供的短信地址，用户保证其硬退比例不超过单次发送总量的10%。</li>\n	<li style=\"text-align:justify\">硬退：由于用户提供的短信地址列表无效而导致的投递失败，包含但不限于列表中手机号码不存在等。硬退短信都属于应缴费范围。</li>\n	<li style=\"text-align:justify\">成功送达短信：由短信服务提供商服务器返回成功送达信息的短信。</li>\n	<li style=\"text-align:justify\">实际发送短信数量：为成功送达短信数量和硬退短信数量之和。</li>\n</ul>\n\n<p><span style=\"color:#007FFC\">4.2&nbsp;</span>用户在申请使用欣明网络服务时，必须向欣明提供准确的个人或企业资料，如个人或企业资料有任何变动，必须及时更新。</p>\n\n<p><span style=\"color:#007FFC\">4.3&nbsp;</span>用户同意并保证，在本协议有效期内，欣明有权于任何时间要求用户提交相关资质证明资料原件及/或其他资料信息，用户对其所提交信息的真实完整、合法有效性承担保证责任。</p>\n\n<p><span style=\"color:#007FFC\">4.4&nbsp;</span>用户应按使用欣明的实际发送短信数量，根据欣明页面公布资费标准向欣明支付相应的费用。</p>\n\n<p><span style=\"color:#007FFC\">4.5</span>&nbsp;用户保证其所提供的短信地址列表的真实性、合法性、有效性及许可性，用户有义务对地址列表进行筛选，以保证达到用户自有地址有效性约定。否则欣明有权随时终止本协议。但欣明不承担验证邮件和短信地址真伪及许可性之责任。</p>\n\n<p><span style=\"color:#007FFC\">4.6</span>&nbsp;当用户单次短信硬退比例超过10%时，欣明有权终止向用户提供服务。由此对欣明服务及欣明声誉造成损害的，用户应承担赔偿责任。</p>\n\n<p><span style=\"color:#007FFC\">4.7</span>&nbsp;用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知欣明。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，欣明不承担任何责任。</p>\n\n<p><span style=\"color:#007FFC\">4.8</span>&nbsp;用户同意欣明有权在提供网络服务过程中以各种方式投放各种商业性广告或其他任何类型的商业信息（包括但不限于在欣明网站的任何页面上投放广告），并且，用户同意接受欣明通过电子邮件、手机短信或其他方式向用户发送商品促销或其他相关商业信息。</p>\n\n<p><span style=\"color:#007FFC\">4.9</span>&nbsp;用户可以选择定制服务，定制服务的具体内容以用户在欣明页面的在线申请信息为准。用户不得超过其定制的服务内容使用欣明资源。用户如定制邮件跟踪功能的，应保证该功能用于合法用途。如用户将此功能用于涉及或侵犯第三方隐私以及其他违法用途的，所产生的全部法律责任由用户承担。</p>\n\n<p><span style=\"color:#007FFC\">4.10</span>&nbsp;用户应对相关数据自行存储和备份并至少保留六十日。用户不得于任何时间任何事件中使用欣明的任何商标、Logo、服务标记、域名及其他具有欣明显著品牌特征的标识。</p>\n\n<p><span style=\"color:#007FFC\">4.12</span>&nbsp;用户不得利用欣明发送以下短信：</p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;收件人事先没有提出要求或者同意接受的广告、电子刊物、各种形式的宣传品等宣传性或营销性短信；</li>\n	<li style=\"text-align:justify\">含有病毒、恶意代码、色情、反动等不良信息或有害信息的短信。如用户因为发送以上短信所产生的全部法律责任由用户承担。</li>\n</ul>\n\n<p><span style=\"color:#007FFC\">4.13&nbsp;</span>用户在使用欣明网络服务过程中，必须遵循以下原则：</p>\n\n<ul>\n	<li style=\"text-align:justify\">遵守中国有关的法律和法规；用户同意并保证，用户合法并如约使用欣明。用户对其行为产生的任何法律责任自行独立承担，与欣明无关。</li>\n	<li style=\"text-align:justify\">遵守所有中华人民共和国法律法规和国际上有关互联网和电子邮件的协议、规定、程序和惯例；</li>\n	<li style=\"text-align:justify\">不得为任何非法目的而使用网络服务系统;</li>\n	<li style=\"text-align:justify\">不得以任何形式使用欣明网络服务侵犯欣明的商业利益，进行干扰或扰乱欣明网络服务或其他正常使用或进行任何不利于欣明的行为；</li>\n	<li style=\"text-align:justify\">不得利用欣明网络服务系统进行任何可能对互联网或移动网正常运转造成不利影响的行为；</li>\n	<li style=\"text-align:justify\">不得利用欣明提供的网络服务上传、展示或传播任何虚假的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；</li>\n	<li style=\"text-align:justify\">不得侵犯其他任何第三方的专利权、著作权、商标权、名誉权或其他任何合法权益；</li>\n</ul>\n\n<p><span style=\"color:#007FFC\">4.14</span>&nbsp;用户同意，本协议一经生效欣明即有权永久免费使用用户的商业名称、商标、Logo 等信息作为案例宣传欣明。</p>\n\n<p><span style=\"color:#007FFC\">4.15</span>&nbsp;欣明针对某些特定的欣明网络服务的使用通过各种方式（包括但不限于网页公告、电子邮件、短信提醒等）作出的任何声明、通知、警示等内容视为本协议的一部分，用户如使用该等欣明网络服务，视为用户同意该等声明、通知、警示的内容。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;5.知识产权</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">5.1</span>&nbsp;欣明提供的网络服务中包含的任何文本、图片、图形、音频和/或视频资料均受版权、商标和/或其它财产所有权法律的保护，未经相关权利人同意，上述资料均不得在任何媒体直接或间接发布、播放、出于播放或发布目的而改写或再发行，或者被用于其他任何商业目的。所有这些资料或资料的任何部分仅可作为私人和非商业用途而保存在某台计算机内。</p>\n\n<p><span style=\"color:#007FFC\">5.2&nbsp;</span>欣明为提供网络服务而使用的任何软件（包括但不限于软件中所含的任何图象、照片、动画、录像、录音、音乐、文字和附加程序、随附的帮助材料）的一切权利均属于该软件的著作权人，未经该软件的著作权人许可，用户不得对该软件进行反向工程（reverse engineer）、反向编译（decompile）或反汇编（disassemble）。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;6.隐私保护</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">6.1</span>&nbsp;保护用户隐私是欣明的一项基本政策，欣明保证不对外公开或向第三方提供单个用户的注册资料，但下列情况除外：</p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;事先获得用户的明确授权；</li>\n	<li style=\"text-align:justify\">&nbsp;根据有关的法律法规要求；</li>\n	<li style=\"text-align:justify\">按照相关政府主管部门的要求；</li>\n	<li style=\"text-align:justify\">为维护社会公众的利益；</li>\n	<li style=\"text-align:justify\">为维护欣明的合法权益。</li>\n</ul>\n\n<p><span style=\"color:#007FFC\">6.2&nbsp;</span>欣明可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与欣明同等的保护用户隐私的责任，则欣明有权将用户的注册资料等提供给该第三方。</p>\n\n<p><span style=\"color:#007FFC\">6.3&nbsp;</span>在不透露单个用户隐私资料的前提下，欣明有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;7.免责声明</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">7.1</span>&nbsp;用户明确同意其使用欣明网络服务所存在的风险将完全由其自己承担；因其使用欣明网络服务而产生的一切后果也由其自己承担，欣明对用户不承担任何责任。</p>\n\n<p><span style=\"color:#007FFC\">7.2&nbsp;</span>欣明不担保网络服务一定能满足用户的要求，也不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。</p>\n\n<p><span style=\"color:#007FFC\">7.3</span>&nbsp;欣明不保证为向用户提供便利而设置的外部链接的准确性和完整性，同时，对于该等外部链接指向的不由欣明实际控制的任何网页上的内容，欣明不承担任何责任。</p>\n\n<p><span style=\"color:#007FFC\">7.4&nbsp;</span>鉴于互联网服务的特殊性，对因不可抗力、第三方服务、黑客攻击、政策影响及其他任何非欣明原因引起的服务中断、数据丢失等，欣明均无需承担任何责任。但将尽力减少因此而给用户造成的损失和影响。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;8.违约赔偿</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">8.1</span>&nbsp;用户同意保障和维护欣明及其他用户的利益，如因用户违反有关法律、法规或本协议项下的任何条款而给欣明或任何其他第三人造成损失，用户同意承担由此造成的损害赔偿责任。</p>\n\n<p><span style=\"color:#007FFC\">8.2</span>&nbsp;用户应当按照本协议以及欣明不时公布的规定，妥善使用欣明并为其行为负责。因用户行为导致欣明遭受诉讼、索赔及/或处罚的，用户应赔偿欣明因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;9.协议修改</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">9.1&nbsp;</span>欣明有权随时修改本协议的任何条款，一旦本协议的内容发生变动，欣明将会直接在欣明网站上公布修改之后的协议内容，该公布行为视为欣明已经通知用户修改内容。欣明也可通过其他适当方式向用户提示修改内容。</p>\n\n<p><span style=\"color:#007FFC\">9.2</span>&nbsp;如果不同意欣明对本协议相关条款所做的修改，用户有权停止使用网络服务。如果用户继续使用网络服务，则视为用户接受欣明对本协议相关条款所做的修改。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;10.通知送达</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">10.1</span>&nbsp;本协议项下欣明对于用户所有的通知均可通过网页公告、电子邮件、手机短信或常规的信件传送等方式进行；该等通知于发送之日视为已送达收件人。</p>\n\n<p><span style=\"color:#007FFC\">10.2</span>&nbsp;用户对于欣明的通知应当通过欣明对外正式公布的通信地址、传真号码、电子邮件地址等联系信息进行送达。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;11.法律管辖</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">11.1</span>&nbsp;本协议的订立、执行和解释及争议的解决均应适用中国法律并受中国法院管辖。</p>\n\n<p><span style=\"color:#007FFC\">11.2</span>&nbsp;如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向欣明所在地的人民法院提起诉讼。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;12.其他规定</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">12.1</span>&nbsp;本协议构成双方对本协议之约定事项及其他有关事宜的完整协议，除本协议规定的之外，未赋予本协议各方其他权利。</p>\n\n<p><span style=\"color:#007FFC\">12.2</span>&nbsp;如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。</p>\n\n<p><span style=\"color:#007FFC\">12.3</span>&nbsp;本协议中的标题仅为方便而设，在解释本协议时应被忽略。</p>\n</div>\n</div>\n\n<p>&nbsp;</p>\n', '2', '1', '24', '2', null, '2016-08-10 16:09:27', '2016-08-10 16:09:31');
INSERT INTO `doc` VALUES ('34', 'QTvOw3', '欣明 SUBMSG 短信服务协议', '<h2>《欣明 SUBMSG 短信服务协议》</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;1.特别提示</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">1.1&nbsp;</span>欣明信息科技（深圳）有限公司（Submsg.cn Technology (Shengzhen) Co.,Ltd）（以下简称<span style=\"font-family:times\">“</span>欣明<span style=\"font-family:times\">”</span>）同意按照本协议的规定及其不时发布的操作规则提供基于移动网络的相关短信服务（以下称<span style=\"font-family:times\">“</span>短信服务<span style=\"font-family:times\">”</span>），为获得短信服务，服务使用人（以下称<span style=\"font-family:times\">“</span>用户<span style=\"font-family:times\">”</span>）应当同意本协议的全部条款。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;2.服务内容</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">2.1</span>&nbsp;欣明对用户的短信发送行为和短信发送内容无审核监督义务。因用户行为给欣明造成的一切损失，欣明有权向用户追偿。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">2.2</span>&nbsp;欣明有权随时调整欣明的短信资费，但该调整不会对用户已购买的服务产生影响，欣明在调整短信资费以前会事先通知用户。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;3.服务变更、中断或终止</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">3.1&nbsp;</span>用户同意欣明有权随时变更、中断或终止部分或全部的短信服务，欣明应当在变更、中断或终止之前事先通知用户。如欣明终止该服务，用户已经向欣明支付的服务费，欣明应当按照该用户实际使用相应短信服务的情况扣除相应服务费之后将剩余的服务费退还给该用户。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">3.2&nbsp;</span>欣明有权根据自己的判断对用户是否违反本协议约定及欣明使用规则做出认定。用户若有违反的，欣明有权随时中止或终止本协议及终止短信服务。欣明无需就此征得用户同意或提前通知用户，包括但不仅限于发生下列任何一种情形：<span style=\"font-family:times\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;用户提供的个人资料不真实；</li>\n	<li style=\"text-align:justify\">用户违反本协议中规定的使用规则；</li>\n	<li style=\"text-align:justify\">用户在使用短信服务时未按规定向欣明支付相应的服务费。</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">3.3&nbsp;</span>因非欣明原因导致的本协议提前终止，用户已经支付而尚未使用的费用欣明有权不予退还。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;4.使用规则</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"font-size:14px\"><span style=\"color:#007FFC\">4.1</span>&nbsp;解释和定义：</span></p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;用户自有短信地址有效性约定：用户承诺保证所提供的数据地址的有效性。即对所提供的短信地址，用户保证其硬退比例不超过单次发送总量的10%。</li>\n	<li style=\"text-align:justify\">硬退：由于用户提供的短信地址列表无效而导致的投递失败，包含但不限于列表中手机号码不存在等。硬退短信属于应缴费范围。</li>\n	<li style=\"text-align:justify\">成功送达短信：由短信服务提供商服务器返回成功送达信息的短信。</li>\n	<li style=\"text-align:justify\">实际发送短信数量：为成功送达短信数量和硬退短信数量之和。</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">4.2&nbsp;</span>用户在申请使用欣明短信服务时，必须向欣明提供准确的企业资料，如企业资料有任何变动，必须及时更新。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">4.3&nbsp;</span>用户同意并保证，在本协议有效期内，欣明有权于任何时间要求用户提交相关资质证明资料原件及/或其他资料信息，用户对其所提交信息的真实完整、合法有效性承担保证责任。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">4.4&nbsp;</span>用户应按使用欣明的实际发送短信数量，根据欣明页面公布资费标准向欣明支付相应的费用。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">4.5&nbsp;</span>用户保证其所提供的短信地址列表的真实性、合法性、有效性及许可性，用户有义务对地址列表进行筛选，以保证达到用户自有地址有效性约定，欣明不承担验证短信地址真伪及许可性之责任。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">4.6&nbsp;</span>用户不得利用欣明发送以下短信：含有病毒、恶意代码、色情、反动等不良信息或有害信息的短信。如用户因为发送以上短信所产生的全部法律责任由用户承担。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">4.7&nbsp;</span>用户在使用欣明短信服务过程中，必须遵循以下原则：</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:justify\">&nbsp;遵守中国有关的法律和法规；用户同意并保证，用户合法并如约使用欣明。用户对其行为产生的任何法律责任自行独立承担，与欣明无关。</li>\n	<li style=\"text-align:justify\">不得以任何形式使用欣明短信服务侵犯欣明的商业利益，进行干扰或扰乱欣明短信服务或其他正常使用或进行任何不利于欣明的行为；</li>\n	<li style=\"text-align:justify\">不得利用欣明提供的短信服务展示或传播任何虚假的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；</li>\n	<li style=\"text-align:justify\">不得侵犯其他任何第三方的专利权、著作权、商标权、名誉权或其他任何合法权益；</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;5.免责声明</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">5.1&nbsp;</span>用户明确同意其使用欣明短信服务所存在的风险将完全由其自己承担；因其使用欣明短信服务而产生的一切后果也由其自己承担，欣明对用户不承担任何责任。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">5.2&nbsp;</span>欣明不担保短信服务一定能满足用户的要求，也不担保短信服务不会中断，对短信服务的及时性、安全性、准确性也都不作担保。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">5.3&nbsp;</span>鉴于互联网服务的特殊性，对因不可抗力、第三方服务、黑客攻击、政策影响及其他任何非欣明原因引起的服务中断、数据丢失等，欣明均无需承担任何责任。但将尽力减少因此而给用户造成的损失和影响。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;6.违约赔偿</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"color:#007FFC\">6.1&nbsp;</span>用户同意保障和维护欣明及其他用户的利益，如因用户违反有关法律、法规或本协议项下的任何条款而给欣明或任何其他第三人造成损失，用户同意承担由此造成的损害赔偿责任。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#007FFC\">6.2&nbsp;</span>用户应当按照本协议以及欣明不时公布的规定，妥善使用欣明并为其行为负责。因用户行为导致欣明遭受诉讼、索赔及/或处罚的，用户应赔偿欣明因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;7.法律管辖</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">7.1</span><span style=\"font-family:times\">&nbsp;</span>本协议的订立、执行和解释及争议的解决均应适用中国法律并受中国法院管辖。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">7.2&nbsp;</span>如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向欣明所在地的人民法院提起诉讼。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;8.其他规定</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">8.1&nbsp;</span>本协议构成双方对本协议之约定事项及其他有关事宜的完整协议，除本协议规定的之外，未赋予本协议各方其他权利。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">8.2&nbsp;</span>如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"color:#007FFC\">8.3</span><span style=\"font-family:times\">&nbsp;</span>本协议中的标题仅为方便而设，在解释本协议时应被忽略。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n', '2', '1', '24', '3', null, '2016-08-10 16:10:56', '2016-08-10 16:10:59');
INSERT INTO `doc` VALUES ('35', 'lko6U1', '账户违规使用惩罚机制', '<h2>SUBMSG 账户违规使用惩罚机制</h2>\n\n<p>&nbsp;</p>\n\n<<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 一、虚假、欺诈和钓鱼类邮件的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>虚假、欺诈和钓鱼类的邮件在 SUBMSG 不被允许，一经发现违规行为，SUBMSG 将立即对违规账户执行永久封停，违规行为包括但不仅限于以上邮件。</p>\n\n<p>视违规行为的严重性，SUBMSG 有义务向公安机关或政府相关部门报案，并提供发件账户的身份信息、IP 地址或位置等信息配合相关机关立案调查。</p>\n\n<p>因用户行为导致 SUBMSG 遭受诉讼、索赔或处罚的，用户应赔偿 SUBMSG 因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 二、涉及黄、赌、毒等内容的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG 不允许邮件中包含任何黄、赌、毒或过于敏感的成人内容，一经发现违规，SUBMSG 将立即对违规账户执行永久封停，违规行为包括但不仅限于以上邮件。</p>\n\n<p>视违规行为的严重性，SUBMSG 有义务向公安机关或政府相关部门报案，并提供发件账户的身份信息、IP 地址或位置等信息配合相关机关立案调查。</p>\n\n<p>因用户行为导致 SUBMSG 遭受诉讼、索赔或处罚的，用户应赔偿 SUBMSG 因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>', '2', '1', '24', '4', null, '2016-08-10 16:12:31', '2016-08-10 16:12:34');
INSERT INTO `doc` VALUES ('36', 'xwFOk3', '产品研发部', '<h1>产品研发部</h1>\n\n<p>&nbsp;</p>\n\n<h3>JAVA 高级开发工程师</h3>\n\n<p><u>工作地点：深圳-南山区</u></p>\n\n<h4>&nbsp;</h4>\n\n<h4>岗位职责：</h4>\n\n<ul>\n	<li>负责 SUBMSG 新功能架构设计，带领其他成员完成开发任务；</li>\n	<li>维护、构架 CMPP 2.0 协议，配合团队其他开发人员完成 CMPP 服务端、客户端开发；</li>\n</ul>\n\n<h4>任职要求：</h4>\n\n<ul>\n	<li>三年以上JAVA工作经验、对JAVA语言有深入的了解，熟悉 LINUX 或 MAC OS X 平台；&nbsp;</li>\n	<li>熟悉&nbsp;<span style=\"color:rgb(0, 0, 0); font-family:helvetica neue,helvetica,arial,sans-serif\">RESTful API架构，并对开放 API 架构有深入了解；</span></li>\n	<li>有一年或以上 SMS 网关架构经验者优先考虑，有应对大并发的经验；</li>\n	<li>具备良好的代码编程习惯及文档编写能力；</li>\n	<li>善于与人沟通，良好的团队合作精神和高度的责任感，能够承受压力，有较强的吃苦耐劳和创新精神；</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h3>PHP高级开发工程师</h3>\n\n<p><u>工作地点：深圳-南山区</u></p>\n\n<h4>&nbsp;</h4>\n\n<h4>岗位职责：</h4>\n\n<ul>\n	<li>负责 SUBMSG 新功能架构设计，带领其他成员完成开发任务；</li>\n	<li>关注服务器压力，和运维同事一同解决性能问题；</li>\n	<li>和产品经理讨论设计方案并最终落实技术方案；</li>\n</ul>\n\n<h4>任职要求：</h4>\n\n<ul>\n	<li>三年以上PHP工作经验、对PHP语言有深入的了解，熟悉PHP开发语言及面向对象的软件设计方法；&nbsp;</li>\n	<li>熟悉&nbsp;<span style=\"color:rgb(0, 0, 0); font-family:helvetica neue,helvetica,arial,sans-serif\">RESTful API架构，并对开放 API 架构有深入了解；</span></li>\n	<li>熟练掌握MySQL，Redis&nbsp;数据库；</li>\n	<li>有一年以上大型项目开发经验，有应对大并发的经验；</li>\n	<li>掌握CSS、Javascript等前端技术优先考虑；</li>\n	<li>具备良好的代码编程习惯及文档编写能力；</li>\n	<li>有优秀的学习新知识的能力，思维灵活；</li>\n	<li>善于与人沟通，良好的团队合作精神和高度的责任感，能够承受压力，有较强的吃苦耐劳和创新精神；</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3>简历投递方式：</h3>\n\n<p>请将您的个人简历以“应聘岗位 + 姓名”的方式发送 &nbsp;hr#submsg.cn（请将#换成@）</p>\n\n', '2', '1', '25', '1', null, '2016-08-10 16:13:41', '2016-08-10 16:13:45');
INSERT INTO `doc` VALUES ('37', 'vvJod4', '客户服务部', '<h1>客户服务部</h1>\n\n<p>&nbsp;</p>\n\n<h3>售后工程师</h3>\n\n<p><u>工作地点：深圳－南山区</u></p>\n\n<h4>&nbsp;</h4>\n\n<h4>岗位职责：</h4>\n\n<ul>\n	<li>负责 SUBMSG 日常工单接洽，帮助客户解决遇到的问题；</li>\n	<li>负责 SUBMSG 日常售后服务电话支持帮助客户解答各种遇到的问题；</li>\n</ul>\n\n<h4>任职要求：</h4>\n\n<ul>\n	<li>有编程经验，至少熟练掌握一种服务器端脚本编程语言；&nbsp;</li>\n	<li>熟悉&nbsp;<span style=\"color:rgb(0, 0, 0); font-family:helvetica neue,helvetica,arial,sans-serif\">RESTful API对接，熟练掌握 API 调试工具；</span></li>\n	<li>有一年或以上 SMS 网关工作经验者优先考虑；</li>\n	<li>善于与人沟通，良好的团队合作精神和高度的责任感，能够承受压力，有较强的吃苦耐劳和创新精神；</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3>简历投递方式：</h3>\n\n<p>请将您的个人简历以“应聘岗位 + 姓名”的方式发送 &nbsp;hr#submsg.cn（请将#换成@）</p>\n', '2', '1', '25', '2', null, '2016-08-10 16:14:21', '2016-08-10 16:14:24');
INSERT INTO `doc` VALUES ('38', 'Ho3G44', '行政与人力资源部', '<h1>行政与人力资源部</h1>\n\n<p>&nbsp;</p>\n\n<h3>行政+人力资源经理</h3>\n\n<p><u>工作地点：深圳-南山区</u></p>\n\n<h4>&nbsp;</h4>\n\n<h4>岗位职责：</h4>\n\n<ul>\n	<li>负责公司日常招聘工作；</li>\n	<li>处理社保流程，完成日常社保申报工作；</li>\n	<li>处理公司日常行政事务；</li>\n</ul>\n\n<h4>任职要求：</h4>\n\n<ul>\n	<li>有相关工作经验；&nbsp;</li>\n	<li>熟悉劳务关系及公司行政流程；</li>\n	<li>具备处理公司日常行政事务能力；</li>\n	<li>善于与人沟通，良好的团队合作精神和高度的责任感，能够承受压力，有较强的吃苦耐劳和创新精神；</li>\n</ul>\n\n<h3>&nbsp;</h3>\n\n<h3>简历投递方式：</h3>\n\n<p>请将您的个人简历以“应聘岗位 + 姓名”的方式发送 &nbsp;hr#submsg.cn（请将#换成@）</p>\n\n<p>&nbsp;</p>\n', '2', '1', '25', '3', null, '2016-08-10 16:15:24', '2016-08-10 16:15:28');
INSERT INTO `doc` VALUES ('39', null, '基础', null, '3', '0', '0', '1', null, '2016-08-11 11:06:55', '2016-08-11 11:06:59');
INSERT INTO `doc` VALUES ('40', null, ' 短信', null, '3', '0', '0', '2', null, '2016-08-11 11:08:43', '2016-08-11 11:08:47');
INSERT INTO `doc` VALUES ('41', null, '常见问题与解答', null, '3', '0', '0', '3', null, '2016-08-11 11:10:03', '2016-08-11 11:10:07');
INSERT INTO `doc` VALUES ('42', 'siWgS', '什么是 SUBMSG', '<h2>什么是 SUBMSG?</h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG 的主要业务是触发短信以及 A2P 短信。SUBMSG 为创业者或企业提供了一个全方位的数据发送服务平台，完美地解决了A2P 短信的制作和发送问题。</p>\n\n<p>&nbsp;</p>\n\n<p>另外，SUBMSG 还提供 A2P 短信发送服务，企业现在不仅通过邮件，也可以通过短信和重要的用户保持实时的沟通，强⼤的 SUBMSG 短信 API 让企业轻松的集成已有的网站、应用或客户关系管理系统。</p>\n</div>\n</div>\n', '3', '1', '39', '1', null, '2016-08-11 11:11:11', '2016-08-11 11:11:14');
INSERT INTO `doc` VALUES ('43', 'p3UoI1', '开始使用', '<div>\n<h2><span style=\"font-family:arial,helvetica,sans-serif\">开始使用</span></h2>\n\n<p>&nbsp;</p>\n<a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;注册账户</strong></a>\n\n<div class=\"res-table\">\n<p>在使用 SUBMSG 以前，您需要先<span style=\"color:#007FFC\"><a href=\"/account.sm#/signup\">注册</a>&nbsp;</span>SUBMSG 账户，并用全新的 SUBMSG 账户来<a href=\"/account.sm#/login\"><span style=\"color:#007FFC\">登录</span></a>网站。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;登录时遇到问题</strong></a>\n\n<div class=\"res-table\">\n<p>如果在登录 <span style=\"color:rgb(0, 0, 0)\">SUBMSG </span>时遇到问题，请尝试以下操作：</p>\n\n<ul>\n	<li>键入密码时，请确保未启用 Caps Lock 键（密码区分大小写）。</li>\n	<li>确保正确输入用于创建 <span style=\"color:rgb(0, 0, 0)\">SUBMSG&nbsp;</span>帐户的电子邮件地址和密码。例如：leo@gmail.com 或retro@yahoo.com。</li>\n	<li>如果您忘记密码，那么您可能需要<a href=\"/account.sm#/forgot\"><span style=\"color:#007FFC\">更改或重设密码</span></a>。</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>\n', '3', '1', '39', '2', null, '2016-08-11 11:11:46', '2016-08-11 11:11:48');
INSERT INTO `doc` VALUES ('44', 'suYXk3', '定价与计费', '<h2>定价与计费</h2>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;定价模式</strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG 采用更加合理的按发送量收费，零月租费、零服务费，每次剩余的发送许可都会被累计在你的账户中，我们保证不会浪费你所享有的每一封短信。</p>\n\n<div>&nbsp;</div>\n\n你需要前往我们的<a href=\"/mallIndex.sm\"><span style=\"color:#007ffc\">商店</span></a> 获取查看最新的定价。\n<p>&nbsp;</p>\n\n<div>&nbsp;</div>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;计费方法</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\">你在 SUBMSG 商店购买发送服务并完成付款以后，相应数量的发送服务次数会被自动充入你的账户。请保持账户中有足够的发送服务次数，以满足你的下一次数据发送。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<div>&nbsp;</div>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;设置余额不足提醒</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\">你可以<span style=\"color:#007ffc\">登陆</span>你的账户以后，进入设置来配置您的余额不足设置。<br>\n&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;独立 IP 或多 IP 服务</strong></a>\n\n<div class=\"res-table\">\n<p style=\"text-align:justify\">SUBMSG 还为发送数量大的用户额外提供独立 IP 或多 IP 服务，拥有你的专属发送通道。你需要联系我们的客户服务以获得详细收费标准。</p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\">为什么要使用独立／多 IP：</p>\n\n<ul>\n	<li>由于使用独立服务器，所有整个发送过程不受干扰，更加稳定、高效。</li>\n	<li>支持 IP 域名备案。</li>\n</ul>\n\n<div>&nbsp;</div>\n</div>\n</div>\n', '3', '1', '39', '3', null, '2016-08-11 11:12:20', '2016-08-11 11:12:24');
INSERT INTO `doc` VALUES ('45', '7GouB', '浏览器支持', '<h2><span style=\"font-family:arial,helvetica,sans-serif\">浏览器支持</span></h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p><img alt=\"\" src=\"/libraries/images/html5.png\"></p>\n\n<p>要使用 SUBMSG 应用或访问 submsg.cn 查看网页，你的网页浏览器需要支持 HTML5 。<br>\n请尝试下载你当前浏览器的最新版本，或选择一款 SUBMSG 推荐的浏览器。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;最佳表现浏览器</strong></a>\n\n<div class=\"res-table\">\n<div class=\"text-center pull-left\" style=\"display:inlne-block; margin:10px;\">\n<div style=\"width:128px;height:128px;display:block;overflow:hidden;\"><img alt=\"\" src=\"/libraries/images/chrome.png\" style=\"height:118px; width:118px\"></div>\n\n<p>Google Chrome</p>\n</div>\n\n<div class=\"text-center pull-left\" style=\"display:inlne-block;  margin:10px;\">\n<div style=\"width:128px;height:128px;display:block;overflow:hidden;\"><img alt=\"\" src=\"/libraries/images/firefox.png\" style=\"height:123px; width:120px\"></div>\n\n<p>Firefox</p>\n</div>\n\n<div class=\"text-center pull-left\" style=\"display:inlne-block;  margin:10px;\">\n<div style=\"width:128px;height:128px;display:block;overflow:hidden;\"><img alt=\"\" src=\"/libraries/images/Opera.png\" style=\"height:128px; width:128px\"></div>\n\n<p>Opera 12 以上版本</p>\n</div>\n\n<div class=\"text-center pull-left\" style=\"display:inlne-block;  margin:10px;\">\n<div style=\"width:128px;height:128px;display:block;overflow:hidden;\"><img alt=\"\" src=\"/libraries/images/safari.png\" style=\"height:117px; width:117px\"></div>\n\n<p>Safari</p>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;推荐浏览器下载</strong></a>\n\n<div class=\"res-table\">\n<div style=\"width:auto;margin:20px auto;\">\n<div style=\"float:left;text-align:center; display:block; margin:10px;\"><a href=\"https://www.google.com/intl/zh-CN/chrome/browser/\" style=\"width:128px;height:128px;display:block;overflow:hidden;\" target=\"_blank\"><img src=\"/libraries/images/chrome.png\"> </a>\n\n<p><a href=\"https://www.google.com/intl/zh-CN/chrome/browser/\" target=\"_blank\">Google Chrome</a></p>\n</div>\n\n<div style=\"float:left; text-align:center; display:block; margin:10px;\"><a href=\"https://www.mozilla.org/zh-CN/firefox/\" style=\"width:128px;height:128px;display:block;overflow:hidden;\" target=\"_blank\"><img src=\"/libraries/images/firefox.png\"> </a>\n\n<p><a href=\"https://www.mozilla.org/zh-CN/firefox/\" target=\"_blank\">Firefox</a></p>\n</div>\n\n<div style=\"float:left; text-align:center; display:block; margin:10px;\"><a href=\"http://www.opera.com/\" style=\"width:128px;height:128px;display:block;overflow:hidden;\" target=\"_blank\"><img src=\"/libraries/images/Opera.png\"> </a>\n\n<p><a href=\"http://www.opera.com/\" target=\"_blank\">Opera</a></p>\n</div>\n\n<div style=\"float:left; text-align:center; display:block; margin:10px;\"><a href=\"http://www.apple.com/safari/\" style=\"width:128px;height:128px;display:block;overflow:hidden;\" target=\"_blank\"><img src=\"/libraries/images/safari.png\"> </a>\n\n<p><a href=\"http://www.apple.com/safari/\" target=\"_blank\">Safari</a></p>\n</div>\n\n<div style=\"float:left; text-align:center; display:block; margin:10px;\"><a href=\"http://windows.microsoft.com/zh-cn/internet-explorer\" style=\"width:128px;height:128px;display:block;overflow:hidden;\" target=\"_blank\"><img src=\"/libraries/images/ie.png\"> </a>\n\n<p><a href=\"http://windows.microsoft.com/zh-cn/internet-explorer\" target=\"_blank\">IE 10 以上版本</a></p>\n</div>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<p>&nbsp;</p>\n</div>\n</div>', '3', '1', '39', '4', null, '2016-08-11 11:13:42', '2016-08-11 11:13:42');
INSERT INTO `doc` VALUES ('46', 'SCpS6', '账户违规使用惩罚机制', '<h2>SUBMSG 账户违规使用惩罚机制</h2>\n\n<p>&nbsp;</p>\n\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 一、虚假、欺诈和钓鱼类邮件的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>虚假、欺诈和钓鱼类的邮件在 SUBMSG 不被允许，一经发现违规行为，SUBMSG 将立即对违规账户执行永久封停，违规行为包括但不仅限于以上邮件。</p>\n\n<p>视违规行为的严重性，SUBMSG 有义务向公安机关或政府相关部门报案，并提供发件账户的身份信息、IP 地址或位置等信息配合相关机关立案调查。</p>\n\n<p>因用户行为导致 SUBMSG 遭受诉讼、索赔或处罚的，用户应赔偿 SUBMSG 因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 二、涉及黄、赌、毒、网赚、过于敏感的成人内容的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>SUBMSG 不允许邮件中包含任何黄、赌、毒、网赚或过于敏感的成人内容，一经发现违规，SUBMSG 将立即对违规账户执行永久封停，违规行为包括但不仅限于以上邮件。</p>\n\n<p>视违规行为的严重性，SUBMSG 有义务向公安机关或政府相关部门报案，并提供发件账户的身份信息、IP 地址或位置等信息配合相关机关立案调查。</p>\n\n<p>因用户行为导致 SUBMSG 遭受诉讼、索赔或处罚的，用户应赔偿 SUBMSG 因此造成的全部损失。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp; 三、短信模板 API 滥用，或通过在线提交等方式过多次频繁提交无效模板的惩罚机制 </strong></a>\n\n<div class=\"res-table\">\n<p>对于过多次无效提交模板审核的用户（当天无效提交模板次数到达一定数量）</p>\n\n<ul>\n	<li>首次违规，将封停账户2小时。</li>\n	<li>第二次违规，将封停账户1天。</li>\n	<li>第三次以上违规，将封停账户3天。</li>\n</ul>\n\n<p>&nbsp;</p>\n</div>\n</div>\n', '3', '1', '39', '5', null, '2016-08-11 11:14:26', '2016-08-11 11:14:26');
INSERT INTO `doc` VALUES ('47', 'ItZPX1', '概览', '<h2>概览</h2>\n\n<p>&nbsp;</p>\n\n<p>由于短信服务的特殊性和国家政策的相关规定，在每一次短信项目的发送之前均需要通过 SUBMSG 的人工审核。（人工审核时间：每天 08:00 – 00:00 不含中国公众节假日）</p>\n\n<p>&nbsp;</p>\n\n<p>短信项目审核流程：</p>\n\n<p><img alt=\"\" src=\"/libraries/zh_cn/images/eg/message-1.jpg\" class=\"img-responsive\"></p>', '3', '1', '40', '1', null, '2016-08-11 11:14:55', '2016-08-11 11:14:55');
INSERT INTO `doc` VALUES ('48', 'h7YNJ1', '创建新短信', '<h2>创建新短信</h2>\n\n<p>&nbsp;</p>\n\n<p>1.在 SUBMSG 上登录账户。</p>\n\n<p>&nbsp;</p>\n\n<p>2.点击页面上方“新建模版”，然后根据弹出的短信编辑框来创建短信。</p>\n\n<p>&nbsp;</p>\n\n<h3>编辑区域</h3>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;键入短信-&gt;(查看剩余字数)</strong></a>\n\n<div class=\"res-table\">\n<p>你可以在绿色的编辑区域键入你想发送的短信内容，右侧将显示剩余的字符数量。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;添加签名</strong></a>\n\n<div class=\"res-table\">\n<p><span style=\"font-size:14px\"><strong>创建签名</strong></span></p>\n\n<p>点击短信编辑框左侧的签名按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msgsign.png\" style=\"height:15px; width:31px\"></span>，在弹出的创建签名框中填写签名内容，点击右侧的添加按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msgadd.png\" style=\"height:25px; width:30px\"></span>，完成新签名的添加。</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-size:14px\"><strong>选择签名</strong></span></p>\n\n<p>点击短信编辑框左侧的签名按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msgsign.png\" style=\"height:15px; width:31px\"></span>，直接选择已创建的签名完成签名选择。</p>\n\n<p>&nbsp;</p>\n\n<p><strong><span style=\"font-size:14px\">取消签名</span></strong></p>\n\n<p>直接鼠标点击短信编辑框右侧的签名即可完成签名的取消。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;添加常用符号</strong></a>\n\n<div class=\"res-table\">\n<p>点击短信编辑框左侧的常用符号按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msgsymbol.png\" style=\"height:15px; width:39px\"></span>，在弹出的常用符号框中直接选择符号即可完成符号的添加。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n\n\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;提交审核</strong></a>\n\n<div class=\"res-table\">\n<p>点击页面左下角的提交审核按钮<img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msg-100.png\" style=\"height:20px; width:74px\">，提交短信审核，并等待审核结果。你的短信项目需要先通过审核才可以进行发送，了解<a href=\"/doc/index.sm?type=3#ItZPX1\"><span style=\"color:#007ffc\">短信审核流程</span></a>。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;保存</strong></a>\n\n<div class=\"res-table\">\n<p>你可以随时保存短信项目，点击页面下方的保存按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msg-101.png\" style=\"height:20px; width:76px\"></span>，保存已创建／编辑的短信项目以便于下次编辑。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n\n\n\n<h3><br>\n<br>\n预览区域</h3>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;预览</strong></a>\n\n<div class=\"res-table\">\n<p>短信编辑页面的右侧为短信发送预览区域，你可以在预览区域实时地看到将要被发送的短信状态。</p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;非法词或短语</strong></a>\n\n<div class=\"res-table\">\n<p>当你所要发送的短信内容中出现工信部禁止的敏感词汇时，相关敏感词汇将以红色标记出现在右侧预览区域，请及时修正或删除敏感词汇。</p>\n\n<div>&nbsp;</div>\n\n<p>&nbsp;</p>\n</div>\n</div>\n', '3', '1', '40', '2', null, '2016-08-11 11:15:23', '2016-08-11 11:15:23');
INSERT INTO `doc` VALUES ('49', 'yse4E4', '短信模版', '<h2>短信模版</h2>\n\n<p>&nbsp;</p>\n\n<p>登录进入之后，进入短信模版列表页面，你可以轻松地对任何短信模版进行编辑和发送。</p>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;编辑项目</strong></a>\n\n<div class=\"res-table\">\n<p>你只需点击任意想选择的短信项目中的编辑按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-msgadd.png\" style=\"height:25px; width:30px\"></span>，即可进入该短信项目的编辑页面。</p>\n\n<div>&nbsp;</div>\n</div>\n</div>\n\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp;&nbsp;查看 API 标记</strong></a>\n\n<div class=\"res-table\">\n<p>点击任意想选择的短信项目中的 API 标记按钮<span style=\"color:#3366ff\"><img alt=\"\" src=\"/libraries/zh_cn/images/helpDoc-mailapi.png\" style=\"height:25px; width:28px\"></span>，即可显示该短信项目的 API 标记。</p>\n\n<div>&nbsp;</div>\n</div>\n</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>', '3', '1', '40', '3', null, '2016-08-11 11:15:46', '2016-08-11 11:15:46');
INSERT INTO `doc` VALUES ('50', 'vIfm23', '设置 IP 白名单', '<h1>设置 IP 白名单</h1>\n\n<p>&nbsp;</p>\n\n<p>在应用管理-》应用 页面，您可以对您所创建的应用设置IP白名单，更好的保护您的账户安全。</p>\n\n<p>要设置应用 IP&nbsp;白名单，您可以在&nbsp;应用管理-》应用 页面，单击需要配置 IP 白名单的应用工具栏上的“编辑”按钮，即可在 IP 白名单列开始填写你想要绑定的 IP 地址。</p>\n\n<p><u><strong>设置 IP 白名单的相关技巧：</strong></u></p>\n\n<ul>\n	<li>在绑定多个 IP 地址时，请用半角 \";\" 分号分割，前后不需要空格；</li>\n	<li>IP 白名单不支持 CIDR 模式；</li>\n</ul>\n\n<p>&nbsp;</p>', '3', '1', '41', '1', null, '2016-08-11 11:17:33', '2016-08-11 11:17:33');
INSERT INTO `doc` VALUES ('51', 'jblWb', 'internationalsms/xsend (国际)', '<h2><strong>API: <code>internationalsms/xsend </code></strong><span style=\"font-family:helvetica\"><strong>&nbsp;</strong></span></h2>\n\n<p>&nbsp;</p>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;概览</strong></a>\n\n<div class=\"res-table\">\n<p>&nbsp;</p>\n\n<p><code>internationalsms/xsend</code> 是 SUBMSG 的国际短信 API。</p>\n\n<p><span style=\"font-family:monospace\"><code>internationalsms/xsend</code> 与 <code>message/xsend</code> 参数几乎一致，<code>internationalsms/xsend</code> 和&nbsp;&nbsp;<code>message/xsend</code>&nbsp;共享短信模板。</span></p>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;URL</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5><code>https://api.submsg.cn/internaltionalsms/xsend.json</code></h5>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;支持格式</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5><code>json</code></h5>\n			</td>\n			<td>\n			<h5><code>https://api.submail.cn/internaltionalsms/xsend.json</code></h5>\n			</td>\n			<td>\n			<h5><strong>默认</strong></h5>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;http 请求方式</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5><code><strong>POST</strong></code></h5>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;是否需要授权</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5><strong>是</strong></h5>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>参阅 <a href=\"/doc/index.sm#gbibb3\">API&nbsp;授权和验证机制</a></p>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;请求参数</strong></a>\n\n<div class=\"res-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5>参数</h5>\n			</td>\n			<td>\n			<h5 style=\"text-align:center\">类型</h5>\n			</td>\n			<td style=\"width:80px\">\n			<h5 style=\"text-align:center\">必需/可选</h5>\n			</td>\n			<td>\n			<h5 style=\"text-align:center\">默认</h5>\n			</td>\n			<td>\n			<h5>描述</h5>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>appid</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>string</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></p>\n			</td>\n			<td style=\"text-align:center\">无</td>\n			<td>\n			<p>在 SUBMSG 应用集成中创建的短信应用 ID</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>region_code</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>string</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></p>\n			</td>\n			<td style=\"text-align:center\">无</td>\n			<td>\n			<p>国家区域代码  如 86 不需要加＋号</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>to</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>string</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><span style=\"color:rgb(255, 0, 0)\">必需</span></p>\n			</td>\n			<td style=\"text-align:center\">无</td>\n			<td>\n			<p>收件人手机号码 如 1234678，除国家区域代码外的号码</p>\n\n			<blockquote>\n			<p>仅支持单个手机号码，不支持 +86 国内手机号码</p>\n			</blockquote>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>tempid</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>string</code></p>\n			</td>\n			<td style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></td>\n			<td style=\"text-align:center\">无</td>\n			<td>\n			<p>短信模版标记 (ID)</p>\n\n			<blockquote>\n			<p>在 SUBMSG &gt; 短信 &gt;模版列表中查看你所创建的短信模版（模板ID）标记。<em>请参见&nbsp;<a href=\"/doc/index.sm#MmSw12\">获取短信模版开发者标识</a></em></p>\n			</blockquote>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>vars</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>json string</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\">可选</p>\n			</td>\n			<td style=\"text-align:center\">无</td>\n			<td>\n			<p>使用文本变量动态控制短信中的文本</p>\n\n			<p>参阅&nbsp;<a href=\"/doc/index.sm#oKraS3\">了解如何创建和使用文本变量</a></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>timestamp</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\">string</p>\n			</td>\n			<td style=\"text-align:center\">必须</td>\n			<td style=\"text-align:center\">无</td>\n			<td>参阅 <a href=\"/doc/index.sm#gbibb3\">API 授权与验证机制</a>&nbsp; &gt; &nbsp;<code>Timestamp</code> UNIX 时间戳</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>sign_type</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>string</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\">可选</p>\n			</td>\n			<td style=\"text-align:center\"><code>normal</code></td>\n			<td>\n			<p>API 授权模式（ &nbsp;<code>md5 or sha1 or normal</code>&nbsp;）</p>\n\n			<p>参阅&nbsp;<a href=\"/doc/index.sm#gbibb3\">API 授权与验证机制</a>&nbsp; &gt; &nbsp;授权和验证方式</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><code>signature</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><code>string</code></p>\n			</td>\n			<td>\n			<p style=\"text-align:center\"><span style=\"color:#FF0000\">必需</span></p>\n			</td>\n			<td style=\"text-align:center\">无</td>\n			<td>\n			<p>应用密匙&nbsp;<em>或&nbsp;</em>数字签名</p>\n\n			<p>参阅&nbsp;<a href=\"/doc/index.sm#gbibb3\">API 授权与验证机制</a>&nbsp; &gt; &nbsp;授权和验证方式</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;代码示例</strong></a>\n\n<div class=\"res-table table-responsive\">\n<h4>发送一封测试短信</h4>\n\n<hr>\n<div class=\"nav-table-active\">\n<ul>\n	<li class=\"active\"><a class=\"nag-tab-ctr\" href=\"javascript:void(0)\">JSON</a></li>\n</ul>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<div class=\"nav-table-container\">\n<div class=\"nav-tab-views table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5><code>POST</code></h5>\n			</td>\n			<td>\n			<pre class=\"prettyprint prettyprinted\" style=\"\"><span class=\"pln\">https</span><span class=\"pun\">:</span><span class=\"com\">//api.submsg.cn/internaltionalsms/xsend.json</span></pre>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h5><code>POST Data</code></h5>\n			</td>\n			<td>\n			<pre class=\"prettyprint prettyprinted\" style=\"\"><span class=\"pln\">appid</span><span class=\"pun\">=</span><span class=\"pln\">your_app_id\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">region_code</span><span class=\"pun\">=</span><span class=\"lit\">93</span><span class=\"pln\">\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">to</span><span class=\"pun\">=</span><span class=\"lit\">8xxxxxxxx</span><span class=\"pln\">\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">tempid</span><span class=\"pun\">=</span><span class=\"typ\">ThJBE4</span><span class=\"pln\">\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">signature</span><span class=\"pun\">=</span><span class=\"pln\">your_app_key</span><span class=\"pln\">\n</span><span class=\"pun\">&amp;</span><span class=\"pln\">timestamp</span><span class=\"pun\">=</span><span class=\"pln\">1414253462</span>\n</pre>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h5><code>返回</code></h5>\n			</td>\n			<td>\n			            <pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"success\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"rc\"</span><span class=\"pun\">:</span>\n        <span class=\"pun\">{</span>\n          <span class=\"str\">\"sendId\"</span><span class=\"pun\">:</span><span class=\"str\">\"093c0a7df143c087d6cba9cdf0cf3738\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"fee\"</span><span class=\"pun\">:</span><span class=\"str\">1.26</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg_balance\"</span><span class=\"pun\">:</span><span class=\"str\">1276.987</span>\n        <span class=\"pun\">}</span>\n     <span class=\"pun\">}</span></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n\n</div>\n\n<p>&nbsp;</p>\n<!-- nav table start -->\n\n<hr>\n<h4>使用 <code>CURL</code> 发送一封测试短信</h4>\n\n<hr>\n<div class=\"nav-table-active\">\n<ul>\n	<li class=\"active\"><a class=\"nag-tab-ctr\" href=\"javascript:void(0)\">JSON</a></li>\n</ul>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<div class=\"nav-table-container\">\n<div class=\"nav-tab-views table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:100px\">\n			<h5><code>发送 CURL</code></h5>\n			</td>\n			<td>\n			<pre class=\"prettyprint prettyprinted\" style=\"\"><span class=\"pln\">curl </span><span class=\"pun\">-</span><span class=\"pln\">d </span><span class=\"str\">\'appid=your_app_id&amp;region_code=93&amp;to=88xxxxxxxx&amp;tempid=ThJBE4&amp;signature=your_app_key&amp;timestamp=1414253462\'</span><span class=\"pln\"> https</span><span class=\"pun\">:</span><span class=\"com\">//api.submsg.cn/internaltionalsms/xsend.json</span></pre>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"width:100px\">\n			<h5><code>返回</code></h5>\n			</td>\n			<td>\n			            <pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"success\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"rc\"</span><span class=\"pun\">:</span>\n        <span class=\"pun\">{</span>\n          <span class=\"str\">\"sendId\"</span><span class=\"pun\">:</span><span class=\"str\">\"093c0a7df143c087d6cba9cdf0cf3738\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"fee\"</span><span class=\"pun\">:</span><span class=\"str\">1.26</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg_balance\"</span><span class=\"pun\">:</span><span class=\"str\">1276.987</span>\n        <span class=\"pun\">}</span>\n     <span class=\"pun\">}</span></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n<!-- nav  table 1 end -->\n<!-- nav  table 2 end -->\n\n<p>&nbsp;</p>\n<!-- nav table end --></div>\n<!-- nav container end -->\n\n<hr>\n<h4>&nbsp;</h4>\n</div>\n</div>\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;返回码</strong></a>\n\n<div class=\"res-table\"><!-- nav table start -->\n<div class=\"nav-table-active\">\n<ul>\n	<li class=\"active\"><a class=\"nag-tab-ctr\" href=\"javascript:void(0)\">JSON</a></li>\n</ul>\n</div>\n\n<div class=\"clearfix\">&nbsp;</div>\n\n<div class=\"nav-table-container\">\n<div class=\"nav-tab-views table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<h5><code>请求成功</code></h5>\n			</td>\n			<td>\n <pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">0</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"success\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"rc\"</span><span class=\"pun\">:</span>\n        <span class=\"pun\">{</span>\n          <span class=\"str\">\"sendId\"</span><span class=\"pun\">:</span><span class=\"str\">\"093c0a7df143c087d6cba9cdf0cf3738\"</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"fee\"</span><span class=\"pun\">:</span><span class=\"str\">1.26</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg_balance\"</span><span class=\"pun\">:</span><span class=\"str\">1276.987</span>\n        <span class=\"pun\">}</span>\n     <span class=\"pun\">}</span></pre>\n\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<h5><code>请求失败</code></h5>\n			</td>\n			<td>\n			<pre class=\"prettyprint prettyprinted\" style=\"\">\n     <span class=\"pun\">{</span><span class=\"pln\"></span>\n          <span class=\"str\">\"flag\"</span><span class=\"pun\">:</span><span class=\"str\">1</span><span class=\"pln\">,</span>\n          <span class=\"str\">\"msg\"</span><span class=\"pun\">:</span><span class=\"str\">\"错误信息\"</span><span class=\"pln\">,</span>\n     <span class=\"pun\">}</span></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n<!-- nav  table 1 end -->\n<!-- nav  table 2 end --><!-- nav table end --></div>\n\n<p>&nbsp;</p>\n<!-- nav container end --></div>\n</div>\n\n\n\n<div><a class=\"res-title table-title btn-block\" href=\"javascript:void(0)\"><strong>&nbsp; &nbsp;错误代码</strong></a>\n\n<div class=\"res-table\">\n<div class=\"rs-table table-responsive\">\n<table class=\"table table-hover\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:120px\">错误代码(flag)</td>\n			<td>描述(msg)</td>\n		</tr>\n		<tr>\n			<td>1</td>\n			<td>\n			<p>消息已过期（发送时间超过6秒）</p>\n			</td>\n		</tr>\n		<tr>\n			<td>2</td>\n			<td>\n			<p>签名校验不正确</p>\n			</td>\n		</tr>\n		<tr>\n			<td>3</td>\n			<td>\n			<p>国家区域代码不支持</p>\n			</td>\n		</tr>\n		<tr>\n			<td>4</td>\n			<td>\n			<p>无效的模板id（没通过审核或不存在）</p>\n			</td>\n		</tr>\n		<tr>\n			<td>5</td>\n			<td>\n			<p>模版中包含的签名没有通过审核或不存在</p>\n			</td>\n		</tr>\n		<tr>\n			<td>6</td>\n			<td>\n			<p>余额不足</p>\n			</td>\n		</tr>\n		<tr>\n			<td>7</td>\n			<td>\n			<p>ip不在白名单内</p>\n			</td>\n		</tr>\n                <tr>\n			<td>8</td>\n			<td>\n			<p>时间戳不能为空</p>\n			</td>\n		</tr>\n		<tr>\n			<td>1000</td>\n			<td>\n			<p>不正确的 APP ID</p>\n			</td>\n		</tr>\n		<tr>\n			<td>1001</td>\n			<td>\n			<p>相同手机号，相同内容间隔时间不能小于30秒</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n\n<p>&nbsp;</p>\n</div>\n</div>\n\n\n\n\n', '1', '1', '4', '2', null, '2016-08-12 11:52:11', '2016-08-12 11:52:11');

-- ----------------------------
-- Table structure for doc_reply
-- ----------------------------
DROP TABLE IF EXISTS `doc_reply`;
CREATE TABLE `doc_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_key_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `repl_content` text NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc_reply
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
INSERT INTO `member` VALUES ('19', 'dogdog7788@qq.com', '96e79218965eb72c92a549dd5a330112', '孟', '潮', null, null, '', '', 'dogdog7788@qq.com', '', null, '', '', '', '', '', null, null, '0', '2016-06-03 17:30:40', '2016-06-03 17:30:40');

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
INSERT INTO `member_message_sign` VALUES ('5', '19', '幸福100商城', '1', '0', '05', '2016-08-03 17:05:14', '2016-08-03 17:05:16');
INSERT INTO `member_message_sign` VALUES ('6', '19', 'SUBMSG', '1', '0', '06', '2016-08-03 17:06:37', '2016-08-03 17:06:37');
INSERT INTO `member_message_sign` VALUES ('7', '19', '幸福100', '1', '0', '07', '2016-08-03 17:12:27', '2016-08-03 17:12:27');

-- ----------------------------
-- Table structure for member_message_temp
-- ----------------------------
DROP TABLE IF EXISTS `member_message_temp`;
CREATE TABLE `member_message_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `temp_id` varchar(16) NOT NULL,
  `temp_title` varchar(255) DEFAULT NULL,
  `temp_content` text NOT NULL,
  `temp_status` int(11) NOT NULL DEFAULT '0',
  `sign_id` int(11) NOT NULL,
  `updated_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tempid` (`temp_id`) USING BTREE,
  KEY `user_id` (`user_id`),
  KEY `sign_id` (`sign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  `msg_balance` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `time_zone` int(11) NOT NULL,
  `remind_type` int(11) NOT NULL,
  `remind_num` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_msg_info
-- ----------------------------
INSERT INTO `member_msg_info` VALUES ('19', '0', '0.00000', '0', '0', '0', '2016-07-06 11:52:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=20000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_project
-- ----------------------------
INSERT INTO `member_project` VALUES ('19999', '19', '6你好', '5f677f6e642a114504ac12e3571ee456', '-1', '', '1', '2016-07-21 17:55:34', '2016-07-21 17:55:34');

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
-- Table structure for msg_international_data
-- ----------------------------
DROP TABLE IF EXISTS `msg_international_data`;
CREATE TABLE `msg_international_data` (
  `country` varchar(32) NOT NULL,
  `country_name` varchar(16) NOT NULL,
  `country_code` varchar(16) NOT NULL,
  `region_code` int(11) NOT NULL,
  `area` varchar(16) NOT NULL,
  `price` decimal(10,5) NOT NULL DEFAULT '0.00000',
  KEY `region_code` (`region_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_international_data
-- ----------------------------
INSERT INTO `msg_international_data` VALUES ('Afghanistan', '阿富汗', 'AF', '93', '亚洲', '0.57000');
INSERT INTO `msg_international_data` VALUES ('Armenia', '亚美尼亚', 'AM', '374', '亚洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Azerbaijan', '阿塞拜疆', 'AZ', '994', '亚洲', '0.50000');
INSERT INTO `msg_international_data` VALUES ('Bahrain', '巴林', 'BH', '973', '亚洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Bangladesh', '孟加拉国', 'BD', '880', '亚洲', '0.48600');
INSERT INTO `msg_international_data` VALUES ('Bhutan', '不丹', 'BHU', '975', '亚洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Brunei', '文莱', 'BN', '673', '亚洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Cambodia', '柬埔寨', 'KHM', '855', '亚洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('East Timor', '东帝汶', 'TMP', '670', '亚洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Georgia', '格鲁吉亚', 'GE', '995', '亚洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('Hong Kong', '香港', 'HK', '852', '亚洲', '1.13600');
INSERT INTO `msg_international_data` VALUES ('India', '印度', 'IN', '91', '亚洲 ', '0.50200');
INSERT INTO `msg_international_data` VALUES ('Indonesia', '印度尼西亚', 'ID', '62', '亚洲', '0.37200');
INSERT INTO `msg_international_data` VALUES ('Iran', '伊朗', 'IR', '98', '亚洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Iraq', '伊拉克', 'IQ', '964', '亚洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Israel', '以色列', 'IL', '972', '亚洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Japan ', '日本', 'JP', '81', '亚洲', '1.36600');
INSERT INTO `msg_international_data` VALUES ('Jordan', '约旦', 'JO', '962', '亚洲', '0.71000');
INSERT INTO `msg_international_data` VALUES ('Kazakhstan', '哈萨克斯坦', 'KZ', '7', '亚洲', '0.69600');
INSERT INTO `msg_international_data` VALUES ('Kuwait', '科威特', 'KW', '965', '亚洲', '0.33000');
INSERT INTO `msg_international_data` VALUES ('Kyrgyzstan', '吉尔吉斯斯坦', 'KG', '996', '亚洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Laos', '老挝', 'LA', '856', '亚洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Lebanon', '黎巴嫩', 'LB', '961', '亚洲', '1.70800');
INSERT INTO `msg_international_data` VALUES ('Macau', '澳门', 'MO', '853', '亚洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Malaysia', '马来西亚', 'MAS', '60', '亚洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Maldives', '马尔代夫', 'MV', '960', '亚洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Mongolia', '蒙古', 'MN', '976', '亚洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Nepal', '尼泊尔', 'NP', '977', '亚洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Oman', '阿曼', 'OM', '968', '亚洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Pakistan', '巴基斯坦', 'PK', '92', '亚洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Palestine/Israel', '巴勒斯坦', 'PS', '970', '亚洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Philippines', '菲律宾', 'PH', '63', '亚洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Qatar', '卡塔尔', 'QA', '974', '亚洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Saudi Arabia', '沙特阿拉伯', 'SA', '966', '亚洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('Singapore', '新加坡', 'SG', '65', '亚洲', '0.72000');
INSERT INTO `msg_international_data` VALUES ('South Korea', '韩国', 'SK', '82', '亚洲', '1.13600');
INSERT INTO `msg_international_data` VALUES ('Sri Lanka', '斯里兰卡', 'LK', '94', '亚洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Syria', '叙利亚', 'SY', '963', '亚洲', '0.69800');
INSERT INTO `msg_international_data` VALUES ('Taiwan', '台湾', 'TW', '886', '亚洲', '0.74000');
INSERT INTO `msg_international_data` VALUES ('Tajikistan', '塔吉克斯坦', 'TJ', '992', '亚洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('Thailand', '泰国', 'TH', '66', '亚洲', '0.59600');
INSERT INTO `msg_international_data` VALUES ('Turkmenistan', '土库曼斯坦', 'TM', '993', '亚洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('United Arab Emirates', '阿拉伯联合酋长国', 'AE', '971', '亚洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Uzbekistan', '乌兹别克斯坦', 'UZ', '998', '亚洲', '0.55000');
INSERT INTO `msg_international_data` VALUES ('Viet Nam', '越南', 'VN', '84', '亚洲', '1.09800');
INSERT INTO `msg_international_data` VALUES ('Yemen', '也门', 'YE', '967', '亚洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Sri Lanka', '斯里兰卡', 'SRL', '94', '亚洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Republic Of The Union Of Myanmar', '缅甸', 'MMR', '98', '亚洲', '2.32600');
INSERT INTO `msg_international_data` VALUES (' Faroe Is', '法罗群岛', 'FAR', '298', '北大西洋', '0.22200');
INSERT INTO `msg_international_data` VALUES ('Antigua & Barbuda', '安提瓜和巴布达', 'ATG', '1268', '北美洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Bahamas', '巴哈马', 'BS', '1242', '北美洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Bermuda', '百慕大群岛', 'BMD', '1441', '北美洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Dominica', '多米尼', 'DMA', '1767', '北美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Dominican Republic', '多米尼加共和国', 'DOM', '1809', '北美洲', '0.80600');
INSERT INTO `msg_international_data` VALUES ('French West Indies', '法属西印度群岛', 'SIA', '809', '北美洲', '0.83200');
INSERT INTO `msg_international_data` VALUES ('Mexico', '墨西哥', 'MX', '52', '北美洲', '0.80800');
INSERT INTO `msg_international_data` VALUES ('Nicaragua', '尼加拉瓜', 'NI', '505', '北美洲', '0.64000');
INSERT INTO `msg_international_data` VALUES ('Saint Vincent and the Grenadines', '圣文森特和格林纳丁斯', 'VCT', '784', '北美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Virgin Islands', '美属维尔京群岛', 'VG', '1340', '北美洲', '0.40000');
INSERT INTO `msg_international_data` VALUES ('St Lucia', '圣卢西亚', 'SL', '1758', '北美洲', '0.28600');
INSERT INTO `msg_international_data` VALUES ('St Vincent ', '圣文森特', 'SV', '1784', '北美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('St.Kitts & Nevis ', '圣基茨和尼维斯', 'KNA', '1869', '北美洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('US. Virgin Island', '维尔京群岛', 'UV', '1340', '北美洲', '0.28600');
INSERT INTO `msg_international_data` VALUES ('Netherlands Antilles', '荷属安的列斯', 'AN', '599', '南美洲', '0.64000');
INSERT INTO `msg_international_data` VALUES ('Argentina', '阿根廷', 'AR', '54', '南美洲', '0.81200');
INSERT INTO `msg_international_data` VALUES ('Aruba', '阿鲁巴', 'ALB', '297', '南美洲', '0.69800');
INSERT INTO `msg_international_data` VALUES ('Bolivia', '玻利维亚', 'BO', '591', '南美洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Colombia', '哥伦比亚', 'CO', '57', '南美洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Falkland Islands', '马尔维纳斯群岛', 'MEN', '500', '南美洲', '1.75000');
INSERT INTO `msg_international_data` VALUES ('Suriname', '苏里南', 'SR', '597', '南美洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Andorra', '安道尔共和国', 'AD', '376', '大洋洲', '0.55000');
INSERT INTO `msg_international_data` VALUES ('Australia', '澳大利亚', 'AU', '61', '大洋洲', '1.47800');
INSERT INTO `msg_international_data` VALUES ('Cook Islands', '库克群岛', 'COK', '682', '大洋洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Fiji Islands                    ', '斐济', 'FJI', '679', '大洋洲', '0.69600');
INSERT INTO `msg_international_data` VALUES ('French Polynesia', '法属波利尼西亚', 'PF', '689', '大洋洲', '4.15800');
INSERT INTO `msg_international_data` VALUES ('Guam', '关岛', 'GU', '1671', '大洋洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Micronesia', '密克罗尼西亚', 'FSM', '691', '大洋洲', '0.47800');
INSERT INTO `msg_international_data` VALUES ('New Caledonia', '新喀里多尼亚岛', 'NCA', '687', '大洋洲', '1.07200');
INSERT INTO `msg_international_data` VALUES ('New Zealand', '新西兰', 'NZ', '64', '大洋洲', '0.87600');
INSERT INTO `msg_international_data` VALUES ('Papua New Guinea', '巴布亚新几内亚', 'PNG', '675', '大洋洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Samoa', '萨摩亚', 'WS', '685', '大洋洲', '1.01200');
INSERT INTO `msg_international_data` VALUES ('Solomon Islands', '所罗门群岛', 'SOL', '677', '大洋洲', '1.75000');
INSERT INTO `msg_international_data` VALUES ('Togo', '多哥', 'TG', '228', '大洋洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Tonga', '汤加', 'TO', '676', '大洋洲', '0.63600');
INSERT INTO `msg_international_data` VALUES ('Tuvalu', '图瓦卢', 'TUV', '688', '大洋洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('Vanuatu', '瓦努阿图', 'VUT', '678', '大洋洲', '0.81200');
INSERT INTO `msg_international_data` VALUES ('Wesstern Samoa', '西萨摩亚', 'WS', '685', '大洋洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('French Polynesia', '玻利尼西亚', 'PYF ', '689', '大洋洲', '4.15800');
INSERT INTO `msg_international_data` VALUES ('Palau', '帕劳', 'PLW', '680', '大洋洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Norfolk is', '诺福克岛', 'NFK', '61', '大洋洲', '1.00000');
INSERT INTO `msg_international_data` VALUES ('Ascension Island', '阿森松', 'AS', '247', '大西洋', '0.19800');
INSERT INTO `msg_international_data` VALUES ('Albania', '阿尔巴尼亚', 'AL', '355', '欧洲', '1.60600');
INSERT INTO `msg_international_data` VALUES ('Algeria', '阿尔及利亚', 'DZ', '213', '欧洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Austria', '奥地利', 'AT', '43', '欧洲', '2.09000');
INSERT INTO `msg_international_data` VALUES ('Belarus', '白俄罗斯', 'BY', '375', '欧洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Belgium', '比利时', 'BE', '32', '欧洲', '2.06200');
INSERT INTO `msg_international_data` VALUES ('Bosnia and Herzegovina', '波斯尼亚和黑塞哥维那', 'BIH', '387', '欧洲', '0.89600');
INSERT INTO `msg_international_data` VALUES ('Bulgaria', '保加利亚', 'BG', '359', '欧洲', '1.86000');
INSERT INTO `msg_international_data` VALUES ('Croatia', '克罗地亚共和国', 'HRV', '385', '欧洲', '1.53600');
INSERT INTO `msg_international_data` VALUES ('Cyprus', '塞浦路斯', 'CY', '357', '欧洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Czech Republic', '捷克共和国', 'CZ', '420', '欧洲', '1.91600');
INSERT INTO `msg_international_data` VALUES ('Denmark', '丹麦', 'DK', '45', '欧洲', '0.64000');
INSERT INTO `msg_international_data` VALUES ('Estonia', '爱沙尼亚', 'EE', '372', '欧洲', '1.20600');
INSERT INTO `msg_international_data` VALUES ('Faroe Islands', '法罗群岛', 'FLA', '298', '欧洲', '0.22200');
INSERT INTO `msg_international_data` VALUES ('Finland', '芬兰', 'FI', '358', '欧洲 ', '1.97200');
INSERT INTO `msg_international_data` VALUES ('France', '法国', 'FRA', '33', '欧洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Germany', '德国', 'DEU', '49', '欧洲', '2.27000');
INSERT INTO `msg_international_data` VALUES ('Gibraltar', '直布罗陀', 'GI', '350', '欧洲', '0.60000');
INSERT INTO `msg_international_data` VALUES ('Greece', '希腊', 'GR', '30', '欧洲', '1.26800');
INSERT INTO `msg_international_data` VALUES ('Guernsey', '格恩西岛', 'GH', '44', '欧洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Hungary', '匈牙利', 'HU', '36', '欧洲', '1.86000');
INSERT INTO `msg_international_data` VALUES ('Iceland', '冰岛', 'IS', '354', '欧洲', '0.41800');
INSERT INTO `msg_international_data` VALUES ('Ireland', '爱尔兰', 'IE', '353', '欧洲', '1.53600');
INSERT INTO `msg_international_data` VALUES ('Isle of Man', '马恩岛', 'MEA', '44', '欧洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('Italy', '意大利', 'ITA', '39', '欧洲', '1.70800');
INSERT INTO `msg_international_data` VALUES ('Jersey', '泽西岛', 'ZXA', '44', '欧洲', '0.72200');
INSERT INTO `msg_international_data` VALUES ('Latvia', '拉脱维亚', 'LV', '371', '欧洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Liechenstein', '列支敦士登', 'LIE', '423', '欧洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Lithuania', '立陶宛', 'LT', '370', '欧洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Luxembourg', '卢森堡', 'LU', '352', '欧洲', '0.35000');
INSERT INTO `msg_international_data` VALUES ('Macedonia', '马其顿', 'MKD', '389', '欧洲', '0.54000');
INSERT INTO `msg_international_data` VALUES ('Malta', '马耳他', 'MT', '356', '欧洲', '0.38600');
INSERT INTO `msg_international_data` VALUES ('Moldova', '摩尔多瓦', 'MDA', '373', '欧洲', '1.53600');
INSERT INTO `msg_international_data` VALUES ('Monaco', '摩纳哥', 'MC', '377', '欧洲', '0.54600');
INSERT INTO `msg_international_data` VALUES ('Montenegro', '黑山共和国', 'MNE', '382', '欧洲', '0.35000');
INSERT INTO `msg_international_data` VALUES ('Montserrat', '蒙特塞拉特岛', 'MS', '1664', '欧洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Netherlands', '荷兰', 'NL', '31', '欧洲', '2.14000');
INSERT INTO `msg_international_data` VALUES ('Norway', '挪威', 'NO', '47', '欧洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Poland', '波兰', 'PL', '48', '欧洲', '0.89800');
INSERT INTO `msg_international_data` VALUES ('Portugal', '葡萄牙', 'PT', '351', '欧洲', '1.86000');
INSERT INTO `msg_international_data` VALUES ('Reunion', '留尼汪', 'REU', '262', '欧洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Romania', '罗马尼亚', 'RO', '40', '欧洲', '2.18800');
INSERT INTO `msg_international_data` VALUES ('Russia', '俄罗斯', 'RU', '7', '欧洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('San Marino', '圣马力诺', 'SM', '378', '欧洲', '0.18200');
INSERT INTO `msg_international_data` VALUES ('ST PIERRE AND MIQUELON', '圣皮埃尔和密克隆', 'SAM', '33', '欧洲', '1.35800');
INSERT INTO `msg_international_data` VALUES ('Serbia', '塞尔维亚共和国', 'SRB', '381', '欧洲', '0.87200');
INSERT INTO `msg_international_data` VALUES ('Slovakia', '斯洛伐克', 'SK', '421', '欧洲', '2.18800');
INSERT INTO `msg_international_data` VALUES ('Slovenia', '斯洛文尼亚', 'SI', '386', '欧洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Spain', '西班牙', 'ES', '34', '欧洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Sweden', '瑞典', 'SE', '46', '欧洲', '1.75000');
INSERT INTO `msg_international_data` VALUES ('Switzerland', '瑞士', 'CH', '41', '欧洲', '3.28200');
INSERT INTO `msg_international_data` VALUES ('Turkey', '土耳其', 'TR', '90', '欧洲', '1.68600');
INSERT INTO `msg_international_data` VALUES ('Ukraine', '乌克兰', 'UA', '380', '欧洲', '1.20600');
INSERT INTO `msg_international_data` VALUES ('United Kingdom', '英国', 'UK', '44', '欧洲', '0.96800');
INSERT INTO `msg_international_data` VALUES ('Czech Rep', '捷克', 'CR', '420', '欧洲', '1.79600');
INSERT INTO `msg_international_data` VALUES ('American Samoa', '美属萨摩亚群岛', 'ASA', '684', '美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Anguilla', '安圭拉岛', 'AI', '1264', '美洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Barbados', '巴巴多斯', 'BB', '1246', '美洲', '0.63600');
INSERT INTO `msg_international_data` VALUES ('Belize', '伯利兹', 'BZ', '501', '美洲', '0.33000');
INSERT INTO `msg_international_data` VALUES ('Brazil', '巴西', 'BR', '55', '美洲', '1.35800');
INSERT INTO `msg_international_data` VALUES ('British Virgin Islands', '英属维尔京群岛', 'BVI', '1284', '美洲', '0.58000');
INSERT INTO `msg_international_data` VALUES ('Canada', '加拿大', 'CA', '1', '美洲', '0.28600');
INSERT INTO `msg_international_data` VALUES ('Cayman Islands', '开曼群岛', 'CYM', '1345', '美洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Chile', '智利', 'CL', '56', '美洲', '1.60600');
INSERT INTO `msg_international_data` VALUES ('Costa Rica', '哥斯达黎加', 'CR', '506', '美洲', '0.85800');
INSERT INTO `msg_international_data` VALUES ('Cuba', '古巴', 'CU', '53', '美洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Ecuador', '厄瓜多尔', 'EC', '593', '美洲', '0.83200');
INSERT INTO `msg_international_data` VALUES ('El Salvador', '萨尔瓦多', 'SLV', '503', '美洲', '0.80800');
INSERT INTO `msg_international_data` VALUES ('French Guiana', '法属圭亚那', 'GF', '594', '美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Greenland', '格陵兰岛', 'GLA', '299', '美洲', '0.22200');
INSERT INTO `msg_international_data` VALUES ('Grenada', '格林纳达', 'GD', '1473', '美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Guadeloupe', '瓜德罗普岛', 'GDLP', '590', '美洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Guatemala', '危地马拉', 'GT', '502', '美洲', '0.85800');
INSERT INTO `msg_international_data` VALUES ('Guyana', '圭亚那', 'GY', '592', '美洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Haiti', '海地', 'HT', '509', '美洲', '0.81200');
INSERT INTO `msg_international_data` VALUES ('Honduras', '洪都拉斯', 'HN', '504', '美洲', '1.40800');
INSERT INTO `msg_international_data` VALUES ('Jamaica', '牙买加', 'JM', '1876', '美洲', '3.11000');
INSERT INTO `msg_international_data` VALUES ('Panama', '巴拿马', 'PA', '507', '美洲', '0.68000');
INSERT INTO `msg_international_data` VALUES ('Paraguay', '巴拉圭', 'PY', '595', '美洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Peru', '秘鲁', 'PE', '51', '美洲', '0.98600');
INSERT INTO `msg_international_data` VALUES ('Puerto Rico', '波多黎各', 'PR', '1787', '美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Saint Kitts and Nevis', '圣马丁岛', 'KNA', '1809', '美洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Saint Lucia', '圣露西亚', 'LCA', '1758', '美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Trinidad & Tobago', '特立尼达和多巴哥', 'TTO', '1868', '美洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Turks and Caicos Islands', '特克斯和凯科斯群岛', 'TC', '1649', '美洲', '0.78000');
INSERT INTO `msg_international_data` VALUES ('United States of America', '美国', 'US', '1', '美洲', '0.43800');
INSERT INTO `msg_international_data` VALUES ('Uruguay', '乌拉圭', 'UY', '598', '美洲', '0.68000');
INSERT INTO `msg_international_data` VALUES ('Venezuela', '委内瑞拉', 'VE', '58', '美洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Northern Mariana Islands', '马里亚那群岛', 'CNY', '1', '美洲', '0.28600');
INSERT INTO `msg_international_data` VALUES ('Angola', '安哥拉', 'AO', '244', '非洲', '1.05000');
INSERT INTO `msg_international_data` VALUES ('Benin', '贝宁', 'BJ', '229', '非洲', '0.74600');
INSERT INTO `msg_international_data` VALUES ('Botswana', '博茨瓦纳', 'BW', '267', '非洲', '0.63600');
INSERT INTO `msg_international_data` VALUES ('Burkina Faso', '布基纳法索', 'BFA', '226', '非洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Burundi', '布隆迪', 'BI', '257', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Cameroon', '喀麦隆', 'CM', '237', '非洲', '0.83200');
INSERT INTO `msg_international_data` VALUES ('Cape Verde', '佛得角', 'CPV', '238', '非洲', '1.53600');
INSERT INTO `msg_international_data` VALUES ('Central African Republic', '中非共和国', 'CF', '236', '非洲', '1.97200');
INSERT INTO `msg_international_data` VALUES ('Chad', '乍得', 'TD', '235', '非洲', '0.47600');
INSERT INTO `msg_international_data` VALUES ('Comoros', '科摩罗', 'COM', '269', '非洲', '0.50200');
INSERT INTO `msg_international_data` VALUES ('Congo', '刚果', 'CG', '242', '非洲', '0.63600');
INSERT INTO `msg_international_data` VALUES ('Congo Democratic Repu', '刚果民主共和国', 'COD', '243', '非洲', '0.65000');
INSERT INTO `msg_international_data` VALUES ('Cote d\'Ivoire', '科特迪瓦共和国 ', 'CIV', '225', '非洲', '2.18800');
INSERT INTO `msg_international_data` VALUES ('Djibouti', '吉布提', 'DJ', '253', '非洲', '0.76800');
INSERT INTO `msg_international_data` VALUES ('Erttrea', '厄立特里亚', 'ER', '291', '非洲', '0.70800');
INSERT INTO `msg_international_data` VALUES ('Egypt', '埃及', 'EG', '20', '非洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Equatorial Guinea', '赤道几内亚', 'GEQ', '240', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Ethiopia', '埃塞俄比亚', 'ET', '251', '非洲', '0.33000');
INSERT INTO `msg_international_data` VALUES ('Gabonese Republic', '加蓬', 'GAB', '241', '非洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Gambia', '冈比亚', 'GM', '220', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Ghana', '加纳', 'GH', '233', '非洲', '0.46000');
INSERT INTO `msg_international_data` VALUES ('Guinea', '几内亚', 'GN', '224', '非洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('GUINEA (BISSAU)', '几内亚比绍', 'GW', '245', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Kenya', '肯尼亚', 'KE', '254', '非洲', '0.37600');
INSERT INTO `msg_international_data` VALUES ('Lesotho', '莱索托', 'LS', '266', '非洲', '1.75000');
INSERT INTO `msg_international_data` VALUES ('Liberia', '利比里亚', 'LR', '231', '非洲', '0.73600');
INSERT INTO `msg_international_data` VALUES ('Libya', '利比亚', 'LY', '218', '非洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Madagascar', '马达加斯加', 'MG', '261', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Malawi', '马拉维', 'MW', '265', '非洲', '0.66000');
INSERT INTO `msg_international_data` VALUES ('Mali', '马里', 'ML', '223', '非洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Martinique', '马提尼克', '0', '596', '非洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Mauritania', '毛里塔尼亚', 'MRT', '222', '非洲', '0.75000');
INSERT INTO `msg_international_data` VALUES ('Mauritius', '毛里求斯', 'MU', '230', '非洲', '0.88000');
INSERT INTO `msg_international_data` VALUES ('Morocco', '摩洛哥', 'MA', '212', '非洲', '1.31200');
INSERT INTO `msg_international_data` VALUES ('Mozambique', '莫桑比克', 'MZ', '258', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Namibia', '纳米比亚', 'NA', '264', '非洲', '1.41000');
INSERT INTO `msg_international_data` VALUES ('Niger', '尼日尔', 'NE', '227', '非洲', '1.45600');
INSERT INTO `msg_international_data` VALUES ('Nigeria', '尼日利亚', 'NG', '234', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Rwanda', '卢旺达', 'RWA', '250', '非洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Sao Tome and Principe', '圣多美和普林西比民主共和国', 'ST', '239', '非洲', '2.18800');
INSERT INTO `msg_international_data` VALUES ('Senegal', '塞内加尔', 'SN', '221', '非洲', '2.62200');
INSERT INTO `msg_international_data` VALUES ('Seychelles', '塞舌尔群岛', 'SC', '248', '非洲', '0.50200');
INSERT INTO `msg_international_data` VALUES ('Sierra Leone', '塞拉利昂', 'SL', '232', '非洲', '0.61200');
INSERT INTO `msg_international_data` VALUES ('Swaziland', '斯威士兰', 'SZ', '268', '非洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Somalia', '索马里', 'RWA', '252', '非洲', '2.18800');
INSERT INTO `msg_international_data` VALUES ('South Africa', '南非', 'ZA', '27', '非洲', '0.94000');
INSERT INTO `msg_international_data` VALUES ('South Sudan', '南苏丹', 'SSD', '211', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Sudan', '苏丹', 'SD', '249', '非洲', '0.71600');
INSERT INTO `msg_international_data` VALUES ('Swaziland', '史瓦济兰', 'SZ', '268', '非洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Tanzania', '坦桑尼亚', 'TZ', '255', '非洲', '0.54800');
INSERT INTO `msg_international_data` VALUES ('Tunisia', '突尼斯', 'TN', '216', '非洲', '0.57200');
INSERT INTO `msg_international_data` VALUES ('Uganda', '乌干达', 'UG', '256', '非洲', '0.52600');
INSERT INTO `msg_international_data` VALUES ('Zambia', '赞比亚', 'ZM', '260', '非洲', '0.59200');
INSERT INTO `msg_international_data` VALUES ('Zimbabwe', '津巴布韦', 'ZW', '263', '非洲', '0.50200');
INSERT INTO `msg_international_data` VALUES ('Democratic Rep of The Congo', '扎伊尔', 'COD ', '243', '非洲', '0.68000');

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
  `api_name` varchar(32) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_sign` varchar(64) NOT NULL,
  `bill` int(11) NOT NULL,
  `price` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `to_mobile` varchar(16) NOT NULL,
  `send_type` int(11) NOT NULL DEFAULT '0' COMMENT '0 卓望发送  1 submail发送',
  `status` int(11) NOT NULL,
  `req_time` datetime NOT NULL,
  `send_time` datetime DEFAULT NULL,
  `res_time` datetime DEFAULT NULL,
  `res_code` varchar(32) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `send_id` (`send_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1542 DEFAULT CHARSET=utf8;

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
