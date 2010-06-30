<?php

class TrackBackPing extends DataObject {
	static $db = array(
		'Title' => 'Varchar',
		'Excerpt' => 'Text',
		'Url' => 'Varchar',
		'BlogName' => 'Varchar'
	);
	
	static $has_one = array(
		'Page' => 'Page'
	);
}

?>
