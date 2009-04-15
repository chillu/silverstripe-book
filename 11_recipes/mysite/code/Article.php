<?php
class Article extends DataObject {
	static $db = array(
		'Title' => 'Varchar',
		'Content' => 'HTMLText'
	);
}
?>