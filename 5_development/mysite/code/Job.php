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
			new TextField('Title'),
			new TextareaField('Description'),
			new TextField('Location'),
			new DateField('ExpiryDate', 'Expiry Date'),
			new ReadonlyField('Author', 'Autor', $this->Author()->Title)
		);
		
		return $fields;
	}
	
	function onBeforeWrite() {
		if(!$this->ID) {
			$category = $this->JobCategory();
			$this->notifySubscribers($category->Subscribers());	
			
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
	
}
?>