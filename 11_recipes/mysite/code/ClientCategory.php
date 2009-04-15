<?php
class ClientCategory extends DataObject {
	
	static $db = array(
	   'Title' => 'Text', 
	);
	
	static $has_many = array(
	   'Clients' => 'Client'
	);
}
?>