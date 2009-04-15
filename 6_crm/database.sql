-- MySQL dump 10.11
--
-- Host: localhost    Database: SS_ssbook_crm_erweiterung
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
INSERT INTO `ArchiveWidget` VALUES (3,'month');
/*!40000 ALTER TABLE `ArchiveWidget` ENABLE KEYS */;
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogEntry`
--

LOCK TABLES `BlogEntry` WRITE;
/*!40000 ALTER TABLE `BlogEntry` DISABLE KEYS */;
INSERT INTO `BlogEntry` VALUES (5,'2009-01-17 17:19:59',NULL,'silverstripe, blog');
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogEntry_Live`
--

LOCK TABLES `BlogEntry_Live` WRITE;
/*!40000 ALTER TABLE `BlogEntry_Live` DISABLE KEYS */;
INSERT INTO `BlogEntry_Live` VALUES (5,'2009-01-17 17:19:59',NULL,'silverstripe, blog');
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
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BlogEntry_versions`
--

LOCK TABLES `BlogEntry_versions` WRITE;
/*!40000 ALTER TABLE `BlogEntry_versions` DISABLE KEYS */;
INSERT INTO `BlogEntry_versions` VALUES (1,5,1,0,0,0,'2009-01-17 17:19:59',NULL,'silverstripe, blog');
/*!40000 ALTER TABLE `BlogEntry_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogHolder`
--

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

--
-- Dumping data for table `BlogHolder`
--

LOCK TABLES `BlogHolder` WRITE;
/*!40000 ALTER TABLE `BlogHolder` DISABLE KEYS */;
INSERT INTO `BlogHolder` VALUES (4,NULL,NULL,0,1);
/*!40000 ALTER TABLE `BlogHolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogHolder_Live`
--

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

--
-- Dumping data for table `BlogHolder_Live`
--

LOCK TABLES `BlogHolder_Live` WRITE;
/*!40000 ALTER TABLE `BlogHolder_Live` DISABLE KEYS */;
INSERT INTO `BlogHolder_Live` VALUES (4,NULL,NULL,0,1);
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

--
-- Dumping data for table `BlogHolder_versions`
--

LOCK TABLES `BlogHolder_versions` WRITE;
/*!40000 ALTER TABLE `BlogHolder_versions` DISABLE KEYS */;
INSERT INTO `BlogHolder_versions` VALUES (1,4,1,0,0,0,NULL,NULL,0,1),(2,4,2,0,1,0,NULL,NULL,0,1),(3,4,3,0,1,0,NULL,NULL,0,1),(4,4,4,0,1,0,NULL,NULL,0,1);
/*!40000 ALTER TABLE `BlogHolder_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionPage`
--

DROP TABLE IF EXISTS `CollectionPage`;
CREATE TABLE `CollectionPage` (
  `ID` int(11) NOT NULL auto_increment,
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CollectionPage`
--

LOCK TABLES `CollectionPage` WRITE;
/*!40000 ALTER TABLE `CollectionPage` DISABLE KEYS */;
INSERT INTO `CollectionPage` VALUES (8,'Developer','CollectionController'),(14,'Reference','CollectionController');
/*!40000 ALTER TABLE `CollectionPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionPage_Live`
--

DROP TABLE IF EXISTS `CollectionPage_Live`;
CREATE TABLE `CollectionPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CollectionPage_Live`
--

LOCK TABLES `CollectionPage_Live` WRITE;
/*!40000 ALTER TABLE `CollectionPage_Live` DISABLE KEYS */;
INSERT INTO `CollectionPage_Live` VALUES (8,'Developer','CollectionController'),(14,'Reference','CollectionController');
/*!40000 ALTER TABLE `CollectionPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionPage_versions`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CollectionPage_versions`
--

LOCK TABLES `CollectionPage_versions` WRITE;
/*!40000 ALTER TABLE `CollectionPage_versions` DISABLE KEYS */;
INSERT INTO `CollectionPage_versions` VALUES (1,8,1,0,1,0,'Developer','CollectionController'),(2,8,2,0,1,0,'Developer','CollectionController'),(3,14,1,0,1,0,NULL,'CollectionController'),(4,14,2,0,1,0,'Reference','CollectionController'),(5,14,3,0,1,0,'Reference','CollectionController');
/*!40000 ALTER TABLE `CollectionPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developer`
--

DROP TABLE IF EXISTS `Developer`;
CREATE TABLE `Developer` (
  `ID` int(11) NOT NULL auto_increment,
  `Region` varchar(200) character set utf8 default NULL,
  `Introduction` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Developer`
--

LOCK TABLES `Developer` WRITE;
/*!40000 ALTER TABLE `Developer` DISABLE KEYS */;
INSERT INTO `Developer` VALUES (3,'Nelson',NULL),(2,'Wellington','Rugby for life!');
/*!40000 ALTER TABLE `Developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developer_Skills`
--

DROP TABLE IF EXISTS `Developer_Skills`;
CREATE TABLE `Developer_Skills` (
  `ID` int(11) NOT NULL auto_increment,
  `DeveloperID` int(11) NOT NULL default '0',
  `SkillID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `DeveloperID` (`DeveloperID`),
  KEY `SkillID` (`SkillID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Developer_Skills`
--

LOCK TABLES `Developer_Skills` WRITE;
/*!40000 ALTER TABLE `Developer_Skills` DISABLE KEYS */;
INSERT INTO `Developer_Skills` VALUES (2,2,4),(3,2,5);
/*!40000 ALTER TABLE `Developer_Skills` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableEmailField`
--

LOCK TABLES `EditableEmailField` WRITE;
/*!40000 ALTER TABLE `EditableEmailField` DISABLE KEYS */;
INSERT INTO `EditableEmailField` VALUES (2,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField`
--

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;
INSERT INTO `EditableFormField` VALUES (1,'EditableTextField','2009-01-17 17:32:17','2009-01-17 17:33:54','EditableTextField1','Name',NULL,0,1,1,NULL,3),(2,'EditableEmailField','2009-01-17 17:32:23','2009-01-17 17:33:54','EditableEmailField2','Email-Addresse',NULL,1,0,1,NULL,3),(4,'EditableRadioField','2009-01-17 17:33:05','2009-01-17 17:33:54','EditableRadioField4','Art der Anfrage','_2',2,0,1,NULL,3),(5,'EditableTextField','2009-01-17 17:33:35','2009-01-17 17:33:54','EditableTextField5','Nachricht',NULL,3,0,1,NULL,3);
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableRadioOption`
--

LOCK TABLES `EditableRadioOption` WRITE;
/*!40000 ALTER TABLE `EditableRadioOption` DISABLE KEYS */;
INSERT INTO `EditableRadioOption` VALUES (1,'EditableRadioOption','2009-01-17 17:33:54','2009-01-17 17:33:54','option0','Anregung',0,NULL,0,4),(2,'EditableRadioOption','2009-01-17 17:33:54','2009-01-17 17:33:54','option0','Kritik',1,NULL,1,4);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField`
--

LOCK TABLES `EditableTextField` WRITE;
/*!40000 ALTER TABLE `EditableTextField` DISABLE KEYS */;
INSERT INTO `EditableTextField` VALUES (1,32,1,32,1),(5,32,1,32,5);
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (6,404);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (6,404);
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
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (1,6,1,0,0,0,404),(2,6,2,0,1,0,404),(3,6,3,0,1,0,404);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'Folder','2009-01-17 18:19:32','2009-01-17 18:19:32','Uploads','Uploads','assets/Uploads/',NULL,0,0,0),(2,'Reference_ScreenshotImage','2009-01-17 18:19:32','2009-01-17 18:19:32','gradient1.jpg','gradient1','assets/Uploads/gradient1.jpg',NULL,0,1,0),(3,'Reference_ScreenshotImage','2009-01-17 18:21:49','2009-01-17 18:21:49','gradient2.jpg','gradient2','assets/Uploads/gradient2.jpg',NULL,0,1,1),(4,'Reference_ScreenshotImage','2009-01-17 18:25:59','2009-01-17 18:25:59','gradient4.jpg','gradient4','assets/Uploads/gradient4.jpg',NULL,0,1,0);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
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
  `Locked` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `IPRestrictions` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'Group','2009-01-17 17:20:32','2009-01-17 17:20:32','Administrators',NULL,'administrators',0,0,NULL,0),(2,'Group','2009-01-17 17:40:17','2009-01-17 17:40:33','Redakteure',NULL,'neue-gruppe',0,0,NULL,0),(3,'Group','2009-01-17 17:40:35','2009-01-17 17:40:44','Chefredakteure',NULL,'neue-gruppe',0,0,NULL,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Job`
--

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
INSERT INTO `Job` VALUES (1,'Job','2009-01-17 17:45:56','2009-01-17 17:48:42','Social Network Datenmodell','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus nunc ullamcorper orci, fermentum bibendum enim nibh eget ipsum. Donec porttitor ligula eu dolor. Maecenas vitae nulla consequat libero cursus venenatis.','London','2010-10-12',9,1),(2,'Job','2009-01-17 17:46:24','2009-01-17 17:46:24','Wetter Widget Programmierung','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. ','Paris',NULL,9,1),(3,'Job','2009-01-17 17:49:24','2009-01-17 17:49:24','Interface fÃ¼r Mitgliederverwaltung','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus nunc ullamcorper orci, fermentum bibendum enim nibh eget ipsum. Donec porttitor ligula eu dolor. Maecenas vitae nulla consequat libero cursus venenatis.\r\n\r\n','Auckland',NULL,10,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JobCategory_Subscribers`
--

LOCK TABLES `JobCategory_Subscribers` WRITE;
/*!40000 ALTER TABLE `JobCategory_Subscribers` DISABLE KEYS */;
INSERT INTO `JobCategory_Subscribers` VALUES (1,10,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'Member','2009-01-17 17:20:32','2009-01-17 18:25:15','Admin','Admin','admin','m9x7zgns5zkcs840o0o4gko08kw84gw',NULL,3,'2009-01-17 18:27:35',0,NULL,NULL,0,'sha1','91d4m443o18ogskcg48sk4ww04wccg8o8wgck04',NULL,NULL,'de_DE'),(2,'Developer','2009-01-17 18:18:48','2009-01-17 18:27:42','Jarrod','McCracken','jarrod@test.com','45kldd3b5mwww4ggsoscwkc8ko0wk04',NULL,5,'2009-01-17 18:28:02',0,NULL,NULL,0,'sha1','6e941iodmm80g0wc4gwcswkoo4ck0gwoocowk4k',NULL,NULL,'de_DE'),(3,'Developer','2009-01-17 18:20:59','2009-01-17 18:20:59','Paul','Rauhihi','paul@test.com','o1mftd1ws00w4c8c888kg4kokwgkcss',NULL,0,NULL,0,NULL,NULL,0,'sha1','5b0e5tvv51k44go040go0sg4s8w044ksso0kww',NULL,NULL,'de_DE');
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` VALUES (1,'MemberPassword','2009-01-17 17:20:32','2009-01-17 17:20:32','m9x7zgns5zkcs840o0o4gko08kw84gw','91d4m443o18ogskcg48sk4ww04wccg8o8wgck04','sha1',1),(2,'MemberPassword','2009-01-17 18:19:32','2009-01-17 18:19:32','45kldd3b5mwww4ggsoscwkc8ko0wk04','6e941iodmm80g0wc4gwcswkoo4ck0gwoocowk4k','sha1',2),(3,'MemberPassword','2009-01-17 18:20:59','2009-01-17 18:20:59',NULL,NULL,'none',3),(4,'MemberPassword','2009-01-17 18:20:59','2009-01-17 18:20:59','o1mftd1ws00w4c8c888kg4kokwgkcss','5b0e5tvv51k44go040go0sg4s8w044ksso0kww','sha1',3);
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultiFormSession`
--

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

--
-- Dumping data for table `MultiFormSession`
--

LOCK TABLES `MultiFormSession` WRITE;
/*!40000 ALTER TABLE `MultiFormSession` DISABLE KEYS */;
INSERT INTO `MultiFormSession` VALUES (1,'MultiFormSession','2009-01-17 18:17:19','2009-01-17 18:18:27','c4623dc3b83e0841e8c43347486b73bb3224690e',0,1,5),(2,'MultiFormSession','2009-01-17 18:18:05','2009-01-17 18:18:05','4d95c8e84aaf5583a2ae5bb2ae65ef176cdadd04',0,1,2),(3,'MultiFormSession','2009-01-17 18:18:20','2009-01-17 18:18:20','c604f5a9532905d2ef5733685b619bb11dd5655c',0,1,3),(4,'MultiFormSession','2009-01-17 18:18:27','2009-01-17 18:18:27','8a14b67e02e27aa1c5f81eb5431e6a26c80e8ecb',0,1,4),(5,'MultiFormSession','2009-01-17 18:21:07','2009-01-17 18:21:07','5080f731be3bfba63295ec45ad2449f3a0224df6',0,1,6);
/*!40000 ALTER TABLE `MultiFormSession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultiFormStep`
--

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

--
-- Dumping data for table `MultiFormStep`
--

LOCK TABLES `MultiFormStep` WRITE;
/*!40000 ALTER TABLE `MultiFormStep` DISABLE KEYS */;
INSERT INTO `MultiFormStep` VALUES (1,'RegistrationDetailsStep','2009-01-17 18:17:19','2009-01-17 18:18:27','a:7:{s:9:\"FirstName\";s:6:\"Jarrod\";s:7:\"Surname\";s:9:\"McCracken\";s:5:\"Email\";s:15:\"jarrod@test.com\";s:6:\"Region\";s:10:\"Wellington\";s:12:\"Introduction\";s:15:\"Rugby for life!\";s:8:\"Password\";s:4:\"test\";s:6:\"Skills\";s:5:\"Rugby\";}',1),(2,'RegistrationDetailsStep','2009-01-17 18:18:05','2009-01-17 18:18:05',NULL,2),(3,'RegistrationDetailsStep','2009-01-17 18:18:20','2009-01-17 18:18:20',NULL,3),(4,'RegistrationDetailsStep','2009-01-17 18:18:27','2009-01-17 18:18:27',NULL,4),(5,'RegistrationReferenceStep','2009-01-17 18:18:27','2009-01-17 18:19:32','a:5:{s:3:\"URL\";s:15:\"http://test.com\";s:5:\"Title\";s:0:\"\";s:13:\"MAX_FILE_SIZE\";s:1:\"0\";s:13:\"action_finish\";s:8:\"Absenden\";s:15:\"ScreenshotImage\";a:5:{s:4:\"name\";s:13:\"gradient1.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:8:\"tmp_name\";s:36:\"/Applications/MAMP/tmp/php/php1UwI1e\";s:5:\"error\";i:0;s:4:\"size\";i:64020;}}',1),(6,'RegistrationDetailsStep','2009-01-17 18:21:07','2009-01-17 18:21:07',NULL,5);
/*!40000 ALTER TABLE `MultiFormStep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewMembersWidget`
--

DROP TABLE IF EXISTS `NewMembersWidget`;
CREATE TABLE `NewMembersWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Limit` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NewMembersWidget`
--

LOCK TABLES `NewMembersWidget` WRITE;
/*!40000 ALTER TABLE `NewMembersWidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewMembersWidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
CREATE TABLE `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page`
--

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` VALUES (1,0),(2,0),(3,0),(4,1),(5,0),(6,0),(13,2),(8,3),(14,4);
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
  `CommenterURL` varchar(255) character set utf8 default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PageComment`
--

LOCK TABLES `PageComment` WRITE;
/*!40000 ALTER TABLE `PageComment` DISABLE KEYS */;
INSERT INTO `PageComment` VALUES (1,'PageComment','2009-01-17 17:31:09','2009-01-17 17:31:09','Ingo Schommer','Dies ist ein Testkommentar',0,0,'http://chillu.com',1,1);
/*!40000 ALTER TABLE `PageComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_Live`
--

DROP TABLE IF EXISTS `Page_Live`;
CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_Live`
--

LOCK TABLES `Page_Live` WRITE;
/*!40000 ALTER TABLE `Page_Live` DISABLE KEYS */;
INSERT INTO `Page_Live` VALUES (1,0),(2,0),(3,0),(4,1),(5,0),(13,2),(8,3),(14,4);
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
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_versions`
--

LOCK TABLES `Page_versions` WRITE;
/*!40000 ALTER TABLE `Page_versions` DISABLE KEYS */;
INSERT INTO `Page_versions` VALUES (1,1,1,0,1,0,0),(2,2,1,0,1,0,0),(3,3,1,0,1,0,0),(4,4,1,0,1,0,1),(5,5,1,0,1,0,0),(6,6,1,0,1,0,0),(7,13,1,0,1,0,0),(8,13,2,0,1,0,2),(9,13,3,0,1,0,2),(10,13,4,0,1,0,2),(11,13,5,0,1,0,2),(12,13,6,0,1,0,2),(13,1,2,0,1,0,0),(14,8,1,0,1,0,3),(15,8,2,0,1,0,3),(16,1,3,0,1,0,0),(17,14,1,0,1,0,0),(18,14,2,0,1,0,4),(19,14,3,0,1,0,4);
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
INSERT INTO `Permission` VALUES (1,'Permission','2009-01-17 17:20:32','2009-01-17 17:20:32','ADMIN',0,1,1);
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
-- Table structure for table `Reference`
--

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

--
-- Dumping data for table `Reference`
--

LOCK TABLES `Reference` WRITE;
/*!40000 ALTER TABLE `Reference` DISABLE KEYS */;
INSERT INTO `Reference` VALUES (1,'Reference','2009-01-17 18:19:32','2009-01-17 18:27:53','http://test.com','Test',4,2),(2,'Reference','2009-01-17 18:21:40','2009-01-17 18:21:49','http://test.com','test0r',3,1);
/*!40000 ALTER TABLE `Reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

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

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'Page','2009-01-17 17:19:58','2009-01-17 18:22:09','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,12),(9,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:45','programmierung','Programmierung',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(2,'JobCategoryHolder','2009-01-17 17:19:58','2009-01-17 17:42:55','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),(8,'CollectionPage','2009-01-17 17:26:13','2009-01-17 18:22:22','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8),(3,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:33:54','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),(4,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),(5,'BlogEntry','2009-01-17 17:19:59','2009-01-17 17:19:59','sample-blog-entry','SilverStripe Blog Module erfolgreich installiert',NULL,'Herzlichen GlÃ¼ckwunsch, das SilverStripe Blog Modul wurde erfolgreich installiert. Dieser Blog-Eintrag kann sicher gelÃ¶scht werden. Sie kÃ¶nnen die Blog-Einstellungen (z.B. die angezeigten Widgets in der Sidebar) im admin-Bereich verÃ¤ndern.',NULL,NULL,NULL,NULL,0,1,NULL,1,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,1),(6,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:25:12','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3),(10,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:26','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(11,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:42','inhalt','Inhalt',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(12,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:56','sonstige','Sonstige',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(13,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:10','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,6),(14,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:49','referenzen','Referenzen',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8,3);
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` VALUES (15,1,8,'Content'),(16,1,2,'Content');
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

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

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'Page','2009-01-17 17:19:58','2009-01-17 18:22:22','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,13),(9,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:45','programmierung','Programmierung',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(2,'JobCategoryHolder','2009-01-17 17:19:58','2009-01-17 17:42:57','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),(3,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:33:54','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),(4,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,4),(5,'BlogEntry','2009-01-17 17:19:59','2009-01-17 17:19:59','sample-blog-entry','SilverStripe Blog Module erfolgreich installiert',NULL,'Herzlichen GlÃ¼ckwunsch, das SilverStripe Blog Modul wurde erfolgreich installiert. Dieser Blog-Eintrag kann sicher gelÃ¶scht werden. Sie kÃ¶nnen die Blog-Einstellungen (z.B. die angezeigten Widgets in der Sidebar) im admin-Bereich verÃ¤ndern.',NULL,NULL,NULL,NULL,0,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,1),(8,'CollectionPage','2009-01-17 17:26:13','2009-01-17 18:22:22','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8),(6,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:25:12','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3),(10,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:27','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(11,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:42','inhalt','Inhalt',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(12,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:56','sonstige','Sonstige',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2,3),(13,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:11','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,6),(14,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:49','referenzen','Referenzen',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8,3);
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
-- Table structure for table `SiteTree_lang`
--

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

--
-- Dumping data for table `SiteTree_lang`
--

LOCK TABLES `SiteTree_lang` WRITE;
/*!40000 ALTER TABLE `SiteTree_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_lang_Live`
--

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

--
-- Dumping data for table `SiteTree_lang_Live`
--

LOCK TABLES `SiteTree_lang_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_lang_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_lang_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_lang_versions`
--

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

--
-- Dumping data for table `SiteTree_lang_versions`
--

LOCK TABLES `SiteTree_lang_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_lang_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_lang_versions` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2009-01-17 17:19:58','2009-01-17 17:19:58','home','Startseite',NULL,'<p>Willkommen bei SilverStripe! Dies ist die standard Startseite. Sie kÃ¶nnen diese Seite editieren, indem Sie <a href=\"admin/\">das CMS</a> Ã¶ffnen. Sie kÃ¶nnen auÃŸerdem die  <a href=\"http://doc.silverstripe.com\">Entwicker Dokumentation</a> oder die <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">EinfÃ¼hrungskurse und Tutorien</a> aufrufen.<p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(2,2,1,1,0,0,'Page','2009-01-17 17:19:58','2009-01-17 17:19:58','about-us','Ãœber uns',NULL,'<p>Sie kÃ¶nnen diese Seite mit Ihren eigenen Inhalten fÃ¼llen, oder sie lÃ¶schen und Ihre eigenen Seiten erstellen.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(3,3,1,1,0,0,'Page','2009-01-17 17:19:58','2009-01-17 17:19:58','contact-us','Kontakt',NULL,'<p>Sie kÃ¶nnen diese Seite mit Ihren eigenen Inhalten fÃ¼llen, oder sie lÃ¶schen und Ihre eigenen Seiten erstellen.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(4,4,1,1,0,0,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:19:59','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(5,5,1,1,0,0,'BlogEntry','2009-01-17 17:19:59','2009-01-17 17:19:59','sample-blog-entry','SilverStripe Blog Module erfolgreich installiert',NULL,'Herzlichen GlÃ¼ckwunsch, das SilverStripe Blog Modul wurde erfolgreich installiert. Dieser Blog-Eintrag kann sicher gelÃ¶scht werden. Sie kÃ¶nnen die Blog-Einstellungen (z.B. die angezeigten Widgets in der Sidebar) im admin-Bereich verÃ¤ndern.',NULL,NULL,NULL,NULL,0,1,NULL,1,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,4),(6,6,1,0,0,0,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:19:59','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, mÃ¶glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte Ã¼berprÃ¼fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),(7,4,2,0,1,0,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:20','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(8,4,3,0,1,0,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(9,4,4,1,1,1,'BlogHolder','2009-01-17 17:19:59','2009-01-17 17:24:28','blog','Blog',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(10,6,2,0,1,0,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:25:12','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),(11,6,3,1,1,1,'ErrorPage','2009-01-17 17:19:59','2009-01-17 17:25:12','page-not-found','Seite nicht gefunden',NULL,'<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(12,2,2,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:25:58','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(13,2,3,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:25:58','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(14,7,1,0,1,0,'Page','2009-01-17 17:26:03','2009-01-17 17:26:03','neupage','NeuPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,1),(15,8,1,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:26:13','neupage','NeuPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),(16,8,2,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:27:13','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),(17,8,3,1,1,1,'Page','2009-01-17 17:26:13','2009-01-17 17:27:13','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(18,8,4,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:27:20','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(19,8,5,0,1,0,'Page','2009-01-17 17:26:13','2009-01-17 17:27:56','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(20,8,6,1,1,1,'Page','2009-01-17 17:26:13','2009-01-17 17:27:56','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(21,1,2,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:29:28','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(22,1,3,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:29:28','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(23,1,4,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:30:12','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(24,1,5,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:30:12','home','Startseite',NULL,'<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(25,1,6,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:30:33','home','Startseite',NULL,'<h1>Sie haben die Wahl</h1>\n<h2>Sie suchen nach interessanten Projekten?</h2>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h2>Sie suchen nach f&auml;higen Leuten?</h2>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(26,1,7,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:30:33','home','Startseite',NULL,'<h1>Sie haben die Wahl</h1>\n<h2>Sie suchen nach interessanten Projekten?</h2>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h2>Sie suchen nach f&auml;higen Leuten?</h2>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(27,1,8,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:30:52','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(28,1,9,1,1,1,'Page','2009-01-17 17:19:58','2009-01-17 17:30:52','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(29,3,2,1,1,1,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:31:56','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(30,3,3,0,1,0,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:33:54','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(31,3,4,1,1,1,'UserDefinedForm','2009-01-17 17:19:58','2009-01-17 17:33:54','contact-us','Kontakt',NULL,'<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(32,1,10,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:42:54','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(33,2,4,1,1,1,'JobCategoryHolder','2009-01-17 17:19:58','2009-01-17 17:42:55','jobs','Jobs',NULL,'<p></p>','Jobs',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(34,1,11,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 17:42:57','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(35,9,1,0,1,0,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:14','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),(36,9,2,0,1,0,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:44','programmierung','Programmierung',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),(37,9,3,1,1,1,'JobCategory','2009-01-17 17:43:14','2009-01-17 17:43:45','programmierung','Programmierung',NULL,'<p></p>','Programmierung',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),(38,10,1,0,1,0,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:14','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),(39,10,2,0,1,0,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:26','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),(40,10,3,1,1,1,'JobCategory','2009-01-17 17:47:14','2009-01-17 17:47:26','design','Design',NULL,'<p></p>','Design',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),(41,11,1,0,1,0,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:33','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),(42,11,2,0,1,0,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:42','inhalt','Inhalt',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),(43,11,3,1,1,1,'JobCategory','2009-01-17 17:47:33','2009-01-17 17:47:42','inhalt','Inhalt',NULL,'<p></p>','Inhalt',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),(44,12,1,0,1,0,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:48','new-jobcategory','NeuJobCategory',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,2),(45,12,2,0,1,0,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:56','sonstige','Sonstige',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,2),(46,12,3,1,1,1,'JobCategory','2009-01-17 17:47:48','2009-01-17 17:47:56','sonstige','Sonstige',NULL,'<p></p>','Sonstige',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,2),(47,13,1,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:16:50','new-registrationpage','NeuRegistrationPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),(48,13,2,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:02','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),(49,13,3,1,1,1,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:02','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(50,13,4,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:07','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(51,13,5,0,1,0,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:10','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(52,13,6,1,1,1,'RegistrationPage','2009-01-17 18:16:50','2009-01-17 18:17:10','registrieren','Registrieren',NULL,'<p></p>','Registrieren',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(53,1,12,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 18:22:09','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(54,8,7,0,1,0,'CollectionPage','2009-01-17 17:26:13','2009-01-17 18:22:22','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),(55,8,8,1,1,1,'CollectionPage','2009-01-17 17:26:13','2009-01-17 18:22:22','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(56,1,13,0,1,0,'Page','2009-01-17 17:19:58','2009-01-17 18:22:22','home','Startseite',NULL,'<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href=\"jobs/\">platzieren Sie Ihre Stellenausschreibung</a>.</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),(57,14,1,0,1,0,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:24','new-collectionpage','NeuCollectionPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,8),(58,14,2,0,1,0,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:49','referenzen','Referenzen',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,8),(59,14,3,1,1,1,'CollectionPage','2009-01-17 18:25:24','2009-01-17 18:25:49','referenzen','Referenzen',NULL,'<p></p>','Referenzen',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,8);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skill`
--

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

--
-- Dumping data for table `Skill`
--

LOCK TABLES `Skill` WRITE;
/*!40000 ALTER TABLE `Skill` DISABLE KEYS */;
INSERT INTO `Skill` VALUES (1,'Skill','2009-01-17 18:06:18','2009-01-17 18:06:18','PHP'),(2,'Skill','2009-01-17 18:06:26','2009-01-17 18:06:26','MySQL'),(3,'Skill','2009-01-17 18:06:34','2009-01-17 18:06:34','Apache'),(4,'Skill','2009-01-17 18:19:32','2009-01-17 18:19:32','Rugby'),(5,'Skill','2009-01-17 18:23:52','2009-01-17 18:23:52','Running');
/*!40000 ALTER TABLE `Skill` ENABLE KEYS */;
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
INSERT INTO `TagCloudWidget` VALUES (2,'Tag Cloud',0,'alphabet');
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm`
--

LOCK TABLES `UserDefinedForm` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm` DISABLE KEYS */;
INSERT INTO `UserDefinedForm` VALUES (3,NULL,0,NULL,'<p></p>');
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_Live`
--

LOCK TABLES `UserDefinedForm_Live` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Live` DISABLE KEYS */;
INSERT INTO `UserDefinedForm_Live` VALUES (3,NULL,0,NULL,'<p></p>');
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
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_versions`
--

LOCK TABLES `UserDefinedForm_versions` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_versions` DISABLE KEYS */;
INSERT INTO `UserDefinedForm_versions` VALUES (1,3,1,0,1,0,NULL,0,NULL,NULL),(2,3,2,0,1,0,NULL,0,NULL,'<p></p>'),(3,3,3,0,1,0,NULL,0,NULL,'<p></p>');
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
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Widget`
--

LOCK TABLES `Widget` WRITE;
/*!40000 ALTER TABLE `Widget` DISABLE KEYS */;
INSERT INTO `Widget` VALUES (1,'BlogManagementWidget','2009-01-17 17:19:59','2009-01-17 17:24:28',1,1),(2,'TagCloudWidget','2009-01-17 17:19:59','2009-01-17 17:24:28',4,1),(3,'ArchiveWidget','2009-01-17 17:19:59','2009-01-17 17:24:28',7,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WidgetArea`
--

LOCK TABLES `WidgetArea` WRITE;
/*!40000 ALTER TABLE `WidgetArea` DISABLE KEYS */;
INSERT INTO `WidgetArea` VALUES (1,'WidgetArea','2009-01-17 17:19:59','2009-01-17 17:19:59'),(2,'WidgetArea','2009-01-17 18:17:02','2009-01-17 18:17:02'),(3,'WidgetArea','2009-01-17 18:22:09','2009-01-17 18:22:09'),(4,'WidgetArea','2009-01-17 18:25:49','2009-01-17 18:25:49');
/*!40000 ALTER TABLE `WidgetArea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_RegistrationPage`
--

DROP TABLE IF EXISTS `_obsolete_RegistrationPage`;
CREATE TABLE `_obsolete_RegistrationPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_RegistrationPage`
--

LOCK TABLES `_obsolete_RegistrationPage` WRITE;
/*!40000 ALTER TABLE `_obsolete_RegistrationPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `_obsolete_RegistrationPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_RegistrationPage_Live`
--

DROP TABLE IF EXISTS `_obsolete_RegistrationPage_Live`;
CREATE TABLE `_obsolete_RegistrationPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_obsolete_RegistrationPage_Live`
--

LOCK TABLES `_obsolete_RegistrationPage_Live` WRITE;
/*!40000 ALTER TABLE `_obsolete_RegistrationPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `_obsolete_RegistrationPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_RegistrationPage_versions`
--

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

--
-- Dumping data for table `_obsolete_RegistrationPage_versions`
--

LOCK TABLES `_obsolete_RegistrationPage_versions` WRITE;
/*!40000 ALTER TABLE `_obsolete_RegistrationPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_obsolete_RegistrationPage_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-02-01  4:18:01
