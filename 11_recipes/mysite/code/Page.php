<?php
class Page extends SiteTree {
	
	static $db = array(
		'ContextNavMaxPages' => 'Int',
		'ContextNavTags' => 'Text', 
		'ContextNavKeywords' => 'Text', 
		'LegacyURL' => 'Text',
	);
	
	static $has_one = array(
		'BannerImage' => 'Page_BannerImage', 
	);
	
	static $has_many = array(
		'Referrers' => 'Referrer'
	);
	
	static $defaults = array(
		'ContextNavMaxPages' => '10',
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
	
	function getBannerImageRecursive() {
		$page = $this;
		$banner = $this->BannerImage();
		while(!$banner->ID && $page->ParentID != 0) {
			$page = $page->Parent();
			$banner = $page->BannerImage();
		}
		return $banner;
	}
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$tags = singleton('TagCloudWidget')->TagsCollection();
		if($tags && $tags->Count()) {
			$tags->sort('Tag');
			$tagsMap = $tags->toDropDownMap('Tag', 'Tag');
		} else {
			$tagsMap = false;
		}
		$fields->addFieldsToTab(
			'Root.Content.Context Navigation',
			array(
				new NumericField(
					'ContextNavMaxPages', 
					'Max. Seiten (minimum: 5)'
				),
				new TextField(
					'ContextNavKeywords', 
					'Stichworte (getrennt durch Komma)'
				),
				new CheckboxSetField(
					'ContextNavTags', 
					'Blog Tags (falls vorhanden)',
					$tagsMap
				)
			)
		);
		$fields->addFieldsToTab(
			'Root.Content.Banner',
			new ImageField('BannerImage', 'Banner')
		);
		$fields->addFieldsToTab(
			'Root.Content.Main',
			new TextField('LegacyURL', 'Alte URL')
		);
		$fields->addFieldToTab(
			'Root.Content.Referrers',
			$this->getReferrerTableListField()
		);
		return $fields;
	}
	
	function getReferrerTableListField() {
		$tf = new TableListField(
			'Referrers',
			'Referrer',
			array(
				'URL' => 'URL',
				'IsExternal' => 'Extern?',
				'ReferrerCount' => 'Anzahl'
			)
		);
		$tf->setShowPagination(true);
		$tf->setFieldFormatting(array(
			'URL' => '<a href=\"$URL\">$URL</a>'
		));
		$tf->setFieldCasting(array(
			'IsExternal' => 'Boolean->Nice'
		));
		$tf->setPermissions(array(
			'show','export'
		));
		$query = $this->getComponentsQuery(
			'Referrers',
			null, // filter
			'ReferrerCount DESC' // sort
		);
		$query->groupby('`Referrer`.URL');
		$query->select[] = 'COUNT(*) AS ReferrerCount';
		$tf->setCustomQuery($query);
		return $tf;
	}
	
	function getContextNav() {
		if($this->ID > 0) {
			$pages = new DataObjectSet();
			$pages->push($this->Parent());
			$pages->merge($this->getPagesBySibling());
			$pages->merge($this->getPagesByKeyword());
			$pages->merge($this->getPagesByBlogTags());
			$pages->merge($this->getPagesByReferer());
			$pages->removeDuplicates();
			$currentPage = $pages->find('ID', $this->ID);
			if($currentPage) $pages->remove($currentPage);
			return $pages;
		} else {
			return false;
		}
	}
	
	function getContextNavMaxPages() {
		return $this->getFieldRecursive('ContextNavMaxPages');
	}
	
	function getContextNavPageLimit() {
		return floor($this->ContextNavMaxPages / 5);
	}
	
	function getContextNavTags() {
		$tags = $this->getFieldRecursive('ContextNavTags');
		if(!$tags && is_a($this, 'BlogEntry')) $tags = $this->Tags;
		return $tags;
	}
	
	function getContextNavKeywords() {
		return $this->getFieldRecursive('ContextNavKeywords');
	}
	
	protected function getFieldRecursive($fieldName) {
		$page = $this;
		while(!$page->getField($fieldName) && $page->ParentID != 0) {
			$page = $this->Parent();
		}
		
		return $page->getField($fieldName);
	}
	
	protected function getPagesByKeyword() {
		$pages = new DataObjectSet();
		$pageKeywords =
		 	explode(',',$this->ContextNavKeywords);
		if(!$pageKeywords) {
			$pages = DataObject::get(
				'Page',
				$this->filterForKeywords(
					$pageKeywords,
					array('Content','Title')
				),
				null, // sort
				null, // join
				$this->ContextNavPageLimit // limit
			);
		}
		return $pages;
	}

	protected function getPagesBySibling() {
		$pages = new DataObjectSet();
		$prevPage = DataObject::get_one(
			'Page',
			"ParentID = {$this->ParentID} 
			 AND Sort < {$this->Sort}",
			true,
			'Sort DESC'
		);
		if($prevPage) $pages->push($prevPage);
		$nextPage = DataObject::get_one(
			'Page',
			"ParentID = {$this->ParentID} 
			 AND Sort > {$this->Sort}",
			true,
			'Sort ASC'
		);
		if($nextPage) $pages->push($nextPage);
		return $pages;
	}
	
	protected function getPagesByBlogTags() {
		$pages = new DataObjectSet();
		$tags = explode(',', $this->ContextNavTags);

		if($tags) {
			$pages = DataObject::get(
				'BlogEntry',
				$this->filterForKeywords(
					$tags,
					array('Tags')
				),
				null, // sort
				null, // join
				$this->ContextNavPageLimit // limit
			);
		} 
		return $pages;
	}
	
	protected function getPagesByReferer() {
		$pages = new DataObjectSet();
		// DEBUG referrer simulation
		$_SERVER['HTTP_REFERER'] = 'http://www.google.com/search?q=beverages&hl=en';	
		$keywords = array();
		if(
			preg_match(
				'/^http:\/\/w?w?w?\.?google.*/i',
				$_SERVER['HTTP_REFERER']
			)
		) {
			$queryStr = preg_replace(
				'/^.*q=([^&]+)&?.*$/i',
				'$1',
				$_SERVER['HTTP_REFERER']
			);
			// scrub away nasty quote marks
			$queryStr = preg_replace('/\'|"/','',$queryStr);
			$keywords = preg_split ("/[\s,\+\.]+/",$queryStr);
		}
		if($keywords) {
			$pages = DataObject::get(
				'Page',
				$this->filterForKeywords(
					$keywords,
					array('Content','Title')
				),
				null, // sort
				null, // join
				$this->ContextNavPageLimit // limit
			);
		}
		return $pages;
	}
	
	protected function filterForKeywords($keywords, $fields) {
		$SQL_filterArr = '';
		foreach($keywords as $keyword) {
			$SQL_keyword = Convert::raw2sql($keyword);
			foreach($fields as $field) {
				$SQL_filterArr[] = 
					"`{$field}` LIKE '%{$SQL_keyword}%'";
			}
		}
		return implode(' OR ', $SQL_filterArr);
	}
	
}

class Page_Controller extends ContentController {
	function init() {
		parent::init();
		
		Requirements::themedCSS("layout");
		Requirements::themedCSS("typography");
		Requirements::themedCSS("form");

		$request = $this->getRequest();
		if($request) {
			$referrerUrl = $request->getHeader('Referer');
			if($referrerUrl) {
				Referrer::log($referrerUrl, $this);
			}
		}
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

class Page_BannerImage extends Image {
	
	function generateFullWidth($gd) {
		$gd->setQuality(100);
		return $gd->croppedResize(760,120);
	}
	
	function generateRightColumn($gd) {
		$gd->setQuality(100);
		return $gd->croppedResize(538,80);
	}
}

?>