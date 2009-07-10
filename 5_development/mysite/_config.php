<?php
// $project should be the same as the folder for this file (Default: 'mysite')
global $project;
$project = 'mysite';

global $database;
$database = "three_5";


// Use _ss_environment.php file for configuration
// see http://doc.silverstripe.com/doku.php?id=environment-management
require_once("conf/ConfigureFromEnv.php");

// Example _ss_environment.php
/*
<?php
define('SS_ENVIRONMENT_TYPE', 'dev');
define('SS_ENVIRONMENT_STYLE', 'single');
define('SS_ENVIRONMENT_ID', 'mysite');

define('SS_DATABASE_SERVER', 'localhost');
define('SS_DATABASE_USERNAME', 'admin');
define('SS_DATABASE_PASSWORD', 'password');

define('SS_DATABASE_CHOOSE_NAME', 'ss_mysite')
?>
*/

// Sites running on the following servers will be
// run in development mode. See http://doc.silverstripe.com/doku.php?id=devmode
// for a description of what dev mode does.
Director::set_dev_servers(array(
	'localhost',
	'127.0.0.1',
));

// Default administrator account for the CMS
Security::setDefaultAdmin('admin', 'password');

// Theme should be located in /themes/<themename> (Default folder: '/themes/mysite')
SSViewer::set_theme('mysite');

// Add rules for CommunityAdmin interface
Director::addRules(100, array(
	'admin/community' => 'CommunityAdmin',
));
?>