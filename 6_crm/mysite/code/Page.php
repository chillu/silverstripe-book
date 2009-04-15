<?php

class Page extends SiteTree {
	static $db = array(
	);
	
	static $defaults = array(
	);
	
	static $api_access = true;

	static $has_one = array(
		"SideBar" => "WidgetArea",
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Content.Widgets", 
			new WidgetAreaEditor("SideBar")
		);
		return $fields;
	}
}

class Page_Controller extends ContentController {
	function init() {
		parent::init();
		
		Requirements::themedCSS("layout");
		Requirements::themedCSS("typography");
		Requirements::themedCSS("form");
	}

}
?>
