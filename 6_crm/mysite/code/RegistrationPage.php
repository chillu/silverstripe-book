<?php
class RegistrationPage extends Page {
	
	static $singular_name = 'Registration page';
	
	static $plural_name = 'Registration pages';
}

class RegistrationPage_Controller extends Page_Controller {
	function Form() {
		return new RegistrationMultiForm($this, 'Form');
	}
}
?>