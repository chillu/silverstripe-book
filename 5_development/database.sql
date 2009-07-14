-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 14, 2009 at 10:20 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `SS_ssbookwiley_5development`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ArchiveWidget`
--

INSERT INTO `ArchiveWidget` (`ID`, `DisplayMode`) VALUES
(3, 'month');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `BlogEntry`
--

INSERT INTO `BlogEntry` (`ID`, `Date`, `Author`, `Tags`) VALUES
(5, '2009-01-17 17:19:00', NULL, 'silverstripe, blog');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `BlogEntry_Live`
--

INSERT INTO `BlogEntry_Live` (`ID`, `Date`, `Author`, `Tags`) VALUES
(5, '2009-01-17 17:19:00', NULL, 'silverstripe, blog');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `BlogEntry_versions`
--

INSERT INTO `BlogEntry_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `Date`, `Author`, `Tags`) VALUES
(1, 5, 1, 0, 0, 0, '2009-01-17 17:19:59', NULL, 'silverstripe, blog'),
(2, 5, 2, 0, 1, 0, '2009-01-17 17:19:00', NULL, 'silverstripe, blog'),
(3, 5, 3, 0, 1, 0, '2009-01-17 17:19:00', NULL, 'silverstripe, blog');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `BlogHolder`
--

INSERT INTO `BlogHolder` (`ID`, `LandingPageFreshness`, `Name`, `TrackBacksEnabled`, `SideBarID`) VALUES
(4, NULL, NULL, 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `BlogHolder_Live`
--

INSERT INTO `BlogHolder_Live` (`ID`, `LandingPageFreshness`, `Name`, `TrackBacksEnabled`, `SideBarID`) VALUES
(4, NULL, NULL, 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `BlogHolder_versions`
--

INSERT INTO `BlogHolder_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `LandingPageFreshness`, `Name`, `TrackBacksEnabled`, `SideBarID`) VALUES
(1, 4, 1, 0, 0, 0, NULL, NULL, 0, 1),
(2, 4, 2, 0, 1, 0, NULL, NULL, 0, 1),
(3, 4, 3, 0, 1, 0, NULL, NULL, 0, 1),
(4, 4, 4, 0, 1, 0, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionPage`
--

DROP TABLE IF EXISTS `CollectionPage`;
CREATE TABLE IF NOT EXISTS `CollectionPage` (
  `ID` int(11) NOT NULL auto_increment,
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `CollectionPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `CollectionPage_Live`
--

DROP TABLE IF EXISTS `CollectionPage_Live`;
CREATE TABLE IF NOT EXISTS `CollectionPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `CollectionModelClass` varchar(255) character set utf8 default NULL,
  `CollectionControllerClass` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `CollectionPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `CollectionPage_versions`
--

DROP TABLE IF EXISTS `CollectionPage_versions`;
CREATE TABLE IF NOT EXISTS `CollectionPage_versions` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `CollectionPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckboxOption`
--

DROP TABLE IF EXISTS `EditableCheckboxOption`;
CREATE TABLE IF NOT EXISTS `EditableCheckboxOption` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableCheckboxOption`
--


-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdownOption`
--

DROP TABLE IF EXISTS `EditableDropdownOption`;
CREATE TABLE IF NOT EXISTS `EditableDropdownOption` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableDropdownOption`
--


-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField`
--

DROP TABLE IF EXISTS `EditableFileField`;
CREATE TABLE IF NOT EXISTS `EditableFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableFileField`
--


-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField`
--

DROP TABLE IF EXISTS `EditableFormField`;
CREATE TABLE IF NOT EXISTS `EditableFormField` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `EditableFormField`
--

INSERT INTO `EditableFormField` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CanDelete`, `CustomParameter`, `ParentID`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`) VALUES
(1, 'EditableTextField', '2009-01-17 17:32:17', '2009-07-10 15:07:15', 'EditableTextField1', 'Name', NULL, 1, 1, 1, NULL, 3, NULL, 'a:0:{}', 'a:5:{s:4:"Size";s:2:"32";s:9:"MinLength";s:1:"0";s:9:"MaxLength";s:2:"32";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}'),
(2, 'EditableEmailField', '2009-01-17 17:32:23', '2009-07-10 15:07:15', 'EditableEmailField2', 'Email address', NULL, 2, 1, 1, NULL, 3, NULL, 'a:0:{}', 'a:1:{s:10:"ShowOnLoad";s:4:"Show";}'),
(4, 'EditableRadioField', '2009-01-17 17:33:05', '2009-07-10 15:07:15', 'EditableRadioField4', 'Website rating', NULL, 3, 0, 1, NULL, 3, NULL, 'a:0:{}', 'a:1:{s:10:"ShowOnLoad";s:4:"Show";}'),
(5, 'EditableTextField', '2009-01-17 17:33:35', '2009-07-10 15:07:15', 'EditableTextField5', 'Message', NULL, 5, 0, 1, NULL, 3, NULL, 'a:0:{}', 'a:5:{s:4:"Size";s:4:"1024";s:9:"MinLength";s:1:"0";s:9:"MaxLength";s:4:"1024";s:4:"Rows";s:1:"4";s:10:"ShowOnLoad";s:4:"Show";}'),
(6, 'EditableDropdown', '2009-07-10 15:05:58', '2009-07-10 15:07:15', 'EditableDropdown6', 'Message type', NULL, 4, 0, 1, NULL, 3, NULL, 'a:0:{}', 'a:1:{s:10:"ShowOnLoad";s:4:"Show";}');

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption`
--

DROP TABLE IF EXISTS `EditableOption`;
CREATE TABLE IF NOT EXISTS `EditableOption` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `EditableOption`
--

INSERT INTO `EditableOption` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `ParentID`) VALUES
(1, 'EditableOption', '2009-07-10 15:06:18', '2009-07-10 15:07:15', 'option1', 'A', 0, 1, 4),
(2, 'EditableOption', '2009-07-10 15:06:20', '2009-07-10 15:07:15', 'option2', 'B', 0, 2, 4),
(3, 'EditableOption', '2009-07-10 15:06:22', '2009-07-10 15:07:15', 'option3', 'C', 0, 3, 4),
(4, 'EditableOption', '2009-07-10 15:06:24', '2009-07-10 15:07:15', 'option4', 'D', 0, 4, 4),
(5, 'EditableOption', '2009-07-10 15:06:25', '2009-07-10 15:07:15', 'option5', 'F', 0, 5, 4),
(6, 'EditableOption', '2009-07-10 15:06:50', '2009-07-10 15:07:15', 'option6', 'Suggestion', 0, 1, 6),
(7, 'EditableOption', '2009-07-10 15:06:55', '2009-07-10 15:07:15', 'option7', 'Error report', 0, 2, 6),
(8, 'EditableOption', '2009-07-10 15:07:00', '2009-07-10 15:07:15', 'option8', 'Question', 0, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `EditableRadioOption`
--

DROP TABLE IF EXISTS `EditableRadioOption`;
CREATE TABLE IF NOT EXISTS `EditableRadioOption` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `EditableRadioOption`
--

INSERT INTO `EditableRadioOption` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Value`, `Sort`, `ParentID`) VALUES
(1, 'EditableRadioOption', '2009-01-17 17:33:54', '2009-01-17 17:33:54', 'option0', 'Anregung', 0, NULL, 0, 4),
(2, 'EditableRadioOption', '2009-01-17 17:33:54', '2009-01-17 17:33:54', 'option0', 'Kritik', 1, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Email_BlackList`
--

DROP TABLE IF EXISTS `Email_BlackList`;
CREATE TABLE IF NOT EXISTS `Email_BlackList` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Email_BlackList') character set utf8 default 'Email_BlackList',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `BlockedEmail` varchar(50) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Email_BlackList`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(6, 404);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(6, 404);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ErrorCode`) VALUES
(1, 6, 1, 0, 0, 0, 404),
(2, 6, 2, 0, 1, 0, 404),
(3, 6, 3, 0, 1, 0, 404),
(4, 6, 4, 0, 1, 0, 404),
(5, 6, 5, 0, 1, 0, 404),
(6, 6, 6, 0, 1, 0, 404),
(7, 6, 7, 0, 1, 0, 404),
(8, 6, 8, 0, 1, 0, 404),
(9, 6, 9, 0, 1, 0, 404);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `Sort`, `ParentID`, `OwnerID`) VALUES
(1, 'File', '2009-07-10 14:55:36', '2009-07-10 14:55:36', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 0, 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `IPRestrictions`, `ParentID`) VALUES
(1, 'Group', '2009-01-17 17:20:32', '2009-01-17 17:20:32', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
(2, 'Group', '2009-01-17 17:40:17', '2009-07-10 14:40:52', 'Editors', NULL, 'neue-gruppe', 0, 0, NULL, 0),
(3, 'Group', '2009-01-17 17:40:35', '2009-07-10 14:41:02', 'Editor in Chief', NULL, 'neue-gruppe', 0, 0, NULL, 2);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(2, 1, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Job`
--

INSERT INTO `Job` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Location`, `ExpiryDate`, `JobCategoryID`, `AuthorID`) VALUES
(1, 'Job', '2009-01-17 17:45:56', '2009-07-10 14:48:09', 'Social Network Data Model', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus nunc ullamcorper orci, fermentum bibendum enim nibh eget ipsum. Donec porttitor ligula eu dolor. Maecenas vitae nulla consequat libero cursus venenatis.', 'London', '2010-10-12', 9, 1),
(2, 'Job', '2009-01-17 17:46:24', '2009-07-10 14:48:00', 'Weather Widget Programming', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. ', 'Paris', NULL, 9, 1),
(3, 'Job', '2009-01-17 17:49:24', '2009-07-10 14:48:53', 'Interface for Membership Management', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus nunc ullamcorper orci, fermentum bibendum enim nibh eget ipsum. Donec porttitor ligula eu dolor. Maecenas vitae nulla consequat libero cursus venenatis.\r\n\r\n', 'Auckland', NULL, 10, 1),
(4, 'Job', '2009-07-10 14:49:37', '2009-07-10 14:51:10', 'Forum expert', 'Expert at building online communities', 'Wellington, New Zealand', '2010-01-01', 9, 1),
(5, 'Job', '2009-07-10 14:50:07', '2009-07-10 14:50:07', 'ORM guru', 'Expert at creating object-relational mappings', 'Melbourne, Australia', NULL, 9, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `JobCategory_Subscribers`
--

INSERT INTO `JobCategory_Subscribers` (`ID`, `JobCategoryID`, `MemberID`) VALUES
(1, 10, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `BlacklistedEmail`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`) VALUES
(1, 'Member', '2009-01-17 17:20:32', '2009-07-10 14:41:16', 'Admin', 'Admin', 'admin', 'm9x7zgns5zkcs840o0o4gko08kw84gw', NULL, 2, '2009-07-14 22:20:17', 0, NULL, NULL, 0, 'sha1', '91d4m443o18ogskcg48sk4ww04wccg8o8wgck04', NULL, NULL, 'en_US');

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
(1, 'MemberPassword', '2009-01-17 17:20:32', '2009-01-17 17:20:32', 'm9x7zgns5zkcs840o0o4gko08kw84gw', '91d4m443o18ogskcg48sk4ww04wccg8o8wgck04', 'sha1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MultiFormSession`
--

DROP TABLE IF EXISTS `MultiFormSession`;
CREATE TABLE IF NOT EXISTS `MultiFormSession` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `MultiFormSession`
--


-- --------------------------------------------------------

--
-- Table structure for table `MultiFormStep`
--

DROP TABLE IF EXISTS `MultiFormStep`;
CREATE TABLE IF NOT EXISTS `MultiFormStep` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('MultiFormStep') character set utf8 default 'MultiFormStep',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Data` mediumtext character set utf8,
  `SessionID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SessionID` (`SessionID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `MultiFormStep`
--


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
  `ParentID` int(11) NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `SessionID` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `PageComment`
--

INSERT INTO `PageComment` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Comment`, `IsSpam`, `NeedsModeration`, `CommenterURL`, `ParentID`, `AuthorID`, `SessionID`) VALUES
(1, 'PageComment', '2009-01-17 17:31:09', '2009-07-10 14:41:36', 'Ingo Schommer', 'This is a test comment', 0, 0, 'http://chillu.com', 1, 1, NULL);

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
(1, 'Permission', '2009-01-17 17:20:32', '2009-01-17 17:20:32', 'ADMIN', 0, 1, 1);

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
-- Table structure for table `RegistrationPage`
--

DROP TABLE IF EXISTS `RegistrationPage`;
CREATE TABLE IF NOT EXISTS `RegistrationPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RegistrationPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `RegistrationPage_Live`
--

DROP TABLE IF EXISTS `RegistrationPage_Live`;
CREATE TABLE IF NOT EXISTS `RegistrationPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ThankYouText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RegistrationPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `RegistrationPage_versions`
--

DROP TABLE IF EXISTS `RegistrationPage_versions`;
CREATE TABLE IF NOT EXISTS `RegistrationPage_versions` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RegistrationPage_versions`
--


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
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `Version`) VALUES
(1, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:20:17', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;"> </span></h3>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post your details</span></a><span style="font-style: normal;"> here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 24),
(9, 'JobCategory', '2009-01-17 17:43:14', '2009-07-14 22:18:04', 'programming', 'Programming', NULL, '<p></p>', 'Programming', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 13),
(2, 'JobCategoryHolder', '2009-01-17 17:19:58', '2009-01-17 17:42:55', 'jobs', 'Jobs', NULL, '<p></p>', 'Jobs', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 4),
(8, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:17:37', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Developers', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 14),
(3, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 15:07:15', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 14),
(4, 'BlogHolder', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 4),
(5, 'BlogEntry', '2009-01-17 17:19:59', '2009-07-10 14:43:07', 'silverstripe-blog-module-successfully-installed', 'SilverStripe blog module successfully installed', NULL, 'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].', 'SilverStripe blog module successfully installed', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(6, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:43', 'page-not-found', 'Page not found', NULL, '<p><span style="color: #000000; font-family: Times; font-size: medium; line-height: normal;">\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;">\n<p style="text-align: left;">Sorry, it seems you were trying to access a page that doesn''t exist.</p>\n<p style="text-align: left;">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</span></p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 9),
(10, 'JobCategory', '2009-01-17 17:47:14', '2009-07-10 14:49:00', 'design', 'Design', NULL, '<p></p>', 'Design', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 5),
(11, 'JobCategory', '2009-01-17 17:47:33', '2009-07-14 22:18:39', 'content-creation', 'Content Creation', NULL, '<p></p>', 'Content Creation', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 7),
(12, 'JobCategory', '2009-01-17 17:47:48', '2009-07-14 22:18:49', 'other', 'Other', NULL, '<p></p>', 'Other', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 7);

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
-- Table structure for table `SiteTree_lang`
--

DROP TABLE IF EXISTS `SiteTree_lang`;
CREATE TABLE IF NOT EXISTS `SiteTree_lang` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_lang_Live`
--

DROP TABLE IF EXISTS `SiteTree_lang_Live`;
CREATE TABLE IF NOT EXISTS `SiteTree_lang_Live` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_lang_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_lang_versions`
--

DROP TABLE IF EXISTS `SiteTree_lang_versions`;
CREATE TABLE IF NOT EXISTS `SiteTree_lang_versions` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_lang_versions`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

INSERT INTO `SiteTree_LinkTracking` (`ID`, `SiteTreeID`, `ChildID`, `FieldName`) VALUES
(27, 1, 8, 'Content'),
(28, 1, 2, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`, `Version`) VALUES
(1, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:20:17', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;"> </span></h3>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post your details</span></a><span style="font-style: normal;"> here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 24),
(9, 'JobCategory', '2009-01-17 17:43:14', '2009-07-14 22:18:04', 'programming', 'Programming', NULL, '<p></p>', 'Programming', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 13),
(2, 'JobCategoryHolder', '2009-01-17 17:19:58', '2009-01-17 17:42:57', 'jobs', 'Jobs', NULL, '<p></p>', 'Jobs', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 4),
(3, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 15:07:15', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 14),
(4, 'BlogHolder', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 4),
(5, 'BlogEntry', '2009-01-17 17:19:59', '2009-07-10 14:43:07', 'silverstripe-blog-module-successfully-installed', 'SilverStripe blog module successfully installed', NULL, 'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].', 'SilverStripe blog module successfully installed', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, 3),
(6, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:43', 'page-not-found', 'Page not found', NULL, '<p><span style="color: #000000; font-family: Times; font-size: medium; line-height: normal;">\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;">\n<p style="text-align: left;">Sorry, it seems you were trying to access a page that doesn''t exist.</p>\n<p style="text-align: left;">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</span></p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 9),
(10, 'JobCategory', '2009-01-17 17:47:14', '2009-07-10 14:49:00', 'design', 'Design', NULL, '<p></p>', 'Design', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 5),
(11, 'JobCategory', '2009-01-17 17:47:33', '2009-07-14 22:18:39', 'content-creation', 'Content Creation', NULL, '<p></p>', 'Content Creation', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 7),
(12, 'JobCategory', '2009-01-17 17:47:48', '2009-07-14 22:18:49', 'other', 'Other', NULL, '<p></p>', 'Other', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, 7),
(8, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:17:37', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Developers', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0, 14);

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
  `ClassName` enum('SiteTree','Page','GhostPage','BlogEntry','BlogHolder','JobCategory','JobCategoryHolder','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:19:58', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die standard Startseite. Sie kÃ¶nnen diese Seite editieren, indem Sie <a href="admin/">das CMS</a> Ã¶ffnen. Sie kÃ¶nnen auÃŸerdem die  <a href="http://doc.silverstripe.com">Entwicker Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">EinfÃ¼hrungskurse und Tutorien</a> aufrufen.<p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(2, 2, 1, 1, 0, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:19:58', 'about-us', 'Ãœber uns', NULL, '<p>Sie kÃ¶nnen diese Seite mit Ihren eigenen Inhalten fÃ¼llen, oder sie lÃ¶schen und Ihre eigenen Seiten erstellen.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(3, 3, 1, 1, 0, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:19:58', 'contact-us', 'Kontakt', NULL, '<p>Sie kÃ¶nnen diese Seite mit Ihren eigenen Inhalten fÃ¼llen, oder sie lÃ¶schen und Ihre eigenen Seiten erstellen.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(4, 4, 1, 1, 0, 0, 'BlogHolder', '2009-01-17 17:19:59', '2009-01-17 17:19:59', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(5, 5, 1, 1, 0, 0, 'BlogEntry', '2009-01-17 17:19:59', '2009-01-17 17:19:59', 'sample-blog-entry', 'SilverStripe Blog Module erfolgreich installiert', NULL, 'Herzlichen GlÃ¼ckwunsch, das SilverStripe Blog Modul wurde erfolgreich installiert. Dieser Blog-Eintrag kann sicher gelÃ¶scht werden. Sie kÃ¶nnen die Blog-Einstellungen (z.B. die angezeigten Widgets in der Sidebar) im admin-Bereich verÃ¤ndern.', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 0, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4),
(6, 6, 1, 0, 0, 0, 'ErrorPage', '2009-01-17 17:19:59', '2009-01-17 17:19:59', 'page-not-found', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, mÃ¶glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte Ã¼berprÃ¼fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0),
(7, 4, 2, 0, 1, 0, 'BlogHolder', '2009-01-17 17:19:59', '2009-01-17 17:24:20', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(8, 4, 3, 0, 1, 0, 'BlogHolder', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(9, 4, 4, 1, 1, 1, 'BlogHolder', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(10, 6, 2, 0, 1, 0, 'ErrorPage', '2009-01-17 17:19:59', '2009-01-17 17:25:12', 'page-not-found', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 5, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 0),
(11, 6, 3, 1, 1, 1, 'ErrorPage', '2009-01-17 17:19:59', '2009-01-17 17:25:12', 'page-not-found', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(12, 2, 2, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:25:58', 'jobs', 'Jobs', NULL, '<p></p>', 'Jobs', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(13, 2, 3, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:25:58', 'jobs', 'Jobs', NULL, '<p></p>', 'Jobs', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(14, 7, 1, 0, 1, 0, 'Page', '2009-01-17 17:26:03', '2009-01-17 17:26:03', 'neupage', 'NeuPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1),
(15, 8, 1, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-01-17 17:26:13', 'neupage', 'NeuPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 0),
(16, 8, 2, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-01-17 17:27:13', 'entwickler', 'Entwickler', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 0),
(17, 8, 3, 1, 1, 1, 'Page', '2009-01-17 17:26:13', '2009-01-17 17:27:13', 'entwickler', 'Entwickler', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(18, 8, 4, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-01-17 17:27:20', 'entwickler', 'Entwickler', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(19, 8, 5, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-01-17 17:27:56', 'entwickler', 'Entwickler', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(20, 8, 6, 1, 1, 1, 'Page', '2009-01-17 17:26:13', '2009-01-17 17:27:56', 'entwickler', 'Entwickler', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(21, 1, 2, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:29:28', 'home', 'Startseite', NULL, '<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(22, 1, 3, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:29:28', 'home', 'Startseite', NULL, '<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(23, 1, 4, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:30:12', 'home', 'Startseite', NULL, '<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(24, 1, 5, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:30:12', 'home', 'Startseite', NULL, '<p>Sie haben die Wahl</p>\n<p>Sie suchen nach interessanten Projekten?</p>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<p>Sie suchen nach f&auml;higen Leuten?</p>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(25, 1, 6, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:30:33', 'home', 'Startseite', NULL, '<h1>Sie haben die Wahl</h1>\n<h2>Sie suchen nach interessanten Projekten?</h2>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h2>Sie suchen nach f&auml;higen Leuten?</h2>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(26, 1, 7, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:30:33', 'home', 'Startseite', NULL, '<h1>Sie haben die Wahl</h1>\n<h2>Sie suchen nach interessanten Projekten?</h2>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h2>Sie suchen nach f&auml;higen Leuten?</h2>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(27, 1, 8, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:30:52', 'home', 'Startseite', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(28, 1, 9, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:30:52', 'home', 'Startseite', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(29, 3, 2, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-01-17 17:31:56', 'contact-us', 'Kontakt', NULL, '<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(30, 3, 3, 0, 1, 0, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-01-17 17:33:54', 'contact-us', 'Kontakt', NULL, '<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(31, 3, 4, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-01-17 17:33:54', 'contact-us', 'Kontakt', NULL, '<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(32, 1, 10, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:42:54', 'home', 'Startseite', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(33, 2, 4, 1, 1, 1, 'JobCategoryHolder', '2009-01-17 17:19:58', '2009-01-17 17:42:55', 'jobs', 'Jobs', NULL, '<p></p>', 'Jobs', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(34, 1, 11, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-01-17 17:42:57', 'home', 'Startseite', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="entwickler/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(35, 9, 1, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-01-17 17:43:14', 'new-jobcategory', 'NeuJobCategory', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 2),
(36, 9, 2, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-01-17 17:43:44', 'programmierung', 'Programmierung', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 2),
(37, 9, 3, 1, 1, 1, 'JobCategory', '2009-01-17 17:43:14', '2009-01-17 17:43:45', 'programmierung', 'Programmierung', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(38, 10, 1, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:14', '2009-01-17 17:47:14', 'new-jobcategory', 'NeuJobCategory', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 2),
(39, 10, 2, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:14', '2009-01-17 17:47:26', 'design', 'Design', NULL, '<p></p>', 'Design', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 2),
(40, 10, 3, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:14', '2009-01-17 17:47:26', 'design', 'Design', NULL, '<p></p>', 'Design', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(41, 11, 1, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:33', '2009-01-17 17:47:33', 'new-jobcategory', 'NeuJobCategory', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 2),
(42, 11, 2, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:33', '2009-01-17 17:47:42', 'inhalt', 'Inhalt', NULL, '<p></p>', 'Inhalt', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 2),
(43, 11, 3, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:33', '2009-01-17 17:47:42', 'inhalt', 'Inhalt', NULL, '<p></p>', 'Inhalt', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(44, 12, 1, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:48', '2009-01-17 17:47:48', 'new-jobcategory', 'NeuJobCategory', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 2),
(45, 12, 2, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:48', '2009-01-17 17:47:56', 'sonstige', 'Sonstige', NULL, '<p></p>', 'Sonstige', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 2),
(46, 12, 3, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:48', '2009-01-17 17:47:56', 'sonstige', 'Sonstige', NULL, '<p></p>', 'Sonstige', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(47, 3, 5, 0, 1, 0, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 14:38:32', 'contact-us', 'Contact Us', NULL, '<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(48, 3, 6, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 14:38:32', 'contact-us', 'Contact Us', NULL, '<p>Sie k&ouml;nnen diese Seite mit Ihren eigenen Inhalten f&uuml;llen, oder sie l&ouml;schen und Ihre eigenen Seiten erstellen.</p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(49, 1, 12, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:38:49', 'home', 'Startseite', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="developers/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(50, 8, 7, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-07-10 14:38:49', 'developers', 'Developers', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(51, 8, 8, 1, 1, 1, 'Page', '2009-01-17 17:26:13', '2009-07-10 14:38:49', 'developers', 'Developers', NULL, '<p></p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(52, 1, 13, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:38:49', 'home', 'Startseite', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="developers/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(53, 9, 4, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:39:11', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(54, 9, 5, 1, 1, 1, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:39:11', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(55, 11, 4, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:33', '2009-07-10 14:39:29', 'index', 'Index', NULL, '<p></p>', 'Inhalt', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(56, 11, 5, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:33', '2009-07-10 14:39:29', 'index', 'Index', NULL, '<p></p>', 'Inhalt', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(57, 12, 4, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:48', '2009-07-10 14:39:37', 'other', 'Other', NULL, '<p></p>', 'Sonstige', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(58, 12, 5, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:48', '2009-07-10 14:39:37', 'other', 'Other', NULL, '<p></p>', 'Sonstige', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(59, 13, 1, 0, 1, 0, 'Page', '2009-07-10 14:40:03', '2009-07-10 14:40:03', 'neupage', 'NeuPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(60, 13, 2, 0, 1, 0, 'Page', '2009-07-10 14:40:03', '2009-07-10 14:40:16', 'sub-page', 'sub-page 1', NULL, '<p></p>', 'sub-page 1', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(61, 13, 3, 1, 1, 1, 'Page', '2009-07-10 14:40:03', '2009-07-10 14:40:16', 'sub-page', 'sub-page 1', NULL, '<p></p>', 'sub-page 1', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8),
(62, 14, 1, 0, 1, 0, 'Page', '2009-07-10 14:40:19', '2009-07-10 14:40:19', 'neupage', 'NeuPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 8),
(63, 14, 2, 0, 1, 0, 'Page', '2009-07-10 14:40:19', '2009-07-10 14:40:26', 'sub-page-2', 'sub-page 2', NULL, '<p></p>', 'sub-page 2', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, 8),
(64, 14, 3, 1, 1, 1, 'Page', '2009-07-10 14:40:19', '2009-07-10 14:40:26', 'sub-page-2', 'sub-page 2', NULL, '<p></p>', 'sub-page 2', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8),
(65, 5, 2, 0, 1, 0, 'BlogEntry', '2009-01-17 17:19:59', '2009-07-10 14:43:07', 'silverstripe-blog-module-successfully-installed', 'SilverStripe blog module successfully installed', NULL, 'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].', 'SilverStripe blog module successfully installed', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 4),
(66, 5, 3, 1, 1, 1, 'BlogEntry', '2009-01-17 17:19:59', '2009-07-10 14:43:07', 'silverstripe-blog-module-successfully-installed', 'SilverStripe blog module successfully installed', NULL, 'Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog (such as the widgets displayed in the sidebar) in [url=admin]the CMS[/url].', 'SilverStripe blog module successfully installed', NULL, NULL, NULL, 0, 1, NULL, 1, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4),
(67, 6, 4, 0, 1, 0, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:33', 'page-not-found', 'Page not found', NULL, '<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(68, 6, 5, 1, 1, 1, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:33', 'page-not-found', 'Page not found', NULL, '<p>Entschuldigung, m&ouml;glicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p>\n<p>Bitte &uuml;berpr&uuml;fen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(69, 6, 6, 0, 1, 0, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:39', 'page-not-found', 'Page not found', NULL, '<p><span style="color: #000000; font-family: Times; font-size: medium; line-height: normal;">\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;">\n<p style="text-align: center;">Sorry, it seems you were trying to access a page that doesn''t exist.</p>\n<p style="text-align: center;">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</span></p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(70, 6, 7, 1, 1, 1, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:39', 'page-not-found', 'Page not found', NULL, '<p><span style="color: #000000; font-family: Times; font-size: medium; line-height: normal;">\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;">\n<p style="text-align: center;">Sorry, it seems you were trying to access a page that doesn''t exist.</p>\n<p style="text-align: center;">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</span></p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(71, 6, 8, 0, 1, 0, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:43', 'page-not-found', 'Page not found', NULL, '<p><span style="color: #000000; font-family: Times; font-size: medium; line-height: normal;">\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;">\n<p style="text-align: left;">Sorry, it seems you were trying to access a page that doesn''t exist.</p>\n<p style="text-align: left;">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</span></p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(72, 6, 9, 1, 1, 1, 'ErrorPage', '2009-01-17 17:19:59', '2009-07-10 14:43:43', 'page-not-found', 'Page not found', NULL, '<p><span style="color: #000000; font-family: Times; font-size: medium; line-height: normal;">\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 62.5%; background-image: initial; background-repeat: initial; background-attachment: initial; -webkit-background-clip: initial; -webkit-background-origin: initial; background-color: #ffffff; min-height: 200px; background-position: initial initial; margin: 8px;">\n<p style="text-align: left;">Sorry, it seems you were trying to access a page that doesn''t exist.</p>\n<p style="text-align: left;">Please check the spelling of the URL you were trying to access and try again.</p>\n</div>\n</span></p>', 'Page not found', NULL, NULL, NULL, 0, 0, NULL, 0, 6, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(73, 3, 7, 0, 1, 0, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 14:44:26', 'contact-us', 'Contact Us', NULL, '<p><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(74, 3, 8, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 14:44:26', 'contact-us', 'Contact Us', NULL, '<p><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(75, 3, 9, 0, 1, 0, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 14:44:30', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(76, 3, 10, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 14:44:30', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(77, 1, 14, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:44:53', 'home', 'Home', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="developers/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(78, 1, 15, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:44:53', 'home', 'Home', NULL, '<h3>Sie suchen nach interessanten Projekten?</h3>\n<p>Dann <a href="developers/">hinterlegen</a> Sie einfach Ihr Kompetenz-Profil bei uns</p>\n<h3>Sie suchen nach f&auml;higen Leuten?</h3>\n<p>W&auml;hlen Sie einfach die passende Kategorie und <a href="jobs/">platzieren Sie Ihre Stellenausschreibung</a>.</p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(79, 1, 16, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:46:50', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<blockquote>\n<p>Then&nbsp;<a href="developers/">post</a>&nbsp;your details here for others to find.</p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for skilled employees?</h3>\n<p style="font-family: Verdana, Lucida, Arial, sans-serif; color: #666666; line-height: 18px; font-size: 11px; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px;">Then choose the right category and put your&nbsp;<a href="jobs/">job description here</a>.</p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(80, 1, 17, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:46:50', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<blockquote>\n<p>Then&nbsp;<a href="developers/">post</a>&nbsp;your details here for others to find.</p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for skilled employees?</h3>\n<p style="font-family: Verdana, Lucida, Arial, sans-serif; color: #666666; line-height: 18px; font-size: 11px; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px;">Then choose the right category and put your&nbsp;<a href="jobs/">job description here</a>.</p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(81, 9, 6, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:48:21', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(82, 9, 7, 1, 1, 1, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:48:21', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(83, 10, 4, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:14', '2009-07-10 14:49:00', 'design', 'Design', NULL, '<p></p>', 'Design', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(84, 10, 5, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:14', '2009-07-10 14:49:00', 'design', 'Design', NULL, '<p></p>', 'Design', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(85, 9, 8, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:50:16', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(86, 9, 9, 1, 1, 1, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:50:16', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(87, 9, 10, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:52:13', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(88, 9, 11, 1, 1, 1, 'JobCategory', '2009-01-17 17:43:14', '2009-07-10 14:52:13', 'programming', 'Programming', NULL, '<p></p>', 'Programmierung', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(89, 1, 18, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:57:57', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post</span></a><span style="font-style: normal;">&nbsp;your details here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(90, 1, 19, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-07-10 14:57:57', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post</span></a><span style="font-style: normal;">&nbsp;your details here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(91, 3, 11, 0, 1, 0, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 15:06:07', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(92, 3, 12, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 15:06:07', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(93, 3, 13, 0, 1, 0, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 15:07:15', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(94, 3, 14, 1, 1, 1, 'UserDefinedForm', '2009-01-17 17:19:58', '2009-07-10 15:07:15', 'contact-us', 'Contact Us', NULL, '<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal;">You can fill this page with your own content or delete it and create your own pages.</span></p>', 'Contact Us', NULL, NULL, NULL, 1, 1, NULL, 0, 5, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(95, 8, 9, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:16:42', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(96, 8, 10, 1, 1, 1, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:16:42', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(97, 1, 20, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:16:42', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post</span></a><span style="font-style: normal;">&nbsp;your details here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(98, 8, 11, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:17:16', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(99, 8, 12, 1, 1, 1, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:17:16', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Entwickler', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(100, 1, 21, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:17:17', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post</span></a><span style="font-style: normal;">&nbsp;your details here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 1, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(101, 8, 13, 0, 1, 0, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:17:37', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Developers', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(102, 8, 14, 1, 1, 1, 'Page', '2009-01-17 17:26:13', '2009-07-14 22:17:37', 'developers', 'Developers', NULL, '<p>We''ll fill this page with content in Chapter 5, "Development" and Chapter 6, "CRM".</p>', 'Developers', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(103, 1, 22, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:17:37', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;">\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post</span></a><span style="font-style: normal;">&nbsp;your details here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<blockquote>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>\n</blockquote>\n</span></h3>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0),
(104, 9, 12, 0, 1, 0, 'JobCategory', '2009-01-17 17:43:14', '2009-07-14 22:18:03', 'programming', 'Programming', NULL, '<p></p>', 'Programming', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(105, 9, 13, 1, 1, 1, 'JobCategory', '2009-01-17 17:43:14', '2009-07-14 22:18:04', 'programming', 'Programming', NULL, '<p></p>', 'Programming', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(106, 11, 6, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:33', '2009-07-14 22:18:39', 'content-creation', 'Content Creation', NULL, '<p></p>', 'Content Creation', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(107, 11, 7, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:33', '2009-07-14 22:18:39', 'content-creation', 'Content Creation', NULL, '<p></p>', 'Content Creation', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(108, 12, 6, 0, 1, 0, 'JobCategory', '2009-01-17 17:47:48', '2009-07-14 22:18:49', 'other', 'Other', NULL, '<p></p>', 'Other', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 2),
(109, 12, 7, 1, 1, 1, 'JobCategory', '2009-01-17 17:47:48', '2009-07-14 22:18:49', 'other', 'Other', NULL, '<p></p>', 'Other', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2),
(110, 1, 23, 0, 1, 0, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:20:17', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;"> </span></h3>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post your details</span></a><span style="font-style: normal;"> here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 0),
(111, 1, 24, 1, 1, 1, 'Page', '2009-01-17 17:19:58', '2009-07-14 22:20:17', 'home', 'Home', NULL, '<h3><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; font-weight: normal;"> </span></h3>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;">Are you searching for interesting projects?</h3>\n<p><span style="font-style: normal;">Then&nbsp;</span><a href="developers/"><span style="font-style: normal;">post your details</span></a><span style="font-style: normal;"> here for others to find.</span></p>\n<h3 style="font-size: 18px; font-family: Verdana, Lucida, Arial, sans-serif; color: #222222; margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-weight: 300; clear: both;"><span style="font-family: Verdana, Lucida, sans-serif; font-style: normal;">Are you searching for skilled employees?</span></h3>\n<p><span style="font-style: normal;">Then choose the right category and put your&nbsp;</span><a href="jobs/"><span style="font-style: normal;">job description here</span></a><span style="font-style: normal;">.</span></p>', 'Home', NULL, NULL, NULL, 1, 1, NULL, 1, 1, NULL, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 0);

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
-- Table structure for table `SubmittedFileField`
--

DROP TABLE IF EXISTS `SubmittedFileField`;
CREATE TABLE IF NOT EXISTS `SubmittedFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SubmittedFileField`
--


-- --------------------------------------------------------

--
-- Table structure for table `SubmittedForm`
--

DROP TABLE IF EXISTS `SubmittedForm`;
CREATE TABLE IF NOT EXISTS `SubmittedForm` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SubmittedForm`
--


-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFormField`
--

DROP TABLE IF EXISTS `SubmittedFormField`;
CREATE TABLE IF NOT EXISTS `SubmittedFormField` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SubmittedFormField`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `TagCloudWidget`
--

INSERT INTO `TagCloudWidget` (`ID`, `Title`, `Limit`, `Sortby`) VALUES
(2, 'Tag Cloud', 0, 'alphabet');

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
-- Table structure for table `UserDefinedForm`
--

DROP TABLE IF EXISTS `UserDefinedForm`;
CREATE TABLE IF NOT EXISTS `UserDefinedForm` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `UserDefinedForm`
--

INSERT INTO `UserDefinedForm` (`ID`, `EmailTo`, `EmailOnSubmit`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`) VALUES
(3, NULL, 0, NULL, '<p></p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_EmailRecipient`
--

DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipient`;
CREATE TABLE IF NOT EXISTS `UserDefinedForm_EmailRecipient` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `UserDefinedForm_EmailRecipient`
--


-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_Live`
--

DROP TABLE IF EXISTS `UserDefinedForm_Live`;
CREATE TABLE IF NOT EXISTS `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `UserDefinedForm_Live`
--

INSERT INTO `UserDefinedForm_Live` (`ID`, `EmailTo`, `EmailOnSubmit`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`) VALUES
(3, NULL, 0, NULL, '<p></p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_versions`
--

DROP TABLE IF EXISTS `UserDefinedForm_versions`;
CREATE TABLE IF NOT EXISTS `UserDefinedForm_versions` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `UserDefinedForm_versions`
--

INSERT INTO `UserDefinedForm_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `EmailTo`, `EmailOnSubmit`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`) VALUES
(1, 3, 1, 0, 1, 0, NULL, 0, NULL, NULL, 0),
(2, 3, 2, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(3, 3, 3, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(4, 3, 4, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(5, 3, 5, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(6, 3, 6, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(7, 3, 7, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(8, 3, 8, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(9, 3, 9, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(10, 3, 10, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(11, 3, 11, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(12, 3, 12, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0),
(13, 3, 13, 0, 1, 0, NULL, 0, NULL, '<p></p>', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Widget`
--

INSERT INTO `Widget` (`ID`, `ClassName`, `Created`, `LastEdited`, `Sort`, `ParentID`) VALUES
(1, 'BlogManagementWidget', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 1, 1),
(2, 'TagCloudWidget', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 4, 1),
(3, 'ArchiveWidget', '2009-01-17 17:19:59', '2009-01-17 17:24:28', 7, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `WidgetArea`
--

INSERT INTO `WidgetArea` (`ID`, `ClassName`, `Created`, `LastEdited`) VALUES
(1, 'WidgetArea', '2009-01-17 17:19:59', '2009-01-17 17:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EditableCheckbox`
--

DROP TABLE IF EXISTS `_obsolete_EditableCheckbox`;
CREATE TABLE IF NOT EXISTS `_obsolete_EditableCheckbox` (
  `ID` int(11) NOT NULL auto_increment,
  `Checked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `_obsolete_EditableCheckbox`
--


-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EditableEmailField`
--

DROP TABLE IF EXISTS `_obsolete_EditableEmailField`;
CREATE TABLE IF NOT EXISTS `_obsolete_EditableEmailField` (
  `ID` int(11) NOT NULL auto_increment,
  `SendCopy` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `_obsolete_EditableEmailField`
--

INSERT INTO `_obsolete_EditableEmailField` (`ID`, `SendCopy`) VALUES
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EditableMemberListField`
--

DROP TABLE IF EXISTS `_obsolete_EditableMemberListField`;
CREATE TABLE IF NOT EXISTS `_obsolete_EditableMemberListField` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `_obsolete_EditableMemberListField`
--


-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_EditableTextField`
--

DROP TABLE IF EXISTS `_obsolete_EditableTextField`;
CREATE TABLE IF NOT EXISTS `_obsolete_EditableTextField` (
  `ID` int(11) NOT NULL auto_increment,
  `Size` int(11) NOT NULL default '0',
  `MinLength` int(11) NOT NULL default '0',
  `MaxLength` int(11) NOT NULL default '0',
  `Rows` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `_obsolete_EditableTextField`
--

INSERT INTO `_obsolete_EditableTextField` (`ID`, `Size`, `MinLength`, `MaxLength`, `Rows`) VALUES
(1, 32, 1, 32, 1),
(5, 32, 1, 32, 5);
