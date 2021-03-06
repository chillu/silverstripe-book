<?php

class XMLDataFormatter extends DataFormatter {
	/**
	 * @todo pass this from the API to the data formatter somehow
	 */
	static $api_base = "api/v1/";
	
	protected $outputContentType = 'text/xml';
	
	public function supportedExtensions() {
		return array(
			'xml'
		);
	}
	
	public function supportedMimeTypes() {
		return array(
			'text/xml',
			'application/xml',
		);
	}

	/**
	 * Generate an XML representation of the given {@link DataObject}.
	 * 
	 * @param DataObject $obj
	 * @param $includeHeader Include <?xml ...?> header (Default: true)
	 * @return String XML
	 */
	public function convertDataObject(DataObjectInterface $obj, $fields = null) {
		Controller::curr()->getResponse()->addHeader("Content-Type", "text/xml");
		return "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" . $this->convertDataObjectWithoutHeader($obj, $fields);
	}
		
		
	public function convertDataObjectWithoutHeader(DataObject $obj, $fields = null, $relations = null) {
		$className = $obj->class;
		$id = $obj->ID;
		$objHref = Director::absoluteURL(self::$api_base . "$obj->class/$obj->ID");
	
		$xml = "<$className href=\"$objHref.xml\">\n";
		foreach($this->getFieldsForObj($obj) as $fieldName => $fieldType) {
			// Field filtering
			if($fields && !in_array($fieldName, $fields)) continue;
			
			$fieldValue = $obj->$fieldName;
			if(!mb_check_encoding($fieldValue,'utf-8')) $fieldValue = "(data is badly encoded)";
			
			if(is_object($fieldValue) && is_subclass_of($fieldValue, 'Object') && $fieldValue->hasMethod('toXML')) {
				$xml .= $fieldValue->toXML();
			} else {
				$xml .= "<$fieldName>" . Convert::raw2xml($fieldValue) . "</$fieldName>\n";
			}
		}
	
		if($this->relationDepth > 0) {
			foreach($obj->has_one() as $relName => $relClass) {
				// Field filtering
				if($fields && !in_array($relName, $fields)) continue;
				if($this->customRelations && !in_array($relName, $this->customRelations)) continue;

				$fieldName = $relName . 'ID';
				if($obj->$fieldName) {
					$href = Director::absoluteURL(self::$api_base . "$relClass/" . $obj->$fieldName);
				} else {
					$href = Director::absoluteURL(self::$api_base . "$className/$id/$relName");
				}
				$xml .= "<$relName linktype=\"has_one\" href=\"$href.xml\" id=\"" . $obj->$fieldName . "\"></$relName>\n";
			}

			foreach($obj->has_many() as $relName => $relClass) {
				// Field filtering
				if($fields && !in_array($relName, $fields)) continue;
				if($this->customRelations && !in_array($relName, $this->customRelations)) continue;

				$xml .= "<$relName linktype=\"has_many\" href=\"$objHref/$relName.xml\">\n";
				$items = $obj->$relName();
				foreach($items as $item) {
					//$href = Director::absoluteURL(self::$api_base . "$className/$id/$relName/$item->ID");
					$href = Director::absoluteURL(self::$api_base . "$relClass/$item->ID");
					$xml .= "<$relClass href=\"$href.xml\" id=\"{$item->ID}\"></$relClass>\n";
				}
				$xml .= "</$relName>\n";
			}
	
			foreach($obj->many_many() as $relName => $relClass) {
				// Field filtering
				if($fields && !in_array($relName, $fields)) continue;
				if($this->customRelations && !in_array($relName, $this->customRelations)) continue;

				$xml .= "<$relName linktype=\"many_many\" href=\"$objHref/$relName.xml\">\n";
				$items = $obj->$relName();
				foreach($items as $item) {
					$href = Director::absoluteURL(self::$api_base . "$relClass/$item->ID");
					$xml .= "<$relClass href=\"$href.xml\" id=\"{$item->ID}\"></$relClass>\n";
				}
				$xml .= "</$relName>\n";
			}
		}

		$xml .= "</$className>";

		return $xml;
	}

	/**
	 * Generate an XML representation of the given {@link DataObjectSet}.
	 * 
	 * @param DataObjectSet $set
	 * @return String XML
	 */
	public function convertDataObjectSet(DataObjectSet $set, $fields = null) {
		Controller::curr()->getResponse()->addHeader("Content-Type", "text/xml");
		$className = $set->class;
	
		$xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
		$xml .= (is_numeric($this->totalSize)) ? "<$className totalSize=\"{$this->totalSize}\">\n" : "<$className>\n";
		foreach($set as $item) {
			if($item->canView()) $xml .= $this->convertDataObjectWithoutHeader($item, $fields);
		}
		$xml .= "</$className>";
	
		return $xml;
	}
	
	public function convertStringToArray($strData) {
		return Convert::xml2array($strData);
	}
}