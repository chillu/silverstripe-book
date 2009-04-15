<?php
class Referrer extends DataObject {
	static $db = array(
		'URL' => 'Text',
		'IsExternal' => 'Boolean'
	);
	
	static $has_one = array(
		'Page' => 'Page'
	);
	
	static function log($referrerUrl, $page) {
		$isExternal = (
			strpos($referrerUrl,Director::baseURL()) === FALSE
		);
		
		$referrer = new Referrer();
		$referrer->URL = $referrerUrl;
		$referrer->PageID = $page->ID;
		$referrer->IsExternal = $isExternal;
		$referrer->write();
	}
}
?>