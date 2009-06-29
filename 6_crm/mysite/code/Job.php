<?php
class Job extends DataObject {
	
	static $db = array(
		'Title' => 'Text',
		'Description' => 'Text',
		'Location' => 'Text',
		'ExpiryDate' => 'Date',
	);
	
	static $has_one = array(
		'JobCategory' => 'JobCategory',
		'Author' => 'Developer',
	);
	
	static $searchable_fields = array(
		'Title',
		'Description',
		'Location',
		'ExpiryDate',
		'JobCategory.Title'
	);
	
	static $field_labels = array(
		'Title' => 'Title',
		'Description' => 'Description',
		'Location' => 'Location',
		'ExpiryDate' => 'Expiry Date',
		'Author' => 'Author',
		'JobCategory.Title' => 'Job category'
	);
	
	static $singular_name = 'Job';
	
	static $plural_name = 'Jobs';
	
	function onBeforeWrite() {
		if(!$this->ID) {
			$category = $this->JobCategory();
			$this->notifySubscribers(
				$category->Subscribers()
			);	
			
			$currentMember = Member::currentMember();
			if($currentMember) {
				$this->AuthorID = $currentMember->ID;
			}
		}

		parent::onBeforeWrite();
	}
	
	function getFrontendFields() {
		$fields = parent::getFrontendFields();
		$fields->removeByName('AuthorID');
		return $fields;
	}
	
	function Link() {
		return $this->JobCategory()->Link() . 
			'#Job' . $this->ID;
	}
	
	protected function notifySubscribers($members) {
		if($members) foreach($members as $member) {
			$body = "
				<p>Hi {$member->FirstName}!</p>
				<p>
				 A new job posting is available at the following URL:
				 {$this->Link()}
				</p>
			";
			
			$email = new Email(
				Email::getAdminEmail(),
				$member->Email,
				'Job Posting Notification',
				$body
			);
			$email->send();	
		}
		
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
			|| ($member && $member->ID == $this->AuthorID)
		);
	}
	
	public function canDelete($member = null) {
		return $this->canEdit($member);
	}
	
}
?>