<?php

/**
 * Base class for multiple option fields such as dropdowns and 
 * radio sets. Implemented as a class but you would not create 
 * one of these directly, rather you would instantiate a subclass
 * such as EditableDropdownField
 *
 * @todo Maybe it would make more sense to have dropdownfield and
 * 			checkboxset just transformations on this class
 *
 * @package userforms
 */

class EditableMultipleOptionField extends EditableFormField {
	
	static $db = array();
	
	static $has_one = array();
	
	static $has_many = array(
		"Options" => "EditableOption"
	);
	
	/**
	 * Deletes all the options attached to this field before
	 * deleting the field. Keeps stray options from floating 
	 * around
	 *
	 * @return void
	 */
	public function delete() {
  		$options = $this->Options();
		if($options) {
			foreach($options as $option) {
				$option->delete();
			}
		}
		parent::delete();   
	}
	
	/**
	 * Duplicate a pages content. We need to make sure all
	 * the fields attached to that page go with it
	 * 
	 * @return DataObject a Clone of this node
	 */
	public function duplicate() {
		$clonedNode = parent::duplicate();
		
		if($this->Options()) {
			foreach($this->Options() as $field) {
				$newField = $field->duplicate();
				$newField->ParentID = $clonedNode->ID;
				$newField->write();
			}
		}
		return $clonedNode;
	}
	
	/**
	 * On before saving this object we need to go through and keep
	 * an eye on all our option fields that are related to this
	 * field in the form 
	 * 
	 * @param Array Data
	 */
	public function populateFromPostData($data) {
		parent::populateFromPostData($data);
		
		// get the current options
		$fieldSet = $this->Options();

		// go over all the current options and check if ID and Title still exists
		foreach($fieldSet as $option) {
			if(isset($data[$option->ID]) && isset($data[$option->ID]['Title']) && $data[$option->ID]['Title'] != "field-node-deleted") {
				$option->populateFromPostData($data[$option->ID]);
			}
			else {
				$option->delete();
			}
		}
	}
	
	/**
	 * Return whether or not this field has addable options
	 * such as a dropdown field or radio set
	 *
	 * @return bool
	 */
	public function getHasAddableOptions() {
		return true;
	}

	/**
	 * Return the form field for this object in the front 
	 * end form view
	 *
	 * @return FormField
	 */
	public function getFormField() {
		return user_error('Please implement getFormField() on '. $this->class, E_USER_ERROR);
	}
}
?>