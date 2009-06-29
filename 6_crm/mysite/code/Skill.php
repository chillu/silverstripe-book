<?php
class Skill extends DataObject {
	
	static $singular_name = 'Skill';
	
	static $plural_name = 'Skills';
	
	static $db = array(
		'Title' => 'Varchar(255)', 
	);
	
	static $belongs_many_many = array(
		'Developers' => 'Developer', 
	);
	
	static $field_labels = array(
		'Title' => 'Title'
	);
	
	static $searchable_fields = array(
		'Title' => 'ExactMatchFilter'
	);
}
?>