# Sequel Pro dump
# Version 663
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.0.41)
# Database: silverstripe_book_6
# Generation Time: 2009-07-10 17:03:55 +1200
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `ArchiveWidget` WRITE;
/*!40000 ALTER TABLE `ArchiveWidget` DISABLE KEYS */;
INSERT INTO `ArchiveWidget` (`ID`,`DisplayMode`)
VALUES
	(3,'month');

/*!40000 ALTER TABLE `ArchiveWidget` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogEntry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry`;

CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogEntry` WRITE;
/*!40000 ALTER TABLE `BlogEntry` DISABLE KEYS */;
INSERT INTO `BlogEntry` (`ID`,`Date`,`Author`,`Tags`)
VALUES
	(5,'2009-01-17 17:19:00',NULL,'silverstripe, blog');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogEntry_Live` WRITE;
/*!40000 ALTER TABLE `BlogEntry_Live` DISABLE KEYS */;
INSERT INTO `BlogEntry_Live` (`ID`,`Date`,`Author`,`Tags`)
VALUES
	(5,'2009-01-17 17:19:00',NULL,'silverstripe, blog');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogEntry_versions` WRITE;
/*!40000 ALTER TABLE `BlogEntry_versions` DISABLE KEYS */;
INSERT INTO `BlogEntry_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`Date`,`Author`,`Tags`)
VALUES
	(1,5,1,0,0,0,'2009-01-17 17:19:59',NULL,'silverstripe, blog'),
	(2,5,2,0,1,0,'2009-01-17 17:19:00',NULL,'silverstripe, blog'),
	(3,5,3,0,1,0,'2009-01-17 17:19:00',NULL,'silverstripe, blog');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogHolder` WRITE;
/*!40000 ALTER TABLE `BlogHolder` DISABLE KEYS */;
INSERT INTO `BlogHolder` (`ID`,`LandingPageFreshness`,`Name`,`TrackBacksEnabled`,`SideBarID`)
VALUES
	(4,NULL,NULL,0,1);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogHolder_Live` WRITE;
/*!40000 ALTER TABLE `BlogHolder_Live` DISABLE KEYS */;
INSERT INTO `BlogHolder_Live` (`ID`,`LandingPageFreshness`,`Name`,`TrackBacksEnabled`,`SideBarID`)
VALUES
	(4,NULL,NULL,0,1);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `BlogHolder_versions` WRITE;
/*!40000 ALTER TABLE `BlogHolder_versions` DISABLE KEYS */;
INSERT INTO `BlogHolder_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`LandingPageFreshness`,`Name`,`TrackBacksEnabled`,`SideBarID`)
VALUES
	(1,4,1,0,0,0,NULL,NULL,0,1),
	(2,4,2,0,1,0,NULL,NULL,0,1),
	(3,4,3,0,1,0,NULL,NULL,0,1),
	(4,4,4,0,1,0,NULL,NULL,0,1);

/*!40000 ALTER TABLE `BlogHolder_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CollectionPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CollectionPage`;

CREATE TABLE `CollectionPage` (
  `ID` int(11) NOT NULL auto_increment,
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

LOCK TABLES `CollectionPage` WRITE;
/*!40000 ALTER TABLE `CollectionPage` DISABLE KEYS */;
INSERT INTO `CollectionPage` (`ID`,`CollectionModelClass`,`CollectionControllerClass`)
VALUES
	(8,'Developer','CollectionController'),
	(14,'Reference','CollectionController');

/*!40000 ALTER TABLE `CollectionPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CollectionPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CollectionPage_Live`;

CREATE TABLE `CollectionPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

LOCK TABLES `CollectionPage_Live` WRITE;
/*!40000 ALTER TABLE `CollectionPage_Live` DISABLE KEYS */;
INSERT INTO `CollectionPage_Live` (`ID`,`CollectionModelClass`,`CollectionControllerClass`)
VALUES
	(8,'Developer','CollectionController'),
	(14,'Reference','CollectionController');

/*!40000 ALTER TABLE `CollectionPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CollectionPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CollectionPage_versions`;

CREATE TABLE `CollectionPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

LOCK TABLES `CollectionPage_versions` WRITE;
/*!40000 ALTER TABLE `CollectionPage_versions` DISABLE KEYS */;
INSERT INTO `CollectionPage_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`CollectionModelClass`,`CollectionControllerClass`)
VALUES
	(1,8,1,0,1,0,'Developer','CollectionController'),
	(2,8,2,0,1,0,'Developer','CollectionController'),
	(3,14,1,0,1,0,NULL,'CollectionController'),
	(4,14,2,0,1,0,'Reference','CollectionController'),
	(5,14,3,0,1,0,'Reference','CollectionController'),
	(6,8,3,0,1,0,'Developer','CollectionController'),
	(7,8,4,0,1,0,'Developer','CollectionController'),
	(8,14,4,0,1,0,'Reference','CollectionController'),
	(9,14,5,0,1,0,'Reference','CollectionController');

/*!40000 ALTER TABLE `CollectionPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Developer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Developer`;

CREATE TABLE `Developer` (
  `ID` int(11) NOT NULL auto_increment,
  `Region` varchar(200) character set utf8 default NULL,
  `Introduction` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `Developer` WRITE;
/*!40000 ALTER TABLE `Developer` DISABLE KEYS */;
INSERT INTO `Developer` (`ID`,`Region`,`Introduction`)
VALUES
	(3,'Nelson',NULL),
	(2,'Wellington','Rugby for life!'),
	(4,'Wellington, New Zealand',NULL);

/*!40000 ALTER TABLE `Developer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Developer_Skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Developer_Skills`;

CREATE TABLE `Developer_Skills` (
  `ID` int(11) NOT NULL auto_increment,
  `DeveloperID` int(11) NOT NULL default '0',
  `SkillID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `DeveloperID` (`DeveloperID`),
  KEY `SkillID` (`SkillID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `Developer_Skills` WRITE;
/*!40000 ALTER TABLE `Developer_Skills` DISABLE KEYS */;
INSERT INTO `Developer_Skills` (`ID`,`DeveloperID`,`SkillID`)
VALUES
	(2,2,4),
	(3,2,5);

/*!40000 ALTER TABLE `Developer_Skills` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableCheckboxOption
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCheckboxOption`;

CREATE TABLE `EditableCheckboxOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableCheckboxOption') character set utf8 default 'EditableCheckboxOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EditableDropdownOption
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableDropdownOption`;

CREATE TABLE `EditableDropdownOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableDropdownOption') character set utf8 default 'EditableDropdownOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EditableFileField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFileField`;

CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EditableFormField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormField`;

CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableTextField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField') character set utf8 default 'EditableFormField',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `Default` varchar(50) character set utf8 default NULL,
  `Sort` int(11) NOT NULL default '0',
  `Required` tinyint(1) unsigned NOT NULL default '0',
  `CanDelete` tinyint(1) unsigned NOT NULL default '0',
  `CustomParameter` varchar(50) character set utf8 default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `CustomErrorMessage` varchar(255) character set utf8 default NULL,
  `CustomRules` mediumtext character set utf8,
  `CustomSettings` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;
INSERT INTO `EditableFormField` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Required`,`CanDelete`,`CustomParameter`,`ParentID`,`CustomErrorMessage`,`CustomRules`,`CustomSettings`)
VALUES
	(1,'EditableTextField','2009-01-17 17:32:17','2009-07-10 15:08:43','EditableTextField1','Name',NULL,1,1,1,NULL,3,NULL,'a:0:{}','a:5:{s:4:\"Size\";s:2:\"32\";s:9:\"MinLength\";s:1:\"0\";s:9:\"MaxLength\";s:2:\"32\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(2,'EditableEmailField','2009-01-17 17:32:23','2009-07-10 15:08:43','EditableEmailField2','Email address',NULL,2,1,1,NULL,3,NULL,'a:0:{}','a:1:{s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(4,'EditableRadioField','2009-01-17 17:33:05','2009-07-10 15:08:43','EditableRadioField4','Website rating',NULL,3,0,1,NULL,3,NULL,'a:0:{}','a:1:{s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(5,'EditableTextField','2009-01-17 17:33:35','2009-07-10 15:08:43','EditableTextField5','Message',NULL,5,0,1,NULL,3,NULL,'a:0:{}','a:5:{s:4:\"Size\";s:4:\"1024\";s:9:\"MinLength\";s:1:\"0\";s:9:\"MaxLength\";s:4:\"1024\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(6,'EditableDropdown','2009-07-10 15:07:44','2009-07-10 15:08:43','EditableDropdown6','Message type',NULL,4,0,1,NULL,3,NULL,'a:0:{}','a:1:{s:10:\"ShowOnLoad\";s:4:\"Show\";}');

/*!40000 ALTER TABLE `EditableFormField` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableOption
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableOption`;

CREATE TABLE `EditableOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableOption') character set utf8 default 'EditableOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `EditableOption` WRITE;
/*!40000 ALTER TABLE `EditableOption` DISABLE KEYS */;
INSERT INTO `EditableOption` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`ParentID`)
VALUES
	(1,'EditableOption','2009-07-10 15:08:00','2009-07-10 15:08:43','option1','A',0,1,4),
	(2,'EditableOption','2009-07-10 15:08:02','2009-07-10 15:08:43','option2','B',0,2,4),
	(3,'EditableOption','2009-07-10 15:08:04','2009-07-10 15:08:43','option3','C',0,3,4),
	(4,'EditableOption','2009-07-10 15:08:05','2009-07-10 15:08:43','option4','D',0,4,4),
	(5,'EditableOption','2009-07-10 15:08:07','2009-07-10 15:08:43','option5','F',0,5,4),
	(6,'EditableOption','2009-07-10 15:08:12','2009-07-10 15:08:43','option6','Suggestion',0,1,6),
	(7,'EditableOption','2009-07-10 15:08:18','2009-07-10 15:08:43','option7','Error report',0,2,6),
	(8,'EditableOption','2009-07-10 15:08:22','2009-07-10 15:08:43','option8','Question',0,3,6);

/*!40000 ALTER TABLE `EditableOption` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableRadioOption
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableRadioOption`;

CREATE TABLE `EditableRadioOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableRadioOption') character set utf8 default 'EditableRadioOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Value` varchar(50) character set utf8 default NULL,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `EditableRadioOption` WRITE;
/*!40000 ALTER TABLE `EditableRadioOption` DISABLE KEYS */;
INSERT INTO `EditableRadioOption` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Value`,`Sort`,`ParentID`)
VALUES
	(1,'EditableRadioOption','2009-01-17 17:33:54','2009-01-17 17:33:54','option0','Anregung',0,NULL,0,4),
	(2,'EditableRadioOption','2009-01-17 17:33:54','2009-01-17 17:33:54','option0','Kritik',1,NULL,1,4);

/*!40000 ALTER TABLE `EditableRadioOption` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Email_BlackList
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Email_BlackList`;

CREATE TABLE `Email_BlackList` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Email_BlackList') character set utf8 default 'Email_BlackList',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `BlockedEmail` varchar(50) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` (`ID`,`ErrorCode`)
VALUES
	(6,404);

/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_Live`;

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` (`ID`,`ErrorCode`)
VALUES
	(6,404);

/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ErrorCode`)
VALUES
	(1,6,1,0,0,0,404),
	(2,6,2,0,1,0,404),
	(3,6,3,0,1,0,404),
	(4,6,4,0,1,0,404),
	(5,6,5,0,1,0,404);

/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('File','Image','Folder','Reference_ScreenshotImage','Image_Cached') character set utf8 default 'File',
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Filename`,`Content`,`Sort`,`ParentID`,`OwnerID`)
VALUES
	(7,'Reference_ScreenshotImage','2009-07-10 15:28:01','2009-07-10 15:28:01','silverstripe.com.png','silverstripe.com','assets/Uploads/silverstripe.com.png',NULL,0,5,1),
	(6,'Reference_ScreenshotImage','2009-07-10 15:26:23','2009-07-10 15:26:23','silverstripe.org.png','silverstripe.org','assets/Uploads/silverstripe.org.png',NULL,0,5,1),
	(5,'Folder','2009-07-10 15:26:23','2009-07-10 15:26:23','Uploads','Uploads','assets/Uploads/',NULL,0,0,0);

/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` (`ID`,`ClassName`,`Created`,`LastEdited`,`Title`,`Description`,`Code`,`Locked`,`Sort`,`IPRestrictions`,`ParentID`)
VALUES
	(1,'Group','2009-01-17 17:20:32','2009-01-17 17:20:32','Administrators',NULL,'administrators',0,0,NULL,0),
	(2,'Group','2009-01-17 17:40:17','2009-07-10 15:02:17','Editors',NULL,'neue-gruppe',0,0,NULL,0),
	(3,'Group','2009-01-17 17:40:35','2009-07-10 15:02:32','Editor in Chief',NULL,'neue-gruppe',0,0,NULL,2);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` (`ID`,`GroupID`,`MemberID`)
VALUES
	(2,1,1);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
INSERT INTO `Job` (`ID`,`ClassName`,`Created`,`LastEdited`,`Title`,`Description`,`Location`,`ExpiryDate`,`JobCategoryID`,`AuthorID`)
VALUES
	(1,'Job','2009-01-17 17:45:56','2009-01-17 17:48:42','Social Network Datenmodell','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus nunc ullamcorper orci, fermentum bibendum enim nibh eget ipsum. Donec porttitor ligula eu dolor. Maecenas vitae nulla consequat libero cursus venenatis.','London','2010-10-12',9,1),
	(2,'Job','2009-01-17 17:46:24','2009-01-17 17:46:24','Wetter Widget Programmierung','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. ','Paris',NULL,9,1),
	(3,'Job','2009-01-17 17:49:24','2009-01-17 17:49:24','Interface fÃ¼r Mitgliederverwaltung','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus nunc ullamcorper orci, fermentum bibendum enim nibh eget ipsum. Donec porttitor ligula eu dolor. Maecenas vitae nulla consequat libero cursus venenatis.\r\n\r\n','Auckland',NULL,10,1);

/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `JobCategory_Subscribers` WRITE;
/*!40000 ALTER TABLE `JobCategory_Subscribers` DISABLE KEYS */;
INSERT INTO `JobCategory_Subscribers` (`ID`,`JobCategoryID`,`MemberID`)
VALUES
	(1,10,1);

/*!40000 ALTER TABLE `JobCategory_Subscribers` ENABLE KEYS */;
UNLOCK TABLES;


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
  `ClassName` enum('Member','Developer') character set utf8 default 'Member',
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
  `BlacklistedEmail` tinyint(1) unsigned NOT NULL default '0',
  `PasswordEncryption` enum('none','md2','md4','md5','sha1','sha256','sha384','sha512','ripemd128','ripemd160','ripemd256','ripemd320','whirlpool','snefru','gost','adler32','crc32','crc32b','password','old_password') character set utf8 default 'none',
  `Salt` varchar(50) character set utf8 default NULL,
  `PasswordExpiry` date default NULL,
  `LockedOutUntil` datetime default NULL,
  `Locale` varchar(6) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `AutoLoginHash` (`AutoLoginHash`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` (`ID`,`ClassName`,`Created`,`LastEdited`,`FirstName`,`Surname`,`Email`,`Password`,`RememberLoginToken`,`NumVisit`,`LastVisited`,`Bounced`,`AutoLoginHash`,`AutoLoginExpired`,`BlacklistedEmail`,`PasswordEncryption`,`Salt`,`PasswordExpiry`,`LockedOutUntil`,`Locale`)
VALUES
	(1,'Member','2009-01-17 17:20:32','2009-07-10 15:02:46','Admin','Admin','admin','m9x7zgns5zkcs840o0o4gko08kw84gw',NULL,4,'2009-07-10 16:08:58',0,NULL,NULL,0,'sha1','91d4m443o18ogskcg48sk4ww04wccg8o8wgck04',NULL,NULL,'en_US'),
	(2,'Developer','2009-01-17 18:18:48','2009-01-17 18:27:42','Jarrod','McCracken','jarrod@test.com','45kldd3b5mwww4ggsoscwkc8ko0wk04',NULL,5,'2009-01-17 18:28:02',0,NULL,NULL,0,'sha1','6e941iodmm80g0wc4gwcswkoo4ck0gwoocowk4k',NULL,NULL,'de_DE'),
	(3,'Developer','2009-01-17 18:20:59','2009-01-17 18:20:59','Paul','Rauhihi','paul@test.com','o1mftd1ws00w4c8c888kg4kokwgkcss',NULL,0,NULL,0,NULL,NULL,0,'sha1','5b0e5tvv51k44go040go0sg4s8w044ksso0kww',NULL,NULL,'de_DE'),
	(4,'Developer','2009-07-10 15:23:57','2009-07-10 15:24:02','Julian','Seidenberg','julian',NULL,NULL,0,NULL,0,NULL,NULL,0,'none',NULL,NULL,NULL,'en_US');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` (`ID`,`ClassName`,`Created`,`LastEdited`,`Password`,`Salt`,`PasswordEncryption`,`MemberID`)
VALUES
	(1,'MemberPassword','2009-01-17 17:20:32','2009-01-17 17:20:32','m9x7zgns5zkcs840o0o4gko08kw84gw','91d4m443o18ogskcg48sk4ww04wccg8o8wgck04','sha1',1),
	(2,'MemberPassword','2009-01-17 18:19:32','2009-01-17 18:19:32','45kldd3b5mwww4ggsoscwkc8ko0wk04','6e941iodmm80g0wc4gwcswkoo4ck0gwoocowk4k','sha1',2),
	(3,'MemberPassword','2009-01-17 18:20:59','2009-01-17 18:20:59',NULL,NULL,'none',3),
	(4,'MemberPassword','2009-01-17 18:20:59','2009-01-17 18:20:59','o1mftd1ws00w4c8c888kg4kokwgkcss','5b0e5tvv51k44go040go0sg4s8w044ksso0kww','sha1',3),
	(5,'MemberPassword','2009-07-10 15:23:57','2009-07-10 15:23:57',NULL,NULL,'none',4);

/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table MultiFormSession
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MultiFormSession`;

CREATE TABLE `MultiFormSession` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('MultiFormSession') character set utf8 default 'MultiFormSession',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Hash` varchar(40) character set utf8 default NULL,
  `IsComplete` tinyint(1) unsigned NOT NULL default '0',
  `SubmitterID` int(11) NOT NULL default '0',
  `CurrentStepID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SubmitterID` (`SubmitterID`),
  KEY `CurrentStepID` (`CurrentStepID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `MultiFormSession` WRITE;
/*!40000 ALTER TABLE `MultiFormSession` DISABLE KEYS */;
INSERT INTO `MultiFormSession` (`ID`,`ClassName`,`Created`,`LastEdited`,`Hash`,`IsComplete`,`SubmitterID`,`CurrentStepID`)
VALUES
	(1,'MultiFormSession','2009-01-17 18:17:19','2009-01-17 18:18:27','c4623dc3b83e0841e8c43347486b73bb3224690e',0,1,5),
	(2,'MultiFormSession','2009-01-17 18:18:05','2009-01-17 18:18:05','4d95c8e84aaf5583a2ae5bb2ae65ef176cdadd04',0,1,2),
	(3,'MultiFormSession','2009-01-17 18:18:20','2009-01-17 18:18:20','c604f5a9532905d2ef5733685b619bb11dd5655c',0,1,3),
	(4,'MultiFormSession','2009-01-17 18:18:27','2009-01-17 18:18:27','8a14b67e02e27aa1c5f81eb5431e6a26c80e8ecb',0,1,4),
	(5,'MultiFormSession','2009-01-17 18:21:07','2009-01-17 18:21:07','5080f731be3bfba63295ec45ad2449f3a0224df6',0,1,6);

/*!40000 ALTER TABLE `MultiFormSession` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table MultiFormStep
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MultiFormStep`;

CREATE TABLE `MultiFormStep` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('MultiFormStep','RegistrationDetailsStep','RegistrationReferenceStep') character set utf8 default 'MultiFormStep',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Data` mediumtext character set utf8,
  `SessionID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SessionID` (`SessionID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `MultiFormStep` WRITE;
/*!40000 ALTER TABLE `MultiFormStep` DISABLE KEYS */;
INSERT INTO `MultiFormStep` (`ID`,`ClassName`,`Created`,`LastEdited`,`Data`,`SessionID`)
VALUES
	(1,'RegistrationDetailsStep','2009-01-17 18:17:19','2009-01-17 18:18:27','a:7:{s:9:\"FirstName\";s:6:\"Jarrod\";s:7:\"Surname\";s:9:\"McCracken\";s:5:\"Email\";s:15:\"jarrod@test.com\";s:6:\"Region\";s:10:\"Wellington\";s:12:\"Introduction\";s:15:\"Rugby for life!\";s:8:\"Password\";s:4:\"test\";s:6:\"Skills\";s:5:\"Rugby\";}',1),
	(2,'RegistrationDetailsStep','2009-01-17 18:18:05','2009-01-17 18:18:05',NULL,2),
	(3,'RegistrationDetailsStep','2009-01-17 18:18:20','2009-01-17 18:18:20',NULL,3),
	(4,'RegistrationDetailsStep','2009-01-17 18:18:27','2009-01-17 18:18:27',NULL,4),
	(5,'RegistrationReferenceStep','2009-01-17 18:18:27','2009-01-17 18:19:32','a:5:{s:3:\"URL\";s:15:\"http://test.com\";s:5:\"Title\";s:0:\"\";s:13:\"MAX_FILE_SIZE\";s:1:\"0\";s:13:\"action_finish\";s:8:\"Absenden\";s:15:\"ScreenshotImage\";a:5:{s:4:\"name\";s:13:\"gradient1.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:8:\"tmp_name\";s:36:\"/Applications/MAMP/tmp/php/php1UwI1e\";s:5:\"error\";i:0;s:4:\"size\";i:64020;}}',1),
	(6,'RegistrationDetailsStep','2009-01-17 18:21:07','2009-01-17 18:21:07',NULL,5);

/*!40000 ALTER TABLE `MultiFormStep` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table NewMembersWidget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `NewMembersWidget`;

CREATE TABLE `NewMembersWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Limit` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Page`;

CREATE TABLE `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`ID`,`SideBarID`)
VALUES
	(1,5),
	(2,0),
	(3,7),
	(4,1),
	(5,6),
	(6,8),
	(13,2),
	(8,3),
	(14,4),
	(9,9),
	(11,10),
	(12,11);

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
  `ParentID` int(11) NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `SessionID` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Dump of table Page_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Page_Live`;

CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

LOCK TABLES `Page_Live` WRITE;
/*!40000 ALTER TABLE `Page_Live` DISABLE KEYS */;
INSERT INTO `Page_Live` (`ID`,`SideBarID`)
VALUES
	(1,5),
	(2,0),
	(3,7),
	(4,1),
	(5,6),
	(13,2),
	(8,3),
	(14,4),
	(6,8),
	(9,9),
	(11,10),
	(12,11);

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
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

LOCK TABLES `Page_versions` WRITE;
/*!40000 ALTER TABLE `Page_versions` DISABLE KEYS */;
INSERT INTO `Page_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`SideBarID`)
VALUES
	(1,1,1,0,1,0,0),
	(2,2,1,0,1,0,0),
	(3,3,1,0,1,0,0),
	(4,4,1,0,1,0,1),
	(5,5,1,0,1,0,0),
	(6,6,1,0,1,0,0),
	(7,13,1,0,1,0,0),
	(8,13,2,0,1,0,2),
	(9,13,3,0,1,0,2),
	(10,13,4,0,1,0,2),
	(11,13,5,0,1,0,2),
	(12,13,6,0,1,0,2),
	(13,1,2,0,1,0,0),
	(14,8,1,0,1,0,3),
	(15,8,2,0,1,0,3),
	(16,1,3,0,1,0,0),
	(17,14,1,0,1,0,0),
	(18,14,2,0,1,0,4),
	(19,14,3,0,1,0,4),
	(20,1,4,0,1,0,5),
	(21,1,5,0,1,0,5),
	(22,1,6,0,1,0,5),
	(23,1,7,0,1,0,5),
	(24,1,8,0,1,0,5),
	(25,1,9,0,1,0,5),
	(26,5,2,0,1,0,6),
	(27,5,3,0,1,0,6),
	(28,13,7,0,1,0,2),
	(29,13,8,0,1,0,2),
	(30,3,2,0,1,0,7),
	(31,3,3,0,1,0,7),
	(32,3,4,0,1,0,7),
	(33,3,5,0,1,0,7),
	(34,6,2,0,1,0,8),
	(35,6,3,0,1,0,8),
	(36,9,1,0,1,0,9),
	(37,9,2,0,1,0,9),
	(38,11,1,0,1,0,10),
	(39,11,2,0,1,0,10),
	(40,12,1,0,1,0,11),
	(41,12,2,0,1,0,11),
	(42,1,10,0,1,0,5),
	(43,8,3,0,1,0,3),
	(44,8,4,0,1,0,3),
	(45,1,11,0,1,0,5),
	(46,14,4,0,1,0,4),
	(47,14,5,0,1,0,4),
	(48,9,3,0,1,0,9),
	(49,9,4,0,1,0,9),
	(50,1,12,0,1,0,5),
	(51,1,13,0,1,0,5);

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
	(1,'Permission','2009-01-17 17:20:32','2009-01-17 17:20:32','ADMIN',0,1,1);

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



# Dump of table Reference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Reference`;

CREATE TABLE `Reference` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Reference') character set utf8 default 'Reference',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URL` mediumtext character set utf8,
  `Title` varchar(200) character set utf8 default NULL,
  `ScreenshotImageID` int(11) NOT NULL default '0',
  `DeveloperID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ScreenshotImageID` (`ScreenshotImageID`),
  KEY `DeveloperID` (`DeveloperID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `Reference` WRITE;
/*!40000 ALTER TABLE `Reference` DISABLE KEYS */;
INSERT INTO `Reference` (`ID`,`ClassName`,`Created`,`LastEdited`,`URL`,`Title`,`ScreenshotImageID`,`DeveloperID`)
VALUES
	(1,'Reference','2009-01-17 18:19:32','2009-07-10 15:28:14','http://test.com','Test',6,2),
	(2,'Reference','2009-01-17 18:21:40','2009-07-10 15:28:07','http://test.com','test0r',7,4);

/*!40000 ALTER TABLE `Reference` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree`;

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','CollectionPage','JobCategory','JobCategoryHolder','RegistrationPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` (`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`Version`)
VALUES
	(1,'Page','2009-01-17 17:19:58','2009-07-10 15:20:29','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,23),
	(9,'JobCategory','2009-01-17 17:43:14','2009-07-10 15:11:19','programming','Programming',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,7),
	(2,'JobCategoryHolder','2009-01-17 17:19:58','2009-01-17 17:42:55','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),
	(8,'CollectionPage','2009-01-17 17:26:13','2009-07-10 15:10:45','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,10),
	(3,'UserDefinedForm','2009-01-17 17:19:58','2009-07-10 15:08:43','contact-us','Contact Us',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;\">You can fill this page with your own content or delete it and create your own pages.</span></p>\n</div>\n</span></p>','Contact Us',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8),
	(4,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),
	(5,'BlogEntry','2009-01-17 17:19:59','2009-07-10 15:04:03','silverstripe-blog-module-successfully-installed','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].','SilverStripe blog module successfully installed',NULL,NULL,NULL,0,1,NULL,1,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,3),
	(6,'ErrorPage','2009-01-17 17:19:59','2009-07-10 15:09:27','page-not-found','Page not found',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p>\n<p style=\"text-align: left;\">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</div>\n</span></p>','Page not found',NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,5),
	(10,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:26','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),
	(11,'JobCategory','2009-01-17 17:47:33','2009-07-10 15:10:20','index','Index',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,5),
	(12,'JobCategory','2009-01-17 17:47:48','2009-07-10 15:10:34','other','Other',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,5),
	(13,'RegistrationPage','2009-01-17 18:16:50','2009-07-10 15:04:24','register','Register',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8),
	(14,'CollectionPage','2009-01-17 18:25:24','2009-07-10 15:11:04','references','References',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8,5);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` (`ID`,`SiteTreeID`,`ChildID`,`FieldName`)
VALUES
	(23,1,8,'Content'),
	(24,1,2,'Content');

/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_Live`;

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','CollectionPage','JobCategory','JobCategoryHolder','RegistrationPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` (`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`Version`)
VALUES
	(1,'Page','2009-01-17 17:19:58','2009-07-10 15:20:29','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,23),
	(9,'JobCategory','2009-01-17 17:43:14','2009-07-10 15:11:19','programming','Programming',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,7),
	(2,'JobCategoryHolder','2009-01-17 17:19:58','2009-01-17 17:42:57','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),
	(3,'UserDefinedForm','2009-01-17 17:19:58','2009-07-10 15:08:43','contact-us','Contact Us',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;\">You can fill this page with your own content or delete it and create your own pages.</span></p>\n</div>\n</span></p>','Contact Us',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8),
	(4,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),
	(5,'BlogEntry','2009-01-17 17:19:59','2009-07-10 15:04:03','silverstripe-blog-module-successfully-installed','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].','SilverStripe blog module successfully installed',NULL,NULL,NULL,0,1,NULL,1,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,3),
	(8,'CollectionPage','2009-01-17 17:26:13','2009-07-10 15:10:45','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,10),
	(6,'ErrorPage','2009-01-17 17:19:59','2009-07-10 15:09:27','page-not-found','Page not found',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p>\n<p style=\"text-align: left;\">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</div>\n</span></p>','Page not found',NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,5),
	(10,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:27','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),
	(11,'JobCategory','2009-01-17 17:47:33','2009-07-10 15:10:20','index','Index',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,5),
	(12,'JobCategory','2009-01-17 17:47:48','2009-07-10 15:10:34','other','Other',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,5),
	(13,'RegistrationPage','2009-01-17 18:16:50','2009-07-10 15:04:24','register','Register',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8),
	(14,'CollectionPage','2009-01-17 18:25:24','2009-07-10 15:11:04','references','References',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8,5);

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



# Dump of table SiteTree_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_lang`;

CREATE TABLE `SiteTree_lang` (
  `ID` int(11) NOT NULL auto_increment,
  `Lang` varchar(12) character set utf8 default NULL,
  `OriginalLangID` int(11) NOT NULL default '0',
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `Status` varchar(50) character set utf8 default NULL,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','CollectionPage','JobCategory','JobCategoryHolder','RegistrationPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Version` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `OriginalLangID_Lang` (`OriginalLangID`,`Lang`),
  KEY `OriginalLangID` (`OriginalLangID`),
  KEY `Lang` (`Lang`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SiteTree_lang_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_lang_Live`;

CREATE TABLE `SiteTree_lang_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Lang` varchar(12) character set utf8 default NULL,
  `OriginalLangID` int(11) NOT NULL default '0',
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `Status` varchar(50) character set utf8 default NULL,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','CollectionPage','JobCategory','JobCategoryHolder','RegistrationPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Version` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SiteTree_lang_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_lang_versions`;

CREATE TABLE `SiteTree_lang_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Lang` varchar(12) character set utf8 default NULL,
  `OriginalLangID` int(11) NOT NULL default '0',
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `Status` varchar(50) character set utf8 default NULL,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','CollectionPage','JobCategory','JobCategoryHolder','RegistrationPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
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
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','CollectionPage','JobCategory','JobCategoryHolder','RegistrationPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`)
VALUES
	(1,1,1,1,0,0,'Page','2009-01-17 17:19:58','2009-01-17 17:19:58','home','Startseite',NULL,'<p>Willkommen bei SilverStripe! Dies ist die standard Startseite. Sie kÃ¶nnen diese Seite editieren, indem Sie <a href=\"admin/\">das CMS</a> Ã¶ffnen. Sie kÃ¶nnen auÃŸerdem die  <a href=\"http://doc.silverstripe.com\">Entwicker Dokumentation</a> oder die <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">EinfÃ¼hrungskurse und Tutorien</a> aufrufen.<p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(2,2,1,1,0,0,'Page','2009-01-17 17:19:58','2009-01-17 17:19:58','about-us','Ãœber uns',NULL,'<p>Sie kÃ¶nnen diese Seite mit Ihren eigenen Inhalten fÃ¼llen, oder sie lÃ¶schen und Ihre eigenen Seiten erstellen.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(3,3,1,1,0,0,'Page','2009-01-17 17:19:58','2009-01-17 17:19:58','contact-us','Kontakt',NULL,'<p>Sie kÃ¶nnen diese Seite mit Ihren eigenen Inhalten fÃ¼llen, oder sie lÃ¶schen und Ihre eigenen Seiten erstellen.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(4,4,1,1,0,0,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:19:59','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(5,5,1,1,0,0,'BlogEntry','2009-01-17 17:19:59','2009-01-17 17:19:59','sample-blog-entry','SilverStripe Blog Module erfolgreich installiert',NULL,'Herzlichen GlÃ¼ckwunsch, das SilverStripe Blog Modul wurde erfolgreich installiert. Dieser Blog-Eintrag kann sicher gelÃ¶scht werden. Sie kÃ¶nnen die Blog-Einstellungen (z.B. die angezeigten Widgets in der Sidebar) im admin-Bereich verÃ¤ndern.',NULL,NULL,NULL,NULL,0,1,NULL,1,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4),
	(6,6,1,0,0,0,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:19:59','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, mÃ¶glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte Ã¼berprÃ¼fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),
	(7,4,2,0,1,0,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:20','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(8,4,3,0,1,0,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(9,4,4,1,1,1,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(10,6,2,0,1,0,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:25:12','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),
	(11,6,3,1,1,1,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:25:12','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(12,2,2,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:25:58','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(13,2,3,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:25:58','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(14,7,1,0,1,0,'Page','2009-01-17 17:26:03','2009-01-17 17:26:03','neupage','NeuPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,1),
	(15,8,1,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:26:13','neupage','NeuPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),
	(16,8,2,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:27:13','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),
	(17,8,3,1,1,1,'Page','2009-01-17 17:26:13','2009-01-17 17:27:13','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(18,8,4,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:27:20','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(19,8,5,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:27:56','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(20,8,6,1,1,1,'Page','2009-01-17 17:26:13','2009-01-17 17:27:56','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(21,1,2,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:29:28','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(22,1,3,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:29:28','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(23,1,4,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:30:12','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(24,1,5,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:30:12','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(25,1,6,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:30:33','home','Startseite',NULL,'<h1>Sie haben die Wahl</h1>\n<h2>Sie suchen nach interessanten Projekten?</h2>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h2>Sie suchen nach f&auml;higen Leuten?</h2>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(26,1,7,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:30:33','home','Startseite',NULL,'<h1>Sie haben die Wahl</h1>\n<h2>Sie suchen nach interessanten Projekten?</h2>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h2>Sie suchen nach f&auml;higen Leuten?</h2>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(27,1,8,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:30:52','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(28,1,9,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:30:52','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(29,3,2,1,1,1,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:31:56','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(30,3,3,0,1,0,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:33:54','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(31,3,4,1,1,1,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:33:54','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(32,1,10,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:42:54','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(33,2,4,1,1,1,'JobCategoryHolder','2009-01-17 17:19:58','2009-01-17 17:42:55','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(34,1,11,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:42:57','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(35,9,1,0,1,0,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:14','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),
	(36,9,2,0,1,0,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:44','programmierung','Programmierung',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),
	(37,9,3,1,1,1,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:45','programmierung','Programmierung',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(38,10,1,0,1,0,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:14','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),
	(39,10,2,0,1,0,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:26','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),
	(40,10,3,1,1,1,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:26','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(41,11,1,0,1,0,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:33','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),
	(42,11,2,0,1,0,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:42','inhalt','Inhalt',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),
	(43,11,3,1,1,1,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:42','inhalt','Inhalt',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(44,12,1,0,1,0,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:48','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),
	(45,12,2,0,1,0,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:56','sonstige','Sonstige',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),
	(46,12,3,1,1,1,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:56','sonstige','Sonstige',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(47,13,1,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:16:50','new-registrationpage','NeuRegistrationPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),
	(48,13,2,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:02','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),
	(49,13,3,1,1,1,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:02','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(50,13,4,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:07','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(51,13,5,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:10','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(52,13,6,1,1,1,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:10','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(53,1,12,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 18:22:09','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(54,8,7,0,1,0,'CollectionPage','2009-01-17 17:26:13','2009-01-17 18:22:22','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(55,8,8,1,1,1,'CollectionPage','2009-01-17 17:26:13','2009-01-17 18:22:22','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(56,1,13,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 18:22:22','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(57,14,1,0,1,0,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:24','new-collectionpage','NeuCollectionPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,8),
	(58,14,2,0,1,0,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:49','referenzen','Referenzen',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,8),
	(59,14,3,1,1,1,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:49','referenzen','Referenzen',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8),
	(60,1,14,0,1,0,'Page','2009-01-17 17:19:58','2009-07-10 15:01:59','home','Home',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(61,1,15,1,1,1,'Page','2009-01-17 17:19:58','2009-07-10 15:01:59','home','Home',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(62,1,16,0,1,0,'Page','2009-01-17 17:19:58','2009-07-10 15:02:05','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</blockquote>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(63,1,17,1,1,1,'Page','2009-01-17 17:19:58','2009-07-10 15:02:05','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</blockquote>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Published',NULL,'Inherit','Inherit',NULL,0),
	(64,1,18,0,1,0,'Page','2009-01-17 17:19:58','2009-07-10 15:03:32','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\" class=\"broken\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(65,1,19,1,1,1,'Page','2009-01-17 17:19:58','2009-07-10 15:03:32','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\" class=\"broken\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Published',NULL,'Inherit','Inherit',NULL,0),
	(66,5,2,0,1,0,'BlogEntry','2009-01-17 17:19:59','2009-07-10 15:04:03','silverstripe-blog-module-successfully-installed','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].','SilverStripe blog module successfully installed',NULL,NULL,NULL,0,1,NULL,1,2,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,4),
	(67,5,3,1,1,1,'BlogEntry','2009-01-17 17:19:59','2009-07-10 15:04:03','silverstripe-blog-module-successfully-installed','SilverStripe blog module successfully installed',NULL,'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].','SilverStripe blog module successfully installed',NULL,NULL,NULL,0,1,NULL,1,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4),
	(68,13,7,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-07-10 15:04:24','register','Register',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(69,13,8,1,1,1,'RegistrationPage','2009-01-17 18:16:50','2009-07-10 15:04:24','register','Register',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(70,3,5,0,1,0,'UserDefinedForm','2009-01-17 17:19:58','2009-07-10 15:04:54','contact-us','Contact Us',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;\">You can fill this page with your own content or delete it and create your own pages.</span></p>\n</div>\n</span></p>','Contact Us',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(71,3,6,1,1,1,'UserDefinedForm','2009-01-17 17:19:58','2009-07-10 15:04:54','contact-us','Contact Us',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;\">You can fill this page with your own content or delete it and create your own pages.</span></p>\n</div>\n</span></p>','Contact Us',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(72,3,7,0,1,0,'UserDefinedForm','2009-01-17 17:19:58','2009-07-10 15:08:43','contact-us','Contact Us',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;\">You can fill this page with your own content or delete it and create your own pages.</span></p>\n</div>\n</span></p>','Contact Us',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(73,3,8,1,1,1,'UserDefinedForm','2009-01-17 17:19:58','2009-07-10 15:08:43','contact-us','Contact Us',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;\">You can fill this page with your own content or delete it and create your own pages.</span></p>\n</div>\n</span></p>','Contact Us',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(74,6,4,0,1,0,'ErrorPage','2009-01-17 17:19:59','2009-07-10 15:09:27','page-not-found','Page not found',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p>\n<p style=\"text-align: left;\">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</div>\n</span></p>','Page not found',NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(75,6,5,1,1,1,'ErrorPage','2009-01-17 17:19:59','2009-07-10 15:09:27','page-not-found','Page not found',NULL,'<p><span style=\"color: #000000; font-family: Times; font-size: medium; line-height: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<p style=\"text-align: left;\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p>\n<p style=\"text-align: left;\">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</div>\n</span></p>','Page not found',NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(76,9,4,0,1,0,'JobCategory','2009-01-17 17:43:14','2009-07-10 15:09:41','programming','Programming',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,2),
	(77,9,5,1,1,1,'JobCategory','2009-01-17 17:43:14','2009-07-10 15:09:41','programming','Programming',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(78,11,4,0,1,0,'JobCategory','2009-01-17 17:47:33','2009-07-10 15:10:20','index','Index',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,2),
	(79,11,5,1,1,1,'JobCategory','2009-01-17 17:47:33','2009-07-10 15:10:20','index','Index',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(80,12,4,0,1,0,'JobCategory','2009-01-17 17:47:48','2009-07-10 15:10:34','other','Other',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,2),
	(81,12,5,1,1,1,'JobCategory','2009-01-17 17:47:48','2009-07-10 15:10:34','other','Other',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(82,1,20,0,1,0,'Page','2009-01-17 17:19:58','2009-07-10 15:10:45','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\" class=\"broken\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Published',NULL,'Inherit','Inherit',NULL,0),
	(83,8,9,0,1,0,'CollectionPage','2009-01-17 17:26:13','2009-07-10 15:10:45','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(84,8,10,1,1,1,'CollectionPage','2009-01-17 17:26:13','2009-07-10 15:10:45','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(85,1,21,0,1,0,'Page','2009-01-17 17:19:58','2009-07-10 15:10:45','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\" class=\"broken\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Published',NULL,'Inherit','Inherit',NULL,0),
	(86,14,4,0,1,0,'CollectionPage','2009-01-17 18:25:24','2009-07-10 15:11:04','references','References',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,8),
	(87,14,5,1,1,1,'CollectionPage','2009-01-17 18:25:24','2009-07-10 15:11:04','references','References',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8),
	(88,9,6,0,1,0,'JobCategory','2009-01-17 17:43:14','2009-07-10 15:11:19','programming','Programming',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,2),
	(89,9,7,1,1,1,'JobCategory','2009-01-17 17:43:14','2009-07-10 15:11:19','programming','Programming',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),
	(90,1,22,0,1,0,'Page','2009-01-17 17:19:58','2009-07-10 15:20:29','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(91,1,23,1,1,1,'Page','2009-01-17 17:19:58','2009-07-10 15:20:29','home','Home',NULL,'<h3><span style=\"color: #000000; font-family: Times; font-size: medium; font-weight: normal;\">\n<div style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.8em; font-family: Verdana, Lucida, sans-serif; color: #222222; margin-top: 25px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;\">\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\">Are you searching for interesting projects?</h3>\n<p style=\"font-family: Verdana, Lucida, sans-serif; color: #666666; line-height: 1.6em; font-size: 1.1em;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then&nbsp;</span><a href=\"developers/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">post</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">&nbsp;your details here for others to find.</span></p>\n<h3 style=\"font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Are you searching for skilled employees?</span></h3>\n<p><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">Then choose the right category and put your&nbsp;</span><a href=\"jobs/\"><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">job description here</span></a><span style=\"font-family: Verdana, Lucida, sans-serif; font-style: normal;\">.</span></p>\n</span></h3>\n</div>\n</span></h3>','Home',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0);

/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Skill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Skill`;

CREATE TABLE `Skill` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Skill') character set utf8 default 'Skill',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `Skill` WRITE;
/*!40000 ALTER TABLE `Skill` DISABLE KEYS */;
INSERT INTO `Skill` (`ID`,`ClassName`,`Created`,`LastEdited`,`Title`)
VALUES
	(1,'Skill','2009-01-17 18:06:18','2009-01-17 18:06:18','PHP'),
	(2,'Skill','2009-01-17 18:06:26','2009-01-17 18:06:26','MySQL'),
	(3,'Skill','2009-01-17 18:06:34','2009-01-17 18:06:34','Apache'),
	(4,'Skill','2009-01-17 18:19:32','2009-01-17 18:19:32','Rugby'),
	(5,'Skill','2009-01-17 18:23:52','2009-01-17 18:23:52','Running');

/*!40000 ALTER TABLE `Skill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SubmittedFileField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SubmittedFileField`;

CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SubmittedForm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SubmittedForm`;

CREATE TABLE `SubmittedForm` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SubmittedForm') character set utf8 default 'SubmittedForm',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Recipient` varchar(50) character set utf8 default NULL,
  `SubmittedByID` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table SubmittedFormField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SubmittedFormField`;

CREATE TABLE `SubmittedFormField` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') character set utf8 default 'SubmittedFormField',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Value` mediumtext character set utf8,
  `Title` varchar(50) character set utf8 default NULL,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table TagCloudWidget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TagCloudWidget`;

CREATE TABLE `TagCloudWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Title` varchar(50) character set utf8 default NULL,
  `Limit` int(11) NOT NULL default '0',
  `Sortby` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `TagCloudWidget` WRITE;
/*!40000 ALTER TABLE `TagCloudWidget` DISABLE KEYS */;
INSERT INTO `TagCloudWidget` (`ID`,`Title`,`Limit`,`Sortby`)
VALUES
	(2,'Tag Cloud',0,'alphabet');

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



# Dump of table UserDefinedForm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm`;

CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `UserDefinedForm` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm` DISABLE KEYS */;
INSERT INTO `UserDefinedForm` (`ID`,`EmailTo`,`EmailOnSubmit`,`SubmitButtonText`,`OnCompleteMessage`,`ShowClearButton`)
VALUES
	(3,NULL,0,NULL,'<p></p>',0);

/*!40000 ALTER TABLE `UserDefinedForm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserDefinedForm_EmailRecipient
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipient`;

CREATE TABLE `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('UserDefinedForm_EmailRecipient') character set utf8 default 'UserDefinedForm_EmailRecipient',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `EmailAddress` varchar(200) character set utf8 default NULL,
  `EmailSubject` varchar(200) character set utf8 default NULL,
  `EmailFrom` varchar(200) character set utf8 default NULL,
  `EmailBody` mediumtext character set utf8,
  `SendPlain` tinyint(1) unsigned NOT NULL default '0',
  `FormID` int(11) NOT NULL default '0',
  `SendEmailFromFieldID` int(11) NOT NULL default '0',
  `SendEmailToFieldID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FormID` (`FormID`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table UserDefinedForm_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_Live`;

CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `UserDefinedForm_Live` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Live` DISABLE KEYS */;
INSERT INTO `UserDefinedForm_Live` (`ID`,`EmailTo`,`EmailOnSubmit`,`SubmitButtonText`,`OnCompleteMessage`,`ShowClearButton`)
VALUES
	(3,NULL,0,NULL,'<p></p>',0);

/*!40000 ALTER TABLE `UserDefinedForm_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserDefinedForm_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_versions`;

CREATE TABLE `UserDefinedForm_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

LOCK TABLES `UserDefinedForm_versions` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_versions` DISABLE KEYS */;
INSERT INTO `UserDefinedForm_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`EmailTo`,`EmailOnSubmit`,`SubmitButtonText`,`OnCompleteMessage`,`ShowClearButton`)
VALUES
	(1,3,1,0,1,0,NULL,0,NULL,NULL,0),
	(2,3,2,0,1,0,NULL,0,NULL,'<p></p>',0),
	(3,3,3,0,1,0,NULL,0,NULL,'<p></p>',0),
	(4,3,4,0,1,0,NULL,0,NULL,'<p></p>',0),
	(5,3,5,0,1,0,NULL,0,NULL,'<p></p>',0),
	(6,3,6,0,1,0,NULL,0,NULL,'<p></p>',0),
	(7,3,7,0,1,0,NULL,0,NULL,'<p></p>',0);

/*!40000 ALTER TABLE `UserDefinedForm_versions` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `Widget` WRITE;
/*!40000 ALTER TABLE `Widget` DISABLE KEYS */;
INSERT INTO `Widget` (`ID`,`ClassName`,`Created`,`LastEdited`,`Sort`,`ParentID`)
VALUES
	(1,'BlogManagementWidget','2009-01-17 17:19:59','2009-01-17 17:24:28',1,1),
	(2,'TagCloudWidget','2009-01-17 17:19:59','2009-01-17 17:24:28',4,1),
	(3,'ArchiveWidget','2009-01-17 17:19:59','2009-01-17 17:24:28',7,1);

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `WidgetArea` WRITE;
/*!40000 ALTER TABLE `WidgetArea` DISABLE KEYS */;
INSERT INTO `WidgetArea` (`ID`,`ClassName`,`Created`,`LastEdited`)
VALUES
	(1,'WidgetArea','2009-01-17 17:19:59','2009-01-17 17:19:59'),
	(2,'WidgetArea','2009-01-17 18:17:02','2009-01-17 18:17:02'),
	(3,'WidgetArea','2009-01-17 18:22:09','2009-01-17 18:22:09'),
	(4,'WidgetArea','2009-01-17 18:25:49','2009-01-17 18:25:49'),
	(5,'WidgetArea','2009-07-10 15:01:59','2009-07-10 15:01:59'),
	(6,'WidgetArea','2009-07-10 15:04:03','2009-07-10 15:04:03'),
	(7,'WidgetArea','2009-07-10 15:04:54','2009-07-10 15:04:54'),
	(8,'WidgetArea','2009-07-10 15:09:27','2009-07-10 15:09:27'),
	(9,'WidgetArea','2009-07-10 15:09:41','2009-07-10 15:09:41'),
	(10,'WidgetArea','2009-07-10 15:10:20','2009-07-10 15:10:20'),
	(11,'WidgetArea','2009-07-10 15:10:34','2009-07-10 15:10:34');

/*!40000 ALTER TABLE `WidgetArea` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table _obsolete_EditableCheckbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_EditableCheckbox`;

CREATE TABLE `_obsolete_EditableCheckbox` (
  `ID` int(11) NOT NULL auto_increment,
  `Checked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table _obsolete_EditableEmailField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_EditableEmailField`;

CREATE TABLE `_obsolete_EditableEmailField` (
  `ID` int(11) NOT NULL auto_increment,
  `SendCopy` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `_obsolete_EditableEmailField` WRITE;
/*!40000 ALTER TABLE `_obsolete_EditableEmailField` DISABLE KEYS */;
INSERT INTO `_obsolete_EditableEmailField` (`ID`,`SendCopy`)
VALUES
	(2,0);

/*!40000 ALTER TABLE `_obsolete_EditableEmailField` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table _obsolete_EditableMemberListField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_EditableMemberListField`;

CREATE TABLE `_obsolete_EditableMemberListField` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table _obsolete_EditableTextField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_EditableTextField`;

CREATE TABLE `_obsolete_EditableTextField` (
  `ID` int(11) NOT NULL auto_increment,
  `Size` int(11) NOT NULL default '0',
  `MinLength` int(11) NOT NULL default '0',
  `MaxLength` int(11) NOT NULL default '0',
  `Rows` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `_obsolete_EditableTextField` WRITE;
/*!40000 ALTER TABLE `_obsolete_EditableTextField` DISABLE KEYS */;
INSERT INTO `_obsolete_EditableTextField` (`ID`,`Size`,`MinLength`,`MaxLength`,`Rows`)
VALUES
	(1,32,1,32,1),
	(5,32,1,32,5);

/*!40000 ALTER TABLE `_obsolete_EditableTextField` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table _obsolete_RegistrationPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_RegistrationPage`;

CREATE TABLE `_obsolete_RegistrationPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table _obsolete_RegistrationPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_RegistrationPage_Live`;

CREATE TABLE `_obsolete_RegistrationPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table _obsolete_RegistrationPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_obsolete_RegistrationPage_versions`;

CREATE TABLE `_obsolete_RegistrationPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;






/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
