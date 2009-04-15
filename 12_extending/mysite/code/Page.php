<?php
class Page extends SiteTree {
	
	static $db = array(
		'LegacyURL' => 'Text',
	);
	
	function onBeforeWrite() {
		if($this->LegacyURL) {
			$SQL_legacyURL = Convert::raw2sql($this->LegacyURL);
			$existingPages = DataObject::get_one(
				'Page',
				"URLSegment = '{$SQL_legacyURL}'"
			);
			if($existingPages) {
				$this->LegacyURL = null;
			}
		}
		
		parent::onBeforeWrite();
	}
		
	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldsToTab(
			'Root.Content.Main',
			new TextField('LegacyURL', 'Alte URL')
		);
		return $fields;
	}
	
}

class Page_Controller extends ContentController {
	function init() {
		parent::init();
		
		Requirements::themedCSS("layout");
		Requirements::themedCSS("typography");
		Requirements::themedCSS("form");
	}
	
	function SearchForm() {
		$fields = new FieldSet(
			new TextField("Search", "Suche")
		);
		$actions = new FieldSet(
			new FormAction('results', 'Suche')
		);
		return new SearchForm(
			$this, 
			"SearchForm", 
			$fields, 
			$actions
		);
	}

	function results($data, $form){
		$form->setPageLength(1);
		$results = $form->getResults(null, $data);
		$searchQueryTitle = $form->getSearchQuery($data);
		$templateData = array(
			'Results' => $results,
			'SearchQueryTitle' => $searchQueryTitle,
			'Title' => 'Suchergebnisse'
		);
		return $this->customise($templateData)->renderWith(
			array('Page_results', 'Page')
		);
	}
}
?>