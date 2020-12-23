/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : college

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 07/03/2019 10:24:02
*/

-- ----------------------------
-- 字典表
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`(
  `ID` varchar(32) NOT NULL DEFAULT '0' COMMENT '主键',
  `NAME` varchar(100) COMMENT '名称',
  `CODE` varchar(100) COMMENT '编码',
  `GROUP` varchar(100) COMMENT '组',
  `DESC` varchar(500) COMMENT '描述',
  `ORDER` varchar(10) COMMENT '排序',
  `STATE` char(1) COMMENT '是否启用，0不启用，1启用',
  `CREATOR_ID` varchar(32) COMMENT '创建者ID',
  `CREATE_TIME` datetime(0) COMMENT '创建时间',
  `UPDATER_ID` varchar(32) COMMENT '更新者ID',
  `UPDATE_TIME` datetime(0) COMMENT '更新时间',
  PRIMARY KEY (`ID`)  
) ;

-- ----------------------------
-- 日志表
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`(
  `ID` varchar(32) NOT NULL DEFAULT '0' COMMENT 'ID',
  `sys_name` varchar(100) COMMENT '系统名称',
  `user_id` varchar(100) COMMENT '用户ID',
  `menu` varchar(200) COMMENT '操作页面',
  `opt_detail` varchar(350) COMMENT '操作详情',
  `url_type` varchar(150) COMMENT '请求类型：get,post,转发，重定向',
  `url` varchar(150) COMMENT '请求url',
  `params` varchar(150) COMMENT '请求参数',
  `response` varchar(150) COMMENT '响应概要',
  `OPT_TIME` date COMMENT '操作时间',
  `type` char(1) COMMENT '类型：0错误日志，1操作日志',
  PRIMARY KEY (`ID`)
) ;

-- ----------------------------
-- 用户表
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `USERNAME` varchar(255) COMMENT '用户名',
  `LOGINNAME` varchar(255) COMMENT '登录名称',
  `PASSWORD` varchar(32) COMMENT '密码',
  `SEX` char(1) COMMENT '性别：0女，1男',
  `ID_CARD` varchar(18) COMMENT '身份证号',
  `PHONE` varchar(20) COMMENT '手机号',
  `MOBILE` varchar(18) COMMENT '电话号码',
  `EMAIL` varchar(100) COMMENT '名称',
  `CREATOR_ID` varchar(32) COMMENT '创建者ID',
  `CREATE_TIME` date COMMENT '创建时间',
  `UPDATER_ID` varchar(32) COMMENT '更新者ID',
  `UPDATE_TIME` date COMMENT '更新时间',
  `STATE` char(1) COMMENT '状态：0：正常，1锁定，2未启用，3异常',
  `REMARK` varchar(1000) COMMENT '备注',
  `ORG_ID` varchar(100) COMMENT '所属机构',
  `DEL` char(1) COMMENT '是否删除：0否，1是',
  PRIMARY KEY (`ID`)  
);

-- ----------------------------
-- 角色表
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `ROLE_ID` varchar(32) COMMENT 'ID',
  `ROLE_NAME` varchar(255) COMMENT '角色名称',
  `STATE` char(1) COMMENT '状态：0：正常，1未启用',
  `ORG_ID` varchar(255) COMMENT '所属机构',
  `CREATOR_ID` varchar(32) COMMENT '创建者ID',
  `CREATE_TIME` date COMMENT '创建时间',
  `UPDATER_ID` varchar(32) COMMENT '更新者ID',
  `UPDATE_TIME` date COMMENT '更新时间',
  `REMARK` varchar(4000) COMMENT '备注',
  PRIMARY KEY (`ROLE_ID`)
);

-- ----------------------------
-- 权限表
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `ID` varchar(32) COMMENT 'ID',
  `NAME` varchar(255) COMMENT '权限名称',
  `CODE` varchar(255) COMMENT '权限代码',
   PERMISSION  varchar(64) COMMENT '权限代码:add,update,view,delete',
  `PARENT_ID` varchar(32) COMMENT '上级ID',
  `URL` varchar(4000) COMMENT '页面URL',
  `ICON_CLS` varchar(255) COMMENT '图标',
  `TYPE` char(1)  COMMENT '类型：0页面，1菜单，2按钮',
  `CREATOR_ID` varchar(32) COMMENT '创建者ID',
  `CREATE_TIME` date COMMENT '创建时间',
  `UPDATER_ID` varchar(32) COMMENT '更新者ID',
  `UPDATE_TIME` date COMMENT '更新时间',
  `STATE` char(1) COMMENT '状态：0：正常，1未启用',
  `REMARK` varchar(4000)  COMMENT '备注',
  PRIMARY KEY (`ID`)
);

-- ----------------------------
-- 角色权限表
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `ROLE_ID` varchar(32) COMMENT '角色ID',
  `PERMISSION_ID` varchar(32) COMMENT '权限ID',
  `STATE` char(2) COMMENT '状态：0：正常，1未启用',
  `REMARK` varchar(300) COMMENT '备注',
  INDEX `FK_ROLE_ID`(`ROLE_ID`),
  INDEX `FK_PERMISSION_ID`(`PERMISSION_ID`),
  CONSTRAINT `FK_PERMISSION_ID` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `sys_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- 用户角色表
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `USER_ID` varchar(32) COMMENT '用户ID',
  `ROLE_ID` varchar(32) COMMENT '角色ID',
  `STATE` char(1) COMMENT '状态：0：正常，1未启用',
  `REMARK` varchar(300) COMMENT '备注',
  INDEX `FK_USER_ROLE_ID`(`ROLE_ID`),
  INDEX `FK_User_ID`(`USER_ID`),
  CONSTRAINT `FK_USER_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_User_ID` FOREIGN KEY (`USER_ID`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0', '超级管理员角色', '1', '', '999999', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Records of sys_user
-- ----------------------------
-- admin/1
INSERT INTO `sys_user` VALUES ('0', '超级管理员', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '1', '370112199009022222', '15712345678', '0531-77777777', '143@ww.com1112', 0, '20200202', NULL, NULL, 0, '密码：1', '800', '0');

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('0', '0', '1', null);


