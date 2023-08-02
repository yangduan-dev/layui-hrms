/*
 Navicat Premium Data Transfer

 Source Server         : 本地phpstudy
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3309
 Source Schema         : hrms_c001

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 02/08/2023 18:21:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendance_record
-- ----------------------------
DROP TABLE IF EXISTS `attendance_record`;
CREATE TABLE `attendance_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attendance_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考勤id',
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工工号',
  `staff_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工姓名',
  `date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考勤月份',
  `work_days` int(11) NOT NULL COMMENT '出勤天数',
  `leave_days` int(11) NOT NULL COMMENT '请假天数',
  `overtime_days` int(11) NOT NULL COMMENT '加班天数',
  `approve` int(11) NOT NULL COMMENT '是否已审批, 0为未审批，1为审批通过，2为审批不通过',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance_record
-- ----------------------------
INSERT INTO `attendance_record` VALUES (3, 'attendance_record_2970000723', 'H14774', '彭博荣', '2021-03', 19, 0, 1, 1, '2021-03-26 10:18:31', '2021-04-13 11:45:26', NULL);
INSERT INTO `attendance_record` VALUES (4, 'attendance_record_2392540979', 'H22024', '王明', '2021-03', 21, 1, 2, 1, '2021-04-10 19:27:48', '2021-04-14 19:25:30', NULL);
INSERT INTO `attendance_record` VALUES (6, 'attendance_record_263240561', 'H14774', '彭博荣', '2021-02', 20, 2, 2, 1, '2021-04-14 15:19:23', '2021-04-14 16:34:20', NULL);
INSERT INTO `attendance_record` VALUES (7, 'attendance_record_1858791852', 'H14774', '彭博荣', '2021-01', 19, 0, 1, 1, '2021-04-14 16:46:45', '2021-04-14 16:47:10', NULL);
INSERT INTO `attendance_record` VALUES (10, 'attendance_record_3260258724', 'H14774', '彭博荣', '2021-05', 21, 1, 1, 1, '2021-05-27 14:23:39', '2021-05-27 14:24:30', NULL);

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '登陆授权表ID',
  `authority_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登陆授权表ID',
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工工号',
  `user_password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登陆密码\\n',
  `user_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户标示，normal普通用户、sys系统管理员、supersys超级管理员',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (1, '1', 'root', 'e5d9dee0892c9f474a174d3bfffb7810', 'supersys', NULL, '2021-03-28 22:14:19', NULL);
INSERT INTO `authority` VALUES (2, '2', 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'sys', NULL, NULL, NULL);
INSERT INTO `authority` VALUES (4, 'pass_4069611542', 'H14774', '042bc7a8c065215844db0fead641f128', 'normal', '2021-03-13 14:40:56', '2021-05-26 20:02:21', NULL);
INSERT INTO `authority` VALUES (5, 'auth_391395934', 'H14466', '464d5758e6d5daf0e46030242f9ea7a2', 'sys', '2021-03-23 10:12:30', '2021-05-26 20:02:28', NULL);
INSERT INTO `authority` VALUES (6, 'auth_4262563907', 'H22024', '2f9758d068b2f13ddd110b1a5c8e06ec', 'normal', '2021-03-28 18:11:35', '2021-05-26 20:02:34', NULL);
INSERT INTO `authority` VALUES (12, 'auth_3927260440', 'H27826', '619de4c782dd4206d384efc6c5e2122d', 'normal', '2021-04-17 16:55:04', '2021-05-26 20:02:39', NULL);

-- ----------------------------
-- Table structure for authority_detail
-- ----------------------------
DROP TABLE IF EXISTS `authority_detail`;
CREATE TABLE `authority_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色类型',
  `model` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块英文名称',
  `authority_content` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '授权详情',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority_detail
-- ----------------------------
INSERT INTO `authority_detail` VALUES (4, 'supersys', 'staff_manage', 'create|delete|update|query', '员工管理');
INSERT INTO `authority_detail` VALUES (6, 'supersys', 'dep_manage', 'create|delete|update|query', '部门管理');
INSERT INTO `authority_detail` VALUES (7, 'supersys', 'password_manage', 'create|delete|update|query', '密码管理');
INSERT INTO `authority_detail` VALUES (8, 'supersys', 'rank_manage', 'create|delete|update|query', '职位管理');
INSERT INTO `authority_detail` VALUES (9, 'sys', 'admin_staff_manage', 'create|delete|update|query', '员工管理');
INSERT INTO `authority_detail` VALUES (10, 'sys', 'admin_notification_manage', 'create|delete|update|query', '通知管理');
INSERT INTO `authority_detail` VALUES (11, 'normal', 'normal_notification_manage', 'query|update', '通知管理');
INSERT INTO `authority_detail` VALUES (12, 'normal', 'normal_staff_manage', 'query|update', '员工管理');
INSERT INTO `authority_detail` VALUES (16, 'normal', 'normal_salary_detail_manage', 'query', '工资套账');
INSERT INTO `authority_detail` VALUES (17, 'sys', 'salary_detail_manage', 'create|delete|update|query', '工资套账');
INSERT INTO `authority_detail` VALUES (18, 'sys', 'salary_giving_manage', 'create|delete|update|query', '工资发放管理');
INSERT INTO `authority_detail` VALUES (19, 'sys', 'salary_history_manage', 'query', '工资历史');
INSERT INTO `authority_detail` VALUES (20, 'normal', 'normal_salary_history_manage', 'query', '工资历史');
INSERT INTO `authority_detail` VALUES (21, 'sys', 'attendance_giving_manage', 'create|delete|update|query', '考勤上报');
INSERT INTO `authority_detail` VALUES (22, 'sys', 'attendance_history_manage', 'query', '考勤历史');
INSERT INTO `authority_detail` VALUES (24, 'normal', 'normal_attendance_giving_manage', 'create|delete|update|query', '考勤上报');
INSERT INTO `authority_detail` VALUES (25, 'normal', 'normal_attendance_history_manage', 'query', '考勤历史');
INSERT INTO `authority_detail` VALUES (26, 'sys', 'recruitment_manage', 'create|delete|update|query', '招聘信息管理');
INSERT INTO `authority_detail` VALUES (27, 'normal', 'normal_recruitment_manage', 'query', '招聘信息管理');
INSERT INTO `authority_detail` VALUES (28, 'sys', 'candidate_manage', 'create|delete|update|query', '候选人管理');
INSERT INTO `authority_detail` VALUES (29, 'normal', 'normal_candidate_manage', 'update|query', '候选人管理');
INSERT INTO `authority_detail` VALUES (30, 'sys', 'example_manage', 'create|delete|update|query', '考试信息管理');
INSERT INTO `authority_detail` VALUES (31, 'normal', 'example_manage', 'query', '考试信息管理');
INSERT INTO `authority_detail` VALUES (32, 'sys', 'example_history', 'query', '考试历史');
INSERT INTO `authority_detail` VALUES (33, 'normal', 'normal_example_history', 'query', '考试历史');
INSERT INTO `authority_detail` VALUES (34, 'sys', 'attendance_approve_manage', 'update|query', '考勤审批');
INSERT INTO `authority_detail` VALUES (35, 'normal', 'attendance_approve_manage', 'update|query', '考勤审批');

-- ----------------------------
-- Table structure for branch_company
-- ----------------------------
DROP TABLE IF EXISTS `branch_company`;
CREATE TABLE `branch_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分公司标识',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分公司名称',
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '分公司介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branch_company
-- ----------------------------
INSERT INTO `branch_company` VALUES (1, 'C001', '广州总部', NULL);
INSERT INTO `branch_company` VALUES (2, 'C002', '深圳分公司', NULL);

-- ----------------------------
-- Table structure for candidate
-- ----------------------------
DROP TABLE IF EXISTS `candidate`;
CREATE TABLE `candidate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `candidate_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '候选人ID',
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '面试官工号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '候选人姓名',
  `job_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `edu_level` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学历',
  `major` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业',
  `experience` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '工作经历',
  `describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '技能描述',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `evaluation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '面试评价',
  `status` int(11) NOT NULL COMMENT '录用状态，0录入信息、1拒绝、2通过',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of candidate
-- ----------------------------
INSERT INTO `candidate` VALUES (1, 'candidate_3914704137', 'H22024', '陈小明', '软件工程师', '本科', '机械工程', '1-3年', '1、有2年以上java开发经验，熟悉SpringBoot框架开发使用，JAVA基础扎实，有一定的多线程知识。\n2、精通linux操作，熟悉网络、IO、内存等监控排查手段\n3、熟悉Mysql/mongodb/redis相关操作使用，能够熟练使用Mybaits或者JPA操作数据库，开发相应功能\n4、能够使用脚本语言（Python/shell/..）等开发更佳\n5、有Mongodb、Redis、nginx、ansible经验更佳，有Elasticsearch、kafka有相关经验更佳', '1378789620@qq.com', '基础还不错,可以录用哈哈哈哈\n\n', 2, '2021-03-26 19:54:07', '2021-03-29 11:29:58', NULL);
INSERT INTO `candidate` VALUES (3, 'candidate_3031395841', 'H14774', '陈小鹏', '软件开发工程师', '博士', '计算机', '1年', '啥都不会', 'gdutarong2@163.com', '啥都不会,拒绝', 1, '2021-03-26 20:25:51', '2021-04-10 20:37:52', NULL);
INSERT INTO `candidate` VALUES (4, 'candidate_2088423667', 'H14466', '小李', '后端', '', '', '', '1111', '', '', 2, '2021-03-27 19:28:21', '2021-04-10 19:29:32', NULL);
INSERT INTO `candidate` VALUES (5, 'candidate_3719738013', 'H14774', '李大韦', '机械工程师', '', '', '', '', '', '', 0, '2021-04-10 19:30:13', '2021-05-27 14:26:58', NULL);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dep_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门id',
  `dep_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `dep_describe` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (26, 'dep_1322682358', '软件开发部', '2021-03-21 18:36:54', '2021-04-10 19:07:01', NULL, '支撑软件的开发和维护工作');
INSERT INTO `department` VALUES (27, 'dep_2547022224', '硬件开发部', '2021-03-21 18:37:08', '2021-05-26 20:03:31', NULL, '支撑硬件的开发和维护工作');
INSERT INTO `department` VALUES (28, 'dep_913998902', '产品销售部', '2021-03-21 18:37:36', '2021-05-26 20:03:50', NULL, '支撑产品的售卖和推销工作');
INSERT INTO `department` VALUES (29, 'dep_1460851561', '人力资源部', '2021-03-23 10:10:07', '2021-05-26 20:04:04', NULL, '负责管理公司人力及数据');

-- ----------------------------
-- Table structure for example
-- ----------------------------
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `example_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试Id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试名称',
  `describe` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '考试介绍',
  `date` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试日期',
  `limit` int(11) NOT NULL COMMENT '限制考试时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试内容JSON格式',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of example
-- ----------------------------
INSERT INTO `example` VALUES (9, 'example_757332288', '作息时间考试', '公司上下班时间考试测试', '2021-04-17', 1, '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '2021-03-28 11:07:10', '2021-04-17 00:16:22', NULL);
INSERT INTO `example` VALUES (11, 'example_2823890790', '职能通识考试', '职能通识考试相关', '2021-04-27', 10, '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '2021-03-28 14:07:52', '2021-04-27 18:27:21', NULL);

-- ----------------------------
-- Table structure for example_score
-- ----------------------------
DROP TABLE IF EXISTS `example_score`;
CREATE TABLE `example_score`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `example_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试信息ID',
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试人工号',
  `staff_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工名称',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试名称',
  `date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '完成考试时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标准答案',
  `commit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '提交的答案',
  `score` int(11) NOT NULL COMMENT '考试成绩',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of example_score
-- ----------------------------
INSERT INTO `example_score` VALUES (1, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:33:19', '2021-03-28 13:33:19', NULL);
INSERT INTO `example_score` VALUES (2, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:33:26', '2021-03-28 13:33:26', NULL);
INSERT INTO `example_score` VALUES (3, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:35:37', '2021-03-28 13:35:37', NULL);
INSERT INTO `example_score` VALUES (4, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:38:22', '2021-03-28 13:38:22', NULL);
INSERT INTO `example_score` VALUES (5, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:39:07', '2021-03-28 13:39:07', NULL);
INSERT INTO `example_score` VALUES (6, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:39:41', '2021-03-28 13:39:41', NULL);
INSERT INTO `example_score` VALUES (7, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 0, '2021-03-28 13:40:29', '2021-03-28 13:40:29', NULL);
INSERT INTO `example_score` VALUES (8, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 50, '2021-03-28 13:41:41', '2021-03-28 13:41:41', NULL);
INSERT INTO `example_score` VALUES (9, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.11点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 50, '2021-03-28 13:41:57', '2021-03-28 13:41:57', NULL);
INSERT INTO `example_score` VALUES (10, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.11点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 50, '2021-03-28 13:42:09', '2021-03-28 13:42:09', NULL);
INSERT INTO `example_score` VALUES (11, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"D.11点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 50, '2021-03-28 13:42:16', '2021-03-28 13:42:16', NULL);
INSERT INTO `example_score` VALUES (12, '123', 'test id', '测试员工', '公司上下班时间考试', '2021-03-28 13:30:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"sys\",\"staff_name\":\"sys\",\"date\":\"2021-03-28 13:30:23\"}', 100, '2021-03-28 13:42:46', '2021-03-28 13:42:46', NULL);
INSERT INTO `example_score` VALUES (13, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:46:11', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:46:11\"}', 100, '2021-03-28 13:46:16', '2021-03-28 13:46:16', NULL);
INSERT INTO `example_score` VALUES (14, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:47:18', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:47:18\"}', 50, '2021-03-28 13:47:24', '2021-03-28 13:47:24', NULL);
INSERT INTO `example_score` VALUES (15, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:48:3', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:48:3\"}', 100, '2021-03-28 13:48:06', '2021-03-28 13:48:06', NULL);
INSERT INTO `example_score` VALUES (16, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:48:46', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:48:46\"}', 100, '2021-03-28 13:48:49', '2021-03-28 13:48:49', NULL);
INSERT INTO `example_score` VALUES (17, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:49:42', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:49:42\"}', 100, '2021-03-28 13:49:45', '2021-03-28 13:49:45', NULL);
INSERT INTO `example_score` VALUES (18, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:50:16', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:50:16\"}', 50, '2021-03-28 13:50:22', '2021-03-28 13:50:22', NULL);
INSERT INTO `example_score` VALUES (19, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:51:16', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"A.8点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:51:16\"}', 50, '2021-03-28 13:51:17', '2021-03-28 13:51:17', NULL);
INSERT INTO `example_score` VALUES (20, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:53:45', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:53:45\"}', 100, '2021-03-28 13:53:46', '2021-03-28 13:53:46', NULL);
INSERT INTO `example_score` VALUES (21, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:53:54', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:53:54\"}', 100, '2021-03-28 13:53:55', '2021-03-28 13:53:55', NULL);
INSERT INTO `example_score` VALUES (22, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:55:53', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:55:53\"}', 50, '2021-03-28 13:55:54', '2021-03-28 13:55:54', NULL);
INSERT INTO `example_score` VALUES (23, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:56:11', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:56:11\"}', 100, '2021-03-28 13:56:12', '2021-03-28 13:56:12', NULL);
INSERT INTO `example_score` VALUES (24, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:57:3', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:57:3\"}', 100, '2021-03-28 13:57:04', '2021-03-28 13:57:04', NULL);
INSERT INTO `example_score` VALUES (25, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:57:13', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:57:13\"}', 100, '2021-03-28 13:57:13', '2021-03-28 13:57:13', NULL);
INSERT INTO `example_score` VALUES (26, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:57:17', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:57:17\"}', 100, '2021-03-28 13:57:17', '2021-03-28 13:57:17', NULL);
INSERT INTO `example_score` VALUES (27, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:57:24', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"D.11点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:57:24\"}', 0, '2021-03-28 13:57:25', '2021-03-28 13:57:25', NULL);
INSERT INTO `example_score` VALUES (28, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:59:18', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:59:18\"}', 100, '2021-03-28 13:59:19', '2021-03-28 13:59:19', NULL);
INSERT INTO `example_score` VALUES (29, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:59:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:59:23\"}', 100, '2021-03-28 13:59:23', '2021-03-28 13:59:23', NULL);
INSERT INTO `example_score` VALUES (30, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 13:59:28', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 13:59:28\"}', 100, '2021-03-28 13:59:29', '2021-03-28 13:59:29', NULL);
INSERT INTO `example_score` VALUES (31, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 14:0:41', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:0:41\"}', 50, '2021-03-28 14:00:42', '2021-03-28 14:00:42', NULL);
INSERT INTO `example_score` VALUES (32, 'example_2167740470', 'admin', 'admin', '测试2', '2021-03-28 14:4:50', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2167740470\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:4:50\"}', 33, '2021-03-28 14:04:51', '2021-03-28 14:04:51', NULL);
INSERT INTO `example_score` VALUES (33, 'example_2167740470', 'admin', 'admin', '测试2', '2021-03-28 14:6:24', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2167740470\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:6:24\"}', 33, '2021-03-28 14:06:25', '2021-03-28 14:06:25', NULL);
INSERT INTO `example_score` VALUES (34, 'example_2823890790', 'admin', 'admin', '测试2', '2021-03-28 14:8:6', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:8:6\"}', 100, '2021-03-28 14:08:06', '2021-03-28 14:08:06', NULL);
INSERT INTO `example_score` VALUES (35, 'example_2823890790', 'admin', 'admin', '测试2', '2021-03-28 14:8:15', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"A.8点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:8:15\"}', 66, '2021-03-28 14:08:15', '2021-03-28 14:08:15', NULL);
INSERT INTO `example_score` VALUES (36, 'example_2823890790', 'admin', 'admin', '测试2', '2021-03-28 14:8:23', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:8:23\"}', 0, '2021-03-28 14:08:23', '2021-03-28 14:08:23', NULL);
INSERT INTO `example_score` VALUES (37, 'example_757332288', 'admin', 'admin', '公司上下班时间考试', '2021-03-28 14:8:45', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:8:45\"}', 50, '2021-03-28 14:08:45', '2021-03-28 14:08:45', NULL);
INSERT INTO `example_score` VALUES (38, 'example_2823890790', 'admin', 'admin', '测试2', '2021-03-28 14:8:54', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:8:54\"}', 33, '2021-03-28 14:08:54', '2021-03-28 14:08:54', NULL);
INSERT INTO `example_score` VALUES (39, 'example_2823890790', 'admin', 'admin', '测试2', '2021-03-28 14:9:39', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"A.8点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"admin\",\"date\":\"2021-03-28 14:9:39\"}', 66, '2021-03-28 14:09:39', '2021-03-28 14:09:39', NULL);
INSERT INTO `example_score` VALUES (42, 'example_757332288', 'H14774', '彭博荣', '公司上下班时间考试', '2021-03-28 16:52:2', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"H14774\",\"staff_name\":\"彭博荣\",\"date\":\"2021-03-28 16:52:2\"}', 0, '2021-03-28 16:52:02', '2021-03-28 16:52:02', NULL);
INSERT INTO `example_score` VALUES (43, 'example_2823890790', 'H14774', '彭博荣', '测试2', '2021-03-28 16:53:9', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"H14774\",\"staff_name\":\"彭博荣\",\"date\":\"2021-03-28 16:53:9\"}', 100, '2021-03-28 16:53:09', '2021-03-28 16:53:09', NULL);
INSERT INTO `example_score` VALUES (44, 'example_2823890790', 'admin', '系统管理员', '测试2', '2021-03-28 17:12:50', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-28 17:12:50\"}', 100, '2021-03-28 17:12:50', '2021-03-28 17:12:50', NULL);
INSERT INTO `example_score` VALUES (45, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-03-28 17:43:39', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-28 17:43:39\"}', 0, '2021-03-28 17:43:40', '2021-03-28 17:43:40', NULL);
INSERT INTO `example_score` VALUES (46, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-03-28 17:44:43', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-28 17:44:43\"}', 50, '2021-03-28 17:44:44', '2021-03-28 17:44:44', NULL);
INSERT INTO `example_score` VALUES (47, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-03-28 17:46:10', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-28 17:46:10\"}', 50, '2021-03-28 17:46:11', '2021-03-28 17:46:11', NULL);
INSERT INTO `example_score` VALUES (48, 'example_2823890790', 'H14774', '彭博荣', '测试2', '2021-03-28 18:5:34', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"H14774\",\"staff_name\":\"彭博荣\",\"date\":\"2021-03-28 18:5:34\"}', 100, '2021-03-28 18:05:34', '2021-03-28 18:05:34', NULL);
INSERT INTO `example_score` VALUES (49, 'example_757332288', 'H14774', '彭博荣', '公司上下班时间考试', '2021-03-28 18:07:50', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"H14774\",\"staff_name\":\"彭博荣\",\"date\":\"2021-03-28 18:07:50\"}', 50, '2021-03-28 18:07:50', '2021-03-28 18:07:50', NULL);
INSERT INTO `example_score` VALUES (50, 'example_2823890790', 'H22024', '李罁\0', '测试2', '2021-03-28 18:13:24', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"H22024\",\"staff_name\":\"李罁\\u0000\",\"date\":\"2021-03-28 18:13:24\"}', 100, '2021-03-28 18:13:25', '2021-03-28 18:13:25', NULL);
INSERT INTO `example_score` VALUES (51, 'example_2823890790', 'H22024', '李罁\0', '测试2', '2021-03-28 18:13:36', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"H22024\",\"staff_name\":\"李罁\\u0000\",\"date\":\"2021-03-28 18:13:36\"}', 100, '2021-03-28 18:13:37', '2021-03-28 18:13:37', NULL);
INSERT INTO `example_score` VALUES (52, 'example_2823890790', 'H22024', '李罁\0', '测试2', '2021-03-28 18:14:35', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"3\":\"B.软件\",\"name\":\"测试2\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"H22024\",\"staff_name\":\"李罁\\u0000\",\"date\":\"2021-03-28 18:14:35\"}', 100, '2021-03-28 18:14:35', '2021-03-28 18:14:35', NULL);
INSERT INTO `example_score` VALUES (53, 'example_757332288', 'H22024', '李催', '公司上下班时间考试', '2021-03-28 18:16:31', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"H22024\",\"staff_name\":\"李催\",\"date\":\"2021-03-28 18:16:31\"}', 0, '2021-03-28 18:16:32', '2021-03-28 18:16:32', NULL);
INSERT INTO `example_score` VALUES (54, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-03-29 10:52:37', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-29 10:52:37\"}', 50, '2021-03-29 10:52:38', '2021-03-29 10:52:38', NULL);
INSERT INTO `example_score` VALUES (55, 'example_757332288', 'H14774', '彭博荣', '公司上下班时间考试', '2021-03-29 11:48:36', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"H14774\",\"staff_name\":\"彭博荣\",\"date\":\"2021-03-29 11:48:36\"}', 100, '2021-03-29 11:48:36', '2021-03-29 11:48:36', NULL);
INSERT INTO `example_score` VALUES (56, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-03-29 22:10:50', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-29 22:10:50\"}', 0, '2021-03-29 22:10:50', '2021-03-29 22:10:50', NULL);
INSERT INTO `example_score` VALUES (57, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-03-29 22:12:26', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-03-29 22:12:26\"}', 0, '2021-03-29 22:12:27', '2021-03-29 22:12:27', NULL);
INSERT INTO `example_score` VALUES (58, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-04-09 15:57:35', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"D.11点\",\"2\":\"A.8点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-09 15:57:35\"}', 0, '2021-04-09 15:57:35', '2021-04-09 15:57:35', NULL);
INSERT INTO `example_score` VALUES (59, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-04-09 15:57:49', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-09 15:57:49\"}', 50, '2021-04-09 15:57:49', '2021-04-09 15:57:49', NULL);
INSERT INTO `example_score` VALUES (60, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-04-09 15:57:58', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"C.10点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-09 15:57:58\"}', 50, '2021-04-09 15:57:59', '2021-04-09 15:57:59', NULL);
INSERT INTO `example_score` VALUES (61, 'example_757332288', 'admin', '系统管理员', '公司上下班时间考试', '2021-04-09 15:58:08', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"name\":\"公司上下班时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-09 15:58:08\"}', 100, '2021-04-09 15:58:09', '2021-04-09 15:58:09', NULL);
INSERT INTO `example_score` VALUES (62, 'example_757332288', 'admin', '系统管理员', '作息时间考试', '2021-04-10 20:36:31', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"A.8点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"C.10点\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"name\":\"作息时间考试\",\"example_id\":\"example_757332288\",\"limit\":\"1\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"A.8点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"C.10点\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-10 20:36:31\"}', 50, '2021-04-10 20:36:31', '2021-04-10 20:36:31', NULL);
INSERT INTO `example_score` VALUES (63, 'example_2823890790', 'admin', '系统管理员', '职能通识考试', '2021-04-27 18:27:35', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"A.8点\",\"2\":\"C.10点\",\"3\":\"B.软件\",\"name\":\"职能通识考试\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-27 18:27:35\"}', 33, '2021-04-27 18:27:35', '2021-04-27 18:27:35', NULL);
INSERT INTO `example_score` VALUES (64, 'example_2823890790', 'admin', '系统管理员', '职能通识考试', '2021-04-27 18:27:46', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"A.8点\",\"2\":\"D.11点\",\"3\":\"B.软件\",\"name\":\"职能通识考试\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-27 18:27:46\"}', 33, '2021-04-27 18:27:46', '2021-04-27 18:27:46', NULL);
INSERT INTO `example_score` VALUES (65, 'example_2823890790', 'admin', '系统管理员', '职能通识考试', '2021-04-27 18:27:57', '[{\"Num\":1,\"Title\":\"公司上班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":2,\"Title\":\"公司下班时间\",\"Items\":[\"A.8点\",\"B.9点\",\"C.10点\",\"D.11点\"],\"Ans\":\"B.9点\"},{\"Num\":3,\"Title\":\"哪个职业开发软件\",\"Items\":[\"A.硬件\",\"B.软件\",\"C.产品\",\"D.测试\"],\"Ans\":\"B.软件\"}]', '{\"1\":\"B.9点\",\"2\":\"C.10点\",\"3\":\"B.软件\",\"name\":\"职能通识考试\",\"example_id\":\"example_2823890790\",\"limit\":\"10\",\"content\":\"[{\\\"Num\\\":1,\\\"Title\\\":\\\"公司上班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":2,\\\"Title\\\":\\\"公司下班时间\\\",\\\"Items\\\":[\\\"A.8点\\\",\\\"B.9点\\\",\\\"C.10点\\\",\\\"D.11点\\\"],\\\"Ans\\\":\\\"B.9点\\\"},{\\\"Num\\\":3,\\\"Title\\\":\\\"哪个职业开发软件\\\",\\\"Items\\\":[\\\"A.硬件\\\",\\\"B.软件\\\",\\\"C.产品\\\",\\\"D.测试\\\"],\\\"Ans\\\":\\\"B.软件\\\"}]\",\"staff_id\":\"admin\",\"staff_name\":\"系统管理员\",\"date\":\"2021-04-27 18:27:57\"}', 66, '2021-04-27 18:27:57', '2021-04-27 18:27:57', NULL);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notice_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '通知Id',
  `notice_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '通知标题',
  `notice_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '通知内容',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '通知类别',
  `date` datetime(0) NOT NULL COMMENT '通知时间',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (5, 'notice_3041297091', '公司培训通知', '<p style=\"text-align: center;\"><b>公司培训通知</b></p><p style=\"text-align: left;\"><b>2020年3月8日早上8点进行公司XX培训，特此通知<img src=\"http://localhost:8888/static/lib/layui-v2.5.5/images/face/0.gif\" alt=\"[微笑]\"></b></p>', '培训通知', '2020-03-08 08:00:00', '2021-03-24 11:31:36', '2021-04-16 16:32:20', NULL);
INSERT INTO `notification` VALUES (17, 'notice_2225559911', '广州总部通知', '<p style=\"text-align: center;\">广州总部培训通知</p>', '新闻通知', '2021-04-17 08:00:00', '2021-04-17 16:42:39', '2021-05-26 20:06:25', NULL);
INSERT INTO `notification` VALUES (18, 'notice_1946314826', '公司培训通知[紧急]', 'test', '紧急通知', '2021-05-27 08:00:00', '2021-05-27 13:03:34', '2021-05-27 13:03:34', '2021-05-27 13:03:39');

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rank_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职级id',
  `rank_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES (3, 'rank_3404026447', '技术总监', '2021-02-15 21:43:28', '2021-02-15 21:43:28', NULL);
INSERT INTO `rank` VALUES (6, 'rank_32826814', '软件开发工程师', '2021-02-21 15:31:11', '2021-03-21 13:07:27', NULL);
INSERT INTO `rank` VALUES (7, 'rank_1110616701', '人力资源专员', '2021-03-23 10:10:23', '2021-03-23 10:10:23', NULL);

-- ----------------------------
-- Table structure for recruitment
-- ----------------------------
DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE `recruitment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `recruitment_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '招聘信息Id',
  `job_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '招聘岗位名称',
  `job_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位类型',
  `base_location` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作地点',
  `base_salary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '基本薪资范围',
  `edu_level` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学历要求',
  `experience` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作经验要求',
  `describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位描述',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '投递邮箱',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recruitment
-- ----------------------------
INSERT INTO `recruitment` VALUES (2, 'recruitment_2145777255', '软件开发工程师', '软件研发类', '深圳', '20k-30k', '本科及以上', '1-3年', '1、有2年以上java开发经验，熟悉SpringBoot框架开发使用，JAVA基础扎实，有一定的多线程知识。\n2、精通linux操作，熟悉网络、IO、内存等监控排查手段\n3、熟悉Mysql/mongodb/redis相关操作使用，能够熟练使用Mybaits或者JPA操作数据库，开发相应功能\n4、能够使用脚本语言（Python/shell/..）等开发更佳\n5、有Mongodb、Redis、nginx、ansible经验更佳，有Elasticsearch、kafka有相关经验更佳', '1378789620@qq.com', '2021-03-26 16:53:29', '2021-03-26 16:56:28', NULL);
INSERT INTO `recruitment` VALUES (3, 'recruitment_1226723876', '人力资源专员', '业务岗', '广州', '3k-10k', '博士及以上', '1年', '1、主导人力资源信息化系统的整体实施建设，汇总人力资源各模块需求，协助解决HR各模块业务优化及个性化需求；\n2、结合日常业务发展需要，评估并执行对HR系统提出优化升级思路并跟进IT实施；\n3、掌握一定数据分析方法，推进人力资源多业务平台之间的数据打通与复用，用数据分析结论支撑决策。\n4、建设人力资源应用数据可视化平台，包括但不限于管理者驾驶舱，数据仪表盘，数据报告体系等。\n5、博士', 'gdutarong@163.com', '2021-03-26 17:29:49', '2021-03-26 17:35:16', NULL);

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `salary_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工资表ID',
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工Id',
  `staff_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工姓名',
  `base` int(11) NOT NULL COMMENT '基础薪资',
  `subsidy` int(11) NOT NULL COMMENT '住房补贴',
  `bonus` int(11) NOT NULL COMMENT '绩效奖金',
  `commission` int(11) NOT NULL COMMENT '提成奖金',
  `fund` int(11) NOT NULL COMMENT '是否交五险一金，1交2不交',
  `other` int(11) NOT NULL COMMENT '其他奖金',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES (4, 'salary_60993633', 'H14774', '彭博荣', 8000, 1500, 500, 500, 1, 0, '2021-03-25 18:06:20', '2021-04-14 12:16:08', NULL);
INSERT INTO `salary` VALUES (5, 'salary_record_2369205688', 'H22024', '王明', 10000, 1000, 1000, 0, 2, 500, '2021-03-25 20:46:48', '2021-04-10 19:36:11', NULL);

-- ----------------------------
-- Table structure for salary_record
-- ----------------------------
DROP TABLE IF EXISTS `salary_record`;
CREATE TABLE `salary_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `salary_record_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工资单ID',
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工Id',
  `staff_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工姓名',
  `base` int(11) NOT NULL COMMENT '基础薪资',
  `subsidy` int(11) NOT NULL COMMENT '住房补贴',
  `bonus` int(11) NOT NULL COMMENT '绩效奖金',
  `commission` int(11) NOT NULL COMMENT '提成薪资',
  `other` int(11) NOT NULL COMMENT '其他薪资',
  `pension_insurance` decimal(10, 2) NOT NULL COMMENT '需缴养老保险',
  `unemployment_insurance` decimal(10, 2) NOT NULL COMMENT '需缴纳失业保险',
  `medical_insurance` decimal(10, 2) NOT NULL COMMENT '需缴医疗保险',
  `housing_fund` decimal(10, 2) NOT NULL COMMENT '需缴住房公积金',
  `tax` decimal(10, 2) NOT NULL COMMENT '需缴个人所得税',
  `overtime` int(11) NOT NULL COMMENT '加班薪资',
  `total` decimal(10, 2) NOT NULL COMMENT '实发薪资',
  `is_pay` int(11) NOT NULL COMMENT '是否已发放工资',
  `salary_date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '记薪周期,202103',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary_record
-- ----------------------------
INSERT INTO `salary_record` VALUES (3, 'salary_record_2656319223', 'H14774', '彭博荣', 29998, 0, 0, 996, 71, 711.00, 71.00, 11.00, 22.00, 13.00, 1333, 1313.00, 2, '2021-03', '2021-03-25 21:49:29', '2021-04-13 22:29:22', NULL);
INSERT INTO `salary_record` VALUES (4, 'salary_record_2357640762', 'H22024', '王明', 9438, 1000, 800, 1001, 500, 133.01, 13.01, 1.12, 1.00, 633.10, 1696, 12801.21, 2, '2021-03', '2021-03-25 21:59:21', '2021-04-14 19:27:10', NULL);
INSERT INTO `salary_record` VALUES (7, 'salary_record_2069524191', 'H14774', '彭博荣', 7191, 1500, 300, 500, 0, 862.00, 21.00, 215.31, 1293.00, 129.00, 1292, 8263.00, 2, '2021-02', '2021-04-14 15:24:40', '2021-04-14 16:35:42', NULL);
INSERT INTO `salary_record` VALUES (8, 'salary_record_3640967126', 'H14774', '彭博荣', 6831, 1500, 500, 500, 0, 795.00, 19.00, 198.00, 1193.00, 82.00, 614, 7658.00, 2, '2021-01', '2021-04-14 16:47:10', '2021-04-14 16:48:13', NULL);
INSERT INTO `salary_record` VALUES (11, 'salary_record_2477462112', 'H14774', '彭博荣', 7550, 1500, 400, 500, 0, 850.24, 21.26, 212.56, 1275.36, 116.86, 678, 8151.73, 2, '2021-05', '2021-05-27 14:24:30', '2021-05-27 14:25:28', NULL);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工ID',
  `staff_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '员工姓名',
  `leader_staff_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上级员工工号',
  `leader_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上级员工名称',
  `birthday` date NOT NULL COMMENT '生日',
  `identity_num` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号',
  `sex` int(11) NOT NULL COMMENT '性别；1男，0女',
  `nation` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '民族',
  `school` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '毕业院校',
  `major` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '毕业专业',
  `edu_level` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学历',
  `base_salary` int(11) NOT NULL COMMENT '基本工资',
  `card_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行卡号',
  `rank_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '职位ID',
  `dep_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门ID',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电子邮箱',
  `phone` bigint(20) NOT NULL COMMENT '手机号',
  `entry_date` date NOT NULL COMMENT '入职日期',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 'root', '超级管理员', NULL, NULL, '1999-05-21', '-1', 1, '-1', '-1', '-1', '-1', -1, '-1', '-1', '-1', '-1', -1, '2021-01-02', NULL, NULL, NULL);
INSERT INTO `staff` VALUES (2, 'admin', '系统管理员', NULL, NULL, '1999-05-21', '-1', 1, '-1', '-1', '-1', '-1', -1, '-1', '-1', '-1', '-1', -1, '2021-01-02', NULL, NULL, NULL);
INSERT INTO `staff` VALUES (11, 'H14774', '彭博荣', 'H22024', '王明', '1999-05-21', '433334199905215517', 1, '汉族', '清华大学', '机械设计制造及其自动化', '本科', 5996, '611116161115151515', 'rank_32826814', 'dep_1322682358', 'gdutarong2@161.com', 15521306934, '2021-02-24', '2021-03-13 14:40:56', '2021-04-15 11:00:16', NULL);
INSERT INTO `staff` VALUES (17, 'H14466', '李丽', NULL, NULL, '1999-05-21', '433334199905215500', 2, '汉族', '清华大学', '网络工程', '博士', 5000, '611116161115151515', 'rank_1110616701', 'dep_1460851561', 'gdutarong@163.com', 18823042440, '2021-02-24', '2021-03-23 10:12:30', '2021-04-10 19:05:32', NULL);
INSERT INTO `staff` VALUES (18, 'H22024', '王明', 'H14466', '李丽', '1999-05-21', '433333199905215517', 1, '汉族', '清华大学', '计算机', '本科及以上', 4500, '611116161115151515', 'rank_3404026447', 'dep_2547022224', 'gdutarong@163.com', 19927454324, '2021-01-02', '2021-03-28 18:11:35', '2021-04-15 11:03:10', NULL);
INSERT INTO `staff` VALUES (26, 'H27826', '李华', 'H14774', '彭博荣', '1997-02-27', '433334199905215333', 1, '汉族', '清华大学', '机械自动化', '博士', 19900, '611116161115151515', 'rank_3404026447', 'dep_2547022224', '1378789620@qq.com', 15521306932, '2021-04-17', '2021-04-17 16:55:04', '2021-05-27 13:03:12', NULL);

SET FOREIGN_KEY_CHECKS = 1;
