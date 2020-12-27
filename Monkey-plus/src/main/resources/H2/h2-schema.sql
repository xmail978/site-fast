-- ----------------------------
-- Table `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(20) NOT NULL COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `nickname` varchar(15) DEFAULT NULL COMMENT '昵称',
  `email` varchar(15) DEFAULT NULL COMMENT '邮箱',
  `number` varchar(15) DEFAULT NULL COMMENT 'Q号码',
  `password` varchar(25) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int(11) DEFAULT NULL COMMENT '状态：0 锁定、 1 正常',
  PRIMARY KEY (`id`)
) COMMENT='用户信息表';