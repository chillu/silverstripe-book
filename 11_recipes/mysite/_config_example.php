<?php
global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => "MySQLDatabase",
	"server" => "localhost", 
	"username" => "root", 
	"password" => "", 
	"database" => "SS_mysite",
);

// Sites running on the following servers will be
// run in development mode. See
// http://doc.silverstripe.com/doku.php?id=devmode
// for a description of what dev mode does.
Director::set_dev_servers(array(
	'localhost',
	'127.0.0.1',
));

// Default administrator account for the CMS
Security::setDefaultAdmin('admin', 'password');

// Theme should be located in /themes/<themename> (Default folder: '/themes/mysite')
SSViewer::set_theme('mysite');

// Recipe: Taggable
DataObject::add_extension('SiteTree', 'Taggable');

// Recipe: Redirection of legacy URLs
Director::addRules(1, array(
	'$URLSegment//$Action/$ID/$OtherID' => 'CustomModelAsController',
));

// Recipe: Branding the CMS
LeftAndMain::setApplicationName(
	'My Kiwi CMS',
	'My Kiwi CMS',
	'http://mykiwicms.com'
);
LeftAndMain::setLogo(
	'mysite/images/kiwicmslogo.gif',
	'width: 62px; height: 32px;'
);
LeftAndMain::set_loading_image(
	'mysite/images/kiwicmslogo_loading.png'
);
LeftAndMain::require_css('mysite/css/kiwicms.css');

BlogEntry::$allow_wysiwyg_editing = true;
?>