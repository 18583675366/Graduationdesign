/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : graduationdesign

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-05-10 00:22:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ad_ID` int(11) NOT NULL COMMENT '管理员id',
  `ad_name` varchar(20) DEFAULT NULL COMMENT '管理员名字',
  `ad_contact` varchar(20) DEFAULT NULL COMMENT '管理员联系方式',
  `ad_password` varchar(20) DEFAULT NULL COMMENT '管理员密码',
  `ad_account` varchar(20) DEFAULT NULL COMMENT '管理员账户',
  `ad_jurisdictionid` int(11) DEFAULT NULL COMMENT '管理员权限',
  PRIMARY KEY (`ad_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for classinfo
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo` (
  `ID` int(11) NOT NULL COMMENT '课程id',
  `da_ID` int(11) DEFAULT NULL COMMENT '对应资料id',
  `v_ID` int(11) DEFAULT NULL COMMENT '对应视屏id',
  `ad_ID` int(11) DEFAULT NULL COMMENT '对应管理员id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `c_ID` int(11) DEFAULT NULL,
  `cr_time` date DEFAULT NULL COMMENT '课程开始时间',
  `cr_startcontent` varchar(20) DEFAULT NULL COMMENT '课程开始内容',
  `cr_background` varchar(20) DEFAULT NULL COMMENT '课程背景',
  `cr_grade` int(11) DEFAULT NULL COMMENT '课程等级',
  `cr_data` int(11) DEFAULT NULL COMMENT '课程是否有资料',
  `cr_crowd` int(11) DEFAULT NULL COMMENT '课程适合人群',
  `cr_name` varchar(20) DEFAULT NULL COMMENT '课程名',
  `cr_classification` int(11) DEFAULT NULL COMMENT '课程属于的类别',
  `cr_type` int(11) DEFAULT NULL COMMENT '课程类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classinfo
-- ----------------------------

-- ----------------------------
-- Table structure for courseclass
-- ----------------------------
DROP TABLE IF EXISTS `courseclass`;
CREATE TABLE `courseclass` (
  `c_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程分类',
  `c_name` varchar(20) DEFAULT NULL COMMENT '课程名字',
  `c_level` int(11) DEFAULT NULL COMMENT '课程等级',
  `c_superior` int(11) DEFAULT NULL COMMENT '课程上一类',
  `c_decs` varchar(20) DEFAULT NULL COMMENT '课程分类描述',
  `c_label` int(11) DEFAULT NULL COMMENT '区分是难度，还是方向还是普通分类',
  PRIMARY KEY (`c_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseclass
-- ----------------------------
INSERT INTO `courseclass` VALUES ('18', '前端开发', '1', '0', '前端开发', null);
INSERT INTO `courseclass` VALUES ('19', 'html', '0', '18', 'html', null);
INSERT INTO `courseclass` VALUES ('20', '移动开发', '1', '0', '移动开发', null);
INSERT INTO `courseclass` VALUES ('21', 'android', '0', '20', 'android', null);
INSERT INTO `courseclass` VALUES ('22', 'bootstarp', '0', '18', 'bootstarp', null);

-- ----------------------------
-- Table structure for datas
-- ----------------------------
DROP TABLE IF EXISTS `datas`;
CREATE TABLE `datas` (
  `da_ID` int(11) NOT NULL COMMENT '资料id',
  `da_name` varchar(20) DEFAULT NULL COMMENT '资料名字',
  `v_ID` int(11) DEFAULT NULL COMMENT '资料对应视屏id',
  `da_path` varchar(20) DEFAULT NULL COMMENT '资料路径',
  `retain` varchar(20) DEFAULT NULL COMMENT '保留字段',
  `ad_ID` int(11) DEFAULT NULL COMMENT '上传者',
  PRIMARY KEY (`da_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datas
-- ----------------------------

-- ----------------------------
-- Table structure for gu
-- ----------------------------
DROP TABLE IF EXISTS `gu`;
CREATE TABLE `gu` (
  `gu_ID` int(11) NOT NULL COMMENT '留言id',
  `u_id` int(11) DEFAULT NULL COMMENT '那个用户留言id',
  `gu_content` varchar(20) DEFAULT NULL COMMENT '留言内容',
  `recept_ID` int(11) DEFAULT NULL COMMENT '回复留言者id',
  `gu_time` date DEFAULT NULL COMMENT '留言时间',
  `gu_title` varchar(20) DEFAULT NULL COMMENT '留言标题',
  `retain` varchar(20) DEFAULT NULL COMMENT '回复留言',
  PRIMARY KEY (`gu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gu
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `m_id` int(200) NOT NULL DEFAULT '0',
  `u_id` int(200) DEFAULT NULL,
  `m_resigertime` datetime DEFAULT NULL,
  `m_endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `me_ID` int(11) NOT NULL COMMENT '消息id',
  `u_id` int(11) DEFAULT NULL COMMENT '消息对应用户',
  `ad_ID` int(11) DEFAULT NULL COMMENT '消息发送者，一般是管理员',
  `me_content` varchar(20) DEFAULT NULL COMMENT '消息内容',
  `me_time` date DEFAULT NULL COMMENT '消息时间',
  `me_isread` int(11) DEFAULT NULL COMMENT '消息是否被读',
  `retain` varchar(20) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`me_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `op_ID` int(11) NOT NULL COMMENT '操作记录id',
  `u_id` int(11) DEFAULT NULL COMMENT '操作对应用户',
  `ao_ID` int(11) DEFAULT NULL COMMENT '操作人id',
  `ao_time` date DEFAULT NULL COMMENT '操作时间',
  `ao_operation` varchar(20) DEFAULT NULL COMMENT '操作动作',
  `ao_remarks` varchar(20) DEFAULT NULL COMMENT '操作备注',
  `retain` varchar(20) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`op_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `or_id` int(200) NOT NULL AUTO_INCREMENT,
  `u_id` int(20) DEFAULT NULL,
  `or_time` datetime DEFAULT NULL,
  `or_content` varchar(200) DEFAULT NULL,
  `or_entime` datetime DEFAULT NULL,
  `or_isend` int(20) DEFAULT NULL,
  `or_price` int(200) DEFAULT NULL,
  PRIMARY KEY (`or_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('6', '4', '2016-05-09 15:52:41', '购买vip等级1 时间为6个月', '2016-05-09 15:52:41', '1', '180');

-- ----------------------------
-- Table structure for seerecord
-- ----------------------------
DROP TABLE IF EXISTS `seerecord`;
CREATE TABLE `seerecord` (
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `v_ID` int(11) DEFAULT NULL COMMENT '视频id',
  `re_ID` int(11) DEFAULT NULL COMMENT '观看id',
  `re_time` date DEFAULT NULL COMMENT '观看时间',
  `re_progress` int(11) DEFAULT NULL COMMENT '观看进度',
  `retain` varchar(20) DEFAULT NULL COMMENT '保留字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seerecord
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `u_account` varchar(20) DEFAULT NULL COMMENT '用户账户',
  `u_password` varchar(20) DEFAULT NULL COMMENT '用户密码',
  `u_registertime` datetime DEFAULT NULL COMMENT '用户注册时间',
  `u_logintime` datetime DEFAULT NULL COMMENT '用户登录时间',
  `u_grade` int(11) DEFAULT NULL COMMENT '用户等级',
  `u_balance` varchar(20) DEFAULT NULL COMMENT '用户余额',
  `u_duetime` datetime DEFAULT NULL COMMENT '用户到期时间',
  `u_enable` int(11) DEFAULT NULL COMMENT '是否启用用户',
  `retain` varchar(20) DEFAULT NULL COMMENT '保留字段',
  `u_token` varchar(20) DEFAULT NULL COMMENT 'token',
  `u_iphone` varchar(20) DEFAULT NULL COMMENT '用户电话',
  `u_uuid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', null, '773421284@qq.com', '1212', '2016-05-05 13:42:51', '2016-05-09 15:50:11', '0', '0', '2016-05-05 15:42:51', '1', null, null, null, 'e43eb007-7c51-4b10-ab83-e834d5714d4e');

-- ----------------------------
-- Table structure for userright
-- ----------------------------
DROP TABLE IF EXISTS `userright`;
CREATE TABLE `userright` (
  `ur_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `ad_ID` int(11) DEFAULT NULL COMMENT '管理员id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `ur_name` varchar(20) DEFAULT NULL COMMENT '权限名',
  `ur_desc` varchar(20) DEFAULT NULL COMMENT '权限描述',
  `ur_info` varchar(20) DEFAULT NULL COMMENT '权限信息',
  `ur_enable` int(11) DEFAULT NULL COMMENT '是否启用权限',
  `retain` int(20) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ur_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userright
-- ----------------------------
INSERT INTO `userright` VALUES ('7', null, '0', '免费课程', '免费课程', '免费课程', '1', '0');
INSERT INTO `userright` VALUES ('8', null, '0', '收费课程', '收费课程', '收费课程', '1', '1');
INSERT INTO `userright` VALUES ('9', null, '0', '技术问答', '技术问答', '技术问答', '1', '1');
INSERT INTO `userright` VALUES ('10', null, '0', 'VIP群交流', 'VIP群交流', 'VIP群交流', '1', '1');
INSERT INTO `userright` VALUES ('11', null, '0', '资料下载', '资料下载', '资料下载', '1', '1');
INSERT INTO `userright` VALUES ('12', null, '0', '高清视频下载', '高清视频下载', '高清视频下载', '1', '2');
INSERT INTO `userright` VALUES ('13', null, '0', '优先提交课程需求', '优先提交课程需求', '优先提交课程需求', '1', '2');
INSERT INTO `userright` VALUES ('14', null, '4', '免费课程', '免费课程', '免费课程', '1', '0');

-- ----------------------------
-- Table structure for vedio
-- ----------------------------
DROP TABLE IF EXISTS `vedio`;
CREATE TABLE `vedio` (
  `v_ID` int(11) NOT NULL COMMENT '视频id',
  `v_timelong` datetime DEFAULT NULL COMMENT '视屏时间长度',
  `v_format` int(11) DEFAULT NULL COMMENT '视频格式',
  `v_uploadtime` datetime DEFAULT NULL COMMENT '视频上传时间',
  `v_uploaduser` int(11) DEFAULT NULL COMMENT '视频上传者',
  `v_route` varchar(20) DEFAULT NULL COMMENT '视频路径',
  `retain` varchar(20) DEFAULT NULL COMMENT '保留字段',
  `v_label` varchar(20) DEFAULT NULL COMMENT '视屏对应标签',
  PRIMARY KEY (`v_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vedio
-- ----------------------------

-- ----------------------------
-- Table structure for vlabel
-- ----------------------------
DROP TABLE IF EXISTS `vlabel`;
CREATE TABLE `vlabel` (
  `vl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `v_ID` int(11) DEFAULT NULL COMMENT '标签对应视屏id',
  `vl_name` varchar(200) DEFAULT NULL COMMENT '标签名字',
  `vl_keyword` varchar(200) DEFAULT NULL COMMENT '标签关键字',
  `vl_describe` varchar(200) DEFAULT NULL COMMENT '标签描述',
  `vl_remarks` int(20) DEFAULT NULL COMMENT '标签属于哪个分类的id',
  `vl_isend` varchar(11) DEFAULT NULL COMMENT '是否完成',
  `vl_img` varchar(200) DEFAULT NULL COMMENT '课程标签图片地址',
  PRIMARY KEY (`vl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vlabel
-- ----------------------------
INSERT INTO `vlabel` VALUES ('1', null, 'Android-Service系列之No', 'Android-Service系列之No', '掌握Notification和Messe', '21', '1', '1461899020539.jpg');
INSERT INTO `vlabel` VALUES ('2', '2', 'html设计', 'html设计', 'html设计', '19', '1', '1461899039804.jpg');
INSERT INTO `vlabel` VALUES ('5', null, 'css', 'css', 'bootstarp', '19', '1', '1461898818680.jpg');
INSERT INTO `vlabel` VALUES ('6', null, 'ndk开发', 'ndk开发', 'ndk开发', '21', '0', '1461898943947.jpg');
INSERT INTO `vlabel` VALUES ('7', null, '请我12', '212', '12', '22', '1', '1462808099424.jpg');
