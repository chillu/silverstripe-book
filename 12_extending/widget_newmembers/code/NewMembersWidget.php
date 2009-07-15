<?php
class NewMembersWidget extends Widget {
	static $db = array(
		"Limit" => "Int"
	);
	
 
	static $defaults = array(
		"Limit" => 3
	);
	
 
	static $title = "Neue Benutzer";
	static $cmsTitle = "Neue Benutzer";
	static $description = "Zeigt registrierte Benutzer";
	
	function Members() {
		return DataObject::get(
			'Member',
			null,
			'Created DESC',
			null,
			$this->Limit
		);
	}
 
	function getCMSFields() {
		return new FieldSet(
			new NumericField("Limit", "Maximale Anzahl")
		);
	}
}
?>