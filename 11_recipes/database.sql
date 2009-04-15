-- MySQL dump 10.11
--
-- Host: localhost    Database: SS_ssbook_rezepte
-- ------------------------------------------------------
-- Server version	5.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ArchiveWidget`
--

DROP TABLE IF EXISTS `ArchiveWidget`;
CREATE TABLE `ArchiveWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `DisplayMode` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArchiveWidget`
--

LOCK TABLES `ArchiveWidget` WRITE;
/*!40000 ALTER TABLE `ArchiveWidget` DISABLE KEYS */;
INSERT INTO `ArchiveWidget` VALUES (3,NULL);
/*!40000 ALTER TABLE `ArchiveWidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Article`
--

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

--
-- Dumping data for table `Article`
--

LOCK TABLES `Article` WRITE;
/*!40000 ALTER TABLE `Article` DISABLE KEYS */;
/*!40000 ALTER TABLE `Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogEntry`
--

DROP TABLE IF EXISTS `BlogEntry`;
CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogEntry`
--

LOCK TABLES `BlogEntry` WRITE;
/*!40000 ALTER TABLE `BlogEntry` DISABLE KEYS */;
INSERT INTO `BlogEntry` VALUES (7,'2008-07-20 00:00:00','Admin','heineken,epic,becks',0,NULL,NULL,0),(8,'2008-07-20 00:00:00','Admin','becks,tuatara',0,NULL,NULL,0),(9,'2008-07-20 00:00:00','Admin','bitburger,becks',0,NULL,NULL,0),(10,'2008-07-20 00:00:00','Admin','tuatara,leffe',0,NULL,NULL,0),(11,'2008-07-20 00:00:00','Admin','epic,duvel,kirner',0,NULL,NULL,0);
/*!40000 ALTER TABLE `BlogEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogEntry_Live`
--

DROP TABLE IF EXISTS `BlogEntry_Live`;
CREATE TABLE `BlogEntry_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogEntry_Live`
--

LOCK TABLES `BlogEntry_Live` WRITE;
/*!40000 ALTER TABLE `BlogEntry_Live` DISABLE KEYS */;
INSERT INTO `BlogEntry_Live` VALUES (7,'2008-07-20 00:00:00','Admin','heineken,epic,becks',0,NULL,NULL,0),(8,'2008-07-20 00:00:00','Admin','becks,tuatara',0,NULL,NULL,0),(9,'2008-07-20 00:00:00','Admin','bitburger,becks',0,NULL,NULL,0),(10,'2008-07-20 00:00:00','Admin','tuatara,leffe',0,NULL,NULL,0),(11,'2008-07-20 00:00:00','Admin','epic,duvel,kirner',0,NULL,NULL,0);
/*!40000 ALTER TABLE `BlogEntry_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogEntry_versions`
--

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
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogEntry_versions`
--

LOCK TABLES `BlogEntry_versions` WRITE;
/*!40000 ALTER TABLE `BlogEntry_versions` DISABLE KEYS */;
INSERT INTO `BlogEntry_versions` VALUES (1,7,1,0,1,0,'2008-07-20 00:00:00',NULL,NULL,0,NULL,NULL,0),(2,7,2,0,1,0,'2008-07-20 00:00:00','Admin','foobar,blubb',0,NULL,NULL,0),(3,7,3,0,1,0,'2008-07-20 00:00:00','Admin','foobar,blubb',0,NULL,NULL,0),(4,7,4,0,1,0,'2008-07-20 00:00:00','Admin','foobar,blubb',0,NULL,NULL,0),(5,7,5,0,1,0,'2008-07-20 00:00:00','Admin','foobar,blubb',0,NULL,NULL,0),(6,8,1,0,1,0,'2008-07-20 00:00:00',NULL,NULL,0,NULL,NULL,0),(7,8,2,0,1,0,'2008-07-20 00:00:00','Admin','becks,tuatara',0,NULL,NULL,0),(8,8,3,0,1,0,'2008-07-20 00:00:00','Admin','becks,tuatara',0,NULL,NULL,0),(9,7,6,0,1,0,'2008-07-20 00:00:00','Admin','heineken,epic,becks',0,NULL,NULL,0),(10,7,7,0,1,0,'2008-07-20 00:00:00','Admin','heineken,epic,becks',0,NULL,NULL,0),(11,9,1,0,1,0,'2008-07-20 00:00:00',NULL,NULL,0,NULL,NULL,0),(12,9,2,0,1,0,'2008-07-20 00:00:00','Admin','bitburger,becks',0,NULL,NULL,0),(13,9,3,0,1,0,'2008-07-20 00:00:00','Admin','bitburger,becks',0,NULL,NULL,0),(14,10,1,0,1,0,'2008-07-20 00:00:00',NULL,NULL,0,NULL,NULL,0),(15,10,2,0,1,0,'2008-07-20 00:00:00','Admin','tuatara,leffe',0,NULL,NULL,0),(16,10,3,0,1,0,'2008-07-20 00:00:00','Admin','tuatara,leffe',0,NULL,NULL,0),(17,7,8,0,1,0,'2008-07-20 00:00:00','Admin','heineken,epic,becks',0,NULL,NULL,0),(18,7,9,0,1,0,'2008-07-20 00:00:00','Admin','heineken,epic,becks',0,NULL,NULL,0),(19,8,4,0,1,0,'2008-07-20 00:00:00','Admin','becks,tuatara',0,NULL,NULL,0),(20,8,5,0,1,0,'2008-07-20 00:00:00','Admin','becks,tuatara',0,NULL,NULL,0),(21,11,1,0,1,0,'2008-07-20 00:00:00',NULL,NULL,0,NULL,NULL,0),(22,11,2,0,1,0,'2008-07-20 00:00:00','Admin','epic,duvel,kirner',0,NULL,NULL,0),(23,11,3,0,1,0,'2008-07-20 00:00:00','Admin','epic,duvel,kirner',0,NULL,NULL,0),(24,10,4,0,1,0,'2008-07-20 00:00:00','Admin','tuatara,leffe',0,NULL,NULL,0),(25,10,5,0,1,0,'2008-07-20 00:00:00','Admin','tuatara,leffe',0,NULL,NULL,0);
/*!40000 ALTER TABLE `BlogEntry_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogHolder`
--

DROP TABLE IF EXISTS `BlogHolder`;
CREATE TABLE `BlogHolder` (
  `ID` int(11) NOT NULL auto_increment,
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `SideBarID` int(11) NOT NULL default '0',
  `NewsletterID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`),
  KEY `NewsletterID` (`NewsletterID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogHolder`
--

LOCK TABLES `BlogHolder` WRITE;
/*!40000 ALTER TABLE `BlogHolder` DISABLE KEYS */;
INSERT INTO `BlogHolder` VALUES (5,NULL,1,0,0,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `BlogHolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogHolder_Live`
--

DROP TABLE IF EXISTS `BlogHolder_Live`;
CREATE TABLE `BlogHolder_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `SideBarID` int(11) NOT NULL default '0',
  `NewsletterID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`),
  KEY `NewsletterID` (`NewsletterID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogHolder_Live`
--

LOCK TABLES `BlogHolder_Live` WRITE;
/*!40000 ALTER TABLE `BlogHolder_Live` DISABLE KEYS */;
INSERT INTO `BlogHolder_Live` VALUES (5,NULL,1,0,0,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `BlogHolder_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogHolder_versions`
--

DROP TABLE IF EXISTS `BlogHolder_versions`;
CREATE TABLE `BlogHolder_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `SideBarID` int(11) NOT NULL default '0',
  `NewsletterID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SideBarID` (`SideBarID`),
  KEY `NewsletterID` (`NewsletterID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogHolder_versions`
--

LOCK TABLES `BlogHolder_versions` WRITE;
/*!40000 ALTER TABLE `BlogHolder_versions` DISABLE KEYS */;
INSERT INTO `BlogHolder_versions` VALUES (1,5,1,0,0,0,NULL,1,0,0,NULL,NULL,0,NULL,0),(2,5,2,0,1,0,NULL,1,0,0,NULL,NULL,0,NULL,0),(3,5,3,0,1,0,NULL,1,0,0,NULL,NULL,0,NULL,0),(4,5,4,0,1,0,NULL,1,0,0,NULL,NULL,0,NULL,0),(5,5,5,0,1,0,NULL,1,0,0,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `BlogHolder_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientCategory`
--

DROP TABLE IF EXISTS `ClientCategory`;
CREATE TABLE `ClientCategory` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('ClientCategory') character set utf8 default 'ClientCategory',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClientCategory`
--

LOCK TABLES `ClientCategory` WRITE;
/*!40000 ALTER TABLE `ClientCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCheckbox`
--

DROP TABLE IF EXISTS `EditableCheckbox`;
CREATE TABLE `EditableCheckbox` (
  `ID` int(11) NOT NULL auto_increment,
  `Checked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableCheckbox`
--

LOCK TABLES `EditableCheckbox` WRITE;
/*!40000 ALTER TABLE `EditableCheckbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCheckboxOption`
--

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

--
-- Dumping data for table `EditableCheckboxOption`
--

LOCK TABLES `EditableCheckboxOption` WRITE;
/*!40000 ALTER TABLE `EditableCheckboxOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckboxOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDropdownOption`
--

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

--
-- Dumping data for table `EditableDropdownOption`
--

LOCK TABLES `EditableDropdownOption` WRITE;
/*!40000 ALTER TABLE `EditableDropdownOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDropdownOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableEmailField`
--

DROP TABLE IF EXISTS `EditableEmailField`;
CREATE TABLE `EditableEmailField` (
  `ID` int(11) NOT NULL auto_increment,
  `SendCopy` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableEmailField`
--

LOCK TABLES `EditableEmailField` WRITE;
/*!40000 ALTER TABLE `EditableEmailField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableEmailField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFileField`
--

DROP TABLE IF EXISTS `EditableFileField`;
CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFileField`
--

LOCK TABLES `EditableFileField` WRITE;
/*!40000 ALTER TABLE `EditableFileField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFileField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormField`
--

DROP TABLE IF EXISTS `EditableFormField`;
CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCheckboxGroupField','EditableDateField','EditableDropdown','EditableEmailField','EditableFileField','EditableFormHeading','EditableMemberListField','EditableRadioField','EditableTextField') character set utf8 default 'EditableFormField',
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
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField`
--

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableMemberListField`
--

DROP TABLE IF EXISTS `EditableMemberListField`;
CREATE TABLE `EditableMemberListField` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableMemberListField`
--

LOCK TABLES `EditableMemberListField` WRITE;
/*!40000 ALTER TABLE `EditableMemberListField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableMemberListField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableRadioOption`
--

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableRadioOption`
--

LOCK TABLES `EditableRadioOption` WRITE;
/*!40000 ALTER TABLE `EditableRadioOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableRadioOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableTextField`
--

DROP TABLE IF EXISTS `EditableTextField`;
CREATE TABLE `EditableTextField` (
  `ID` int(11) NOT NULL auto_increment,
  `Size` int(11) NOT NULL default '0',
  `MinLength` int(11) NOT NULL default '0',
  `MaxLength` int(11) NOT NULL default '0',
  `Rows` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField`
--

LOCK TABLES `EditableTextField` WRITE;
/*!40000 ALTER TABLE `EditableTextField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableTextField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Email_BlackList`
--

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

--
-- Dumping data for table `Email_BlackList`
--

LOCK TABLES `Email_BlackList` WRITE;
/*!40000 ALTER TABLE `Email_BlackList` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_BlackList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Email_BounceRecord`
--

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

--
-- Dumping data for table `Email_BounceRecord`
--

LOCK TABLES `Email_BounceRecord` WRITE;
/*!40000 ALTER TABLE `Email_BounceRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_BounceRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (4,404,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ErrorCode` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (1,4,1,0,0,0,404,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'File','2009-01-25 11:26:20','2009-01-25 11:26:20','error-404.html','error-404.html','assets/error-404.html',NULL,0,0,1),(2,'Page_BannerImage','2009-01-25 11:26:50','2009-01-25 11:27:01','DSCN0660-Rain-Forest.jpg','DSCN0660-Rain-Forest.jpg','assets/DSCN0660-Rain-Forest.jpg',NULL,0,0,1),(3,'Page_BannerImage','2009-01-25 11:26:50','2009-01-25 11:27:12','9V31TT53214NK0PHH6M7W0H4HR.jpg','9V31TT53214NK0PHH6M7W0H4HR.jpg','assets/9V31TT53214NK0PHH6M7W0H4HR.jpg',NULL,0,0,1),(4,'Image','2009-01-25 11:26:50','2009-01-25 11:26:50','peru-forest.gif','peru-forest.gif','assets/peru-forest.gif',NULL,0,0,1);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder_CanEdit`
--

DROP TABLE IF EXISTS `Folder_CanEdit`;
CREATE TABLE `Folder_CanEdit` (
  `ID` int(11) NOT NULL auto_increment,
  `FolderID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Folder_CanEdit`
--

LOCK TABLES `Folder_CanEdit` WRITE;
/*!40000 ALTER TABLE `Folder_CanEdit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder_CanEdit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder_CanUse`
--

DROP TABLE IF EXISTS `Folder_CanUse`;
CREATE TABLE `Folder_CanUse` (
  `ID` int(11) NOT NULL auto_increment,
  `FolderID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Folder_CanUse`
--

LOCK TABLES `Folder_CanUse` WRITE;
/*!40000 ALTER TABLE `Folder_CanUse` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder_CanUse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GhostPage`
--

DROP TABLE IF EXISTS `GhostPage`;
CREATE TABLE `GhostPage` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GhostPage`
--

LOCK TABLES `GhostPage` WRITE;
/*!40000 ALTER TABLE `GhostPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `GhostPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GhostPage_Live`
--

DROP TABLE IF EXISTS `GhostPage_Live`;
CREATE TABLE `GhostPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GhostPage_Live`
--

LOCK TABLES `GhostPage_Live` WRITE;
/*!40000 ALTER TABLE `GhostPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `GhostPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GhostPage_versions`
--

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

--
-- Dumping data for table `GhostPage_versions`
--

LOCK TABLES `GhostPage_versions` WRITE;
/*!40000 ALTER TABLE `GhostPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `GhostPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Group') character set utf8 default 'Group',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Description` mediumtext character set utf8,
  `Code` varchar(50) character set utf8 default NULL,
  `CanCMS` tinyint(1) unsigned NOT NULL default '0',
  `CanCMSAdmin` tinyint(1) unsigned NOT NULL default '0',
  `Locked` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  `IPRestrictions` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'Group','2008-07-20 19:26:43','2008-07-20 19:26:43','Administrators',NULL,'administrators',0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1,1,1);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job`
--

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

--
-- Dumping data for table `Job`
--

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobCategory_Subscribers`
--

DROP TABLE IF EXISTS `JobCategory_Subscribers`;
CREATE TABLE `JobCategory_Subscribers` (
  `ID` int(11) NOT NULL auto_increment,
  `JobCategoryID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `JobCategoryID` (`JobCategoryID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JobCategory_Subscribers`
--

LOCK TABLES `JobCategory_Subscribers` WRITE;
/*!40000 ALTER TABLE `JobCategory_Subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobCategory_Subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

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

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

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
  `BlacklistedEmail` tinyint(1) unsigned NOT NULL default '0',
  `PasswordEncryption` enum('none','md2','md4','md5','sha1','sha256','sha384','sha512','ripemd128','ripemd160','ripemd256','ripemd320','whirlpool','snefru','gost','adler32','crc32','crc32b','password','old_password') character set utf8 default 'none',
  `Salt` varchar(50) character set utf8 default NULL,
  `Locale` varchar(6) character set utf8 default NULL,
  `Hash` varchar(32) character set utf8 default NULL,
  `GroupCode` varchar(255) character set utf8 default NULL,
  `PasswordExpiry` date default NULL,
  `LockedOutUntil` datetime default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `AutoLoginHash` (`AutoLoginHash`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'Member','2008-07-20 19:26:43','2009-01-24 14:03:50','Admin','Admin','admin','1kpu4dq25f28s84w8ccg8k00sko8k8g',NULL,2,'2009-02-01 16:57:19',0,NULL,NULL,0,'sha1','bjbz2ie47j4g08kswow8googo004044w4kkgwgw','en_US',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_UnsubscribeRecord`
--

DROP TABLE IF EXISTS `Member_UnsubscribeRecord`;
CREATE TABLE `Member_UnsubscribeRecord` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Member_UnsubscribeRecord') character set utf8 default 'Member_UnsubscribeRecord',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `NewsletterTypeID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `NewsletterTypeID` (`NewsletterTypeID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Member_UnsubscribeRecord`
--

LOCK TABLES `Member_UnsubscribeRecord` WRITE;
/*!40000 ALTER TABLE `Member_UnsubscribeRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_UnsubscribeRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter`
--

DROP TABLE IF EXISTS `Newsletter`;
CREATE TABLE `Newsletter` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter') character set utf8 default 'Newsletter',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Status` enum('Draft','Send') character set utf8 default 'Draft',
  `Content` mediumtext character set utf8,
  `Subject` varchar(255) character set utf8 default NULL,
  `SentDate` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Newsletter`
--

LOCK TABLES `Newsletter` WRITE;
/*!40000 ALTER TABLE `Newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsletterType`
--

DROP TABLE IF EXISTS `NewsletterType`;
CREATE TABLE `NewsletterType` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('NewsletterType') character set utf8 default 'NewsletterType',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Template` varchar(50) character set utf8 default NULL,
  `FromEmail` varchar(50) character set utf8 default NULL,
  `Sent` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `GroupID` (`GroupID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NewsletterType`
--

LOCK TABLES `NewsletterType` WRITE;
/*!40000 ALTER TABLE `NewsletterType` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsletterType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter_Recipient`
--

DROP TABLE IF EXISTS `Newsletter_Recipient`;
CREATE TABLE `Newsletter_Recipient` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter_Recipient') character set utf8 default 'Newsletter_Recipient',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Newsletter_Recipient`
--

LOCK TABLES `Newsletter_Recipient` WRITE;
/*!40000 ALTER TABLE `Newsletter_Recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter_Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter_SentRecipient`
--

DROP TABLE IF EXISTS `Newsletter_SentRecipient`;
CREATE TABLE `Newsletter_SentRecipient` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter_SentRecipient') character set utf8 default 'Newsletter_SentRecipient',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `Email` varchar(255) character set utf8 default NULL,
  `Result` enum('Sent','Failed','Bounced','BlackListed') character set utf8 default 'Sent',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Newsletter_SentRecipient`
--

LOCK TABLES `Newsletter_SentRecipient` WRITE;
/*!40000 ALTER TABLE `Newsletter_SentRecipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter_SentRecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
CREATE TABLE `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page`
--

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` VALUES (5,10,'heineken,epic','bla',1,NULL,0),(10,0,'heineken,bitburger','bla',0,NULL,0),(1,10,'becks,duvel','invention',1,NULL,0),(12,10,NULL,NULL,0,NULL,0),(13,10,NULL,NULL,0,NULL,2),(2,0,NULL,NULL,0,NULL,3);
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageComment`
--

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
  `ParentID` int(11) NOT NULL default '0',
  `CommenterURL` varchar(255) character set utf8 default NULL,
  `AuthorID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PageComment`
--

LOCK TABLES `PageComment` WRITE;
/*!40000 ALTER TABLE `PageComment` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageView`
--

DROP TABLE IF EXISTS `PageView`;
CREATE TABLE `PageView` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('PageView') character set utf8 default 'PageView',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `IP` varchar(255) character set utf8 default NULL,
  `Browser` varchar(255) character set utf8 default NULL,
  `BrowserVersion` decimal(9,2) default NULL,
  `FromExternal` tinyint(1) unsigned NOT NULL default '0',
  `Referrer` varchar(255) character set utf8 default NULL,
  `SearchEngine` tinyint(1) unsigned NOT NULL default '0',
  `Keywords` varchar(255) character set utf8 default NULL,
  `OS` varchar(255) character set utf8 default NULL,
  `PageID` int(11) NOT NULL default '0',
  `UserID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `PageID` (`PageID`),
  KEY `UserID` (`UserID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PageView`
--

LOCK TABLES `PageView` WRITE;
/*!40000 ALTER TABLE `PageView` DISABLE KEYS */;
INSERT INTO `PageView` VALUES (1,'PageView','2008-07-20 14:12:19','2008-07-20 14:12:19','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(2,'PageView','2008-07-20 14:12:49','2008-07-20 14:12:49','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(3,'PageView','2008-07-20 14:12:58','2008-07-20 14:12:58','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(4,'PageView','2008-07-20 14:13:06','2008-07-20 14:13:06','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(5,'PageView','2008-07-20 14:14:58','2008-07-20 14:14:58','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(6,'PageView','2008-07-20 14:15:01','2008-07-20 14:15:01','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(7,'PageView','2008-07-20 14:16:07','2008-07-20 14:16:07','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(8,'PageView','2008-07-20 19:26:28','2008-07-20 19:26:28','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',0,-1),(9,'PageView','2008-07-20 19:26:37','2008-07-20 19:26:37','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/Security/login',0,NULL,'MacOSX',0,-1),(10,'PageView','2008-07-20 19:42:44','2008-07-20 19:42:44','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/admin',0,NULL,'MacOSX',5,1),(11,'PageView','2008-07-20 19:43:00','2008-07-20 19:43:00','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',5,1),(12,'PageView','2008-07-20 19:43:03','2008-07-20 19:43:03','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',5,1),(13,'PageView','2008-07-20 19:43:39','2008-07-20 19:43:39','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/blog/?flush=1',0,NULL,'MacOSX',5,1),(14,'PageView','2008-07-20 19:43:43','2008-07-20 19:43:43','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/blog/tag/becks',0,NULL,'MacOSX',5,1),(15,'PageView','2008-07-20 19:43:45','2008-07-20 19:43:45','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/blog/tag/heineken',0,NULL,'MacOSX',7,1),(16,'PageView','2008-07-20 19:48:48','2008-07-20 19:48:48','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/blog/tag/heineken',0,NULL,'MacOSX',7,1),(17,'PageView','2008-07-20 20:47:46','2008-07-20 20:47:46','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/blog/tag/heineken',0,NULL,'MacOSX',7,1),(18,'PageView','2008-07-20 21:11:56','2008-07-20 21:11:56','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(19,'PageView','2008-07-20 21:12:25','2008-07-20 21:12:25','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(20,'PageView','2008-07-20 21:12:31','2008-07-20 21:12:31','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(21,'PageView','2008-07-20 21:12:46','2008-07-20 21:12:46','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(22,'PageView','2008-07-20 21:13:49','2008-07-20 21:13:49','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(23,'PageView','2008-07-20 22:04:44','2008-07-20 22:04:44','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(24,'PageView','2008-07-20 22:04:49','2008-07-20 22:04:49','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(25,'PageView','2008-07-20 22:05:07','2008-07-20 22:05:07','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(26,'PageView','2008-07-20 22:08:16','2008-07-20 22:08:16','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(27,'PageView','2008-07-20 22:08:35','2008-07-20 22:08:35','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(28,'PageView','2008-07-20 22:09:27','2008-07-20 22:09:27','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(29,'PageView','2008-07-20 22:10:11','2008-07-20 22:10:11','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(30,'PageView','2008-07-20 22:12:37','2008-07-20 22:12:37','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(31,'PageView','2008-07-20 22:22:50','2008-07-20 22:22:50','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(32,'PageView','2008-07-20 22:23:04','2008-07-20 22:23:04','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(33,'PageView','2008-07-20 22:24:13','2008-07-20 22:24:13','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(34,'PageView','2008-07-20 22:24:21','2008-07-20 22:24:21','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',8,1),(35,'PageView','2008-07-20 22:24:43','2008-07-20 22:24:43','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/two/flush=1',0,NULL,'MacOSX',1,1),(36,'PageView','2008-07-20 22:24:43','2008-07-20 22:24:43','::1','Mozilla','1.90',0,'http://localhost/ssbook_misc/two/flush=1',0,NULL,'MacOSX',1,-1),(37,'PageView','2008-07-20 22:24:48','2008-07-20 22:24:48','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(38,'PageView','2008-07-20 22:25:02','2008-07-20 22:25:02','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(39,'PageView','2008-07-20 22:25:19','2008-07-20 22:25:19','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(40,'PageView','2008-07-20 22:25:33','2008-07-20 22:25:33','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(41,'PageView','2008-07-20 22:25:36','2008-07-20 22:25:36','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(42,'PageView','2008-07-20 22:25:44','2008-07-20 22:25:44','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(43,'PageView','2008-07-20 22:25:54','2008-07-20 22:25:54','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(44,'PageView','2008-07-20 22:26:08','2008-07-20 22:26:08','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(45,'PageView','2008-07-20 22:26:34','2008-07-20 22:26:34','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(46,'PageView','2008-07-20 22:27:00','2008-07-20 22:27:00','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(47,'PageView','2008-07-20 22:59:29','2008-07-20 22:59:29','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(48,'PageView','2008-07-20 22:59:58','2008-07-20 22:59:58','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(49,'PageView','2008-07-20 23:02:56','2008-07-20 23:02:56','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(50,'PageView','2008-07-20 23:03:30','2008-07-20 23:03:30','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(51,'PageView','2008-07-20 23:03:40','2008-07-20 23:03:40','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(52,'PageView','2008-07-20 23:06:41','2008-07-20 23:06:41','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(53,'PageView','2008-07-20 23:06:56','2008-07-20 23:06:56','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(54,'PageView','2008-07-20 23:08:09','2008-07-20 23:08:09','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(55,'PageView','2008-07-20 23:16:08','2008-07-20 23:16:08','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(56,'PageView','2008-07-20 23:16:30','2008-07-20 23:16:30','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(57,'PageView','2008-07-20 23:17:16','2008-07-20 23:17:16','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(58,'PageView','2008-07-20 23:17:31','2008-07-20 23:17:31','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(59,'PageView','2008-07-20 23:17:52','2008-07-20 23:17:52','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(60,'PageView','2008-07-20 23:18:12','2008-07-20 23:18:12','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(61,'PageView','2008-07-20 23:18:30','2008-07-20 23:18:30','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(62,'PageView','2008-07-20 23:19:28','2008-07-20 23:19:28','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(63,'PageView','2008-07-20 23:19:43','2008-07-20 23:19:43','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(64,'PageView','2008-07-20 23:19:53','2008-07-20 23:19:53','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(65,'PageView','2008-07-20 23:20:13','2008-07-20 23:20:13','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(66,'PageView','2008-07-20 23:20:19','2008-07-20 23:20:19','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(67,'PageView','2008-07-20 23:20:30','2008-07-20 23:20:30','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(68,'PageView','2008-07-20 23:20:36','2008-07-20 23:20:36','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(69,'PageView','2008-07-20 23:21:25','2008-07-20 23:21:25','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(70,'PageView','2008-07-20 23:21:30','2008-07-20 23:21:30','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(71,'PageView','2008-07-20 23:22:34','2008-07-20 23:22:34','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(72,'PageView','2008-07-20 23:28:45','2008-07-20 23:28:45','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(73,'PageView','2008-07-20 23:29:14','2008-07-20 23:29:14','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(74,'PageView','2008-07-20 23:29:27','2008-07-20 23:29:27','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1),(75,'PageView','2008-07-20 23:30:04','2008-07-20 23:30:04','::1','Mozilla','1.90',0,NULL,0,NULL,'MacOSX',1,-1);
/*!40000 ALTER TABLE `PageView` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_Live`
--

DROP TABLE IF EXISTS `Page_Live`;
CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_Live`
--

LOCK TABLES `Page_Live` WRITE;
/*!40000 ALTER TABLE `Page_Live` DISABLE KEYS */;
INSERT INTO `Page_Live` VALUES (5,10,'heineken,epic','bla',1,NULL,0),(10,0,'heineken,bitburger','bla',0,NULL,0),(1,10,'becks,duvel','invention',1,NULL,0),(12,10,NULL,NULL,0,NULL,0),(13,10,NULL,NULL,0,NULL,2),(2,0,NULL,NULL,0,NULL,3);
/*!40000 ALTER TABLE `Page_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_versions`
--

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
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_versions`
--

LOCK TABLES `Page_versions` WRITE;
/*!40000 ALTER TABLE `Page_versions` DISABLE KEYS */;
INSERT INTO `Page_versions` VALUES (1,5,1,0,1,0,0,'heineken,epic',NULL,0,NULL,0),(2,5,2,0,1,0,0,'heineken,epic',NULL,0,NULL,0),(3,5,3,0,1,0,10,'heineken,epic','bla',1,NULL,0),(4,5,4,0,1,0,10,'heineken,epic','bla',1,NULL,0),(5,10,1,0,1,0,0,'heineken,bitburger','bla',0,NULL,0),(6,10,2,0,1,0,0,'heineken,bitburger','bla',0,NULL,0),(7,1,1,0,1,0,10,'becks,duvel','invention',1,NULL,0),(8,1,2,0,1,0,10,'becks,duvel','invention',1,NULL,0),(9,12,1,0,1,0,10,NULL,NULL,0,NULL,0),(10,12,2,0,1,0,10,NULL,NULL,0,NULL,0),(11,12,3,0,1,0,10,NULL,NULL,0,NULL,0),(12,13,1,0,1,0,10,NULL,NULL,0,NULL,0),(13,13,2,0,1,0,10,NULL,NULL,0,NULL,0),(14,13,3,0,1,0,10,NULL,NULL,0,NULL,0),(15,13,4,0,1,0,10,NULL,NULL,0,NULL,2),(16,2,1,0,1,0,0,NULL,NULL,0,NULL,3),(17,2,2,0,1,0,0,NULL,NULL,0,NULL,3),(18,2,3,0,1,0,0,NULL,NULL,0,NULL,3),(19,13,5,0,1,0,10,NULL,NULL,0,NULL,2),(20,13,6,0,1,0,10,NULL,NULL,0,NULL,2);
/*!40000 ALTER TABLE `Page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

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

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'Permission','2008-07-20 19:26:43','2008-07-20 19:26:43','ADMIN',0,1,1);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedEmail`
--

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

--
-- Dumping data for table `QueuedEmail`
--

LOCK TABLES `QueuedEmail` WRITE;
/*!40000 ALTER TABLE `QueuedEmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuedEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RSSWidget`
--

DROP TABLE IF EXISTS `RSSWidget`;
CREATE TABLE `RSSWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `RSSTitle` mediumtext character set utf8,
  `RssUrl` mediumtext character set utf8,
  `NumberToShow` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RSSWidget`
--

LOCK TABLES `RSSWidget` WRITE;
/*!40000 ALTER TABLE `RSSWidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `RSSWidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_versions`
--

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
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RedirectorPage_versions`
--

LOCK TABLES `RedirectorPage_versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Referrer`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Referrer`
--

LOCK TABLES `Referrer` WRITE;
/*!40000 ALTER TABLE `Referrer` DISABLE KEYS */;
INSERT INTO `Referrer` VALUES (1,'Referrer','2009-01-25 11:27:17','2009-01-25 11:27:17','http://ssbook/11_rezepte/admin',0,2),(2,'Referrer','2009-01-25 11:32:13','2009-01-25 11:32:13','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(3,'Referrer','2009-01-25 11:32:35','2009-01-25 11:32:35','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(4,'Referrer','2009-01-25 11:33:04','2009-01-25 11:33:04','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(5,'Referrer','2009-01-25 11:33:12','2009-01-25 11:33:12','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(6,'Referrer','2009-01-25 11:33:26','2009-01-25 11:33:26','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(7,'Referrer','2009-01-25 11:33:31','2009-01-25 11:33:31','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(8,'Referrer','2009-01-25 11:33:38','2009-01-25 11:33:38','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(9,'Referrer','2009-01-25 11:33:44','2009-01-25 11:33:44','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(10,'Referrer','2009-01-25 11:33:51','2009-01-25 11:33:51','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(11,'Referrer','2009-01-25 11:37:18','2009-01-25 11:37:18','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(12,'Referrer','2009-01-25 11:37:24','2009-01-25 11:37:24','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(13,'Referrer','2009-01-25 11:37:32','2009-01-25 11:37:32','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(14,'Referrer','2009-01-25 11:38:04','2009-01-25 11:38:04','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(15,'Referrer','2009-01-25 11:38:18','2009-01-25 11:38:18','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(16,'Referrer','2009-01-25 11:38:23','2009-01-25 11:38:23','http://ssbook/11_rezepte/home/successfullyinstalled?flush=1',0,1),(17,'Referrer','2009-01-25 11:38:27','2009-01-25 11:38:27','http://ssbook/11_rezepte/home/deleteinstallfiles',0,2),(18,'Referrer','2009-01-25 11:38:33','2009-01-25 11:38:33','http://ssbook/11_rezepte/home/deleteinstallfiles',0,2),(19,'Referrer','2009-01-25 11:38:39','2009-01-25 11:38:39','http://ssbook/11_rezepte/home/deleteinstallfiles',0,2),(20,'Referrer','2009-01-25 11:38:46','2009-01-25 11:38:46','http://ssbook/11_rezepte/about-us/',0,2),(21,'Referrer','2009-01-25 11:38:49','2009-01-25 11:38:49','http://ssbook/11_rezepte/about-us/SearchForm?Search=fill+this+page&action_results=Suche',0,2),(22,'Referrer','2009-01-25 11:38:54','2009-01-25 11:38:54','http://ssbook/11_rezepte/about-us/',0,9),(23,'Referrer','2009-01-25 11:39:01','2009-01-25 11:39:01','http://ssbook/11_rezepte/three/',0,2),(24,'Referrer','2009-01-25 11:39:38','2009-01-25 11:39:38','http://ssbook/11_rezepte/about-us/',0,5),(25,'Referrer','2009-01-25 11:39:40','2009-01-25 11:39:40','http://ssbook/11_rezepte/about-us/',0,5);
/*!40000 ALTER TABLE `Referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
  `Priority` float default NULL,
  `_obsolete_Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') character set utf8 default 'Anyone',
  `_obsolete_Editors` enum('LoggedInUsers','OnlyTheseUsers') character set utf8 default 'LoggedInUsers',
  `_obsolete_ViewersGroup` int(11) NOT NULL default '0',
  `_obsolete_EditorsGroup` int(11) NOT NULL default '0',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `TagsText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'Page','2008-07-20 14:12:03','2008-07-20 23:00:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,3,'Anyone','LoggedInUsers',NULL),(2,'Page','2008-07-20 14:12:04','2009-01-25 11:38:12','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,4,'Anyone','LoggedInUsers',NULL),(3,'Page','2008-07-20 14:12:04','2008-07-20 14:12:04','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1,'Anyone','LoggedInUsers',NULL),(4,'ErrorPage','2008-07-20 14:12:04','2008-07-20 14:12:04','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1,'Anyone','LoggedInUsers',NULL),(5,'BlogHolder','2008-07-20 19:26:21','2008-07-20 20:22:15','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,5,'Anyone','LoggedInUsers',NULL),(6,'SiteTree','2008-07-20 19:26:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,0,'Anyone','LoggedInUsers',NULL),(7,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:48:05','one','one',NULL,'Beer is one of the world\'s oldest beverages, possibly dating back to the 6th millennium BC, and is recorded in the written history of ancient Egypt and Mesopotamia.[5] The earliest Sumerian writings contain references to beer. A prayer to the goddess Ninkasi known as \"The Hymn to Ninkasi\" serves as both a prayer as well as a method of remembering the recipe for beer in a culture with few literate people','one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,9,'Anyone','LoggedInUsers',NULL),(8,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:48:13','two','two',NULL,'The earliest known chemical evidence of beer dates to circa 3500â€“3100 BC from the site of Godin Tepe in the Zagros Mountains of western Iran.[6] As almost any substance containing carbohydrates, mainly sugar or starch, can naturally undergo fermentation, it is likely that beer-like beverages were independently invented among various cultures throughout the world. The invention of bread and beer has been argued to be responsible for humanity\'s ability to develop technology and build civilization.','two',NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,5,'Anyone','LoggedInUsers',NULL),(9,'BlogEntry','2008-07-20 19:46:31','2008-07-20 19:47:32','three','three',NULL,'The most common starch source for beer is malted barley; however, wheat, corn, and rice are also widely used, usually in conjunction with barley. The starch source is mashed, steeped in water while enzymes in the malt break down the starch molecules, producing a sugary liquid known as wort, which is then flavoured with hops, which acts as a natural preservative. Other ingredients such as herbs or fruit may be added. Yeast is then used to cause fermentation, which produces alcohol and other waste products from anaerobic respiration of the yeast as it consumes the sugars. The process of beer production is a branch of zymurgy called brewing.','three',NULL,NULL,NULL,1,1,NULL,1,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,3,'Anyone','LoggedInUsers',NULL),(10,'BlogEntry','2008-07-20 19:47:36','2008-07-20 20:23:19','four','four',NULL,'Beer uses many varying ingredients, production methods and traditions. Different types of yeast and production methods may be used to classify beer as ale, lager or spontaneously fermented beer. Some beer writers and organisations differentiate and categorise beers by various factors into beer styles. Alcoholic beverages fermented from non-starch sources such as grape juice (wine) or honey (mead), as well as distilled beverages, are not classified as beer.','four',NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,5,'Anyone','LoggedInUsers',NULL),(11,'BlogEntry','2008-07-20 19:48:18','2008-07-20 19:48:42','five','five',NULL,'As for the close link between bread- and beer-making, women produced most beer prior to the introduction of hops in the thirteenth century, selling the beverage from their homes as a means of supplementing the family income.[citation needed] However, by the 7th century AD beer was also being produced and sold by European monasteries. During the Industrial Revolution, the production of beer moved from artisanal manufacture to industrial manufacture, and domestic manufacture ceased to be significant by the end of the 19th century.[10] The development of hydrometers and thermometers changed brewing by allowing the brewer more control of the process, and greater knowledge of the results.','five',NULL,NULL,NULL,1,1,NULL,1,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,3,'Anyone','LoggedInUsers',NULL),(12,'Page','2009-01-25 11:25:51','2009-01-25 11:25:59','the-team','The Team',NULL,'<p></p>','The Team',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,3,'Inherit','Inherit',NULL),(13,'Page','2009-01-25 11:26:04','2009-01-25 11:38:16','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,6,'Inherit','Inherit',NULL);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

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

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

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

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
  `Priority` float default NULL,
  `_obsolete_Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') character set utf8 default 'Anyone',
  `_obsolete_Editors` enum('LoggedInUsers','OnlyTheseUsers') character set utf8 default 'LoggedInUsers',
  `_obsolete_ViewersGroup` int(11) NOT NULL default '0',
  `_obsolete_EditorsGroup` int(11) NOT NULL default '0',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `TagsText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'Page','2008-07-20 14:12:03','2008-07-20 23:00:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,3,'Anyone','LoggedInUsers',NULL),(2,'Page','2008-07-20 14:12:04','2009-01-25 11:38:12','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,4,'Anyone','LoggedInUsers',NULL),(3,'Page','2008-07-20 14:12:04','2008-07-20 14:12:04','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1,'Anyone','LoggedInUsers',NULL),(5,'BlogHolder','2008-07-20 19:26:21','2008-07-20 20:22:15','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,5,'Anyone','LoggedInUsers',NULL),(7,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:48:05','one','one',NULL,'Beer is one of the world\'s oldest beverages, possibly dating back to the 6th millennium BC, and is recorded in the written history of ancient Egypt and Mesopotamia.[5] The earliest Sumerian writings contain references to beer. A prayer to the goddess Ninkasi known as \"The Hymn to Ninkasi\" serves as both a prayer as well as a method of remembering the recipe for beer in a culture with few literate people','one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,9,'Anyone','LoggedInUsers',NULL),(8,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:48:13','two','two',NULL,'The earliest known chemical evidence of beer dates to circa 3500â€“3100 BC from the site of Godin Tepe in the Zagros Mountains of western Iran.[6] As almost any substance containing carbohydrates, mainly sugar or starch, can naturally undergo fermentation, it is likely that beer-like beverages were independently invented among various cultures throughout the world. The invention of bread and beer has been argued to be responsible for humanity\'s ability to develop technology and build civilization.','two',NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,5,'Anyone','LoggedInUsers',NULL),(9,'BlogEntry','2008-07-20 19:46:31','2008-07-20 19:47:32','three','three',NULL,'The most common starch source for beer is malted barley; however, wheat, corn, and rice are also widely used, usually in conjunction with barley. The starch source is mashed, steeped in water while enzymes in the malt break down the starch molecules, producing a sugary liquid known as wort, which is then flavoured with hops, which acts as a natural preservative. Other ingredients such as herbs or fruit may be added. Yeast is then used to cause fermentation, which produces alcohol and other waste products from anaerobic respiration of the yeast as it consumes the sugars. The process of beer production is a branch of zymurgy called brewing.','three',NULL,NULL,NULL,1,1,NULL,1,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,3,'Anyone','LoggedInUsers',NULL),(10,'BlogEntry','2008-07-20 19:47:36','2008-07-20 20:23:19','four','four',NULL,'Beer uses many varying ingredients, production methods and traditions. Different types of yeast and production methods may be used to classify beer as ale, lager or spontaneously fermented beer. Some beer writers and organisations differentiate and categorise beers by various factors into beer styles. Alcoholic beverages fermented from non-starch sources such as grape juice (wine) or honey (mead), as well as distilled beverages, are not classified as beer.','four',NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,5,'Anyone','LoggedInUsers',NULL),(11,'BlogEntry','2008-07-20 19:48:18','2008-07-20 19:48:42','five','five',NULL,'As for the close link between bread- and beer-making, women produced most beer prior to the introduction of hops in the thirteenth century, selling the beverage from their homes as a means of supplementing the family income.[citation needed] However, by the 7th century AD beer was also being produced and sold by European monasteries. During the Industrial Revolution, the production of beer moved from artisanal manufacture to industrial manufacture, and domestic manufacture ceased to be significant by the end of the 19th century.[10] The development of hydrometers and thermometers changed brewing by allowing the brewer more control of the process, and greater knowledge of the results.','five',NULL,NULL,NULL,1,1,NULL,1,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,3,'Anyone','LoggedInUsers',NULL),(12,'Page','2009-01-25 11:25:51','2009-01-25 11:25:59','the-team','The Team',NULL,'<p></p>','The Team',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,3,'Inherit','Inherit',NULL),(13,'Page','2009-01-25 11:26:04','2009-01-25 11:38:16','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,6,'Inherit','Inherit',NULL);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
  `Priority` float default NULL,
  `_obsolete_Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') character set utf8 default 'Anyone',
  `_obsolete_Editors` enum('LoggedInUsers','OnlyTheseUsers') character set utf8 default 'LoggedInUsers',
  `_obsolete_ViewersGroup` int(11) NOT NULL default '0',
  `_obsolete_EditorsGroup` int(11) NOT NULL default '0',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') character set utf8 default 'Inherit',
  `TagsText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2008-07-20 14:12:04','2008-07-20 14:12:04','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(2,2,1,1,0,0,'Page','2008-07-20 14:12:04','2008-07-20 14:12:04','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(3,3,1,1,0,0,'Page','2008-07-20 14:12:04','2008-07-20 14:12:04','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(4,4,1,0,0,0,'ErrorPage','2008-07-20 14:12:04','2008-07-20 14:12:04','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(5,5,1,1,0,0,'BlogHolder','2008-07-20 19:26:21','2008-07-20 19:26:21','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(6,7,1,0,1,0,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:27:11','new-blogentry','New BlogEntry',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(7,7,2,0,1,0,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:41:36','one','one',NULL,NULL,'one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(8,7,3,0,1,0,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:41:56','one','one',NULL,NULL,'one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(9,7,4,0,1,0,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:41:57','one','one',NULL,NULL,'one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(10,7,5,1,1,1,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:41:57','one','one',NULL,NULL,'one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(11,8,1,0,1,0,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:42:05','new-blogentry','New BlogEntry',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(12,8,2,0,1,0,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:42:18','two','two',NULL,NULL,'two',NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(13,8,3,1,1,1,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:42:18','two','two',NULL,NULL,'two',NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(14,7,6,0,1,0,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:42:29','one','one',NULL,NULL,'one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(15,7,7,1,1,1,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:42:29','one','one',NULL,NULL,'one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(16,9,1,0,1,0,'BlogEntry','2008-07-20 19:46:31','2008-07-20 19:46:31','new-blogentry','New BlogEntry',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(17,9,2,0,1,0,'BlogEntry','2008-07-20 19:46:31','2008-07-20 19:47:32','three','three',NULL,'The most common starch source for beer is malted barley; however, wheat, corn, and rice are also widely used, usually in conjunction with barley. The starch source is mashed, steeped in water while enzymes in the malt break down the starch molecules, producing a sugary liquid known as wort, which is then flavoured with hops, which acts as a natural preservative. Other ingredients such as herbs or fruit may be added. Yeast is then used to cause fermentation, which produces alcohol and other waste products from anaerobic respiration of the yeast as it consumes the sugars. The process of beer production is a branch of zymurgy called brewing.','three',NULL,NULL,NULL,1,1,NULL,1,3,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(18,9,3,1,1,1,'BlogEntry','2008-07-20 19:46:31','2008-07-20 19:47:32','three','three',NULL,'The most common starch source for beer is malted barley; however, wheat, corn, and rice are also widely used, usually in conjunction with barley. The starch source is mashed, steeped in water while enzymes in the malt break down the starch molecules, producing a sugary liquid known as wort, which is then flavoured with hops, which acts as a natural preservative. Other ingredients such as herbs or fruit may be added. Yeast is then used to cause fermentation, which produces alcohol and other waste products from anaerobic respiration of the yeast as it consumes the sugars. The process of beer production is a branch of zymurgy called brewing.','three',NULL,NULL,NULL,1,1,NULL,1,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(19,10,1,0,1,0,'BlogEntry','2008-07-20 19:47:36','2008-07-20 19:47:36','new-blogentry','New BlogEntry',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(20,10,2,0,1,0,'BlogEntry','2008-07-20 19:47:36','2008-07-20 19:47:54','four','four',NULL,'Beer uses many varying ingredients, production methods and traditions. Different types of yeast and production methods may be used to classify beer as ale, lager or spontaneously fermented beer. Some beer writers and organisations differentiate and categorise beers by various factors into beer styles. Alcoholic beverages fermented from non-starch sources such as grape juice (wine) or honey (mead), as well as distilled beverages, are not classified as beer.','four',NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(21,10,3,1,1,1,'BlogEntry','2008-07-20 19:47:36','2008-07-20 19:47:54','four','four',NULL,'Beer uses many varying ingredients, production methods and traditions. Different types of yeast and production methods may be used to classify beer as ale, lager or spontaneously fermented beer. Some beer writers and organisations differentiate and categorise beers by various factors into beer styles. Alcoholic beverages fermented from non-starch sources such as grape juice (wine) or honey (mead), as well as distilled beverages, are not classified as beer.','four',NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(22,7,8,0,1,0,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:48:04','one','one',NULL,'Beer is one of the world\'s oldest beverages, possibly dating back to the 6th millennium BC, and is recorded in the written history of ancient Egypt and Mesopotamia.[5] The earliest Sumerian writings contain references to beer. A prayer to the goddess Ninkasi known as \"The Hymn to Ninkasi\" serves as both a prayer as well as a method of remembering the recipe for beer in a culture with few literate people','one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(23,7,9,1,1,1,'BlogEntry','2008-07-20 19:27:11','2008-07-20 19:48:05','one','one',NULL,'Beer is one of the world\'s oldest beverages, possibly dating back to the 6th millennium BC, and is recorded in the written history of ancient Egypt and Mesopotamia.[5] The earliest Sumerian writings contain references to beer. A prayer to the goddess Ninkasi known as \"The Hymn to Ninkasi\" serves as both a prayer as well as a method of remembering the recipe for beer in a culture with few literate people','one',NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(24,8,4,0,1,0,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:48:13','two','two',NULL,'The earliest known chemical evidence of beer dates to circa 3500â€“3100 BC from the site of Godin Tepe in the Zagros Mountains of western Iran.[6] As almost any substance containing carbohydrates, mainly sugar or starch, can naturally undergo fermentation, it is likely that beer-like beverages were independently invented among various cultures throughout the world. The invention of bread and beer has been argued to be responsible for humanity\'s ability to develop technology and build civilization.','two',NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(25,8,5,1,1,1,'BlogEntry','2008-07-20 19:42:05','2008-07-20 19:48:13','two','two',NULL,'The earliest known chemical evidence of beer dates to circa 3500â€“3100 BC from the site of Godin Tepe in the Zagros Mountains of western Iran.[6] As almost any substance containing carbohydrates, mainly sugar or starch, can naturally undergo fermentation, it is likely that beer-like beverages were independently invented among various cultures throughout the world. The invention of bread and beer has been argued to be responsible for humanity\'s ability to develop technology and build civilization.','two',NULL,NULL,NULL,1,1,NULL,1,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(26,11,1,0,1,0,'BlogEntry','2008-07-20 19:48:18','2008-07-20 19:48:18','new-blogentry','New BlogEntry',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,5,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(27,11,2,0,1,0,'BlogEntry','2008-07-20 19:48:18','2008-07-20 19:48:42','five','five',NULL,'As for the close link between bread- and beer-making, women produced most beer prior to the introduction of hops in the thirteenth century, selling the beverage from their homes as a means of supplementing the family income.[citation needed] However, by the 7th century AD beer was also being produced and sold by European monasteries. During the Industrial Revolution, the production of beer moved from artisanal manufacture to industrial manufacture, and domestic manufacture ceased to be significant by the end of the 19th century.[10] The development of hydrometers and thermometers changed brewing by allowing the brewer more control of the process, and greater knowledge of the results.','five',NULL,NULL,NULL,1,1,NULL,1,5,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(28,11,3,1,1,1,'BlogEntry','2008-07-20 19:48:18','2008-07-20 19:48:42','five','five',NULL,'As for the close link between bread- and beer-making, women produced most beer prior to the introduction of hops in the thirteenth century, selling the beverage from their homes as a means of supplementing the family income.[citation needed] However, by the 7th century AD beer was also being produced and sold by European monasteries. During the Industrial Revolution, the production of beer moved from artisanal manufacture to industrial manufacture, and domestic manufacture ceased to be significant by the end of the 19th century.[10] The development of hydrometers and thermometers changed brewing by allowing the brewer more control of the process, and greater knowledge of the results.','five',NULL,NULL,NULL,1,1,NULL,1,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(29,5,2,0,1,0,'BlogHolder','2008-07-20 19:26:21','2008-07-20 20:21:59','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(30,5,3,1,1,1,'BlogHolder','2008-07-20 19:26:21','2008-07-20 20:21:59','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(31,5,4,0,1,0,'BlogHolder','2008-07-20 19:26:21','2008-07-20 20:22:15','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(32,5,5,1,1,1,'BlogHolder','2008-07-20 19:26:21','2008-07-20 20:22:15','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(33,10,4,0,1,0,'BlogEntry','2008-07-20 19:47:36','2008-07-20 20:23:19','four','four',NULL,'Beer uses many varying ingredients, production methods and traditions. Different types of yeast and production methods may be used to classify beer as ale, lager or spontaneously fermented beer. Some beer writers and organisations differentiate and categorise beers by various factors into beer styles. Alcoholic beverages fermented from non-starch sources such as grape juice (wine) or honey (mead), as well as distilled beverages, are not classified as beer.','four',NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(34,10,5,1,1,1,'BlogEntry','2008-07-20 19:47:36','2008-07-20 20:23:19','four','four',NULL,'Beer uses many varying ingredients, production methods and traditions. Different types of yeast and production methods may be used to classify beer as ale, lager or spontaneously fermented beer. Some beer writers and organisations differentiate and categorise beers by various factors into beer styles. Alcoholic beverages fermented from non-starch sources such as grape juice (wine) or honey (mead), as well as distilled beverages, are not classified as beer.','four',NULL,NULL,NULL,1,1,NULL,1,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',0,0,NULL,5,'Anyone','LoggedInUsers',NULL),(35,1,2,0,1,0,'Page','2008-07-20 14:12:03','2008-07-20 23:00:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(36,1,3,1,1,1,'Page','2008-07-20 14:12:03','2008-07-20 23:00:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(37,12,1,0,1,0,'Page','2009-01-25 11:25:51','2009-01-25 11:25:51','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(38,12,2,0,1,0,'Page','2009-01-25 11:25:51','2009-01-25 11:25:59','the-team','The Team',NULL,'<p></p>','The Team',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(39,12,3,1,1,1,'Page','2009-01-25 11:25:51','2009-01-25 11:25:59','the-team','The Team',NULL,'<p></p>','The Team',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(40,13,1,0,1,0,'Page','2009-01-25 11:26:04','2009-01-25 11:26:04','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(41,13,2,0,1,0,'Page','2009-01-25 11:26:04','2009-01-25 11:26:10','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(42,13,3,1,1,1,'Page','2009-01-25 11:26:04','2009-01-25 11:26:10','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(43,13,4,0,1,0,'Page','2009-01-25 11:26:04','2009-01-25 11:27:01','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(44,2,2,0,1,0,'Page','2008-07-20 14:12:04','2009-01-25 11:27:12','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(45,2,3,0,1,0,'Page','2008-07-20 14:12:04','2009-01-25 11:38:12','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(46,2,4,1,1,1,'Page','2008-07-20 14:12:04','2009-01-25 11:38:12','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,'Anyone','LoggedInUsers',NULL),(47,13,5,0,1,0,'Page','2009-01-25 11:26:04','2009-01-25 11:38:16','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL),(48,13,6,1,1,1,'Page','2009-01-25 11:26:04','2009-01-25 11:38:16','the-location','The Location',NULL,'<p></p>','The Location',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2,'Inherit','Inherit',NULL);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedFileField`
--

DROP TABLE IF EXISTS `SubmittedFileField`;
CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubmittedFileField`
--

LOCK TABLES `SubmittedFileField` WRITE;
/*!40000 ALTER TABLE `SubmittedFileField` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedFileField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedForm`
--

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

--
-- Dumping data for table `SubmittedForm`
--

LOCK TABLES `SubmittedForm` WRITE;
/*!40000 ALTER TABLE `SubmittedForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedFormField`
--

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

--
-- Dumping data for table `SubmittedFormField`
--

LOCK TABLES `SubmittedFormField` WRITE;
/*!40000 ALTER TABLE `SubmittedFormField` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedFormField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscribeForm`
--

DROP TABLE IF EXISTS `SubscribeForm`;
CREATE TABLE `SubscribeForm` (
  `ID` int(11) NOT NULL auto_increment,
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubscribeForm`
--

LOCK TABLES `SubscribeForm` WRITE;
/*!40000 ALTER TABLE `SubscribeForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubscribeForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscribeForm_Live`
--

DROP TABLE IF EXISTS `SubscribeForm_Live`;
CREATE TABLE `SubscribeForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubscribeForm_Live`
--

LOCK TABLES `SubscribeForm_Live` WRITE;
/*!40000 ALTER TABLE `SubscribeForm_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubscribeForm_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscribeForm_versions`
--

DROP TABLE IF EXISTS `SubscribeForm_versions`;
CREATE TABLE `SubscribeForm_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubscribeForm_versions`
--

LOCK TABLES `SubscribeForm_versions` WRITE;
/*!40000 ALTER TABLE `SubscribeForm_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubscribeForm_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagCloudWidget`
--

DROP TABLE IF EXISTS `TagCloudWidget`;
CREATE TABLE `TagCloudWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Title` varchar(50) character set utf8 default NULL,
  `Limit` int(11) NOT NULL default '0',
  `Sortby` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TagCloudWidget`
--

LOCK TABLES `TagCloudWidget` WRITE;
/*!40000 ALTER TABLE `TagCloudWidget` DISABLE KEYS */;
INSERT INTO `TagCloudWidget` VALUES (2,NULL,0,NULL);
/*!40000 ALTER TABLE `TagCloudWidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrackBackPing`
--

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

--
-- Dumping data for table `TrackBackPing`
--

LOCK TABLES `TrackBackPing` WRITE;
/*!40000 ALTER TABLE `TrackBackPing` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrackBackPing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm`
--

DROP TABLE IF EXISTS `UserDefinedForm`;
CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm`
--

LOCK TABLES `UserDefinedForm` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_Live`
--

DROP TABLE IF EXISTS `UserDefinedForm_Live`;
CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_Live`
--

LOCK TABLES `UserDefinedForm_Live` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_versions`
--

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
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_versions`
--

LOCK TABLES `UserDefinedForm_versions` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_versions`
--

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
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `ContextNavUseReferer` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VirtualPage_versions`
--

LOCK TABLES `VirtualPage_versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Widget`
--

DROP TABLE IF EXISTS `Widget`;
CREATE TABLE `Widget` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Widget','ArchiveWidget','BlogManagementWidget','RSSWidget','SubscribeRSSWidget','TagCloudWidget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Widget`
--

LOCK TABLES `Widget` WRITE;
/*!40000 ALTER TABLE `Widget` DISABLE KEYS */;
INSERT INTO `Widget` VALUES (1,'BlogManagementWidget','2008-07-20 19:26:23','2008-07-20 20:22:15',1,0),(2,'TagCloudWidget','2008-07-20 19:26:23','2008-07-20 20:22:15',1,1),(3,'ArchiveWidget','2008-07-20 19:26:23','2008-07-20 20:22:15',1,2);
/*!40000 ALTER TABLE `Widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WidgetArea`
--

DROP TABLE IF EXISTS `WidgetArea`;
CREATE TABLE `WidgetArea` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('WidgetArea') character set utf8 default 'WidgetArea',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WidgetArea`
--

LOCK TABLES `WidgetArea` WRITE;
/*!40000 ALTER TABLE `WidgetArea` DISABLE KEYS */;
INSERT INTO `WidgetArea` VALUES (1,'WidgetArea','2008-07-20 19:26:21','2008-07-20 19:26:21');
/*!40000 ALTER TABLE `WidgetArea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-02-01  3:57:45
