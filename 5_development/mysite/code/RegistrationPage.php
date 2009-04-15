<?php
class RegistrationPage extends Page {
	
	static $singular_name = 'Registrierungsseite';
	
	static $plural_name = 'Registrierungsseiten';
	
	static $db = array(
		'ThankYouText' => 'Text'
	);
	
	static $defaults = array(
		'ThankYouText' => 'Vielen Dank für Ihre Registrierung!'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$thankYouField = new TextField('ThankYouText', 'Nachricht nach erfolgreichem Versand');
		$fields->addFieldToTab('Root.Content.Main', $thankYouField);
		
		return $fields;
	}
}

class RegistrationPage_Controller extends Page_Controller {
	
	function Form() {
		$fields = new FieldSet(
			new TextField('FirstName', 'Vorname'),
			new TextField('Surname', 'Nachname'),
			new EmailField('Email', 'Email Addresse'),
			new ConfirmedPasswordField('Password', 'Passwort')
		);
		
		$actions = new FieldSet(
			new FormAction('doRegister', 'Registrieren')
		);
		
		$validator = new RequiredFields(
			'FirstName',
			'SurName',
			'Email',
			'Password'
		);
		
		$form = new Form(
			$this,
			'Form',
			$fields,
			$actions,
			$validator
		);
		
		return $form;
	}
	
	function doRegister($data, $form) {
		$SQL_data = Convert::raw2sql($data);
		$existingMember = DataObject::get_one('Member', "Email = '" . $SQL_data['Email'] . "'");
		if($existingMember) {
			$form->sessionMessage(
				"Diese Email-Addresse ist schon registriert - bitte verwenden Sie eine andere Addresse",
				"bad"
			);

  			Director::redirectBack();
  			return false;
		}
		
		$member = new Member();
		$form->saveInto($member);
		$member->write();
		
		$html = $this->customise(array(
			'Form' => ' ',
			'Content' => $this->dataRecord->ThankYouText
		))->renderWith('Page');
		
		return $html;
	}
	
}
?>