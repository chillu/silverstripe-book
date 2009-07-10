<?php

global $project;
$project = 'mysite';

global $database;
$database = "three_4";

require_once("conf/ConfigureFromEnv.php");

Security::setDefaultAdmin('admin', 'password');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.com/themes/
SSViewer::set_theme('blackcandy');

?>