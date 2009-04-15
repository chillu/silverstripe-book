<?php
class RegistrationReferenceStep extends MultiFormStep {

	protected static $is_final_step = true;
	
	function getFields() {
		$fields = singleton('Reference')->getFrontendFields();
		$fields->removeByName('DeveloperID');
		$fields->push(new LiteralField('UsageNote', 
			"<p>
				<small>Diese Angaben sind optional.</small>
			</p>"
		));
		return $fields;
	}
	
	function getValidator() {
		return new RequiredFields();
	}
}
?>