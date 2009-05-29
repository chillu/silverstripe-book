-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2009 at 02:07 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `SS_ssbookwiley_11_recipes_flash`
--

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox`
--

DROP TABLE IF EXISTS `EditableCheckbox`;
CREATE TABLE IF NOT EXISTS `EditableCheckbox` (
  `ID` int(11) NOT NULL auto_increment,
  `Checked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableCheckbox`
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
-- Table structure for table `EditableEmailField`
--

DROP TABLE IF EXISTS `EditableEmailField`;
CREATE TABLE IF NOT EXISTS `EditableEmailField` (
  `ID` int(11) NOT NULL auto_increment,
  `SendCopy` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableEmailField`
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableFormField`
--


-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField`
--

DROP TABLE IF EXISTS `EditableMemberListField`;
CREATE TABLE IF NOT EXISTS `EditableMemberListField` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableMemberListField`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableRadioOption`
--


-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField`
--

DROP TABLE IF EXISTS `EditableTextField`;
CREATE TABLE IF NOT EXISTS `EditableTextField` (
  `ID` int(11) NOT NULL auto_increment,
  `Size` int(11) NOT NULL default '0',
  `MinLength` int(11) NOT NULL default '0',
  `MaxLength` int(11) NOT NULL default '0',
  `Rows` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `EditableTextField`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ErrorCode`) VALUES
(1, 4, 1, 0, 0, 0, 404);

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
-- Table structure for table `Folder_CanEdit`
--

DROP TABLE IF EXISTS `Folder_CanEdit`;
CREATE TABLE IF NOT EXISTS `Folder_CanEdit` (
  `ID` int(11) NOT NULL auto_increment,
  `FolderID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Folder_CanEdit`
--


-- --------------------------------------------------------

--
-- Table structure for table `Folder_CanUse`
--

DROP TABLE IF EXISTS `Folder_CanUse`;
CREATE TABLE IF NOT EXISTS `Folder_CanUse` (
  `ID` int(11) NOT NULL auto_increment,
  `FolderID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Folder_CanUse`
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
  `CanCMS` tinyint(1) unsigned NOT NULL default '0',
  `CanCMSAdmin` tinyint(1) unsigned NOT NULL default '0',
  `Locked` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  `IPRestrictions` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `CanCMS`, `CanCMSAdmin`, `Locked`, `Sort`, `ParentID`, `IPRestrictions`) VALUES
(1, 'Group', '2008-06-29 20:27:13', '2008-06-29 20:27:13', 'Administrators', NULL, 'administrators', 0, 0, 0, 0, 0, NULL);

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
  `Locale` varchar(6) character set utf8 default NULL,
  `PasswordExpiry` date default NULL,
  `LockedOutUntil` datetime default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `AutoLoginHash` (`AutoLoginHash`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `BlacklistedEmail`, `PasswordEncryption`, `Salt`, `Locale`, `PasswordExpiry`, `LockedOutUntil`) VALUES
(1, 'Member', '2008-06-29 20:27:13', '2009-05-29 14:06:22', 'Admin', 'Admin', 'admin', '50pz6p06hssg4k0w0k8wc48ksc4woww', NULL, 3, '2009-05-29 14:07:14', 0, NULL, NULL, 0, 'sha1', 'avmfhjip1wooc8c8o048k4kksgsws8wc88csoo0', 'en_US', NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `MemberPassword`
--


-- --------------------------------------------------------

--
-- Table structure for table `Member_UnsubscribeRecord`
--

DROP TABLE IF EXISTS `Member_UnsubscribeRecord`;
CREATE TABLE IF NOT EXISTS `Member_UnsubscribeRecord` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Member_UnsubscribeRecord`
--


-- --------------------------------------------------------

--
-- Table structure for table `Newsletter`
--

DROP TABLE IF EXISTS `Newsletter`;
CREATE TABLE IF NOT EXISTS `Newsletter` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Newsletter`
--


-- --------------------------------------------------------

--
-- Table structure for table `NewsletterType`
--

DROP TABLE IF EXISTS `NewsletterType`;
CREATE TABLE IF NOT EXISTS `NewsletterType` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `NewsletterType`
--


-- --------------------------------------------------------

--
-- Table structure for table `Newsletter_Recipient`
--

DROP TABLE IF EXISTS `Newsletter_Recipient`;
CREATE TABLE IF NOT EXISTS `Newsletter_Recipient` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter_Recipient') character set utf8 default 'Newsletter_Recipient',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Newsletter_Recipient`
--


-- --------------------------------------------------------

--
-- Table structure for table `Newsletter_SentRecipient`
--

DROP TABLE IF EXISTS `Newsletter_SentRecipient`;
CREATE TABLE IF NOT EXISTS `Newsletter_SentRecipient` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Newsletter_SentRecipient`
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
  `ParentID` int(11) NOT NULL default '0',
  `CommenterURL` varchar(255) character set utf8 default NULL,
  `AuthorID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PageComment`
--


-- --------------------------------------------------------

--
-- Table structure for table `PageView`
--

DROP TABLE IF EXISTS `PageView`;
CREATE TABLE IF NOT EXISTS `PageView` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `PageView`
--

INSERT INTO `PageView` (`ID`, `ClassName`, `Created`, `LastEdited`, `IP`, `Browser`, `BrowserVersion`, `FromExternal`, `Referrer`, `SearchEngine`, `Keywords`, `OS`, `PageID`, `UserID`) VALUES
(1, 'PageView', '2008-06-29 14:59:29', '2008-06-29 14:59:29', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(2, 'PageView', '2008-06-29 16:38:59', '2008-06-29 16:38:59', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(3, 'PageView', '2008-06-29 16:39:12', '2008-06-29 16:39:12', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(4, 'PageView', '2008-06-29 16:46:46', '2008-06-29 16:46:46', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(5, 'PageView', '2008-06-29 16:46:49', '2008-06-29 16:46:49', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(6, 'PageView', '2008-06-29 16:46:59', '2008-06-29 16:46:59', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(7, 'PageView', '2008-06-29 16:47:00', '2008-06-29 16:47:00', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(8, 'PageView', '2008-06-29 16:47:25', '2008-06-29 16:47:25', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(9, 'PageView', '2008-06-29 16:47:27', '2008-06-29 16:47:27', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(10, 'PageView', '2008-06-29 16:47:35', '2008-06-29 16:47:35', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(11, 'PageView', '2008-06-29 16:47:37', '2008-06-29 16:47:37', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(12, 'PageView', '2008-06-29 16:48:47', '2008-06-29 16:48:47', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(13, 'PageView', '2008-06-29 16:48:48', '2008-06-29 16:48:48', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(14, 'PageView', '2008-06-29 16:48:49', '2008-06-29 16:48:49', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(15, 'PageView', '2008-06-29 16:48:58', '2008-06-29 16:48:58', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(16, 'PageView', '2008-06-29 16:49:23', '2008-06-29 16:49:23', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(17, 'PageView', '2008-06-29 16:49:24', '2008-06-29 16:49:24', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(18, 'PageView', '2008-06-29 16:49:32', '2008-06-29 16:49:32', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(19, 'PageView', '2008-06-29 16:49:43', '2008-06-29 16:49:43', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(20, 'PageView', '2008-06-29 16:49:50', '2008-06-29 16:49:50', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(21, 'PageView', '2008-06-29 16:50:14', '2008-06-29 16:50:14', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(22, 'PageView', '2008-06-29 16:50:15', '2008-06-29 16:50:15', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(23, 'PageView', '2008-06-29 16:50:34', '2008-06-29 16:50:34', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(24, 'PageView', '2008-06-29 17:04:43', '2008-06-29 17:04:43', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 0, -1),
(25, 'PageView', '2008-06-29 17:05:23', '2008-06-29 17:05:23', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(26, 'PageView', '2008-06-29 17:05:25', '2008-06-29 17:05:25', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(27, 'PageView', '2008-06-29 17:05:30', '2008-06-29 17:05:30', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(28, 'PageView', '2008-06-29 17:06:16', '2008-06-29 17:06:16', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(29, 'PageView', '2008-06-29 17:06:23', '2008-06-29 17:06:23', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(30, 'PageView', '2008-06-29 17:06:26', '2008-06-29 17:06:26', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(31, 'PageView', '2008-06-29 17:06:47', '2008-06-29 17:06:47', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(32, 'PageView', '2008-06-29 17:07:33', '2008-06-29 17:07:33', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(33, 'PageView', '2008-06-29 17:45:13', '2008-06-29 17:45:13', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(34, 'PageView', '2008-06-29 17:46:02', '2008-06-29 17:46:02', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(35, 'PageView', '2008-06-29 17:46:10', '2008-06-29 17:46:10', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(36, 'PageView', '2008-06-29 17:46:30', '2008-06-29 17:46:30', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(37, 'PageView', '2008-06-29 17:47:01', '2008-06-29 17:47:01', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(38, 'PageView', '2008-06-29 17:48:04', '2008-06-29 17:48:04', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(39, 'PageView', '2008-06-29 17:49:05', '2008-06-29 17:49:05', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(40, 'PageView', '2008-06-29 17:49:45', '2008-06-29 17:49:45', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(41, 'PageView', '2008-06-29 17:51:44', '2008-06-29 17:51:44', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(42, 'PageView', '2008-06-29 17:51:48', '2008-06-29 17:51:48', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(43, 'PageView', '2008-06-29 17:51:55', '2008-06-29 17:51:55', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 2, -1),
(44, 'PageView', '2008-06-29 17:52:00', '2008-06-29 17:52:00', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 2, -1),
(45, 'PageView', '2008-06-29 17:52:04', '2008-06-29 17:52:04', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 2, -1),
(46, 'PageView', '2008-06-29 17:55:07', '2008-06-29 17:55:07', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 2, -1),
(47, 'PageView', '2008-06-29 17:55:18', '2008-06-29 17:55:18', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(48, 'PageView', '2008-06-29 17:55:22', '2008-06-29 17:55:22', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(49, 'PageView', '2008-06-29 17:58:53', '2008-06-29 17:58:53', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(50, 'PageView', '2008-06-29 20:10:17', '2008-06-29 20:10:17', '192.168.1.27', 'IE', 6.00, 0, NULL, 0, NULL, 'WinXP', 1, -1),
(51, 'PageView', '2008-06-29 20:11:05', '2008-06-29 20:11:05', '192.168.1.27', 'IE', 6.00, 0, 'http://192.168.1.27/', 0, NULL, 'WinXP', 1, -1),
(52, 'PageView', '2008-06-29 20:13:15', '2008-06-29 20:13:15', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 0, -1),
(53, 'PageView', '2008-06-29 20:14:09', '2008-06-29 20:14:09', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 0, -1),
(54, 'PageView', '2008-06-29 20:14:17', '2008-06-29 20:14:17', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 0, -1),
(55, 'PageView', '2008-06-29 20:27:04', '2008-06-29 20:27:04', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 0, -1),
(56, 'PageView', '2008-06-29 20:27:06', '2008-06-29 20:27:06', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(57, 'PageView', '2008-06-29 20:28:53', '2008-06-29 20:28:53', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(58, 'PageView', '2008-06-29 20:30:36', '2008-06-29 20:30:36', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(59, 'PageView', '2008-06-29 20:32:05', '2008-06-29 20:32:05', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(60, 'PageView', '2008-06-29 20:36:57', '2008-06-29 20:36:57', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1),
(61, 'PageView', '2008-06-29 20:37:39', '2008-06-29 20:37:39', '::1', 'Mozilla', 1.90, 0, NULL, 0, NULL, 'MacOSX', 1, -1);

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
(1, 'Permission', '2008-06-29 20:27:13', '2008-06-29 20:27:13', 'ADMIN', 0, 1, 1);

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
  `ClassName` enum('SiteTree','Page','GhostPage','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `Priority`, `_obsolete_Viewers`, `_obsolete_Editors`, `_obsolete_ViewersGroup`, `_obsolete_EditorsGroup`, `ToDo`, `ParentID`, `Version`, `CanViewType`, `CanEditType`) VALUES
(1, 'Page', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 1, 'Anyone', 'LoggedInUsers'),
(2, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:07:12', 'about-us', 'About Us', NULL, '<h1>Integer euismod</h1>\n<p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>.</p>\n<p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n<ul>\n<li>PHP5</li>\n<li>MySQL 4.2+&nbsp;</li>\n<li>Apache</li>\n</ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 11, 'Anyone', 'LoggedInUsers'),
(3, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:06:58', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 5, 'Anyone', 'LoggedInUsers'),
(4, 'ErrorPage', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 5, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 1, 'Anyone', 'LoggedInUsers'),
(5, 'Page', '2008-06-29 20:27:25', '2009-05-29 14:06:41', 'the-team', 'The Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 9, 'Anyone', 'LoggedInUsers'),
(6, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:30:15', 'brian', 'Brian ', NULL, '<p></p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 5, 'Anyone', 'LoggedInUsers'),
(7, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:30:08', 'sam', 'Sam ', NULL, '<p></p>', 'Sam Minnee', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 5, 'Anyone', 'LoggedInUsers'),
(8, 'Page', '2008-06-29 20:29:57', '2008-06-29 20:30:02', 'sigurd', 'Sigurd', NULL, '<p></p>', 'Sigurd', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 3, 'Anyone', 'LoggedInUsers'),
(9, 'Page', '2008-06-29 20:30:22', '2008-06-29 20:30:27', 'tim', 'Tim', NULL, '<p></p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 3, 'Anyone', 'LoggedInUsers');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

INSERT INTO `SiteTree_LinkTracking` (`ID`, `SiteTreeID`, `ChildID`, `FieldName`) VALUES
(4, 2, 5, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `Priority`, `_obsolete_Viewers`, `_obsolete_Editors`, `_obsolete_ViewersGroup`, `_obsolete_EditorsGroup`, `ToDo`, `ParentID`, `Version`, `CanViewType`, `CanEditType`) VALUES
(1, 'Page', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 1, 'Anyone', 'LoggedInUsers'),
(2, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:07:12', 'about-us', 'About Us', NULL, '<h1>Integer euismod</h1>\n<p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>.</p>\n<p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n<ul>\n<li>PHP5</li>\n<li>MySQL 4.2+&nbsp;</li>\n<li>Apache</li>\n</ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 11, 'Anyone', 'LoggedInUsers'),
(3, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:06:58', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 5, 'Anyone', 'LoggedInUsers'),
(5, 'Page', '2008-06-29 20:27:25', '2009-05-29 14:06:41', 'the-team', 'The Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 9, 'Anyone', 'LoggedInUsers'),
(6, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:30:16', 'brian', 'Brian ', NULL, '<p></p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 5, 'Anyone', 'LoggedInUsers'),
(7, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:30:08', 'sam', 'Sam ', NULL, '<p></p>', 'Sam Minnee', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 5, 'Anyone', 'LoggedInUsers'),
(8, 'Page', '2008-06-29 20:29:57', '2008-06-29 20:30:02', 'sigurd', 'Sigurd', NULL, '<p></p>', 'Sigurd', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 3, 'Anyone', 'LoggedInUsers'),
(9, 'Page', '2008-06-29 20:30:22', '2008-06-29 20:30:27', 'tim', 'Tim', NULL, '<p></p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 3, 'Anyone', 'LoggedInUsers');

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
  `ClassName` enum('SiteTree','Page','GhostPage','ErrorPage','RedirectorPage','VirtualPage') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `LegacyURL`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `Priority`, `_obsolete_Viewers`, `_obsolete_Editors`, `_obsolete_ViewersGroup`, `_obsolete_EditorsGroup`, `ToDo`, `ParentID`, `CanViewType`, `CanEditType`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.com">developer documentation</a>, or begin <a href="http://doc.silverstripe.com/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(2, 2, 1, 1, 0, 0, 'Page', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(3, 3, 1, 1, 0, 0, 'Page', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 0, 0, 'Published', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(4, 4, 1, 0, 0, 0, 'ErrorPage', '2008-06-29 14:59:14', '2008-06-29 14:59:14', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(5, 5, 1, 0, 1, 0, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:27:25', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(6, 5, 2, 0, 1, 0, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:27:42', 'das-team', 'Das Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (new)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(7, 5, 3, 1, 1, 1, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:27:42', 'das-team', 'Das Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(8, 5, 4, 0, 1, 0, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:27:46', 'das-team', 'Das Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(9, 5, 5, 0, 1, 0, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:27:46', 'das-team', 'Das Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(10, 3, 2, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2008-06-29 20:28:03', 'kontakt', 'Kontakt', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(11, 3, 3, 1, 1, 1, 'Page', '2008-06-29 14:59:14', '2008-06-29 20:28:03', 'kontakt', 'Kontakt', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(12, 5, 6, 0, 1, 0, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:29:21', 'das-team', 'Das Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(13, 5, 7, 1, 1, 1, 'Page', '2008-06-29 20:27:25', '2008-06-29 20:29:21', 'das-team', 'Das Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(14, 6, 1, 0, 1, 0, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:29:27', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(15, 6, 2, 0, 1, 0, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:29:44', 'brian-calhoun', 'Brian Calhoun', NULL, '<p></p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (new)', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(16, 6, 3, 1, 1, 1, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:29:44', 'brian-calhoun', 'Brian Calhoun', NULL, '<p></p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(17, 7, 1, 0, 1, 0, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:29:48', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(18, 7, 2, 0, 1, 0, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:29:54', 'sam-minnee', 'Sam Minnee', NULL, '<p></p>', 'Sam Minnee', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (new)', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(19, 7, 3, 1, 1, 1, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:29:54', 'sam-minnee', 'Sam Minnee', NULL, '<p></p>', 'Sam Minnee', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(20, 8, 1, 0, 1, 0, 'Page', '2008-06-29 20:29:57', '2008-06-29 20:29:57', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(21, 8, 2, 0, 1, 0, 'Page', '2008-06-29 20:29:57', '2008-06-29 20:30:02', 'sigurd', 'Sigurd', NULL, '<p></p>', 'Sigurd', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (new)', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(22, 8, 3, 1, 1, 1, 'Page', '2008-06-29 20:29:57', '2008-06-29 20:30:02', 'sigurd', 'Sigurd', NULL, '<p></p>', 'Sigurd', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(23, 7, 4, 0, 1, 0, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:30:08', 'sam', 'Sam ', NULL, '<p></p>', 'Sam Minnee', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(24, 7, 5, 1, 1, 1, 'Page', '2008-06-29 20:29:48', '2008-06-29 20:30:08', 'sam', 'Sam ', NULL, '<p></p>', 'Sam Minnee', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(25, 6, 4, 0, 1, 0, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:30:15', 'brian', 'Brian ', NULL, '<p></p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Saved (update)', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(26, 6, 5, 1, 1, 1, 'Page', '2008-06-29 20:29:27', '2008-06-29 20:30:15', 'brian', 'Brian ', NULL, '<p></p>', 'Brian', NULL, NULL, NULL, 1, 1, NULL, 0, 1, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(27, 9, 1, 0, 1, 0, 'Page', '2008-06-29 20:30:22', '2008-06-29 20:30:22', 'new-page', 'New Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'New page', NULL, NULL, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(28, 9, 2, 0, 1, 0, 'Page', '2008-06-29 20:30:22', '2008-06-29 20:30:27', 'tim', 'Tim', NULL, '<p></p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (new)', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(29, 9, 3, 1, 1, 1, 'Page', '2008-06-29 20:30:22', '2008-06-29 20:30:27', 'tim', 'Tim', NULL, '<p></p>', 'Tim', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 0.9, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 5, 'Anyone', 'LoggedInUsers'),
(30, 2, 2, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2008-06-29 20:32:02', 'ber-uns', 'Ãœber uns', NULL, '<h1>Integer euismod</h1><p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. Phasellus imperdiet. </p><p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><ul><li>PHP5</li><li>MySQL 4.2+&nbsp;</li><li>Apache</li></ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(31, 2, 3, 1, 1, 1, 'Page', '2008-06-29 14:59:14', '2008-06-29 20:32:02', 'ber-uns', 'Ãœber uns', NULL, '<h1>Integer euismod</h1><p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. Phasellus imperdiet. </p><p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><ul><li>PHP5</li><li>MySQL 4.2+&nbsp;</li><li>Apache</li></ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(32, 2, 4, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2008-06-29 20:36:51', 'ber-uns', 'Ãœber uns', NULL, '<h1>Integer euismod</h1><p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="das-team/">Phasellus imperdiet</a>. </p><p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><ul><li>PHP5</li><li>MySQL 4.2+&nbsp;</li><li>Apache</li></ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(33, 2, 5, 1, 1, 1, 'Page', '2008-06-29 14:59:14', '2008-06-29 20:36:51', 'ber-uns', 'Ãœber uns', NULL, '<h1>Integer euismod</h1><p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="das-team/">Phasellus imperdiet</a>. </p><p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><ul><li>PHP5</li><li>MySQL 4.2+&nbsp;</li><li>Apache</li></ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(34, 2, 6, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:06:41', 'ber-uns', 'Ãœber uns', NULL, '<h1>Integer euismod</h1><p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>. </p><p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><ul><li>PHP5</li><li>MySQL 4.2+&nbsp;</li><li>Apache</li></ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 1, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(35, 5, 8, 0, 1, 0, 'Page', '2008-06-29 20:27:25', '2009-05-29 14:06:41', 'the-team', 'The Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(36, 5, 9, 1, 1, 1, 'Page', '2008-06-29 20:27:25', '2009-05-29 14:06:41', 'the-team', 'The Team', NULL, '<p></p>', 'Das Team', NULL, NULL, NULL, 1, 1, NULL, 0, 3, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(37, 2, 7, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:06:41', 'ber-uns', 'Ãœber uns', NULL, '<h1>Integer euismod</h1><p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>. </p><p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><ul><li>PHP5</li><li>MySQL 4.2+&nbsp;</li><li>Apache</li></ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 1, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(38, 3, 4, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:06:58', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(39, 3, 5, 1, 1, 1, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:06:58', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 4, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(40, 2, 8, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:07:07', 'ber-uns', 'About Us', 'Ãœber uns', '<h1>Integer euismod</h1>\n<p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>.</p>\n<p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n<ul>\n<li>PHP5</li>\n<li>MySQL 4.2+&nbsp;</li>\n<li>Apache</li>\n</ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(41, 2, 9, 1, 1, 1, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:07:07', 'ber-uns', 'About Us', 'Ãœber uns', '<h1>Integer euismod</h1>\n<p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>.</p>\n<p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n<ul>\n<li>PHP5</li>\n<li>MySQL 4.2+&nbsp;</li>\n<li>Apache</li>\n</ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(42, 2, 10, 0, 1, 0, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:07:12', 'about-us', 'About Us', NULL, '<h1>Integer euismod</h1>\n<p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>.</p>\n<p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n<ul>\n<li>PHP5</li>\n<li>MySQL 4.2+&nbsp;</li>\n<li>Apache</li>\n</ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Saved (update)', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers'),
(43, 2, 11, 1, 1, 1, 'Page', '2008-06-29 14:59:14', '2009-05-29 14:07:12', 'about-us', 'About Us', NULL, '<h1>Integer euismod</h1>\n<p>Donec gravida <strong>posuere arcu</strong>. Nulla facilisi. <a href="the-team/">Phasellus imperdiet</a>.</p>\n<p>Vestibulum at metus. Integer euismod. Nullam placerat rhoncus sapien. Ut euismod. Praesent libero. Morbi pellentesque libero sit amet ante. Maecenas tellus. Maecenas erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n<ul>\n<li>PHP5</li>\n<li>MySQL 4.2+&nbsp;</li>\n<li>Apache</li>\n</ul>', 'Ãœber uns', NULL, NULL, NULL, 1, 1, NULL, 0, 2, NULL, 0, 0, 'Published', NULL, 1, 'Anyone', 'LoggedInUsers', 0, 0, NULL, 0, 'Anyone', 'LoggedInUsers');

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
-- Table structure for table `SubscribeForm`
--

DROP TABLE IF EXISTS `SubscribeForm`;
CREATE TABLE IF NOT EXISTS `SubscribeForm` (
  `ID` int(11) NOT NULL auto_increment,
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SubscribeForm`
--


-- --------------------------------------------------------

--
-- Table structure for table `SubscribeForm_Live`
--

DROP TABLE IF EXISTS `SubscribeForm_Live`;
CREATE TABLE IF NOT EXISTS `SubscribeForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SubscribeForm_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `SubscribeForm_versions`
--

DROP TABLE IF EXISTS `SubscribeForm_versions`;
CREATE TABLE IF NOT EXISTS `SubscribeForm_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SubscribeForm_versions`
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `UserDefinedForm`
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
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `UserDefinedForm_Live`
--


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
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `UserDefinedForm_versions`
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
  `ClassName` enum('Widget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
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

