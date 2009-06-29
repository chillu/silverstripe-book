<?php
class RegistrationDetailsStep extends MultiFormStep {

	protected static $next_steps = 'RegistrationReferenceStep';
	
	function getFields() {
		$fields = singleton('Developer')->getFrontendFields();
		$fields->push(new ConfirmedPasswordField('Password', 
			'Password'
		));
		$fields->push(new TagField('Skills', 
			'Skills <small>(separated by spaces)</small>', 
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
				"This email address is already registered, 
				please choose a different email address",
				"bad"
			);

  			return false;
		}
		
		return true;
	}
}
?>