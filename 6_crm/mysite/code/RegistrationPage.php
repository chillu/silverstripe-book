<?php
class RegistrationPage extends Page {
	
	static $singular_name = 'Registrierungsseite';
	
	static $plural_name = 'Registrierungsseiten';
}

class RegistrationPage_Controller extends Page_Controller {
	function Form() {
		return new RegistrationMultiForm($this, 'Form');
	}
}
?>