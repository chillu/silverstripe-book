<?php

global $project;
$project = 'mysite';

global $database;
$database = 'SS_mysite';

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

Security::setDefaultAdmin('admin', 'password');

SSViewer::set_theme('mysite');

DataObject::add_extension('SiteTree', 'Taggable');

?>