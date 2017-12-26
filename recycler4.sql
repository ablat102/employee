/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.6.38-log : Database - recycler
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`recycler` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `recycler`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `admin_name` varchar(50) NOT NULL COMMENT '管理员姓名',
  `admin_password` varchar(50) NOT NULL COMMENT '管理员密码',
  `admin_wechat_id` varchar(30) DEFAULT NULL COMMENT '管理员微信号',
  `admin_phone` varchar(15) DEFAULT NULL COMMENT '管理员手机号',
  `admin_role` int(2) NOT NULL DEFAULT '1' COMMENT '0 后台管理员，1机器管理员，默认为1',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`admin_name`,`admin_password`,`admin_wechat_id`,`admin_phone`,`admin_role`) values (1,'张三','123456','123456','18009293793',0),(2,'王五','123','123','12345',1),(4,'李四','123456','123456','18923',1);

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `log_title` varchar(50) DEFAULT NULL COMMENT '日志标题',
  `log_content` varchar(255) DEFAULT NULL COMMENT '日志内容',
  `create_time` datetime DEFAULT NULL COMMENT '日志创建时间',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员编号',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `log` */

/*Table structure for table `machine` */

DROP TABLE IF EXISTS `machine`;

CREATE TABLE `machine` (
  `machine_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机器id',
  `machine_date` varchar(255) DEFAULT NULL COMMENT '机器名，地名+编号+放置时间',
  `machine_location` varchar(255) DEFAULT NULL COMMENT '机器位置',
  `product_id` int(11) DEFAULT NULL COMMENT '本机器商品',
  `machine_status` int(2) DEFAULT '1' COMMENT '机器状态，0 坏，1好',
  `machine_capacity` int(2) DEFAULT '1' COMMENT '机器满度，0已满，1未满',
  `machine_warning` varchar(255) DEFAULT '无' COMMENT '检测提示',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '机器放置时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`machine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `machine` */

insert  into `machine`(`machine_id`,`machine_date`,`machine_location`,`product_id`,`machine_status`,`machine_capacity`,`machine_warning`,`create_time`,`user_id`) values (1,'012365','西安市南门',1,1,1,'','2017-12-22 10:43:36',2),(2,'456987','西安市钟楼',2,0,0,'门出现故障','2017-12-22 10:50:37',4),(3,'15623','西安市科技路',2,0,1,'电子秤出现问题','2017-12-22 10:57:50',3),(4,'236985','西安市高新4路',3,1,1,'无','2017-12-22 11:00:07',5),(5,'321345','西安市高新4路',3,1,1,'无','2017-12-22 00:00:00',1);

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `orderinfo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `product_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `machine_id` int(11) DEFAULT NULL COMMENT '机器编号',
  `product_photo` varchar(255) DEFAULT NULL COMMENT '物品照片（机器拍照）',
  `order_amount` double(7,2) unsigned NOT NULL COMMENT '订单金额',
  `product_weight` double(10,2) DEFAULT NULL COMMENT '物品重量',
  PRIMARY KEY (`orderinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo` */

insert  into `orderinfo`(`orderinfo_id`,`user_id`,`product_id`,`create_time`,`machine_id`,`product_photo`,`order_amount`,`product_weight`) values (2,2,2,'2017-12-25 10:09:46',1,'2',30.30,NULL),(3,1,2,'2017-12-25 10:09:58',3,'2',1.00,NULL);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品编号',
  `product_name` varchar(50) NOT NULL COMMENT '物品名称',
  `product_picture` varchar(255) DEFAULT NULL COMMENT '物品图片',
  `product_price` double(6,2) DEFAULT NULL COMMENT '物品价格',
  `product_is_used` int(2) DEFAULT '1' COMMENT '物品是否可用，0不可用，1可用',
  `product_weight` double(6,2) DEFAULT '0.05' COMMENT '物品重量',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`product_id`,`product_name`,`product_picture`,`product_price`,`product_is_used`,`product_weight`) values (1,'合金钻头','1.jpg',1.50,0,0.05),(2,'发泡塑料','2.jpg',0.50,1,0.05),(10,'金刚石钻头',NULL,5.00,1,0.05);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_wechat_id` varchar(50) DEFAULT NULL COMMENT '用户微信号',
  `user_phone` varchar(15) DEFAULT NULL COMMENT '用户手机号',
  `user_is_used` int(2) DEFAULT '1' COMMENT '用户是否可用，1可用，0不可用。默认1',
  `user_mony` double(9,2) DEFAULT NULL COMMENT '用户余额',
  `user_alipay_id` varchar(50) DEFAULT NULL COMMENT '用户支付宝账号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_wechat_id`,`user_phone`,`user_is_used`,`user_mony`,`user_alipay_id`,`user_name`,`create_time`) values (1,'asd123','18009293793',0,0.55,'123456','张三','2017-12-21 12:57:22'),(2,'asdasdad123','123123123',1,111111.50,'4679874','李四','2017-12-21 12:58:42'),(3,'啊实打实','2343224',0,0.00,NULL,NULL,'2017-12-21 16:02:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
