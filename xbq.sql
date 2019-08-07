/*
Navicat MySQL Data Transfer

Source Server         : xianroot
Source Server Version : 50718
Source Host           : cdb-9mp92dif.gz.tencentcdb.com:10001
Source Database       : xbq

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-08-07 09:56:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `building_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `building_name` varchar(20) NOT NULL COMMENT '楼宇名称',
  `building_remark` varchar(150) NOT NULL COMMENT '备注',
  PRIMARY KEY (`building_id`),
  UNIQUE KEY `UNIQUE_NAME` (`building_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '1栋', '白云校区女生宿舍');
INSERT INTO `building` VALUES ('2', '2栋', '白云校区女生宿舍');
INSERT INTO `building` VALUES ('3', '3栋', '白云校区女生宿舍');
INSERT INTO `building` VALUES ('4', '10栋', '白云校区男生宿舍');
INSERT INTO `building` VALUES ('5', '16栋', '白云校区男生宿舍');
INSERT INTO `building` VALUES ('6', '11栋', '白云校区男生宿舍');
INSERT INTO `building` VALUES ('7', '18栋', '白云校区女生宿舍');
INSERT INTO `building` VALUES ('8', '4栋', '白云校区女生宿舍');
INSERT INTO `building` VALUES ('9', '7栋', '白云校区男生宿舍');
INSERT INTO `building` VALUES ('10', '8栋', '白云校区男生宿舍');
INSERT INTO `building` VALUES ('11', '9栋', '白云校区男生宿舍');

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS `dorm`;
CREATE TABLE `dorm` (
  `dorm_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `dorm_name` varchar(20) NOT NULL COMMENT '宿舍名称',
  `dorm_people_num` int(10) NOT NULL COMMENT '宿舍现居住人数',
  `dorm_tel` varchar(30) NOT NULL COMMENT '宿舍联系电话',
  `dorm_type` varchar(10) NOT NULL COMMENT '宿舍类型',
  `dorm_building` varchar(10) DEFAULT NULL COMMENT '宿舍所属楼宇',
  PRIMARY KEY (`dorm_id`),
  UNIQUE KEY `UNIQUE_DORM_NAME` (`dorm_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES ('18', '533', '2', '7856464', '四人间', '10栋');
INSERT INTO `dorm` VALUES ('19', '534', '4', '5442888', '四人间', '10栋');
INSERT INTO `dorm` VALUES ('20', '523', '1', '7555555', '四人间', '10栋');
INSERT INTO `dorm` VALUES ('21', '536', '2', '5442666', '四人间', '10栋');
INSERT INTO `dorm` VALUES ('22', '420', '1', '9087767', '四人间', '16栋');
INSERT INTO `dorm` VALUES ('23', '421', '0', '5442000', '四人间', '16栋');
INSERT INTO `dorm` VALUES ('24', '101', '1', '7856464', '四人间', '18栋');
INSERT INTO `dorm` VALUES ('25', '102', '0', '5442888', '四人间', '18栋');
INSERT INTO `dorm` VALUES ('30', '103', '0', '1234567', '六人间', '18栋');

-- ----------------------------
-- Table structure for dorm_building
-- ----------------------------
DROP TABLE IF EXISTS `dorm_building`;
CREATE TABLE `dorm_building` (
  `building_id` bigint(20) DEFAULT NULL COMMENT '楼宇id',
  `dorm_id` bigint(20) DEFAULT NULL COMMENT '宿舍id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm_building
-- ----------------------------
INSERT INTO `dorm_building` VALUES ('4', '18');
INSERT INTO `dorm_building` VALUES ('5', '22');
INSERT INTO `dorm_building` VALUES ('5', '23');
INSERT INTO `dorm_building` VALUES ('4', '21');
INSERT INTO `dorm_building` VALUES ('4', '20');
INSERT INTO `dorm_building` VALUES ('4', '19');
INSERT INTO `dorm_building` VALUES ('7', '24');
INSERT INTO `dorm_building` VALUES ('7', '25');
INSERT INTO `dorm_building` VALUES ('7', '30');

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `IPaddress` varchar(50) DEFAULT NULL COMMENT 'IP所属地',
  `loginDate` varchar(30) DEFAULT NULL COMMENT '登录时间',
  `loginIP` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `userName` varchar(20) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=953 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginlog
-- ----------------------------
INSERT INTO `loginlog` VALUES ('27', '局域网', '2016-04-01 23:05:45', '10.104.221.204', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('28', '局域网', '2016-04-01 23:08:28', '10.104.221.204', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('29', '局域网', '2016-04-02 10:43:08', '10.104.215.21', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('30', '局域网', '2016-04-02 10:51:53', '10.104.215.21', '1', '徐邦启');
INSERT INTO `loginlog` VALUES ('32', '局域网', '2016-04-02 10:55:40', '10.104.215.21', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('33', '局域网', '2016-04-02 11:33:32', '10.104.215.21', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('34', '局域网', '2016-04-02 12:08:12', '10.104.215.21', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('35', '局域网', '2016-04-02 21:35:50', '10.104.228.153', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('36', '局域网', '2016-04-03 10:17:26', '10.104.223.199', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('37', '局域网', '2016-04-03 10:29:41', '10.104.223.199', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('835', 'IANA', '2016-05-20 23:36:23', '127.0.0.1', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('839', 'IANA', '2016-05-21 15:26:32', '127.0.0.1', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('840', 'IANA', '2016-05-21 15:29:41', '127.0.0.1', '9', '刘德华');
INSERT INTO `loginlog` VALUES ('841', 'IANA', '2016-05-21 15:31:15', '127.0.0.1', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('842', 'IANA', '2016-05-21 15:31:52', '127.0.0.1', '45', '李四');
INSERT INTO `loginlog` VALUES ('843', 'IANA', '2016-05-21 15:32:28', '127.0.0.1', '46', '王五');
INSERT INTO `loginlog` VALUES ('844', 'IANA', '2016-05-21 15:33:59', '127.0.0.1', '45', '李四');
INSERT INTO `loginlog` VALUES ('845', 'IANA', '2016-05-21 15:36:00', '127.0.0.1', '9', '刘德华');
INSERT INTO `loginlog` VALUES ('846', 'IANA', '2016-05-21 15:37:34', '127.0.0.1', '45', '李四');
INSERT INTO `loginlog` VALUES ('847', 'IANA', '2016-05-21 15:38:26', '127.0.0.1', '9', '刘德华');
INSERT INTO `loginlog` VALUES ('848', 'IANA', '2017-08-05 11:17:09', '127.0.0.1', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('849', '', '2017-08-05 11:26:11', '0:0:0:0:0:0:0:1', '1', '系统管理员');
INSERT INTO `loginlog` VALUES ('850', '', '2019-07-30 09:19:55', '0:0:0:0:0:0:0:1', '9', '刘德华');
INSERT INTO `loginlog` VALUES ('851', '', '2019-07-30 09:21:40', '0:0:0:0:0:0:0:1', '46', '王五');
INSERT INTO `loginlog` VALUES ('852', '', '2019-07-30 09:23:06', '0:0:0:0:0:0:0:1', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('853', '', '2019-07-30 09:26:20', '0:0:0:0:0:0:0:1', '36', '欧阳先锋');
INSERT INTO `loginlog` VALUES ('854', null, '2019-08-01 11:14:41', '127.0.0.1', '1', 'admin');
INSERT INTO `loginlog` VALUES ('855', null, '2019-08-02 12:03:38', '127.0.0.1', '1', 'admin');
INSERT INTO `loginlog` VALUES ('856', null, '2019-08-02 12:09:14', '115.238.194.214', '1', 'admin');
INSERT INTO `loginlog` VALUES ('857', null, '2019-08-02 12:20:36', '115.238.194.212', '1', 'admin');
INSERT INTO `loginlog` VALUES ('858', null, '2019-08-02 12:21:27', '115.238.194.212', '1', 'admin');
INSERT INTO `loginlog` VALUES ('859', null, '2019-08-02 12:24:51', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('860', null, '2019-08-02 12:25:49', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('861', null, '2019-08-02 12:25:56', '223.104.63.119', '1', 'admin');
INSERT INTO `loginlog` VALUES ('862', null, '2019-08-02 12:26:24', '223.104.63.119', '1', 'admin');
INSERT INTO `loginlog` VALUES ('863', null, '2019-08-02 12:26:26', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('864', null, '2019-08-02 12:27:04', '115.238.194.213', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('865', null, '2019-08-02 12:28:37', '117.136.32.83', '1', 'admin');
INSERT INTO `loginlog` VALUES ('866', null, '2019-08-02 12:28:53', '117.136.32.83', '1', 'admin');
INSERT INTO `loginlog` VALUES ('867', null, '2019-08-02 09:11:39', '163.179.125.122', '1', 'admin');
INSERT INTO `loginlog` VALUES ('868', null, '2019-08-02 09:28:22', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('869', null, '2019-08-02 09:29:59', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('870', null, '2019-08-02 09:43:54', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('871', null, '2019-08-02 10:18:28', '163.179.125.122', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('872', null, '2019-08-02 10:19:55', '163.179.125.122', '10', 'admin');
INSERT INTO `loginlog` VALUES ('873', null, '2019-08-02 10:57:34', '202.192.88.229', '1', 'admin');
INSERT INTO `loginlog` VALUES ('874', null, '2019-08-02 04:30:13', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('875', null, '2019-08-02 04:38:55', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('876', null, '2019-08-02 04:40:54', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('877', null, '2019-08-02 04:41:51', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('878', null, '2019-08-04 11:39:00', '115.238.194.213', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('879', null, '2019-08-04 11:40:53', '115.238.194.213', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('880', null, '2019-08-04 11:45:23', '115.238.194.214', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('881', null, '2019-08-04 12:34:57', '127.0.0.1', '1', 'admin');
INSERT INTO `loginlog` VALUES ('882', null, '2019-08-04 06:39:40', '115.238.194.214', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('883', null, '2019-08-04 06:42:42', '115.238.194.212', '1', 'admin');
INSERT INTO `loginlog` VALUES ('884', null, '2019-08-04 06:44:34', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('885', null, '2019-08-04 06:48:59', '115.238.194.214', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('886', null, '2019-08-04 07:55:58', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('887', null, '2019-08-04 07:57:04', '115.238.194.212', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('888', null, '2019-08-04 08:00:38', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('889', null, '2019-08-04 08:21:37', '115.238.194.214', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('890', null, '2019-08-04 08:22:15', '115.238.194.212', '40', '徐邦启');
INSERT INTO `loginlog` VALUES ('891', null, '2019-08-04 08:26:16', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('892', null, '2019-08-04 08:26:41', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('893', null, '2019-08-04 08:34:36', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('894', null, '2019-08-04 08:40:34', '115.238.194.212', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('895', null, '2019-08-04 08:41:17', '115.238.194.212', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('896', null, '2019-08-04 08:43:57', '127.0.0.1', '1', 'admin');
INSERT INTO `loginlog` VALUES ('897', null, '2019-08-04 09:05:01', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('898', null, '2019-08-04 09:06:43', '115.238.194.212', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('899', null, '2019-08-04 09:23:50', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('900', null, '2019-08-04 09:24:38', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('901', null, '2019-08-04 10:53:39', '163.179.125.125', '1', 'admin');
INSERT INTO `loginlog` VALUES ('902', null, '2019-08-05 09:45:03', '58.248.30.202', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('903', null, '2019-08-05 09:51:03', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('904', null, '2019-08-05 09:54:53', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('905', null, '2019-08-05 10:21:01', '58.248.30.202', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('906', null, '2019-08-05 10:21:10', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('907', null, '2019-08-05 10:21:17', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('908', null, '2019-08-05 10:24:50', '58.248.30.202', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('909', null, '2019-08-05 04:09:18', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('910', null, '2019-08-06 09:16:10', '58.248.30.202', '1', 'admin');
INSERT INTO `loginlog` VALUES ('911', null, '2019-08-06 09:32:09', '115.238.194.212', '1', 'admin');
INSERT INTO `loginlog` VALUES ('912', null, '2019-08-06 09:52:17', '115.238.194.212', '1', 'admin');
INSERT INTO `loginlog` VALUES ('913', null, '2019-08-06 09:52:22', '115.238.194.212', '1', 'admin');
INSERT INTO `loginlog` VALUES ('914', null, '2019-08-06 03:37:23', '115.238.194.212', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('915', null, '2019-08-06 03:42:41', '115.238.194.213', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('916', null, '2019-08-06 03:47:00', '115.238.194.212', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('917', null, '2019-08-06 04:06:08', '115.238.194.214', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('918', null, '2019-08-06 04:20:23', '115.238.194.214', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('919', null, '2019-08-06 09:07:12', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('920', null, '2019-08-06 09:12:54', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('921', null, '2019-08-06 09:14:41', '115.238.194.213', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('922', null, '2019-08-06 09:15:43', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('923', null, '2019-08-06 09:17:54', '115.238.194.214', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('924', null, '2019-08-06 09:18:07', '115.238.194.214', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('925', null, '2019-08-06 09:18:19', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('926', null, '2019-08-06 09:20:52', '115.238.194.213', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('927', null, '2019-08-06 09:27:44', '115.238.194.214', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('928', null, '2019-08-06 09:28:30', '115.238.194.212', '6', '那英');
INSERT INTO `loginlog` VALUES ('929', null, '2019-08-06 09:28:57', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('930', null, '2019-08-06 09:29:09', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('931', null, '2019-08-06 09:30:04', '115.238.194.212', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('932', null, '2019-08-06 09:30:55', '115.238.194.213', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('933', null, '2019-08-06 09:31:17', '115.238.194.212', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('934', null, '2019-08-06 09:31:28', '115.238.194.213', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('935', null, '2019-08-06 09:31:57', '115.238.194.212', '6', '那英');
INSERT INTO `loginlog` VALUES ('936', null, '2019-08-06 09:32:20', '115.238.194.212', '6', '那英');
INSERT INTO `loginlog` VALUES ('937', null, '2019-08-06 09:33:13', '115.238.194.212', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('938', null, '2019-08-06 09:40:20', '115.238.194.214', '8', '梁朝伟');
INSERT INTO `loginlog` VALUES ('939', null, '2019-08-06 09:45:03', '115.238.194.212', '6', '那英');
INSERT INTO `loginlog` VALUES ('940', null, '2019-08-06 10:13:49', '115.238.194.213', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('941', null, '2019-08-06 10:30:25', '112.96.198.198', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('942', null, '2019-08-06 11:11:47', '115.238.194.214', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('943', null, '2019-08-07 09:26:30', '127.0.0.1', '5', '周杰伦');
INSERT INTO `loginlog` VALUES ('944', null, '2019-08-07 09:26:51', '127.0.0.1', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('945', null, '2019-08-07 09:31:07', '127.0.0.1', '30', '朱明朋');
INSERT INTO `loginlog` VALUES ('946', null, '2019-08-07 09:31:41', '127.0.0.1', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('947', null, '2019-08-07 09:35:48', '121.33.207.79', '1', 'admin');
INSERT INTO `loginlog` VALUES ('948', null, '2019-08-07 09:50:54', '163.179.125.120', '1', 'admin');
INSERT INTO `loginlog` VALUES ('949', null, '2019-08-07 09:52:16', '163.179.125.120', '1', 'admin');
INSERT INTO `loginlog` VALUES ('950', null, '2019-08-07 09:52:32', '163.179.125.120', '32', '郑泽辉');
INSERT INTO `loginlog` VALUES ('951', null, '2019-08-07 09:54:15', '163.179.125.120', '47', 'admin');
INSERT INTO `loginlog` VALUES ('952', null, '2019-08-07 09:54:27', '163.179.125.120', '10', 'admin');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `student_name` varchar(20) NOT NULL COMMENT '学生姓名',
  `student_class` varchar(20) NOT NULL COMMENT '所在班级',
  `student_phone` varchar(30) NOT NULL COMMENT '联系电话',
  `student_remark` varchar(150) NOT NULL COMMENT '备注',
  `student_sex` varchar(10) NOT NULL COMMENT '性别',
  `student_state` varchar(10) NOT NULL COMMENT '状态',
  `student_userName` varchar(20) NOT NULL COMMENT '用户名（学号）',
  `student_userPass` varchar(30) NOT NULL DEFAULT '888888' COMMENT '用户密码（初始密码888888）',
  `out_date` varchar(100) DEFAULT NULL COMMENT '迁出日期',
  `student_institution` varchar(20) NOT NULL COMMENT '所属学院',
  `student_major` varchar(20) NOT NULL COMMENT '所学专业',
  `student_building` varchar(20) DEFAULT NULL COMMENT '所在楼宇',
  `student_dorm` varchar(10) DEFAULT NULL COMMENT '所住寝室',
  `student_lackFlag` int(1) DEFAULT '0' COMMENT '是否缺勤标识（0 未缺勤）',
  `student_lackBeginTime` varchar(30) DEFAULT NULL COMMENT '缺勤开始时间',
  `student_lackEndTime` varchar(30) DEFAULT NULL COMMENT '缺勤结束时间',
  `student_headFlag` varchar(10) DEFAULT NULL COMMENT '是否班级负责人',
  `student_ifOk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `UNIQUE_userName` (`student_userName`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('30', '朱明朋', '1204', '15773000001', '阿蒙', '男', '入住', '14121500998', '888888', null, '数学学院', '信息与计算科学', '10栋', '533', '1', null, null, null, null);
INSERT INTO `student` VALUES ('31', '谭焱', '1204', '15773001173', '鸡哥', '男', '入住', '14121503938', '888888', null, '数学学院', '信息与计算科学', '10栋', '534', '1', null, null, null, null);
INSERT INTO `student` VALUES ('32', '郑泽辉', '1204', '15773000002', '官人', '男', '入住', '14121504645', '888888', null, '数学学院', '信息与计算科学', '10栋', '534', '0', null, null, '是', null);
INSERT INTO `student` VALUES ('33', '徐超阳', '1204', '18390013456', '江哥', '男', '入住', '14121503567', '888888', null, '数学学院', '信息与计算科学', '10栋', '534', '0', null, null, null, null);
INSERT INTO `student` VALUES ('35', '袁绍', '1104', '15667345691', '毕业了', '男', '迁出', '14111525612', '888888', '2015-06-16', '数学学院', '信息与计算科学', '', '', '0', null, null, null, null);
INSERT INTO `student` VALUES ('36', '欧阳先锋', '1503', '15777501178', '牛人', '男', '入住', '14151609354', '888888', null, '数学学院', '信息与计算科学', '10栋', '536', '0', null, null, null, null);
INSERT INTO `student` VALUES ('37', '赵晓红', '1204', '18709877890', '学霸', '女', '入住', '14121504345', '888888', null, '数学学院', '信息与计算科学', '16栋', '420', '0', null, null, null, null);
INSERT INTO `student` VALUES ('38', '周邵阳', '1204', '15773001123', '克伐', '男', '未入住', '14121508555', '888888', null, '数学学院', '信息与计算科学', null, null, '0', null, null, null, null);
INSERT INTO `student` VALUES ('39', '万康', '1204', '15660984567', '主席', '男', '入住', '14121504051', '888888', null, '数学学院', '信息与计算科学', '10栋', '533', '0', null, null, null, null);
INSERT INTO `student` VALUES ('40', '徐邦启', '1204', '18390006556', '徐先生', '男', '入住', '14121503931', '888888', null, '数学学院', '信息与计算科学', '10栋', '534', '1', null, null, null, null);
INSERT INTO `student` VALUES ('41', '魏队', '1103', '15773009347', '毕业生', '男', '迁出', '14111908560', '888888', '2015-05-15', '数学学院', '信息与计算科学', '', '', '0', null, null, null, null);
INSERT INTO `student` VALUES ('42', '申明', '1204', '15773009989', '麻拐', '男', '入住', '14121500999', '888888', null, '数学学院', '信息与计算科学', '10栋', '536', '0', null, null, null, null);
INSERT INTO `student` VALUES ('43', '上官锦', '1204', '15773009870', '毕业了', '男', '迁出', '14111800867', '888888', '2015-05-19', '数学学院', '信息与计算科学', '', '', '0', null, null, null, null);
INSERT INTO `student` VALUES ('44', '张三', '1204', '18390006721', '老三', '男', '入住', '14121505587', '888888', null, '数学学院', '信息与计算科学', '10栋', '523', '0', null, null, null, null);
INSERT INTO `student` VALUES ('45', '李四', '1204', '18390006554', '毕业迁出', '男', '迁出', '14121503123', '888888', '2016-05-21', '计算机学院', '软件工程', '', '', '1', null, null, null, null);
INSERT INTO `student` VALUES ('46', '王五', '1204', '18390006554', '5467547', '男', '入住', '14121503456', '888888', null, '计算机学院', '软件工程', '18栋', '101', '0', null, null, '是', null);
INSERT INTO `student` VALUES ('47', 'admin', '1204', '18390006554', '5467547', '男', '入住', 'admin', 'admin', '', '计算机学院', '软件工程', '18栋', '101', '0', '', '', '是', '');

-- ----------------------------
-- Table structure for student_dorm
-- ----------------------------
DROP TABLE IF EXISTS `student_dorm`;
CREATE TABLE `student_dorm` (
  `dorm_id` bigint(20) DEFAULT NULL COMMENT '宿舍id',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学生id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_dorm
-- ----------------------------
INSERT INTO `student_dorm` VALUES ('19', '31');
INSERT INTO `student_dorm` VALUES ('19', '32');
INSERT INTO `student_dorm` VALUES ('19', '33');
INSERT INTO `student_dorm` VALUES ('18', '30');
INSERT INTO `student_dorm` VALUES ('21', '36');
INSERT INTO `student_dorm` VALUES ('22', '37');
INSERT INTO `student_dorm` VALUES ('21', '42');
INSERT INTO `student_dorm` VALUES ('18', '39');
INSERT INTO `student_dorm` VALUES ('20', '44');
INSERT INTO `student_dorm` VALUES ('19', '40');
INSERT INTO `student_dorm` VALUES ('24', '46');

-- ----------------------------
-- Table structure for student_lack
-- ----------------------------
DROP TABLE IF EXISTS `student_lack`;
CREATE TABLE `student_lack` (
  `student_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `student_name` varchar(20) NOT NULL COMMENT '学生姓名',
  `student_sex` varchar(5) NOT NULL COMMENT '学生性别',
  `student_institution` varchar(20) NOT NULL COMMENT '所属学院',
  `student_major` varchar(20) NOT NULL COMMENT '所学专业',
  `student_class` varchar(20) NOT NULL COMMENT '所在班级',
  `student_building` varchar(20) NOT NULL COMMENT '所在楼宇',
  `student_dorm` varchar(10) NOT NULL COMMENT '所住寝室',
  `student_lackBeginTime` varchar(30) NOT NULL COMMENT '缺勤开始时间',
  `student_lackEndTime` varchar(30) NOT NULL COMMENT '缺勤结束时间',
  `student_remark` varchar(150) NOT NULL COMMENT '缺勤原因',
  `student_ifOk` varchar(5) DEFAULT '否' COMMENT '是否确认',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_lack
-- ----------------------------
INSERT INTO `student_lack` VALUES ('2', '徐邦启', '男', '数学学院', '信息与计算科学', '1204', '10栋', '534', '2016-04-01 23:36:19', '2016-04-02 12:36:30', '外出上网！', '是');
INSERT INTO `student_lack` VALUES ('3', '徐邦启', '男', '数学学院', '信息与计算科学', '1204', '10栋', '534', '2016-04-04 17:40:08', '2016-04-04 21:40:12', '外出吃饭！', '是');
INSERT INTO `student_lack` VALUES ('4', '李四', '男', '计算机学院', '软件工程', '1204', '18栋', '101', '2016-05-21 15:33:03', '2016-05-21 15:33:07', '00000', '是');
INSERT INTO `student_lack` VALUES ('5', '王五', '男', '计算机学院', '软件工程', '1204', '18栋', '101', '2019-08-13 16:02:07', '2019-08-07 16:02:15', '外出', '否');
INSERT INTO `student_lack` VALUES ('6', '郑泽辉', '男', '数学学院', '信息与计算科学', '1204', '10栋', '534', '2019-08-08 16:10:24', '2019-08-20 16:10:28', '缺寝', '是');
INSERT INTO `student_lack` VALUES ('7', '张三', '男', '数学学院', '信息与计算科学', '1204', '10栋', '523', '2019-08-06 23:12:39', '2019-08-07 22:12:42', '缺寝', '否');

-- ----------------------------
-- Table structure for system
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system` (
  `system_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `system_userName` varchar(20) NOT NULL COMMENT '管理员名称',
  `system_userPass` varchar(30) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system
-- ----------------------------
INSERT INTO `system` VALUES ('1', 'admin', 'admin');
INSERT INTO `system` VALUES ('2', 'hnistadmin', 'hnist123!@#');

-- ----------------------------
-- Table structure for tab_notice
-- ----------------------------
DROP TABLE IF EXISTS `tab_notice`;
CREATE TABLE `tab_notice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(20) NOT NULL COMMENT '标题',
  `content` varchar(100) NOT NULL COMMENT '内容',
  `send_userName` varchar(30) DEFAULT NULL COMMENT '发送人的学号/工号',
  `send_person` varchar(20) DEFAULT NULL COMMENT '发送人姓名',
  `send_role` varchar(10) DEFAULT NULL COMMENT '发送人角色',
  `send_time` varchar(20) DEFAULT NULL COMMENT '发送时间',
  `rec_userName` varchar(30) DEFAULT NULL COMMENT '接收人的学号/工号',
  `rec_person` varchar(20) DEFAULT NULL COMMENT '接收人姓名',
  `rec_role` varchar(10) DEFAULT NULL COMMENT '接收人角色',
  `see_state` varchar(10) DEFAULT '否' COMMENT '是否查看(1查看,2确认,回复)',
  `reply_state` varchar(10) DEFAULT '否' COMMENT '是否回复',
  `ok_state` varchar(10) DEFAULT '否' COMMENT '是否确认',
  `msg_type` varchar(20) DEFAULT NULL COMMENT '消息类型',
  `guid` varchar(100) DEFAULT NULL COMMENT 'GUID,确定唯一',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_notice
-- ----------------------------
INSERT INTO `tab_notice` VALUES ('1', '调换宿舍', '调换宿舍到534        				', '14121503931', '徐邦启', 'student', '2016-05-14 15:32:40', '10_manage', null, 'teacher', '已确认', '否', '否', '宿舍调换', '81ebb77c-267d-4b2c-ae8e-abd68caab6d9');
INSERT INTO `tab_notice` VALUES ('2', '调换宿舍', '	       0000 				', '14121503123', '李四', 'student', '2016-05-21 15:35:26', '18_manage', null, 'teacher', '已确认', '否', '否', '宿舍调换', 'c2b1e161-5d68-4699-837f-d2ae2fe27fa2');
INSERT INTO `tab_notice` VALUES ('3', '毕业了', '迁出宿舍	        				', '14121503123', '李四', 'student', '2016-05-21 15:38:05', '18_manage', null, 'teacher', '已确认', '否', '否', '迁出申请', 'd948cba5-299c-4c8d-9899-6e075ddf08f5');
INSERT INTO `tab_notice` VALUES ('4', '申请调换宿舍', '本人申请调换宿舍。', '14121504645', '郑泽辉', 'vipStudent', '2019-08-06 04:20:57', 'admin', 'admin', 'teacher', '否', '否', '否', '宿舍调换', '97d80f19-f10d-4be7-b8a9-d6368e33e583');
INSERT INTO `tab_notice` VALUES ('5', '申请迁出', '申请迁出宿舍。', '14121504645', '郑泽辉', 'vipStudent', '2019-08-06 04:23:57', '10_manage', '周杰伦', 'teacher', '否', '否', '否', '迁出申请', '5892ff33-d2fd-40c8-8949-c5911bf0d293');
INSERT INTO `tab_notice` VALUES ('6', '申请迁出', '申请迁出宿舍。', '14121504645', '郑泽辉', 'vipStudent', '2019-08-06 04:23:57', '10_manage', '周杰伦', 'teacher', '否', '否', '否', '迁出申请', 'c8e1946f-b82f-4574-9207-aa6c0de603ea');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teacher_name` varchar(20) NOT NULL COMMENT '楼宇管理员名称',
  `teacher_sex` varchar(10) NOT NULL COMMENT '楼宇管理员性别',
  `teacher_tel` varchar(30) NOT NULL COMMENT '楼宇管理员电话',
  `teacher_userName` varchar(20) NOT NULL COMMENT '楼宇管理员名称',
  `teacher_userPass` varchar(30) NOT NULL DEFAULT '888888' COMMENT '楼宇管理员密码（初始密码888888）',
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `UNIQUE_NAME` (`teacher_userName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('5', '周杰伦', '男', '18900008888', '10_manage', '888888');
INSERT INTO `teacher` VALUES ('6', '那英', '女', '15700098765', '16_manage', '888888');
INSERT INTO `teacher` VALUES ('8', '梁朝伟', '男', '18709876789', '11_manage', '888888');
INSERT INTO `teacher` VALUES ('9', '刘德华', '男', '18709876790', '18_manage', '888888');
INSERT INTO `teacher` VALUES ('10', 'admin', '男', '3123123123', 'admin', 'admin');

-- ----------------------------
-- Table structure for teacher_buidling
-- ----------------------------
DROP TABLE IF EXISTS `teacher_buidling`;
CREATE TABLE `teacher_buidling` (
  `building_id` bigint(20) DEFAULT NULL COMMENT '楼宇id',
  `teacher_id` bigint(20) DEFAULT NULL COMMENT '楼宇管理员id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_buidling
-- ----------------------------
INSERT INTO `teacher_buidling` VALUES ('4', '5');
INSERT INTO `teacher_buidling` VALUES ('5', '6');
INSERT INTO `teacher_buidling` VALUES ('6', '8');
INSERT INTO `teacher_buidling` VALUES ('6', '8');
INSERT INTO `teacher_buidling` VALUES ('8', '9');
INSERT INTO `teacher_buidling` VALUES ('7', '9');
INSERT INTO `teacher_buidling` VALUES ('1', '5');
INSERT INTO `teacher_buidling` VALUES ('1', '6');
