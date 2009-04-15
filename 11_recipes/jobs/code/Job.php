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
		'Author' => 'Member',
	);
	
	static $searchable_fields = array(
		'Title',
		'Description',
		'Location',
		'ExpiryDate',
		'JobCategory.Title'
	);
	
	static $field_labels = array(
		'Title' => 'Titel',
		'Description' => 'Beschreibung',
		'Location' => 'Ort',
		'ExpiryDate' => 'Enddatum',
		'Author' => 'Author',
		'JobCategory.Title' => 'Jobkategorie'
	);
	
	static $singular_name = 'Job';
	
	static $plural_name = 'Jobs';
	
	function onBeforeWrite() {
		if(!$this->ID) {
			// Alle Abonnenten benachrichtigen 
		   // wenn der Job zum ersten Mal gespeichert wird
			// (also die ID noch nicht gesetzt ist)
			$category = $this->JobCategory();
			$this->notifySubscribers(
				$category->Subscribers()
			);	
			
			// Autor speichern
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
				<p>Hallo {$member->FirstName}!</p>
				<p>
				 Ein neues Job-Posting ist verfügbar unter:
				 {$this->Link()}
				</p>
			";
			
			$email = new Email(
				Email::getAdminEmail(),
				$member->Email,
				'Benachrichtigung Jobangebot',
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