/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - rail
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`rail` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rail`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `usename` varchar(111) default NULL,
  `password` varchar(111) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`usename`,`password`) values ('admin','admin');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(111) default NULL,
  `email` varchar(111) NOT NULL,
  `mob` varchar(11) default NULL,
  `sub` varchar(111) default NULL,
  `msg` varchar(300) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`email`,`mob`,`sub`,`msg`) values ('Rahul Kumar Gupta','rahul2041gupta@gmail.com','8829994175','Rahul','Rahul');

/*Table structure for table `fare` */

DROP TABLE IF EXISTS `fare`;

CREATE TABLE `fare` (
  `t_no` varchar(9) default NULL,
  `src` varchar(123) default NULL,
  `dest` varchar(123) default NULL,
  `ss` varchar(111) default NULL,
  `gen` varchar(123) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fare` */

insert  into `fare`(`t_no`,`src`,`dest`,`ss`,`gen`) values ('12975','Indore','Jaipur','250','200'),('54811','Jaipur','Indore','250','200'),('22631','Kota','Jaipur','100','80'),('12681','jaipur','kota','100','80'),('12645','kota','indore','180','150'),('59801','indore','kota','180','150');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `name` varchar(111) default NULL,
  `email` varchar(111) default NULL,
  `mob` varchar(11) default NULL,
  `comment` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`name`,`email`,`mob`,`comment`) values ('Rahul','rahul@gmail.com','8829994175','yes');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uid` varchar(123) default NULL,
  `pass` varchar(123) default NULL,
  `utype` varchar(123) default NULL,
  `status` varchar(12) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`uid`,`pass`,`utype`,`status`) values (695863,'dev2041','devdev','user','true');

/*Table structure for table `new` */

DROP TABLE IF EXISTS `new`;

CREATE TABLE `new` (
  `account` varchar(111) NOT NULL,
  `uname` varchar(111) NOT NULL,
  `pass` varchar(111) default NULL,
  `atm` varchar(20) NOT NULL,
  `cvv` varchar(5) NOT NULL,
  `amount` varchar(11) default NULL,
  `phone` varchar(11) default NULL,
  `email` varchar(111) default NULL,
  PRIMARY KEY  (`account`,`uname`,`atm`,`cvv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `new` */

insert  into `new`(`account`,`uname`,`pass`,`atm`,`cvv`,`amount`,`phone`,`email`) values ('12957462645','dharam','veer','1736244768894499','354','580','9983022876','dharam.gurjarbandhu.03@gmail.com'),('15456264175','RahulGupta','devdev','4399656553339167','191','200','08829994175','rahul2041gupta@gmail.com'),('26124292346','dev','dev','9714997512837496','287','200','08829994175','rahul2041gupta@gmail.com'),('61326966168','Rahul','dev','8831788119237341','639','400','08829994175','rahul2041gupta@gmail.com');

/*Table structure for table `pnr` */

DROP TABLE IF EXISTS `pnr`;

CREATE TABLE `pnr` (
  `pnrn` varchar(11) default NULL,
  `tno` varchar(11) default NULL,
  `tname` varchar(111) default NULL,
  `from` varchar(111) default NULL,
  `to` varchar(111) default NULL,
  `date` varchar(14) default NULL,
  `name` varchar(55) default NULL,
  `age` varchar(11) default NULL,
  `sex` varchar(111) default NULL,
  `berth` varchar(11) default NULL,
  `nation` varchar(111) default NULL,
  `id` varchar(111) default NULL,
  `idn` varchar(111) default NULL,
  `fare` varchar(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pnr` */

insert  into `pnr`(`pnrn`,`tno`,`tname`,`from`,`to`,`date`,`name`,`age`,`sex`,`berth`,`nation`,`id`,`idn`,`fare`) values ('9319886269','12955','RANTHAMBORE','KOTA','JAIPUR','19-11-2016','Rahul','21','Male','22','IN','DRIVING_LICENSE','12345','200');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(11) default NULL,
  `sq` varchar(222) default NULL,
  `ans` varchar(123) default NULL,
  `fn` varchar(123) default NULL,
  `mn` varchar(123) default NULL,
  `ln` varchar(123) default NULL,
  `em` varchar(123) default NULL,
  `mob` varchar(123) default NULL,
  `hom` varchar(123) default NULL,
  `dob` varchar(123) default NULL,
  `gen` varchar(123) default NULL,
  `mary` varchar(123) default NULL,
  `occ` varchar(123) default NULL,
  `ad` varchar(123) default NULL,
  `pan` varchar(123) default NULL,
  `nat` varchar(123) default NULL,
  `add` varchar(123) default NULL,
  `con` varchar(123) default NULL,
  `pin` varchar(123) default NULL,
  `stat` varchar(123) default NULL,
  `city` varchar(123) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`sq`,`ans`,`fn`,`mn`,`ln`,`em`,`mob`,`hom`,`dob`,`gen`,`mary`,`occ`,`ad`,`pan`,`nat`,`add`,`con`,`pin`,`stat`,`city`) values (695863,'What is your pet name?','tomy','Rahul','Kumar','Gupta','rahul2041gupta@gmail.com','8829994175','Kota','4/6/1994','male','unmarried','Student','962332046626','45AS5VD5A4','94','Kota','94','326529','Rajasthan','Ramganj Mandi');

/*Table structure for table `trains` */

DROP TABLE IF EXISTS `trains`;

CREATE TABLE `trains` (
  `train_no` varchar(10) NOT NULL,
  `train_name` varchar(50) default NULL,
  `frm` varchar(60) default NULL,
  `too` varchar(60) default NULL,
  `dept` varchar(60) default NULL,
  `arr` varchar(60) default NULL,
  `dist` varchar(11) default NULL,
  `tt` varchar(11) default NULL,
  `t_type` varchar(60) default NULL,
  `fare` varchar(23) default NULL,
  PRIMARY KEY  (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trains` */

insert  into `trains`(`train_no`,`train_name`,`frm`,`too`,`dept`,`arr`,`dist`,`tt`,`t_type`,`fare`) values ('12141','BPL JU PASS','KOTA','JAIPUR','02:55','09:10','240','06:15','PASSENGER','120'),('12955','RANTHAMBORE EXP','KOTA','JAIPUR','23:50','04:35','240','04:45','EXPRESS','200'),('12975','JAIPUR EXPRESS','KOTA','JAIPUR','01:55','06:15	','240','04:20','EXPRESS','200'),('22981','DAYODAYA EXPRESS','KOTA','JAIPUR','17:20','21:35','240','	04:15','EXPRESS','200'),('54811','KOTA SGNR SF EX','KOTA','JAIPUR','06:30','10:45','240','04:15','SUPERFAST','250'),('59081','KOTA JAIPUR PASS','KOTA','JAIPUR','07:40','11:50','240','04:10','PASSENGER','120');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
