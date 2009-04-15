<?php
class Skill extends DataObject {
	
	static $singular_name = 'Fähigkeit';
	
	static $plural_name = 'Fähigkeiten';
	
	static $db = array(
		'Title' => 'Varchar(255)', 
	);
	
	static $belongs_many_many = array(
		'Developers' => 'Developer', 
	);
	
	static $field_labels = array(
		'Title' => 'Titel'
	);
	
	static $searchable_fields = array(
		'Title' => 'ExactMatchFilter'
	);
}
?>