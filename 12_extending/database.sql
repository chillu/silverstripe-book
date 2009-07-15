-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2009 at 07:29 PM
-- Server version: 5.0.81
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `SS_ssbookwiley_12extending`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404);

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
(1, 4, 1, 0, 0, 0, 404),
(2, 4, 2, 0, 0, 0, 404);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
CREATE TABLE IF NOT EXISTS `File` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `File`
--


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
(1, 'Group', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

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
(1, 'Member', '2009-07-15 19:13:45', '2009-07-15 19:19:10', NULL, NULL, 'admin', 'cojloy45kco44448kock0cocgcoo8wg', NULL, 1, '2009-07-15 19:29:14', 0, NULL, NULL, 'sha1', 'n1m8vhgcjioc4k44s0osw080c8wgogs4cc08ks', NULL, NULL, 'en_US');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'cojloy45kco44448kock0cocgcoo8wg', 'n1m8vhgcjioc4k44s0osw080c8wgogs4cc08ks', 'sha1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `NewMembersWidget`
--

DROP TABLE IF EXISTS `NewMembersWidget`;
CREATE TABLE IF NOT EXISTS `NewMembersWidget` (
  `ID` int(11) NOT NULL auto_increment,
  `Limit` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `NewMembersWidget`
--


-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
CREATE TABLE IF NOT EXISTS `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `LegacyURL` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `LegacyURL`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL);

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
  `LegacyURL` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `LegacyURL`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL);

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
  `LegacyURL` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `LegacyURL`) VALUES
(1, 1, 1, 0, 0, 0, NULL),
(2, 2, 1, 0, 0, 0, NULL),
(3, 3, 1, 0, 0, 0, NULL),
(4, 4, 1, 0, 0, 0, NULL),
(5, 4, 2, 0, 0, 0, NULL);

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
(1, 'Permission', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'ADMIN', 0, 1, 1);

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
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `Version`, `TagsText`) VALUES
(1, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(2, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(3, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(4, 'ErrorPage', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL);

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
  `ClassName` enum('SiteTree','Page','GhostPage','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `Version`, `TagsText`) VALUES
(1, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(2, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(3, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL),
(4, 'ErrorPage', '2009-07-15 19:13:45', '2009-07-15 19:13:49', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, 1, NULL);

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
  `ClassName` enum('SiteTree','Page','GhostPage','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `TagsText`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(2, 2, 1, 1, 0, 0, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(3, 3, 1, 1, 0, 0, 'Page', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2009-07-15 19:13:45', '2009-07-15 19:13:45', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0, NULL),
(5, 4, 2, 0, 0, 0, 'ErrorPage', '2009-07-15 19:13:45', '2009-07-15 19:13:49', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, NULL);

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
  `ClassName` enum('Widget','NewMembersWidget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Widget`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `WidgetArea`
--

