-- ----------------------------
-- Table `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4),
  `sex` int(11),
  `native_place` varchar(300),
  `email` varchar(60),
  `phone` varchar(30),
  `address` varchar(300),
  `unit` varchar(200),
  `create_by` date,
  PRIMARY KEY (`id`)
);