/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - e-shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `e-shop`;

/*Table structure for table `addvalet` */

DROP TABLE IF EXISTS `addvalet`;

CREATE TABLE `addvalet` (
  `userid` varchar(100) DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addvalet` */





CREATE TABLE `orderdetails` (
  `orderid` int AUTO_INCREMENT, 
 
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `semail` varchar(100) default null,
  `paystatus` varchar(100) default null,
  primary key(orderid)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



  CREATE TABLE `cartitems` (
  `email` varchar(100) DEFAULT NULL,
  `pname` varchar(1000) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,  
  `status` varchar(100) DEFAULT NULL,
  `semail` varchar(100) default null,
  `paystatus` varchar(100) default null  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table orderitems;
 CREATE TABLE `orderitems` (
  `orderid` int , 
  `pname` varchar(1000) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*Data for the table `product` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `pnumber` int(11) DEFAULT NULL,
  `bimage` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `orgimage` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`pnumber`,`bimage`,`pname`,`description`,`orgimage`,`image`,`price`,`status`,`rating`) values (8309,'barcode-code128-signs-symbol-business-barcodes-barcode-code128-png-jYbTic-clipart.png','Watch','make your life happy','book3.png','partner-4.png','778','approved','5'),(112333,'product-12.jpg','Shoes','uhui','image_5.jpg','image_5.jpg','567','pending','5');

/*Table structure for table `raiting` */

DROP TABLE IF EXISTS `raiting`;

CREATE TABLE `raiting` (
  `pid` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `raiting` varchar(500) DEFAULT NULL,
  `tt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `raiting` */

insert  into `raiting`(`pid`,`email`,`raiting`,`tt`) values ('8309','rafiq@gmail.com','3','good');

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `orga` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `bnum` varchar(200) DEFAULT NULL,
  `logo` blob,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seller` */





/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `zip` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */


/*Table structure for table `useraddress` */

DROP TABLE IF EXISTS `useraddress`;

CREATE TABLE `useraddress` (
  `fname` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mno` varchar(1000) DEFAULT NULL, 
  `uemail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `useraddress` */


