<?php

class Page extends SiteTree {
	static $db = array(
	);
	
	static $defaults = array(
	);
	
	static $api_access = array(
		'view' => array('Title', 'Content')
	);

	
}

class Page_Controller extends ContentController {

	function init() {
		parent::init();
		
		if($this->URLSegment != 'Security') {
			Requirements::javascript(
			  project() . '/javascript/swfobject/swfobject.js'
			);
			Requirements::customScript("
				swfobject.embedSWF(
					'" . project() . "/flash/index.swf', 
					'Content', 
					'550', 
					'400', 
					'9.0.0'
				);
			");
		}
		
	}

}

?>
