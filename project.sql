/*
SQLyog Community v11.31 (64 bit)
MySQL - 5.0.67-community-nt : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project`;

/*Table structure for table `quiz` */

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `quizid` int(11) NOT NULL,
  `quiz` varchar(50) default NULL,
  PRIMARY KEY  (`quizid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `quiz` */

insert  into `quiz`(`quizid`,`quiz`) values (1,'SoftwareEng');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `rid` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `userans` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  PRIMARY KEY  (`rid`),
  KEY `usrans` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

/*Data for the table `result` */

insert  into `result`(`rid`,`userid`,`userans`,`status`) values (99,1612292,'',''),(100,1612292,'','');

/*Table structure for table `softanswers` */

DROP TABLE IF EXISTS `softanswers`;

CREATE TABLE `softanswers` (
  `answerid` int(11) NOT NULL,
  `questionid` int(11) default NULL,
  `correctans` varchar(200) default NULL,
  PRIMARY KEY  (`answerid`),
  KEY `soft_ques_ans` (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `softanswers` */

insert  into `softanswers`(`answerid`,`questionid`,`correctans`) values (1,1,'Project Management Activity'),(2,2,'SoftwareProcess'),(3,3,'ProcessFramework'),(4,4,'Actitvity'),(9,9,'SoftDevLifeCycle'),(8,8,'5phase'),(7,7,'old system'),(6,6,'EmergencyFixed'),(5,5,'RapidApplicationDev');

/*Table structure for table `softquestion` */

DROP TABLE IF EXISTS `softquestion`;

CREATE TABLE `softquestion` (
  `questionid` int(11) NOT NULL,
  `question` varchar(50) default NULL,
  `opt1` varchar(200) default NULL,
  `opt2` varchar(200) default NULL,
  `opt3` varchar(200) default NULL,
  `opt4` varchar(200) default NULL,
  `quizid` int(11) default NULL,
  PRIMARY KEY  (`questionid`),
  KEY `softques_quiz` (`quizid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `softquestion` */

insert  into `softquestion`(`questionid`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`quizid`) values (1,'What is Risk Management','Process Model','Process Framework','Project Management Activity','Project Framework',1),(2,'What is Software','SoftwareProcess','SoftwareModel','SoftwareProcessModel','SoftwareModule',1),(3,'What is Process Management','ProcessModel','ProcessFramework','ProcessActivity','ProcessModule',1),(4,'What is Waterfall','Model','Process','Framework','Actitvity',1),(5,'RAD stands for','RapidApplicationDev','RapidAppSystem','RaidAppSystem','RaidAppDev',1),(6,'What is softwarepatch','CriticalFix','EmergencyFixed','RoutineFix','None',1),(7,'What are legacy systems','new system','old system','underdevsystem','None',1),(8,'RAD model has','2phase','3phase','4phase','5phase',1),(9,'SDLC stands for','SoftDevLifeCycle','SysDevLifeCycle','SoftDesignLifeCycle','SysDesignLifeCyc',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`userid`,`password`) values (101,'admin'),(1612292,'sana');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
