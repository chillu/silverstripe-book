-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2009 at 12:04 PM
-- Server version: 5.0.81
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `SS_ssbookwiley_11recipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `ArchiveWidget`
--

DROP TABLE IF EXISTS `ArchiveWidget`;
CREATE TABLE IF NOT EXISTS `ArchiveWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `DisplayMode` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ArchiveWidget`
--

INSERT INTO `ArchiveWidget` (`ID`, `DisplayMode`) VALUES
(3, 'month'),
(6, 'month');

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
CREATE TABLE IF NOT EXISTS `Article` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Article') character set utf8 default 'Article',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Article`
--


-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry`
--

DROP TABLE IF EXISTS `BlogEntry`;
CREATE TABLE IF NOT EXISTS `BlogEntry` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `BlogEntry`
--

INSERT INTO `BlogEntry` (`ID`, `Date`, `Author`, `Tags`) VALUES
(5, '2009-06-27 12:47:08', NULL, 'silverstripe, blog'),
(32, '2009-07-15 11:45:00', NULL, 'open source, silverstripe company'),
(30, '2009-07-15 11:42:00', NULL, 'silverstripe, ct, germany'),
(31, '2009-07-15 11:44:00', NULL, 'silverstripe');

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_Live`
--

DROP TABLE IF EXISTS `BlogEntry_Live`;
CREATE TABLE IF NOT EXISTS `BlogEntry_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` datetime default NULL,
  `Author` mediumtext character set utf8,
  `Tags` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `BlogEntry_Live`
--

INSERT INTO `BlogEntry_Live` (`ID`, `Date`, `Author`, `Tags`) VALUES
(5, '2009-06-27 12:47:08', NULL, 'silverstripe, blog'),
(32, '2009-07-15 11:45:00', NULL, 'open source, silverstripe company'),
(30, '2009-07-15 11:42:00', NULL, 'silverstripe, ct, germany'),
(31, '2009-07-15 11:44:00', NULL, 'silverstripe');

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_versions`
--

DROP TABLE IF EXISTS `BlogEntry_versions`;
CREATE TABLE IF NOT EXISTS `BlogEntry_versions` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `BlogEntry_versions`
--

INSERT INTO `BlogEntry_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `Date`, `Author`, `Tags`) VALUES
(1, 5, 1, 0, 0, 0, '2009-06-27 12:47:08', NULL, 'silverstripe, blog'),
(2, 16, 1, 0, 1, 0, '2009-06-27 17:05:02', NULL, 'silverstripe, blog'),
(3, 30, 1, 0, 1, 0, '2009-07-15 11:42:20', NULL, NULL),
(4, 30, 2, 0, 1, 0, '2009-07-15 11:42:00', NULL, 'silverstripe, ct, germany'),
(5, 30, 3, 0, 1, 0, '2009-07-15 11:42:00', NULL, 'silverstripe, ct, germany'),
(6, 31, 1, 0, 1, 0, '2009-07-15 11:44:25', NULL, NULL),
(7, 31, 2, 0, 1, 0, '2009-07-15 11:44:00', NULL, 'silverstripe'),
(8, 31, 3, 0, 1, 0, '2009-07-15 11:44:00', NULL, 'silverstripe'),
(9, 32, 1, 0, 1, 0, '2009-07-15 11:45:26', NULL, NULL),
(10, 32, 2, 0, 1, 0, '2009-07-15 11:45:00', NULL, 'open source, silverstripe company'),
(11, 32, 3, 0, 1, 0, '2009-07-15 11:45:00', NULL, 'open source, silverstripe company'),
(12, 30, 4, 0, 1, 0, '2009-07-15 11:42:00', NULL, 'silverstripe, ct, germany'),
(13, 30, 5, 0, 1, 0, '2009-07-15 11:42:00', NULL, 'silverstripe, ct, germany');

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder`
--

DROP TABLE IF EXISTS `BlogHolder`;
CREATE TABLE IF NOT EXISTS `BlogHolder` (
  `ID` int(11) NOT NULL auto_increment,
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `BlogHolder`
--

INSERT INTO `BlogHolder` (`ID`, `LandingPageFreshness`, `Name`, `TrackBacksEnabled`, `SideBarID`) VALUES
(4, NULL, NULL, 0, 1),
(15, NULL, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_Live`
--

DROP TABLE IF EXISTS `BlogHolder_Live`;
CREATE TABLE IF NOT EXISTS `BlogHolder_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LandingPageFreshness` varchar(50) character set utf8 default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL default '0',
  `SideBarID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `BlogHolder_Live`
--

INSERT INTO `BlogHolder_Live` (`ID`, `LandingPageFreshness`, `Name`, `TrackBacksEnabled`, `SideBarID`) VALUES
(4, NULL, NULL, 0, 1),
(15, NULL, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_versions`
--

DROP TABLE IF EXISTS `BlogHolder_versions`;
CREATE TABLE IF NOT EXISTS `BlogHolder_versions` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `BlogHolder_versions`
--

INSERT INTO `BlogHolder_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `LandingPageFreshness`, `Name`, `TrackBacksEnabled`, `SideBarID`) VALUES
(1, 4, 1, 0, 0, 0, NULL, NULL, 0, 1),
(2, 15, 1, 0, 1, 0, NULL, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
CREATE TABLE IF NOT EXISTS `Client` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`ID`, `ClassName`, `Created`, `LastEdited`, `ClientNumber`, `FirstName`, `LastName`, `Birthday`, `ClientCategoryID`) VALUES
(1, 'Client', '2009-06-28 13:55:32', '2009-07-15 11:47:50', 11, 'John', 'Doe', '1982-06-23', 3),
(2, 'Client', '2009-06-28 13:55:32', '2009-07-15 11:47:50', 12, 'Jane', 'Test', '1999-12-31', 3),
(3, 'Client', '2009-06-28 13:55:32', '2009-07-15 11:47:50', 13, 'Joshua', 'Check', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ClientCategory`
--

DROP TABLE IF EXISTS `ClientCategory`;
CREATE TABLE IF NOT EXISTS `ClientCategory` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('ClientCategory') character set utf8 default 'ClientCategory',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ClientCategory`
--

INSERT INTO `ClientCategory` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`) VALUES
(3, 'ClientCategory', '2009-07-15 11:47:50', '2009-07-15 11:47:50', 'private customer'),
(4, 'ClientCategory', '2009-07-15 11:47:50', '2009-07-15 11:47:50', 'business customer');

-- --------------------------------------------------------

--
-- Table structure for table `Email_BounceRecord`
--

DROP TABLE IF EXISTS `Email_BounceRecord`;
CREATE TABLE IF NOT EXISTS `Email_BounceRecord` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Email_BounceRecord`
--


-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(6, 404),
(17, 404);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ErrorPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ErrorCode`) VALUES
(1, 6, 1, 0, 0, 0, 404),
(2, 17, 1, 0, 1, 0, 404);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
CREATE TABLE IF NOT EXISTS `File` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `Sort`, `ParentID`, `OwnerID`) VALUES
(4, 'Page_BannerImage', '2009-07-15 11:29:50', '2009-07-15 11:30:42', '215195398_1f1982d67c_o.jpg', '215195398_1f1982d67c_o.jpg', 'assets/215195398_1f1982d67c_o.jpg', NULL, 0, 0, 1),
(5, 'File', '2009-07-15 11:29:50', '2009-07-15 11:29:50', 'LICENSE', 'LICENSE', 'assets/LICENSE', NULL, 0, 0, 1),
(6, 'Folder', '2009-07-15 11:29:50', '2009-07-15 11:29:50', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 0, 0, 1),
(7, 'File', '2009-07-15 11:29:50', '2009-07-15 11:29:50', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GhostPage`
--

DROP TABLE IF EXISTS `GhostPage`;
CREATE TABLE IF NOT EXISTS `GhostPage` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `GhostPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `GhostPage_Live`
--

DROP TABLE IF EXISTS `GhostPage_Live`;
CREATE TABLE IF NOT EXISTS `GhostPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `GhostPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `GhostPage_versions`
--

DROP TABLE IF EXISTS `GhostPage_versions`;
CREATE TABLE IF NOT EXISTS `GhostPage_versions` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `GhostPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
CREATE TABLE IF NOT EXISTS `Group` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `IPRestrictions`, `ParentID`) VALUES
(1, 'Group', '2009-06-27 12:49:19', '2009-06-27 12:49:19', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

DROP TABLE IF EXISTS `Job`;
CREATE TABLE IF NOT EXISTS `Job` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Job`
--


-- --------------------------------------------------------

--
-- Table structure for table `JobCategory_Subscribers`
--

DROP TABLE IF EXISTS `JobCategory_Subscribers`;
CREATE TABLE IF NOT EXISTS `JobCategory_Subscribers` (
  `ID` int(11) NOT NULL auto_increment,
  `JobCategoryID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `JobCategoryID` (`JobCategoryID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `JobCategory_Subscribers`
--


-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
CREATE TABLE IF NOT EXISTS `LoginAttempt` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `LoginAttempt`
--


-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
CREATE TABLE IF NOT EXISTS `Member` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`) VALUES
(1, 'Member', '2009-06-27 12:49:19', '2009-07-15 11:29:18', 'Admin', 'Admin', 'admin', '9x79yusi00wgwcs4ccko00o8koso4wc', NULL, 5, '2009-07-15 12:02:52', 0, NULL, NULL, 'sha1', '9olcku40mj8cok40gk4swgc0k404csosok4004w', NULL, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
CREATE TABLE IF NOT EXISTS `MemberPassword` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2009-06-27 12:49:20', '2009-06-27 12:49:20', '7xqagypx74kc08sw40cko4wgg4sc4c8', '528d0jt21v8cokok4ow8kc008g44owwkowsks8s', 'sha1', 1),
(2, 'MemberPassword', '2009-06-27 12:49:39', '2009-06-27 12:49:39', '9x79yusi00wgwcs4ccko00o8koso4wc', '9olcku40mj8cok40gk4swgc0k404csosok4004w', 'sha1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
CREATE TABLE IF NOT EXISTS `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `ContextNavMaxPages`, `ContextNavTags`, `ContextNavKeywords`, `LegacyURL`, `BannerImageID`) VALUES
(1, 10, NULL, NULL, NULL, 0),
(2, 10, NULL, NULL, NULL, 0),
(3, 0, NULL, NULL, NULL, 3),
(4, 10, NULL, NULL, NULL, 0),
(5, 10, NULL, NULL, NULL, 0),
(6, 10, NULL, NULL, NULL, 0),
(7, 10, NULL, NULL, NULL, 0),
(8, 10, NULL, NULL, NULL, 0),
(9, 10, NULL, NULL, NULL, 0),
(10, 10, NULL, NULL, NULL, 0),
(11, 10, 'silverstripe', NULL, NULL, 4),
(12, 10, NULL, NULL, NULL, 0),
(30, 10, 'silverstripe', NULL, NULL, 0),
(15, 10, NULL, NULL, NULL, 0),
(32, 10, NULL, NULL, NULL, 0),
(17, 10, NULL, NULL, NULL, 0),
(18, 10, NULL, NULL, NULL, 0),
(19, 10, NULL, NULL, NULL, 0),
(20, 10, NULL, NULL, NULL, 0),
(21, 10, NULL, NULL, NULL, 0),
(22, 10, NULL, NULL, NULL, 0),
(23, 10, NULL, NULL, NULL, 0),
(24, 10, NULL, NULL, NULL, 0),
(25, 10, NULL, NULL, NULL, 0),
(26, 10, NULL, NULL, NULL, 0),
(27, 10, 'germany', NULL, NULL, 0),
(28, 10, NULL, NULL, NULL, 0),
(29, 10, NULL, NULL, 'my-legacy-page.php', 0),
(31, 10, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageComment`
--

DROP TABLE IF EXISTS `PageComment`;
CREATE TABLE IF NOT EXISTS `PageComment` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PageComment`
--


-- --------------------------------------------------------

--
-- Table structure for table `Page_Live`
--

DROP TABLE IF EXISTS `Page_Live`;
CREATE TABLE IF NOT EXISTS `Page_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ContextNavMaxPages` int(11) NOT NULL default '0',
  `ContextNavTags` mediumtext character set utf8,
  `ContextNavKeywords` mediumtext character set utf8,
  `LegacyURL` mediumtext character set utf8,
  `BannerImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `BannerImageID` (`BannerImageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `ContextNavMaxPages`, `ContextNavTags`, `ContextNavKeywords`, `LegacyURL`, `BannerImageID`) VALUES
(1, 10, NULL, NULL, NULL, 0),
(2, 10, NULL, NULL, NULL, 0),
(3, 0, NULL, NULL, NULL, 3),
(4, 10, NULL, NULL, NULL, 0),
(5, 10, NULL, NULL, NULL, 0),
(7, 10, NULL, NULL, NULL, 0),
(8, 10, NULL, NULL, NULL, 0),
(9, 10, NULL, NULL, NULL, 0),
(11, 10, 'silverstripe', NULL, NULL, 4),
(12, 10, NULL, NULL, NULL, 0),
(30, 10, 'silverstripe', NULL, NULL, 0),
(15, 10, NULL, NULL, NULL, 0),
(32, 10, NULL, NULL, NULL, 0),
(18, 10, NULL, NULL, NULL, 0),
(19, 10, NULL, NULL, NULL, 0),
(20, 10, NULL, NULL, NULL, 0),
(22, 10, NULL, NULL, NULL, 0),
(21, 10, NULL, NULL, NULL, 0),
(23, 10, NULL, NULL, NULL, 0),
(24, 10, NULL, NULL, NULL, 0),
(25, 10, NULL, NULL, NULL, 0),
(26, 10, NULL, NULL, NULL, 0),
(27, 10, 'germany', NULL, NULL, 0),
(28, 10, NULL, NULL, NULL, 0),
(29, 10, NULL, NULL, 'my-legacy-page.php', 0),
(31, 10, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Page_versions`
--

DROP TABLE IF EXISTS `Page_versions`;
CREATE TABLE IF NOT EXISTS `Page_versions` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ContextNavMaxPages`, `ContextNavTags`, `ContextNavKeywords`, `LegacyURL`, `BannerImageID`) VALUES
(1, 1, 1, 0, 0, 0, 10, NULL, NULL, NULL, 0),
(2, 2, 1, 0, 0, 0, 10, NULL, NULL, NULL, 0),
(3, 3, 1, 0, 0, 0, 10, NULL, NULL, NULL, 0),
(4, 4, 1, 0, 0, 0, 10, NULL, NULL, NULL, 0),
(5, 5, 1, 0, 0, 0, 10, NULL, NULL, NULL, 0),
(6, 6, 1, 0, 0, 0, 10, NULL, NULL, NULL, 0),
(7, 3, 2, 0, 1, 0, 10, NULL, NULL, NULL, 2),
(8, 3, 3, 0, 1, 0, 10, NULL, NULL, NULL, 3),
(9, 3, 4, 0, 1, 0, 0, NULL, NULL, NULL, 3),
(10, 3, 5, 0, 1, 0, 0, NULL, NULL, NULL, 3),
(11, 7, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(12, 7, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(13, 8, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(14, 8, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(15, 9, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(16, 9, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(17, 10, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(18, 10, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(19, 11, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(20, 11, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(21, 12, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(22, 12, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(23, 13, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(24, 13, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(25, 14, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(26, 14, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(27, 15, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(28, 16, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(29, 17, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(30, 18, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(31, 18, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(32, 18, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(33, 19, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(34, 19, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(35, 19, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(36, 20, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(37, 20, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(38, 20, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(39, 21, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(40, 22, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(41, 22, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(42, 22, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(43, 21, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(44, 21, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(45, 23, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(46, 23, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(47, 23, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(48, 24, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(49, 24, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(50, 24, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(51, 25, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(52, 25, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(53, 25, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(54, 26, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(55, 26, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(56, 26, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(57, 27, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(58, 27, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(59, 27, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(60, 28, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(61, 28, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(62, 28, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(63, 29, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(64, 29, 2, 0, 1, 0, 10, NULL, NULL, 'my-legacy-page.php', 0),
(65, 29, 3, 0, 1, 0, 10, NULL, NULL, 'my-legacy-page.php', 0),
(66, 11, 3, 0, 1, 0, 10, NULL, NULL, NULL, 4),
(67, 11, 4, 0, 1, 0, 10, NULL, NULL, NULL, 4),
(68, 30, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(69, 30, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(70, 30, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(71, 31, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(72, 31, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(73, 31, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(74, 32, 1, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(75, 32, 2, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(76, 32, 3, 0, 1, 0, 10, NULL, NULL, NULL, 0),
(77, 27, 4, 0, 1, 0, 10, 'germany', NULL, NULL, 0),
(78, 27, 5, 0, 1, 0, 10, 'germany', NULL, NULL, 0),
(79, 11, 5, 0, 1, 0, 10, 'silverstripe', NULL, NULL, 4),
(80, 11, 6, 0, 1, 0, 10, 'silverstripe', NULL, NULL, 4),
(81, 30, 4, 0, 1, 0, 10, 'silverstripe', NULL, NULL, 0),
(82, 30, 5, 0, 1, 0, 10, 'silverstripe', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
CREATE TABLE IF NOT EXISTS `Permission` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2009-06-27 12:49:19', '2009-06-27 12:49:19', 'ADMIN', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `QueuedEmail`
--

DROP TABLE IF EXISTS `QueuedEmail`;
CREATE TABLE IF NOT EXISTS `QueuedEmail` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `QueuedEmail`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

DROP TABLE IF EXISTS `RedirectorPage_versions`;
CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `Referrer`
--

DROP TABLE IF EXISTS `Referrer`;
CREATE TABLE IF NOT EXISTS `Referrer` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Referrer`
--

INSERT INTO `Referrer` (`ID`, `ClassName`, `Created`, `LastEdited`, `URL`, `IsExternal`, `PageID`) VALUES
(1, 'Referrer', '2009-06-27 13:03:27', '2009-06-27 13:03:27', 'http://localhost/ssbook_wiley/11_recipes/admin', 0, 3),
(2, 'Referrer', '2009-06-27 13:03:54', '2009-06-27 13:03:54', 'http://localhost/ssbook_wiley/11_recipes/admin', 0, 3),
(3, 'Referrer', '2009-06-27 13:04:42', '2009-06-27 13:04:42', 'http://localhost/ssbook_wiley/11_recipes/admin', 0, 3),
(4, 'Referrer', '2009-06-27 15:00:43', '2009-06-27 15:00:43', 'http://localhost/ssbook_wiley/11_recipes/SiteTreeImporter/?url=/ssbook_wiley/11_recipes/SiteTreeImporter', 0, -1),
(5, 'Referrer', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'http://localhost/ssbook_wiley/11_recipes/SiteTreeImporter/?url=/ssbook_wiley/11_recipes/SiteTreeImporter', 0, -1),
(6, 'Referrer', '2009-06-27 17:09:55', '2009-06-27 17:09:55', 'http://localhost/ssbook_wiley/11_recipes/', 0, 11),
(7, 'Referrer', '2009-06-27 17:10:11', '2009-06-27 17:10:11', 'http://localhost/ssbook_wiley/11_recipes/', 0, 11),
(8, 'Referrer', '2009-06-27 17:10:24', '2009-06-27 17:10:24', 'http://localhost/ssbook_wiley/11_recipes/', 0, 11),
(9, 'Referrer', '2009-06-27 17:10:31', '2009-06-27 17:10:31', 'http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search', 0, 11),
(10, 'Referrer', '2009-06-27 17:10:35', '2009-06-27 17:10:35', 'http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search&start=3', 0, 11),
(11, 'Referrer', '2009-06-27 17:11:53', '2009-06-27 17:11:53', 'http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search&start=3', 0, 11),
(12, 'Referrer', '2009-06-27 17:12:10', '2009-06-27 17:12:10', 'http://localhost/ssbook_wiley/11_recipes/home/SearchForm?Search=Sed+enim&action_results=Search&start=3', 0, 11),
(13, 'Referrer', '2009-07-15 11:09:20', '2009-07-15 11:09:20', 'http://localhost/ssbook_wiley/11_recipes/', 0, 12),
(14, 'Referrer', '2009-07-15 11:09:23', '2009-07-15 11:09:23', 'http://localhost/ssbook_wiley/11_recipes/about/', 0, 15),
(15, 'Referrer', '2009-07-15 11:09:26', '2009-07-15 11:09:26', 'http://localhost/ssbook_wiley/11_recipes/blog/', 0, 18),
(16, 'Referrer', '2009-07-15 11:09:34', '2009-07-15 11:09:34', 'http://localhost/ssbook_wiley/11_recipes/staff-2/', 0, 29),
(17, 'Referrer', '2009-07-15 11:10:03', '2009-07-15 11:10:03', 'http://localhost/ssbook_wiley/11_recipes/', 0, 12),
(18, 'Referrer', '2009-07-15 11:10:09', '2009-07-15 11:10:09', 'http://localhost/ssbook_wiley/11_recipes/about/', 0, 15),
(19, 'Referrer', '2009-07-15 11:10:12', '2009-07-15 11:10:12', 'http://localhost/ssbook_wiley/11_recipes/blog/', 0, 18),
(20, 'Referrer', '2009-07-15 11:32:34', '2009-07-15 11:32:34', 'http://localhost/ssbook_wiley/11_recipes/', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `RSSWidget`
--

DROP TABLE IF EXISTS `RSSWidget`;
CREATE TABLE IF NOT EXISTS `RSSWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `RSSTitle` mediumtext character set utf8,
  `RssUrl` mediumtext character set utf8,
  `NumberToShow` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RSSWidget`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
CREATE TABLE IF NOT EXISTS `SiteTree` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `Version`, `TagsText`) VALUES
(11, 'Page', '2009-06-27 15:02:33', '2009-07-15 11:46:34', 'home', 'Home', NULL, '<p></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 6, NULL),
(12, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'about', 'About', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 2, NULL),
(30, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:47:15', 'silverstripe-praised-by-major-european-magazine', 'SilverStripe praised by major European magazine', NULL, '<p>SilverStripe has received a very positive review and a four page tutorial in one of Europe''s major computer magazines. <a href="http://www.heise.de/ct/" target="_blank">c''t Magazine</a> is a hardware and software magazine with a circulation of 367,000. It''s written in German and has the highest subscription base of any technology magazine in Europe.</p>\n<p>The article mentioned SilverStripe''s involvement with <a href="http://www.silverstripe.com/2008-democratic-national-convention/" target="_blank">the U.S. Democratic Convention</a>, provided a walkthrough of setting up a simple site, mentioned <a href="http://www.silverstripe.com/coming-2009-silverstripe-das-umfassende-handbuch/">our upcoming book</a>, and had some lovely things to say about SilverStripe:</p>\n<blockquote>\n<p>SilverStripe enables Webmasters to comfortably install and run the system ''out of the box''. Thanks to the underlying objectoriented framework, customizations and extensions can be developed quickly.</p>\n</blockquote>\n<blockquote>\n<p>SilverStripe enables quick development of simple websites. In case the website grows into an application one day, You don''t have to switch to a different framework: SilverStripe delivers everything you need to build more complex websites as well.</p>\n</blockquote>\n<p>You can <a href="http://www.heise.de/kiosk/archiv/ct/2009/1/168_Erste-Schritte-mit-dem-Content-Management-System-SilverStripe" target="_blank">buy the article online (in German) from the January 2009 issue</a>&nbsp;for about half a euro.</p>\n<p>&nbsp;</p>', 'SilverStripe praised by major European magazine', NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, 5, NULL),
(15, 'BlogHolder', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(32, 'BlogEntry', '2009-07-15 11:45:26', '2009-07-15 11:45:46', 'new-org-for-developers', 'New .org for developers!', NULL, '<p>Welcome to the brand new SilverStripe.org! We created this site to be a place to learn and talk about our open source SilverStripe CMS and Sapphire (our application framework).</p>\n<p>Head on over to the <a href="http://silverstripe.com">SilverStripe.com</a> site if you want to know more about our company and the business side of things. But if you''re looking for the SilverStripe community, developer documentation, or the roadmap for the future of the product, you''re in the right place.</p>\n<p>We listened to what a lot of you told us about how you found it difficult to find what you were looking for. Hopefully this new site will allow you to find out more information and faster than before. We spent a lot of time on the information architecture and overall design of this site to make navigation and discovery easier. Big thanks to Sally (<span class="codedirection">moc.liamg@gnillewelfyllas</span>) for leading the charge on the new site design. We''re keen to get your feedback and we''ve put a link at the bottom of each page for you to give us comments about this site.</p>\n<p>Thanks for coming along for the ride. My hat''s off to you, the SilverStripe developer community, for making SilverStripe what it is today. Thank you.</p>\n<p>Enjoy!</p>\n<p>Brian</p>\n<p>&nbsp;</p>', 'New .org for developers!', NULL, NULL, NULL, 0, 1, NULL, 1, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, 3, NULL),
(17, 'ErrorPage', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(18, 'Page', '2009-06-27 17:07:02', '2009-06-27 17:07:17', 'staff-2', 'Staff', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Staff', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 3, NULL),
(19, 'Page', '2009-06-27 17:07:21', '2009-06-27 17:07:30', 'sam', 'Sam', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sam', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(20, 'Page', '2009-06-27 17:07:36', '2009-06-27 17:07:45', 'tim', 'Tim', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(21, 'Page', '2009-06-27 17:07:49', '2009-06-27 17:08:09', 'brian', 'Brian', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(22, 'Page', '2009-06-27 17:07:51', '2009-06-27 17:08:01', 'sig', 'Sig', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sig', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(23, 'Page', '2009-06-27 17:08:16', '2009-06-27 17:08:23', 'normann', 'Normann', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Normann', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(24, 'Page', '2009-06-27 17:08:30', '2009-06-27 17:08:38', 'michael', 'Michael', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Michael', NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(25, 'Page', '2009-06-27 17:08:46', '2009-06-27 17:08:52', 'sean', 'Sean', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sean', NULL, NULL, NULL, 1, 1, NULL, 0, 7, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(26, 'Page', '2009-06-27 17:08:59', '2009-06-27 17:09:05', 'simon', 'Simon', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Simon', NULL, NULL, NULL, 1, 1, NULL, 0, 8, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(27, 'Page', '2009-06-27 17:09:12', '2009-07-15 11:46:19', 'ingo', 'Ingo', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Ingo', NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 5, NULL),
(28, 'Page', '2009-06-27 17:09:27', '2009-06-27 17:09:36', 'komal', 'Komal', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Komal', NULL, NULL, NULL, 1, 1, NULL, 0, 10, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(29, 'Page', '2009-06-27 17:22:32', '2009-06-27 17:23:16', 'my-new-page', 'Legacy URL Test', NULL, '<p></p>', 'Legacy URL Test', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 'my-legacy-page.php', 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 3, NULL),
(31, 'BlogEntry', '2009-07-15 11:44:25', '2009-07-15 11:44:57', 'publicise-your-website-in-your-member-profile', 'Publicise your website in your member profile', NULL, '<p>Less than 30 of our <a href="http://www.silverstripe.org/forums/memberlist" target="_blank">2000+ forum members</a> have their website publicly listed in their profile.</p>\n<p>By including your website URL, you make it easier for the community to learn about you. You may even gain some commercial work if your forum posts, themes, or <a href="http://www.silverstripe.org/community-showcase/" target="_blank">showcase sites</a> make you look good! (This is especially true if you also enter your city and company name.)</p>\n<p>So, <a href="http://www.silverstripe.org/forums/login">log in to the forum</a>, visit <a href="http://www.silverstripe.org/ForumMemberProfile/edit" target="_blank">your profile page</a>, type in your website address, <span style="font-weight: bold;"><strong>and</strong></span> tick the box on the right to make it publicly visible, as shown below...</p>\n<p>&nbsp;</p>\n<div class="image left" style="width: 383px;"><img src="assets/screenshots/update-personal-forum-profile-with-website-URL.png" width="383" height="551" alt="" title="" /></div>', 'Publicise your website in your member profile', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 1, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_EditorGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `FileID` int(11) NOT NULL default '0',
  `FieldName` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_ImageTracking`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `ChildID` int(11) NOT NULL default '0',
  `FieldName` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `Version`, `TagsText`) VALUES
(11, 'Page', '2009-06-27 15:02:33', '2009-07-15 11:46:34', 'home', 'Home', NULL, '<p></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 6, NULL),
(12, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'about', 'About', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 2, NULL),
(30, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:47:15', 'silverstripe-praised-by-major-european-magazine', 'SilverStripe praised by major European magazine', NULL, '<p>SilverStripe has received a very positive review and a four page tutorial in one of Europe''s major computer magazines. <a href="http://www.heise.de/ct/" target="_blank">c''t Magazine</a> is a hardware and software magazine with a circulation of 367,000. It''s written in German and has the highest subscription base of any technology magazine in Europe.</p>\n<p>The article mentioned SilverStripe''s involvement with <a href="http://www.silverstripe.com/2008-democratic-national-convention/" target="_blank">the U.S. Democratic Convention</a>, provided a walkthrough of setting up a simple site, mentioned <a href="http://www.silverstripe.com/coming-2009-silverstripe-das-umfassende-handbuch/">our upcoming book</a>, and had some lovely things to say about SilverStripe:</p>\n<blockquote>\n<p>SilverStripe enables Webmasters to comfortably install and run the system ''out of the box''. Thanks to the underlying objectoriented framework, customizations and extensions can be developed quickly.</p>\n</blockquote>\n<blockquote>\n<p>SilverStripe enables quick development of simple websites. In case the website grows into an application one day, You don''t have to switch to a different framework: SilverStripe delivers everything you need to build more complex websites as well.</p>\n</blockquote>\n<p>You can <a href="http://www.heise.de/kiosk/archiv/ct/2009/1/168_Erste-Schritte-mit-dem-Content-Management-System-SilverStripe" target="_blank">buy the article online (in German) from the January 2009 issue</a>&nbsp;for about half a euro.</p>\n<p>&nbsp;</p>', 'SilverStripe praised by major European magazine', NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, 5, NULL),
(15, 'BlogHolder', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(32, 'BlogEntry', '2009-07-15 11:45:26', '2009-07-15 11:45:46', 'new-org-for-developers', 'New .org for developers!', NULL, '<p>Welcome to the brand new SilverStripe.org! We created this site to be a place to learn and talk about our open source SilverStripe CMS and Sapphire (our application framework).</p>\n<p>Head on over to the <a href="http://silverstripe.com">SilverStripe.com</a> site if you want to know more about our company and the business side of things. But if you''re looking for the SilverStripe community, developer documentation, or the roadmap for the future of the product, you''re in the right place.</p>\n<p>We listened to what a lot of you told us about how you found it difficult to find what you were looking for. Hopefully this new site will allow you to find out more information and faster than before. We spent a lot of time on the information architecture and overall design of this site to make navigation and discovery easier. Big thanks to Sally (<span class="codedirection">moc.liamg@gnillewelfyllas</span>) for leading the charge on the new site design. We''re keen to get your feedback and we''ve put a link at the bottom of each page for you to give us comments about this site.</p>\n<p>Thanks for coming along for the ride. My hat''s off to you, the SilverStripe developer community, for making SilverStripe what it is today. Thank you.</p>\n<p>Enjoy!</p>\n<p>Brian</p>\n<p>&nbsp;</p>', 'New .org for developers!', NULL, NULL, NULL, 0, 1, NULL, 1, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, 3, NULL),
(18, 'Page', '2009-06-27 17:07:02', '2009-06-27 17:07:17', 'staff-2', 'Staff', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Staff', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 3, NULL),
(19, 'Page', '2009-06-27 17:07:21', '2009-06-27 17:07:30', 'sam', 'Sam', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sam', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(20, 'Page', '2009-06-27 17:07:36', '2009-06-27 17:07:45', 'tim', 'Tim', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(22, 'Page', '2009-06-27 17:07:51', '2009-06-27 17:08:01', 'sig', 'Sig', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sig', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(21, 'Page', '2009-06-27 17:07:49', '2009-06-27 17:08:09', 'brian', 'Brian', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(23, 'Page', '2009-06-27 17:08:16', '2009-06-27 17:08:23', 'normann', 'Normann', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Normann', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(24, 'Page', '2009-06-27 17:08:30', '2009-06-27 17:08:38', 'michael', 'Michael', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Michael', NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(25, 'Page', '2009-06-27 17:08:46', '2009-06-27 17:08:52', 'sean', 'Sean', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sean', NULL, NULL, NULL, 1, 1, NULL, 0, 7, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(26, 'Page', '2009-06-27 17:08:59', '2009-06-27 17:09:05', 'simon', 'Simon', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Simon', NULL, NULL, NULL, 1, 1, NULL, 0, 8, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(27, 'Page', '2009-06-27 17:09:12', '2009-07-15 11:46:19', 'ingo', 'Ingo', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Ingo', NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 5, NULL),
(28, 'Page', '2009-06-27 17:09:27', '2009-06-27 17:09:36', 'komal', 'Komal', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Komal', NULL, NULL, NULL, 1, 1, NULL, 0, 10, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, 3, NULL),
(29, 'Page', '2009-06-27 17:22:32', '2009-06-27 17:23:16', 'my-new-page', 'Legacy URL Test', NULL, '<p></p>', 'Legacy URL Test', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 'my-legacy-page.php', 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 3, NULL),
(31, 'BlogEntry', '2009-07-15 11:44:25', '2009-07-15 11:44:57', 'publicise-your-website-in-your-member-profile', 'Publicise your website in your member profile', NULL, '<p>Less than 30 of our <a href="http://www.silverstripe.org/forums/memberlist" target="_blank">2000+ forum members</a> have their website publicly listed in their profile.</p>\n<p>By including your website URL, you make it easier for the community to learn about you. You may even gain some commercial work if your forum posts, themes, or <a href="http://www.silverstripe.org/community-showcase/" target="_blank">showcase sites</a> make you look good! (This is especially true if you also enter your city and company name.)</p>\n<p>So, <a href="http://www.silverstripe.org/forums/login">log in to the forum</a>, visit <a href="http://www.silverstripe.org/ForumMemberProfile/edit" target="_blank">your profile page</a>, type in your website address, <span style="font-weight: bold;"><strong>and</strong></span> tick the box on the right to make it publicly visible, as shown below...</p>\n<p>&nbsp;</p>\n<div class="image left" style="width: 383px;"><img src="assets/screenshots/update-personal-forum-profile-with-website-URL.png" width="383" height="551" alt="" title="" /></div>', 'Publicise your website in your member profile', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 1, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `TagsText`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2009-06-27 12:47:07', '2009-06-27 12:47:07', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(2, 2, 1, 1, 0, 0, 'Page', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(3, 3, 1, 1, 0, 0, 'Page', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(4, 4, 1, 1, 0, 0, 'BlogHolder', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(5, 5, 1, 1, 0, 0, 'BlogEntry', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 'sample-blog-entry', 'SilverStripe blog module successfully installed', NULL, 'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, NULL),
(6, 6, 1, 0, 0, 0, 'ErrorPage', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(7, 3, 2, 0, 1, 0, 'Page', '2009-06-27 12:47:08', '2009-06-27 13:01:30', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(8, 3, 3, 0, 1, 0, 'Page', '2009-06-27 12:47:08', '2009-06-27 13:03:06', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(9, 3, 4, 0, 1, 0, 'Page', '2009-06-27 12:47:08', '2009-06-27 13:07:12', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(10, 3, 5, 1, 1, 1, 'Page', '2009-06-27 12:47:08', '2009-06-27 13:07:12', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(11, 7, 1, 0, 1, 0, 'Page', '2009-06-27 15:00:43', '2009-06-27 15:00:43', 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(12, 7, 2, 1, 1, 1, 'Page', '2009-06-27 15:00:43', '2009-06-27 15:00:44', 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(13, 8, 1, 0, 1, 0, 'Page', '2009-06-27 15:00:44', '2009-06-27 15:00:44', 'about', 'About', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(14, 8, 2, 1, 1, 1, 'Page', '2009-06-27 15:00:44', '2009-06-27 15:00:44', 'about', 'About', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(15, 9, 1, 0, 1, 0, 'Page', '2009-06-27 15:00:44', '2009-06-27 15:00:44', 'staff', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8, NULL),
(16, 9, 2, 1, 1, 1, 'Page', '2009-06-27 15:00:44', '2009-06-27 15:00:44', 'staff', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8, NULL),
(17, 10, 1, 0, 1, 0, 'Page', '2009-06-27 15:00:44', '2009-06-27 15:00:44', 'staff-sam', 'Staff: Sam', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 9, NULL),
(18, 10, 2, 1, 1, 1, 'Page', '2009-06-27 15:00:44', '2009-06-27 15:00:44', 'staff-sam', 'Staff: Sam', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 9, NULL),
(19, 11, 1, 0, 1, 0, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(20, 11, 2, 1, 1, 1, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'home', 'Home', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(21, 12, 1, 0, 1, 0, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'about', 'About', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(22, 12, 2, 1, 1, 1, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'about', 'About', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(23, 13, 1, 0, 1, 0, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'staff', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 12, NULL),
(24, 13, 2, 1, 1, 1, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'staff', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 12, NULL),
(25, 14, 1, 0, 1, 0, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'staff-sam', 'Staff - Sam', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 13, NULL),
(26, 14, 2, 1, 1, 1, 'Page', '2009-06-27 15:02:33', '2009-06-27 15:02:33', 'staff-sam', 'Staff - Sam', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 13, NULL),
(27, 15, 1, 1, 1, 1, 'BlogHolder', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(28, 16, 1, 1, 1, 1, 'BlogEntry', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 'sample-blog-entry', 'SilverStripe blog module successfully installed', NULL, 'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(29, 17, 1, 0, 1, 0, 'ErrorPage', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(30, 18, 1, 0, 1, 0, 'Page', '2009-06-27 17:07:02', '2009-06-27 17:07:02', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(31, 18, 2, 0, 1, 0, 'Page', '2009-06-27 17:07:02', '2009-06-27 17:07:17', 'staff-2', 'Staff', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Staff', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(32, 18, 3, 1, 1, 1, 'Page', '2009-06-27 17:07:02', '2009-06-27 17:07:17', 'staff-2', 'Staff', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Staff', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(33, 19, 1, 0, 1, 0, 'Page', '2009-06-27 17:07:21', '2009-06-27 17:07:21', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(34, 19, 2, 0, 1, 0, 'Page', '2009-06-27 17:07:21', '2009-06-27 17:07:30', 'sam', 'Sam', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sam', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(35, 19, 3, 1, 1, 1, 'Page', '2009-06-27 17:07:21', '2009-06-27 17:07:30', 'sam', 'Sam', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sam', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(36, 20, 1, 0, 1, 0, 'Page', '2009-06-27 17:07:36', '2009-06-27 17:07:36', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(37, 20, 2, 0, 1, 0, 'Page', '2009-06-27 17:07:36', '2009-06-27 17:07:45', 'tim', 'Tim', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(38, 20, 3, 1, 1, 1, 'Page', '2009-06-27 17:07:36', '2009-06-27 17:07:45', 'tim', 'Tim', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(39, 21, 1, 0, 1, 0, 'Page', '2009-06-27 17:07:49', '2009-06-27 17:07:49', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(40, 22, 1, 0, 1, 0, 'Page', '2009-06-27 17:07:51', '2009-06-27 17:07:51', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(41, 22, 2, 0, 1, 0, 'Page', '2009-06-27 17:07:51', '2009-06-27 17:08:01', 'sig', 'Sig', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sig', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(42, 22, 3, 1, 1, 1, 'Page', '2009-06-27 17:07:51', '2009-06-27 17:08:01', 'sig', 'Sig', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sig', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(43, 21, 2, 0, 1, 0, 'Page', '2009-06-27 17:07:49', '2009-06-27 17:08:09', 'brian', 'Brian', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(44, 21, 3, 1, 1, 1, 'Page', '2009-06-27 17:07:49', '2009-06-27 17:08:09', 'brian', 'Brian', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(45, 23, 1, 0, 1, 0, 'Page', '2009-06-27 17:08:16', '2009-06-27 17:08:16', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(46, 23, 2, 0, 1, 0, 'Page', '2009-06-27 17:08:16', '2009-06-27 17:08:23', 'normann', 'Normann', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Normann', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(47, 23, 3, 1, 1, 1, 'Page', '2009-06-27 17:08:16', '2009-06-27 17:08:23', 'normann', 'Normann', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Normann', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(48, 24, 1, 0, 1, 0, 'Page', '2009-06-27 17:08:30', '2009-06-27 17:08:30', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(49, 24, 2, 0, 1, 0, 'Page', '2009-06-27 17:08:30', '2009-06-27 17:08:38', 'michael', 'Michael', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Michael', NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(50, 24, 3, 1, 1, 1, 'Page', '2009-06-27 17:08:30', '2009-06-27 17:08:38', 'michael', 'Michael', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Michael', NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(51, 25, 1, 0, 1, 0, 'Page', '2009-06-27 17:08:46', '2009-06-27 17:08:46', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(52, 25, 2, 0, 1, 0, 'Page', '2009-06-27 17:08:46', '2009-06-27 17:08:52', 'sean', 'Sean', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sean', NULL, NULL, NULL, 1, 1, NULL, 0, 7, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(53, 25, 3, 1, 1, 1, 'Page', '2009-06-27 17:08:46', '2009-06-27 17:08:52', 'sean', 'Sean', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Sean', NULL, NULL, NULL, 1, 1, NULL, 0, 7, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(54, 26, 1, 0, 1, 0, 'Page', '2009-06-27 17:08:59', '2009-06-27 17:08:59', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(55, 26, 2, 0, 1, 0, 'Page', '2009-06-27 17:08:59', '2009-06-27 17:09:05', 'simon', 'Simon', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Simon', NULL, NULL, NULL, 1, 1, NULL, 0, 8, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(56, 26, 3, 1, 1, 1, 'Page', '2009-06-27 17:08:59', '2009-06-27 17:09:05', 'simon', 'Simon', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Simon', NULL, NULL, NULL, 1, 1, NULL, 0, 8, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(57, 27, 1, 0, 1, 0, 'Page', '2009-06-27 17:09:12', '2009-06-27 17:09:12', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(58, 27, 2, 0, 1, 0, 'Page', '2009-06-27 17:09:12', '2009-06-27 17:09:20', 'ingo', 'Ingo', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Ingo', NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(59, 27, 3, 1, 1, 1, 'Page', '2009-06-27 17:09:12', '2009-06-27 17:09:20', 'ingo', 'Ingo', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Ingo', NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(60, 28, 1, 0, 1, 0, 'Page', '2009-06-27 17:09:27', '2009-06-27 17:09:27', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 10, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(61, 28, 2, 0, 1, 0, 'Page', '2009-06-27 17:09:27', '2009-06-27 17:09:36', 'komal', 'Komal', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Komal', NULL, NULL, NULL, 1, 1, NULL, 0, 10, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(62, 28, 3, 1, 1, 1, 'Page', '2009-06-27 17:09:27', '2009-06-27 17:09:36', 'komal', 'Komal', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Komal', NULL, NULL, NULL, 1, 1, NULL, 0, 10, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(63, 29, 1, 0, 1, 0, 'Page', '2009-06-27 17:22:32', '2009-06-27 17:22:32', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(64, 29, 2, 0, 1, 0, 'Page', '2009-06-27 17:22:32', '2009-06-27 17:23:16', 'my-new-page', 'Legacy URL Test', NULL, '<p></p>', 'Legacy URL Test', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 'my-legacy-page.php', 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(65, 29, 3, 1, 1, 1, 'Page', '2009-06-27 17:22:32', '2009-06-27 17:23:16', 'my-new-page', 'Legacy URL Test', NULL, '<p></p>', 'Legacy URL Test', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 'my-legacy-page.php', 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(66, 11, 3, 0, 1, 0, 'Page', '2009-06-27 15:02:33', '2009-07-15 11:30:45', 'home', 'Home', NULL, '<p></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(67, 11, 4, 1, 1, 1, 'Page', '2009-06-27 15:02:33', '2009-07-15 11:30:45', 'home', 'Home', NULL, '<p></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(68, 30, 1, 0, 1, 0, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:42:20', 'new-blogentry', 'New BlogEntry', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(69, 30, 2, 0, 1, 0, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:44:01', 'new-blogentry', 'New BlogEntry', 'SilverStripe praised by major European magazine', '<p>SilverStripe has received a very positive review and a four page tutorial in one of Europe''s major computer magazines. <a href="http://www.heise.de/ct/" target="_blank">c''t Magazine</a> is a hardware and software magazine with a circulation of 367,000. It''s written in German and has the highest subscription base of any technology magazine in Europe.</p>\n<p>The article mentioned SilverStripe''s involvement with <a href="http://www.silverstripe.com/2008-democratic-national-convention/" target="_blank">the U.S. Democratic Convention</a>, provided a walkthrough of setting up a simple site, mentioned <a href="http://www.silverstripe.com/coming-2009-silverstripe-das-umfassende-handbuch/">our upcoming book</a>, and had some lovely things to say about SilverStripe:</p>\n<blockquote>\n<p>SilverStripe enables Webmasters to comfortably install and run the system ''out of the box''. Thanks to the underlying objectoriented framework, customizations and extensions can be developed quickly.</p>\n</blockquote>\n<blockquote>\n<p>SilverStripe enables quick development of simple websites. In case the website grows into an application one day, You don''t have to switch to a different framework: SilverStripe delivers everything you need to build more complex websites as well.</p>\n</blockquote>\n<p>You can <a href="http://www.heise.de/kiosk/archiv/ct/2009/1/168_Erste-Schritte-mit-dem-Content-Management-System-SilverStripe" target="_blank">buy the article online (in German) from the January 2009 issue</a>&nbsp;for about half a euro.</p>\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(70, 30, 3, 1, 1, 1, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:44:01', 'new-blogentry', 'New BlogEntry', 'SilverStripe praised by major European magazine', '<p>SilverStripe has received a very positive review and a four page tutorial in one of Europe''s major computer magazines. <a href="http://www.heise.de/ct/" target="_blank">c''t Magazine</a> is a hardware and software magazine with a circulation of 367,000. It''s written in German and has the highest subscription base of any technology magazine in Europe.</p>\n<p>The article mentioned SilverStripe''s involvement with <a href="http://www.silverstripe.com/2008-democratic-national-convention/" target="_blank">the U.S. Democratic Convention</a>, provided a walkthrough of setting up a simple site, mentioned <a href="http://www.silverstripe.com/coming-2009-silverstripe-das-umfassende-handbuch/">our upcoming book</a>, and had some lovely things to say about SilverStripe:</p>\n<blockquote>\n<p>SilverStripe enables Webmasters to comfortably install and run the system ''out of the box''. Thanks to the underlying objectoriented framework, customizations and extensions can be developed quickly.</p>\n</blockquote>\n<blockquote>\n<p>SilverStripe enables quick development of simple websites. In case the website grows into an application one day, You don''t have to switch to a different framework: SilverStripe delivers everything you need to build more complex websites as well.</p>\n</blockquote>\n<p>You can <a href="http://www.heise.de/kiosk/archiv/ct/2009/1/168_Erste-Schritte-mit-dem-Content-Management-System-SilverStripe" target="_blank">buy the article online (in German) from the January 2009 issue</a>&nbsp;for about half a euro.</p>\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(71, 31, 1, 0, 1, 0, 'BlogEntry', '2009-07-15 11:44:25', '2009-07-15 11:44:25', 'new-blogentry-2', 'New BlogEntry', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(72, 31, 2, 0, 1, 0, 'BlogEntry', '2009-07-15 11:44:25', '2009-07-15 11:44:57', 'publicise-your-website-in-your-member-profile', 'Publicise your website in your member profile', NULL, '<p>Less than 30 of our <a href="http://www.silverstripe.org/forums/memberlist" target="_blank">2000+ forum members</a> have their website publicly listed in their profile.</p>\n<p>By including your website URL, you make it easier for the community to learn about you. You may even gain some commercial work if your forum posts, themes, or <a href="http://www.silverstripe.org/community-showcase/" target="_blank">showcase sites</a> make you look good! (This is especially true if you also enter your city and company name.)</p>\n<p>So, <a href="http://www.silverstripe.org/forums/login">log in to the forum</a>, visit <a href="http://www.silverstripe.org/ForumMemberProfile/edit" target="_blank">your profile page</a>, type in your website address, <span style="font-weight: bold;"><strong>and</strong></span> tick the box on the right to make it publicly visible, as shown below...</p>\n<p>&nbsp;</p>\n<div class="image left" style="width: 383px;"><img src="assets/screenshots/update-personal-forum-profile-with-website-URL.png" width="383" height="551" alt="" title="" /></div>', 'Publicise your website in your member profile', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 1, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(73, 31, 3, 1, 1, 1, 'BlogEntry', '2009-07-15 11:44:25', '2009-07-15 11:44:57', 'publicise-your-website-in-your-member-profile', 'Publicise your website in your member profile', NULL, '<p>Less than 30 of our <a href="http://www.silverstripe.org/forums/memberlist" target="_blank">2000+ forum members</a> have their website publicly listed in their profile.</p>\n<p>By including your website URL, you make it easier for the community to learn about you. You may even gain some commercial work if your forum posts, themes, or <a href="http://www.silverstripe.org/community-showcase/" target="_blank">showcase sites</a> make you look good! (This is especially true if you also enter your city and company name.)</p>\n<p>So, <a href="http://www.silverstripe.org/forums/login">log in to the forum</a>, visit <a href="http://www.silverstripe.org/ForumMemberProfile/edit" target="_blank">your profile page</a>, type in your website address, <span style="font-weight: bold;"><strong>and</strong></span> tick the box on the right to make it publicly visible, as shown below...</p>\n<p>&nbsp;</p>\n<div class="image left" style="width: 383px;"><img src="assets/screenshots/update-personal-forum-profile-with-website-URL.png" width="383" height="551" alt="" title="" /></div>', 'Publicise your website in your member profile', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 1, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(74, 32, 1, 0, 1, 0, 'BlogEntry', '2009-07-15 11:45:26', '2009-07-15 11:45:26', 'new-blogentry-2', 'New BlogEntry', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 3, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(75, 32, 2, 0, 1, 0, 'BlogEntry', '2009-07-15 11:45:26', '2009-07-15 11:45:46', 'new-org-for-developers', 'New .org for developers!', NULL, '<p>Welcome to the brand new SilverStripe.org! We created this site to be a place to learn and talk about our open source SilverStripe CMS and Sapphire (our application framework).</p>\n<p>Head on over to the <a href="http://silverstripe.com">SilverStripe.com</a> site if you want to know more about our company and the business side of things. But if you''re looking for the SilverStripe community, developer documentation, or the roadmap for the future of the product, you''re in the right place.</p>\n<p>We listened to what a lot of you told us about how you found it difficult to find what you were looking for. Hopefully this new site will allow you to find out more information and faster than before. We spent a lot of time on the information architecture and overall design of this site to make navigation and discovery easier. Big thanks to Sally (<span class="codedirection">moc.liamg@gnillewelfyllas</span>) for leading the charge on the new site design. We''re keen to get your feedback and we''ve put a link at the bottom of each page for you to give us comments about this site.</p>\n<p>Thanks for coming along for the ride. My hat''s off to you, the SilverStripe developer community, for making SilverStripe what it is today. Thank you.</p>\n<p>Enjoy!</p>\n<p>Brian</p>\n<p>&nbsp;</p>', 'New .org for developers!', NULL, NULL, NULL, 0, 1, NULL, 1, 3, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(76, 32, 3, 1, 1, 1, 'BlogEntry', '2009-07-15 11:45:26', '2009-07-15 11:45:46', 'new-org-for-developers', 'New .org for developers!', NULL, '<p>Welcome to the brand new SilverStripe.org! We created this site to be a place to learn and talk about our open source SilverStripe CMS and Sapphire (our application framework).</p>\n<p>Head on over to the <a href="http://silverstripe.com">SilverStripe.com</a> site if you want to know more about our company and the business side of things. But if you''re looking for the SilverStripe community, developer documentation, or the roadmap for the future of the product, you''re in the right place.</p>\n<p>We listened to what a lot of you told us about how you found it difficult to find what you were looking for. Hopefully this new site will allow you to find out more information and faster than before. We spent a lot of time on the information architecture and overall design of this site to make navigation and discovery easier. Big thanks to Sally (<span class="codedirection">moc.liamg@gnillewelfyllas</span>) for leading the charge on the new site design. We''re keen to get your feedback and we''ve put a link at the bottom of each page for you to give us comments about this site.</p>\n<p>Thanks for coming along for the ride. My hat''s off to you, the SilverStripe developer community, for making SilverStripe what it is today. Thank you.</p>\n<p>Enjoy!</p>\n<p>Brian</p>\n<p>&nbsp;</p>', 'New .org for developers!', NULL, NULL, NULL, 0, 1, NULL, 1, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(77, 27, 4, 0, 1, 0, 'Page', '2009-06-27 17:09:12', '2009-07-15 11:46:19', 'ingo', 'Ingo', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Ingo', NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(78, 27, 5, 1, 1, 1, 'Page', '2009-06-27 17:09:12', '2009-07-15 11:46:19', 'ingo', 'Ingo', NULL, '<p>Nunc auctor bibendum eros. Maecenas porta accumsan mauris. Etiam enim enim, elementum sed, bibendum quis, rhoncus non, metus. Fusce neque dolor, adipiscing sed, consectetuer et, lacinia sit amet, quam. Suspendisse wisi quam, consectetuer in, blandit sed, suscipit eu, eros. Etiam ligula enim, tempor ut, blandit nec, mollis eu, lectus. Nam cursus. Vivamus iaculis. Aenean risus purus, pharetra in, blandit quis, gravida a, turpis. Donec nisl. Aenean eget mi. Fusce mattis est id diam. Phasellus faucibus interdum sapien. Duis quis nunc. Sed enim.</p>', 'Ingo', NULL, NULL, NULL, 1, 1, NULL, 0, 9, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 18, NULL),
(79, 11, 5, 0, 1, 0, 'Page', '2009-06-27 15:02:33', '2009-07-15 11:46:34', 'home', 'Home', NULL, '<p></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(80, 11, 6, 1, 1, 1, 'Page', '2009-06-27 15:02:33', '2009-07-15 11:46:34', 'home', 'Home', NULL, '<p></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(81, 30, 4, 0, 1, 0, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:47:15', 'silverstripe-praised-by-major-european-magazine', 'SilverStripe praised by major European magazine', NULL, '<p>SilverStripe has received a very positive review and a four page tutorial in one of Europe''s major computer magazines. <a href="http://www.heise.de/ct/" target="_blank">c''t Magazine</a> is a hardware and software magazine with a circulation of 367,000. It''s written in German and has the highest subscription base of any technology magazine in Europe.</p>\n<p>The article mentioned SilverStripe''s involvement with <a href="http://www.silverstripe.com/2008-democratic-national-convention/" target="_blank">the U.S. Democratic Convention</a>, provided a walkthrough of setting up a simple site, mentioned <a href="http://www.silverstripe.com/coming-2009-silverstripe-das-umfassende-handbuch/">our upcoming book</a>, and had some lovely things to say about SilverStripe:</p>\n<blockquote>\n<p>SilverStripe enables Webmasters to comfortably install and run the system ''out of the box''. Thanks to the underlying objectoriented framework, customizations and extensions can be developed quickly.</p>\n</blockquote>\n<blockquote>\n<p>SilverStripe enables quick development of simple websites. In case the website grows into an application one day, You don''t have to switch to a different framework: SilverStripe delivers everything you need to build more complex websites as well.</p>\n</blockquote>\n<p>You can <a href="http://www.heise.de/kiosk/archiv/ct/2009/1/168_Erste-Schritte-mit-dem-Content-Management-System-SilverStripe" target="_blank">buy the article online (in German) from the January 2009 issue</a>&nbsp;for about half a euro.</p>\n<p>&nbsp;</p>', 'SilverStripe praised by major European magazine', NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 15, NULL),
(82, 30, 5, 1, 1, 1, 'BlogEntry', '2009-07-15 11:42:20', '2009-07-15 11:47:15', 'silverstripe-praised-by-major-european-magazine', 'SilverStripe praised by major European magazine', NULL, '<p>SilverStripe has received a very positive review and a four page tutorial in one of Europe''s major computer magazines. <a href="http://www.heise.de/ct/" target="_blank">c''t Magazine</a> is a hardware and software magazine with a circulation of 367,000. It''s written in German and has the highest subscription base of any technology magazine in Europe.</p>\n<p>The article mentioned SilverStripe''s involvement with <a href="http://www.silverstripe.com/2008-democratic-national-convention/" target="_blank">the U.S. Democratic Convention</a>, provided a walkthrough of setting up a simple site, mentioned <a href="http://www.silverstripe.com/coming-2009-silverstripe-das-umfassende-handbuch/">our upcoming book</a>, and had some lovely things to say about SilverStripe:</p>\n<blockquote>\n<p>SilverStripe enables Webmasters to comfortably install and run the system ''out of the box''. Thanks to the underlying objectoriented framework, customizations and extensions can be developed quickly.</p>\n</blockquote>\n<blockquote>\n<p>SilverStripe enables quick development of simple websites. In case the website grows into an application one day, You don''t have to switch to a different framework: SilverStripe delivers everything you need to build more complex websites as well.</p>\n</blockquote>\n<p>You can <a href="http://www.heise.de/kiosk/archiv/ct/2009/1/168_Erste-Schritte-mit-dem-Content-Management-System-SilverStripe" target="_blank">buy the article online (in German) from the January 2009 issue</a>&nbsp;for about half a euro.</p>\n<p>&nbsp;</p>', 'SilverStripe praised by major European magazine', NULL, NULL, NULL, 0, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `TagCloudWidget`
--

DROP TABLE IF EXISTS `TagCloudWidget`;
CREATE TABLE IF NOT EXISTS `TagCloudWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Title` varchar(50) character set utf8 default NULL,
  `Limit` int(11) NOT NULL default '0',
  `Sortby` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `TagCloudWidget`
--

INSERT INTO `TagCloudWidget` (`ID`, `Title`, `Limit`, `Sortby`) VALUES
(2, 'Tag Cloud', 0, 'alphabet'),
(5, 'Tag Cloud', 0, 'alphabet');

-- --------------------------------------------------------

--
-- Table structure for table `TrackBackPing`
--

DROP TABLE IF EXISTS `TrackBackPing`;
CREATE TABLE IF NOT EXISTS `TrackBackPing` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `TrackBackPing`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

DROP TABLE IF EXISTS `VirtualPage_versions`;
CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `Widget`
--

DROP TABLE IF EXISTS `Widget`;
CREATE TABLE IF NOT EXISTS `Widget` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Widget','ArchiveWidget','BlogManagementWidget','RSSWidget','SubscribeRSSWidget','TagCloudWidget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Widget`
--

INSERT INTO `Widget` (`ID`, `ClassName`, `Created`, `LastEdited`, `Sort`, `ParentID`) VALUES
(1, 'BlogManagementWidget', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 0, 1),
(2, 'TagCloudWidget', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 0, 1),
(3, 'ArchiveWidget', '2009-06-27 12:47:08', '2009-06-27 12:47:08', 0, 1),
(4, 'BlogManagementWidget', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 0, 2),
(5, 'TagCloudWidget', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 0, 2),
(6, 'ArchiveWidget', '2009-06-27 17:05:02', '2009-06-27 17:05:02', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `WidgetArea`
--

DROP TABLE IF EXISTS `WidgetArea`;
CREATE TABLE IF NOT EXISTS `WidgetArea` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('WidgetArea') character set utf8 default 'WidgetArea',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `WidgetArea`
--

INSERT INTO `WidgetArea` (`ID`, `ClassName`, `Created`, `LastEdited`) VALUES
(1, 'WidgetArea', '2009-06-27 12:47:08', '2009-06-27 12:47:08'),
(2, 'WidgetArea', '2009-06-27 17:05:02', '2009-06-27 17:05:02');
