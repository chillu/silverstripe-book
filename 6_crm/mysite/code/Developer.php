<?php
class Developer extends Member {
	
	static $api_access = array(
		'view' => array(
			'FirstName',
			'Surname',
			'Region',
			'Introduction',
			'References',
		),
		'edit' => array(
			'FirstName',
			'Surname',
			'Region',
			'Introduction',
		)
	);
	
	static $db = array(
		'Region' => 'Varchar(200)',
		'Introduction' => 'Text',
	);
	
	static $has_many = array(
		'References' => 'Reference', 
	);
	
	static $belongs_many_many = array(
		'Subscriptions' => 'JobCategory'
	);
	
	static $many_many = array(
		'Skills' => 'Skill', 
	);
	
	static $searchable_fields = array(
		'FirstName',
		'Surname',
		'Introduction',
		'Skills.Title',
		'Region',
	);
	
	static $field_labels = array(
		'Introduction' => 'Kurzbeschreibung',
		'Region' => 'Region',
		'Skills.Title' => 'Fähigkeiten',
		'Skills' => 'Fähigkeiten',
		'References' => 'Referenzen',
	);
	
	static $default_sort = 'FirstName ASC';
	
	static $singular_name = 'Entwickler';
	
	static $plural_name = 'Entwickler';
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Groups');

		return $fields;
	}
	
	public function getFrontendFields() {
		$fields = $this->scaffoldFormFields(array(
				'restrictFields' => array(
					'FirstName',
					'Surname',
					'Email',
					'Introduction',
					'Region',
				),
				'fieldClasses' => array(
					'Email' => 'EmailField',
				)
			)
		);
		$tagField = new TagField('Skills', 'Fähigkeiten');
		$tagField->setTagTopicClass('Developer');
		$fields->push($tagField);
		return $fields;
	}
	
	public function getDefaultSearchContext() {
		$context = parent::getDefaultSearchContext();
		$context->removeFieldByName('Region');
		$regions = self::get_regions();
		if($regions) {
			$regionMap = array_combine($regions,$regions);
		} else {
			$regionMap = null;
		}
		$regionField = new DropdownField(
			'Region', 
			'Region', 
			$regionMap
		);
		$regionField->setHasEmptyDefault(true);
		$context->addField($regionField);
		
		return $context;
	}
	
	public static function get_regions() {
		$devs = DataObject::get('Developer');
		if(!$devs) return array();
		$regions = array_unique($devs->column('Region'));
		sort($regions);
		return $regions;
	}
	
	public function canView($member = null) {
		return true;
	}
	
	public function canCreate($member = null) {
		return true;
	}
	
	public function canEdit($member = null) {
		if(!$member) $member = Member::currentUser();
		return (
			Permission::checkMember($member, 'ADMIN')
			|| ($member && $member->ID == $this->ID)
		);
	}
	
	public function canDelete($member = null) {
		return $this->canEdit($member);
	}
	
	public function Link() {
		$profilePage = DataObject::get_one(
			'CollectionPage',
			'URLSegment = "entwickler"'
		);
		if(!$profilePage) return false;
		
		return $profilePage->Link() . "Developer/{$this->ID}/view";
	}
	
}
?>