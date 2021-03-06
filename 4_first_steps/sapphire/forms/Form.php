<?php
/**
 * Base class for all forms.
 * The form class is an extensible base for all forms on a sapphire application.  It can be used
 * either by extending it, and creating processor methods on the subclass, or by creating instances
 * of form whose actions are handled by the parent controller.
 *
 * In either case, if you want to get a form to do anything, it must be inextricably tied to a
 * controller.  The constructor is passed a controller and a method on that controller.  This method
 * should return the form object, and it shouldn't require any arguments.  Parameters, if necessary,
 * can be passed using the URL or get variables.  These restrictions are in place so that we can
 * recreate the form object upon form submission, without the use of a session, which would be too
 * resource-intensive.
 * 
 * You will need to create at least one method for processing the submission (through {@link FormAction}).
 * This method will be passed two parameters: the raw request data, and the form object.
 * Usually you want to save data into a {@link DataObject} by using {@link saveInto()}.
 * If you want to process the submitted data in any way, please use {@link getData()} rather than
 * the raw request data.
 * 
 * Validation
 * Each form needs some form of {@link Validator} to trigger the {@link FormField->validate()} methods for each field.
 * You can't disable validator for security reasons, because crucial behaviour like extension checks for file uploads depend on it.
 * The default validator is an instance of {@link RequiredFields}.
 * If you want to enforce serverside-validation to be ignored for a specific {@link FormField},
 * you need to subclass it.
 *
 * @package forms
 * @subpackage core
 */
class Form extends RequestHandler {
	
	/**
	 * @var boolean $includeFormTag Accessed by Form.ss; modified by {@link formHtmlContent()}.
	 * A performance enhancement over the generate-the-form-tag-and-then-remove-it code that was there previously
	 */
	public $IncludeFormTag = true;
	
	protected $fields;
	
	protected $actions;
	
	protected $controller;
	
	protected $name;

	protected $validator;
	
	protected $formMethod = "post";
	
	protected static $current_action;
	
	/**
	 * @var Dataobject $record Populated by {@link loadDataFrom()} or {@link loadNonBlankDataFrom()}.
	 */
	protected $record;

	/**
	 * Keeps track of whether this form has a default action or not.
	 * Set to false by $this->disableDefaultAction();
	 */
	protected $hasDefaultAction = true;

	/**
	 * Target attribute of form-tag.
	 * Useful to open a new window upon
	 * form submission.
	 *
	 * @var string
	 */
	protected $target;
	
	/**
	 * Legend value, to be inserted into the 
	 * <legend> element before the <fieldset>
	 * in Form.ss template.
	 *
	 * @var string
	 */
	protected $legend;
	
	protected $buttonClickedFunc;
	
	protected $message;
	
	protected $messageType;
	
	protected $security = true;
	
	/**
	 * HACK This is a temporary hack to allow multiple calls to includeJavascriptValidation on
	 * the validator (if one is present).
	 *
	 * @var boolean
	 */
	public $jsValidationIncluded = false;

	/**
	 * Create a new form, with the given fields an action buttons.
	 * 
	 * @param Controller $controller The parent controller, necessary to create the appropriate form action tag.
	 * @param String $name The method on the controller that will return this form object.
	 * @param FieldSet $fields All of the fields in the form - a {@link FieldSet} of {@link FormField} objects.
	 * @param FieldSet $actions All of the action buttons in the form - a {@link FieldSet} of {@link FormAction} objects
	 * @param Validator $validator Override the default validator instance (Default: {@link RequiredFields})
	 */
	function __construct($controller, $name, FieldSet $fields, FieldSet $actions, $validator = null) {
		parent::__construct();

		foreach($fields as $field) $field->setForm($this);
		foreach($actions as $action) $actions->setForm($this);

		$this->fields = $fields;
		$this->actions = $actions;
		$this->controller = $controller;
		$this->name = $name;
		
		if(!$this->controller) user_error("$this->class form created without a controller", E_USER_ERROR);

		// Form validation
		$this->validator = ($validator) ? $validator : new RequiredFields();
		$this->validator->setForm($this);

		// Form error controls
		$this->setupFormErrors();
		
		$this->security = self::$default_security;
	}
	
	static $url_handlers = array(
		'field/$FieldName!' => 'handleField',
		'$Action!' => 'handleAction',
		'POST ' => 'httpSubmission',
		'GET ' => 'httpSubmission',
	);
	
	/**
	 * Set up current form errors in session to
	 * the current form if appropriate.
	 */
	function setupFormErrors() {
		$errorInfo = Session::get("FormInfo.{$this->FormName()}");

		if(isset($errorInfo['errors']) && is_array($errorInfo['errors'])) {
			foreach($errorInfo['errors'] as $error) {
				$field = $this->fields->dataFieldByName($error['fieldName']);

				if(!$field) {
					$errorInfo['message'] = $error['message'];
					$errorInfo['type'] = $error['messageType'];
				} else {
					$field->setError($error['message'], $error['messageType']);
				}
			}

			// load data in from previous submission upon error
			if(isset($errorInfo['data'])) $this->loadDataFrom($errorInfo['data']);
		}

		if(isset($errorInfo['message']) && isset($errorInfo['type'])) {
			$this->setMessage($errorInfo['message'], $errorInfo['type']);
		}
	}
	
	/**
	 * Handle a form submission.  GET and POST requests behave identically.
	 * Populates the form with {@link loadDataFrom()}, calls {@link validate()},
	 * and only triggers the requested form action/method
	 * if the form is valid.
	 */
	function httpSubmission($request) {
		$vars = $request->requestVars();
		if(isset($funcName)) {
			Form::set_current_action($funcName);
		}
		
		// Populate the form
		$this->loadDataFrom($vars, true);
		
		// Validate the form
		if(!$this->validate()) {
			if(Director::is_ajax()) {
				return FormResponse::respond();
			} else {
				Director::redirectBack();
				return;
			}
		}

		// Protection against CSRF attacks
		if($this->securityTokenEnabled()) {
			$securityID = Session::get('SecurityID');

			if(!$securityID || !isset($vars['SecurityID']) || $securityID != $vars['SecurityID']) {
				$this->httpError(400, "SecurityID doesn't match, possible CRSF attack.");
			}
		}
		
		// Determine the action button clicked
		$funcName = null;
		foreach($vars as $paramName => $paramVal) {
			if(substr($paramName,0,7) == 'action_') {
				// Break off querystring arguments included in the action
				if(strpos($paramName,'?') !== false) {
					list($paramName, $paramVars) = explode('?', $paramName, 2);
					$newRequestParams = array();
					parse_str($paramVars, $newRequestParams);
					$vars = array_merge((array)$vars, (array)$newRequestParams);
				}
				
				// Cleanup action_, _x and _y from image fields
				$funcName = preg_replace(array('/^action_/','/_x$|_y$/'),'',$paramName);
				break;
			}
		}
		
		// If the action wasnt' set, choose the default on the form.
		if(!isset($funcName) && $defaultAction = $this->defaultAction()){
			$funcName = $defaultAction->actionName();
		}
			
		if(isset($funcName)) {
			$this->setButtonClicked($funcName);
		}

		// First, try a handler method on the controller
		if($this->controller->hasMethod($funcName)) {
			return $this->controller->$funcName($vars, $this, $request);

		// Otherwise, try a handler method on the form object
		} else {
			return $this->$funcName($vars, $this, $request);
		}
	}
	
	/**
	 * Handle a field request
	 */
	function handleField($request) {
		return $this->dataFieldByName($request->param('FieldName'));
	}

	/**
	 * Convert this form into a readonly form
	 */
	function makeReadonly() {
		$this->transform(new ReadonlyTransformation());
	}

	/**
	 * Add an error message to a field on this form.  It will be saved into the session
	 * and used the next time this form is displayed.
	 */
	function addErrorMessage($fieldName, $message, $messageType) {
		Session::addToArray("FormInfo.{$this->FormName()}.errors",  array(
			'fieldName' => $fieldName,
			'message' => $message,
			'messageType' => $messageType,
		));
	}

	function transform(FormTransformation $trans) {
		$newFields = new FieldSet();
		foreach($this->fields as $field) {
			$newFields->push($field->transform($trans));
		}
		$this->fields = $newFields;

		$newActions = new FieldSet();
		foreach($this->actions as $action) {
			$newActions->push($action->transform($trans));
		}
		$this->actions = $newActions;


		// We have to remove validation, if the fields are not editable ;-)
		if($this->validator)
			$this->validator->removeValidation();
	}
	
	/**
	 * Get the {@link Validator} attached to this form.
	 * @return Validator
	 */
	function getValidator() {
		return $this->validator;
	}

	/**
	 * Set the {@link Validator} on this form.
	 */
	function setValidator( Validator $validator ) {
		if($validator) {
			$this->validator = $validator;
			$this->validator->setForm($this);
		}
	}

	/**
	 * Remove the {@link Validator} from this from.
	 */
	function unsetValidator(){
		$this->validator = null;
	}

	/**
	 * Convert this form to another format.
	 */
	function transformTo(FormTransformation $format) {
		$newFields = new FieldSet();
		foreach($this->fields as $field) {
			$newFields->push($field->transformTo($format));
		}
		$this->fields = $newFields;

		// We have to remove validation, if the fields are not editable ;-)
		if($this->validator)
			$this->validator->removeValidation();
	}

		
	/**
	 * Generate extra special fields - namely the SecurityID field
	 * 
	 * @return FieldSet
	 */
	public function getExtraFields() {
		$extraFields = new FieldSet();
		
		if(!$this->fields->fieldByName('SecurityID') && $this->securityTokenEnabled()) {
			if(Session::get('SecurityID')) {
				$securityID = Session::get('SecurityID');
			} else {
				$securityID = rand();
				Session::set('SecurityID', $securityID);
			}
			
			$securityField = new HiddenField('SecurityID', '', $securityID);
			$securityField->setForm($this);
			$extraFields->push($securityField);
			$this->securityTokenAdded = true;
		}
		
		// add the "real" HTTP method if necessary (for PUT, DELETE and HEAD)
		if($this->FormMethod() != $this->FormHttpMethod()) {
			$methodField = new HiddenField('_method', '', $this->FormHttpMethod());
			$methodField->setForm($this);
			$extraFields->push($methodField);
		}
		
		return $extraFields;
	}
	
	/**
	 * Return the form's fields - used by the templates
	 * 
	 * @return FieldSet The form fields
	 */
	function Fields() {
		foreach($this->getExtraFields() as $field) {
			if(!$this->fields->fieldByName($field->Name())) $this->fields->push($field);
		}
		
		return $this->fields;
	}
	
	/**
	 * Return all <input type="hidden"> fields
	 * in a form - including fields nested in {@link CompositeFields}.
	 * Useful when doing custom field layouts.
	 * 
	 * @return FieldSet
	 */
	function HiddenFields() {
		return $this->fields->HiddenFields();
	}
	
	/**
	 * Setter for the form fields.
	 *
	 * @param FieldSet $fields
	 */
	function setFields($fields) {
		$this->fields = $fields;
	}
	
	/**
	 * Get a named field from this form's fields.
	 * It will traverse into composite fields for you, to find the field you want.
	 * It will only return a data field.
	 * 
	 * @return FormField
	 */
	function dataFieldByName($name) {
		foreach($this->getExtraFields() as $field) {
			if(!$this->fields->dataFieldByName($field->Name())) $this->fields->push($field);
		}
		
		return $this->fields->dataFieldByName($name);
	}

	/**
	 * Return the form's action buttons - used by the templates
	 * 
	 * @return FieldSet The action list
	 */
	function Actions() {
		return $this->actions;
	}

	/**
	 * Setter for the form actions.
	 *
	 * @param FieldSet $actions
	 */
	function setActions($actions) {
		$this->actions = $actions;
	}
	
	/**
	 * Unset all form actions
	 */
	function unsetAllActions(){
		$this->actions = new FieldSet();
	}

	/**
	 * Unset the form's action button by its name.
	 * 
	 * @param string $name
	 */
	function unsetActionByName($name) {
		$this->actions->removeByName($name);
	}

	/**
	 * Unset the form's dataField by its name
	 */
	function unsetDataFieldByName($fieldName){
		foreach($this->Fields()->dataFields() as $child) {
			if(is_object($child) && ($child->Name() == $fieldName || $child->Title() == $fieldName)) {
				$child = null;
			}
		}
	}
	
	/**
	 * Remove a field from the given tab.
	 */
	public function unsetFieldFromTab($tabName, $fieldName) {
		// Find the tab
		$tab = $this->Fields()->findOrMakeTab($tabName);
		$tab->removeByName($fieldName);
	}

	/**
	 * Return the attributes of the form tag - used by the templates
	 * @return string The attribute string
	 */
	function FormAttributes() {
		// Forms shouldn't be cached, cos their error messages won't be shown
		HTTP::set_cache_age(0);

		if($this->validator && !$this->jsValidationIncluded) $this->validator->includeJavascriptValidation();
		if($this->target) $target = " target=\"".$this->target."\"";
    	else $target = "";

    	return "id=\"" . $this->FormName() . "\" action=\"" . $this->FormAction()
				. "\" method=\"" . $this->FormMethod() . "\" enctype=\"" . $this->FormEncType() . "\"$target";
	}

	/**
	* Set the target of this form to any value - useful for opening the form contents in a new window or refreshing another frame
	* 
	* @param target The value of the target
	*/
	function setTarget($target) {
		$this->target = $target;
	}
	
	/**
	 * Set the legend value to be inserted into
	 * the <legend> element in the Form.ss template.
	 */
	function setLegend($legend) {
		$this->legend = $legend;
	}
	
	/**
	 * Returns the encoding type of the form.
	 * This will be either "multipart/form-data"" if there are any {@link FileField} instances,
	 * otherwise "application/x-www-form-urlencoded"
	 * 
	 * @return string The encoding mime type
	 */
	function FormEncType() {
		if(is_array($this->fields->dataFields())){
			foreach($this->fields->dataFields() as $field) {
				if(is_a($field, "FileField")) return "multipart/form-data";
			}
		}
		return "application/x-www-form-urlencoded";
	}
	
	/**
	 * Returns the real HTTP method for the form:
	 * GET, POST, PUT, DELETE or HEAD.
	 * As most browsers only support GET and POST in
	 * form submissions, all other HTTP methods are
	 * added as a hidden field "_method" that
	 * gets evaluated in {@link Director::direct()}.
	 * See {@link FormMethod()} to get a HTTP method
	 * for safe insertion into a <form> tag.
	 * 
	 * @return string HTTP method
	 */
	function FormHttpMethod() {
		return $this->formMethod;
	}
	
	/**
	 * Returns the form method to be used in the <form> tag.
	 * See {@link FormHttpMethod()} to get the "real" method.
	 * 
	 * @return string Form tag compatbile HTTP method: 'get' or 'post'
	 */
	function FormMethod() {
		if(in_array($this->formMethod,array('get','post'))) {
			return $this->formMethod;
		} else {
			return 'post';
		}
	}
	
	/**
	 * Set the form method: GET, POST, PUT, DELETE.
	 * 
	 * @param $method string
	 */
	function setFormMethod($method) {
		$this->formMethod = strtolower($method);
	}
	
	/**
	 * Return the form's action attribute.
	 * This is build by adding an executeForm get variable to the parent controller's Link() value
	 * 
	 * @return string 
	 */
	function FormAction() {
		if ($this->formActionPath) {
			return $this->formActionPath;
		} elseif($this->controller->hasMethod("FormObjectLink")) {
			return $this->controller->FormObjectLink($this->name);
		} else {
			return Controller::join_links($this->controller->Link(), $this->name);
		}
	}
	
	/** @ignore */
	private $formActionPath = false;
	
	/**
	 * Set the form action attribute to a custom URL.
	 * 
	 * Note: For "normal" forms, you shouldn't need to use this method.  It is recommended only for situations where you have
	 * two relatively distinct parts of the system trying to communicate via a form post.
	 */
	function setFormAction($path) {
		$this->formActionPath = $path;
	}

	/**
	 * @ignore
	 */
	private $htmlID = null;
	
	/**
	 * Returns the name of the form
	 */
	function FormName() {
		if($this->htmlID) return $this->htmlID;
		else return $this->class . '_' . str_replace(array('.','/'),'',$this->name);
	}

	/**
	 * Set the HTML ID attribute of the form
	 */
	function setHTMLID($id) {
		$this->htmlID = $id;
	}
	
	/**
	 * Returns this form's controller
	 */
	function Controller() {
		return $this->controller;
	}
	
	/**
	 * @return string
	 */
	function Name() {
		return $this->name;
	}
	
	/**
	 * Returns an object where there is a method with the same name as each data field on the form.
	 * That method will return the field itself.
	 * It means that you can execute $firstNameField = $form->FieldMap()->FirstName(), which can be handy
	 */
	function FieldMap() {
		return new Form_FieldMap($this);
	}

	/**
	 * The next functions store and modify the forms
	 * message attributes. messages are stored in session under
	 * $_SESSION[formname][message];
	 * 
	 * @return string
	 */
	function Message() {
		$this->getMessageFromSession();
		$message = $this->message;
		$this->clearMessage();
		return $message;
	}
	
	/**
	 * @return string
	 */
	function MessageType() {
		$this->getMessageFromSession();
		return $this->messageType;
	}

	protected function getMessageFromSession() {
		if($this->message || $this->messageType) {
			return $this->message;
		}else{
			$this->message = Session::get("FormInfo.{$this->FormName()}.formError.message");
			$this->messageType = Session::get("FormInfo.{$this->FormName()}.formError.type");

			Session::clear("FormInfo.{$this->FormName()}");
		}
	}

	/**
	 * Set a status message for the form.
	 * 
	 * @param message the text of the message
	 * @param type Should be set to good, bad, or warning.
	 */
	function setMessage($message, $type) {
		$this->message = $message;
		$this->messageType = $type;
	}

	/**
	 * Set a message to the session, for display next time this form is shown.
	 * 
	 * @param message the text of the message
	 * @param type Should be set to good, bad, or warning.
	 */
	function sessionMessage($message, $type) {
		Session::set("FormInfo.{$this->FormName()}.formError.message", $message);
		Session::set("FormInfo.{$this->FormName()}.formError.type", $type);
	}

	static function messageForForm( $formName, $message, $type ) {
		Session::set("FormInfo.{$formName}.formError.message", $message);
		Session::set("FormInfo.{$formName}.formError.type", $type);
	}

	function clearMessage() {
		$this->message  = null;
		Session::clear("FormInfo.{$this->FormName()}.errors");
		Session::clear("FormInfo.{$this->FormName()}.formError");
	}
	function resetValidation() {
		Session::clear("FormInfo.{$this->FormName()}.errors");
	}

	/**
	 * Returns the DataObject that has given this form its data
	 * through {@link loadDataFrom()} or {@link loadNonBlankDataFrom()}.
	 * 
	 * @return DataObject
	 */
	function getRecord() {
		return $this->record;
	}
	
	/**
	 * Get the legend value to be inserted into the
	 * <legend> element in Form.ss
	 *
	 * @return string
	 */
	function getLegend() {
		return $this->legend;
	}

	/**
	 * Processing that occurs before a form is executed.
	 * This includes form validation, if it fails, we redirect back
	 * to the form with appropriate error messages.
	 * Triggered through {@link httpSubmission()} which is triggered
	 * @usedby Form->httpSubmission()
	 * 
	 * @todo Replace hardcoded exclude fields like CreditCardNumber with hook to specify sensitive fields in model
	 */
	 function validate(){
		if($this->validator){
			$errors = $this->validator->validate();

			if($errors){
				if(Director::is_ajax()) {
					// Send validation errors back as JSON with a flag at the start
					//echo "VALIDATIONERROR:" . Convert::array2json($errors);
					FormResponse::status_message(_t('Form.VALIDATIONFAILED', 'Validation failed'), 'bad');
					foreach($errors as $error) {
						FormResponse::add(sprintf(
							"validationError('%s', '%s', '%s');\n",
							Convert::raw2js($error['fieldName']),
							Convert::raw2js($error['message']),
							Convert::raw2js($error['messageType'])
						));
					}
					return false;
				} else {
					$data = $this->getData();

					// People will get worried if you leave credit card information in session..
					if(isset($data['CreditCardNumber']))	unset($data['CreditCardNumber']);
					if(isset($data['DateExpiry'])) unset($data['Expiry']);

					// Load errors into session and post back
					Session::set("FormInfo.{$this->FormName()}", array(
						'errors' => $errors,
						'data' => $data,
					));

				}
				return false;
			}
		}
		return true;
	}

	/**
	 * Load data from the given DataObject or array.
	 * It will call $object->MyField to get the value of MyField.
	 * If you passed an array, it will call $object[MyField].
	 * Doesn't save into dataless FormFields ({@link DatalessField}),
	 * as determined by {@link FieldSet->dataFields()}.
	 * 
	 * By default, if a field isn't set (as determined by isset()),
	 * its value will not be saved to the field, retaining
	 * potential existing values.
	 * 
	 * Passed data should not be escaped, and is saved to the FormField instances unescaped.
	 * Escaping happens automatically on saving the data through {@link saveInto()}.
	 * 
	 * @uses FieldSet->dataFields()
	 * @uses FormField->setValue()
	 * 
	 * @param array|DataObject $data
	 * @param boolean $clearMissingFields By default, fields which don't match
	 *  a property or array-key of the passed {@link $data} argument are "left alone",
	 *  meaning they retain any previous values (if present). If this flag is set to true,
	 *  those fields are overwritten with null regardless if they have a match in {@link $data}.
	 */
	function loadDataFrom($data, $clearMissingFields = false) {
		if(!is_object($data) && !is_array($data)) {
			user_error("Form::loadDataFrom() not passed an array or an object", E_USER_WARNING);
			return false;
		}

		// if an object is passed, save it for historical reference through {@link getRecord()}
		if(is_object($data)) $this->record = $data;

		// dont include fields without data
		$dataFields = $this->fields->dataFields();
		if($dataFields) foreach($dataFields as $field) {
			$name = $field->Name();
			
			// First check looks for (fieldname)_unchanged, an indicator that we shouldn't overwrite the field value
			if(is_array($data) && isset($data[$name . '_unchanged'])) continue;
			
			// get value in different formats
			$hasObjectValue = false;
			if(
				is_object($data) 
				&& (
					isset($data->$name)
					|| $data->hasMethod($name)
					|| ($data->hasMethod('hasField') && $data->hasField($name))
				)
			) {
				// We don't actually call the method because it might be slow.  
				// In a later release, relation methods will just return references to the query that should be executed, 
				// and so we will be able to safely pass the return value of the 
				// relation method to the first argument of setValue
				$val = $data->__get($name);
				$hasObjectValue = true;
			} else if(strpos($name,'[') && is_array($data) && !isset($data[$name])) {
				// if field is in array-notation, we need to resolve the array-structure PHP creates from query-strings
				preg_match('/' . addcslashes($name,'[]') . '=([^&]*)/', urldecode(http_build_query($data)), $matches);
				$val = isset($matches[1]) ? $matches[1] : null;
			} elseif(is_array($data) && array_key_exists($name, $data)) {
				// else we assume its a simple keyed array
				$val = $data[$name];
			} else {
				$val = null;
			}

			// save to the field if either a value is given, or loading of blank/undefined values is forced
			if(isset($val) || $hasObjectValue || $clearMissingFields) {
				// pass original data as well so composite fields can act on the additional information
				$field->setValue($val, $data);
			}
		}
	}

	/**
	 * @deprecated 2.3 Use loadDataFrom()
	 */
	function loadNonBlankDataFrom($data) {
		return $this->loadDataFrom($data);
	}
	
	/**
	 * Save the contents of this form into the given data object.
	 * It will make use of setCastedField() to do this.
	 */
	function saveInto(DataObjectInterface $dataObject) {
		$dataFields = $this->fields->saveableFields();
		$lastField = null;

		if($dataFields) foreach($dataFields as $field) {
			$saveMethod = "save{$field->Name()}";

			if($field->Name() == "ClassName"){
				$lastField = $field;
			}else if( $dataObject->hasMethod( $saveMethod ) ){
				$dataObject->$saveMethod( $field->dataValue());
			} else if($field->Name() != "ID"){
				$field->saveInto($dataObject);
			}
		}
		if($lastField) $lastField->saveInto($dataObject);
	}
	
	/**
	 * Get the submitted data from this form through
	 * {@link FieldSet->dataFields()}, which filters out
	 * any form-specific data like form-actions.
	 * Calls {@link FormField->dataValue()} on each field,
	 * which returns a value suitable for insertion into a DataObject
	 * property.
	 * 
	 * @return array
	 */
	function getData() {
		$dataFields = $this->fields->dataFields();
		$data = array();
		
		if($dataFields){
			foreach($dataFields as $field) {
				if($field->Name()) {
					$data[$field->Name()] = $field->dataValue();
				}
			}
		}
		return $data;
	}

	/**
	 * @deprecated 2.3 Use resetField()
	 */
	function resetData($fieldName, $fieldValue){
		return $this->resetField($fieldName, $fieldValue);
	}
	
	/**
	 * Resets a specific field to its passed default value.
	 * Does NOT clear out all submitted data in the form.
	 * 
	 * @param string $fieldName
	 * @param mixed $fieldValue
	 */
	function resetField($fieldName, $fieldValue = null) {
		$dataFields = $this->fields->dataFields();
		if($dataFields) foreach($dataFields as $field) {
			if($field->Name()==$fieldName) {
				$field = $field->setValue($fieldValue);
			}
		}
	}
	
	/**
	 * Call the given method on the given field.
	 * This is used by Ajax-savvy form fields.  By putting '&action=callfieldmethod' to the end
	 * of the form action, they can access server-side data.
	 * @param fieldName The name of the field.  Can be overridden by $_REQUEST[fieldName]
	 * @param methodName The name of the field.  Can be overridden by $_REQUEST[methodName]
	 */
	function callfieldmethod($data) {
		$fieldName = $data['fieldName'];
		$methodName = $data['methodName'];
		$fields = $this->fields->dataFields();

		// special treatment needed for TableField-class and TreeDropdownField
		if(strpos($fieldName, '[')) {
			preg_match_all('/([^\[]*)/',$fieldName, $fieldNameMatches);
			preg_match_all('/\[([^\]]*)\]/',$fieldName, $subFieldMatches);
			$tableFieldName = $fieldNameMatches[1][0];
			$subFieldName = $subFieldMatches[1][1];
		}

		if(isset($tableFieldName) && isset($subFieldName) && is_a($fields[$tableFieldName], 'TableField')) {
			$field = $fields[$tableFieldName]->getField($subFieldName, $fieldName);
			return $field->$methodName();
		} else if(isset($fields[$fieldName])) {
			return $fields[$fieldName]->$methodName();
		} else {
			user_error("Form::callfieldmethod() Field '$fieldName' not found", E_USER_ERROR);
		}

	}

	/**
	 * Return a rendered version of this form.
	 * 
	 * This also allows for subclasses of Form to have their own template,
	 * falling back to 'Form' if it doesn't exist.
	 * 
	 * This is returned when you access a form as $FormObject rather than <% control FormObject %>
	 */
	function forTemplate() {
		return $this->renderWith(array(
			$this->class,
			'Form'
		));
	}

	/**
	 * Return a rendered version of this form, suitable for ajax post-back.
	 * It triggers slightly different behaviour, such as disabling the rewriting of # links
	 */
	function forAjaxTemplate() {
		$view = new SSViewer("Form");
		return $view->dontRewriteHashlinks()->process($this);
	}

	/**
	 * Returns an HTML rendition of this form, without the <form> tag itself.
	 * Attaches 3 extra hidden files, _form_action, _form_name, _form_method, and _form_enctype.  These are
	 * the attributes of the form.  These fields can be used to send the form to Ajax.
	 */
	function formHtmlContent() {
		// Call FormAttributes to force inclusion of custom client-side validation of fields
		// because it won't be included by the template
		if($this->validator && !$this->jsValidationIncluded) $this->validator->includeJavascriptValidation();
		
		$this->IncludeFormTag = false;
		$content = $this->forTemplate();
		$this->IncludeFormTag = true;

		$content .= "<input type=\"hidden\" name=\"_form_action\" id=\"" . $this->FormName . "_form_action\" value=\"" . $this->FormAction() . "\" />\n";
		$content .= "<input type=\"hidden\" name=\"_form_name\" value=\"" . $this->FormName() . "\" />\n";
		$content .= "<input type=\"hidden\" name=\"_form_method\" value=\"" . $this->FormMethod() . "\" />\n";
		$content .= "<input type=\"hidden\" name=\"_form_enctype\" value=\"" . $this->FormEncType() . "\" />\n";

		return $content;
	}

	/**
	 * Render this form using the given template, and return the result as a string
	 * You can pass either an SSViewer or a template name
	 */
	function renderWithoutActionButton($template) {
		$custom = $this->customise(array(
			"Actions" => "",
		));

		if(is_string($template)) $template = new SSViewer($template);
		return $template->process($custom);
	}


	/**
	 * Sets the button that was clicked.  This should only be called by the Controller.
	 * @param funcName The name of the action method that will be called.
	 */
	function setButtonClicked($funcName) {
		$this->buttonClickedFunc = $funcName;
	}

	function buttonClicked() {
		foreach($this->actions as $action) {
			if($this->buttonClickedFunc == $action->actionName()) return $action;
		}
	}

	/**
	 * Return the default button that should be clicked when another one isn't available
	 */
	function defaultAction() {
		if($this->hasDefaultAction && $this->actions)
			return $this->actions->First();
	}

	/**
	 * Disable the default button.
	 * Ordinarily, when a form is processed and no action_XXX button is available, then the first button in the actions list
	 * will be pressed.  However, if this is "delete", for example, this isn't such a good idea.
	 */
	function disableDefaultAction() {
		$this->hasDefaultAction = false;
	}
	
	/**
	 * Disable the requirement of a SecurityID in the Form. This security protects
	 * against CSRF attacks, but you should disable this if you don't want to tie 
	 * a form to a session - eg a search form.
	 */
	function disableSecurityToken() {
		$this->security = false;
	}
	
	
	private static $default_security = true;
	
	/**
	 * Disable security tokens for every form on this site.
	 */
	static function disable_all_security_tokens() {
		self::$default_security = false;
	}
	
	/**
	 * Returns true if security is enabled - that is if the SecurityID
	 * should be included and checked on this form.
	 *
	 * @return bool
	 */
	function securityTokenEnabled() {
		return $this->security;
	}

	/**
	 * Returns the name of a field, if that's the only field that the current controller is interested in.
	 * It checks for a call to the callfieldmethod action.
	 * This is useful for optimising your forms
	 * 
	 * @return string
	 */
	static function single_field_required() {
		if(self::current_action() == 'callfieldmethod') return $_REQUEST['fieldName'];
	}

	/**
	 * Return the current form action being called, if available.
	 * This is useful for optimising your forms
	 */
	static function current_action() {
		return self::$current_action;
	}

	/**
	 * Set the current form action.  Should only be called by Controller.
	 */
	static function set_current_action($action) {
		self::$current_action = $action;
	}
	
	function debug() {
		$result = "<h3>$this->class</h3><ul>";
		foreach($this->fields as $field) {
			$result .= "<li>$field" . $field->debug() . "</li>";
		}
		$result .= "</ul>";

		if( $this->validator )
		        $result .= '<h3>'._t('Form.VALIDATOR', 'Validator').'</h3>' . $this->validator->debug();

		return $result;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TESTING HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * Test a submission of this form.
	 * @return HTTPResponse the response object that the handling controller produces.  You can interrogate this in your unit test.
	 */
	function testSubmission($action, $data) {
		$data['action_' . $action] = true;
        
        return Director::test($this->FormAction(), $data, Controller::curr()->getSession());
		
		//$response = $this->controller->run($data);
		//return $response;
	}
	
	/**
	 * Test an ajax submission of this form.
	 * @return HTTPResponse the response object that the handling controller produces.  You can interrogate this in your unit test.
	 */
	function testAjaxSubmission($action, $data) {
		$data['ajax'] = 1;
		return $this->testSubmission($action, $data);
	}
}

class Form_FieldMap extends Object {
	protected $form;
	
	function __construct($form) {
		$this->form = $form;
		parent::__construct();
	}
	
	function __call($method, $args = null) {
		return $this->form->dataFieldByName($method);
	}
}
