<?php
class JobCategoryHolder extends Page {
	
	static $db = array();
	
	static $allowed_children = array(
		'JobCategory'
	);
	
	static $singular_name = 'Jobkategorien Übersicht';
	
}

class JobCategoryHolder_Controller extends Page_Controller {
	
}
?>