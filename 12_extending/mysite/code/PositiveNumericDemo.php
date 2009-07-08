<?php
class PositiveNumericDemo extends Controller {
	
	function Link() {
		return 'PositiveNumericDemo';
	}
	
	function index() {
		return $this->renderWith('BlankPage');
	}
	
	function Form() {
		return new Form(
			$this,
			'Form',
			new FieldSet(
				new PositiveNumericField('Number')
			),
			new FieldSet(
				new FormAction('doSubmit', 'submit')
			),
			new RequiredFields('Number')
		);
	}
	
	function doSubmit($data, $form) {
		return "Valid positive number: " . $data['Number'];
	}
}