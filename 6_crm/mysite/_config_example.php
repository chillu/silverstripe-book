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

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.com/themes/
SSViewer::set_theme('mysite');

// Default administrator account for the CMS
Security::setDefaultAdmin('admin', 'password');

// Enable page translation
Translatable::enable();
Translatable::set_default_lang('de');
i18n::set_locale('de_DE');

// Add rules for CommunityAdmin interface
Director::addRules(100, array(
	'admin/community' => 'CommunityAdmin',
));
?>