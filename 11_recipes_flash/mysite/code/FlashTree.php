<?php
class FlashTree extends Controller {

function xml() {
	$rootPages = DataObject::get(
		'Page', 
		'ParentID = 0 AND ShowInMenus = 1'
	);
	
	Controller::curr()->getResponse()->addHeader(
		"Content-type", 
		"text/xml"
	);
	$xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";

	$xml .= "<node>\n";
	foreach($rootPages as $page) {
		$xml .= $this->getNodeXML($page);
	}
	$xml .= "</node>\n";
	
	return $xml;
}
	
protected function getNodeXML($page) {
	$xml = sprintf(
		"<node id=\"%s\" label=\"%s\" isBranch=\"%s\" classname=\"%s\">\n",
		$page->ID,
		Convert::raw2att($page->Title),
		($page->Children() && $page->Children()->Count()) ? 'false' : 'true',
		$page->ClassName
	);
	if($page->Children()) {
	  foreach($page->Children() as $page) {
		  $xml .= $this->getNodeXML($page);
		}
	}
	$xml .= "</node>\n";
	
	return $xml;
}
}
?>