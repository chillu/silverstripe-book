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
	
	static $singular_name = 'Job';
	
	static $plural_name = 'Jobs';
	
	function getCMSFields() {
		$fields = new FieldSet(
			new TextField('Title', 'Titel'),
			new TextareaField('Description', 'Beschreibung'),
			new TextField('Location', 'Ort'),
			new DateField('ExpiryDate', 'Enddatum'),
			new ReadonlyField('Author', 'Autor', $this->Author()->Title)
		);
		
		return $fields;
	}
	
	function onBeforeWrite() {
		if(!$this->ID) {
			// Alle Abonnenten benachrichtigen 
		   // wenn der Job zum ersten Mal gespeichert wird
			// (also die ID noch nicht gesetzt ist)
			$category = $this->JobCategory();
			$this->notifySubscribers($category->Subscribers());	
			
			// Autor speichern
			$currentMember = Member::currentMember();
			if($currentMember) $this->AuthorID = $currentMember->ID;
		}

		parent::onBeforeWrite();
	}
	
	function Link() {
		return $this->JobCategory()->Link() . '#Job' . $this->ID;
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
	
}
?>