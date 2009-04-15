<?php
class RegistrationMultiForm extends MultiForm {

	protected static $start_step = 'RegistrationDetailsStep';
	
	public function finish($data, $form) {
		parent::finish($data, $form);
		
		$detailsStep = $this->getSavedStepByClass(
			'RegistrationDetailsStep'
		);

		$developer = new Developer();
		$detailsStep->saveInto($developer);
		$developer->write();
		$developer->logIn();
		
		$referenceStep = $this->getSavedStepByClass(
			'RegistrationReferenceStep'
		);
		if($referenceStep->loadData()) {
			$reference = new Reference();
			$referenceStep->saveInto($reference);
			$reference->DeveloperID = $developer->ID;
			$reference->write();
		}

		return $this->controller->customise(array(
			'Form' => false,
			'Content' => '
				Danke für Ihre Registrierung! 
				Sie sind nun eingeloggt.
			'
		))->renderWith('Page');
	}
}
?>