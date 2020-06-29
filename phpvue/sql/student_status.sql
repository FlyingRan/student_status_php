/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : student_status

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 29/06/2020 21:52:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123456',
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `college` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1001', '1234567', '1', '计算机与通信学院');
INSERT INTO `college` VALUES ('1002', '123456', '1', '外国语学院');
INSERT INTO `college` VALUES ('1003', '123456', '1', '机械学院');
INSERT INTO `college` VALUES ('1004', '123456', '1', '管理学院');
INSERT INTO `college` VALUES ('1005', '123456', '1', '电气学院');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `college` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ecard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inyear` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '123456',
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `pulishment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1221251412', 'xusan', '男', '外国语学院', '121212', '1654213542', '2016', '123456', '1', '0');
INSERT INTO `student` VALUES ('201521564', '二哈', '女', '外国语学院', '英语1502', '14321542134', '2015', '123456', '1', '旷课3周，记过处分1次；');
INSERT INTO `student` VALUES ('201523215', 'test', '男', '计算机与通信学院', '软件工程1502', '16542313', '2015', '123456', '1', '0');
INSERT INTO `student` VALUES ('2015486454', '王大妈', '男', '外国语学院', '英语1502', '12345154', '2015', '123456', '1', '0');
INSERT INTO `student` VALUES ('2016542541', '哈士奇', '男', '外国语学院', '日语1603', '54485212384', '2016', '123456', '1', '有过处分，已撤销');
INSERT INTO `student` VALUES ('20170321023', '张芳', '男', '机械学院', '机械工程1802', '54562411', '2017', '123456', '1', '在校斗殴，警告处分1次；');
INSERT INTO `student` VALUES ('20170321024', '维语心', '男', '机械学院', '机械工程1802', '54562434', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170321029', '柯南', '男', '机械学院', '机械工程1802', '212132131234', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325021', '工藤新一', '女', '电气学院', '软件工程1802', '465541216233', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325022', '路飞', '女', '电气学院', '软件工程1802', '465541216244', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325023', '索隆', '女', '电气学院', '电气工程1802', '465541216255', '2018', '1234567', '1', '0');
INSERT INTO `student` VALUES ('20170325024', '香吉士', '女', '电气学院', '电气工程1802', '465541216266', '2018', '1234567', '1', '在校斗殴，记过处分一次');
INSERT INTO `student` VALUES ('20170325025', '乌索普', '女', '电气学院', '电气工程1802', '465541216277', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325026', '娜美', '女', '电气学院', '电气工程1802', '465541216288', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325027', '乔巴', '女', '电气学院', '电气工程1802', '465541216299', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325028', '罗宾', '女', '电气学院', '电气工程1802', '465541216310', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325029', '布鲁克', '女', '电气学院', '电气工程1802', '465541216321', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325030', '弗兰奇', '女', '电气学院', '电气工程1802', '465541216332', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325031', '龙', '女', '电气学院', '电气工程1802', '465541216343', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325032', '罗杰', '女', '电气学院', '电气工程1802', '465541216354', '2018', '1234567', '0', '0');
INSERT INTO `student` VALUES ('20170325033', '七武海', '女', '电气学院', '电气工程1802', '465541216365', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325034', '鹰眼', '女', '电气学院', '电气工程1802', '465541216376', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325035', '哈利波特', '女', '电气学院', '电气工程1802', '465541216387', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325036', '雷利', '女', '电气学院', '电气工程1802', '465541216398', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325037', '凯多', '女', '电气学院', '电气工程1802', '465541216409', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325038', '大妈', '女', '电气学院', '电气工程1802', '465541216420', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325039', '卡二', '女', '电气学院', '电气工程1802', '465541216431', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170325040', '多内诺', '女', '电气学院', '电气工程1802', '465541216442', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425021', '0', '男', '管理学院', '工商管理1702', '461256784233', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425022', '1', '男', '管理学院', '工商管理1702', '461256784244', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425023', '2', '男', '管理学院', '工商管理1702', '461256784255', '2017', '123456', '1', '挂科10门以上，警告处分1次；');
INSERT INTO `student` VALUES ('20170425024', '3', '男', '管理学院', '工商管理1702', '461256784266', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425025', '4', '男', '管理学院', '工商管理1702', '461256784277', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425026', '5', '男', '管理学院', '工商管理1702', '461256784288', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425027', '6', '男', '管理学院', '工商管理1702', '461256784299', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425028', '7', '男', '管理学院', '工商管理1702', '461256784310', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425029', '8', '男', '管理学院', '工商管理1702', '461256784321', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('20170425030', '9', '男', '管理学院', '工商管理1702', '461256784332', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140201', '张三', '男', '计算机与通信学院', '软件工程1802', '213654981531', '2018', '123456', '1', '违反校纪校规，警告处分1次；');
INSERT INTO `student` VALUES ('201803140202', '张三', '男', '计算机与通信学院', '软件工程1802', '213654981531', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140203', '张大', '男', '计算机与通信学院', '软件工程1802', '213654981531', '2018', '123456', '1', '');
INSERT INTO `student` VALUES ('201803140204', '张四', '男', '计算机与通信学院', '软件工程1802', '254654621234', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140205', '王五', '男', '计算机与通信学院', '软件工程1802', '465541216545', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140206', '王六', '女', '计算机与通信学院', '软件工程1802', '213123124341', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140207', '许三', '女', '计算机与通信学院', '软件工程1802', '165422164123', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314021', '徐日', '男', '计算机与通信学院', '软件工程1802', '465541216233', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140218', '许三安', '男', '外国语学院', '日语1702', '44058219', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314022', '李棋', '女', '计算机与通信学院', '软件工程1802', '465541216244', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('201803140222', '徐良', '男', '计算机与通信学院', '计算机与科学1801', '440125648', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314023', '罗志祥', '女', '计算机与通信学院', '软件工程1802', '465541216255', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314024', '罗大佑', '男', '计算机与通信学院', '软件工程1801', '465541216266', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314025', '张志翔', '女', '计算机与通信学院', '软件工程1802', '465541216277', '2018', '123456', '0', '0');
INSERT INTO `student` VALUES ('20180314026', '周迅', '男', '计算机与通信学院', '软件工程1802', '465541216288', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314027', '许嵩', '女', '计算机与通信学院', '软件工程1802', '465541216299', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314028', '徐佳丽', '女', '外国语学院', '英语1802', '465541216310', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314029', '徐可爱', '男', '外国语学院', '英语1802', '465541216321', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314030', '钱魏国', '女', '外国语学院', '英语1802', '465541216332', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314031', '钱方怡', '男', '外国语学院', '英语1802', '465541216343', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314032', '陈子欣', '女', '外国语学院', '英语1802', '465541216354', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314033', '陈伟霆', '男', '外国语学院', '英语1802', '465541216365', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314034', '陈安安', '女', '外国语学院', '英语1802', '465541216376', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314035', '许浩然', '男', '外国语学院', '英语1802', '465541216387', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314036', '许七安', '女', '外国语学院', '英语1802', '465541216398', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314037', '李志鹏', '男', '外国语学院', '英语1802', '465541216409', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314038', '小李子', '女', '外国语学院', '英语1802', '465541216420', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314039', '李离', '男', '外国语学院', '英语1802', '465541216431', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20180314040', '高兴', '女', '外国语学院', '英语1802', '465541216442', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325021', '罗纳', '女', '管理学院', '工商管理1802', '461235452233', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325022', '张其弟', '女', '管理学院', '工商管理1802', '461235452244', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325023', '湖南', '女', '管理学院', '工商管理1802', '461235452255', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325024', '随性', '女', '管理学院', '工商管理1802', '461235452266', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325025', '想不出', '女', '管理学院', '工商管理1802', '461235452277', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325026', '炸弹', '女', '管理学院', '工商管理1802', '461235452288', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325027', '黄忠', '女', '管理学院', '工商管理1802', '461235452299', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325028', '王昭君', '女', '管理学院', '工商管理1802', '461235452310', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325029', '露娜', '女', '管理学院', '工商管理1802', '461235452321', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('20190325030', '韩信', '女', '管理学院', '工商管理1802', '461235452332', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('21311312', '徐', '男', '计算机与通信学院', '3123131', '2412312313', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('2131231', '徐三按', '1', '计算机与通信学院', '1231231', '3213123', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('21312311', '下', '3', '计算机与通信学院', '31231231', '12312412412', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('23131231', '张三', '男', '计算机与通信学院', '说31313', '21313131', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('2313131', '11', '1', '计算机与通信学院', '3123131', '231231231', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('231321', '2', '3', '计算机与通信学院', '321312', '21312', '2016', '123456', '1', '0');
INSERT INTO `student` VALUES ('232131', '11', '2', '计算机与通信学院', '4324', '213123124', '2017', '123456', '1', '0');
INSERT INTO `student` VALUES ('26413131', '许', '男', '计算机与通信学院', '2131231', '2131231', '2018', '123456', '1', '0');
INSERT INTO `student` VALUES ('3213123', '1', '男', '计算机与通信学院', '12312312', '31231231', '2019', '123456', '1', '0');
INSERT INTO `student` VALUES ('4654211', '谁说1231', '2', '计算机与通信学院', '31231231', '32132411241', '2020', '123456', '1', '0');

SET FOREIGN_KEY_CHECKS = 1;
