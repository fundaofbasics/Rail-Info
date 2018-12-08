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

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `train_no` varchar(11) NOT NULL,
  `1A` varchar(11) default NULL,
  `2A` varchar(11) default NULL,
  `3A` varchar(11) default NULL,
  `SL` varchar(11) default NULL,
  `CC` varchar(11) default NULL,
  `2S` varchar(11) default NULL,
  PRIMARY KEY  (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `class` */

insert  into `class`(`train_no`,`1A`,`2A`,`3A`,`SL`,`CC`,`2S`) values ('12141','1A','2A','3A','SL','',''),('12955','','2A','3A','SL','',''),('12975','1A','2A','3A','SL','',''),('22981','','2A','3A','SL','',''),('54811','','','','SL','',''),('59081','','2A','3A','SL','','');

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

/*Table structure for table `cust_info` */

DROP TABLE IF EXISTS `cust_info`;

CREATE TABLE `cust_info` (
  `cid` varchar(55) NOT NULL,
  `pwd` varchar(11) default NULL,
  `name` varchar(66) default NULL,
  `gen` varchar(44) default NULL,
  `phno` varchar(44) default NULL,
  `add` varchar(100) default NULL,
  `crno` varchar(22) default NULL,
  `seqqsn` varchar(111) default NULL,
  `ans` varchar(111) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cust_info` */

/*Table structure for table `fare` */

DROP TABLE IF EXISTS `fare`;

CREATE TABLE `fare` (
  `t_no` varchar(9) default NULL,
  `date` varchar(12) default NULL,
  `src` varchar(123) default NULL,
  `dest` varchar(123) default NULL,
  `class` varchar(123) default NULL,
  `age` varchar(123) default NULL,
  `quota` varchar(123) default NULL,
  `cons` varchar(345) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fare` */

insert  into `fare`(`t_no`,`date`,`src`,`dest`,`class`,`age`,`quota`,`cons`) values ('12975',NULL,'Indore','Jaipur',NULL,NULL,NULL,NULL),('54811',NULL,'Jaipur','Indore',NULL,NULL,NULL,NULL),('22631',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12681',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12645',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('59801',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `name` varchar(111) default NULL,
  `email` varchar(111) default NULL,
  `mob` varchar(11) default NULL,
  `comment` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`name`,`email`,`mob`,`comment`) values ('Rahul','rahul2041gupta@gmail.com','8829994175','hey'),('Rahul','rahul2041gupta@gmail.com','8829994175','vbn');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) default NULL,
  `uid` varchar(123) default NULL,
  `pass` varchar(123) default NULL,
  `utype` varchar(123) default NULL,
  `status` varchar(12) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`uid`,`pass`,`utype`,`status`) values (962424,'123','dev','user','false'),(855625,'123','dev','user','false'),(723767,'123','dev','user','false'),(767558,'123','dev','user','false'),(383482,'123','dev','user','false'),(833117,'123','dev','user','false'),(538173,'123','dev','user','false'),(239422,'123','dev','user','false'),(574934,'123','123','user','false'),(187597,'Rahul2041','devdev','user','true');

/*Table structure for table `pastmp` */

DROP TABLE IF EXISTS `pastmp`;

CREATE TABLE `pastmp` (
  `pasname` varchar(66) NOT NULL,
  `age` int(11) default NULL,
  `gen` varchar(11) default NULL,
  PRIMARY KEY  (`pasname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pastmp` */

/*Table structure for table `pnr` */

DROP TABLE IF EXISTS `pnr`;

CREATE TABLE `pnr` (
  `pnr` int(11) default NULL,
  `tno` int(11) default NULL,
  `tname` varchar(111) default NULL,
  `date` varchar(111) default NULL,
  `class` varchar(11) default NULL,
  `bs` varchar(22) default NULL,
  `quota` varchar(111) default NULL,
  `name` varchar(55) default NULL,
  `sex` varchar(11) default NULL,
  `age` varchar(11) default NULL,
  `cs` varchar(11) default NULL,
  `coach` varchar(22) default NULL,
  `berth` int(11) default NULL,
  `to` varchar(111) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pnr` */

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

insert  into `register`(`id`,`sq`,`ans`,`fn`,`mn`,`ln`,`em`,`mob`,`hom`,`dob`,`gen`,`mary`,`occ`,`ad`,`pan`,`nat`,`add`,`con`,`pin`,`stat`,`city`) values (962424,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(855625,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(723767,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(767558,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(383482,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(833117,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(538173,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(239422,'-1','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','1/null/1930','male','married','0','','','94','kota','94','326529','raj','kota'),(574934,'0','sa','a','a','a','rahul2041gupta@gmail.com','8829994175','kota','2/null/1930','female','married','0','','','1','qw','94','326529','raj','kota'),(187597,'What is your pet name?','dev','Rahul','Kumar','Gupta','rahul2041gupta@gmail.com','8829994175','Kota','4/6/1994','male','unmarried','Student','362514252625','45AS5VD5A4','94','Kota','94','326529','Rajasthan','Ramganj Mandi');

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `pnrno` varchar(22) NOT NULL,
  `jrdate` date default NULL,
  `resdate` date default NULL,
  `noprs` int(11) default NULL,
  `trno` int(11) default NULL,
  `class` varchar(11) default NULL,
  `src` varchar(66) default NULL,
  `dest` varchar(66) default NULL,
  `totfare` int(22) default NULL,
  PRIMARY KEY  (`pnrno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reservation` */

/*Table structure for table `reservation_details` */

DROP TABLE IF EXISTS `reservation_details`;

CREATE TABLE `reservation_details` (
  `pnrno` varchar(22) NOT NULL,
  `pasname` varchar(66) default NULL,
  `age` int(11) default NULL,
  `gen` varchar(55) default NULL,
  `seatno` varchar(50) default NULL,
  PRIMARY KEY  (`pnrno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reservation_details` */

/*Table structure for table `run` */

DROP TABLE IF EXISTS `run`;

CREATE TABLE `run` (
  `tno` int(11) default NULL,
  `run` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `run` */

/*Table structure for table `trains` */

DROP TABLE IF EXISTS `trains`;

CREATE TABLE `trains` (
  `train_no` int(10) NOT NULL,
  `train_name` varchar(50) default NULL,
  `frm` varchar(60) default NULL,
  `to` varchar(60) default NULL,
  `dept` varchar(60) default NULL,
  `arr` varchar(60) default NULL,
  `dist` varchar(11) default NULL,
  `tt` varchar(11) default NULL,
  `t_type` varchar(60) default NULL,
  PRIMARY KEY  (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trains` */

insert  into `trains`(`train_no`,`train_name`,`frm`,`to`,`dept`,`arr`,`dist`,`tt`,`t_type`) values (12141,'BPL JU PASS','KOTA','JAIPUR','02:55','09:10','240','06:15','PASSENGER'),(12955,'RANTHAMBORE EXP','KOTA','JAIPUR','23:50','04:35','240','04:45','EXPRESS'),(12975,'JAIPUR EXPRESS','KOTA','JAIPUR','01:55','06:15	','240','04:20','EXPRESS'),(22981,'DAYODAYA EXPRESS','KOTA','JAIPUR','17:20','21:35','240','	04:15','EXPRESS'),(54811,'KOTA SGNR SF EX','KOTA','JAIPUR','06:30','10:45','240','04:15','SUPERFAST'),(59081,'KOTA JAIPUR PASS','KOTA','JAIPUR','07:40','11:50','240','04:10','PASSENGER');

/*Table structure for table `trainsbst` */

DROP TABLE IF EXISTS `trainsbst`;

CREATE TABLE `trainsbst` (
  `train_no` int(11) NOT NULL,
  `stname` varchar(66) default NULL,
  `artime` varchar(44) default NULL,
  `deptime` varchar(44) default NULL,
  `dist` int(44) default NULL,
  `fare` int(11) default NULL,
  PRIMARY KEY  (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trainsbst` */

insert  into `trainsbst`(`train_no`,`stname`,`artime`,`deptime`,`dist`,`fare`) values (12973,'Jaipur',NULL,'21:05',NULL,NULL),(12974,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tt` */

DROP TABLE IF EXISTS `tt`;

CREATE TABLE `tt` (
  `tno` int(11) default NULL,
  `tname` varchar(123) default NULL,
  `sn` int(11) default NULL,
  `scode` varchar(11) default NULL,
  `sname` varchar(123) default NULL,
  `arr` varchar(11) default NULL,
  `dep` varchar(11) default NULL,
  `ht` varchar(11) default NULL,
  `dist` varchar(11) default NULL,
  `day` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tt` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
