# Sequel Pro dump
# Version 663
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.0.41)
# Database: silverstripe_book_11
# Generation Time: 2009-07-10 17:06:37 +1200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ArchiveWidget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ArchiveWidget`;

CREATE TABLE `ArchiveWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `DisplayMode` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `ArchiveWidget` WRITE;
/*!40000 ALTER TABLE `ArchiveWidget` DISABLE KEYS */;
INSERT INTO `ArchiveWidget` (`ID`,`DisplayMode`)
VALUES
	(3,'month'),
	(6,'month');

/*!40000 ALTER TABLE `ArchiveWidget` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Article`;

CREATE TABLE `Article` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Article') character set utf8 default 'Article',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table BlogEntry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry`;

CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogEntry` WRITE;
/*!40000 ALTER TABLE `BlogEntry` DISABLE KEYS */;
INSERT INTO `BlogEntry` (`ID`,`Date`,`Author`,`Tags`)
VALUES
	(5,'2009-06-27 12:47:08',NULL,'silverstripe, blog'),
	(16,'2009-06-27 17:05:02',NULL,'silverstripe, blog');

/*!40000 ALTER TABLE `BlogEntry` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogEntry_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry_Live`;

CREATE TABLE `BlogEntry_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogEntry_Live` WRITE;
/*!40000 ALTER TABLE `BlogEntry_Live` DISABLE KEYS */;
INSERT INTO `BlogEntry_Live` (`ID`,`Date`,`Author`,`Tags`)
VALUES
	(5,'2009-06-27 12:47:08',NULL,'silverstripe, blog'),
	(16,'2009-06-27 17:05:02',NULL,'silverstripe, blog');

/*!40000 ALTER TABLE `BlogEntry_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogEntry_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry_versions`;

CREATE TABLE `BlogEntry_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogEntry_versions` WRITE;
/*!40000 ALTER TABLE `BlogEntry_versions` DISABLE KEYS */;
INSERT INTO `BlogEntry_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`Date`,`Author`,`Tags`)
VALUES
	(1,5,1,0,0,0,'2009-06-27 12:47:08',NULL,'silverstripe, blog'),
	(2,16,1,0,1,0,'2009-06-27 17:05:02',NULL,'silverstripe, blog');

/*!40000 ALTER TABLE `BlogEntry_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogHolder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogHolder`;

CREATE TABLE `BlogHolder` (
  `ID` int(11) NOT NULL auto_increment,
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogHolder` WRITE;
/*!40000 ALTER TABLE `BlogHolder` DISABLE KEYS */;
INSERT INTO `BlogHolder` (`ID`,`LandingPageFreshness`,`Name`,`TrackBacksEnabled`,`SideBarID`)
VALUES
	(4,NULL,NULL,0,1),
	(15,NULL,NULL,0,2);

/*!40000 ALTER TABLE `BlogHolder` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogHolder_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogHolder_Live`;

CREATE TABLE `BlogHolder_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogHolder_Live` WRITE;
/*!40000 ALTER TABLE `BlogHolder_Live` DISABLE KEYS */;
INSERT INTO `BlogHolder_Live` (`ID`,`LandingPageFreshness`,`Name`,`TrackBacksEnabled`,`SideBarID`)
VALUES
	(4,NULL,NULL,0,1),
	(15,NULL,NULL,0,2);

/*!40000 ALTER TABLE `BlogHolder_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogHolder_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogHolder_versions`;

CREATE TABLE `BlogHolder_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogHolder_versions` WRITE;
/*!40000 ALTER TABLE `BlogHolder_versions` DISABLE KEYS */;
INSERT INTO `BlogHolder_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`LandingPageFreshness`,`Name`,`TrackBacksEnabled`,`SideBarID`)
VALUES
	(1,4,1,0,0,0,NULL,NULL,0,1),
	(2,15,1,0,1,0,NULL,NULL,0,2);

/*!40000 ALTER TABLE `BlogHolder_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Client
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Client`;

CREATE TABLE `Client` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Client') character set utf8 default 'Client',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ClientNumber` int(11) NOT NULL default '0',
  `FirstName` mediumtext character set utf8,
  `LastName` mediumtext character set utf8,
  `Birthday` date default NULL,
  `ClientCategoryID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ClientCategoryID` (`ClientCategoryID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` (`ID`,`ClassName`,`Created`,`LastEdited`,`ClientNumber`,`FirstName`,`LastName`,`Birthday`,`ClientCategoryID`)
VALUES
	(1,'Client','2009-06-28 13:55:32','2009-06-28 13:55:32',11,'John','Doe','1982-06-23',1),
	(2,'Client','2009-06-28 13:55:32','2009-06-28 13:55:32',12,'Jane','Test','1999-12-31',1),
	(3,'Client','2009-06-28 13:55:32','2009-06-28 13:55:32',13,'Joshua','Check',NULL,2);

/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ClientCategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ClientCategory`;

CREATE TABLE `ClientCategory` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('ClientCategory') character set utf8 default 'ClientCategory',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `ClientCategory` WRITE;
/*!40000 ALTER TABLE `ClientCategory` DISABLE KEYS */;
INSERT INTO `ClientCategory` (`ID`,`ClassName`,`Created`,`LastEdited`,`Title`)
VALUES
	(1,'ClientCategory','2009-06-28 13:55:32','2009-06-28 13:55:32','Privatkunde'),
	(2,'ClientCategory','2009-06-28 13:55:32','2009-06-28 13:55:32','EinkÃƒÂ¤ufer');

/*!40000 ALTER TABLE `ClientCategory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Email_BounceRecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Email_BounceRecord`;

CREATE TABLE `Email_BounceRecord` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Email_BounceRecord') character set utf8 default 'Email_BounceRecord',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `BounceEmail` varchar(50) character set utf8 default NULL,
  `BounceTime` datetime default NULL,
  `BounceMessage` varchar(50) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table ErrorPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage`;

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` (`ID`,`ErrorCode`)
VALUES
	(6,404),
	(17,404);

/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_Live`;

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table ErrorPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_versions`;

CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ErrorCode`)
VALUES
	(1,6,1,0,0,0,404),
	(2,17,1,0,1,0,404);

/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('File','Image','Folder','Page_BannerImage','Image_Cached') character set utf8 default 'File',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `Filename` varchar(255) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  `OwnerID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Filename`,`Title`,`Content`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



# Dump of table GhostPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GhostPage`;

CREATE TABLE `GhostPage` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table GhostPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GhostPage_Live`;

CREATE TABLE `GhostPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table GhostPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GhostPage_versions`;

CREATE TABLE `GhostPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group`;

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Group') character set utf8 default 'Group',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Description` mediumtext character set utf8,
  `Code` varchar(50) character set utf8 default NULL,
  `Locked` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `IPRestrictions` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` (`ID`,`ClassName`,`Created`,`LastEdited`,`Title`,`Description`,`Code`,`Locked`,`Sort`,`IPRestrictions`,`ParentID`)
VALUES
	(1,'Group','2009-06-27 12:49:19','2009-06-27 12:49:19','Administrators',NULL,'administrators',0,0,NULL,0);

/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group_Members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group_Members`;

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` (`ID`,`GroupID`,`MemberID`)
VALUES
	(1,1,1);

/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Job`;

CREATE TABLE `Job` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Job') character set utf8 default 'Job',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` mediumtext character set utf8,
  `Description` mediumtext character set utf8,
  `Location` mediumtext character set utf8,
  `ExpiryDate` date default NULL,
  `JobCategoryID` int(11) NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `JobCategoryID` (`JobCategoryID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table JobCategory_Subscribers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `JobCategory_Subscribers`;

CREATE TABLE `JobCategory_Subscribers` (
  `ID` int(11) NOT NULL auto_increment,
  `JobCategoryID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `JobCategoryID` (`JobCategoryID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table LoginAttempt
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LoginAttempt`;

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('LoginAttempt') character set utf8 default 'LoginAttempt',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Email` varchar(255) character set utf8 default NULL,
  `Status` enum('Success','Failure') character set utf8 default 'Success',
  `IP` varchar(255) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Member`;

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Member') character set utf8 default 'Member',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `FirstName` varchar(50) character set utf8 default NULL,
  `Surname` varchar(50) character set utf8 default NULL,
  `Email` varchar(50) character set utf8 default NULL,
  `Password` varchar(64) character set utf8 default NULL,
  `RememberLoginToken` varchar(50) character set utf8 default NULL,
  `NumVisit` int(11) NOT NULL default '0',
  `LastVisited` datetime default NULL,
  `Bounced` tinyint(1) unsigned NOT NULL default '0',
  `AutoLoginHash` varchar(30) character set utf8 default NULL,
  `AutoLoginExpired` datetime default NULL,
  `PasswordEncryption` enum('none','md2','md4','md5','sha1','sha256','sha384','sha512','ripemd128','ripemd160','ripemd256','ripemd320','whirlpool','snefru','gost','adler32','crc32','crc32b','password','old_password') character set utf8 default 'none',
  `Salt` varchar(50) character set utf8 default NULL,
  `PasswordExpiry` date default NULL,
  `LockedOutUntil` datetime default NULL,
  `Locale` varchar(6) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `AutoLoginHash` (`AutoLoginHash`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` (`ID`,`ClassName`,`Created`,`LastEdited`,`FirstName`,`Surname`,`Email`,`Password`,`RememberLoginToken`,`NumVisit`,`LastVisited`,`Bounced`,`AutoLoginHash`,`AutoLoginExpired`,`PasswordEncryption`,`Salt`,`PasswordExpiry`,`LockedOutUntil`,`Locale`)
VALUES
	(1,'Member','2009-06-27 12:49:19','2009-07-10 16:12:39','Admin','Admin','admin','9x79yusi00wgwcs4ccko00o8koso4wc',NULL,4,'2009-07-10 16:47:13',0,NULL,NULL,'sha1','9olcku40mj8cok40gk4swgc0k404csosok4004w',NULL,NULL,'en_US');

/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table MemberPassword
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MemberPassword`;

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('MemberPassword') character set utf8 default 'MemberPassword',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Password` varchar(50) character set utf8 default NULL,
  `Salt` varchar(50) character set utf8 default NULL,
  `PasswordEncryption` varchar(50) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` (`ID`,`ClassName`,`Created`,`LastEdited`,`Password`,`Salt`,`PasswordEncryption`,`MemberID`)
VALUES
	(1,'MemberPassword','2009-06-27 12:49:20','2009-06-27 12:49:20','7xqagypx74kc08sw40cko4wgg4sc4c8','528d0jt21v8cokok4ow8kc008g44owwkowsks8s','sha1',1),
	(2,'MemberPassword','2009-06-27 12:49:39','2009-06-27 12:49:39','9x79yusi00wgwcs4ccko00o8koso4wc','9olcku40mj8cok40gk4swgc0k404csosok4004w','sha1',1);

/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Page`;

CREATE TABLE `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`ID`,`ContextNavMaxPages`,`ContextNavTags`,`ContextNavKeywords`,`LegacyURL`,`BannerImageID`)
VALUES
	(1,10,NULL,NULL,NULL,0),
	(2,10,NULL,NULL,NULL,0),
	(3,0,NULL,NULL,NULL,3),
	(4,10,NULL,NULL,NULL,0),
	(5,10,NULL,NULL,NULL,0),
	(6,10,NULL,NULL,NULL,0),
	(7,10,NULL,NULL,NULL,0),
	(8,10,NULL,NULL,NULL,0),
	(9,10,NULL,NULL,NULL,0),
	(10,10,NULL,NULL,NULL,0),
	(11,10,NULL,NULL,NULL,0),
	(12,10,NULL,NULL,NULL,0),
	(13,10,NULL,NULL,NULL,0),
	(14,10,NULL,NULL,NULL,0),
	(15,10,NULL,NULL,NULL,0),
	(16,10,NULL,NULL,NULL,0),
	(17,10,NULL,NULL,NULL,0),
	(18,10,NULL,NULL,NULL,0),
	(19,10,NULL,NULL,NULL,0),
	(20,10,NULL,NULL,NULL,0),
	(21,10,NULL,NULL,NULL,0),
	(22,10,NULL,NULL,NULL,0),
	(23,10,NULL,NULL,NULL,0),
	(24,10,NULL,NULL,NULL,0),
	(25,10,NULL,NULL,NULL,0),
	(26,10,NULL,NULL,NULL,0),
	(27,10,NULL,NULL,NULL,0),
	(28,10,NULL,NULL,NULL,0),
	(29,10,NULL,NULL,'my-legacy-page.php',0);

/*!40000 ALTER TABLE `Page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table PageComment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PageComment`;

CREATE TABLE `PageComment` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('PageComment') character set utf8 default 'PageComment',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(200) character set utf8 default NULL,
  `Comment` mediumtext character set utf8,
  `IsSpam` tinyint(1) unsigned NOT NULL default '0',
  `NeedsModeration` tinyint(1) unsigned NOT NULL default '0',
  `CommenterURL` varchar(255) character set utf8 default NULL,
  `SessionID` varchar(255) character set utf8 default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Page_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Page_Live`;

CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

LOCK TABLES `Page_Live` WRITE;
/*!40000 ALTER TABLE `Page_Live` DISABLE KEYS */;
INSERT INTO `Page_Live` (`ID`,`ContextNavMaxPages`,`ContextNavTags`,`ContextNavKeywords`,`LegacyURL`,`BannerImageID`)
VALUES
	(1,10,NULL,NULL,NULL,0),
	(2,10,NULL,NULL,NULL,0),
	(3,0,NULL,NULL,NULL,3),
	(4,10,NULL,NULL,NULL,0),
	(5,10,NULL,NULL,NULL,0),
	(7,10,NULL,NULL,NULL,0),
	(8,10,NULL,NULL,NULL,0),
	(9,10,NULL,NULL,NULL,0),
	(11,10,NULL,NULL,NULL,0),
	(12,10,NULL,NULL,NULL,0),
	(13,10,NULL,NULL,NULL,0),
	(15,10,NULL,NULL,NULL,0),
	(16,10,NULL,NULL,NULL,0),
	(18,10,NULL,NULL,NULL,0),
	(19,10,NULL,NULL,NULL,0),
	(20,10,NULL,NULL,NULL,0),
	(22,10,NULL,NULL,NULL,0),
	(21,10,NULL,NULL,NULL,0),
	(23,10,NULL,NULL,NULL,0),
	(24,10,NULL,NULL,NULL,0),
	(25,10,NULL,NULL,NULL,0),
	(26,10,NULL,NULL,NULL,0),
	(27,10,NULL,NULL,NULL,0),
	(28,10,NULL,NULL,NULL,0),
	(29,10,NULL,NULL,'my-legacy-page.php',0);

/*!40000 ALTER TABLE `Page_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Page_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Page_versions`;

CREATE TABLE `Page_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

LOCK TABLES `Page_versions` WRITE;
/*!40000 ALTER TABLE `Page_versions` DISABLE KEYS */;
INSERT INTO `Page_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ContextNavMaxPages`,`ContextNavTags`,`ContextNavKeywords`,`LegacyURL`,`BannerImageID`)
VALUES
	(1,1,1,0,0,0,10,NULL,NULL,NULL,0),
	(2,2,1,0,0,0,10,NULL,NULL,NULL,0),
	(3,3,1,0,0,0,10,NULL,NULL,NULL,0),
	(4,4,1,0,0,0,10,NULL,NULL,NULL,0),
	(5,5,1,0,0,0,10,NULL,NULL,NULL,0),
	(6,6,1,0,0,0,10,NULL,NULL,NULL,0),
	(7,3,2,0,1,0,10,NULL,NULL,NULL,2),
	(8,3,3,0,1,0,10,NULL,NULL,NULL,3),
	(9,3,4,0,1,0,0,NULL,NULL,NULL,3),
	(10,3,5,0,1,0,0,NULL,NULL,NULL,3),
	(11,7,1,0,1,0,10,NULL,NULL,NULL,0),
	(12,7,2,0,1,0,10,NULL,NULL,NULL,0),
	(13,8,1,0,1,0,10,NULL,NULL,NULL,0),
	(14,8,2,0,1,0,10,NULL,NULL,NULL,0),
	(15,9,1,0,1,0,10,NULL,NULL,NULL,0),
	(16,9,2,0,1,0,10,NULL,NULL,NULL,0),
	(17,10,1,0,1,0,10,NULL,NULL,NULL,0),
	(18,10,2,0,1,0,10,NULL,NULL,NULL,0),
	(19,11,1,0,1,0,10,NULL,NULL,NULL,0),
	(20,11,2,0,1,0,10,NULL,NULL,NULL,0),
	(21,12,1,0,1,0,10,NULL,NULL,NULL,0),
	(22,12,2,0,1,0,10,NULL,NULL,NULL,0),
	(23,13,1,0,1,0,10,NULL,NULL,NULL,0),
	(24,13,2,0,1,0,10,NULL,NULL,NULL,0),
	(25,14,1,0,1,0,10,NULL,NULL,NULL,0),
	(26,14,2,0,1,0,10,NULL,NULL,NULL,0),
	(27,15,1,0,1,0,10,NULL,NULL,NULL,0),
	(28,16,1,0,1,0,10,NULL,NULL,NULL,0),
	(29,17,1,0,1,0,10,NULL,NULL,NULL,0),
	(30,18,1,0,1,0,10,NULL,NULL,NULL,0),
	(31,18,2,0,1,0,10,NULL,NULL,NULL,0),
	(32,18,3,0,1,0,10,NULL,NULL,NULL,0),
	(33,19,1,0,1,0,10,NULL,NULL,NULL,0),
	(34,19,2,0,1,0,10,NULL,NULL,NULL,0),
	(35,19,3,0,1,0,10,NULL,NULL,NULL,0),
	(36,20,1,0,1,0,10,NULL,NULL,NULL,0),
	(37,20,2,0,1,0,10,NULL,NULL,NULL,0),
	(38,20,3,0,1,0,10,NULL,NULL,NULL,0),
	(39,21,1,0,1,0,10,NULL,NULL,NULL,0),
	(40,22,1,0,1,0,10,NULL,NULL,NULL,0),
	(41,22,2,0,1,0,10,NULL,NULL,NULL,0),
	(42,22,3,0,1,0,10,NULL,NULL,NULL,0),
	(43,21,2,0,1,0,10,NULL,NULL,NULL,0),
	(44,21,3,0,1,0,10,NULL,NULL,NULL,0),
	(45,23,1,0,1,0,10,NULL,NULL,NULL,0),
	(46,23,2,0,1,0,10,NULL,NULL,NULL,0),
	(47,23,3,0,1,0,10,NULL,NULL,NULL,0),
	(48,24,1,0,1,0,10,NULL,NULL,NULL,0),
	(49,24,2,0,1,0,10,NULL,NULL,NULL,0),
	(50,24,3,0,1,0,10,NULL,NULL,NULL,0),
	(51,25,1,0,1,0,10,NULL,NULL,NULL,0),
	(52,25,2,0,1,0,10,NULL,NULL,NULL,0),
	(53,25,3,0,1,0,10,NULL,NULL,NULL,0),
	(54,26,1,0,1,0,10,NULL,NULL,NULL,0),
	(55,26,2,0,1,0,10,NULL,NULL,NULL,0),
	(56,26,3,0,1,0,10,NULL,NULL,NULL,0),
	(57,27,1,0,1,0,10,NULL,NULL,NULL,0),
	(58,27,2,0,1,0,10,NULL,NULL,NULL,0),
	(59,27,3,0,1,0,10,NULL,NULL,NULL,0),
	(60,28,1,0,1,0,10,NULL,NULL,NULL,0),
	(61,28,2,0,1,0,10,NULL,NULL,NULL,0),
	(62,28,3,0,1,0,10,NULL,NULL,NULL,0),
	(63,29,1,0,1,0,10,NULL,NULL,NULL,0),
	(64,29,2,0,1,0,10,NULL,NULL,'my-legacy-page.php',0),
	(65,29,3,0,1,0,10,NULL,NULL,'my-legacy-page.php',0);

/*!40000 ALTER TABLE `Page_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Permission`;

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Permission') character set utf8 default 'Permission',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Code` varchar(50) character set utf8 default NULL,
  `Arg` int(11) NOT NULL default '0',
  `Type` int(11) NOT NULL default '1',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` (`ID`,`ClassName`,`Created`,`LastEdited`,`Code`,`Arg`,`Type`,`GroupID`)
VALUES
	(1,'Permission','2009-06-27 12:49:19','2009-06-27 12:49:19','ADMIN',0,1,1);

/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table QueuedEmail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QueuedEmail`;

CREATE TABLE `QueuedEmail` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('QueuedEmail') character set utf8 default 'QueuedEmail',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Send` datetime default NULL,
  `Subject` varchar(50) character set utf8 default NULL,
  `From` varchar(50) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `ToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ToID` (`ToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table RSSWidget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RSSWidget`;

CREATE TABLE `RSSWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `RSSTitle` mediumtext character set utf8,
  `RssUrl` mediumtext character set utf8,
  `NumberToShow` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table RedirectorPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage`;

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table RedirectorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage_Live`;

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table RedirectorPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage_versions`;

CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Referrer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Referrer`;

CREATE TABLE `Referrer` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Referrer') character set utf8 default 'Referrer',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URL` mediumtext character set utf8,
  `IsExternal` tinyint(1) unsigned NOT NULL default '0',
  `PageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `PageID` (`PageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

LOCK TABLES `Referrer` WRITE;
/*!40000 ALTER TABLE `Referrer` DISABLE KEYS */;
INSERT INTO `Referrer` (`ID`,`ClassName`,`Created`,`LastEdited`,`URL`,`IsExternal`,`PageID`)
VALUES
	(1,'Referrer','2009-06-27 13:03:27','2009-06-27 13:03:27','http://localhost/ssbook_wiley/11_recipes/admin',0,3),
	(2,'Referrer','2009-06-27 13:03:54','2009-06-27 13:03:54','http://localhost/ssbook_wiley/11_recipes/admin',0,3),
	(3,'Referrer','2009-06-27 13:04:42','2009-06-27 13:04:42','http://localhost/ssbook_wiley/11_recipes/admin',0,3),
	(4,'Referrer','2009-06-27 15:00:43','2009-06-27 15:00:43','http://localhost/ssbook_wiley/11_recipes/SiteTreeImporter/?url=/ssbook_wiley/11_recipes/SiteTreeImporter',0,-1),
	(5,'Referrer','2009-06-27 15:02:33','2009-06-27 15:02:33','http://localhost/ssbook_wiley/11_recipes/SiteTreeImporter/?url=/ssbook_wiley/11_recipes/SiteTreeImporter',0,-1),
	(6,'Referrer','2009-06-27 17:09:55','2009-06-27 17:09:55','http://localhost/ssbook_wiley/11_recipes/',0,11),
	(7,'Referrer','2009-06-27 17:10:11','2009-06-27 17:10:11','http://localhost/ssbook_wiley/11_recipes/',0,11),
	(8,'Referrer','2009-06-27 17:10:24','2009-06-27 17:10:24','http://localhost/ssbook_wiley/11_recipes/',0,11),
	(9,'Referrer','2009-06-27 17:10:31','2009-06-27 17:10:31','http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search',0,11),
	(10,'Referrer','2009-06-27 17:10:35','2009-06-27 17:10:35','http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search&start=3',0,11),
	(11,'Referrer','2009-06-27 17:11:53','2009-06-27 17:11:53','http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search&start=3',0,11),
	(12,'Referrer','2009-06-27 17:12:10','2009-06-27 17:12:10','http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search&start=3',0,11);

/*!40000 ALTER TABLE `Referrer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree`;

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `ExtraMeta` mediumtext character set utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL default '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL default '0',
  `HomepageForDomain` varchar(100) character set utf8 default NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `LegacyURL` varchar(255) character set utf8 default NULL,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL default '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL default '0',
  `Status` varchar(50) character set utf8 default NULL,
  `ReportClass` varchar(50) character set utf8 default NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `TagsText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` (`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`Version`,`TagsText`)
VALUES
	(11,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,2,NULL),
	(12,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','about','About',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,2,NULL),
	(13,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff','Staff',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,12,2,NULL),
	(14,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff-sam','Staff - Sam',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,13,2,NULL),
	(15,'BlogHolder','2009-06-27 17:05:02','2009-06-27 17:05:02','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,1,NULL),
	(16,'BlogEntry','2009-06-27 17:05:02','2009-06-27 17:05:02','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].',NULL,NULL,NULL,NULL,0,1,NULL,1,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,15,1,NULL),
	(17,'ErrorPage','2009-06-27 17:05:02','2009-06-27 17:05:02','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,1,NULL),
	(18,'Page','2009-06-27 17:07:02','2009-06-27 17:07:17','staff-2','Staff',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Staff',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3,NULL),
	(19,'Page','2009-06-27 17:07:21','2009-06-27 17:07:30','sam','Sam',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sam',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(20,'Page','2009-06-27 17:07:36','2009-06-27 17:07:45','tim','Tim',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Tim',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(21,'Page','2009-06-27 17:07:49','2009-06-27 17:08:09','brian','Brian',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Brian',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(22,'Page','2009-06-27 17:07:51','2009-06-27 17:08:01','sig','Sig',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sig',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(23,'Page','2009-06-27 17:08:16','2009-06-27 17:08:23','normann','Normann',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Normann',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(24,'Page','2009-06-27 17:08:30','2009-06-27 17:08:38','michael','Michael',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Michael',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(25,'Page','2009-06-27 17:08:46','2009-06-27 17:08:52','sean','Sean',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sean',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(26,'Page','2009-06-27 17:08:59','2009-06-27 17:09:05','simon','Simon',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Simon',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(27,'Page','2009-06-27 17:09:12','2009-06-27 17:09:20','ingo','Ingo',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Ingo',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(28,'Page','2009-06-27 17:09:27','2009-06-27 17:09:36','komal','Komal',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Komal',NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(29,'Page','2009-06-27 17:22:32','2009-06-27 17:23:16','my-new-page','Legacy URL Test',NULL,'<p></p>','Legacy URL Test',NULL,NULL,NULL,1,1,NULL,0,2,'my-legacy-page.php',0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3,NULL);

/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_EditorGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SiteTree_ImageTracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;

CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `FileID` int(11) NOT NULL default '0',
  `FieldName` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SiteTree_LinkTracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;

CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `ChildID` int(11) NOT NULL default '0',
  `FieldName` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SiteTree_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_Live`;

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `ExtraMeta` mediumtext character set utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL default '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL default '0',
  `HomepageForDomain` varchar(100) character set utf8 default NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `LegacyURL` varchar(255) character set utf8 default NULL,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL default '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL default '0',
  `Status` varchar(50) character set utf8 default NULL,
  `ReportClass` varchar(50) character set utf8 default NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `TagsText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` (`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`Version`,`TagsText`)
VALUES
	(11,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,2,NULL),
	(12,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','about','About',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,2,NULL),
	(13,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff','Staff',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,12,2,NULL),
	(15,'BlogHolder','2009-06-27 17:05:02','2009-06-27 17:05:02','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,1,NULL),
	(16,'BlogEntry','2009-06-27 17:05:02','2009-06-27 17:05:02','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].',NULL,NULL,NULL,NULL,0,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,15,1,NULL),
	(18,'Page','2009-06-27 17:07:02','2009-06-27 17:07:17','staff-2','Staff',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Staff',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3,NULL),
	(19,'Page','2009-06-27 17:07:21','2009-06-27 17:07:30','sam','Sam',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sam',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(20,'Page','2009-06-27 17:07:36','2009-06-27 17:07:45','tim','Tim',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Tim',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(22,'Page','2009-06-27 17:07:51','2009-06-27 17:08:01','sig','Sig',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sig',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(21,'Page','2009-06-27 17:07:49','2009-06-27 17:08:09','brian','Brian',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Brian',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(23,'Page','2009-06-27 17:08:16','2009-06-27 17:08:23','normann','Normann',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Normann',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(24,'Page','2009-06-27 17:08:30','2009-06-27 17:08:38','michael','Michael',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Michael',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(25,'Page','2009-06-27 17:08:46','2009-06-27 17:08:52','sean','Sean',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sean',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(26,'Page','2009-06-27 17:08:59','2009-06-27 17:09:05','simon','Simon',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Simon',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(27,'Page','2009-06-27 17:09:12','2009-06-27 17:09:20','ingo','Ingo',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Ingo',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(28,'Page','2009-06-27 17:09:27','2009-06-27 17:09:36','komal','Komal',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Komal',NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,3,NULL),
	(29,'Page','2009-06-27 17:22:32','2009-06-27 17:23:16','my-new-page','Legacy URL Test',NULL,'<p></p>','Legacy URL Test',NULL,NULL,NULL,1,1,NULL,0,2,'my-legacy-page.php',0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3,NULL);

/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_ViewerGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SiteTree_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_versions`;

CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `ExtraMeta` mediumtext character set utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL default '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL default '0',
  `HomepageForDomain` varchar(100) character set utf8 default NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `LegacyURL` varchar(255) character set utf8 default NULL,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL default '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL default '0',
  `Status` varchar(50) character set utf8 default NULL,
  `ReportClass` varchar(50) character set utf8 default NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `TagsText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`TagsText`)
VALUES
	(1,1,1,1,0,0,'Page','2009-06-27 12:47:07','2009-06-27 12:47:07','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(2,2,1,1,0,0,'Page','2009-06-27 12:47:08','2009-06-27 12:47:08','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(3,3,1,1,0,0,'Page','2009-06-27 12:47:08','2009-06-27 12:47:08','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(4,4,1,1,0,0,'BlogHolder','2009-06-27 12:47:08','2009-06-27 12:47:08','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(5,5,1,1,0,0,'BlogEntry','2009-06-27 12:47:08','2009-06-27 12:47:08','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].',NULL,NULL,NULL,NULL,0,1,NULL,1,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,NULL),
	(6,6,1,0,0,0,'ErrorPage','2009-06-27 12:47:08','2009-06-27 12:47:08','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(7,3,2,0,1,0,'Page','2009-06-27 12:47:08','2009-06-27 13:01:30','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(8,3,3,0,1,0,'Page','2009-06-27 12:47:08','2009-06-27 13:03:06','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(9,3,4,0,1,0,'Page','2009-06-27 12:47:08','2009-06-27 13:07:12','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0,NULL),
	(10,3,5,1,1,1,'Page','2009-06-27 12:47:08','2009-06-27 13:07:12','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(11,7,1,0,1,0,'Page','2009-06-27 15:00:43','2009-06-27 15:00:43','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(12,7,2,1,1,1,'Page','2009-06-27 15:00:43','2009-06-27 15:00:44','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(13,8,1,0,1,0,'Page','2009-06-27 15:00:44','2009-06-27 15:00:44','about','About',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(14,8,2,1,1,1,'Page','2009-06-27 15:00:44','2009-06-27 15:00:44','about','About',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(15,9,1,0,1,0,'Page','2009-06-27 15:00:44','2009-06-27 15:00:44','staff','Staff',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,8,NULL),
	(16,9,2,1,1,1,'Page','2009-06-27 15:00:44','2009-06-27 15:00:44','staff','Staff',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8,NULL),
	(17,10,1,0,1,0,'Page','2009-06-27 15:00:44','2009-06-27 15:00:44','staff-sam','Staff: Sam',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,9,NULL),
	(18,10,2,1,1,1,'Page','2009-06-27 15:00:44','2009-06-27 15:00:44','staff-sam','Staff: Sam',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,9,NULL),
	(19,11,1,0,1,0,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(20,11,2,1,1,1,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(21,12,1,0,1,0,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','about','About',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(22,12,2,1,1,1,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','about','About',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(23,13,1,0,1,0,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff','Staff',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,12,NULL),
	(24,13,2,1,1,1,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff','Staff',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,12,NULL),
	(25,14,1,0,1,0,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff-sam','Staff - Sam',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,13,NULL),
	(26,14,2,1,1,1,'Page','2009-06-27 15:02:33','2009-06-27 15:02:33','staff-sam','Staff - Sam',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,13,NULL),
	(27,15,1,1,1,1,'BlogHolder','2009-06-27 17:05:02','2009-06-27 17:05:02','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(28,16,1,1,1,1,'BlogEntry','2009-06-27 17:05:02','2009-06-27 17:05:02','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].',NULL,NULL,NULL,NULL,0,1,NULL,1,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,15,NULL),
	(29,17,1,0,1,0,'ErrorPage','2009-06-27 17:05:02','2009-06-27 17:05:02','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(30,18,1,0,1,0,'Page','2009-06-27 17:07:02','2009-06-27 17:07:02','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(31,18,2,0,1,0,'Page','2009-06-27 17:07:02','2009-06-27 17:07:17','staff-2','Staff',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Staff',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0,NULL),
	(32,18,3,1,1,1,'Page','2009-06-27 17:07:02','2009-06-27 17:07:17','staff-2','Staff',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Staff',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL),
	(33,19,1,0,1,0,'Page','2009-06-27 17:07:21','2009-06-27 17:07:21','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(34,19,2,0,1,0,'Page','2009-06-27 17:07:21','2009-06-27 17:07:30','sam','Sam',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sam',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(35,19,3,1,1,1,'Page','2009-06-27 17:07:21','2009-06-27 17:07:30','sam','Sam',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sam',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(36,20,1,0,1,0,'Page','2009-06-27 17:07:36','2009-06-27 17:07:36','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(37,20,2,0,1,0,'Page','2009-06-27 17:07:36','2009-06-27 17:07:45','tim','Tim',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Tim',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(38,20,3,1,1,1,'Page','2009-06-27 17:07:36','2009-06-27 17:07:45','tim','Tim',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Tim',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(39,21,1,0,1,0,'Page','2009-06-27 17:07:49','2009-06-27 17:07:49','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(40,22,1,0,1,0,'Page','2009-06-27 17:07:51','2009-06-27 17:07:51','new-page-2','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(41,22,2,0,1,0,'Page','2009-06-27 17:07:51','2009-06-27 17:08:01','sig','Sig',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sig',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(42,22,3,1,1,1,'Page','2009-06-27 17:07:51','2009-06-27 17:08:01','sig','Sig',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sig',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(43,21,2,0,1,0,'Page','2009-06-27 17:07:49','2009-06-27 17:08:09','brian','Brian',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Brian',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(44,21,3,1,1,1,'Page','2009-06-27 17:07:49','2009-06-27 17:08:09','brian','Brian',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Brian',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(45,23,1,0,1,0,'Page','2009-06-27 17:08:16','2009-06-27 17:08:16','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(46,23,2,0,1,0,'Page','2009-06-27 17:08:16','2009-06-27 17:08:23','normann','Normann',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Normann',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(47,23,3,1,1,1,'Page','2009-06-27 17:08:16','2009-06-27 17:08:23','normann','Normann',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Normann',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(48,24,1,0,1,0,'Page','2009-06-27 17:08:30','2009-06-27 17:08:30','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(49,24,2,0,1,0,'Page','2009-06-27 17:08:30','2009-06-27 17:08:38','michael','Michael',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Michael',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(50,24,3,1,1,1,'Page','2009-06-27 17:08:30','2009-06-27 17:08:38','michael','Michael',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Michael',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(51,25,1,0,1,0,'Page','2009-06-27 17:08:46','2009-06-27 17:08:46','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(52,25,2,0,1,0,'Page','2009-06-27 17:08:46','2009-06-27 17:08:52','sean','Sean',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sean',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(53,25,3,1,1,1,'Page','2009-06-27 17:08:46','2009-06-27 17:08:52','sean','Sean',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Sean',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(54,26,1,0,1,0,'Page','2009-06-27 17:08:59','2009-06-27 17:08:59','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(55,26,2,0,1,0,'Page','2009-06-27 17:08:59','2009-06-27 17:09:05','simon','Simon',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Simon',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(56,26,3,1,1,1,'Page','2009-06-27 17:08:59','2009-06-27 17:09:05','simon','Simon',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Simon',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(57,27,1,0,1,0,'Page','2009-06-27 17:09:12','2009-06-27 17:09:12','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(58,27,2,0,1,0,'Page','2009-06-27 17:09:12','2009-06-27 17:09:20','ingo','Ingo',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Ingo',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(59,27,3,1,1,1,'Page','2009-06-27 17:09:12','2009-06-27 17:09:20','ingo','Ingo',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Ingo',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(60,28,1,0,1,0,'Page','2009-06-27 17:09:27','2009-06-27 17:09:27','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,18,NULL),
	(61,28,2,0,1,0,'Page','2009-06-27 17:09:27','2009-06-27 17:09:36','komal','Komal',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Komal',NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,18,NULL),
	(62,28,3,1,1,1,'Page','2009-06-27 17:09:27','2009-06-27 17:09:36','komal','Komal',NULL,'<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>','Komal',NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,NULL),
	(63,29,1,0,1,0,'Page','2009-06-27 17:22:32','2009-06-27 17:22:32','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0,NULL),
	(64,29,2,0,1,0,'Page','2009-06-27 17:22:32','2009-06-27 17:23:16','my-new-page','Legacy URL Test',NULL,'<p></p>','Legacy URL Test',NULL,NULL,NULL,1,1,NULL,0,2,'my-legacy-page.php',0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0,NULL),
	(65,29,3,1,1,1,'Page','2009-06-27 17:22:32','2009-06-27 17:23:16','my-new-page','Legacy URL Test',NULL,'<p></p>','Legacy URL Test',NULL,NULL,NULL,1,1,NULL,0,2,'my-legacy-page.php',0,0,'Published',NULL,'Inherit','Inherit',NULL,0,NULL);

/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TagCloudWidget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TagCloudWidget`;

CREATE TABLE `TagCloudWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Title` varchar(50) character set utf8 default NULL,
  `Limit` int(11) NOT NULL default '0',
  `Sortby` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `TagCloudWidget` WRITE;
/*!40000 ALTER TABLE `TagCloudWidget` DISABLE KEYS */;
INSERT INTO `TagCloudWidget` (`ID`,`Title`,`Limit`,`Sortby`)
VALUES
	(2,'Tag Cloud',0,'alphabet'),
	(5,'Tag Cloud',0,'alphabet');

/*!40000 ALTER TABLE `TagCloudWidget` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TrackBackPing
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TrackBackPing`;

CREATE TABLE `TrackBackPing` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('TrackBackPing') character set utf8 default 'TrackBackPing',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Excerpt` mediumtext character set utf8,
  `Url` varchar(50) character set utf8 default NULL,
  `BlogName` varchar(50) character set utf8 default NULL,
  `PageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `PageID` (`PageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table VirtualPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage`;

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table VirtualPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage_Live`;

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table VirtualPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage_versions`;

CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Widget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Widget`;

CREATE TABLE `Widget` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Widget','ArchiveWidget','BlogManagementWidget','RSSWidget','SubscribeRSSWidget','TagCloudWidget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `Widget` WRITE;
/*!40000 ALTER TABLE `Widget` DISABLE KEYS */;
INSERT INTO `Widget` (`ID`,`ClassName`,`Created`,`LastEdited`,`Sort`,`ParentID`)
VALUES
	(1,'BlogManagementWidget','2009-06-27 12:47:08','2009-06-27 12:47:08',0,1),
	(2,'TagCloudWidget','2009-06-27 12:47:08','2009-06-27 12:47:08',0,1),
	(3,'ArchiveWidget','2009-06-27 12:47:08','2009-06-27 12:47:08',0,1),
	(4,'BlogManagementWidget','2009-06-27 17:05:02','2009-06-27 17:05:02',0,2),
	(5,'TagCloudWidget','2009-06-27 17:05:02','2009-06-27 17:05:02',0,2),
	(6,'ArchiveWidget','2009-06-27 17:05:02','2009-06-27 17:05:02',0,2);

/*!40000 ALTER TABLE `Widget` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WidgetArea
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WidgetArea`;

CREATE TABLE `WidgetArea` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('WidgetArea') character set utf8 default 'WidgetArea',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `WidgetArea` WRITE;
/*!40000 ALTER TABLE `WidgetArea` DISABLE KEYS */;
INSERT INTO `WidgetArea` (`ID`,`ClassName`,`Created`,`LastEdited`)
VALUES
	(1,'WidgetArea','2009-06-27 12:47:08','2009-06-27 12:47:08'),
	(2,'WidgetArea','2009-06-27 17:05:02','2009-06-27 17:05:02');

/*!40000 ALTER TABLE `WidgetArea` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
