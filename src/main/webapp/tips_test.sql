/*
 Navicat Premium Data Transfer

 Source Server         : tips
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : tips_test

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 27/12/2019 11:25:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tab_device
-- ----------------------------
DROP TABLE IF EXISTS `tab_device`;
CREATE TABLE `tab_device` (
  `td_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `project` varchar(20) DEFAULT NULL COMMENT '项目',
  `name` varchar(20) DEFAULT NULL COMMENT '机型名称',
  `time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`td_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机型表';

-- ----------------------------
-- Table structure for tab_language
-- ----------------------------
DROP TABLE IF EXISTS `tab_language`;
CREATE TABLE `tab_language` (
  `lid` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `title` varchar(8) DEFAULT NULL COMMENT '标题',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `addtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `language` varchar(10) DEFAULT NULL COMMENT '语言',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='语言描述';

-- ----------------------------
-- Table structure for tab_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_log`;
CREATE TABLE `tab_log` (
  `tl_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `type` varchar(10) DEFAULT NULL COMMENT '操作类型',
  `user` varchar(40) DEFAULT NULL COMMENT '操作人itcode',
  `ts_id` int(8) DEFAULT NULL COMMENT '操作的tips',
  `time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`tl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Table structure for tab_ota
-- ----------------------------
DROP TABLE IF EXISTS `tab_ota`;
CREATE TABLE `tab_ota` (
  `to_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(20) DEFAULT NULL COMMENT '版本名称',
  `update_time` varchar(20) DEFAULT NULL COMMENT '发布时间',
  `time` varchar(20) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OTA版本';

-- ----------------------------
-- Table structure for tab_request
-- ----------------------------
DROP TABLE IF EXISTS `tab_request`;
CREATE TABLE `tab_request` (
  `tr_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `content` varchar(5000) DEFAULT NULL COMMENT '请求接口',
  `result` varchar(100) DEFAULT NULL COMMENT '请求返回结果',
  `start_time` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `end_time` varchar(20) DEFAULT NULL COMMENT '返回时间',
  `time` varchar(20) DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请求日志';

-- ----------------------------
-- Table structure for tab_statistics
-- ----------------------------
DROP TABLE IF EXISTS `tab_statistics`;
CREATE TABLE `tab_statistics` (
  `tst_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `ts_id` int(8) DEFAULT NULL COMMENT '二级分类id',
  `name` varchar(20) DEFAULT NULL COMMENT '接口名称',
  `num` int(10) DEFAULT NULL COMMENT '调用次数',
  `type` varchar(5) DEFAULT NULL COMMENT '调用类型',
  PRIMARY KEY (`tst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tips 接口统计';

-- ----------------------------
-- Table structure for tab_tips_first
-- ----------------------------
DROP TABLE IF EXISTS `tab_tips_first`;
CREATE TABLE `tab_tips_first` (
  `tfid` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `addtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`tfid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tips 一级分类';

-- ----------------------------
-- Table structure for tab_tips_image
-- ----------------------------
DROP TABLE IF EXISTS `tab_tips_image`;
CREATE TABLE `tab_tips_image` (
  `ti_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `addtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `name` varchar(20) DEFAULT NULL COMMENT '模板名称',
  `desc_imgs` varchar(1000) DEFAULT NULL COMMENT '横图',
  `img_verurl` varchar(100) DEFAULT NULL COMMENT '竖图',
  `img_url` varchar(100) DEFAULT NULL COMMENT '描述图',
  PRIMARY KEY (`ti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tips 图片表';

-- ----------------------------
-- Table structure for tab_tips_js
-- ----------------------------
DROP TABLE IF EXISTS `tab_tips_js`;
CREATE TABLE `tab_tips_js` (
  `tj_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `ts_id` int(8) DEFAULT NULL COMMENT '二级分类id',
  `addtime` varchar(20) DEFAULT NULL COMMENT '生成时间',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `uri` varchar(100) DEFAULT NULL COMMENT 'js地址',
  PRIMARY KEY (`tj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tips 生成的js表';

-- ----------------------------
-- Table structure for tab_tips_mode
-- ----------------------------
DROP TABLE IF EXISTS `tab_tips_mode`;
CREATE TABLE `tab_tips_mode` (
  `tm_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `addtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `updatatime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `uri` varchar(100) DEFAULT NULL COMMENT '模板地址',
  PRIMARY KEY (`tm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tips 显示模板';

-- ----------------------------
-- Table structure for tab_tips_secend
-- ----------------------------
DROP TABLE IF EXISTS `tab_tips_secend`;
CREATE TABLE `tab_tips_secend` (
  `ts_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `tf_id` int(8) DEFAULT NULL COMMENT '所属一级分类',
  `addtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `order` int(3) DEFAULT NULL COMMENT '在一级分类里的顺序',
  `action` varchar(10) DEFAULT NULL COMMENT '用途动作',
  `platform` varchar(20) DEFAULT NULL COMMENT '平台',
  `region` varchar(10) DEFAULT NULL COMMENT '地区',
  `country` varchar(20) DEFAULT NULL COMMENT '设备发行国家',
  `project` varchar(20) DEFAULT NULL COMMENT '终端项目名称',
  `image_id` int(8) DEFAULT NULL COMMENT '绑定的image表id',
  `tm_id` int(8) DEFAULT NULL COMMENT '绑定的模板id',
  `device_id` varchar(400) DEFAULT NULL COMMENT '绑定的设备id',
  `status` varchar(5) DEFAULT NULL COMMENT '上下线状态',
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tips 二级分类(tips详细)';

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `tu_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(20) DEFAULT NULL COMMENT '名字',
  `itcode` varchar(40) DEFAULT NULL COMMENT 'itcode',
  `password` varchar(16) DEFAULT NULL COMMENT '密码',
  `power` varchar(20) DEFAULT NULL COMMENT '项目权限',
  `addtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`tu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

SET FOREIGN_KEY_CHECKS = 1;
