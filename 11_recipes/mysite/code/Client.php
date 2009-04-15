<?php
class Client extends DataObject {
	
	static $db = array(
	   'ClientNumber' => 'Int',
	   'FirstName' => 'Text', 
	   'LastName' => 'Text', 
	   'Birthday' => 'Date', 
	);
	
	static $has_one = array(
	   'ClientCategory' => 'ClientCategory'
	);
	
}
?>