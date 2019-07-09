/*
SQLyog v10.2 
MySQL - 5.7.21-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `t_result` (
	`createTime` timestamp ,
	`text` varchar (384),
	`positive_prob` double ,
	`confidence` double ,
	`negative_prob` double ,
	`sentiment` double 
); 
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 12:58:14','你好呀嘻嘻嘻','0.652784','0.228408','0.347216','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 13:00:20','hrllo','1','1','0','1');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 13:00:26','hello','0.551933','0.00429538','0.448067','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 15:16:43','好开心呀','0.766413','0.480918','0.233587','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 15:17:15','一般','0.182667','0.594074','0.817333','0');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 15:17:32','扎心了','0.520691','0.586176','0.479309','1');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 15:17:49','生气','0.230701','0.48733','0.769298','0');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 15:18:00','气炸了','0.169678','0.622937','0.830322','0');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-11 19:24:44','哈哈哈哈','0.734607','0.410238','0.265393','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-12 00:39:07','⊙⊙！','0.568352','0.0407815','0.431648','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-12 00:41:01','嘻嘻','0.865407','0.700904','0.134593','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-12 22:06:20','喜悦','0.560632','0.0236261','0.439368','2');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-12 22:08:14','太高兴了','0.304539','0.323246','0.695461','0');
insert into `t_result` (`createTime`, `text`, `positive_prob`, `confidence`, `negative_prob`, `sentiment`) values('2019-02-12 22:08:50','今天心情真好','0.546976','0.060488','0.453024','1');
