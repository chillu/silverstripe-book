<?php
class RegistrationDetailsStep extends MultiFormStep {

	protected static $next_steps = 'RegistrationReferenceStep';
	
	function getFields() {
		$fields = singleton('Developer')->getFrontendFields();
		$fields->push(new ConfirmedPasswordField('Password', 
			'Passwort'
		));
		$fields->push(new TagField('Skills', 
			'Fähigkeiten <small>(getrennt durch Leerzeichen)</small>', 
			null, 
			'Developer'
		));

		return $fields;
	}
	
	function getValidator() {
		return new Member_Validator(
			'FirstName',
			'SurName',
			'Email',
			'Password'
		);
	}
	
	function validateStep($data, $form) {
		$SQL_data = Convert::raw2sql($data);
		$existingMember = DataObject::get_one(
			'Member', 
			"Email = '" . $SQL_data['Email'] . "'"
		);
		if($existingMember) {
			$form->sessionMessage(
				"Diese Email-Addresse ist schon registriert - 
				bitte verwenden Sie eine andere Addresse",
				"bad"
			);

  			return false;
		}
		
		return true;
	}
}
?>