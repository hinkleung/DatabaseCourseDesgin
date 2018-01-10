/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : coursedesign

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-10 16:13:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `aid` varchar(10) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `a_sex` varchar(2) DEFAULT NULL,
  `a_birthday` date DEFAULT NULL,
  `a_pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('admin', '陈庆良', '男', '1996-11-01', '123456');
INSERT INTO `administrator` VALUES ('admin2', '撒撒', '女', '2018-01-03', '123456');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` varchar(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `weektime` varchar(20) NOT NULL,
  `credit` int(2) NOT NULL,
  `galleryful` int(4) NOT NULL COMMENT '课程可选人数',
  `c_desc` text,
  `tid` varchar(10) NOT NULL,
  PRIMARY KEY (`cno`),
  KEY `course_ibfk_1` (`tid`) USING BTREE,
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('01', '数据库系统概论', '教1-416', '2周到17周', '3', '94', '讲的是关于数据库的内容', '1017001');
INSERT INTO `course` VALUES ('02', '操作系统', '教2-216', '2周到17周', '2', '94', '讲的是关于操作系统的内容', '1017002');
INSERT INTO `course` VALUES ('03', '材料力学', '教2-324', '2周到15周', '3', '100', '讲的是关于材料力学的内容', '1017003');
INSERT INTO `course` VALUES ('04', '化工原理', '教3-315', '1周到16周', '2', '100', '讲的是关于化工原理的内容', '1017004');
INSERT INTO `course` VALUES ('05', '马克思主义原理', '教5-203', '2周到17周', '5', '200', '讲的是关于马克思主义原理的内容', '1017005');
INSERT INTO `course` VALUES ('06', '高等数学', '教5-206', '1周到17周', '4', '200', '讲的是关于高等数学的内容', '1017006');
INSERT INTO `course` VALUES ('07', '生物化学', '教2-208', '1周到16周', '3', '96', '讲的是关于生物化学的内容', '1017007');
INSERT INTO `course` VALUES ('08', '工程力学', '教4-301', '2周到17周', '2', '98', '讲的是关于工程力学的内容', '1017004');
INSERT INTO `course` VALUES ('09', '线性代数', '教3-245', '2周到15周', '3', '90', '讲的是关于线性代数的内容', '1017005');
INSERT INTO `course` VALUES ('10', '能源科学前沿', '教5-231', '1周到17周', '1', '85', '讲的是关于能源科学前沿的内容', '1017002');
INSERT INTO `course` VALUES ('11', '不知道', '地点', '时间', '2', '50', '24123123阿斯达岁的阿斯', '1017015');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dno` varchar(10) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `d_desc` text,
  PRIMARY KEY (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1001', '计算机学院', '计算机学院本科相关专业建设已有30多年的办学历史，涵盖计算机科学与技术、软件工程和信息安全三个学科。现有1个二级学科博士学位授权点，2个一级学科硕士学位授权点，2个工程硕士培养领域授权点；有1个广东省优势重点学科，1个省级名牌专业；拥有完整的从学士到博士的人才培养体系。');
INSERT INTO `department` VALUES ('1002', '材料与能源学院', '广东工业大学材料与能源学院是广东省“211工程”三期重点建设学科的学院，已有40多年的办学历史，现已形成本科、硕士、博士和博士后的人才培养体系。');
INSERT INTO `department` VALUES ('1003', '自动化学院', '　广东工业大学自动化学院坐落于美丽的广州大学城校区，由1958年创办的原广东工学院电工系发展而来。学院现已形成了本科、硕士研究生、博士研究生和博士后的人才培养体系,已培养毕业生两万余人。');
INSERT INTO `department` VALUES ('1004', '机电学院学院', '广东工业大学机电工程学院缘革于1958年创办的广州工学院机械工程系，在五十多年的办学历史中已培养毕业生两万余人。');
INSERT INTO `department` VALUES ('1005', '轻工化工学院', '轻工化工学院是广东工业大学历史最悠久的学院之一，学院一直遵循学校的“与广东崛起共成长，为广东发展做贡献”办学宗旨，始终坚持为地方经济建设、社会发展和科技进步服务。');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` varchar(10) NOT NULL,
  `dno` varchar(10) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `s_sex` varchar(2) NOT NULL,
  `s_birthday` date NOT NULL,
  `s_pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `student_ibfk_1` (`dno`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('3115001', '1001', '张伟', '男', '1998-04-04', '123456');
INSERT INTO `student` VALUES ('3115002', '1001', '王欣', '女', '1997-11-24', '123456');
INSERT INTO `student` VALUES ('3115003', '1002', '刘兵', '男', '1997-07-08', '123456');
INSERT INTO `student` VALUES ('3115004', '1002', '张桂芝', '女', '1996-05-15', '123456');
INSERT INTO `student` VALUES ('3115005', '1003', '张楠', '男', '1998-02-01', '123456');
INSERT INTO `student` VALUES ('3115006', '1003', '徐敏', '女', '1997-10-01', '123456');
INSERT INTO `student` VALUES ('3115007', '1004', '杨燕', '女', '1996-03-18', '123456');
INSERT INTO `student` VALUES ('3115008', '1004', '杨明', '男', '1997-12-24', '123456');
INSERT INTO `student` VALUES ('3115009', '1005', '王博', '男', '1996-07-13', '123456');
INSERT INTO `student` VALUES ('3115010', '1005', '李欣', '女', '1996-11-15', '123456');
INSERT INTO `student` VALUES ('3115015', '1003', '测试员', '男', '2018-01-02', '123456');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `sid` varchar(10) NOT NULL,
  `cno` varchar(10) NOT NULL,
  `grade` int(3) DEFAULT NULL,
  PRIMARY KEY (`sid`,`cno`),
  KEY `student_course_ibfk_2` (`cno`),
  CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`cno`) REFERENCES `course` (`cno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('3115001', '01', '1');
INSERT INTO `student_course` VALUES ('3115001', '02', '2');
INSERT INTO `student_course` VALUES ('3115001', '04', '10');
INSERT INTO `student_course` VALUES ('3115001', '10', null);
INSERT INTO `student_course` VALUES ('3115002', '03', '11');
INSERT INTO `student_course` VALUES ('3115002', '05', '10');
INSERT INTO `student_course` VALUES ('3115003', '01', '8');
INSERT INTO `student_course` VALUES ('3115003', '10', null);
INSERT INTO `student_course` VALUES ('3115004', '02', null);
INSERT INTO `student_course` VALUES ('3115004', '06', null);
INSERT INTO `student_course` VALUES ('3115005', '03', null);
INSERT INTO `student_course` VALUES ('3115005', '04', null);
INSERT INTO `student_course` VALUES ('3115005', '09', null);
INSERT INTO `student_course` VALUES ('3115006', '01', '100');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` varchar(10) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `t_sex` varchar(2) NOT NULL,
  `t_birthday` date NOT NULL,
  `t_pwd` varchar(20) NOT NULL,
  `t_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1017001', '杨娟', '女', '1966-11-12', '123456', '讲师');
INSERT INTO `teacher` VALUES ('1017002', '周杰', '男', '1974-03-18', '123456', '副教授');
INSERT INTO `teacher` VALUES ('1017003', '陈建华', '男', '1968-12-15', '123456', '讲师');
INSERT INTO `teacher` VALUES ('1017004', '陈玉英', '女', '1975-07-16', '123456', '副教授');
INSERT INTO `teacher` VALUES ('1017005', '刘建军', '男', '1965-06-30', '123456', '教授');
INSERT INTO `teacher` VALUES ('1017006', '赵秀英', '女', '1970-01-03', '123456', '副教授');
INSERT INTO `teacher` VALUES ('1017007', '徐静', '女', '1966-05-15', '123456', '讲师');
INSERT INTO `teacher` VALUES ('1017015', '测试老师', '女', '2018-01-01', '123456', '老师');

-- ----------------------------
-- View structure for student_course_info
-- ----------------------------
DROP VIEW IF EXISTS `student_course_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_course_info` AS select `student`.`sid` AS `sid`,`student`.`sname` AS `sname`,`course`.`cname` AS `cname`,`course`.`place` AS `place`,`course`.`weektime` AS `weektime`,`course`.`credit` AS `credit`,`course`.`c_desc` AS `c_desc`,`student_course`.`grade` AS `grade` from ((`student` join `student_course`) join `course`) where ((`student`.`sid` = `student_course`.`sid`) and (`course`.`cno` = `student_course`.`cno`)) ;

-- ----------------------------
-- View structure for student_course_teacher_grade
-- ----------------------------
DROP VIEW IF EXISTS `student_course_teacher_grade`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_course_teacher_grade` AS select `student`.`sid` AS `sid`,`student`.`sname` AS `sname`,`department`.`dname` AS `dname`,`student`.`s_sex` AS `s_sex`,`course`.`cno` AS `cno`,`course`.`cname` AS `cname`,`student_course`.`grade` AS `grade`,`teacher`.`tname` AS `tname`,`teacher`.`tid` AS `tid` from ((((`student` join `course`) join `student_course`) join `teacher`) join `department`) where ((`teacher`.`tid` = `course`.`tid`) and (`course`.`cno` = `student_course`.`cno`) and (`student_course`.`sid` = `student`.`sid`) and (`department`.`dno` = `student`.`dno`)) ;
