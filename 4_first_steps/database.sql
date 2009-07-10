# Sequel Pro dump
# Version 663
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.0.41)
# Database: silverstripe_book_4
# Generation Time: 2009-07-10 17:06:47 +1200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `EditableDropdownOption` WRITE;
/*!40000 ALTER TABLE `EditableDropdownOption` DISABLE KEYS */;
INSERT INTO `EditableDropdownOption` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`ParentID`)
VALUES
	(1,'EditableDropdownOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option0','Anregung',0,0,3),
	(2,'EditableDropdownOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option1','Frage',0,1,3),
	(3,'EditableDropdownOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option2','Kritik',0,2,3);

/*!40000 ALTER TABLE `EditableDropdownOption` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;
INSERT INTO `EditableFormField` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Required`,`CanDelete`,`CustomParameter`,`ParentID`,`CustomErrorMessage`,`CustomRules`,`CustomSettings`)
VALUES
	(3,'EditableDropdown','2009-02-01 20:34:59','2009-07-10 13:23:08','EditableDropdown3','Message type',NULL,4,0,1,NULL,3,NULL,'a:0:{}','a:1:{s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(4,'EditableRadioField','2009-02-01 20:35:13','2009-07-10 13:23:08','EditableRadioField4','Website rating',NULL,3,0,1,NULL,3,NULL,'a:0:{}','a:1:{s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(5,'EditableTextField','2009-02-01 20:35:21','2009-07-10 13:23:08','EditableTextField5','Message',NULL,5,0,1,NULL,3,NULL,'a:0:{}','a:5:{s:4:\"Size\";s:4:\"1024\";s:9:\"MinLength\";s:1:\"0\";s:9:\"MaxLength\";s:4:\"1024\";s:4:\"Rows\";s:1:\"4\";s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(6,'EditableTextField','2009-07-10 13:18:30','2009-07-10 13:23:08','EditableTextField6','Name',NULL,1,0,1,NULL,3,NULL,'a:0:{}','a:5:{s:4:\"Size\";s:2:\"32\";s:9:\"MinLength\";s:1:\"0\";s:9:\"MaxLength\";s:2:\"32\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}'),
	(7,'EditableEmailField','2009-07-10 13:18:37','2009-07-10 13:23:08','EditableEmailField7','Email address',NULL,2,1,1,NULL,3,NULL,'a:0:{}','a:1:{s:10:\"ShowOnLoad\";s:4:\"Show\";}');

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
	(1,'EditableOption','2009-07-10 13:19:33','2009-07-10 13:23:08','option1','Suggestion',0,1,3),
	(2,'EditableOption','2009-07-10 13:19:37','2009-07-10 13:23:08','option2','Error report',0,2,3),
	(3,'EditableOption','2009-07-10 13:19:42','2009-07-10 13:23:08','option3','Question',0,3,3),
	(4,'EditableOption','2009-07-10 13:20:57','2009-07-10 13:23:08','option4','A',0,1,4),
	(5,'EditableOption','2009-07-10 13:21:00','2009-07-10 13:23:08','option5','B',0,2,4),
	(6,'EditableOption','2009-07-10 13:21:01','2009-07-10 13:23:08','option6','C',0,3,4),
	(7,'EditableOption','2009-07-10 13:21:03','2009-07-10 13:23:08','option7','D',0,4,4),
	(8,'EditableOption','2009-07-10 13:21:05','2009-07-10 13:23:08','option8','F',0,5,4);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `EditableRadioOption` WRITE;
/*!40000 ALTER TABLE `EditableRadioOption` DISABLE KEYS */;
INSERT INTO `EditableRadioOption` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Value`,`Sort`,`ParentID`)
VALUES
	(1,'EditableRadioOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option0','Schlecht',0,NULL,0,4),
	(2,'EditableRadioOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option0','Durchschnittlich',0,NULL,1,4),
	(3,'EditableRadioOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option0','Gut',0,NULL,2,4),
	(4,'EditableRadioOption','2009-02-01 20:36:50','2009-02-01 20:36:50','option0','Sehr gut',1,NULL,3,4);

/*!40000 ALTER TABLE `EditableRadioOption` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` (`ID`,`ErrorCode`)
VALUES
	(4,404);

/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_Live`;

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` (`ID`,`ErrorCode`)
VALUES
	(4,404);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ErrorCode`)
VALUES
	(1,4,1,0,0,0,404),
	(2,4,2,0,0,0,404),
	(3,4,3,0,1,0,404),
	(4,4,4,0,1,0,404),
	(5,4,5,0,1,0,404),
	(6,4,6,0,1,0,404),
	(7,4,7,0,1,0,404),
	(8,4,8,0,1,0,404),
	(9,4,9,0,1,0,404),
	(10,4,10,0,1,0,404);

/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('File','Image','Folder','Image_Cached') character set utf8 default 'File',
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Filename`,`Content`,`Sort`,`ParentID`,`OwnerID`)
VALUES
	(1,'Folder','2009-02-01 20:07:05','2009-02-01 20:07:05','Uploads','Uploads','assets/Uploads/',NULL,0,0,0),
	(2,'Image','2009-02-01 20:07:05','2009-02-01 20:07:05','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,0,1,0),
	(3,'Folder','2009-02-01 20:30:47','2009-02-01 20:30:47','Bilder','Bilder','assets/Bilder/',NULL,0,0,1),
	(4,'Image','2009-02-01 20:30:47','2009-02-01 20:30:47','passt.jpg','passt.jpg','assets/Bilder/passt.jpg',NULL,0,3,1),
	(5,'File','2009-02-01 20:30:47','2009-02-01 20:30:47','error-404.html','error-404.html','assets/error-404.html',NULL,0,0,1),
	(6,'File','2009-02-01 20:30:47','2009-02-01 20:30:47','website_text.odt','website_text.odt','assets/website_text.odt',NULL,0,0,1);

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
	(1,'Group','2009-02-01 20:07:05','2009-02-01 20:07:05','Administrators',NULL,'administrators',0,0,NULL,0),
	(2,'Group','2009-02-01 20:41:24','2009-07-10 12:57:57','Editors',NULL,'neue-gruppe',0,0,NULL,0),
	(3,'Group','2009-02-01 20:41:59','2009-07-10 12:57:51','Editor in Chief',NULL,'neue-gruppe',0,0,NULL,2);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` (`ID`,`GroupID`,`MemberID`)
VALUES
	(4,1,1),
	(3,2,2);

/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` (`ID`,`ClassName`,`Created`,`LastEdited`,`FirstName`,`Surname`,`Email`,`Password`,`RememberLoginToken`,`NumVisit`,`LastVisited`,`Bounced`,`AutoLoginHash`,`AutoLoginExpired`,`PasswordEncryption`,`Salt`,`PasswordExpiry`,`LockedOutUntil`,`Locale`)
VALUES
	(1,'Member','2009-02-01 20:07:05','2009-07-10 13:12:42','Admin','Admin','admin','mokjg1jrius8wkg40wss44w0w8s44c8',NULL,3,'2009-07-10 15:07:44',0,NULL,NULL,'sha1','5ae6f85nagkccsss4kswcwok0o408sss0okws8c',NULL,NULL,'en_US'),
	(2,'Member','2009-02-01 20:41:37','2009-07-10 12:57:25','John','Doe','john@test.com','pedaxrmrlwggogkkoc8wswkss8g4sks',NULL,0,NULL,0,NULL,NULL,'sha1','6yki69i6nokk4sccks40cockkwgwsw4k40008w8',NULL,NULL,'en_US');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` (`ID`,`ClassName`,`Created`,`LastEdited`,`Password`,`Salt`,`PasswordEncryption`,`MemberID`)
VALUES
	(1,'MemberPassword','2009-02-01 20:07:05','2009-02-01 20:07:05','8frc0pd0mgow4g8k4ck08wckowoo444','6zlo9epvu4kkc04k8cg0c88k0so0cs0wo0c0k00','sha1',1),
	(2,'MemberPassword','2009-02-01 20:22:49','2009-02-01 20:22:49','mokjg1jrius8wkg40wss44w0w8s44c8','5ae6f85nagkccsss4kswcwok0o408sss0okws8c','sha1',1),
	(3,'MemberPassword','2009-02-01 20:41:37','2009-02-01 20:41:37','pedaxrmrlwggogkkoc8wswkss8g4sks','6yki69i6nokk4sccks40cockkwgwsw4k40008w8','sha1',2);

/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
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

LOCK TABLES `PageComment` WRITE;
/*!40000 ALTER TABLE `PageComment` DISABLE KEYS */;
INSERT INTO `PageComment` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Comment`,`IsSpam`,`NeedsModeration`,`CommenterURL`,`ParentID`,`AuthorID`,`SessionID`)
VALUES
	(1,'PageComment','2009-02-01 20:34:16','2009-02-01 20:34:16','Steven Broschart','Test Eins Zwei',0,0,'http://das ist mein erster kommentar...',1,1,NULL);

/*!40000 ALTER TABLE `PageComment` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` (`ID`,`ClassName`,`Created`,`LastEdited`,`Code`,`Arg`,`Type`,`GroupID`)
VALUES
	(1,'Permission','2009-02-01 20:07:05','2009-02-01 20:07:05','ADMIN',0,1,1),
	(2,'Permission','2009-02-01 20:41:50','2009-07-10 12:57:57','CMS_ACCESS_LeftAndMain',0,1,2);

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



# Dump of table SiteTree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree`;

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` (`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`Version`)
VALUES
	(1,'Page','2009-02-01 20:07:05','2009-07-10 14:17:33','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Welcome to the SilverStripe Usergroup, the free job portal for all things related to the&nbsp;<a href=\"http://www.silverstripe.org\">SilverStripe</a>&nbsp;Content Management System and MVC-framework.</p>\n<p><span style=\"color: #4ea3d7; font-family: Tahoma, Verdana, sans-serif; font-size: 20px; line-height: normal; font-weight: 300;\">You can choose:</span></p>\n<h3>Are you searching for interesting projects?</h3>\n<p>Then&nbsp;<a href=\"developers/\">post</a>&nbsp;your details here for others to find.</p>\n<h3>Are you searching for skilled employees?</h3>\n<p>Then choose the right category and put your job description there.</p>\n<h3>Frequently Asked Questions</h3>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold; line-height: 18px;\">What is SilverStripe?<br /><span style=\"font-weight: normal;\">Silverstripe is a free open-source content management framework and MVC-framework based on PHP.</span></span></li>\n</ul>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold;\">What is a MVC-framework?<br /><span style=\"font-weight: normal;\">MVC stands for Model-View-Controller. These are three logical areas into which a web application can be divided. This makes it easy for developers to write, test, manage and maintain web applications.</span></span></li>\n<li> <strong>System Requirements<br /><span style=\"font-weight: normal;\">SilverStripe requires PHP5.2+, MySQL 4.1+, GDLib and cURL. We recommend using Apache Lighttpd as a web-server. These requirements mean that SilverStripe runs fine on most shared hosting platforms.</span></strong></li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,15),
	(2,'Page','2009-02-01 20:07:05','2009-02-01 20:23:29','jobs','Jobs',NULL,'<p></p>','Job',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3),
	(3,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:23:08','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,18),
	(4,'ErrorPage','2009-02-01 20:07:05','2009-07-10 13:16:14','page-not-found','Page not found',NULL,'<p>The requested page does not exist.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,10),
	(5,'Page','2009-02-01 20:24:35','2009-07-10 13:15:44','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8);

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` (`ID`,`SiteTreeID`,`ChildID`,`FieldName`)
VALUES
	(6,1,5,'Content');

/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_Live`;

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` (`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`,`Version`)
VALUES
	(1,'Page','2009-02-01 20:07:05','2009-07-10 14:17:33','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Welcome to the SilverStripe Usergroup, the free job portal for all things related to the&nbsp;<a href=\"http://www.silverstripe.org\">SilverStripe</a>&nbsp;Content Management System and MVC-framework.</p>\n<p><span style=\"color: #4ea3d7; font-family: Tahoma, Verdana, sans-serif; font-size: 20px; line-height: normal; font-weight: 300;\">You can choose:</span></p>\n<h3>Are you searching for interesting projects?</h3>\n<p>Then&nbsp;<a href=\"developers/\">post</a>&nbsp;your details here for others to find.</p>\n<h3>Are you searching for skilled employees?</h3>\n<p>Then choose the right category and put your job description there.</p>\n<h3>Frequently Asked Questions</h3>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold; line-height: 18px;\">What is SilverStripe?<br /><span style=\"font-weight: normal;\">Silverstripe is a free open-source content management framework and MVC-framework based on PHP.</span></span></li>\n</ul>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold;\">What is a MVC-framework?<br /><span style=\"font-weight: normal;\">MVC stands for Model-View-Controller. These are three logical areas into which a web application can be divided. This makes it easy for developers to write, test, manage and maintain web applications.</span></span></li>\n<li> <strong>System Requirements<br /><span style=\"font-weight: normal;\">SilverStripe requires PHP5.2+, MySQL 4.1+, GDLib and cURL. We recommend using Apache Lighttpd as a web-server. These requirements mean that SilverStripe runs fine on most shared hosting platforms.</span></strong></li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,15),
	(2,'Page','2009-02-01 20:07:05','2009-02-01 20:23:29','jobs','Jobs',NULL,'<p></p>','Job',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,3),
	(3,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:23:08','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,18),
	(4,'ErrorPage','2009-02-01 20:07:05','2009-07-10 13:16:14','page-not-found','Page not found',NULL,'<p>The requested page does not exist.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,10),
	(5,'Page','2009-02-01 20:24:35','2009-07-10 13:15:44','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0,8);

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
  `ClassName` enum('SiteTree','Page','GhostPage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` (`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`HomepageForDomain`,`ProvideComments`,`Sort`,`LegacyURL`,`HasBrokenFile`,`HasBrokenLink`,`Status`,`ReportClass`,`CanViewType`,`CanEditType`,`ToDo`,`ParentID`)
VALUES
	(1,1,1,1,0,0,'Page','2009-02-01 20:07:05','2009-02-01 20:07:05','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(2,2,1,1,0,0,'Page','2009-02-01 20:07:05','2009-02-01 20:07:05','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(3,3,1,1,0,0,'Page','2009-02-01 20:07:05','2009-02-01 20:07:05','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(4,4,1,1,0,0,'ErrorPage','2009-02-01 20:07:05','2009-02-01 20:07:05','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),
	(5,4,2,0,0,0,'ErrorPage','2009-02-01 20:07:05','2009-02-01 20:07:09','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(6,2,2,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:23:29','jobs','Jobs',NULL,'<p></p>','Job',NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(7,2,3,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:23:29','jobs','Jobs',NULL,'<p></p>','Job',NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(8,3,2,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:23:51','kontakt','Kontakt',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(9,3,3,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:23:51','kontakt','Kontakt',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(10,3,4,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-02-01 20:23:58','kontakt','Kontakt',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(11,4,3,0,1,0,'ErrorPage','2009-02-01 20:07:05','2009-02-01 20:24:29','seite-nicht-gefunden','Seite nicht gefunden',NULL,'<p>Die angeforderte Seite existiert nicht.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),
	(12,4,4,1,1,1,'ErrorPage','2009-02-01 20:07:05','2009-02-01 20:24:29','seite-nicht-gefunden','Seite nicht gefunden',NULL,'<p>Die angeforderte Seite existiert nicht.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(13,5,1,0,1,0,'Page','2009-02-01 20:24:35','2009-02-01 20:24:35','neupage','NeuPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,'Inherit','Inherit',NULL,0),
	(14,5,2,0,1,0,'Page','2009-02-01 20:24:35','2009-02-01 20:24:51','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,0),
	(15,5,3,1,1,1,'Page','2009-02-01 20:24:35','2009-02-01 20:24:51','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(16,5,4,0,1,0,'Page','2009-02-01 20:24:35','2009-02-01 20:25:01','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(17,5,5,0,1,0,'Page','2009-02-01 20:24:35','2009-02-01 20:25:04','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(18,5,6,1,1,1,'Page','2009-02-01 20:24:35','2009-02-01 20:25:04','entwickler','Entwickler',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(19,1,2,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:28:10','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann hinterlegen Sie einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p><br /></p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(20,1,3,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:28:10','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann hinterlegen Sie einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p><br /></p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(21,1,4,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:29:15','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p><br /></p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(22,1,5,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:29:15','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p><br /></p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(23,1,6,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:32:36','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>\n<div class=\"image left\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" /></div>\n</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(24,1,7,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:32:36','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>\n<div class=\"image left\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" /></div>\n</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(25,1,8,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:33:02','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>\n<div class=\"image left\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" /></div>\n</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(26,1,9,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:33:02','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.<br /></p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>\n<div class=\"image left\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" /></div>\n</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(27,1,10,0,1,0,'Page','2009-02-01 20:07:05','2009-02-01 20:33:49','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.</p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>&nbsp;</p>\n<div class=\"image\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" /></div>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(28,1,11,1,1,1,'Page','2009-02-01 20:07:05','2009-02-01 20:33:49','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.</p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>&nbsp;</p>\n<div class=\"image\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" /></div>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(29,3,5,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-02-01 20:36:50','kontakt','Kontakt',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(30,3,6,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-02-01 20:36:50','kontakt','Kontakt',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(31,3,7,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 12:58:16','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(32,3,8,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 12:58:16','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(33,4,5,0,1,0,'ErrorPage','2009-02-01 20:07:05','2009-07-10 12:58:28','page-not-found','Page Not Found',NULL,'<p>Die angeforderte Seite existiert nicht.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(34,4,6,1,1,1,'ErrorPage','2009-02-01 20:07:05','2009-07-10 12:58:28','page-not-found','Page Not Found',NULL,'<p>Die angeforderte Seite existiert nicht.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(35,1,12,0,1,0,'Page','2009-02-01 20:07:05','2009-07-10 13:15:44','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.</p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"developers/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>&nbsp;</p>\n<div class=\"image\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" title=\"\" /></div>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Published',NULL,'Inherit','Inherit',NULL,0),
	(36,5,7,0,1,0,'Page','2009-02-01 20:24:35','2009-07-10 13:15:44','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(37,5,8,1,1,1,'Page','2009-02-01 20:24:35','2009-07-10 13:15:44','developers','Developers',NULL,'<p></p>','Entwickler',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(38,1,13,0,1,0,'Page','2009-02-01 20:07:05','2009-07-10 13:15:44','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Herzlich Willkommen bei der SilverStripe Usergroup, der kostenlosen Jobvermittlung rund um das Content-Management-System/MVC-Framework SilverStripe.</p>\n<h2>Sie haben die Wahl:</h2>\n<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href=\"entwickler/\">hinterlegen Sie</a> einfach Ihr Kompetenz-Profil bei uns.</p>\n<h3>Sie suchen f&auml;hige Leute?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und platzieren Sie Ihre Stellenausschreibung.</p>\n<h3>Kurz &amp; Gut</h3>\n<ul class=\"unIndentedList\">\n<li> <strong>Was ist SilverStripe?</strong></li>\n<li> SilverStripe ist ein auf PHP basierendes, freies Content-Management-System mit MVC-Framework.</li>\n<li> </li>\n<li> <strong>Was ist ein MVC-Framework?</strong></li>\n<li> MVC steht f&uuml;r Model, View und Controller und beschreibt die drei logischen Schichten, &uuml;ber die eine Anwendung definiert wird. Gerade im Bereich der Webentwicklung spielt das MVC-Konzept seine st&auml;rken voll aus. MVC steht f&uuml;r eine sehr schnelle und saubere Entwicklung.</li>\n<li> </li>\n<li> <strong>Systemanforderungen</strong></li>\n<li> SilverStripe ben&ouml;tigt PHP5.2+, MySQL 4.1+, sowie GDLib und cURL. Als Server werden Apache Lighttpd empfohlen. SilverStripe l&auml;uft damit auch problemlos auf preiswerten Shared-Hosting-Plattformen.</li>\n</ul>\n<p>&nbsp;</p>\n<div class=\"image\" style=\"width: 489px;\"><img src=\"assets/Bilder/passt.jpg\" alt=\"\" width=\"489\" height=\"275\" title=\"\" /></div>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,1,'Published',NULL,'Inherit','Inherit',NULL,0),
	(39,4,7,0,1,0,'ErrorPage','2009-02-01 20:07:05','2009-07-10 13:15:59','page-not-found','Page not found',NULL,'<p>Die angeforderte Seite existiert nicht.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(40,4,8,1,1,1,'ErrorPage','2009-02-01 20:07:05','2009-07-10 13:15:59','page-not-found','Page not found',NULL,'<p>Die angeforderte Seite existiert nicht.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(41,4,9,0,1,0,'ErrorPage','2009-02-01 20:07:05','2009-07-10 13:16:14','page-not-found','Page not found',NULL,'<p>The requested page does not exist.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(42,4,10,1,1,1,'ErrorPage','2009-02-01 20:07:05','2009-07-10 13:16:14','page-not-found','Page not found',NULL,'<p>The requested page does not exist.</p>','Seite nicht gefunden',NULL,NULL,NULL,0,0,NULL,0,5,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(43,3,9,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:20:26','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(44,3,10,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:20:26','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(45,3,11,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:21:13','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(46,3,12,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:21:13','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(47,3,13,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:21:46','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(48,3,14,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:21:46','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(49,3,15,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:22:43','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(50,3,16,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:22:43','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(51,3,17,0,1,0,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:23:08','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(52,3,18,1,1,1,'UserDefinedForm','2009-02-01 20:07:05','2009-07-10 13:23:08','contact-us','Contact Us',NULL,'<p></p>','Kontakt',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0),
	(53,1,14,0,1,0,'Page','2009-02-01 20:07:05','2009-07-10 14:17:33','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Welcome to the SilverStripe Usergroup, the free job portal for all things related to the&nbsp;<a href=\"http://www.silverstripe.org\">SilverStripe</a>&nbsp;Content Management System and MVC-framework.</p>\n<p><span style=\"color: #4ea3d7; font-family: Tahoma, Verdana, sans-serif; font-size: 20px; line-height: normal; font-weight: 300;\">You can choose:</span></p>\n<h3>Are you searching for interesting projects?</h3>\n<p>Then&nbsp;<a href=\"developers/\">post</a>&nbsp;your details here for others to find.</p>\n<h3>Are you searching for skilled employees?</h3>\n<p>Then choose the right category and put your job description there.</p>\n<h3>Frequently Asked Questions</h3>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold; line-height: 18px;\">What is SilverStripe?<br /><span style=\"font-weight: normal;\">Silverstripe is a free open-source content management framework and MVC-framework based on PHP.</span></span></li>\n</ul>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold;\">What is a MVC-framework?<br /><span style=\"font-weight: normal;\">MVC stands for Model-View-Controller. These are three logical areas into which a web application can be divided. This makes it easy for developers to write, test, manage and maintain web applications.</span></span></li>\n<li> <strong>System Requirements<br /><span style=\"font-weight: normal;\">SilverStripe requires PHP5.2+, MySQL 4.1+, GDLib and cURL. We recommend using Apache Lighttpd as a web-server. These requirements mean that SilverStripe runs fine on most shared hosting platforms.</span></strong></li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,0),
	(54,1,15,1,1,1,'Page','2009-02-01 20:07:05','2009-07-10 14:17:33','home','Home',NULL,'<h1>SilverStripe Usergroup</h1>\n<p>Welcome to the SilverStripe Usergroup, the free job portal for all things related to the&nbsp;<a href=\"http://www.silverstripe.org\">SilverStripe</a>&nbsp;Content Management System and MVC-framework.</p>\n<p><span style=\"color: #4ea3d7; font-family: Tahoma, Verdana, sans-serif; font-size: 20px; line-height: normal; font-weight: 300;\">You can choose:</span></p>\n<h3>Are you searching for interesting projects?</h3>\n<p>Then&nbsp;<a href=\"developers/\">post</a>&nbsp;your details here for others to find.</p>\n<h3>Are you searching for skilled employees?</h3>\n<p>Then choose the right category and put your job description there.</p>\n<h3>Frequently Asked Questions</h3>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold; line-height: 18px;\">What is SilverStripe?<br /><span style=\"font-weight: normal;\">Silverstripe is a free open-source content management framework and MVC-framework based on PHP.</span></span></li>\n</ul>\n<ul class=\"unIndentedList\">\n<li><span style=\"font-weight: bold;\">What is a MVC-framework?<br /><span style=\"font-weight: normal;\">MVC stands for Model-View-Controller. These are three logical areas into which a web application can be divided. This makes it easy for developers to write, test, manage and maintain web applications.</span></span></li>\n<li> <strong>System Requirements<br /><span style=\"font-weight: normal;\">SilverStripe requires PHP5.2+, MySQL 4.1+, GDLib and cURL. We recommend using Apache Lighttpd as a web-server. These requirements mean that SilverStripe runs fine on most shared hosting platforms.</span></strong></li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,1,NULL,1,1,NULL,0,0,'Published',NULL,'Inherit','Inherit',NULL,0);

/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `SubmittedForm` WRITE;
/*!40000 ALTER TABLE `SubmittedForm` DISABLE KEYS */;
INSERT INTO `SubmittedForm` (`ID`,`ClassName`,`Created`,`LastEdited`,`Recipient`,`SubmittedByID`,`ParentID`)
VALUES
	(1,'SubmittedForm','2009-07-10 13:22:37','2009-07-10 13:22:37',NULL,0,3);

/*!40000 ALTER TABLE `SubmittedForm` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `SubmittedFormField` WRITE;
/*!40000 ALTER TABLE `SubmittedFormField` DISABLE KEYS */;
INSERT INTO `SubmittedFormField` (`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Value`,`Title`,`ParentID`)
VALUES
	(1,'SubmittedFormField','2009-07-10 13:22:38','2009-07-10 13:22:38','EditableTextField6','Avid Supporter','Name',1),
	(2,'SubmittedFormField','2009-07-10 13:22:38','2009-07-10 13:22:38','EditableEmailField7','test@test.com','Email address',1),
	(3,'SubmittedFormField','2009-07-10 13:22:38','2009-07-10 13:22:38','EditableRadioField4','A','Website rating',1),
	(4,'SubmittedFormField','2009-07-10 13:22:38','2009-07-10 13:22:38','EditableDropdown3','Suggestion','Message type',1),
	(5,'SubmittedFormField','2009-07-10 13:22:38','2009-07-10 13:22:38','EditableTextField5','This website is great! I love it!','Message',1);

/*!40000 ALTER TABLE `SubmittedFormField` ENABLE KEYS */;
UNLOCK TABLES;


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
	(3,NULL,0,NULL,'<p>Thanks for your feedback</p>',0);

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
	(3,NULL,0,NULL,'<p>Thanks for your feedback</p>',0);

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
	(7,3,7,0,1,0,NULL,0,NULL,'<p></p>',0),
	(8,3,8,0,1,0,NULL,0,NULL,'<p></p>',0),
	(9,3,9,0,1,0,NULL,0,NULL,'<p></p>',0),
	(10,3,10,0,1,0,NULL,0,NULL,'<p></p>',0),
	(11,3,11,0,1,0,NULL,0,NULL,'<p></p>',0),
	(12,3,12,0,1,0,NULL,0,NULL,'<p></p>',0),
	(13,3,13,0,1,0,NULL,0,NULL,'<p></p>',0),
	(14,3,14,0,1,0,NULL,0,NULL,'<p>Thanks for your feedback</p>',0),
	(15,3,15,0,1,0,NULL,0,NULL,'<p>Thanks for your feedback</p>',0);

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
  `ClassName` enum('Widget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



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





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
