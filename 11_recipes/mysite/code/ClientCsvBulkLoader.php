<?php
class ClientCsvBulkLoader extends CsvBulkLoader {
	
	public $columnMap = array(
		'CustomerNumber' => 'ClientNumber', 
		'Name' => '->importFirstAndLastName', 
		'DateOfBirth' => '->importBirthday', 
		'Category' => 'ClientCategory.Title', 
	);
	
	public $duplicateChecks = array(
		'ClientNumber' => 'ClientNumber'
	);
	
	public $relationCallbacks = array(
		'ClientCategory.Title' => array(
			'relationname' => 'ClientCategory',
			'callback' => 'getClientCategoryByTitle'
		)
	);
	
	static function importBirthday(&$obj, $val, $record) {
		if($val) {
			$obj->Birthday = date('Y-m-d',strtotime($val));
		}
	}
	
	static function importFirstAndLastName(&$obj, $val, $record) {
		$parts = explode(' ', $val);
		if(count($parts) != 2) return false;
		
		$obj->FirstName = $parts[0];
		$obj->LastName = $parts[1];
	}
	
	static function getClientCategoryByTitle(&$obj, $val, $record) {
		$SQL_val = Convert::raw2sql($val);
		return DataObject::get_one(
			'ClientCategory', "Title = '{$SQL_val}'"
		);
	}
}
?>