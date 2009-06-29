<?php
class RegistrationReferenceStep extends MultiFormStep {

	protected static $is_final_step = true;
	
	function getFields() {
		$fields = singleton('Reference')->getFrontendFields();
		$fields->removeByName('DeveloperID');
		$fields->push(new LiteralField('UsageNote', 
			"<p>
				<small>These values are optional.</small>
			</p>"
		));
		return $fields;
	}
	
	function getValidator() {
		return new RequiredFields();
	}
}
?>