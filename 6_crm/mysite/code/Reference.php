<?php
class Reference extends DataObject implements PermissionProvider {

	static $api_access = array(
		'view' => array(
			'URL',
			'Title',
			'Developer'
		),
		'edit' => array(
			'URL',
			'Title',
		)
	);

	static $db = array(
		'URL' => 'Text', 
		'Title' => 'Varchar(255)', 
	);
	
	static $has_one = array(
		'ScreenshotImage' => 'Reference_ScreenshotImage',
		'Developer' => 'Developer', 
	);
	
	static $field_labels = array(
		'URL' => 'URL', 
		'Title' => 'Titel',
		'ScreenshotImage' => 'Screenshot',
		'DeveloperID' => 'Entwickler',
	);
	
	static $searchable_fields = array(
		'URL',
		'Title',
		'DeveloperID'
	);
	
	function onBeforeWrite() {
		if(!$this->ID) {
			$this->DeveloperID = Member::currentUserID();
		}
		parent::onBeforeWrite();
	}
	
	function getFrontendFields() {
		$fields = $this->scaffoldFormFields(array(
			'restrictFields' => array(
				'URL',
				'Title',
				'ScreenshotImage'
			)
		));
		return $fields;
	}
	
	public function canView($member = null) {
		return true;
	}
	
	public function canCreate($member = null) {
		return true;
	}
	
	public function canEdit($member = null) {
		if(!$member) $member = Member::currentUser();
		if(!$member) return false;

		return (
			Permission::checkMember(
				$member, 
				'EDIT_ALL_REFERENCES'
			)
			|| $member->ID == $this->DeveloperID
		);
	}
	
	public function canDelete($member = null) {
		return $this->canEdit($member);
	}
	
	public function providePermissions() {
		return array(
			'EDIT_ALL_REFERENCES' => 'Alle Referenzen editieren'
		);
	}
	
}

class Reference_ScreenshotImage extends Image {
	
	function generateWebsiteThumbnail($gd) {
		return $gd->resizeByWidth(400);
	}
	
}
?>