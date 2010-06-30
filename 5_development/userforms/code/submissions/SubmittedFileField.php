<?php
/**
 * A file uploaded on a UserDefinedForm field
 * @package cms
 */
class SubmittedFileField extends SubmittedFormField {
	
	static $has_one = array(
		"UploadedFile" => "File"
	);
	
	/**
	 * Return the Value of this Field
	 * 
	 * @return String
	 */
	function getValue() {
		return ($this->UploadedFile()) ? $this->UploadedFile()->Title : "";
	}
	
	/**
	 * Return the Link object for this field
	 * 
	 * @return String
	 */
	function getLink() {
		return ($this->UploadedFile()) ? $this->UploadedFile()->URL : "";
	}
	
}
?>