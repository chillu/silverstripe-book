<?php
class ClientCsvBulkLoader extends CsvBulkLoader {
	
	public $columnMap = array(
		'KundenNummer' => 'ClientNumber', 
		'Name' => '->importFirstAndLastName', 
		'Geburtsdatum' => '->importBirthday', 
		'Kategorie' => 'ClientCategory.Title', 
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
		$matched = preg_match(
			'/^([0-9]+)\.([0-9]+)\.([0-9]+)$/', 
			$val, 
			$parts
		);
		if($matched) {
			$obj->Birthday = "{$parts[3]}-{$parts[2]}-{$parts[1]}";
		} else {
			return false;
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